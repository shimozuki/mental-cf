<?php

namespace App\Http\Controllers;

use App\Models\Diagnosa;
use App\Http\Requests\StoreDiagnosaRequest;
use App\Http\Requests\UpdateDiagnosaRequest;
use App\Models\Alternatif;
use App\Models\Artikel;
use App\Models\Gejala;
use App\Models\Keputusan;
use App\Models\Kode_Gejala;
use App\Models\KondisiUser;
use App\Models\TingkatDepresi;
use App\Models\User;
use GuzzleHttp\Middleware;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\FacadesLog;
use Illuminate\Support\Str;

use function PHPSTORM_META\map;
use function PHPSTORM_META\type;

class DiagnosaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $user = auth()->user();

        $query = Diagnosa::query();

        if ($user->role == 3) {
            $query->whereHas('alternatif', function ($q) use ($user) {
                $q->where('user_id', $user->id);
            });
        }

        if ($request->start_date && $request->end_date) {
            $query->whereBetween('created_at', [
                $request->start_date . ' 00:00:00',
                $request->end_date . ' 23:59:59'
            ]);
        }

        $diagnosa = $query->latest()->paginate(10);

        return view('admin.diagnosa.admin_semua_diagnosa', [
            'diagnosa' => $diagnosa,
        ]);
    }

    public function exportPdf(Request $request)
    {
        $query = Diagnosa::with('alternatif');

        if ($request->start_date && $request->end_date) {
            $query->whereBetween('created_at', [
                $request->start_date . ' 00:00:00',
                $request->end_date . ' 23:59:59'
            ]);
        }

        $diagnosa = $query->get();

        $pdf = Pdf::loadView('admin.diagnosa.pdf', compact('diagnosa'))->setPaper('a4', 'landscape');
        return $pdf->stream('laporan-diagnosa.pdf');
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data = [
            'gejala' => Gejala::all(),
            'kondisi_user' => KondisiUser::all()
        ];

        return view('clients.form_diagnosa', $data);
    }

    public function store(StoreDiagnosaRequest $request)
    {
        $usia = Carbon::parse($request->tanggal_lahir)->age;

        if (auth()->check()) {
            $user = auth()->user();
        } else {
            // ❗Jika belum login, buat akun baru
            $user = User::create([
                'name' => $request->nama,
                'email' => $request->email,
                'password' => Hash::make($request->password),
                'role' => 3 // role pasien
            ]);
        }

        $alternatif = Alternatif::create([
            'nama' => $request->nama,
            'jenis_kelamin' => $request->jenis_kelamin,
            'tanggal_lahir' => $request->tanggal_lahir,
            'usia' => $usia,
            'pengisi' => $request->pengisi, // tambahkan jika kolom ini ada
            'user_id' => $user->id,
        ]);



        // 2. Ambil dan proses input kondisi gejala
        $filteredArray = $request->post('kondisi') ?? [];

        $kondisi = array_filter($filteredArray, function ($value) {
            return $value !== null && $value !== '#' && floatval($value) > 0;
        });


        $kodeGejala = [];
        $bobotPilihan = [];
        foreach ($kondisi as $key => $val) {
            if ($val != "#") {
                array_push($kodeGejala, $key);
                array_push($bobotPilihan, [$key, $val]);
            }
        }

        // 3. Proses CF
        $depresi = TingkatDepresi::all();
        $arrGejala = [];

        foreach ($depresi as $dep) {
            $cfArr = ["cf" => [], "kode_kriteria" => []];
            $rules = Keputusan::whereIn("kode_gejala", $kodeGejala)
                ->where("kode_kriteria", $dep->kode_kriteria)->get();

            if ($rules->count() > 0) {
                foreach ($rules as $rule) {
                    $bobot = collect($bobotPilihan)->firstWhere(0, $rule->kode_gejala)[1] ?? 0;
                    if ($bobot > 0) {
                        $cf = ($rule->mb - $rule->md) * floatval($bobot);
                        $cfArr["cf"][] = $cf;
                        $cfArr["kode_kriteria"][] = $rule->kode_kriteria;
                    }
                }

                if (count($cfArr["cf"]) === 0) {
                    continue; // tidak ada gejala valid
                }
                $res = $this->getGabunganCf($cfArr);

                $arrGejala[] = [
                    'kode_kriteria' => $res['kode_kriteria'],
                    'nilai_cf' => round(floatval($res['value']) * 100, 2)
                ];
            }
        }

        // 4. Hitung skor SDQ (dummy — nanti bisa dari mapping kode_gejala)
        $skor = [
            'gejala_emosional' => 0,
            'masalah_prilaku' => 0,
            'hiperaktivitas' => 0,
            'masalah_teman' => 0,
            'prososial' => 0,
        ];

        foreach ($bobotPilihan as [$kodeGejala, $nilai]) {
            if (floatval($nilai) <= 0) continue;

            $keputusans = \App\Models\Keputusan::where('kode_gejala', $kodeGejala)->get();

            foreach ($keputusans as $keputusan) {
                $kriteria = DB::table('kriteria')->where('kode_kriteria', $keputusan->kode_kriteria)->first();

                if ($kriteria) {
                    $kategori = Str::slug(strtolower($kriteria->nama_kriteria), '_');

                    if ($kategori === 'propososial') {
                        $kategori = 'prososial'; // <- fix typo
                    }

                    if ($kategori === 'masalah_perilaku') {
                        $kategori = 'masalah_prilaku'; // <- fix typo juga
                    } // contoh: "Masalah Prilaku" → "masalah_prilaku"

                    // ✅ Logging kategori dan nilainya
                    Log::info("🟢 Gejala {$kodeGejala} (nilai: {$nilai}) -> Kriteria: {$kriteria->kode_kriteria} - {$kriteria->nama_kriteria} => Kategori: {$kategori}");

                    if (isset($skor[$kategori])) {
                        $cf = ($keputusan->mb - $keputusan->md) * floatval($nilai);
                        $skor[$kategori] += $cf;
                    }
                } else {
                    Log::warning("⚠️ Tidak ditemukan kriteria untuk gejala {$kodeGejala}");
                }
            }
        }



        $klasifikasi = [];
        foreach ($skor as $key => $nilai) {
            $klasifikasi[$key] = $this->klasifikasiSkor($key, $usia, $nilai);
        }

        $total_skor = $skor['gejala_emosional'] + $skor['masalah_prilaku'] + $skor['hiperaktivitas'] + $skor['masalah_teman'] + $skor['prososial']; // <- tambahkan ini
        $total_klasifikasi = $this->klasifikasiTotalKesulitan($usia, $total_skor);
        $klasifikasi['total'] = $total_klasifikasi;

        // 5. Simpan hasil diagnosa
        $diagnosa_id = uniqid();
        Diagnosa::create([
            'diagnosa_id' => $diagnosa_id,
            'alternatif_id' => $alternatif->id,
            'usia' => $usia,
            'data_diagnosa' => json_encode($arrGejala),
            'total_score' => json_encode($skor),
            'klasifikasi' => json_encode($klasifikasi),
            'kondisi' => json_encode($bobotPilihan)
        ]);

        Log::info("Gejala: $kodeGejala, Kategori: $kategori, Nilai: $nilai");
        Log::info('Skor akhir:', $skor);


        return redirect()->route('spk.hasil', $diagnosa_id);
    }

    public function hasilSkrining($diagnosa_id)
    {
        $diagnosa = Diagnosa::where('diagnosa_id', $diagnosa_id)->firstOrFail();
        $alternatif = Alternatif::findOrFail($diagnosa->alternatif_id);

        $data_diagnosa = json_decode($diagnosa->data_diagnosa, true) ?? [];
        $skor = json_decode($diagnosa->total_score, true) ?? [];
        $klasifikasi = json_decode($diagnosa->klasifikasi, true) ?? [];

        return view('hasil_skrining', [
            'diagnosa' => $diagnosa,
            'alternatif' => $alternatif, // <-- ini penting
            'data_diagnosa' => $data_diagnosa,
            'skor' => $skor,
            'klasifikasi' => $klasifikasi
        ]);
    }




    public function getGabunganCf($cfArr)
    {
        if (empty($cfArr["cf"])) {
            return [
                "value" => 0,
                "kode_kriteria" => null
            ];
        }

        if (count($cfArr["cf"]) == 1) {
            return [
                "value" => strval($cfArr["cf"][0]),
                "kode_kriteria" => $cfArr["kode_kriteria"][0] ?? null // <- aman
            ];
        }

        $cfoldGabungan = $cfArr["cf"][0];

        for ($i = 0; $i < count($cfArr["cf"]) - 1; $i++) {
            $cfoldGabungan = $cfoldGabungan + ($cfArr["cf"][$i + 1] * (1 - $cfoldGabungan));
        }

        return [
            "value" => "$cfoldGabungan",
            "kode_kriteria" => $cfArr["kode_kriteria"][0] ?? null // <- aman
        ];
    }

    private function getCfCombinasi($pakar, $user)
    {
        $cfComb = [];
        if (count($pakar) == count($user)) {
            for ($i = 0; $i < count($pakar); $i++) {
                $res = $pakar[$i] * $user[$i];
                $cfComb[] = floatval($res);
            }

            return [
                "cf" => $cfComb,
                "kode_kriteria" => ["0"] // nilai default
            ];
        }

        return [
            "cf" => [],
            "kode_kriteria" => ["0"]
        ];
    }



    public function diagnosaResult($diagnosa_id)
    {
        $diagnosa = Diagnosa::where('diagnosa_id', $diagnosa_id)->firstOrFail();
        $gejala = json_decode($diagnosa->kondisi, true);
        $data_diagnosa = json_decode($diagnosa->data_diagnosa, true);

        // Diagnosa utama
        $int = 0.0;
        $diagnosa_dipilih = [];
        foreach ($data_diagnosa as $val) {
            if (floatval($val["nilai_cf"]) > $int) {
                $diagnosa_dipilih["nilai_cf"] = floatval($val["nilai_cf"]);
                $diagnosa_dipilih["kode_kriteria"] = TingkatDepresi::where("kode_kriteria", $val["kode_kriteria"])->first();
                $int = floatval($val["nilai_cf"]);
            }
        }

        if (!isset($diagnosa_dipilih["kode_kriteria"])) {
            return back()->with("error", "Data diagnosa tidak valid. Silakan ulangi proses diagnosa.");
        }

        // Data gejala user
        $kodeGejala = collect($gejala)->pluck(0)->all();
        $pakar = Keputusan::whereIn("kode_gejala", $kodeGejala)->where("kode_kriteria", $diagnosa_dipilih["kode_kriteria"]->kode_kriteria)->get();

        $gejala_by_user = [];
        foreach ($pakar as $key) {
            foreach ($gejala as $gKey) {
                if ($gKey[0] == $key->kode_gejala) {
                    $gejala_by_user[] = $gKey;
                }
            }
        }

        $nilaiPakar = collect($pakar)->map(fn($item) => $item->mb - $item->md)->all();
        $nilaiUser = collect($gejala_by_user)->pluck(1)->all();

        $cfKombinasi = $this->getCfCombinasi($nilaiPakar, $nilaiUser);
        $hasil = $this->getGabunganCf($cfKombinasi);
        $artikel = Artikel::where('kode_kriteria', $diagnosa_dipilih["kode_kriteria"]->kode_kriteria)->first();

        // Ambil data alternatif (anak)
        $anak = Alternatif::findOrFail($diagnosa->alternatif_id);
        $usia = Carbon::parse($anak->tanggal_lahir)->age;

        // 🎯 Skor Dummy (ganti dengan hasil hitung real jika ada)
        $skor = json_decode($diagnosa->total_score, true) ?? [
            'gejala_emosional' => 0,
            'masalah_prilaku' => 0,
            'hiperaktivitas' => 0,
            'masalah_teman' => 0,
            'prososial' => 0,
        ];

        $klasifikasi = [];
        foreach ($skor as $key => $nilai) {
            $klasifikasi[$key] = $this->klasifikasiSkor($key, $usia, $nilai);
        }

        $total_skor = $skor['gejala_emosional'] + $skor['masalah_prilaku'] + $skor['hiperaktivitas'] + $skor['masalah_teman'] + $skor['prososial'];
        $total_klasifikasi = $this->klasifikasiTotalKesulitan($usia, $total_skor);

        return view('clients.cl_diagnosa_result', [
            "diagnosa" => $diagnosa,
            "diagnosa_dipilih" => $diagnosa_dipilih,
            "gejala" => $gejala,
            "data_diagnosa" => $data_diagnosa,
            "pakar" => $pakar,
            "gejala_by_user" => $gejala_by_user,
            "cf_kombinasi" => $cfKombinasi,
            "hasil" => $hasil,
            "artikel" => $artikel,
            "skor" => $skor,
            "klasifikasi" => $klasifikasi,
            "total_klasifikasi" => $total_klasifikasi
        ]);
    }

    private function klasifikasiSkor($kriteria, $usia, $skor)
    {
        $range = [
            'gejala_emosional' => [
                'child' => ['normal' => [0, 2], 'borderline' => [3, 3], 'abnormal' => [4, 10]],
                'teen' => ['normal' => [0, 3], 'borderline' => [4, 4], 'abnormal' => [5, 10]],
            ],
            'masalah_prilaku' => [
                'child' => ['normal' => [0, 2], 'borderline' => [3, 3], 'abnormal' => [4, 10]],
                'teen' => ['normal' => [0, 3], 'borderline' => [4, 4], 'abnormal' => [5, 10]],
            ],
            'hiperaktivitas' => [
                'child' => ['normal' => [0, 5], 'borderline' => [6, 6], 'abnormal' => [7, 10]],
                'teen' => ['normal' => [0, 5], 'borderline' => [6, 6], 'abnormal' => [7, 10]],
            ],
            'masalah_teman' => [
                'child' => ['normal' => [0, 2], 'borderline' => [3, 3], 'abnormal' => [4, 10]],
                'teen' => ['normal' => [0, 3], 'borderline' => [4, 5], 'abnormal' => [6, 10]],
            ],
            'prososial' => [
                'child' => ['abnormal' => [0, 4], 'borderline' => [5, 5], 'normal' => [6, 10]],
                'teen' => ['abnormal' => [0, 4], 'borderline' => [5, 5], 'normal' => [6, 10]],
            ],
        ];

        $kategori_usia = $usia < 11 ? 'child' : 'teen';
        $kategori = $range[$kriteria][$kategori_usia] ?? [];

        foreach ($kategori as $label => [$min, $max]) {
            if ($skor >= $min && $skor <= $max) {
                return ucfirst($label); // hasil: Normal, Borderline, Abnormal
            }
        }

        return "Tidak diketahui";
    }

    private function klasifikasiTotalKesulitan($usia, $total)
    {
        $range = [
            'child' => [
                'normal' => [0, 13],
                'borderline' => [14, 16],
                'abnormal' => [17, 40]
            ],
            'teen' => [
                'normal' => [0, 14],
                'borderline' => [15, 17],
                'abnormal' => [18, 40]
            ],
        ];

        $kategori_usia = $usia < 11 ? 'child' : 'teen';

        foreach ($range[$kategori_usia] as $label => [$min, $max]) {
            if ($total >= $min && $total <= $max) {
                return ucfirst($label);
            }
        }

        return "Tidak diketahui";
    }



    public function cetakPdf($id)
    {
        $diagnosa = Diagnosa::with(['alternatif', 'detail'])->findOrFail($id);

        // Data yang kamu butuhkan untuk dikirim ke view PDF
        $data = [
            'alternatif' => $diagnosa->alternatif,
            'data_diagnosa' => [$diagnosa], // pastikan sesuai struktur
            'klasifikasi' => $this->hitungKlasifikasi($diagnosa), // custom method sesuai kebutuhan
            'skor' => $this->hitungSkor($diagnosa),
            'diagnosa_id' => $diagnosa->id
        ];

        $pdf = Pdf::loadView('pages.diagnosa.cetak_pdf', $data)->setPaper('a4');

        return $pdf->stream('hasil-assessment-' . $diagnosa->alternatif->nama . '.pdf');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Diagnosa  $diagnosa
     * @return \Illuminate\Http\Response
     */
    public function show(Diagnosa $diagnosa)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Diagnosa  $diagnosa
     * @return \Illuminate\Http\Response
     */
    public function edit(Diagnosa $diagnosa)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateDiagnosaRequest  $request
     * @param  \App\Models\Diagnosa  $diagnosa
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateDiagnosaRequest $request, Diagnosa $diagnosa)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Diagnosa  $diagnosa
     * @return \Illuminate\Http\Response
     */
    public function destroy(Diagnosa $diagnosa)
    {
        //
    }
}

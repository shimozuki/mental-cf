<?php

namespace App\Http\Controllers;

use App\Models\Diagnosa;
use App\Models\Gejala;
use App\Models\KondisiUser;
use App\Models\TingkatDepresi;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {
        $gejala = Gejala::all();
        $kondisi_user = KondisiUser::all();
        $user = User::all();
        $tingkat_depresi = TingkatDepresi::all();

        $start = request('start_date');
        $end = request('end_date');

        $skriningData = Diagnosa::when($start && $end, function ($query) use ($start, $end) {
            $query->whereBetween('created_at', [$start, $end]);
        })->selectRaw('MONTH(created_at) as bulan, COUNT(*) as total')
            ->groupByRaw('MONTH(created_at)')
            ->pluck('total', 'bulan');
        // Inisialisasi bulan dan total 12 bulan
        $labels = [];
        $data = [];
        for ($i = 1; $i <= 12; $i++) {
            $labels[] = Carbon::create()->month($i)->locale('id')->isoFormat('MMMM');
            $data[] = $skriningData[$i] ?? 0;
        }

        return view('admin.dashboard', compact(
            'gejala',
            'kondisi_user',
            'user',
            'tingkat_depresi',
            'labels',
            'data'
        ));
    }
}

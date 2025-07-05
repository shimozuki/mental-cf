@extends('admin.admin_main')
@section('title', 'Dashboard')

{{-- isi --}}
@section('admin_content')
<!-- Page content-->
<main id="main" class="main">
    <section class="section dashboard">
        <div class="row">
            <div class="col-lg-12">
                <table class="table table-hover mt-2 p-2">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Diagnosa ID</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($diagnosa as $item)
                        <?php
                        $int = 0;
                        $diagnosa_dipilih = [
                            "value" => 0,
                            "kode_kriteria" => null
                        ];

                        $data_diagnosa = json_decode($item->data_diagnosa, true);

                        foreach ($data_diagnosa as $val) {
                            if (!isset($val["value"]) || !isset($val["kode_kriteria"])) {
                                continue; // Lewati jika salah satu key tidak ada
                            }

                            if (floatval($val["value"]) > $int) {
                                $diagnosa_dipilih["value"] = floatval($val["value"]);
                                $diagnosa_dipilih["kode_kriteria"] = App\Models\Kriteria::where("kode_kriteria", $val["kode_kriteria"])->first();
                                $int = floatval($val["value"]);
                            }
                        }
                        ?>
                        <tr>
                            <th scope="row">{{ $loop->iteration }}</th>
                            <td>{{ $item->diagnosa_id }}</td>
                            <td><a class="p-2" href="{{ route('spk.hasil', ['diagnosa_id' => $item->diagnosa_id]) }}">Detail</a></td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</main><!-- End #main -->
@endsection
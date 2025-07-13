@extends('admin.admin_main')
@section('title', 'Dashboard')

{{-- isi --}}
@section('admin_content')
<!-- Page content-->
<main id="main" class="main">

    <div class="pagetitle">
        <h1>Dashboard</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/dashboard">Home</a></li>
                <li class="breadcrumb-item active">Dashboard</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
        <div class="row">

            <!-- Left side columns -->
            <div class="col-lg-12">
                <div class="row">
                    <div class="col-12">
                        <div class="card recent-sales overflow-auto">

                            <div class="filter">
                                <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                                    <li class="dropdown-header text-start">
                                        <h6>Filter</h6>
                                    </li>
                                </ul>
                            </div>

                            <div class="card-body">
                                <h5 class="card-title">Daftar <span>| Gejala</span></h5>

                                <table class="table table-borderless datatable">
                                    <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">Nama Pasien</th>
                                            <th scope="col">Usia</th>
                                            <th scope="col">Pengisi Quisioner</th>
                                            <th scope="col"></th>
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
                                            <td>{{ $item->alternatif->nama }}</td>
                                            <td>{{ $item->alternatif->usia }} Thn</td>
                                            <td>{{ $item->alternatif->pengisi }}</td>
                                            <td><a class="btn btn-outline-info" href="{{ route('spk.hasil', ['diagnosa_id' => $item->diagnosa_id]) }}"><i class="bi bi-eye"></i></a></td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                                <div class="d-flex justify-content-end">
                                    {{ $diagnosa->appends(['search' => request('search')])->links() }}
                                </div>
                            </div>
                            @include('components.admin_modal_gejala_edit')
                        </div>
                    </div><!-- End Recent Sales -->

                </div>
            </div><!-- End Left side columns -->



        </div>
    </section>

</main><!-- End #main -->


@endsection
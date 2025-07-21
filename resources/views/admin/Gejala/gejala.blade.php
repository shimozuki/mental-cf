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
            <div class="mt-2 pt-3 d-flex ms-auto">
                <button class="btn btn-outline-success" data-bs-toggle="modal" data-bs-target="#storeModal">
                    <i class="bi bi-plus-circle-fill"> Tambah Gejala</i>
                </button>
            </div>
            <br>
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
                                            <th scope="col">Kode Gejala</th>
                                            <th scope="col">Gejala</th>
                                            <th scope="col">Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($gejala as $item)
                                        <tr>
                                            <th scope="row">{{ $loop->iteration + $gejala->firstItem() -1 }}</th>
                                            <td>{{$item->kode_gejala}}</td>
                                            <td>{{$item->gejala}}</td>
                                            <td>
                                                <button
                                                    class="btn btn-outline-info"
                                                    data-bs-toggle="modal"
                                                    data-bs-target="#exampleModal"
                                                    onclick="handleEditGejala(
        '{{ $item->id }}',
        '{{ $item->kode_gejala }}',
        '{{ $item->gejala }}',
        '{{ $item->rentang_usia }}',
        '{{ $item->kategori_sdq }}'
    )">
                                                    <i class="bi bi-pencil-square"></i>
                                                </button>


                                                <form action="/gejala/{{ $item->id }}" method="post" class="d-inline">
                                                    @method('delete')
                                                    @csrf
                                                    <button type="submit" class="btn btn-outline-danger">
                                                        <i class="bi bi-trash3-fill"></i>
                                                    </button>
                                                </form>
                                            </td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                                <div class="d-flex justify-content-end">
                                    {{ $gejala->appends(['search' => request('search')])->links() }}
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
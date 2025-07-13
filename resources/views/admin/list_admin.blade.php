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
                      <th>No</th>
                      <th>Nama</th>
                      <th>Email</th>
                      <th>Role</th>
                    </tr>
                  </thead>
                  <tbody>
                    @forelse ($user as $index => $u)
                    <tr>
                      <td class="text-center text-primary">{{ $user->firstItem() + $index }}</td>
                      <td class="text-primary">{{ $u->name }}</td>
                      <td class="text-primary">{{ $u->email }}</td>
                      <td class="text-center text-primary">
                        @switch($u->role)
                        @case(1)
                        Admin
                        @break
                        @case(2)
                        Psikolog
                        @break
                        @case(3)
                        Pasien
                        @break
                        @default
                        -
                        @endswitch
                      </td>
                    </tr>
                    @empty
                    <tr>
                      <td colspan="4" class="text-center text-muted">Tidak ada admin yang ditemukan.</td>
                    </tr>
                    @endforelse
                  </tbody>
                </table>
                <div class="d-flex justify-content-end">
                  {{ $user->appends(['search' => request('search')])->links() }}
                </div>
              </div>

            </div>
          </div><!-- End Recent Sales -->

        </div>
      </div><!-- End Left side columns -->



    </div>
  </section>

</main><!-- End #main -->


@endsection
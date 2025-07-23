@extends('admin.admin_main')
@section('title', 'Dashboard')

{{-- isi --}}
@section('admin_content')
<style>
  .card .filter {
    position: absolute;
    right: 15px;
    top: 15px;
  }
</style>

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
      @if(Auth::user()->role == 2)
      <!-- Left side columns -->
      <div class="col-lg-12">
        <div class="row">

          <!-- Sales Card -->
          <div class="col-xxl-4 col-md-6">
            <div class="card info-card sales-card">

              <div class="filter">
                <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                  <li class="dropdown-header text-start">
                    <h6>Filter</h6>
                  </li>
              </div>

              <div class="card-body">
                <h5 class="card-title">Daftar <span>| Gejala</span></h5>

                <div class="d-flex align-items-center">
                  <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-activity"></i>
                  </div>
                  <div class="ps-3">
                    <h6>{{$gejala->count()}}</h6>
                    <span class="text-success small pt-1 fw-bold">{{$gejala->count()}}</span> <span class="text-muted small pt-2 ps-1">gejala</span>

                  </div>
                </div>
              </div>

            </div>
          </div><!-- End Sales Card -->

          <!-- Revenue Card -->
          <div class="col-xxl-4 col-md-6">
            <div class="card info-card revenue-card">

              <div class="filter">
                <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                  <li class="dropdown-header text-start">
                    <h6>Filter</h6>
                  </li>
                </ul>
              </div>

              <div class="card-body">
                <h5 class="card-title">Passien <span>| Skrining</span></h5>

                <div class="d-flex align-items-center">
                  <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-x"></i>
                  </div>
                  <div class="ps-3">
                    <h6>{{$tingkat_depresi->count()}}</h6>
                    <span class="text-success small pt-1 fw-bold">{{$gejala->count()}}</span> <span class="text-muted small pt-2 ps-1">gejala</span>

                  </div>
                </div>
              </div>

            </div>
          </div><!-- End Revenue Card -->

          <!-- Customers Card -->



          <div class="col-12">
            <div class="card">
              {{-- FILTER DROPDOWN --}}
              <div class="filter">
                <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                  <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#filterModal">Filter Tanggal</a></li>
                </ul>
              </div>

              <div class="card-body">
                <h5 class="card-title">Grafik Skrining <span>| Bulanan</span></h5>
                <canvas id="skriningChart" width="800" height="300"></canvas>
              </div>
            </div>
          </div>

          {{-- MODAL FILTER TANGGAL --}}
          <div class="modal fade" id="filterModal" tabindex="-1" aria-labelledby="filterModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-lg">
              <form method="GET" action="{{ route('dashboard') }}">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="filterModalLabel">Filter Tanggal</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                    <div class="row">
                      <div class="col-md-6 mb-3">
                        <label for="start_date" class="form-label">Tanggal Mulai</label>
                        <input type="date" class="form-control" name="start_date" id="start_date" required>
                      </div>
                      <div class="col-md-6 mb-3">
                        <label for="end_date" class="form-label">Tanggal Selesai</label>
                        <input type="date" class="form-control" name="end_date" id="end_date" required>
                      </div>
                    </div>
                  </div>
                  <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Terapkan</button>
                  </div>
                </div>
              </form>
            </div>
          </div>


        </div>
      </div><!-- End Left side columns -->
    </div>
    @elseif (Auth::user()->role == 1)
    <!-- Customers Card -->
    <div class="col-xxl-4 col-xl-12">

      <div class="card info-card customers-card">

        <div class="filter">
          <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
            <li class="dropdown-header text-start">
              <h6>Filter</h6>
            </li>
          </ul>
        </div>

        <div class="card-body">
          <h5 class="card-title">Jumlah <span>| Admin</span></h5>

          <div class="d-flex align-items-center">
            <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
              <i class="bi bi-people"></i>
            </div>
            <div class="ps-3">
              <h6>{{$user->count()}}</h6>
              <span class="text-danger small pt-1 fw-bold">{{$user->count()}}</span> <span class="text-muted small pt-2 ps-1">admin</span>

            </div>
          </div>

        </div>
      </div>

    </div><!-- End Customers Card -->
    @else
    <div class="col-lg-12">
      <div class="alert alert-info" role="alert">
        Selamat datang di dashboard! Anda dapat melihat informasi terkait gejala dan hasil skrining.
      </div>
    </div>
    @endif
    <!-- End Right side columns -->
  </section>

</main><!-- End #main -->


@endsection
@push('js')
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
  document.addEventListener("DOMContentLoaded", function() {
    const ctx = document.getElementById('skriningChart');
    if (ctx) {
      new Chart(ctx.getContext('2d'), {
        type: 'bar',
        data: {
          labels: {
            !!json_encode($labels) !!
          },
          datasets: [{
            label: 'Jumlah Skrining',
            data: {
              !!json_encode($data) !!
            },
            backgroundColor: 'rgba(54, 162, 235, 0.7)',
            borderColor: 'rgba(54, 162, 235, 1)',
            borderWidth: 1
          }]
        },
        options: {
          responsive: true,
          scales: {
            y: {
              beginAtZero: true,
              ticks: {
                precision: 0
              }
            }
          }
        }
      });
    }
  });
</script>
@endpush
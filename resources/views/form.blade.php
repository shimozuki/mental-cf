<!DOCTYPE html>
<html lang="id">

<head>
	<meta charset="UTF-8">
	<title>Form Skrining Depresi Anak</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Bootstrap 5 -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
	<style>
		body {
			background-color: #f0f4f8;
		}

		.form-container {
			max-width: 860px;
			margin: 2rem auto;
		}

		.card-question {
			background-color: #fff;
			border-radius: 10px;
			padding: 20px;
			box-shadow: 0 0 8px rgba(0, 0, 0, 0.05);
		}

		.form-check {
			background: #f8f9fa;
			border: 1px solid #e0e0e0;
			padding: 10px;
			margin-bottom: 10px;
		}

		.form-check-input:checked {
			background-color: #0d6efd;
			border-color: #0d6efd;
		}

		.progress-bar {
			background-color: #0d6efd;
		}

		.form-check-1 {
			background: #f8f9fa;
			border: 1px solid #e0e0e0;
			padding: 10px;
			border-radius: 8px;
			margin-bottom: 10px;
		}
	</style>
</head>

<body>

	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<div class="container">
			<a class="navbar-brand d-flex align-items-center" href="/">
				SKRINING mental emosional
			</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarNav">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link" href="/">Beranda</a></li>
					<li class="nav-item"><a class="nav-link" href="/login">Login</a></li>
					<li class="nav-item"><a class="nav-link active" href="#">Riwayat</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Form -->
	<div class="container form-container">
		<div class="bg-white p-4 rounded shadow-sm">
			<h4 class="mb-4 fw-bold">Informasi Responden</h4>

			<form action="{{ route('spk.store') }}" method="POST">
				@csrf

				<div class="row mb-3">
					<div class="col-md-6">
						<label for="nama" class="form-label">Nama Anak</label>
						<input type="text" class="form-control" id="nama" name="nama" placeholder="Masukkan nama" required>
					</div>
					<div class="col-md-6">
						<label for="tanggal_lahir" class="form-label">Tanggal Lahir</label>
						<input type="date" class="form-control" id="tanggal_lahir" name="tanggal_lahir" required>
					</div>
					<div class="col-md-6">
						<label for="jenis_kelamin" class="form-label">Jenis Kelamin</label>
						<select class="form-select" id="jenis_kelamin" name="jenis_kelamin" required>
							<option value="">Pilih</option>
							<option value="Laki-laki">Laki-laki</option>
							<option value="Perempuan">Perempuan</option>
						</select>
					</div>
					<div class="col-md-6">
						<label for="pengisi" class="form-label">Yang Mengisi Kuesioner</label>
						<select class="form-select" id="pengisi" name="pengisi" required>
							<option value="">Pilih</option>
							<option value="Orangtua">Orangtua</option>
							<option value="Guru">Guru</option>
							<option value="Anak">Anak</option>
						</select>
					</div>
					@guest
					<div class="col-md-6">
						<label for="email" class="form-label">Email</label>
						<input type="email" class="form-control" id="email" name="email" placeholder="Email login" required>
					</div>
					<div class="col-md-6">
						<label for="password" class="form-label">Password</label>
						<input type="password" class="form-control" id="password" name="password" placeholder="Password login" required>
					</div>
					@endguest
				</div>


				<!-- Progress Bar (static 0%/4%) -->
				<div class="mb-4">
					<label class="form-label fw-semibold">Progres Pengisian</label>
					<div class="progress">
						<div id="progressBar" class="progress-bar" role="progressbar" style="width: 0%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
					</div>
					<div id="progressText" class="text-end small text-primary mt-1">0%</div>
				</div>

				<!-- Pertanyaan Gejala -->
				@foreach ($gejala as $index => $item)
				<div class="card-question mb-4">
					<h5 class="mb-3">
						<span class="badge bg-primary me-2">{{ $index + 1 }}</span>
						<strong>{{ strtoupper($item->kategori) }}:</strong> {{ $item->gejala }}
					</h5>

					@foreach ($kondisi_user as $kondisi)
					<div class="px-3 py-2 bg-light mb-2 form-check-1">
						<input class="form-check-input" type="radio"
							name="kondisi[{{ $item->kode_gejala }}]"
							id="q{{ $index }}_{{ $loop->index }}"
							value="{{ $kondisi->nilai }}" required>
						<label class="form-check-label mb-0" for="q{{ $index }}_{{ $loop->index }}">
							{{ $kondisi->kondisi }}
						</label>
					</div>
					@endforeach
				</div>
				@endforeach


				<div class="text-center mt-4">
					<button type="submit" class="btn btn-primary px-4">Kirim Kuesioner</button>
				</div>
			</form>
		</div>
	</div>

	<!-- Bootstrap Bundle JS -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
	<script>
		document.addEventListener('DOMContentLoaded', function() {
			const totalQuestions = document.querySelectorAll('.card-question').length;
			const progressBar = document.getElementById('progressBar');
			const progressText = document.getElementById('progressText');

			function updateProgress() {
				const answered = new Set();

				document.querySelectorAll('input[type="radio"]:checked').forEach(input => {
					const name = input.name;
					answered.add(name);
				});

				const percent = Math.round((answered.size / totalQuestions) * 100);
				progressBar.style.width = percent + '%';
				progressBar.setAttribute('aria-valuenow', percent);
				progressText.textContent = percent + '%';
			}

			document.querySelectorAll('input[type="radio"]').forEach(input => {
				input.addEventListener('change', updateProgress);
			});
		});
	</script>

</body>

</html>
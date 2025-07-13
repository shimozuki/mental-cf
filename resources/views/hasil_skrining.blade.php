<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <title>Hasil Assessment</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f0f4fa;
            margin: 0;
            padding: 0;
            color: #333;
        }

        .navbar {
            background-color: #2c3e50;
            padding: 14px 30px;
            color: #fff;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.08);
        }

        .navbar h1 {
            margin: 0;
            font-size: 18px;
        }

        .navbar a {
            color: #f8f9fa;
            text-decoration: none;
            margin-left: 15px;
            font-size: 14px;
        }

        .navbar a:hover {
            text-decoration: underline;
        }

        .container {
            max-width: 960px;
            margin: 40px auto;
            padding: 0 20px;
        }

        .card {
            background: #fff;
            padding: 30px;
            border-radius: 16px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.05);
        }

        .card-header {
            text-align: center;
            margin-bottom: 30px;
        }

        .section-box {
            border-radius: 10px;
            padding: 20px;
            background-color: #eaf1fe;
            border-left: 4px solid #1d6bf3;
            flex: 1;
        }

        .cf-box {
            background-color: #f3ecfe;
            border-left: 4px solid #7a4be9;
        }

        .section-flex {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            margin-bottom: 30px;
        }

        .cf-progress {
            height: 10px;
            background-color: #d0d0d0;
            border-radius: 10px;
            margin-top: 10px;
            overflow: hidden;
        }

        .cf-progress-bar {
            height: 10px;
            background-color: #7a4be9;
        }

        .score-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 16px;
        }

        .score-card {
            background: #fff;
            border-radius: 12px;
            padding: 20px;
            box-shadow: 0 1px 4px rgba(0, 0, 0, 0.04);
            text-align: center;
            border: 1px solid #e3e3e3;
            position: relative;
        }

        .score-value {
            font-size: 26px;
            font-weight: bold;
            color: #6f42c1;
        }

        .score-badge {
            position: absolute;
            top: 12px;
            right: 12px;
            background-color: #ccc;
            color: white;
            font-size: 13px;
            font-weight: bold;
            padding: 5px 10px;
            border-radius: 50px;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
        }

        .footer-actions {
            margin-top: 30px;
            text-align: right;
        }

        .btn {
            padding: 10px 18px;
            border-radius: 6px;
            text-decoration: none;
            font-weight: bold;
            margin-left: 10px;
        }

        .btn-primary {
            background-color: #007bff;
            color: #fff;
        }

        .btn-secondary {
            background-color: #6c757d;
            color: #fff;
        }

        .total-classification {
            text-align: right;
            margin-top: 20px;
            font-size: 16px;
        }

        @media (max-width: 768px) {
            .section-flex {
                flex-direction: column;
            }

            .navbar {
                flex-direction: column;
                align-items: flex-start;
            }

            .navbar a {
                margin: 5px 10px 0 0;
            }

            .footer-actions {
                text-align: center;
            }
        }
    </style>
</head>

<body>

    @php
    function badgeColor($status) {
    return match(strtolower($status)) {
    'normal' => '#28a745',
    'borderline' => '#ffc107',
    'abnormal' => '#dc3545',
    'perlu perhatian' => '#fd7e14',
    'sangat memprihatinkan' => '#6f42c1',
    default => '#6c757d'
    };
    }

    function riskIcon($status) {
    return match(strtolower($status)) {
    'normal' => '😄',
    'borderline' => '😐',
    'abnormal' => '😟',
    default => '❓'
    };
    }

    $cf = $data_diagnosa[0]['nilai_cf'] ?? 0;
    @endphp

    <!-- Navbar -->
    <div class="navbar">
        <h1>Skrining Mental Emosional</h1>
        <div>
            <a href="/dashboard">🏠 Dashboard</a>
            <a href="/riwayat">📜 Riwayat</a>
            <a href="/login">ℹ️ Login</a>
        </div>
    </div>

    <!-- Main Card -->
    <div class="container">
        <div class="card">
            <div class="card-header">
                <h2>Hasil Assessment</h2>
                <p>Berdasarkan jawaban Anda, berikut adalah hasil penilaian kesehatan mental anak/remaja:</p>
            </div>

            <div class="section-flex">
                <div class="section-box">
                    <h4>🛡️ Kesimpulan Akhir</h4>
                    <p><strong>Nama:</strong> {{ $alternatif->nama ?? '-' }}</p>
                    <p><strong>Usia:</strong> {{ $alternatif->usia ?? '-' }} tahun</p>
                    <p><strong>Tingkat Risiko:</strong>
                        <span style="color: {{ badgeColor($klasifikasi['total'] ?? '-') }}; font-weight:bold;">
                            {{ $klasifikasi['total'] ?? '-' }} {{ riskIcon($klasifikasi['total'] ?? '-') }}
                        </span>
                    </p>
                    <p>Anak memiliki beberapa tanda yang perlu diwaspadai.</p>
                </div>

                <div class="section-box cf-box">
                    <h4>📊 Certainty Factor Score</h4>
                    <p><strong>Nilai Certainty Factor:</strong> <span class="score-value">{{ $cf }}</span></p>
                    <div class="cf-progress">
                        <div class="cf-progress-bar" style="width: {{ $cf }}%;"></div>
                    </div>
                    <small>*Skala 0–100. Semakin tinggi menunjukkan risiko lebih besar.</small>
                </div>
            </div>

            <h4 style="margin-bottom: 15px;">Hasil Detail Berdasarkan Kategori SDQ</h4>
            <div class="score-grid">
                @foreach($skor as $kategori => $nilai)
                @php
                $klas = $klasifikasi[$kategori] ?? '-';
                $warna = badgeColor($klas);
                @endphp
                <div class="score-card">
                    <span class="score-badge" style="background-color: {{ $warna }}">{{ $nilai }}</span>
                    <div class="score-value">{{ $nilai }}</div>
                    <div><strong>{{ ucwords(str_replace('_', ' ', $kategori)) }}</strong></div>
                    <div>{{ $klas }}</div>
                </div>
                @endforeach
            </div>

            <div class="total-classification">
                <strong>Total Klasifikasi:</strong>
                <span style="color: {{ badgeColor($klasifikasi['total'] ?? '-') }};">
                    {{ $klasifikasi['total'] ?? '-' }}
                </span>
            </div>
            @if (($klasifikasi['total'] ?? '') == 'Normal' && in_array('Abnormal', $klasifikasi))
            <div style="margin-top: 10px; color: orange; font-weight: bold;">
                ⚠️ Beberapa kategori menunjukkan tanda abnormal meskipun total klasifikasi normal.
            </div>
            @endif


            <div class="footer-actions">
                <!-- <a href="#" class="btn btn-primary">Cetak PDF</a> -->
                <a href="/" class="btn btn-secondary">Kembali</a>
            </div>
        </div>
    </div>

</body>

</html>
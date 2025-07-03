<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <title>Hasil Assessment PDF</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            color: #000;
        }

        .kop {
            text-align: center;
            border-bottom: 3px solid black;
            padding-bottom: 10px;
            margin-bottom: 30px;
        }

        .kop img {
            float: left;
            width: 80px;
            margin-right: 20px;
        }

        .kop h1 {
            font-size: 18px;
            margin: 0;
        }

        .section {
            margin-bottom: 25px;
        }

        .section h3 {
            margin-bottom: 8px;
            font-size: 16px;
        }

        .cf-bar {
            width: 100%;
            height: 10px;
            background-color: #ccc;
        }

        .cf-bar-fill {
            height: 10px;
            background-color: #7a4be9;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        table,
        th,
        td {
            border: 1px solid #000;
        }

        th,
        td {
            padding: 6px 10px;
            text-align: center;
        }

        .note {
            color: #e67e22;
            font-style: italic;
            margin-top: 10px;
        }

        .footer {
            text-align: right;
            margin-top: 40px;
        }

        .btn-cetak {
            display: inline-block;
            padding: 8px 16px;
            background: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 6px;
        }

        @media print {
            .btn-cetak {
                display: none;
            }
        }
    </style>
</head>

<body>

    <div class="kop">
        {{-- Ganti logo sesuai kebutuhan --}}
        <img src="{{ public_path('logo.png') }}" alt="Logo">
        <h1>Hasil Skrining Kesehatan Mental Anak</h1>
    </div>

    <div class="section">
        <h3>Data Anak</h3>
        <p><strong>Nama:</strong> {{ $alternatif->nama ?? '-' }}</p>
        <p><strong>Usia:</strong> {{ $alternatif->usia ?? '-' }} tahun</p>
    </div>

    <div class="section">
        <h3>Hasil Penilaian</h3>
        <p><strong>Risiko Kesehatan Mental:</strong>
            <span style="color: {{ strtolower($klasifikasi['total']) == 'abnormal' ? 'red' : 'green' }}">
                {{ $klasifikasi['total'] ?? '-' }}
            </span>
        </p>
        <p><strong>Certainty Factor:</strong> {{ $data_diagnosa[0]['nilai_cf'] ?? 0 }}%</p>
        <div class="cf-bar">
            <div class="cf-bar-fill" style="width: {{ $data_diagnosa[0]['nilai_cf'] ?? 0 }}%"></div>
        </div>
    </div>

    <div class="section">
        <h3>Skor Kategori SDQ</h3>
        <table>
            <thead>
                <tr>
                    <th>Kategori</th>
                    <th>Skor</th>
                    <th>Klasifikasi</th>
                </tr>
            </thead>
            <tbody>
                @foreach($skor as $kategori => $nilai)
                <tr>
                    <td>{{ ucwords(str_replace('_', ' ', $kategori)) }}</td>
                    <td>{{ $nilai }}</td>
                    <td>{{ $klasifikasi[$kategori] ?? '-' }}</td>
                </tr>
                @endforeach
            </tbody>
        </table>

        @if ($klasifikasi['total'] == 'Normal' && in_array('Abnormal', $klasifikasi))
        <p class="note">⚠️ Beberapa kategori menunjukkan tanda abnormal meskipun total klasifikasi normal.</p>
        @endif
    </div>

    <div class="footer">
        <a href="#" onclick="window.print()" class="btn-cetak">🖨️ Cetak PDF</a>
    </div>

</body>

</html>
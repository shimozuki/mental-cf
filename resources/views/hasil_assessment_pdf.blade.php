<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <title>Hasil Assessment</title>
    <style>
        body {
            font-family: sans-serif;
            color: #333;
            font-size: 12px;
        }

        h2 {
            text-align: center;
        }

        .score-box {
            margin-top: 10px;
        }

        .badge {
            padding: 4px 8px;
            border-radius: 4px;
            color: white;
        }
    </style>
</head>

<body>

    @php
    if (!function_exists('badgeColor')) {
    function badgeColor($status) {
    return match(strtolower($status)) {
    'normal' => '#28a745',
    'borderline' => '#ffc107',
    'abnormal' => '#dc3545',
    default => '#6c757d'
    };
    }
    }
    @endphp

    <h2>Hasil Assessment Kesehatan Mental</h2>

    <p><strong>Nama:</strong> {{ $alternatif->nama ?? '-' }}</p>
    <p><strong>Usia:</strong> {{ $alternatif->usia ?? '-' }} tahun</p>
    <p><strong>CF Score:</strong> {{ $data_diagnosa[0]['nilai_cf'] ?? 0 }}</p>
    <p><strong>Klasifikasi Total:</strong>
        <span class="badge" style="background-color: {{ badgeColor($klasifikasi['total'] ?? '-') }}">
            {{ $klasifikasi['total'] ?? '-' }}
        </span>
    </p>

    <hr>

    <h4>Detail Kategori:</h4>
    <ul>
        @foreach($klasifikasi as $kategori => $status)
        @if($kategori == 'total') @continue @endif
        <li><strong>{{ ucwords(str_replace('_',' ',$kategori)) }}:</strong> {{ $status }}</li>
        @endforeach
    </ul>

</body>

</html>
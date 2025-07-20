<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <title>Laporan Diagnosa</title>
    <style>
        body {
            font-family: sans-serif;
            font-size: 12px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th,
        td {
            border: 1px solid #333;
            padding: 6px;
            text-align: left;
        }

        th {
            background-color: #eee;
        }

        h2 {
            text-align: center;
        }
    </style>
</head>

<body>
    <h2>Laporan Diagnosa Mental Emosional</h2>
    <p>Periode: {{ request('start_date') }} s/d {{ request('end_date') }}</p>

    <table>
        <thead>
            <tr>
                <th>#</th>
                <th>Nama Pasien</th>
                <th>Usia</th>
                <th>Pengisi</th>
                <th>Tanggal Diagnosa</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($diagnosa as $index => $item)
            <tr>
                <td>{{ $index + 1 }}</td>
                <td>{{ $item->alternatif->nama }}</td>
                <td>{{ $item->alternatif->usia }} Thn</td>
                <td>{{ $item->alternatif->pengisi }}</td>
                <td>{{ $item->created_at->format('d-m-Y') }}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
</body>

</html>
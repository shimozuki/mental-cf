<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Diagnosa extends Model
{
    use HasFactory;
    protected $table = 'diagnosas';

    protected $guard = ["id"];
    protected $fillable = [
        'diagnosa_id',
        'nama',
        'jenis_kelamin',
        'pengisi',
        'usia',
        'data_diagnosa',
        'total_score',
        'klasifikasi',
        'kondisi',
        'alternatif_id',
    ];

    public function alternatif()
    {
        return $this->belongsTo(Alternatif::class);
    }
}

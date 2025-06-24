<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KondisiUser extends Model
{
    use HasFactory;
    // protected $table = 'kondisi_users';

    public function fillTable()
    {
        $cf_user = [
            [
                'kondisi' => 'Tidak Pernah',
                'nilai' => 0.0,
            ],
            [
                'kondisi' => 'Kadang-kadang',
                'nilai' => 0.5,
            ],
            [
                'kondisi' => 'Sering',
                'nilai' => 1.0,
            ],
        ];
        return $cf_user;
    }
}

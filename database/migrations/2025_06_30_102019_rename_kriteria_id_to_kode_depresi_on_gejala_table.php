<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('gejala', function (Blueprint $table) {
            $table->renameColumn('kriteria_id', 'kode_depresi');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('gejala', function (Blueprint $table) {
            $table->renameColumn('kode_depresi', 'kriteria_id');
        });
    }
};

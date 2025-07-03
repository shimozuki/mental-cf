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
        Schema::table('diagnosas', function (Blueprint $table) {
            $table->integer('usia')->nullable()->after('diagnosa_id');
            $table->json('total_score')->nullable()->after('data_diagnosa');
            $table->json('klasifikasi')->nullable()->after('total_score');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('diagnosas', function (Blueprint $table) {
            $table->dropColumn(['usia', 'total_score', 'klasifikasi']);
        });
    }
};

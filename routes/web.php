<?php

use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\DiagnosaController;
use App\Http\Controllers\GejalaController;
use App\Http\Controllers\PsikologController;
use App\Http\Controllers\TingkatDepresiController;
use App\Models\Diagnosa;
use App\Models\TingkatDepresi;
use App\Models\KondisiUser;
use App\Models\Gejala;
use App\Models\User;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



Route::get('/', function () {
    return view('landing');
});




Route::middleware('auth')->group(function () {
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard    ');

    Route::post('/tambah', [PsikologController::class, 'register'])->name('addakun');
    Route::get('/dashboard/admin', [PsikologController::class, 'listAdmin']);



    Route::get('/dashboard/add_admin', function () {
        return view('admin.add_admin');
    });




    Route::get('/home', function () {
        return redirect('/dashboard');
    });

    Route::resource('/gejala', GejalaController::class);
    Route::resource('/depresi', TingkatDepresiController::class);
    Route::resource('/spk', DiagnosaController::class)->only('index');
});


Route::get('/form', function () {
    $data = [
        'gejala' => Gejala::all(),
        'kondisi_user' => KondisiUser::all()
    ];
    return view('form', $data);
})->name('cl.form');

Route::get('/form-faq', function () {
    $data = [
        'gejala' => Gejala::all(),
        'kondisi_user' => KondisiUser::all()
    ];

    return view('faq', $data);
});

Route::get('/hasil/{diagnosa_id}', [DiagnosaController::class, 'hasilSkrining'])->name('spk.hasil');

// Resource route ini terakhir
Route::resource('/spk', DiagnosaController::class);
Route::get('/cetak-pdf/{diagnosa_id}', [DiagnosaController::class, 'cetakPDF'])->name('cetak.pdf');





Auth::routes();

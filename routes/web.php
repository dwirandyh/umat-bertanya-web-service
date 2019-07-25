<?php

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
    return view('welcome');
});

//Route::domain('http://127.0.0.1:8000/mazhab')->group(function () {

Route::get('/artikel/populer', 'ArtikelController@populer');
Route::get('/artikel/detail', 'ArtikelController@detail');
Route::get('/artikel/cari', 'ArtikelController@cari');
Route::get('/artikel/referensi', 'ArtikelController@referensi');

Route::get('/imam/', 'ImamController@imam');
Route::get('/imam/detail', 'ImamController@detail');

Route::get('/tag', 'ArtikelController@getTag');


Route::get('/mazhab', 'ArtikelController@getMazhab');
Route::get('/mazhab/detail', 'ArtikelController@getDetailMazhab');

//});


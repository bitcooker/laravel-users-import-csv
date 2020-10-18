<?php

use App\Mail\JobResultMail;
use Illuminate\Support\Facades\Mail;
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
    return redirect()->route('files.create');
});

Route::get('users', 'UserController@index');
Route::get('jobs', 'JobController@index');
Route::resource('files', 'FileController');

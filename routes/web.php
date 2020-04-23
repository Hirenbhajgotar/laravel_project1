<?php

use App\Http\Controllers\AuthController;
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
    return view('home');
});
Route::get('/login', 'AuthController@index');
Route::post('/login', 'AuthController@login');

Route::get('/register', function() {
    return view('auth.register');
});
Route::post('/register', 'AuthController@store');

Route::group(['middleware' => ['CustomeAuth']], function() {
    Route::get('/logout', 'AuthController@logout');

    Route::get('/deshbord', 'UserController@index');
    Route::get('/edit-profile/{id}', 'UserController@edit_profile');
    Route::post('/update-profile/{id}', 'UserController@update_profile');

    Route::get("/blog", "BlogController@index");
    Route::get('/view-blog/{id}', 'BlogController@show');

    Route::get('/my-blogs/{id}', 'UserController@show');
    Route::get("/create-blog", "UserController@create_blog");
    Route::post("/create-blog", "UserController@store");
    Route::get('/edit-blog/{id}', 'UserController@edit');
    Route::post('/edit-blog/{id}', 'UserController@update');
    Route::get('/delete-blog/{id}', 'UserController@destroy');
});

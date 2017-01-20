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
Route::group(['middleware' => ['web']],function(){

	Route::get('/','Header_infoController@index');

	Route::put('/update','HomeController@update');
	
	Route::resource('edits','EditController');

	Auth::routes();

	Route::get('/admin', 'HomeController@index');

	Route::get('/register', 'HomeController@showblank');
});


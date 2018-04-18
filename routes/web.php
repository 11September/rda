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

Route::get('/', 'WelcomeController@index');
Route::get('/news', 'NewsController@index');
Route::get('/news/{news}', 'NewsController@post');
Route::get('/search', 'NewsController@search');

Route::get('/anounses', 'AnounsesController@index');
Route::get('/anounses/{anounse}', 'AnounsesController@post');

Route::get('/page/{page}', 'WelcomeController@page');
Route::get('/albums/{album}', 'WelcomeController@album');

//Route::get('/contact', 'WelcomeController@contacts');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
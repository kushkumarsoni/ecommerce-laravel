<?php

use Illuminate\Support\Facades\Route;

Route::get('/',[App\Http\Controllers\Frontend\FrontendController::class,'index'])->name('frontend.index');


Auth::routes();
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
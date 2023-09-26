<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::get('users',[App\Http\Controllers\Frontend\FrontendController::class,'user_index']);
Route::post('users/store',[App\Http\Controllers\Frontend\FrontendController::class,'user_store']);
Route::get('users/{id}',[App\Http\Controllers\Frontend\FrontendController::class,'single_user']);
Route::delete('users/delete/{id}',[App\Http\Controllers\Frontend\FrontendController::class,'delete_user']);
Route::post('users/update',[App\Http\Controllers\Frontend\FrontendController::class,'user_update']);
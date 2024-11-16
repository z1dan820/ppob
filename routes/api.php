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
Route::post('/callback/gopay',             [App\Http\Controllers\GopayController::class, 'handle']);
Route::post('/callback/ovo',             [App\Http\Controllers\OvoController::class, 'handle']);
Route::post('/callback/shopee',             [App\Http\Controllers\ShopeeController::class, 'handle']);
Route::post('/callback/qris',             [App\Http\Controllers\DanaController::class, 'handle']);
Route::post('/callback/dana',             [App\Http\Controllers\DanaController::class, 'handle']);

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

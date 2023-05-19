<?php

use App\Http\Controllers\BankAccountController;
use App\Http\Controllers\BankTransfersController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


//rutas en api
Route::controller(BankAccountController::class)->group(function(){
    Route::get('/BankAccount','GetAll');
    Route::get('/BankAccount/{id}','GetById');
    Route::post('/BankAccount','Insert');
    Route::put('/BankAccount/{id}','Update');
    Route::delete('/BankAccount/{id}','Delete');
});

Route::controller(BankTransfersController::class)->group(function(){
    Route::get('/BankTransfers','GetLastTransferences');
    Route::post('/BankTransfers','Insert');
});


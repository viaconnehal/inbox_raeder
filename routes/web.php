<?php

use App\Http\Controllers\Api\TestController;
use App\Http\Controllers\OrmController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('create-entity',[OrmController::class,'createTable'])->middleware();
Route::get('create-entity-relation',[OrmController::class,'createTableRelation'])->middleware();

Route::get('gmailapitest',[TestController::class,'gmailapitest'])->middleware();

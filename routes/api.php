<?php

use App\Http\Controllers\Api\ApiAuthController;
use App\Http\Controllers\Api\TestController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\ApiBuilder;
use App\Http\Controllers\ApiTestingController;
use App\Http\Controllers\GmailResponseController;


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

Route::match(['get', 'post','put','delete'], '/post_info/{list_name}/{id}', [ApiTestingController::class, 'handleRoute']);

//pinaki
Route::post('/login', [ApiAuthController::class, 'login']);
Route::post('/register', [ApiAuthController::class, 'register']);

Route::middleware(['auth:api'])->group(function() {
    Route::get('/get-account', [ApiAuthController::class, 'getAccount']);
    Route::post('/logout', [ApiAuthController::class, 'logout']);

    Route::post('/role-create', [TestController::class, 'createRoles']);
    Route::post('/permission-create', [TestController::class, 'createPermissions']);
    Route::post('/assign-role-permissions', [TestController::class, 'assignRolePermissions']);

    Route::post('/create-model', [TestController::class, 'createModels']);
    Route::get('/list-model', [TestController::class, 'listModels']);
    Route::get('/get-model-table', [TestController::class, 'getModelTable']);
    Route::get('/get-model-data', [TestController::class, 'getModelDatas']);
});
//
Route::get('/get-response', [GmailResponseController::class, 'getGmailResponse']);
Route::post('/send-email', [GmailResponseController::class, 'sendMail']);
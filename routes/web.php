<?php

use App\Http\Controllers\DepartmentsController;
use App\Http\Controllers\ItemsController;
use App\Http\Controllers\LoginController;
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

Route::get('/register', function () {
    return view('register');
});

Route::get('/login', function () {
    return view('login');
});


Route::post('/register',[LoginController::class,'store'])->name('register');
Route::post('/login',[LoginController::class,'login'])->name('login');
Route::get('/logout',[LoginController::class,'logout']);
Route::get('/departments',[DepartmentsController::class,'index'])->middleware('auth');;
Route::get('/departments/create',[DepartmentsController::class,'create'])->middleware('auth');;
Route::post('/departments/create',[DepartmentsController::class,'store'])->name('departCreate')->middleware('auth');;
Route::post('/departments/edit',[DepartmentsController::class,'update'])->name('departEdit')->middleware('auth');;
Route::get('/departments/edit',[DepartmentsController::class,'edit'])->middleware('auth');;
Route::get('/departments/delete',[DepartmentsController::class,'delete'])->middleware('auth');;
Route::post('/departments/delete',[DepartmentsController::class,'destroy'])->name('departDelete')->middleware('auth');;
Route::get('/items',[\App\Http\Controllers\ItemsController::class,'index'])->middleware('auth');;
Route::get('/items/create',[\App\Http\Controllers\ItemsController::class,'create'])->middleware('auth');;
Route::post('/items/store',[ItemsController::class,'store'])->name('itemStore')->middleware('auth');
Route::get('/items/edit/{id}',[ItemsController::class,'edit'])->name('itemEdit')->middleware('auth');
Route::put('/items/edit/{id}',[ItemsController::class,'update'])->name('itemUpdate')->middleware('auth');
Route::get('/items/delete/{id}',[ItemsController::class,'destroy'])->name('itemDestroy')->middleware('auth');




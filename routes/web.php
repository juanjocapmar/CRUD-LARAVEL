<?php


use App\Http\Controllers\PersonasController;
use Illuminate\Support\Facades\Route;




Route::get('/' , [PersonasController::class , 'index' ]) -> name ('personas.index');


Route::get('/create' , [PersonasController::class , 'create' ]) -> name ('personas.create');


Route::post('/store' , [PersonasController::class , 'store' ]) -> name ('personas.store');


Route::get('/edit/{id}' , [PersonasController::class , 'edit' ]) -> name ('personas.edit');


Route::get('/show' , [PersonasController::class , 'show' ]) -> name ('personas.show');

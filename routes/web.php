<?php

use App\Models\Province;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProvinceDistrictMunicipalityController;

Route::get('/', function () {
    $countries = Province::get(["name", "id"]);
    return view('welcome', compact('countries'));
});

Route::post('get-districts-by-province', [ProvinceDistrictMunicipalityController::class, 'getdistrict']);
Route::post('get-municipalities-by-district', [ProvinceDistrictMunicipalityController::class, 'getmunicipality']);

<?php

namespace App\Http\Controllers;

use App\Models\District;
use App\Models\Municipality;
use Illuminate\Http\Request;

class ProvinceDistrictMunicipalityController extends Controller
{
    public function getdistrict(Request $request)
    {
        $data['districts'] = District::where("province_id", $request->province_id)
            ->get(["name", "id"]);
        return response()->json($data);
    }
    public function getmunicipality(Request $request)
    {
        $data['municipalities'] = Municipality::where("district_id", $request->district_id)
            ->get(["name", "id"]);
        return response()->json($data);
    }
}

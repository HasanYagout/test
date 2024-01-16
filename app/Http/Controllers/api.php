<?php

namespace App\Http\Controllers;

use App\Models\departments;
use App\Models\Items;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class api extends Controller
{

    public function login(Request $request)
    {
        $user = User::where('email', $request->email)->first();

        if ($user) {
            return response()->json($user);
        }

        return response()->json(['error' => 'User not found'], 404);
    }

    public function departments(Request $request)
    {
        $departments=departments::all();
        return response()->json($departments);
    }

    public function create(Request $request)
    {
        $item= new Items();
        $item->name=$request->name;
        $item->department_id=$request->department_id;
        $item->image=$request->image;
        $item->save();
        return response()->json($item);

    }
}

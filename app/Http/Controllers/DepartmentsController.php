<?php

namespace App\Http\Controllers;

use App\Models\departments;
use App\Models\User;
use Illuminate\Http\Request;

class DepartmentsController extends Controller
{
    public function index()
    {
        $departments=departments::all();
        return view('departments',compact('departments'));
    }

    public function store(Request $request)
    {
        $attributes=$request->validate([
            'name'=>'required|min:2|unique:departments',
        ]);

        departments::create($attributes);

        return response()->json([
            'message'=>'department created'
        ]);
    }

    public function create()
    {
        return view('departmentsCreate');
    }

    public function edit(Request $request)
    {
//        $department=departments::find($request->id);
//        dd($department->name);
        return view('departmentsEdit');
    }

    public function update(Request $request)
    {
        $request->validate([
            'name'=>'required|min:2|unique:departments',
        ]);

        $department=departments::find($request->id);
        $department->name=$request->name;
        $department->update();
        return response()->json([
            'message'=>'department updated'
        ]);
    }

    public function destroy(Request $request)
    {
        $department=departments::find($request->id);
        $department->delete();
        return response()->json([
            'message'=>'department deleted'
        ]);
    }

    public function delete(Request $request)
    {

        return view('departmentsDelete');
    }
}

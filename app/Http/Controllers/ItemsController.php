<?php

namespace App\Http\Controllers;

use App\Models\departments;
use App\Models\Items;
use Illuminate\Http\Request;

class ItemsController extends Controller
{
    public function index()
    {
        $items=Items::all();
        return view('items',compact('items'));
    }

    public function create()
    {
        $depart=departments::all();
        return view('itemsCreate',compact('depart'));
    }

    public function store(Request $request)
    {
        $item= new Items();
        if($request->hasfile('image'))
        {
            $file = $request->file('image');
            $extenstion = $file->getClientOriginalExtension();
            $filename = time().'.'.$extenstion;
            $file->move('uploads/', $filename);
            $item->image = $filename;
        }

        $item->name=$request->name;
        $item->department_id=$request->department_id;
        $item->save();
        return redirect('/items');

    }

    public function edit($id)
    {
        $item = Items::find($id);
        return view('itemsEdit', compact('item'));
        return redirect('/items');

    }

    public function update(Request $request, $id)
    {
        $item = Items::find($id);
        $item->name=$request->name;
        $item->department_id=$request->department_id;
        $item->image=$request->image;
        $item->update();
        return redirect('/items');

    }

    public function destroy($id)
    {

        $item = Items::find($id);

        $item->delete();
        return redirect('/items');
    }
}

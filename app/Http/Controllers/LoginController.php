<?php

namespace App\Http\Controllers;


use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function store(Request $request)
    {
        $attributes=$request->validate([
            'name'=>'required|min:3',
            'email'=>'required|min:10',
            'password'=>'required|min:8',
        ]);

        $user=User::create($attributes);
        auth()->login($user);
        return redirect('/');

    }

    public function logout()
    {
        auth()->logout();
    }

    public function index()
    {
        return view('welcome');
    }

    public function login(Request $request)
    {

        $user=User::where('email',$request->email)->first();

        if ($user){
            Auth::login($user);
            return redirect('/');
        }
    }
}

<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Cookie;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */

    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required',
            'password' => 'required',
        ]);       
        
        $remember = ($request->has('remember')) ? true : false;
        
       // $credentials = $request->only('email', 'password');
        
       // if (Auth::attempt($credentials)) {
        if (Auth::attempt(['email' => $request->email, 'password' => $request->password],$remember)) {          

            if($remember){
                Cookie::queue('email',$request->email,30*24*60*60);
                Cookie::queue('password',$request->password,30*24*60*60);
            }

            if(Auth::check() && Auth::user()->role_id == 2) {
                return redirect(RouteServiceProvider::HOME);
            }

            if(Auth::check() && Auth::user()->role_id == 1) {
                return redirect(RouteServiceProvider::ADMIN_HOME);
            }  
        }
    
        return redirect("login")->withSuccess('Oppes! You have entered invalid credentials')->withInput();
    }


    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
}

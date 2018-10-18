<?php
    namespace App\Http\Controllers;
    use Illuminate\Http\Request;
    use Illuminate\Support\Facades\Auth;

    class HomeController extends Controller
    {
        public function __construct()
        {
            $this->middleware('auth');
        }

        public function logout()
        {
            Auth::logout();
            return view('welcome');
        }
        public function index()
        {
            return view('auth/login');
        }

        public function ifSubscribed(){
            if(auth()->check()){

                return auth()->user()->isSubscribed? redirect('/subscribe'): redirect("admin");
            }
            return view("login");
        }
    }
?>
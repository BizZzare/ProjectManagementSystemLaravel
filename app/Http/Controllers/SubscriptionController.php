<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use mysqli;
use Stripe\Plan;
use Stripe\Product;
use Stripe\Stripe;


class SubscriptionController extends Controller
{
    /*private $plan;
    public function __construct()
    {
        Stripe::setApiKey("sk_test_2MSmIB3YKNZRde1oP3gskrbj");

        Product::delete();

        $this->plan = Plan::create(array([
            "nickname" => "Monthly",
            "product" => ["name" => "Enter"],
            'interval' => 'month',
            'currency' => 'usd',
            'amount' => 0,
            ]));
    }*/

    public function index()
    {
        return view("subscribe");
    }
    public function store(Request $request)
    {
        $token = $request->stripeToken;
        auth()->user()->newSubscription('main', 'plan_CJUWChnXxFVit7')->withCoupon($request->coupon)->create($token);
        //auth()->user()->newSubscription('main', $this->plan->nickname)->create($token);

        return redirect('/admin');
    }
    public function cancel(){
        auth()->user()->subscription('main')->cancel();

        return redirect("/admin/profile");
    }
    public function  update(Request $request){
        auth()->user()->updateCard($request->stripeToken);
        return redirect("/admin/profile");

    }
    public function resume (){
        auth()->user()->subscription('main')->resume();
        return redirect("/admin/profile");

    }

}

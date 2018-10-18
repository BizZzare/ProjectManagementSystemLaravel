<?php

use Illuminate\Support\Facades\Auth;

    Route::get('/', function () {
	    return view('welcome');
	});
	Route::get('/features', function () {
	    return view('Features');
	});
	Route::get('/contacts', function () {
	    return view('Contacts');
	});
	Route::get('/admin/projects/{id}', function ($id)
	{
		if ($id == 'create')
			return view('createProj');

		$proj = App\Project::where('id', '=', $id)->firstOrFail();
	    return view('projects', compact('proj'));
	});
	Auth::routes();
	Route::get('/logout', 'HomeController@logout')->name('home');
    Route::group(['prefix' => 'admin'], function () {
        Voyager::routes();
	});




    Route::get('/pricing', function () {
        return view('Pricing');
    });
    Route::get('/subscribe', function () {
        return view('subscribe');
    });
    Route::post('/subscription', 'SubscriptionController@index');
    Route::post('/subscribe', 'SubscriptionController@store');
    Route::get("/cancel-subscription", "SubscriptionController@cancel");
    Route::get("/update-card", function(){
        return view('update-card');
    });
    Route::post("/update", "SubscriptionController@update");
    Route::get("/resume", "SubscriptionController@resume");

?>
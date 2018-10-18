@extends('layouts.app')

@section('content')
	<div class="container">
		<div class="imgPanel wow fadeIn">
			<span class="wow bounce">Lupus in Fabula.</span>
			<span class="wow pulse">Veritas vos liberabit.</span>
		</div>

		<div class="card-group">
			<div class="card wow flipInX">
				<div class="card-body">
					<h5 class="card-title">Easy way to solve difficult problems</h5>
					<p class="card-text">The product provides the easiest and the most effective way to solve complicated tasks. No matter what your task is, it will be completed in different ways!</p>
				</div>
				<div class="card-footer">
					<small class="text-muted">Semper primus</small>
				</div>
			</div>

			<div class="card text-white bg-dark wow flipInX">
				<div class="card-body">
					<h5 class="card-title">Task Managment</h5>
					<p class="card-text">You can orginize tasks and use to-do list. Also, you can always track your projects.</p>
				</div>
				<div class="card-footer">
					<small class="text-muted">Semper sursum</small>
				</div>
			</div>

			<div class="card wow flipInX">
				<div class="card-body">
					<h5 class="card-title">Team Managment</h5>
					<p class="card-text">You can decide wich people you want to work on your project.</p>
				</div>
				<div class="card-footer">
					<small class="text-muted">Semper ad meliora</small>
				</div>
			</div>
		</div>

		<div class="imgDesc wow zoomIn">
			<div class="wow slideInLeft">Our product</div>
			<p class="wow slideInDown">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab magnam iure a culpa ratione, tenetur velit veniam maxime dolorem nostrum rerum, pariatur numquam sapiente delectus. Officiis, itaque officia dolorum necessitatibus at totam iste cum amet illum. Quis at et, tempore natus iste, architecto quisquam voluptate quidem eius, optio omnis, maxime. Recusandae, repellendus asperiores totam labore sequi, eaque reprehenderit optio autem earum eveniet ipsum accusantium minus tenetur soluta? Qui nesciunt, fugit optio quo impedit iure sit fuga laborum iste excepturi.</p>
			<a class="btn btn-primary btn-block wow fadeInUp" href="register" role="button">Try</a>
		</div>

		<div class="screenDesc">
			<h3 class="wow bounceInLeft">Start your project now!</h3>			
			<div class="imgBox wow fadeInUp">
				<img src="images/ScreenMain.png" alt="Start page.">
			</div>
		</div>
	</div>
@endsection
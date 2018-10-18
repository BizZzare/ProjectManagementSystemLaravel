@extends('voyager::master')

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <style>
    	.tmpPr
		{
			padding-left: 10px;
		}
    </style>
@stop

@section('content')
	<h1 class="tmpPr">Add new Project</h1>
	<form method="POST" action="/public/admin/projects">
    	{{ csrf_field() }}
    	<input type="text" name="name">
    	<input type="text" name="description">
		<button type="submit" class="btn btn-primary">Add</button>
	</form>
@endsection
<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Argentum Lupus</title>

    <link rel="shortcut icon" href="images/Logo.png" type="image/x-icon"/>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">

    <!-- Styles -->
    <link rel="stylesheet" type="text/css" href="css/MainStyle.css">
    <link rel="stylesheet" type="text/css" href="css/Welcome.css">
    <link rel="stylesheet" type="text/css" href="css/Features.css">
    <link rel="stylesheet" type="text/css" href="css/Contacts.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>

<body>
    <div id="app">
        <header>
            <nav class="navbar navbar-default navbar-static-top" style="background-color: #b6bfc5; padding: 0;">
                
                @if (Route::has('login'))
                <nav class="links navbar navbar-light bg-faded">
                    @auth
                        {{--@if(auth()->user()->isSubscribed)--}}
                        <a href="{{ url('/admin') }}"><i class="fas fa-home"></i> Home</a>

                        {{--@endif--}}
                    @else
                        <a href="{{ route('login') }}"><i class="fas fa-sign-in-alt"></i> Login</a>
                        <a href="{{ route('register') }}"><i class="fas fa-user"></i> Register</a>
                    @endauth
                </nav>
                @endif
                <nav class="navbar navbar-light bg-faded Logo">
                    <a class="navbar-brand Logo" href="/public">
                        <img src="images/LogoDark.png" width="47" height="47" class="d-inline-block align-top" alt="Wolf.">
                        Argentum <span class="badge badge-dark">LUPUS</span>
                    </a>
                </nav>

                <button class="navbar-toggler navbar-toggler-right hWhite" type="button" data-toggle="collapse" data-target="#hiddenMenu" aria-controls="hiddenMenu" aria-expanded="false" aria-label="Toggle navigation" style="margin: 5px;">
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="hiddenMenu">
                    <ul class="navbar-nav mr-auto mt-2 mt-md-0">
                        <li class="nav-item">
                            <a class="nav-link" href="{{ url('/pricing') }}"><i class="fas fa-dollar-sign"></i> Pricing</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ url('/features') }}"><i class="fas fa-magic"></i> Features</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ url('/contacts') }}"><i class="fas fa-phone"></i> Contacts</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>

        @yield('content')   

        <footer>
            <div class="container">
                <div>Enjoy!</div>   
                <div>&copy; 2018 <a href="/public"> ArgentumLupus </a></div>
            </div>
        </footer>
    </div>

    <!-- Scripts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/graingert-wow/1.2.2/wow.min.js"></script>
    <script> new WOW().init(); </script>
    <script src="{{ asset('js/app.js') }}"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    @yield('post-js')
</body>
</html>

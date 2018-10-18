@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-body">
                    <form class="form-horizontal" method="POST" action="{{ route('register') }}">
                        {{ csrf_field() }}

                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                            <label for="name" class="col-md-4 control-label wow slideInLeft">Name</label>

                            <div class="col-md-8">
                                <input id="name" type="text" class="form-control wow fadeIn" name="name" value="{{ old('name') }}" required autofocus>

                                @if ($errors->has('name'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="role" class="col-md-4 control-label wow slideInLeft">Role</label>
                            <div class="col-md-8">
                                <select id="role" class="form-control wow fadeIn" name="role">
                                   <?php
                                        $dsn = 'mysql:dbname=wolfDB;host=localhost';
                                        $user = 'root';
                                        $password = '';
                                        try
                                        {
                                            $dbh = new PDO($dsn, $user, $password, [PDO::ATTR_ERRMODE=>PDO::ERRMODE_WARNING]);
                                            $sql = 'SELECT * FROM `roles`';
                                            foreach ($dbh->query($sql) as $row)
                                            {
                                                if ($row['name'] != 'admin')
                                                    echo '<option value="'.$row['id'].'">'.$row['display_name'].'</option>';
                                            }
                                        }
                                        catch (PDOException $e)
                                        {
                                            echo $e->getMessage();
                                        }
                                   ?>
                                </select>
                            </div>                            
                        </div>

                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            <label for="email" class="col-md-4 control-label wow slideInLeft">E-Mail Address</label>

                            <div class="col-md-8">
                                <input id="email" type="email" class="form-control wow fadeIn" name="email" value="{{ old('email') }}" required>

                                @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                            <label for="password" class="col-md-4 control-label wow slideInLeft">Password</label>

                            <div class="col-md-8">
                                <input id="password" type="password" class="form-control wow fadeIn" name="password" required>

                                @if ($errors->has('password'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="password-confirm" class="col-md-4 control-label wow slideInLeft">Confirm Password</label>

                            <div class="col-md-8 wow fadeIn">
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
                            </div>
                        </div>

                        <div class="form-group wow fadeIn">
                            <div class="col-md-5 col-md-offset-4">
                                <button type="submit" class="btn btn-primary">
                                    Register
                                </button>
                                {{--<form action="/public/register" method="POST">
                                    <script
                                            src="https://checkout.stripe.com/checkout.js" class="stripe-button"
                                            data-key="pk_test_Oxj8vk1VeJyHqhdPCt6pjmv"
                                            data-amount="999"
                                            data-name="Argentum Lupus"
                                            data-description="Pay for using"
                                            data-image="https://stripe.com/img/documentation/checkout/marketplace.png"
                                            data-locale="auto">
                                    </script>
                                </form>--}}
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

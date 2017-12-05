@extends('layouts.layout')

@section('content')
<div class="container" style="background: linear-gradient(to right, #FFA500, teal);">
    <div class="row" >
<div class="header" >
        <div class="logo" style=" width: 260px;
                                    text-align: center;
                                    padding-top: 20px;
                                    float: left;">
           <img style="height:150px;" src="img/logo.png" alt="" />
        </div>
        <div class="headerinner">
            <br>
                    <h3 style="color:white;margin-left: 20%;padding-top: 30px;">
                       LOGIN SISTEM AKADEMIK MAHASISWA INSAN PEMBENGUNAN 
                    </h3>


        <div class="col-md-8 col-md-offset-2" >
            <div class="panel panel-default"> 
               <!--  <div class="panel-heading" style="background: linear-gradient(to right, #0866c6, red);"><img class="img-dasboard" style=" width: 100px;" src="{{asset('img/logo.png')}}"><h2 style="color:green;margin-left: 20%;padding-top: 30px;">Login System STMIK Insan Pembangunan</h2></div> -->

                <div class="panel-body" style="background: linear-gradient(to right, #FFA500, teal);">
                    <form class="form-horizontal" role="form" method="POST" action="{{ url('/login') }}">
                        {{ csrf_field() }}

                        <div class="form-group{{ $errors->has('username') ? ' has-error' : '' }}">
                            <label for="email" class="col-md-4 control-label" style="color:teal;">NIM</label>

                            <div class="col-md-6">
                                <input id="username" type="text" class="form-control" name="username" value="{{ old('username') }}" autofocus>

                                @if ($errors->has('username'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('username') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                            <label for="password" class="col-md-4 control-label" style="color:teal;">Password</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control" name="password" >

                                @if ($errors->has('password'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <!-- <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="remember"> Remember Me
                                    </label>
                                </div>
                            </div>
                        </div>
 -->
                        <div class="form-group">
                            <div class="col-md-8 col-md-offset-4">
                                <button type="submit" class="btn btn-primary" style="color:teal;">
                                    Login
                                </button>

                               <!--  <a class="btn btn-link" href="{{ url('/password/reset') }}">
                                    Forgot Your Password?
                                </a> -->
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
            
        </div>
    </div>
@endsection

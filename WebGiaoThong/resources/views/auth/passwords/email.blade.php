@extends('layouts.nav')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8" style="padding-left: 340px">
            <div class="card">
                <div class="card-header">
                    <div style="text-align: center; padding-bottom: 20px; color:darkred">
                        <br><h2><strong>{{ __('RESET PASSWORD') }}</strong></h2></br>
                    </div>
                </div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <form method="POST" action="{{ route('password.email') }}">
                        @csrf

                        <div class="form-group row" style="margin-bottom: 30px">
                            <label for="email" class="col-md-4 col-form-label text-md-right" style="margin-top: 10px">
                                {{ __('E-Mail Address') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required>

                                @if ($errors->has('email'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row mb-0" style="margin-bottom: 40px; margin-top: 60px">
                            <div class="col-md-6 offset-md-4" style="margin-left: 70px">
                                <button type="submit" class="btn btn-primary" style="width: 250px; height: 50px">
                                    <strong>{{ __('Send Password Reset Link') }}</strong>
                                </button>
                            </div>
                        </div>

                        <div class="form-group row" style="margin-bottom: 30px">
                            <a class="btn btn-link" style="margin-left: 80px" href="/WebGiaoThong/public/login">
                                <u><strong>{{ __('Login Now If You Have An Account!') }}</strong></u>
                            </a>
                        </div>

                        <div class="form-group row" style="margin-bottom: 30px">
                            <a class="btn btn-link" style="margin-left:150px" href="/WebGiaoThong/public/register">
                                <u><strong>{{ __('Register Now !') }}</strong></u>
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

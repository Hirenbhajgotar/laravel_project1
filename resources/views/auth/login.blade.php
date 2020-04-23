@extends('layout.layout')

@section('login_form')
<div class="jumbotron jumbotron-fluid" style="background: transparent;">
    <div class="container">
        <div class="row">
            <div class="col-md-8 offset-md-2">
                @if($msg = Session::get('warning'))
                <div class="alert alert-warning alert-dismissible fade show" role="alert">
                    <strong>Sorry!</strong> {{$msg}}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                @endif

                <h1 class="text-muted">Login</h1>
                <br>
                <form action="/login" method="post">
                    @csrf
                    <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
                        <div class="col-sm-10">
                            <input type="email" name="email" value="{{ old('email') }}" class="@error('email') is-invalid @enderror form-control" id="email" placeholder="jonDoe@gmail.com">
                            @error('email')
                            <p class="text-danger">{{ $message }}</p>
                            @enderror
                            @if($msg = Session::get('emailError'))
                            <p class="text-danger">{{ $msg }}</p>
                            @endif
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
                        <div class="col-sm-10">
                            <input type="password" name="password" placeholder="*********" class="@error('password') is-invalid @enderror form-control" id="password">
                            @error('password')
                            <p class="text-danger">{{ $message }}</p>
                            @enderror
                            @if($msg = Session::get('passError'))
                            <p class="text-danger">{{ $msg }}</p>
                            @endif
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-10 offset-2">
                            <button type="submit" class="btn btn-primary">Login</button>
                            Not Register yet? <a href="/register">Sign up</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection()
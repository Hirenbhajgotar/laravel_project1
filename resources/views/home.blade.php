@extends('layout.layout')
@section('home-active', 'active')

@section('home_content')
<div class="container" style="height: 60vh; margin-top: 5%;">
    <div class="mt-1 mb-1">
        @if($message = Session::get('success'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            {{$message}}
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        @endif
    </div>
    <!-- <h2>Wellcome</h2> -->
    <div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <img src="{{ asset('assets/images/undraw_welcome_cats_thqn.png') }}" class="img-fluid rounded">
            </div>
        </div>
    </div>
</div>
@endsection()
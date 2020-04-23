@extends('layout.layout')
@section('blog-active', 'active')

@section('view_blog')

<div class="container mt4">
    <div class="row">
        <div class="col-md-8 offset-md-2">
            <img src="{{ asset('/storage/assets/images/'.$blog[0]->image) }}" class="img-fluid rounded">
        </div>
    </div>
    <div class="row">
        <div class="col-md-8 offset-md-2">
            <h3 class="font-weight-bold"> {{$blog[0]->heading}} </h3>
            <p><small class=" font-weight-normal"> {{date('d M Y', strtotime($blog[0]->updated_at)). " By ". $blog[0]->name }} </small></p>
            <p> {{$blog[0]->blog_content}} </p>
        </div>
    </div>
</div>
@endsection()
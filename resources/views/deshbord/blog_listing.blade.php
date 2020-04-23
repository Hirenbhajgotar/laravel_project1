@extends('layout.layout')
@section('myblog-active', 'active')
@section('my_blog_lisint')
<div class="container mt-1">
    <!-- Show messages -->
    @if($msg = Session::get('success'))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        <strong>Hoorey</strong> {{$msg}}
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
    @elseif ($msg = Session::get('error'))
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        <strong>Sorry!</strong> {{$msg}}
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
    @endif
    <div class="card mb-4">
        <div class="card-body">
            <a href="/create-blog" class="btn btn-secondary">Create Blog</a>
        </div>
    </div>

    @if($blogs->total())
    @foreach($blogs as $blog)
    <div class="media">
        <img src="{{ asset('/storage/assets/images/'.$blog->image) }}" class="mr-3 img-fluid rounded align-self-start w-25" alt="...">
        <div class="media-body">
            <h5 class="mt-0">{{ $blog['heading'] }}</h5>
            {{$blog['blog_content']}}
            <br>
            <small class="text-muted">{{date("d M Y", strtotime($blog->updated_at))}}</small>
            <div class="btn-toolbar mt-4" role="toolbar" aria-label="Toolbar with button groups">
                <div class="btn-group mr-2" role="group" aria-label="Second group">
                    <a href="/view-blog/{{ $blog->id }}" class="btn btn-outline-primary">View</a>
                </div>
                <div class="btn-group mr-2" role="group" aria-label="First group">
                    <a href="/edit-blog/{{ $blog->id }}" class="btn btn-outline-warning">edit</a>
                </div>
                <div class="btn-group mr-2" role="group" aria-label="Second group">
                    <a href="/delete-blog/{{ $blog->id }}" class="btn btn-outline-danger">delete</a>
                </div>
            </div>
        </div>
    </div>
    <hr>
    @endforeach
    {{ $blogs->links() }}
    @else
    <div class="row">
        <div class="col-md-6 offset-md-3" style="position: relative;">
            <img src="{{ asset('assets/images/undraw_no_data_qbuo.png') }}" class="img-fluid rounded">
            <div>
                <p style="position: absolute;top: 48%;left: 41%;">Blogs not available</p>
            </div>
        </div>
    </div>
    @endif
</div>
@endsection()
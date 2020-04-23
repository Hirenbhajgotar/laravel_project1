@extends("layout.layout")
@section('blog-active', 'active')
@section('blogs_listing')


<div class="container mt-5">
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

            </div>
        </div>
    </div>
    <hr>
    @endforeach
    {{ $blogs->links() }}
</div>
@endsection()
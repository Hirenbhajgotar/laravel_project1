@extends("layout.layout")

@section('blog-active', 'active')
@section('edit_blog')
<div class="container">

    <div class="row justify-blog_content-start">
        <div class="col-6 offset-md-3">
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

            <!-- @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
            @endif -->

            <h3 class="text-muted">Create Blog</h3>
            <hr>
            <form method="post" action="/edit-blog/{{ $data->id }}" enctype="multipart/form-data">
                @csrf
                <input type="hidden" name="users_id" value="{{ Session::get('user_id') }}">
                <div class="form-group">
                    <label for="exampleInputEmail1">Header</label>
                    <input type="text" name="heading" value="{{ old('heading', $data->heading) }}" class="@error('heading') is-invalid @enderror form-control" id="heading" placeholder="Enter heading" aria-describedby="emailHelp">
                    @error('heading')
                    <small id="emailHelp" class="form-text text-danger">{{ $message }}</small>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="image">Image</label>
                    <div class="custom-file">
                        <input type="file" value="{{ old('image') }}" class="custom-file-input @error('image') is-invalid @enderror" name="image" id="image">
                        <label class="custom-file-label " for="customFile">Choose file</label>
                        @error('image')
                        <small id="emailHelp" class="form-text text-danger">{{ $message }}</small>
                        @enderror
                    </div>
                </div>
                <div class="form-group">
                    <label for="blog_content">Description</label>
                    <textarea class="form-control @error('blog_content') is-invalid @enderror" name="blog_content" id="blog_content" placeholder="Write your blog_content here.." rows="3">{{ old('blog_content', $data->blog_content) }}</textarea>
                    @error('blog_content')
                    <small id="emailHelp" class="form-text text-danger">{{ $message }}</small>
                    @enderror
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>

</div>
@endsection()
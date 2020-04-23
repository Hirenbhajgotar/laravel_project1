@extends('layout.layout')
@section('myblog-active', 'active')

@section('edit_profile')
<div class="container mt-3">
    <div class="row">
        <div class="col-md-4">
            @php
            $data = [
            'name' => $user->name,
            'created_at' => $user->created_at
            ];
            @endphp
            @include('deshbord.left_menu', $data)
        </div>
        <div class="col-md-8">
            <div class="card">
                <div class="card-header text-dark text-bold bg-light">
                    <h4>Edit Profile</h4>
                </div>
                <div class="card-body">
                    @if($msg = Session::get('success'))
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <strong>Success.</strong> {{$msg}}
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    @endif
                    <form action="/update-profile/{{ Session::get('user_id') }}" method="post">
                        @csrf
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" class="form-control" name="name" value="{{ old('name', $user->name) }}" id="name" placeholder="Jon Doe" aria-describedby="emailHelp">
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" name="email" id="email" value=" {{ old('email', $user->email) }} " placeholder="JoeDoe@email.com">
                        </div>
                        <button type="submit" class="btn btn-primary">update</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
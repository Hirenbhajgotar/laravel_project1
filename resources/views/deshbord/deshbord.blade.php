@extends('layout.layout')
@section('myblog-active', 'active')
@section('deshbord-listing')
<div class="container mt-3">
    <div class="row">
        <div class="col-md-4">
            <?php
            $data = [
                'name'       => $user->name,
                'created_at' => $user->created_at,
            ];
            ?>
            @include('deshbord.left_menu', $data)
        </div>
        <div class="col-md-8">
            <div class="card">
                <div class="card-header text-white bg-warning">
                    My Profile
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="card ">
                                <a href="/my-blogs/{{ Session::get('user_id') }}" class="text-dark">
                                    <img src=" {{ asset('assets/images/undraw_image_post_24iy.png') }} " class="card-img" alt="...">
                                    <div class="card-img-overlay">
                                        <h2 class="card-title text-center">Blogs</h2>
                                        <!-- <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p> -->
                                        <h3 class="card-text text-center">{{ $total_blogs }}</h3>
                                    </div>
                                </a>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="card ">
                                <a href="" class="text-dark">
                                    <img src=" {{ asset('assets/images/undraw_cloud_files_wmo8.png') }} " class="card-img" alt="...">
                                    <div class="card-img-overlay">
                                        <h2 class="card-title text-center">Downloads</h2>
                                        <h3 class="card-text text-center">215</h3>
                                    </div>
                                </a>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="card ">
                                <a href="" class="text-dark">
                                    <img src=" {{ asset('assets/images/undraw_decorative_friends_q2np.png') }} " class="card-img" alt="...">
                                    <div class="card-img-overlay">
                                        <h2 class="card-title text-center">Total visit</h2>
                                        <h3 class="card-text text-center">215</h3>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection()
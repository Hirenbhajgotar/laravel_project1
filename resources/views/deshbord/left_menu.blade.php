<div class="card shadow-sm">
    <img src="{{ asset('assets/images/undraw_male_avatar_323b.png') }}" class="card-img-top" alt="...">
    <div class="card-body">
        <h3>
            {{ ucfirst($data['name']) }}
        </h3>
        <p><small>Join at - {{date("d M Y", strtotime($data['created_at']))}}</small></p>
    </div>
</div>
<div class="card mt-4">
    <div class="card-body">
        <div class="list-group list-group-flush">
            <a href="/deshbord" class="list-group-item list-group-item-action">Deshbord</a>
            <a href="/edit-profile/{{Session::get('user_id')}}" class="list-group-item list-group-item-action">Edit
                Profile</a>
            <a href="/my-blogs/{{ Session::get('user_id') }}" class="list-group-item list-group-item-action ">Blogs</a>
            <a href="/logout" class="list-group-item list-group-item-action ">Logout</a>
        </div>
    </div>
</div>
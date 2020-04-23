<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;
use App\Blogs;
use Session;
class BlogController extends Controller
{
    // listing blog
    public function index()
    {
        $data['blogs'] = Blogs::orderByDesc('id')->paginate(7);
        return view("blogs.listing", $data);
    }

    public function show($id)
    {
        $data['blog'] = DB::table('blog')
            ->leftJoin('users', 'blog.users_id', '=', 'users.id')
            ->select('blog.*', 'users.name', 'users.email')
            ->where('blog.id', '=', $id)
            ->get();
        return view("blogs.show_blog", $data);
    }
    
}

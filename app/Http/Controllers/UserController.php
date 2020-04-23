<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;
use App\Blogs;
use App\users;
use Session;

class UserController extends Controller
{
    public function index()
    {
        $data['user'] = users::find(Session()->get('user_id'));
        $data['total_blogs'] = Blogs::where('users_id', Session()->get('user_id'))->count();
        return view('deshbord.deshbord', $data);
    }

    // create blog view
    public function create_blog()
    {
        return view("deshbord.create_blog");
    }

    // create blog
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'heading'      => 'required',
            'image'        => "required|mimes:jpg,png,jpeg,JPG,PNG,JPEG",
            'blog_content' => 'required'
        ]);
        if ($validator->fails()) {
            return redirect("/create-blog")->withErrors($validator)->withInput();
        } else {
            // dd($request->file('image'));
            $fullImgName = $request->image->getClientOriginalName();
            $fileName    = pathinfo($fullImgName, PATHINFO_FILENAME);
            $fileExt     = $request->image->getClientOriginalExtension();
            $image       = $fileName . '-' . time() . '.' . $fileExt;

            $request->image->storeAs('assets/images', $image, 'public');

            $replace = ['image' => $image];
            $data    = array_replace($request->all(), $replace);

            $res = Blogs::create($data);
            if ($res) {
                return redirect()->back()->with('success', 'Blog created');
            } else {
                return redirect()->back()->with('error', 'Something went wrong');
            }
        }
    }
    
    public function show($id)
    {
        $data['blogs'] = users::find($id)->getAllBlogs()->latest()->paginate(5);
        // dd($data['blogs']);
        return view('deshbord.blog_listing', $data);
    }

    // edit blog view
    public function edit($id)
    {
        $data['data'] = Blogs::find($id);
        return view('deshbord.edit_blog', $data);
    }

    // edit blog
    public function update(Request $request, $id)
    {
        Validator::make($request->all(), [
            'heading'      => 'required',
            'image'        => "required|mimes:jpg,png,jpeg,JPG,PNG,JPEG",
            'blog_content' => 'required'
        ])->validate();

        $res         = Blogs::find($id);
        $fullImgName = $request->image->getClientOriginalName();
        $fileName    = pathinfo($fullImgName, PATHINFO_FILENAME);
        $fileExt     = $request->image->getClientOriginalExtension();
        $image       = $fileName . '-' . time() . '.' . $fileExt;

        if ($res->image) {
            Storage::delete("/public/assets/images/" . $res->image);
        }
        $request->image->storeAs('assets/images', $image, 'public');

        $res->heading      = $request->input('heading');
        $res->image        = $image;
        $res->blog_content = $request->input('blog_content');
        $res->save();
        $request->session()->flash('success', 'Blog has been updated!');
        $user_id = Session()->get('user_id');
        return redirect('/my-blogs/'.$user_id);
    }

    // delete blog
    public function destroy($id)
    {
        $blog = Blogs::find($id);
        if ($blog->image) {
            Storage::delete("/public/assets/image/" . $blog->image);
        }
        $res = $blog->delete();
        if ($res) {
            return redirect()->back()->with('success', 'blog has bee deleted!');
        } else {
            return redirect()->back()->with('error', 'Something went wrong try again latter!');
        }
    }

    public function edit_profile($id)
    {
        $data['user'] = users::find($id);
        // dd($data['user']->created_at);
        return view('deshbord.edit_profile', $data);
    }

    public function update_profile(Request $request, $id)
    {
        Validator::make($request->all(), [
            'name'  => 'required',
            'email' => 'required|email'
        ])->validate();

        $res = users::find($id);
        $res->name = $request->input('name');
        $res->email = $request->input('email');
        $res->save();

        return redirect('/edit-profile/'. Session()->get('user_id'))->with('success', 'Your profile updated successfully');

    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Users;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function index()
    {
        return view('auth.login');
    }

    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email'    => 'required|email',
            'password' => 'required'
        ]);
        if($validator->fails()) {
            return redirect('/login')->withErrors($validator)->withInput();
        } else {
            $user = users::where('email',$request->email)->first();
            if(!$user) {
                $validator->errors()->add('email', 'Please enter valid email');
                return redirect('/login')->withErrors($validator)->withInput();
            } if (!Hash::check($request->password, $user['password'])) {
                $validator->errors()->add('password', 'Please enter correct Password');
                return redirect('/login')->withErrors($validator)->withInput();
            }
            $sesData = [
                'login' => 'success',
                'user_id'  => $user['id'],
                'user_name'  => $user['name'],
                'user_email' => $user['email'],
            ];
            $request->session()->put($sesData);
            return redirect('/')->with('success', 'Loged in successfull');
        }
    }

    public function logout(Request $request)
    {
        $request->session()->flush();
        return redirect('/login');
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name'     => 'required',
            'email'    => 'required|email|unique:users,email',
            'password' => 'required'
        ]);

        if($validator->fails()) {
            return redirect('/register')->withErrors($validator);
        } else {
            $data = [
                'name'       => $request->name,
                'email'      => $request->email,
                'password'   => Hash::make($request->password),
                'created_at' => date('Y-m-d h-i-s'),
                'updated_at' => date('Y-m-d h-i-s')
            ];
            
            $res = users::create($data);
            if($res) {
                $data = users::select('name', 'email')->where('id', $res->id)->get();
                $ses = [
                    'login' => 'success',
                    'user_id'  => $data[0]['id'],
                    'user_name'  => $data[0]['name'],
                    'user_email' => $data[0]['email']
                ];
                $request->session()->put($ses);
                return redirect('/')->with('success', 'You are logedin');
            } else {
                return redirect('/register')->with('error', 'Something went wrong try again later!');
            }
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}

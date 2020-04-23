<?php

namespace App\Http\Middleware;

use Closure;

class CustomeAuth
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(! session()->has('login')) {
            return redirect('/login')->with('warning', 'You have login first!');
        }
        return $next($request);
    }
}

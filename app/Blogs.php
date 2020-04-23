<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Blogs extends Model
{
    protected $table = 'blog';
    protected $fillable = ['heading', 'image', 'blog_content', 'users_id'];

}

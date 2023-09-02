<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DynamicModel extends Model
{
    public $incrementing = false;

    protected $guarded = [];
}

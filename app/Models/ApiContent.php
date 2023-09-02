<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ApiContent extends Model
{
    use HasFactory;
    public $timestamps = false;
    Protected $fillable=['request_types','url','header','params','authorization_types','content_type','body'];
    protected $casts = [
        'body' => 'json',
        'header'=>'json'
    ];
    public function getRequestTypesAttribute($value)
    {
        return $value=="POST"?'GET':'POST';
    }

}
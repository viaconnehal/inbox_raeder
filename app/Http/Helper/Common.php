<?php

namespace App\Http\Helper;

use App\Models\QueryLog;
use Illuminate\Support\Str;


class Common
{
    public static function saveQuery($querys):void
    {
        $date=[];
        foreach($querys as $query){
            $sqlquery = str_replace(array('?'), array('\'%s\''), $query['query']);
            $sqlquery = vsprintf($sqlquery, $query['bindings']);

            $date[]=[
                'id' => str::uuid(),
                'user_id' => 1,
                'query' => $sqlquery,
                'created_at' => now(),
                'updated_at' => now(),
            ];
        }
        QueryLog::insert($date);
    }
}

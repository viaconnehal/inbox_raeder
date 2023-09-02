<?php

namespace App\Http\Controllers;

use App\Http\Traits\Orm;

class OrmController extends Controller
{
    use Orm;
    public function index()
    {

    }

    public function getTableList(){
        //return self::tableName();
        //return self::fieldName("users");
        //return self::createTable("projects",[]);
        //return self::createTableRelation("projects",[]);
        //return self::alterTable("projects",[]);
    }
}

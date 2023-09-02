<?php
namespace App\Http\Traits;
use App\Http\Helper\Common;
use App\Models\DynamicModel;
use Doctrine\DBAL\Exception;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Query\Builder;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

trait Orm
{
    public static function tableName()
    {

        $date = DB::getDoctrineSchemaManager()->listTableNames();
        return $date;
    }

    /**
     * @throws Exception
     */
    public static function fieldName($table)
    {
        $date = Schema::getColumnListing($table);
        return($date);
    }

    public static function createTable($table_name, $fields = []):string
    {
        $table_name = "projects";
        $fields = [
            ['name' => 'id', 'type' => 'id'],
            ['name' => 'name', 'type' => 'string', 'nullable' => 'yes', 'length'=>'200', 'default'=>'',"key"=>"",'increment'=>'yes'],
            //['name' => 'user_id', 'type' => 'unsignedBigInteger'],
            ['name' => 'description', 'type' => 'text'],
            ['name' => 'created_by', 'type' => 'unsignedBigInteger'],
            ['name' => 'status', 'type' => 'enum', 'nullable' => 'yes', 'length'=>'active,inactive','default'=>'Null'],
            ['name' => 'created_at', 'type' => 'dateTime', 'useCurrent'=>'yes'],
            ['name' => 'updated_at', 'type' => 'dateTime', 'useCurrent'=>'yes','useCurrentOnUpdate'=>'yes'],

        ];

        DB::connection()->enableQueryLog();
        if (!Schema::hasTable($table_name)) {
            Schema::create($table_name, function (Blueprint $table) use ($fields, $table_name) {

                if (count($fields) > 0)
                {
                    foreach ($fields as $field)
                    {
                        $count =0;
                        if($field['type']=="enum")
                        {
                            if($count==0 && !empty($field['default']) && $field['nullable']=='yes')
                            {
                                $length= explode(",",$field['length']);
                                $table->{$field['type']}($field['name'],$length)->default($field['default'])->nullable();
                                $count++;
                            }
                            if($count==0 && $field['nullable']=='yes')
                            {
                                $length= explode(",",$field['length']);
                                $table->{$field['type']}($field['name'],$length)->nullable();
                                $count++;
                            }
                            if($count==0 && !empty($field['default']))
                            {
                                $length= explode(",",$field['length']);
                                $table->{$field['type']}($field['name'],$length)->default($field['default']);
                                $count++;
                            }
                            if($count==0 && !empty($field['default'])) {
                                $length = explode(",", $field['length']);
                                $table->{$field['type']}($field['name'], $length);
                                $count++;
                            }
                        }

                        if($field['type']=="timestamp" && $count==0)
                        {
                            if($count==0 && $field['useCurrent']=="yes" && $field['useCurrentOnUpdate']=="yes" && $field['nullable']=='yes' && !empty($field['default']))
                            {
                                $table->{$field['type']}($field['name'])->useCurrent()->useCurrentOnUpdate()->default($field['default'])->nullable();
                                $count++;
                            }
                            if($count==0 && $field['useCurrent']=="yes" && $field['useCurrentOnUpdate']=="yes" && !empty($field['default']))
                            {
                                $table->{$field['type']}($field['name'])->useCurrent()->useCurrentOnUpdate()->default($field['default']);
                                $count++;
                            }
                            if($count==0 && $field['useCurrent']=="yes" && $field['useCurrentOnUpdate']=="yes")
                            {
                                $table->{$field['type']}($field['name'])->useCurrent()->useCurrentOnUpdate();
                                $count++;
                            }
                            if($count==0 && $field['useCurrent']=="yes" && $field['nullable']=='yes' && !empty($field['default'])){
                                $table->{$field['type']}($field['name'])->useCurrent()->default($field['default'])->nullable();
                                $count++;
                            }
                            if($count==0 && $field['useCurrent']=="yes" && $field['nullable']=='yes'){
                                $table->{$field['type']}($field['name'])->useCurrent()->nullable();
                                $count++;
                            }
                            if($count==0 && $field['useCurrent']=="yes" && !empty($field['default'])){
                                $table->{$field['type']}($field['name'])->useCurrent()->default($field['default']);
                                $count++;
                            }
                            if($count==0 && $field['useCurrent']=="yes"){
                                $table->{$field['type']}($field['name'])->useCurrent();
                                $count++;
                            }
                            if($count==0 && $field['useCurrentOnUpdate']=="yes" && $field['nullable']=='yes' && !empty($field['default'])){
                                $table->{$field['type']}($field['name'])->useCurrentOnUpdate()->default($field['default'])->nullable();
                                $count++;
                            }
                            if($count==0 && $field['useCurrentOnUpdate']=="yes" && $field['nullable']=='yes'){
                                $table->{$field['type']}($field['name'])->useCurrentOnUpdate()->nullable();
                                $count++;
                            }
                            if($count==0 && $field['useCurrentOnUpdate']=="yes" && !empty($field['default'])){
                                $table->{$field['type']}($field['name'])->useCurrentOnUpdate()->default($field['default']);
                                $count++;
                            }
                            if($count==0 && $field['useCurrentOnUpdate']=="yes"){
                                $table->{$field['type']}($field['name'])->useCurrentOnUpdate();
                                $count++;
                            }
                            if($count==0)
                            {
                                $table->{$field['type']}($field['name']);
                                $count++;
                            }

                        }


                        if($count==0 && !empty($field['length']) && $field['increment']=='yes'){
                            $table->{$field['type']}($field['name'],$field['length'])->autoIncrement();
                           $count++;
                        }else if($count==0 && !empty($field['length']) && $field['nullable']=='yes' && !empty($field['default'])){
                            $table->{$field['type']}($field['name'],$field['length'])->nullable()->default($field['default']);
                           $count++;
                        }else if($count==0 && !empty($field['length']) && !empty($field['default'])){
                           $table->{$field['type']}($field['name'],$field['length'])->default($field['default']);
                           $count++;
                        }else if($count==0 && !empty($field['length']) && $field['nullable']=='yes' ){
                           $table->{$field['type']}($field['name'],$field['length'])->nullable();
                           $count++;
                        }else if($count==0 && !empty($field['length'])){
                            $table->{$field['type']}($field['name'],$field['length']);
                           $count++;
                        }else if($count==0){
                            $table->{$field['type']}($field['name']);
                            $count++;
                        }

                        if(!empty($field['key']) && $count==1 ){
                            $table->{$field['key']}($field['name']);
                        }

                    }
                }
                //$table->timestamps();
            });
            $queries = DB::getQueryLog();
            Common::saveQuery($queries);
            return 'created';
        }

        return 'exist';
    }

    public static function createTableRelation($table_name, $fields = []):string
    {
        $table_name = "projects";
        $fields = [
            //['field1' => 'user_id', 'table' => 'users', 'field2' => 'id', 'onUpdate'=>'cascade', 'onDelete'=>'cascade'],
            ['field1' => 'created_by', 'table' => 'users', 'field2' => 'id', 'onUpdate'=>'cascade', 'onDelete'=>'cascade'],
        ];

        DB::connection()->enableQueryLog();
        if (Schema::hasTable($table_name)) {
            Schema::table($table_name, function (Blueprint $table) use ($fields, $table_name) {

                if (count($fields) > 0) {
                    foreach ($fields as $field) {
                        $table->foreign($field['field1'])->references($field['field2'])->on($field['table'])->onDelete($field['onDelete'])->onUpdate($field['onUpdate']);
                        //$table->foreign('user_id')->references('id')->on('users')->onDelete('cascade')->onUpdate('cascade');
                    }
                }
            });
            $queries = DB::getQueryLog();
            Common::saveQuery($queries);
            return 'created';
        }
        return "table doesnot exist";

    }

    public static function alterTable($table_name, $fields = []):string
    {
        $table_name = "projects";
        $fields = [
            //integer type length must be blank
            ['name' => 'field', 'type' => 'integer', 'length'=>'', 'increment'=>'', 'nullable' => '',  'default'=>'', "index"=>"", 'unsigned'=>'', 'after'=>'name'],
        ];
        Schema::table($table_name, function (Blueprint $table) use ($fields, $table_name){
            if (count($fields) > 0) {
                $cnt = 0;
                foreach ($fields as $field) {

                    if($field['type']=="enum"){
                        $length= explode(",",$field['length']);
                        $table->{$field['type']}($field['name'],$length);
                    }else if(!empty($field['length'])){
                        $table->{$field['type']}($field['name'],$field['length']);
                    }else{
                        $table->{$field['type']}($field['name']);
                    }

                    //increment
                    if($field['increment'] == 'yes') {
                        $table->getColumns()[$cnt]->autoIncrement();
                    }
                    //nullable
                    if($field['nullable'] == 'yes') {
                        $table->getColumns()[$cnt]->nullable();
                    }
                    //unsigned
                    if($field['unsigned'] == 'yes') {
                        $table->getColumns()[$cnt]->unsigned();
                    }
                    //default
                    if(!empty($field['default'])) {
                        $table->getColumns()[$cnt]->default($field['default']);
                    }
                    //after field
                    if(!empty($field['after'])) {
                        $table->getColumns()[$cnt]->after($field['after']);
                    }

                    if(!empty($field['index'])) {
                        switch ($field['index']) {
                            case 'unique':
                                $table->getColumns()[$cnt]->unique();
                                break;
                            case 'index':
                                $table->getColumns()[$cnt]->index();
                                break;
                            case 'primary':
                                $table->getColumns()[$cnt]->primary();
                                break;
                        }
                    }
                    $cnt++;

                }
            }

        });
        return 'completed';
    }

    public static function createModel($relation):Model
    {
        $relation =

                //['table1'=>'projects', 'table1key'=>'id', 'relation_type'=>'self'];
                //['table1'=>'projects', 'table1key'=>'id', 'table2'=>'tasks', 'table2key'=>'project_id','relation_type'=>'has-one'];
                //['table1'=>'projects', 'table1key'=>'id', 'table2'=>'tasks', 'table2key'=>'project_id','relation_type'=>'has-many'];
                //['table1'=>'projects', 'table1key'=>'id', 'table2'=>'tasks', 'table2key'=>'project_id','relation_type'=>'belong-to'];
                ['table1'=>'projects', 'table1key'=>'id', 'table2'=>'users', 'table2key'=>'id', 'intermediateTable'=>'project_users', 'intermediateTable1MapKey'=>'project_id', 'intermediateTable2MapKey'=>'user_id', 'relation_type'=>'belong-to-many'];


        switch($relation['relation_type']){

            case('has-one'):
                $dynamicModel = DynamicModel::create([
                    "model_name" => $relation['table1']."_".$relation['table2'],
                    "table1" => $relation['table1'],
                    "table1key" => $relation['table1key'],
                    "table2" => $relation['table2key'],
                    "relation_type" => "has-one"
                ]);
                break;

            case('has-many'):
                $dynamicModel = DynamicModel::create([
                    "model_name" => $relation['table1']."_".$relation['table2'],
                    "table1" => $relation['table1'],
                    "table1key" => $relation['table1key'],
                    "table2" => $relation['table2key'],
                    "relation_type" => "has-many"
                ]);
                break;

            case('belong-to'):
                $dynamicModel = DynamicModel::create([
                    "model_name" => $relation['table1']."_".$relation['table2'],
                    "table1" => $relation['table1'],
                    "table1key" => $relation['table1key'],
                    "table2" => $relation['table2key'],
                    "relation_type" => "belong-to"
                ]);
                break;

            case('belong-to-many'):
                $dynamicModel = DynamicModel::create([
                    "model_name" => $relation['table1']."_".$relation['table2'],
                    "table1" => $relation['table1'],
                    "table1key" => $relation['table1key'],
                    "table2" => $relation['table2'],
                    "table2key" => $relation['table2key'],
                    "intermediate_table" => $relation['intermediateTable'],
                    "intermediate_table1_map_key" => $relation['intermediateTable1MapKey'],
                    "intermediate_table2_map_key" => $relation['intermediateTable2MapKey'],
                    "relation_type" => "belong-to-many"
                ]);
                break;

            default:
                $dynamicModel = DynamicModel::create([
                    "model_name" => $relation['table1'],
                    "table1" => $relation['table1'],
                    "table1key" => $relation['table1key'],
                    "relation_type" => "self"
                ]);
        }

        return $dynamicModel;
    }

    public static function listModel($relation):Collection
    {
        $models = DynamicModel::all();
        return $models;
    }

    public static function getmodelTables($model):array
    {
        $model = DynamicModel::where('model_name','=',$model)->get()->first();
        $table =[];
        switch($model->relation_type){

            case ('has-many'):
            case ('belong-to'):
            case('has-one'):
                $table[0]['table'] = $model->table1;
                $table[0]['field'] = self::fieldName($model->table1);
                $table[1]['table'] = $model->table2;
                $table[1]['field'] = self::fieldName($model->table2);
                break;

            case ('belong-to-many'):
                $table[0]['table'] = $model->table1;
                $table[0]['field'] = self::fieldName($model->table1);
                $table[1]['table'] = $model->table2;
                $table[1]['field'] = self::fieldName($model->table2);
                $table[2]['table'] = $model->intermediate_table;
                $table[2]['field'] = self::fieldName($model->intermediate_table);
                break;

            default:
                $table[0]['table'] = $model->table1;
                $table[0]['field'] = self::fieldName($model->table1);
        }
        return $table;
    }

    public static function getModelData($data)
    {

        //has-one and has-many
        $data =  [
            //"model" => "projects",
            "model" => "projects_tasks",
            "fieldlist" => [
                [
                    "table" => "projects",
                    "fields" => [
                        "name",
                        "description"
                    ]
                ],
                [
                    "table" => "tasks",
                    "fields" => [
                        "task_name",
                        "description"
                    ]
                ]
            ],
            "condition"=>[
                [
                    "table"=>"projects",
                    "type" => "orwhere",
                    "field" => "name",
                    "operator" => "like",
                    "value" => "test%"
                ],
//                [
//                    "table"=>"project",
//                    "type" => "orwhere",
//                    "field" => "",
//                    "operator" => "",
//                    "value" => "",
//                    "cascade"=>[
//                        [
//                            "table"=>"project",
//                            "type" => "where",
//                            "field" => "description",
//                            "operator" => "like",
//                            "value" => "dummy%"
//                        ],
//                        [
//                            "table"=>"project",
//                            "type" => "where",
//                            "field" => "status",
//                            "operator" => "=",
//                            "value" => "active"
//                        ]
//                    ]
//                ]
            ],
            "orderby"=>[
                "table"=>"projects",
                "field"=>"name",
                "order_type"=>"ASC"
            ],
            "groupby"=>[
                "table"=>"projects",
                "field"=>"name",
                "order_type"=>"ASC"
            ]
        ];

        $model = DynamicModel::where('model_name', '=', $data["model"])->get()->first();
        $record=[];

        if($model->relation_type=='self')
        {
            $record['table'] = $model->table1;
            $fieldlist = implode(',' ,$data["fieldlist"][0]["fields"]);

            $query = DB::table($model->table1)->selectRaw($fieldlist);
            $query = self::addQueryCondition($query, $model->table1, $data["condition"], $data['orderby'], $data["groupby"]);
            $record['item'][] = $query->get();
            return $record;
        }



        if($model->relation_type=='has-one')
        {
            $record['table'] = $model->table1;
            foreach ($data["fieldlist"] as $value){
                if($value['table']==$model->table1){
                    $fieldlist = implode(',',$value["fields"]);
                }
            }
            $query = DB::table($model->table1)->selectRaw($fieldlist);
            $query = self::addQueryCondition($query, $model->table1, $data["condition"], $data['orderby'], $data["groupby"]);
            $data = $query->get()->toarray();

            foreach($data as $var){

            }
            //dd($data);
        }

        return $record;
    }

    public static function addQueryCondition($query, $table, $condition, $orderby, $groupby)
    {
        /*
        "condition"=>[
                [
                    "table"=>"project",
                    "type" => "orwhere",
                    "field" => "name",
                    "operator" => "like",
                    "value" => "test%"
                ]
                [
                    "table"=>"project",
                    "type" => "orwhere",
                    "field" => "",
                    "operator" => "",
                    "value" => ""
                    "cascade"=>[
                            [
                                "table"=>"project",
                                "type" => "where",
                                "field" => "name",
                                "operator" => "like",
                                "value" => "test%"
                            ],
                            [
                                "table"=>"project",
                                "type" => "where",
                                "field" => "name",
                                "operator" => "like",
                                "value" => "test%"
                            ]
                        ]
                ]
            ],
        "orderby"=>[
            "table"=>"project",
            "field"=>"name",
            "order_type"=>"ASC"
        ],
        "groupby"=>[
            "table"=>"project",
            "field"=>"name",
            "order_type"=>"ASC"
        ]
        */

        foreach ($condition as $value){

            if($value["table"]){

                switch($value["type"])
                {
                    case('where'):
                        $query = $query->where($value["table"].".".$value["field"], $value["operator"], $value["value"]);
                        break;

                    case('orwhere'):
                        if(!empty($value["cascade"])){
                            $query = orwhere(function (Builder $q) use($value) {
                                $q=self::addQueryCondition($q,$value["table"],$value["cascade"],[],[]);
                            });
                        }else{
                            $query = $query->orwhere($value["table"].".".$value["field"],$value["operator"], $value["value"]);
                        }
                        break;
                }
            }

        }
        return $query;
    }
}

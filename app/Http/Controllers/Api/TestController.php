<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Libraries\GoogleApi;
use App\Http\Traits\Orm;
use App\Http\Traits\RolePermission;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;

class TestController extends Controller
{
    use RolePermission;
    use Orm;
    function __construct()
    {

    }

    public function createRoles(Request $request): array
    {
        return self::createRole($request);
    }

    public function createPermissions(Request $request): array
    {
        return self::createPermission($request);
    }

    public function assignRolePermissions(Request $request)
    {
        self::assignPermissionToRole($request);
    }

    public function createModels(Request $request)
    {
        self::createModel($request);
    }

    public function listModels(Request $request)
    {
        return self::listModel($request);
    }

    public function getModelTable(Request $request)
    {
        return self::getmodelTables($request->model);
    }

    public function getModelDatas(Request $request)
    {
        return self::getModelData($request->model, []);
    }

    public function gmailapitest()
    {
        $google = new GoogleApi();
        $google->test();
    }
}

<?php
namespace App\Http\Traits;
use App\Http\Helper\Common;
use Doctrine\DBAL\Exception;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Illuminate\Database\Eloquent;
trait RolePermission
{
    public static function createRole($request)
    {
        $role = [];
        if(!empty($request->guard_name)){
            $role[] = Role::create(['name' => $request->name,'guard_name'=>$request->guard_name]);
        }else{
            $role[] = Role::create(['name' => $request->name,'guard_name'=>'web']);
            $role[] = Role::create(['name' => $request->name,'guard_name'=>'api']);
        }
        return $role;
    }

    public static function createPermission($request)
    {
        $permission = [];
        foreach ($request->all() as $value){
            if(!empty($value['guard_name'])){
                $permission[] = Permission::create(['name' => $value["name"], 'guard_name'=>$value["guard_name"]]);
            }else{
                $permission[] = Permission::create(['name' => $value["name"],'guard_name'=>'web']);
                $permission[] = Permission::create(['name' => $value["name"],'guard_name'=>'api']);
            }
        }

        return $permission;
    }

    public static function assignPermissionToRole($request)
    {
        $role = Role::findOrFail($request->role);
        $role->syncPermissions($request->permission);
    }
}

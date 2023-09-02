<?php

namespace App\Services;

use App\Models\ApiContent;
use App\Models\UserDetail;
use Illuminate\Http\Client\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Request as FacadesRequest;
use Illuminate\Support\Facades\Validator;


class ApiServices
{   
    public function logRequest($request)
    {
        $pathComponents = explode('/', request()->path());
        $parts_i_want = array_slice( $pathComponents,1);
        $site_url=implode('/',$parts_i_want);
        $notallowed=['content-type','accept','authorization','user-agent','postman-token','host','accept-encoding','connection','content-length','route'];
        $auth_type = $request->header('Authorization');
        $content_type = $request->header('Content-Type');
        $jsonBody = $request->json()->all();
        $auth_type = $request->header('Authorization');
        $method = $request->method();
        $all=$request->headers->all();
        $list=array_map(fn($data)=>$data[0],$all);
        $header_resp=array_filter($list,function($key)use($notallowed){
            return !in_array($key,$notallowed);
        },ARRAY_FILTER_USE_KEY);
        ApiContent::create([
            'request_types' => $method,
            'url' =>$site_url,
            'header' =>$header_resp,
            'authorization_types' => $auth_type,
            'content_type' => $content_type,
            'body' => $jsonBody,
        ]);
    }

    public function update_details($request,$task_id){
        $notallowed=['content-type','accept','authorization','user-agent','postman-token','host','accept-encoding','connection','content-length'];
        $all=$request->headers->all();
        $list=array_map(fn($data)=>$data[0],$all);
        $header_resp=array_filter($list,function($key)use($notallowed){
            return !in_array($key,$notallowed);
        },ARRAY_FILTER_USE_KEY);
        $id=$task_id->id;
        ApiContent::where('id',$id)->update(['request_types'=>$request->method(),'header'=>$header_resp,'body'=>$request->json()->all()]);
    }
    public function delete_details($task_id){
        $id=$task_id->id;
        ApiContent::where('id',$id)->delete();
    }
    public function get_details($request){
        $url = $request->fullUrl();
        return ApiContent::where('url',$url)->first();
    }
}
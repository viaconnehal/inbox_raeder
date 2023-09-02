<?php

namespace App\Http\Controllers;

use App\Models\ApiContent;
use Illuminate\Http\Request;
use App\Services\ApiServices;
use Exception;
use Illuminate\Support\Facades\Http;
use Validator;
use Illuminate\Support\Facades\Route;

class ApiTestingController extends Controller
{
    /**
     * Handle the incoming request.
     */
    protected $requestLogger;
    protected $api_content_data;
    // protected $dt;
    public function __construct(ApiServices $requestLogger,ApiContent $api_content)
    {
        $this->requestLogger = $requestLogger;
        $this->api_content_data=$api_content;
    }
    public function handleRoute(Request $request,$list_name,$id)
    {
        return $request->isMethod('get')
        ? $this->handleGetRequest($request)
        : ($request->isMethod('post')
        ? $this->handlePostRequest($request) 
        : ($request->isMethod('put')
        ? $this->handlePutRequest($request)
        : ($request->isMethod('delete')  
        ? $this->handleDeleteRequest($request)
        : response()->json(['error' => 'Method not allowed'], 405))));
    }
    public function handleGetRequest($request)
    {
        $data_list=$this->requestLogger->get_details($request);
        return $data_list
        ? response()->json(['data' => $data_list])
        : response()->json(['message' => "Url's are not found"]);
    }
    public function handlePostRequest($request)
    { 
        try{
            $notallowed=['content-type','accept','authorization','user-agent','postman-token','host','accept-encoding','connection','content-length','route'];
            $key=$request->headers->all();
            $list=array_map(fn($data)=>$data[0],$key);
            $header_resp=array_filter($list,function($key)use($notallowed){
            return !in_array($key,$notallowed);
            },ARRAY_FILTER_USE_KEY);

            if(empty($request->json()->all())){
                return response()->json(['Error'=>"Body Can't be Empty"]);
            }
            $this->requestLogger->logRequest($request);        
            return response()->json([
                'method' =>$request->method(),
                'url' =>$request->url(),
                'authorizations' =>$request->header('Authorization'),
                'content_type'=>$request->header('Content-Type'),
                'body'=>$request->json()->all(),
                'header'=>$header_resp,       
            ]);
        }
        catch(Exception $exc){
            dd($exc->getMessage());
        }
    }
    public function handlePutRequest(Request $request)
    {
        $id=Route::current()->parameter('id');
        $task_id = ApiContent::find($id);
        if (!$task_id){
            return response()->json(['error' => 'Task not found'], 404);
        }
        else{
            $this->requestLogger->update_details($request, $task_id);
            return response()->json(['status'=>'updated','body'=>$request->json()->all()],200); 
        }
    }
    public function handleDeleteRequest(Request $request)
    {
        $id=Route::current()->parameter('id');
        $task_id = ApiContent::find($id);
        if (!$task_id){
            return response()->json(['error' => 'Task not found'], 404);
        }
        else{ 
            $this->requestLogger->delete_details($task_id);
            return response()->json(['status'=>'deleted'],200); 
        }
    }
    
}
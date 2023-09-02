<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Services\ApiServices;
use GuzzleHttp\Psr7\Request as Psr7Request;
use Illuminate\Http\Client\Request as ClientRequest;
use Illuminate\Support\Facades\Http;
use Validator;


class ApiBuilder extends Controller
{    
    protected $requestLogger;

    public function __construct(ApiServices $requestLogger)
    {
        $this->requestLogger = $requestLogger;
    }
    public function store(Request $request)
    {   
        $this->requestLogger->logRequest($request);
        return response()->json([
            'method' =>$request->method(),
            'url' =>$request->url(),
            'authorizations' =>$request->header('Authorization'),
            'content_type'=>$request->header('Content-Type'),
            'body'=>$request->json()->all(),       
        ]);

    }
}
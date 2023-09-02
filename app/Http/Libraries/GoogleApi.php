<?php

namespace App\Http\Libraries;

use Google_Client;
use Google_Service_Gmail;

class GoogleApi
{
    public function __construct(){

    }

    public function test(): void
    {
        putenv('GOOGLE_APPLICATION_CREDENTIALS='.public_path()."/".'apigmail-397706-a8bb76c7cb8f.json');
        $client = new Google_Client();
        $client->useApplicationDefaultCredentials();
        $client->setApplicationName("gmailapi");
        $client->setScopes(["https://mail.google.com/"]);
        $client->setConfig('subject', 'info@blogmanagement.io');
        $service = new Google_Service_Gmail($client);
        $response = $service->users_labels->listUsersLabels('info@blogmanagement.io');
        dd($response);
    }
}

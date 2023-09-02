<?php

namespace App\Http\Controllers;

use Exception;
use Google_Service_Gmail_Message;
use Illuminate\Http\Request;
use Google_Client;
use Google_Service_Gmail;

class GmailResponseController extends Controller
{

    public function getGmailResponse(){
        putenv('GOOGLE_APPLICATION_CREDENTIALS=' . public_path() . "/" . 'apigmail-397706-a8bb76c7cb8f.json');
        $client = new Google_Client();
        $client->useApplicationDefaultCredentials();
        $client->setApplicationName("gmailapi");
        $client->setScopes(["https://mail.google.com/"]);
        $client->setConfig('subject', 'info@blogmanagement.io');
        $service = new Google_Service_Gmail($client);
        $labels = $service->users_labels->listUsersLabels('info@blogmanagement.io');
        $inboxLabelId="";
        foreach ($labels as $label) {
            if ($label->getName() === 'INBOX') {
                $inboxLabelId = $label->getId();
                break;
            }
        }
        if($inboxLabelId !== null) {
            $results = $service->users_messages->listUsersMessages('info@blogmanagement.io', [
                'labelIds' => [$inboxLabelId],
            ]);
            foreach ($results->getMessages() as $message) {
                $message = $service->users_messages->get('info@blogmanagement.io', $message->getId());
                $subject = '';
                $date = ''; 
                $ccRecipients = [];
                $attachments = [];
                foreach ($message->getPayload()->getHeaders() as $header) {
                    if ($header->getName() === 'Subject') {
                        $subject = $header->getValue();
                        break;
                    }
                    elseif ($header->getName() === 'Date') {
                        $date = $header->getValue();
                    }
                    elseif ($header->getName() === 'Cc') {
                        // This is the CC recipient
                        $ccRecipients[] = $header->getValue();
                    } 
                }
                if ($message->getPayload()->getParts()) {
                    foreach ($message->getPayload()->getParts() as $part) {
                        $filename = $part->getFilename();
                        if (!empty($filename)) {
                            $attachmentId = $part->getBody()->getAttachmentId();     
                            // Use the attachment ID to fetch the attachment data
                            $attachment = $service->users_messages_attachments->get('info@blogmanagement.io', $message->getId(), $attachmentId);  
                            // The attachment data is base64-encoded, so decode it
                            $data = base64_decode($attachment->getData());
                            file_put_contents($filename, $data);
                            $attachments[] = $filename;
                        }
                    }
                }
                echo 'Subject: ' . $subject . '<br>';
                echo 'Date: ' . $date . '<br>'; // Display the date
                echo 'CC Recipients: ' . implode(', ', $ccRecipients) . '<br>'; 
                echo 'Attachments: ' . implode(', ', $attachments) . '<br>';
                echo 'Snippet: ' . $message->getSnippet() . '<br>';
                echo '<hr>';
            }
        } 
        else 
        {
            echo 'INBOX label not found for the user.';
        }
    }

    public function sendMail(){
        putenv('GOOGLE_APPLICATION_CREDENTIALS=' . public_path() . "/" . 'apigmail-397706-a8bb76c7cb8f.json');
        $client = new Google_Client();
        $client->useApplicationDefaultCredentials();
        $client->setApplicationName("gmailapi");
        $client->setScopes(["https://mail.google.com/"]);
        $client->setConfig('subject', 'info@blogmanagement.io');
        $service = new Google_Service_Gmail($client);
        $message = new Google_Service_Gmail_Message();
        $message->setRaw(base64_encode("To: nehal.viacon@gmail.com\r\n" .
        "Subject: For Testing \r\n" .
        "Content-Type: text/plain; charset=utf-8\r\n\r\n" .
        "Email Integration ."));
        $sendParams = [
            'userId' => 'me',
            'resource' => $message,
        ];
        try {
            $message = $service->users_messages->send('me', $message);
            echo 'Message sent successfully!';
        } 
        catch (Exception $e) {
            echo 'An error occurred: ' . $e->getMessage();
        }
    }
}
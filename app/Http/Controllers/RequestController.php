<?php

namespace App\Http\Controllers;

use App\Models\Request;
use App\Models\User;
use App\Models\Connection;
use Auth;

class RequestController extends Controller
{

    public function storeSentRequests($id)
    {
        $sentRequests = Request::create([
            'sender_id' => Auth::user()->id,
            'receiver_id' => $id,
        ]);
        // $get = new \App\Http\Controllers\HomeController();
        // return $get->getContent();
        return response()->json(['message' => 'Sent Request successfully.']);
    }
    public function getSentRequests()
    {
        $sentRequests = Request::where('sender_id', auth()->user()->id)->get();
        return view('components.request', compact('sentRequests'));
    }

    public function withdrawRequest($id)
    {
       $data = Request::find($id);
        if ($data) {
            $data->delete();
            return response()->json(['message' => 'Request withdrawn successfully.']);
        } else {
            return response()->json(['message' => 'Request not found.'], 404);
        }
    }

    public function getReceivedRequests()
    {
        $sentRequests = Request::where('receiver_id', auth()->user()->id)->get();
        return view('components.request', compact('sentRequests'));
    }

    public function acceptRequest($id)
    {
        $result = Request::find($id);
        if ($result) {
            // Create a connection between the sender and receiver
            Connection::create([
                'user1_id' => $result->sender_id,
                'user2_id' => $result->receiver_id,
            ]);

            $result->delete();
            return response()->json(['message' => 'Request accepted successfully.']);
        } else {
            return response()->json(['message' => 'Request not found.'], 404);
        }
    }
}

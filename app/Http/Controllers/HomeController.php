<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Request as Req;
use App\Models\User;
use App\Models\Connection;
use Auth;
use DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
       
        $user = User::select('users.*')
         ->where('users.id', '!=', Auth::user()->id)
         ->whereNotExists(function ($query) {
             $query->select(DB::raw(1))
                 ->from('connections')
                 ->whereRaw('(connections.user1_id = users.id AND connections.user2_id = ' . Auth::user()->id . ')')
                 ->orWhereRaw('(connections.user1_id = ' . Auth::user()->id . ' AND connections.user2_id = users.id)');
         })
         ->whereNotExists(function ($query) {
             $query->select(DB::raw(1))
                 ->from('requests')
                 ->whereRaw('requests.receiver_id = users.id')
                 ->where('requests.sender_id', Auth::user()->id)
                 ->where('requests.status', 'pending');
         })
         ->orderBy('users.id', 'desc')
         ->count();
         $sentRequests = Req::where('sender_id', auth()->user()->id)->count();
         $receivedRequests = Req::where('receiver_id', auth()->user()->id)->count();
         $connections = Connection::where('user1_id', auth()->user()->id)
         ->orWhere('user2_id', auth()->user()->id)
         ->count();
 
 
         $array = array(
              'suggestions' => $user,
              'requests' => $sentRequests,
              'received' => $receivedRequests,
              'connections' => $connections,
         );
 
        return view('home',compact('array'));
    }



    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getContent()
    {
        
       $limit = isset($_GET['limit']) && !empty($_GET['limit']) ? $_GET['limit'] : 10;
       $user = User::select('users.*')
        ->where('users.id', '!=', Auth::user()->id)
        ->whereNotExists(function ($query) {
            $query->select(DB::raw(1))
                ->from('connections')
                ->whereRaw('(connections.user1_id = users.id AND connections.user2_id = ' . Auth::user()->id . ')')
                ->orWhereRaw('(connections.user1_id = ' . Auth::user()->id . ' AND connections.user2_id = users.id)');
        })
        ->whereNotExists(function ($query) {
            $query->select(DB::raw(1))
                ->from('requests')
                ->whereRaw('requests.receiver_id = users.id')
                ->where('requests.sender_id', Auth::user()->id)
                ->where('requests.status', 'pending');
        })
        ->orderBy('users.id', 'desc')
        ->limit($limit)
        ->get();

        //  $count = $user->skip($limit)->take(10);
        //  $i = 0;
        //  foreach ($count as $key => $value) {
        //     $i++;
        //  }
        // $flage = true;
        //  if($i != 10){
        //     $flage = false;
        //  }

       return view('components.suggestion',compact('user'));
    }


    public function sentRequest(Request $request)
    {
        User::where('id',$request->userId)->update(['type' => $request->type]);
        $limit = !empty($request->limit) ? $request->limit : 10;
        $user = User::where('type','suggestions')->limit($limit)->get();
        return view('components.suggestion',compact('user'));
    }

    
}

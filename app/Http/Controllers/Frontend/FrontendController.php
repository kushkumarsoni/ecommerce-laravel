<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class FrontendController extends Controller
{
    private $theme;
    
    public function __construct(){
        $this->theme = 'frontend';
    }

    public function index() {
        return view($this->theme.'.welcome');
    }

    public function user_index(){
        $users = DB::table('test_users')->get();
        return response()->json(['status'=>'200','message'=>'users found','users'=>$users]);
    }
    public function user_store(Request $request){
        $data = array('name'=>$request->name,'email'=>$request->email,'age'=>$request->age,'gender'=>$request->gender);
        $id = DB::table('test_users')->insertGetId($data);
        $users = DB::table('test_users')->where('id',$id)->first();
        return response()->json(['status'=>'200','message'=>'users inserted','users'=>$users]);
    }
    public function single_user($id){
        $users = DB::table('test_users')->where('id',$id)->first();
        return response()->json(['status'=>'200','message'=>'users found','users'=>$users]);
    }

    public function delete_user($id){
        $users = DB::table('test_users')->where('id',$id)->first();
        if($users){
            DB::table('test_users')->where('id',$id)->delete();
            return response()->json(['status'=>'200','message'=>'users delete','users'=>$users]);
        }   
    }

    public function user_update(Request $request){
        $data = array('name'=>$request->name,'email'=>$request->email,'age'=>$request->age,'gender'=>$request->gender);
        DB::table('test_users')->where('id',$request->id)->update($data);
        $users = DB::table('test_users')->where('id',$request->id)->first();
        return response()->json(['status'=>'200','message'=>'users updated','users'=>$users]);
    }
}

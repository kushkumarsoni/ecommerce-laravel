<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use App\Models\Contact;

class ContactController extends Controller
{
    private $theme;
    public function __construct(){
        $this->theme = 'backend';
    }

    //get contact Page load data
    public function getContactData(){
        $datalist = Contact::orderBy('id','desc')->paginate(20);
        return view($this->theme.'.contacts',compact('datalist'));
    }

    public function getContactPaginationData(Request $request){
        if($request->ajax()){
            $datalist = Contact::when($request->search != '',function($q) use($request){
                $q->where(function($query) use($request){
                    $query->where('name','LIKE','%'.$request->search.'%')
                    ->orWhere('email','LIKE','%'.$request->search.'%')
                    ->orWhere('mobile','LIKE','%'.$request->search.'%');
                });
            })->orderBy('id','desc')->paginate(20);
            return view($this->theme.'.partials.contacts_table',compact('datalist'));
        }
    }

    //delete contact
    public function deleteContact(Request $request){
        $res = array();
        if($request->id !=''){
            $response = Contact::where('id',$request->id)->delete();
            if($response){
                $res['msgType'] = 'success';
                $res['msg']     = __('Data Removed Successfully');
            }else{
                $res['msgType'] = 'error';
                $res['msg']     = __('Data remove faild');
            }
            return response()->json($res);
        }
        
    }

    //bulk action
    public function bulkActionContact(Request $request){
        $res = array();
        if($request->ajax()){
            $ids = explode(',',$request->ids);
            $BulkAction = $request->BulkAction;
            if($BulkAction == 'delete'){
                $response = Contact::whereIn('id',$ids)->delete();
                if($response){
                    $res['msgType'] = 'success';
                    $res['msg'] = __('Data Removed Successfully');
                }else{
                    $res['msgType'] = 'error';
                    $res['msg'] = __('Data remove faild');
                }
            }
            return response()->json($res);
        }
    }
    
}

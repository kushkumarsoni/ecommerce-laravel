<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use App\Exports\PermissionExport;
use Maatwebsite\Excel\Facades\Excel;
use App\Imports\PermissionImport;

class RoleController extends Controller
{
    public function AllPermissions(){
        $datalist = Permission::orderBy('id','desc')->paginate(20);
        return view('backend.pages.permissions',compact('datalist'));
    } //End function


    public function addPermissions(Request $request){
        $data = array();
        if($request->id !=''){
            $datalist = Permission::where('id',$request->id)->first();
            $data['id'] = $datalist->id;
            $data['name'] = $datalist->name;
            $data['group_name'] = $datalist->group_name;
        }else{
            $data['id'] = '';
            $data['name'] = '';
            $data['group_name'] = '';
        }
        return view('backend.pages.create-permissions',compact('data'));
    } //End function


    public function savePermissions(Request $request){
        $res = array();
        if($request->RecordId ==''){
            $response = Permission::create(['name'=>$request->name,'group_name'=>$request->group_name]);
            if($response){
                $res['msgtype'] = 'success';
                $res['msg'] = 'Data added successfully';
            }else{
                $res['msgtype'] = 'error';
                $res['msg'] = 'Data added failed';
            }            
        }else{
            $response = Permission::where('id',$request->RecordId)->update([
                'name'=>$request->name,
                'group_name'=>$request->group_name
               ]);
            if($response){
                $res['msgtype'] = 'success';
                $res['msg'] = 'Data updated successfully';
            }else{
                $res['msgtype'] = 'error';
                $res['msg'] = 'Data update failed';
            }            
        }
       return redirect()->route('admin.all.permission')->with($res);
    } //End function

    public function deletePermissions($id){
        $res = array();
        $response = Permission::where('id',$id)->delete();
        if($response){
            $res['msgType'] = 'success';
            $res['msg'] = 'Data Removed Successfully';
        }else{
            $res['msgType'] = 'error';
            $res['msg'] = 'Data Remove failed';
        }
        return redirect()->route('admin.all.permission')->with($res);
    }//end function

    public function ExportPermissions(){
        return Excel::download(new PermissionExport, 'permissions.xlsx');
    }

    public function ImportPermissions(){
       return view('backend.pages.import-permissions');
    }

    public function ImportExcelPermissions(Request $request){
        $res = array();
        $response =  Excel::import(new PermissionImport, $request->file('excel_file'));        
        if($response){
            $res['msgtype'] = 'success';
            $res['msg'] = 'Data added successfully';
        }else{
            $res['msgtype'] = 'error';
            $res['msg'] = 'Data added failed';
        }
        return redirect()->route('admin.all.permission')->with($res);
    }
}

<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use App\Models\Coupon;
use App\Models\TpStatus;

class CouponController extends Controller
{
    private $theme;
    public function __construct(){
        $this->theme = 'backend';
    }

    //Get coupon page load data
    public function getCouponsPageLoad(){
        $statuslist = TpStatus::orderBy('id','desc')->get();
        $datalist   = Coupon::join('tp_status','coupons.is_publish','=','tp_status.id')
                                ->select('coupons.id', 'coupons.code', 'coupons.expire_date', 
                                'coupons.percentage','coupons.is_publish', 'tp_status.status','coupons.title')
                                ->orderBy('coupons.id','desc')
                                ->paginate(20);
        return view($this->theme.'.coupons',compact('statuslist','datalist'));
    }

    //Get coupon data for Pagination
    public function getCouponsTableData(Request $request){
        if($request->ajax()){
            $datalist = Coupon::when($request->search !='',function($q) use($request){
                                $q->where('coupons.title','LIKE','%'.$request->search.'%')
                                ->orWhere('coupons.code','LIKE','%'.$request->search.'%');
                            })->join('tp_status','coupons.is_publish','=','tp_status.id')
                            ->select('coupons.id', 'coupons.code', 'coupons.expire_date', 'coupons.percentage',
                             'coupons.is_publish','tp_status.status','coupons.title')
                            ->orderBy('coupons.id','desc')
                            ->paginate(20);

            return view($this->theme.'.partials.coupons_table',compact('datalist'));
        }
    }

    //save coupon data
    public function saveCouponsData(Request $request){
        $res = array();
		
		$id             = $request->input('RecordId');
		$code           = $request->input('code');
		$expire_date    = $request->input('expire_date');
		$percentage     = $request->input('percentage');
		$is_publish     = $request->input('is_publish');
		$title          = $request->input('title');
		
		$validator_array = array(
			'code' => $request->input('code'),
			'expire_date' => $request->input('expire_date'),
			'percentage' => $request->input('percentage'),
			'is_publish' => $request->input('is_publish'),
			'title' => $request->input('title'),
		);
		
		$validator = Validator::make($validator_array, [
			'code' => 'required|max:191',
			'expire_date' => 'required|max:191',
			'percentage' => 'required|max:100',
			'is_publish' => 'required',
			'title' => 'required',
		]);

		$errors = $validator->errors();

		if($errors->has('title')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('title');
			return response()->json($res);
		}

		if($errors->has('code')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('code');
			return response()->json($res);
		}
		
		if($errors->has('expire_date')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('expire_date');
			return response()->json($res);
		}
		
		if($errors->has('percentage')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('percentage');
			return response()->json($res);
		}

		if($errors->has('is_publish')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('is_publish');
			return response()->json($res);
		}

		$data = array(
			'code' => $code,
			'expire_date' => $expire_date,
			'percentage' => $percentage,
			'is_publish' => $is_publish,
			'title' => $title,
		);

		if($id ==''){
			$response = Coupon::create($data);
			if($response){
				$res['msgType'] = 'success';
				$res['msg'] = __('New Data Added Successfully');
			}else{
				$res['msgType'] = 'error';
				$res['msg'] = __('Data insert failed');
			}
		}else{
			$response = Coupon::where('id', $id)->update($data);
			if($response){
				$res['msgType'] = 'success';
				$res['msg'] = __('Data Updated Successfully');
			}else{
				$res['msgType'] = 'error';
				$res['msg'] = __('Data update failed');
			}
		}
		
		return response()->json($res);
    }

    //get coupon by id
    public function getCouponsById(Request $request){
        if($request->id !=''){
            $data = Coupon::where('id',$request->id)->first();
            return response()->json($data);
        }
    }

    // delete coupon
    public function deleteCoupons(Request $request){
        $res = array();
        if($request->id !=''){
            $response = Coupon::where('id',$request->id)->delete();
            if($response){
                $res['msgType'] = 'success';
                $res['msg'] = __('Data Removed successfully');
            }else{
                $res['msgType'] = 'error';
                $res['msg'] = __('Data remove failed');
            }
        }
        return response()->json($res);
    }

    //bulk action on coupons
    public function bulkActionCoupons(Request $request){
        $res = array();
        $idsStr = $request->ids;
        $idsArray = explode(',',$idsStr);
        $BulkAction = $request->BulkAction;
        if($BulkAction == 'publish'){
            $response = Coupon::whereIn('id',$idsArray)->update(['is_publish'=>1]);
            if($response){
                $res['msgType'] = 'success';
                $res['msg'] = __('Data Updated Successfully');
            }else{
                $res['msgType'] = 'error';
                $res['msg'] = __('Data Update failed');
            }
        }elseif($BulkAction == 'draft'){
            $response = Coupon::whereIn('id',$idsArray)->update(['is_publish'=>2]);
            if($response){
                $res['msgType'] = 'success';
                $res['msg'] = __('Data Updated Successfully');
            }else{
                $res['msgType'] = 'error';
                $res['msg'] = __('Data Update failed');
            }
        }elseif($BulkAction == 'delete'){
            $response = Coupon::whereIn('id',$idsArray)->delete();
            if($response){
                $res['msgType'] = 'success';
                $res['msg'] = __('Data Removed Successfully');
            }else{
                $res['msgType'] = 'error';
                $res['msg'] = __('Data remove failed');
            }
        }
        return response()->json($res);
    }
}

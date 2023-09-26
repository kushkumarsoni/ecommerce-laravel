<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use App\Models\{Subscriber,MediaOption,SystemSetting};

class NewsLetterController extends Controller
{
    private $theme;
    public function __construct(){
        $this->theme = 'backend';
    }

    //subscribers get data
    public function getSubscribersPageLoad(){
        $datalist = Subscriber::orderBy('id','desc')->paginate(20);
        return view($this->theme.'.subscribers',compact('datalist'));
    }

    //Get data subscribers for pagination
    public function getSubscriberTableData(Request $request){
        if($request->ajax()){
            $datalist = Subscriber::when($request->search !='',function($q) use($request){
                $q->where('email_address', 'like', '%'.$request->search.'%')
                ->orWhere('status', 'like', '%'.$request->search.'%');
            })->orderBy('id','desc')->paginate(20);

            return view($this->theme.'.partials.subscribers_table',compact('datalist'))->render();
        }
    }

    //save subscriber data
    public function saveSubscriberData(Request $request){
        $id             = $request->input('RecordId');
        $email_address  = $request->input('email_address');
        $status         = $request->input('status');

        $validator_array = array(
            'email_address' => $email_address,
            'status' => $status
        );

        $rId = $id == '' ? '' : ','.$id;
		$validator = Validator::make($validator_array, [
			'email_address' => 'required|email|max:191|unique:subscribers,email_address' . $rId,
			'status' => 'required'
		]);
		
		$errors = $validator->errors();

		if($errors->has('email_address')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('email_address');
			return response()->json($res);
		}
		
		if($errors->has('status')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('status');
			return response()->json($res);
		}
		
		$data = array(
			'email_address' => $email_address,
			'status' => $status
		);
		
        if($id ==''){				
            $response = Subscriber::create($data);
            if($response){
                $res['msgType'] = 'success';
                $res['msg'] = __('You have successfully subscribed.');
            }else{
                $res['msgType'] = 'error';
                $res['msg'] = __('Some problem occurred, please try again.');
            }
        }else{
            $response = Subscriber::where('id', $id)->update($data);
            if($response){
                $res['msgType'] = 'success';
                $res['msg'] = __('Data Updated Successfully');
            }else{
                $res['msgType'] = 'error';
                $res['msg'] = __('Some problem occurred, please try again.');
            }
        }
		
		return response()->json($res);
    }

    //get subscriber by id
    public function getSubscriberById(Request $request){
        $data = Subscriber::where('id',$request->id)->first();
        return response()->json($data);
    }

    //delete user
    public function deleteSubscriber(Request $request){
        $res = array();
        if($request->id !=''){
            $response = Subscriber::where('id',$request->id)->delete();
            if($response){
                $res['msgType'] = 'success';
                $res['msg'] = __('Data removed successfully');
            }else{
                $res['msgType'] = 'error';
                $res['msg'] = __('Data remove failed');
            }
        }
        return response()->json($res);
    }

    //subscriber setting
    public function getSubscribeSettings(){

        $media_datalist = MediaOption::orderBy('id','desc')->paginate(28);
		$datalist = SystemSetting::where('type', 'subscribe_popup')->get();
		$id = '';
		$value = '';
		foreach ($datalist as $row){
			$id = $row->id;
			$value = json_decode($row->value);
		}

		$data = array();
		if($id != ''){
			$data['subscribe_title'] = $value->subscribe_title;
			$data['subscribe_popup_desc'] = $value->subscribe_popup_desc;
			$data['bg_image_popup'] = $value->bg_image_popup;
			$data['background_image'] = $value->background_image;
			$data['is_subscribe_popup'] = $value->is_subscribe_popup;
			$data['is_subscribe_footer'] = $value->is_subscribe_footer;
		}else{
			$data['subscribe_title'] = '';
			$data['subscribe_popup_desc'] = '';
			$data['bg_image_popup'] = '';
			$data['background_image'] = '';
			$data['is_subscribe_popup'] = '';
			$data['is_subscribe_footer'] = '';
		}
		
		$datalist = $data;
		
		return view($this->theme.'.subscribe-settings', compact('media_datalist', 'datalist'));
    }

    //Save data for Subscribe Popup
    public function SubscribePopupUpdate(Request $request){
		$res = array();
		
		$subscribe_title = $request->input('subscribe_title');
		$subscribe_popup_desc = $request->input('subscribe_popup_desc');
		$bg_image_popup = $request->input('bg_image_popup');
		$background_image = $request->input('background_image');
		$is_subscribepopup = $request->input('is_subscribe_popup');
		$is_subscribefooter = $request->input('is_subscribe_footer');
		
		if ($is_subscribepopup == 'true' || $is_subscribepopup == 'on') {
			$is_subscribe_popup = 1;
		}else {
			$is_subscribe_popup = 0;
		}
		if ($is_subscribefooter == 'true' || $is_subscribefooter == 'on') {
			$is_subscribe_footer = 1;
		}else {
			$is_subscribe_footer = 0;
		}
		
		$validator_array = array(
			'subscribe_title' => $request->input('subscribe_title'),
			'subscribe_popup_desc' => $request->input('subscribe_popup_desc'),
			'bg_image_popup' => $request->input('bg_image_popup'),
			'background_image' => $request->input('background_image')
		);

		$validator = Validator::make($validator_array, [
			'subscribe_title' => 'required',
			'subscribe_popup_desc' => 'required',
			'bg_image_popup' => 'required',
			'background_image' => 'required'
		]);

		$errors = $validator->errors();

		if($errors->has('subscribe_title')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('subscribe_title');
			return response()->json($res);
		}
		
		if($errors->has('subscribe_popup_desc')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('subscribe_popup_desc');
			return response()->json($res);
		}
		
		if($errors->has('bg_image_popup')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('bg_image_popup');
			return response()->json($res);
		}
		
		if($errors->has('background_image')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('background_image');
			return response()->json($res);
		}
		
		$value = array(
			'subscribe_title' => $subscribe_title,
			'subscribe_popup_desc' => $subscribe_popup_desc,
			'bg_image_popup' => $bg_image_popup,
			'background_image' => $background_image,
			'is_subscribe_popup' => $is_subscribe_popup,
			'is_subscribe_footer' => $is_subscribe_footer
		);
		
		$data = array(
			'type' => 'subscribe_popup',
			'value' => json_encode($value)
		);

		$gData = SystemSetting::where('type', 'subscribe_popup')->get();
		$id = '';
		foreach ($gData as $row){
			$id = $row['id'];
		}
		
		if($id == ''){
			$response = SystemSetting::create($data);
			if($response){
				$res['msgType'] = 'success';
				$res['msg'] = __('New Data Added Successfully');
			}else{
				$res['msgType'] = 'error';
				$res['msg'] = __('Data insert failed');
			}
		}else{
			$response = SystemSetting::where('id', $id)->update($data);
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
}

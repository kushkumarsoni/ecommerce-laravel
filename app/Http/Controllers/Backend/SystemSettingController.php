<?php

namespace App\Http\Controllers\Backend;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\{SystemSetting,MediaSetting};
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class SystemSettingController extends Controller
{
    private $theme;
    public function __construct(){
        $this->theme = 'backend';
    }

    public function index(){

        $timezonelist = DB::table('timezones')->orderBy('timezone_name', 'asc')->get();
		$datalist = SystemSetting::where('type', 'general_settings')->get();
		$id = '';
		$option_value = '';
		foreach ($datalist as $row){
			$id = $row->id;
			$option_value = json_decode($row->value);
		}

		$data = array();
		if($id != ''){
			$data['site_name'] = $option_value->site_name;
			$data['site_title'] = $option_value->site_title;
			$data['company'] = $option_value->company;
			$data['email'] = $option_value->email;
			$data['phone'] = $option_value->phone;
			$data['address'] = $option_value->address;
			$data['timezone'] = $option_value->timezone;
		}else{
			$data['site_name'] = '';
			$data['site_title'] = '';
			$data['company'] = '';
			$data['email'] = '';
			$data['phone'] = '';
			$data['address'] = '';
			$data['timezone'] = '';
		}

		$datalist = $data;
        return view($this->theme.'.setting',compact('timezonelist','datalist'));
    }

    //Save data for general Setting
    public function GeneralSettingUpdate(Request $request){
		$res = array();

		$id = $request->input('RecordId');
		$company = $request->input('company');
		$email = $request->input('email');
		$phone = $request->input('phone');
		$site_name = $request->input('site_name');
		$site_title = $request->input('site_title');
		$address = $request->input('address');
		$timezone = $request->input('timezone');

		$validator_array = array(
			'company' => $request->input('company'),
			'email' => $request->input('email'),
			'phone' => $request->input('phone'),
			'site_name' => $request->input('site_name'),
			'address' => $request->input('address'),
			'site_title' => $request->input('site_title')
		);

		$validator = Validator::make($validator_array, [
			'company' => 'required',
			'email' => 'required',
			'phone' => 'required',
			'site_name' => 'required',
			'address' => 'required',
			'site_title' => 'required'
		]);

		$errors = $validator->errors();

		if($errors->has('company')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('company');
			return response()->json($res);
		}

		if($errors->has('email')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('email');
			return response()->json($res);
		}

		if($errors->has('phone')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('phone');
			return response()->json($res);
		}

		if($errors->has('site_name')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('site_name');
			return response()->json($res);
		}

		if($errors->has('site_title')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('site_title');
			return response()->json($res);
		}

		if($errors->has('address')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('address');
			return response()->json($res);
		}

		$option_value = array(
			'company' => $company,
			'email' => $email,
			'phone' => $phone,
			'site_name' => $site_name,
			'site_title' => $site_title,
			'address' => $address,
			'timezone' => $timezone
		);

		$data = array(
			'type' => 'general_settings',
			'value' => json_encode($option_value)
		);

		$gData = SystemSetting::where('type', 'general_settings')->get();
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

    // Google Map page load
    public function loadGoogleMapPage(){
		$datalist = SystemSetting::where('type', 'google_map')->get();
		$id = '';
		$option_value = '';
		foreach ($datalist as $row){
			$id = $row->id;
			$option_value = json_decode($row->value);
		}

		$data = array();
		if($id != ''){
			$data['googlemap_apikey'] = $option_value->googlemap_apikey;
			$data['is_googlemap'] = $option_value->is_googlemap;
		}else{
			$data['googlemap_apikey'] = '';
			$data['is_googlemap'] = '';
		}

		$datalist = $data;

		return view($this->theme.'.google-map', compact('datalist'));
    }

    //Save data for Google Map
    public function GoogleMapUpdate(Request $request){
		$res = array();

		$googlemap_apikey = $request->input('googlemap_apikey');
		$isGooglemap = $request->input('is_googlemap');

		if ($isGooglemap == 'true' || $isGooglemap == 'on') {
			$is_googlemap = 1;
		}else {
			$is_googlemap = 0;
		}

		$validator_array = array(
			'googlemap_apikey' => $request->input('googlemap_apikey')
		);

		$validator = Validator::make($validator_array, [
			'googlemap_apikey' => 'required'
		]);

		$errors = $validator->errors();

		if($errors->has('googlemap_apikey')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('googlemap_apikey');
			return response()->json($res);
		}

		$option_value = array(
			'googlemap_apikey' => $googlemap_apikey,
			'is_googlemap' => $is_googlemap
		);

		$data = array(
			'type' => 'google_map',
			'value' => json_encode($option_value)
		);

		$gData = SystemSetting::where('type', 'google_map')->get();
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

    //load Mail Settings page
    public function loadMailSettingsPage(){

		$datalist = SystemSetting::where('type', 'mail_settings')->get();
		$id = '';
		$option_value = '';
		foreach ($datalist as $row){
			$id = $row->id;
			$option_value = json_decode($row->value);
		}

		$data = array();
		if($id != ''){
			$data['ismail'] = $option_value->ismail;
			$data['from_name'] = $option_value->from_name;
			$data['from_mail'] = $option_value->from_mail;
			$data['to_name'] = $option_value->to_name;
			$data['to_mail'] = $option_value->to_mail;
			$data['mailer'] = $option_value->mailer;
			$data['smtp_host'] = $option_value->smtp_host;
			$data['smtp_port'] = $option_value->smtp_port;
			$data['smtp_security'] = $option_value->smtp_security;
			$data['smtp_username'] = $option_value->smtp_username;
			$data['smtp_password'] = $option_value->smtp_password;
		}else{
			$data['ismail'] = '';
			$data['from_name'] = '';
			$data['from_mail'] = '';
			$data['to_name'] = '';
			$data['to_mail'] = '';
			$data['mailer'] = '';
			$data['smtp_host'] = '';
			$data['smtp_port'] = '';
			$data['smtp_security'] = '';
			$data['smtp_username'] = '';
			$data['smtp_password'] = '';
		}

		$datalist = $data;

        return view($this->theme.'.mail-settings', compact('datalist'));
    }

    //Save data for Mail Settings
    public function saveMailSettings(Request $request){
		$res = array();

		$from_name = $request->input('from_name');
		$from_mail = $request->input('from_mail');
		$to_name = $request->input('to_name');
		$to_mail = $request->input('to_mail');
		$mailer = $request->input('mailer');

		$smtp_host = $request->input('smtp_host');
		$smtp_port = $request->input('smtp_port');
		$smtp_security = $request->input('smtp_security');
		$smtp_username = $request->input('smtp_username');
		$smtp_password = $request->input('smtp_password');

		$is_mail = $request->input('ismail');
		if ($is_mail == 'true' || $is_mail == 'on') {
			$ismail = 1;
		}else {
			$ismail = 0;
		}

		//Is SMTP
		if($mailer == 'smtp'){
			$validator_array = array(
				'from_name' => $request->input('from_name'),
				'from_mail' => $request->input('from_mail'),
				'to_name' => $request->input('to_name'),
				'to_mail' => $request->input('to_mail'),
				'mailer' => $request->input('mailer'),
				'smtp_host' => $request->input('smtp_host'),
				'smtp_port' => $request->input('smtp_port'),
				'smtp_security' => $request->input('smtp_security'),
				'smtp_username' => $request->input('smtp_username'),
				'smtp_password' => $request->input('smtp_password')
			);

			$validator = Validator::make($validator_array, [
				'from_name' => 'required',
				'from_mail' => 'required',
				'to_name' => 'required',
				'to_mail' => 'required',
				'mailer' => 'required',
				'smtp_host' => 'required',
				'smtp_port' => 'required',
				'smtp_security' => 'required',
				'smtp_username' => 'required',
				'smtp_password' => 'required'
			]);
		}else{
			$validator_array = array(
				'from_name' => $request->input('from_name'),
				'from_mail' => $request->input('from_mail'),
				'to_name' => $request->input('to_name'),
				'to_mail' => $request->input('to_mail'),
				'mailer' => $request->input('mailer')
			);

			$validator = Validator::make($validator_array, [
				'from_name' => 'required',
				'from_mail' => 'required',
				'to_name' => 'required',
				'to_mail' => 'required',
				'mailer' => 'required'
			]);
		}

		$errors = $validator->errors();

		if($errors->has('from_name')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('from_name');
			return response()->json($res);
		}
		if($errors->has('from_mail')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('from_mail');
			return response()->json($res);
		}
		if($errors->has('to_name')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('to_name');
			return response()->json($res);
		}
		if($errors->has('to_mail')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('to_mail');
			return response()->json($res);
		}
		if($errors->has('mailer')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('mailer');
			return response()->json($res);
		}

		//IS SMTP
		if($mailer == 'smtp'){

			if($errors->has('smtp_host')){
				$res['msgType'] = 'error';
				$res['msg'] = $errors->first('smtp_host');
				return response()->json($res);
			}
			if($errors->has('smtp_port')){
				$res['msgType'] = 'error';
				$res['msg'] = $errors->first('smtp_port');
				return response()->json($res);
			}
			if($errors->has('smtp_security')){
				$res['msgType'] = 'error';
				$res['msg'] = $errors->first('smtp_security');
				return response()->json($res);
			}
			if($errors->has('smtp_username')){
				$res['msgType'] = 'error';
				$res['msg'] = $errors->first('smtp_username');
				return response()->json($res);
			}
			if($errors->has('smtp_password')){
				$res['msgType'] = 'error';
				$res['msg'] = $errors->first('smtp_password');
				return response()->json($res);
			}
		}

		$option_value = array(
			'ismail' => $ismail,
			'from_name' => $from_name,
			'from_mail' => $from_mail,
			'to_name' => $to_name,
			'to_mail' => $to_mail,
			'mailer' => $mailer,
			'smtp_host' => $smtp_host,
			'smtp_port' => $smtp_port,
			'smtp_security' => $smtp_security,
			'smtp_username' => $smtp_username,
			'smtp_password' => $smtp_password
		);

		$data = array(
			'type' => 'mail_settings',
			'value' => json_encode($option_value)
		);

		$gData = SystemSetting::where('type', 'mail_settings')->get();
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

    //load Media Settings page
    public function loadMediaSettingsPage(){

		$datalist = MediaSetting::paginate(10);

        return view($this->theme.'.media-settings', compact('datalist'));
    }

	//Get data for Media Settings Pagination
	public function getMediaSettingsTableData(Request $request){

		$search = $request->search;

		if($request->ajax()){

			if($search != ''){
				$datalist = MediaSetting::where(function ($query) use ($search){
					$query->where('media_type', 'like', '%'.$search.'%')
						->orWhere('media_width', 'like', '%'.$search.'%')
						->orWhere('media_height', 'like', '%'.$search.'%')
						->orWhere('media_desc', 'like', '%'.$search.'%');
					})->paginate(10);
			}else{
				$datalist = MediaSetting::paginate(10);
			}

			return view($this->theme.'.partials.media_settings_table', compact('datalist'))->render();
		}
	}

	//Get data for Media Settings by id
    public function getMediaSettingsById(Request $request){

		$id = $request->id;

		$data = MediaSetting::where('id', $id)->first();

		return response()->json($data);
	}

	//Save data for Media Settings
    public function MediaSettingsUpdate(Request $request){
		$res = array();

		$id = $request->input('RecordId');
		$media_width = $request->input('media_width');
		$media_height = $request->input('media_height');

		$validator_array = array(
			'width' => $request->input('media_width'),
			'height' => $request->input('media_height')
		);

		$validator = Validator::make($validator_array, [
			'width' => 'required',
			'height' => 'required'
		]);

		$errors = $validator->errors();

		if($errors->has('width')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('width');
			return response()->json($res);
		}

		if($errors->has('height')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('height');
			return response()->json($res);
		}

		$data = array(
			'media_width' => $media_width,
			'media_height' => $media_height
		);

		$response = MediaSetting::where('id', $id)->update($data);
		if($response){
			$res['msgType'] = 'success';
			$res['msg'] = __('Data Updated Successfully');
		}else{
			$res['msgType'] = 'error';
			$res['msg'] = __('Data update failed');
		}

		return response()->json($res);
    }
}

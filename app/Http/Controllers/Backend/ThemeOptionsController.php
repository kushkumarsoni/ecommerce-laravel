<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use App\Models\{SystemSetting,MediaOption,TpStatus};

class ThemeOptionsController extends Controller
{
    private $theme;
    public function __construct(){
        $this->theme = 'backend';
    }

     //Theme Options home-video
     public function getThemeOptionsHomeVideo() {
		
		$media_datalist = MediaOption::orderBy('id','desc')->paginate(28);
		
		$statuslist = TpStatus::orderBy('id', 'asc')->get();
		
		$results = SystemSetting::where('type', 'home-video')->get();

		$id = '';
		foreach ($results as $row){
			$id = $row->id;
		}

		$data = array();
		if($id != ''){
		
			$sData = json_decode($results);
			$dataObj = json_decode($sData[0]->value);
			
			$data['title'] = $dataObj->title;
			$data['short_desc'] = $dataObj->short_desc;
			$data['url'] = $dataObj->url;
			$data['video_url'] = $dataObj->video_url;
			$data['button_text'] = $dataObj->button_text;
			$data['target'] = $dataObj->target;
			$data['image'] = $dataObj->image;
			$data['is_publish'] = $dataObj->is_publish;
		}else{
			$data['title'] = '';
			$data['short_desc'] = '';
			$data['url'] = '';
			$data['video_url'] = '';
			$data['button_text'] = '';
			$data['target'] = '';
			$data['image'] = '';
			$data['is_publish'] = '2';
		}
		
		$datalist = $data;
		
        return view($this->theme.'.home-video', compact('media_datalist', 'datalist', 'statuslist'));
    }
	
	//Save data for Home Video Section
    public function saveThemeOptionsHomeVideo(Request $request){
		$res = array();

		$title = $request->input('title');
		$short_desc = $request->input('short_desc');
		$url = $request->input('url');
		$video_url = $request->input('video_url');
		$button_text = $request->input('button_text');
		$target = $request->input('target');
		$image = $request->input('image');
		$is_publish = $request->input('is_publish');
		
		$option = array(
			'title' => $title,
			'short_desc' => $short_desc,
			'url' => $url,
			'video_url' => $video_url,
			'button_text' => $button_text,
			'target' => $target,
			'image' => $image,
			'is_publish' => $is_publish
		);
		
		$data = array(
			'type' => 'home-video',
			'value' => json_encode($option)
		);

		$gData = SystemSetting::where('type', 'home-video')->get();
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

	//Theme Options page load
    public function getThemeOptionsPageLoad() {

		$results = SystemSetting::where('type', 'theme_logo')->get();

		$id = '';
		$favicon = '';
		$front_logo = '';
		$back_logo = '';
		foreach ($results as $row){
			$id = $row->id;
		}

		$data = array();
		if($id != ''){
			
			$sData = json_decode($results);
			$dataObj = json_decode($sData[0]->value);
			
			$data['favicon'] = $dataObj->favicon;
			$data['front_logo'] = $dataObj->front_logo;
			$data['back_logo'] = $dataObj->back_logo;
		}else{
			$data['favicon'] = '';
			$data['front_logo'] = '';
			$data['back_logo'] = '';
		}
		
		$datalist = $data;
		
		$media_datalist = MediaOption::orderBy('id','desc')->paginate(28);
		
        return view($this->theme.'.theme-options', compact('datalist', 'media_datalist'));
    }
	
	//Save data for Theme Logo
    public function saveThemeLogo(Request $request){
		$res = array();
		
		$favicon = $request->input('favicon');
		$front_logo = $request->input('front_logo');
		$back_logo = $request->input('back_logo');
		
		$validator_array = array(
			'favicon' => $request->input('favicon'),
			'front_logo' => $request->input('front_logo'),
			'back_logo' => $request->input('back_logo')
		);
		
		$validator = Validator::make($validator_array, [
			'favicon' => 'required',
			'front_logo' => 'required',
			'back_logo' => 'required'
		]);

		$errors = $validator->errors();

		if($errors->has('favicon')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('favicon');
			return response()->json($res);
		}
		
		if($errors->has('front_logo')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('front_logo');
			return response()->json($res);
		}
		
		if($errors->has('back_logo')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('back_logo');
			return response()->json($res);
		}
		
		$option = array(
			'favicon' => $favicon,
			'front_logo' => $front_logo,
			'back_logo' => $back_logo
		);
		
		$data = array(
			'type' => 'theme_logo',
			'value' => json_encode($option)
		);

		$gData = SystemSetting::where('type', 'theme_logo')->get();
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

	//Theme Options Header page load
    public function getThemeOptionsHeaderPageLoad() {
		
		$statuslist = TpStatus::orderBy('id', 'asc')->get();
		
		$results = SystemSetting::where('type', 'theme_option_header')->get();

		$id = '';
		$address = '';
		$phone = '';
		$is_publish = '2';
		foreach ($results as $row){
			$id = $row->id;
		}

		$data = array();
		if($id != ''){
			
			$sData = json_decode($results);
			$dataObj = json_decode($sData[0]->value);
			
			$data['address'] = $dataObj->address;
			$data['phone'] = $dataObj->phone;
			$data['is_publish'] = $dataObj->is_publish;
		}else{
			$data['address'] = '';
			$data['phone'] = '';
			$data['is_publish'] = '2';
		}
		
		$datalist = $data;

        return view($this->theme.'.theme-options-header', compact('datalist', 'statuslist'));
    }
	
	//Save data for Theme Options Header
    public function saveThemeOptionsHeader(Request $request){
		$res = array();

		$address = $request->input('address');
		$phone = $request->input('phone');
		$is_publish = $request->input('is_publish');
		
		$option = array(
			'address' => $address,
			'phone' => $phone,
			'is_publish' => $is_publish
		);
		
		$data = array(
			'type' => 'theme_option_header',
			'value' => json_encode($option)
		);

		$gData = SystemSetting::where('type', 'theme_option_header')->get();
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

	//Theme Options Footer page load
    public function getThemeOptionsFooterPageLoad() {
		
		$statuslist = TpStatus::orderBy('id', 'asc')->get();
		
		$results = SystemSetting::where('type', 'theme_option_footer')->get();

		$id = '';
		$address = '';
		$email = '';
		$phone = '';
		$is_publish_contact = '2';
		$copyright = '';
		$is_publish_copyright = '2';
		$payment_gateway_icon = '';
		$is_publish_payment = '2';
		foreach ($results as $row){
			$id = $row->id;
		}

		$data = array();
		if($id != ''){
			
			$sData = json_decode($results);
			$dataObj = json_decode($sData[0]->value);
			
			$data['about_logo'] = $dataObj->about_logo;
			$data['about_desc'] = $dataObj->about_desc;
			$data['is_publish_about'] = $dataObj->is_publish_about;
			$data['address'] = $dataObj->address;
			$data['email'] = $dataObj->email;
			$data['phone'] = $dataObj->phone;
			$data['is_publish_contact'] = $dataObj->is_publish_contact;
			$data['copyright'] = $dataObj->copyright;
			$data['is_publish_copyright'] = $dataObj->is_publish_copyright;
			$data['payment_gateway_icon'] = $dataObj->payment_gateway_icon;
			$data['is_publish_payment'] = $dataObj->is_publish_payment;
		}else{
			$data['about_logo'] = '';
			$data['about_desc'] = '';
			$data['is_publish_about'] = '2';
			$data['address'] = '';
			$data['email'] = '';
			$data['phone'] = '';
			$data['is_publish_contact'] = '2';
			$data['copyright'] = '';
			$data['is_publish_copyright'] = '2';
			$data['payment_gateway_icon'] = '';
			$data['is_publish_payment'] = '2';
		}
		
		$datalist = $data;
		
		$media_datalist = MediaOption::orderBy('id','desc')->paginate(28);
		
        return view($this->theme.'.theme-options-footer', compact('datalist', 'media_datalist', 'statuslist'));
    }

	//Save data for Theme Options Footer
    public function saveThemeOptionsFooter(Request $request){
		$res = array();

		$about_logo = $request->input('about_logo');
		$about_desc = $request->input('about_desc');
		$is_publish_about = $request->input('is_publish_about');
		$address = $request->input('address');
		$phone = $request->input('phone');
		$email = $request->input('email');
		$is_publish_contact = $request->input('is_publish_contact');
		$copyright = $request->input('copyright');
		$is_publish_copyright = $request->input('is_publish_copyright');
		$payment_gateway_icon = $request->input('payment_gateway_icon');
		$is_publish_payment = $request->input('is_publish_payment');
		
		$option = array(
			'about_logo' => $about_logo,
			'about_desc' => $about_desc,
			'is_publish_about' => $is_publish_about,
			'address' => $address,
			'phone' => $phone,
			'email' => $email,
			'is_publish_contact' => $is_publish_contact,
			'copyright' => $copyright,
			'is_publish_copyright' => $is_publish_copyright,
			'payment_gateway_icon' => $payment_gateway_icon,
			'is_publish_payment' => $is_publish_payment
		);
		
		$data = array(
			'type' => 'theme_option_footer',
			'value' => json_encode($option)
		);

		$gData = SystemSetting::where('type', 'theme_option_footer')->get();
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

	//Theme Options SEO page load
    public function getThemeOptionsSEOPageLoad() {
		
		$statuslist = TpStatus::orderBy('id', 'asc')->get();
		
		$results = SystemSetting::where('type', 'theme_option_seo')->get();

		$id = '';
		$og_title = '';
		$og_image = '';
		$og_description = '';
		$og_keywords = '';
		$is_publish = '2';
		foreach ($results as $row){
			$id = $row->id;
		}

		$data = array();
		if($id != ''){
			
			$sData = json_decode($results);
			$dataObj = json_decode($sData[0]->value);
			
			$data['og_title'] = $dataObj->og_title;
			$data['og_image'] = $dataObj->og_image;
			$data['og_description'] = $dataObj->og_description;
			$data['og_keywords'] = $dataObj->og_keywords;
			$data['is_publish'] = $dataObj->is_publish;
		}else{
			$data['og_title'] = '';
			$data['og_image'] = '';
			$data['og_description'] = '';
			$data['og_keywords'] = '';
			$data['is_publish'] = '2';
		}
		
		$datalist = $data;
		$media_datalist = MediaOption::orderBy('id','desc')->paginate(28);
		
        return view($this->theme.'.theme-options-seo', compact('datalist', 'media_datalist', 'statuslist'));
    }

	//Save data for Theme Options SEO
    public function saveThemeOptionsSEO(Request $request){
		$res = array();

		$og_title = $request->input('og_title');
		$og_image = $request->input('og_image');
		$og_description = $request->input('og_description');
		$og_keywords = $request->input('og_keywords');
		$is_publish = $request->input('is_publish');
		
		$option = array(
			'og_title' => $og_title,
			'og_image' => $og_image,
			'og_description' => $og_description,
			'og_keywords' => $og_keywords,
			'is_publish' => $is_publish
		);
		
		$data = array(
			'type' => 'theme_option_seo',
			'value' => json_encode($option)
		);

		$gData = SystemSetting::where('type', 'theme_option_seo')->get();
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

	//Theme Options Whatsapp
	public function getThemeOptionsWhatsappPageLoad(){
		$statuslist = TpStatus::orderBy('id','asc')->get();
		$results = SystemSetting::where('type','whatsapp')->get();
		$id = '';
		foreach($results as $row) {
			$id = $row->id;
		}
		
		$data = array();
		
		if($id != ''){
			$sData = json_decode($results);
			$dataObj = json_decode($sData[0]->value);
			$data['whatsapp_id'] = $dataObj->whatsapp_id;
			$data['whatsapp_text'] = $dataObj->whatsapp_text;			
			$data['position'] = $dataObj->position;
			$data['is_publish'] = $dataObj->is_publish;
		}else{
			$data['whatsapp_id'] = '';
			$data['whatsapp_text'] = '';			
			$data['position'] = ''; 
			$data['is_publish'] = '2';//draft
		}

		$datalist = $data;
		return view($this->theme.'.theme-options-whatsapp',compact('datalist','statuslist'));
	}
	
	//save Theme Options Whatsapp
	public function saveThemeOptionsWhatsapp(Request $request){
		$res = array();
		$whatsapp_id = $request->input('whatsapp_id');
		$whatsapp_text = $request->input('whatsapp_text');
		$position = $request->input('position');
		$is_publish = $request->input('is_publish');

		$option = array(
			'whatsapp_id' => $whatsapp_id,
			'whatsapp_text' => $whatsapp_text,
			'position' => $position,
			'is_publish' => $is_publish
		);

		$data = array(
			'type' => 'whatsapp',
			'value' => json_encode($option)
		);
		
		$gData = SystemSetting::where('type','whatsapp')->get();
		
		$id = '';
		foreach($gData as $row){
			$id = $row['id'];
		}

		if($id == ''){
			$response = SystemSetting::create($data);
			if($response){
				$res['msgType'] = 'success';
				$res['msg'] = __('New Data Added Successfully');
			}else{
				$res['msgType'] = 'erro';
				$res['msg'] = __('Data insert failed');
			}			
		}else{
			$response = SystemSetting::where('id',$id)->update($data);
			if($response){
				$res['msgType'] = 'success';
				$res['msg'] = __('Data updated Successfully');
			}else{
				$res['msgType'] = 'erro';
				$res['msg'] = __('Data update failed');
			}	
		}	
		return response()->json($res);
	}
}

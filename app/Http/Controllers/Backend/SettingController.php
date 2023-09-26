<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use App\Models\SystemSetting;

class SettingController extends Controller
{
    private $theme;
    public function __construct(){
        $this->theme = 'backend';
    }

    //load Payment Methods page
    public function loadPaymentMethodsPage(){

		//Stripe
		$stripe_data = SystemSetting::where('type', 'stripe')->get();

		$stripe_id = '';
		foreach ($stripe_data as $row){
			$stripe_id = $row->id;
		}

		$stripe_data_list = array();
		if($stripe_id != ''){
			$sData = json_decode($stripe_data);
			$sObj = json_decode($sData[0]->value);
			$stripe_data_list['stripe_key'] = $sObj->stripe_key;
			$stripe_data_list['stripe_secret'] = $sObj->stripe_secret;
			$stripe_data_list['currency'] = $sObj->currency;
			$stripe_data_list['isenable'] = $sObj->isenable;
		}else{
			$stripe_data_list['stripe_key'] = '';
			$stripe_data_list['stripe_secret'] = '';
			$stripe_data_list['currency'] = '';
			$stripe_data_list['isenable'] = '';
		}

		//Paypal
		$paypal_data = SystemSetting::where('type', 'paypal')->get();

		$paypal_id = '';
		foreach ($paypal_data as $row){
			$paypal_id = $row->id;
		}

		$paypal_data_list = array();
		if($paypal_id != ''){
			$paypalData = json_decode($paypal_data);
			$paypalObj = json_decode($paypalData[0]->value);
			$paypal_data_list['paypal_client_id'] = $paypalObj->paypal_client_id;
			$paypal_data_list['paypal_secret'] = $paypalObj->paypal_secret;
			$paypal_data_list['paypal_currency'] = $paypalObj->paypal_currency;
			$paypal_data_list['ismode_paypal'] = $paypalObj->ismode_paypal;
			$paypal_data_list['isenable_paypal'] = $paypalObj->isenable_paypal;
		}else{
			$paypal_data_list['paypal_client_id'] = '';
			$paypal_data_list['paypal_secret'] = '';
			$paypal_data_list['paypal_currency'] = '';
			$paypal_data_list['ismode_paypal'] = '';
			$paypal_data_list['isenable_paypal'] = '';
		}

		//Razorpay
		$razorpay_data = SystemSetting::where('type', 'razorpay')->get();

		$razorpay_id = '';
		foreach ($razorpay_data as $row){
			$razorpay_id = $row->id;
		}

		$razorpay_data_list = array();
		if($razorpay_id != ''){
			$razorpayData = json_decode($razorpay_data);
			$razorpayObj = json_decode($razorpayData[0]->value);
			$razorpay_data_list['razorpay_key_id'] = $razorpayObj->razorpay_key_id;
			$razorpay_data_list['razorpay_key_secret'] = $razorpayObj->razorpay_key_secret;
			$razorpay_data_list['razorpay_currency'] = $razorpayObj->razorpay_currency;
			$razorpay_data_list['ismode_razorpay'] = $razorpayObj->ismode_razorpay;
			$razorpay_data_list['isenable_razorpay'] = $razorpayObj->isenable_razorpay;
		}else{
			$razorpay_data_list['razorpay_key_id'] = '';
			$razorpay_data_list['razorpay_key_secret'] = '';
			$razorpay_data_list['razorpay_currency'] = '';
			$razorpay_data_list['ismode_razorpay'] = '';
			$razorpay_data_list['isenable_razorpay'] = '';
		}

		//Mollie
		$mollie_data = SystemSetting::where('type', 'mollie')->get();

		$mollie_id = '';
		foreach ($mollie_data as $row){
			$mollie_id = $row->id;
		}

		$mollie_data_list = array();
		if($mollie_id != ''){
			$mollieData = json_decode($mollie_data);
			$mollieObj = json_decode($mollieData[0]->value);
			$mollie_data_list['mollie_api_key'] = $mollieObj->mollie_api_key;
			$mollie_data_list['mollie_currency'] = $mollieObj->mollie_currency;
			$mollie_data_list['ismode_mollie'] = $mollieObj->ismode_mollie;
			$mollie_data_list['isenable_mollie'] = $mollieObj->isenable_mollie;
		}else{
			$mollie_data_list['mollie_api_key'] = '';
			$mollie_data_list['mollie_currency'] = '';
			$mollie_data_list['ismode_mollie'] = '';
			$mollie_data_list['isenable_mollie'] = '';
		}

		//Cash on Delivery (COD)
		$cod_data = SystemSetting::where('type', 'cash_on_delivery')->get();

		$cod_id = '';
		foreach ($cod_data as $row){
			$cod_id = $row->id;
		}

		$cod_data_list = array();
		if($cod_id != ''){
			$codData = json_decode($cod_data);
			$codObj = json_decode($codData[0]->value);
			$cod_data_list['description'] = $codObj->description;
			$cod_data_list['isenable'] = $codObj->isenable;
		}else{
			$cod_data_list['description'] = '';
			$cod_data_list['isenable'] = '';
		}
        return view($this->theme.'.payment-methods', compact('stripe_data_list', 'paypal_data_list', 'razorpay_data_list', 'mollie_data_list', 'cod_data_list'));
    }

	//Save data for Stripe
    public function StripeSettingsUpdate(Request $request){
		$res = array();

		$stripe_key = $request->input('stripe_key');
		$stripe_secret = $request->input('stripe_secret');
		$currency = $request->input('currency');
		$is_enable = $request->input('isenable');

		if ($is_enable == 'true' || $is_enable == 'on') {
			$isenable = 1;
		}else {
			$isenable = 0;
		}

		$validator_array = array(
			'stripe_key' => $request->input('stripe_key'),
			'stripe_secret' => $request->input('stripe_secret'),
			'currency' => $request->input('currency')
		);

		$validator = Validator::make($validator_array, [
			'stripe_key' => 'required',
			'stripe_secret' => 'required',
			'currency' => 'required'
		]);

		$errors = $validator->errors();

		if($errors->has('stripe_key')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('stripe_key');
			return response()->json($res);
		}

		if($errors->has('stripe_secret')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('stripe_secret');
			return response()->json($res);
		}
		if($errors->has('currency')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('currency');
			return response()->json($res);
		}

		$value = array(
			'stripe_key' => $stripe_key,
			'stripe_secret' => $stripe_secret,
			'currency' => $currency,
			'isenable' => $isenable
		);

		$data = array(
			'type' => 'stripe',
			'value' => json_encode($value)
		);

		$gData = SystemSetting::where('type', 'stripe')->get();
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

	//Save data for Paypal
    public function PaypalSettingsUpdate(Request $request){
		$res = array();

		$paypal_client_id = $request->input('paypal_client_id');
		$paypal_secret = $request->input('paypal_secret');
		$paypal_currency = $request->input('paypal_currency');
		$is_mode_paypal = $request->input('ismode_paypal');
		$is_enable_paypal = $request->input('isenable_paypal');

		if ($is_enable_paypal == 'true' || $is_enable_paypal == 'on') {
			$isenable_paypal = 1;
		}else {
			$isenable_paypal = 0;
		}

		if ($is_mode_paypal == 'true' || $is_mode_paypal == 'on') {
			$ismode_paypal = 1; //sandbox
		}else {
			$ismode_paypal = 0; //live
		}

		$validator_array = array(
			'paypal_client_id' => $request->input('paypal_client_id'),
			'paypal_secret' => $request->input('paypal_secret'),
			'paypal_currency' => $request->input('paypal_currency')
		);

		$validator = Validator::make($validator_array, [
			'paypal_client_id' => 'required',
			'paypal_secret' => 'required',
			'paypal_currency' => 'required'
		]);

		$errors = $validator->errors();

		if($errors->has('paypal_client_id')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('paypal_client_id');
			return response()->json($res);
		}

		if($errors->has('paypal_secret')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('paypal_secret');
			return response()->json($res);
		}
		if($errors->has('paypal_currency')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('paypal_currency');
			return response()->json($res);
		}

		$value = array(
			'paypal_client_id' => $paypal_client_id,
			'paypal_secret' => $paypal_secret,
			'paypal_currency' => $paypal_currency,
			'ismode_paypal' => $ismode_paypal,
			'isenable_paypal' => $isenable_paypal
		);

		$data = array(
			'type' => 'paypal',
			'value' => json_encode($value)
		);

		$gData = SystemSetting::where('type', 'paypal')->get();
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

	//Save data for Razorpay
    public function RazorpaySettingsUpdate(Request $request){
		$res = array();

		$razorpay_key_id = $request->input('razorpay_key_id');
		$razorpay_key_secret = $request->input('razorpay_key_secret');
		$razorpay_currency = $request->input('razorpay_currency');
		$is_mode_razorpay = $request->input('ismode_razorpay');
		$is_enable_razorpay = $request->input('isenable_razorpay');

		if ($is_enable_razorpay == 'true' || $is_enable_razorpay == 'on') {
			$isenable_razorpay = 1;
		}else {
			$isenable_razorpay = 0;
		}

		if ($is_mode_razorpay == 'true' || $is_mode_razorpay == 'on') {
			$ismode_razorpay = 1; //sandbox
		}else {
			$ismode_razorpay = 0; //live
		}

		$validator_array = array(
			'razorpay_key_id' => $request->input('razorpay_key_id'),
			'razorpay_key_secret' => $request->input('razorpay_key_secret'),
			'razorpay_currency' => $request->input('razorpay_currency')
		);

		$validator = Validator::make($validator_array, [
			'razorpay_key_id' => 'required',
			'razorpay_key_secret' => 'required',
			'razorpay_currency' => 'required'
		]);

		$errors = $validator->errors();

		if($errors->has('razorpay_key_id')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('razorpay_key_id');
			return response()->json($res);
		}

		if($errors->has('razorpay_key_secret')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('razorpay_key_secret');
			return response()->json($res);
		}

		if($errors->has('razorpay_currency')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('razorpay_currency');
			return response()->json($res);
		}

		$value = array(
			'razorpay_key_id' => $razorpay_key_id,
			'razorpay_key_secret' => $razorpay_key_secret,
			'razorpay_currency' => $razorpay_currency,
			'ismode_razorpay' => $ismode_razorpay,
			'isenable_razorpay' => $isenable_razorpay
		);

		$data = array(
			'type' => 'razorpay',
			'value' => json_encode($value)
		);

		$gData = SystemSetting::where('type', 'razorpay')->get();
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

	//Save data for Mollie
    public function MollieSettingsUpdate(Request $request){
		$res = array();

		$mollie_api_key = $request->input('mollie_api_key');
		$mollie_currency = $request->input('mollie_currency');
		$is_mode_mollie = $request->input('ismode_mollie');
		$is_enable_mollie = $request->input('isenable_mollie');

		if ($is_enable_mollie == 'true' || $is_enable_mollie == 'on') {
			$isenable_mollie = 1;
		}else {
			$isenable_mollie = 0;
		}

		if ($is_mode_mollie == 'true' || $is_mode_mollie == 'on') {
			$ismode_mollie = 1; //sandbox
		}else {
			$ismode_mollie = 0; //live
		}

		$validator_array = array(
			'mollie_api_key' => $request->input('mollie_api_key'),
			'mollie_currency' => $request->input('mollie_currency')
		);

		$validator = Validator::make($validator_array, [
			'mollie_api_key' => 'required',
			'mollie_currency' => 'required'
		]);

		$errors = $validator->errors();

		if($errors->has('mollie_api_key')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('mollie_api_key');
			return response()->json($res);
		}

		if($errors->has('mollie_currency')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('mollie_currency');
			return response()->json($res);
		}

		$value = array(
			'mollie_api_key' => $mollie_api_key,
			'mollie_currency' => $mollie_currency,
			'ismode_mollie' => $ismode_mollie,
			'isenable_mollie' => $isenable_mollie
		);

		$data = array(
			'type' => 'mollie',
			'value' => json_encode($value)
		);

		$gData = SystemSetting::where('type', 'mollie')->get();
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

	//Save data for COD
    public function CODSettingsUpdate(Request $request){
		$res = array();

		$description = $request->input('description');
		$is_enable = $request->input('isenable_cod');

		if ($is_enable == 'true' || $is_enable == 'on') {
			$isenable = 1;
		}else {
			$isenable = 0;
		}

		$value = array(
			'description' => $description,
			'isenable' => $isenable
		);

		$data = array(
			'type' => 'cash_on_delivery',
			'value' => json_encode($value)
		);

		$gData = SystemSetting::where('type', 'cash_on_delivery')->get();
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

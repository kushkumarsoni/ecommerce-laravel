<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;
use App\Models\SystemSetting;

class CurrencyController extends Controller
{
    private $theme;
    public function __construct(){
        $this->theme = 'backend';
    }

    public function getCurrencyPageLoad() {
		
		$results = SystemSetting::where('type', 'currency')->get();

		$id = '';
		$currency_name = '';
		$currency_icon = '';
		$currency_position = '';
		foreach ($results as $row){
			$id = $row->id;
		}

		$data = array();
		if($id != ''){
			
			$sData = json_decode($results);
			$dataObj = json_decode($sData[0]->value);
			
			$data['currency_name'] = $dataObj->currency_name;
			$data['currency_icon'] = $dataObj->currency_icon;
			$data['currency_position'] = $dataObj->currency_position;
		}else{
			$data['currency_name'] = '';
			$data['currency_icon'] = '';
			$data['currency_position'] = '';
		}
		
		$datalist = $data;
        return view($this->theme.'.currency', compact('datalist'));	
	}

	//Save data for Currency
    public function saveCurrencyData(Request $request){
		$res = array();
		
		$currency_name = esc($request->input('currency_name'));
		$currency_icon = esc($request->input('currency_icon'));
		$currency_position = $request->input('currency_position');
		
		$validator_array = array(
			'currency_name' => $request->input('currency_name'),
			'currency_icon' => $request->input('currency_icon'),
			'currency_position' => $request->input('currency_position')
		);
		
		$validator = Validator::make($validator_array, [
			'currency_name' => 'required',
			'currency_icon' => 'required',
			'currency_position' => 'required'
		]);

		$errors = $validator->errors();

		if($errors->has('currency_name')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('currency_name');
			return response()->json($res);
		}
		
		if($errors->has('currency_icon')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('currency_icon');
			return response()->json($res);
		}
		
		if($errors->has('currency_position')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('currency_position');
			return response()->json($res);
		}
		
		$option = array(
			'currency_name' => $currency_name,
			'currency_icon' => $currency_icon,
			'currency_position' => $currency_position
		);
		
		$data = array(
			'type' => 'currency',
			'value' => json_encode($option)
		);

		$gData = SystemSetting::where('type', 'currency')->get();
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

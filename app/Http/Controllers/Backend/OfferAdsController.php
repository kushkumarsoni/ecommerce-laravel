<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;
use App\Models\{OfferAds,MediaOption,TpStatus};

class OfferAdsController extends Controller
{
    private $theme;
    public function __construct(){
        $this->theme = 'backend';
    }

    public function getOfferAdsPageLoad(){
        $media_datalist = MediaOption::orderBy('id','desc')->paginate(28);
        $statuslist     = TpStatus::orderBy('id','asc')->get();
        $datalist       = OfferAds::join('tp_status','offer_ads.is_publish','=','tp_status.id')
                            ->select('offer_ads.id','offer_ads.offer_ad_type','offer_ad.title','offer_ads.url','offer_ads.image','offer_ads.desc','offer_ads.is_publish','tp_status.id')
                            ->orderBy('offer_ads.id','desc')
                            ->paginate(10);
        return view($this->theme.'.offer_ads',compact('media_datalist','statuslist','datalist'));
    }
    //Get data for Offer Ads Pagination
	public function getOfferAdsTableData(Request $request){

		$search = $request->search;
		
		if($request->ajax()){

			if($search != ''){
				$datalist = OfferAds::join('tp_status', 'offer_ads.is_publish', '=', 'tp_status.id')
                            ->select('offer_ads.id', 'offer_ads.offer_ad_type',  'offer_ads.title', 'offer_ads.url', 'offer_ads.image', 'offer_ads.desc', 'offer_ads.is_publish', 'tp_status.status')
                            ->where(function ($query) use ($search){
                                $query->where('title', 'like', '%'.$search.'%')
                                    ->orWhere('url', 'like', '%'.$search.'%');
                            })
                            ->orderBy('offer_ads.id','desc')
                            ->paginate(10);
			}else{
				
				$datalist = OfferAds::join('tp_status', 'offer_ads.is_publish', '=', 'tp_status.id')
					->select('offer_ads.id', 'offer_ads.offer_ad_type',  'offer_ads.title', 'offer_ads.url', 'offer_ads.image', 'offer_ads.desc', 'offer_ads.is_publish', 'tp_status.status')
					->orderBy('offer_ads.id','desc')
					->paginate(10);
			}

			return view($this->theme.'.partials.offer_ads_table', compact('datalist'))->render();
		}
	}
	
	//Save data for Offer Ads
    public function saveOfferAdsData(Request $request){
		$res = array();
		
		$id = $request->input('RecordId');
		$title = $request->input('text_1');
		$offer_ad_type = $request->input('offer_ad_type');
		$url = $request->input('url');
		$image = $request->input('image');
		$is_publish = $request->input('is_publish');
		$bg_color = $request->input('bg_color');
		$text_1 = $request->input('text_1');
		$text_2 = $request->input('text_2');
		$button_text = $request->input('button_text');
		$target = $request->input('target');
		
		$validator_array = array(
			'image' => $request->input('image'),
			'is_publish' => $request->input('is_publish')
		);
		
		$validator = Validator::make($validator_array, [
			'image' => 'required',
			'is_publish' => 'required'
		]);

		$errors = $validator->errors();

		if($errors->has('image')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('image');
			return response()->json($res);
		}
		
		if($errors->has('is_publish')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('is_publish');
			return response()->json($res);
		}
		
		$desc = array(
			'bg_color' => $bg_color,
			'text_1' => $text_1,
			'text_2' => $text_2,
			'button_text' => $button_text,
			'target' => $target
		);

		$data = array(
			'offer_ad_type' => $offer_ad_type,
			'title' => $title,
			'url' => $url,
			'image' => $image,
			'desc' => json_encode($desc),
			'is_publish' => $is_publish
		);

		if($id ==''){
			$response = OfferAds::create($data);
			if($response){
				$res['msgType'] = 'success';
				$res['msg'] = __('New Data Added Successfully');
			}else{
				$res['msgType'] = 'error';
				$res['msg'] = __('Data insert failed');
			}
		}else{
			$response = OfferAds::where('id', $id)->update($data);
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
	
	//Get data for Offer Ads by id
    public function getOfferAdsById(Request $request){

		$id = $request->id;
		
		$data = OfferAds::where('id', $id)->first();
		
		return response()->json($data);
	}
	
	//Delete data for Offer Ads
	public function deleteOfferAds(Request $request){
		
		$res = array();

		$id = $request->id;

		if($id != ''){
			$response = OfferAds::where('id', $id)->delete();
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
	
	//Bulk Action for Offer Ads
	public function bulkActionOfferAds(Request $request){
		
		$res = array();

		$idsStr = $request->ids;
		$idsArray = explode(',', $idsStr);
		
		$BulkAction = $request->BulkAction;

		if($BulkAction == 'publish'){
			$response = OfferAds::whereIn('id', $idsArray)->update(['is_publish' => 1]);
			if($response){
				$res['msgType'] = 'success';
				$res['msg'] = __('Data Updated Successfully');
			}else{
				$res['msgType'] = 'error';
				$res['msg'] = __('Data update failed');
			}
			
		}elseif($BulkAction == 'draft'){
			
			$response = OfferAds::whereIn('id', $idsArray)->update(['is_publish' => 2]);
			if($response){
				$res['msgType'] = 'success';
				$res['msg'] = __('Data Updated Successfully');
			}else{
				$res['msgType'] = 'error';
				$res['msg'] = __('Data update failed');
			}
			
		}elseif($BulkAction == 'delete'){
			$response = OfferAds::whereIn('id', $idsArray)->delete();
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

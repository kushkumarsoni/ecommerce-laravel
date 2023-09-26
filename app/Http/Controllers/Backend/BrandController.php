<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use App\Models\{Brand,MediaOption,Language,TpStatus};

class BrandController extends Controller
{
    private $theme;
    public function __construct(){
        $this->theme = 'backend';
    }

    //brands page load
    public function getBrandsPageLoad(){
        $media_datalist = MediaOption::orderBy('id','desc')->paginate(28);
        $languageslist  = Language::published()->orderBy('language_name','asc')->get();
        $statuslist     = TpStatus::orderBy('id','asc')->get();
        $datalist       = Brand::join('tp_status', 'brands.is_publish', '=', 'tp_status.id')
                            ->join('languages', 'brands.lan', '=', 'languages.language_code')
                            ->select('brands.id', 'brands.name', 'brands.thumbnail', 'brands.is_featured',
                             'brands.is_publish', 'tp_status.status', 'languages.language_name')
                            ->orderBy('brands.id','desc')
                            ->paginate(10);
       return view($this->theme.'.brands',compact('media_datalist','languageslist','statuslist','datalist'));
    }

	
	//Get data for Brands Pagination
	public function getBrandsTableData(Request $request){

		$search = $request->search;
		$language_code = $request->language_code;
		
		if($request->ajax()){
			if($search != ''){
				$datalist = Brand::join('tp_status', 'brands.is_publish', '=', 'tp_status.id')
                            ->join('languages', 'brands.lan', '=', 'languages.language_code')
                            ->select('brands.id', 'brands.name', 'brands.thumbnail', 'brands.is_featured', 'brands.is_publish', 'tp_status.status', 'languages.language_name')
                            ->where(function ($query) use ($search){
                                $query->where('name', 'like', '%'.$search.'%')
                                    ->orWhere('thumbnail', 'like', '%'.$search.'%');
                            })
                            ->where(function ($query) use ($language_code){
                                $query->whereRaw("brands.lan = '".$language_code."' OR '".$language_code."' = '0'");
                            })
                            ->orderBy('brands.id','desc')
                            ->paginate(10);
			}else{
				
				$datalist = Brand::join('tp_status', 'brands.is_publish', '=', 'tp_status.id')
                            ->join('languages', 'brands.lan', '=', 'languages.language_code')
                            ->select('brands.id', 'brands.name', 'brands.thumbnail', 'brands.is_featured', 'brands.is_publish', 'tp_status.status', 'languages.language_name')
                            ->where(function ($query) use ($language_code){
                                $query->whereRaw("brands.lan = '".$language_code."' OR '".$language_code."' = '0'");
                            })
                            ->orderBy('brands.id','desc')
                            ->paginate(10);
			}
			return view($this->theme.'.partials.brands_table', compact('datalist'))->render();
		}
	}
	
	//Save data for Brands
    public function saveBrandsData(Request $request){
		$res = array();

		$id = $request->input('RecordId');
		$name = esc($request->input('name'));
		$slug = esc($request->input('slug'));
		$lan = $request->input('lan');
		$thumbnail = $request->input('thumbnail');
		$is_featured = $request->input('is_featured');
		$is_publish = $request->input('is_publish');
		
		$validator_array = array(
			'name' => $request->input('name'),
			'lan' => $request->input('lan'),
			'is_publish' => $request->input('is_publish'),
            'slug' => $request->input('slug')
		);
		
		$validator = Validator::make($validator_array, [
			'name'        => 'required|max:191',
			'lan'         => 'required',
			'is_publish'  => 'required',
			'slug'        => 'required',
		]);

		$errors = $validator->errors();

		if($errors->has('name')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('name');
			return response()->json($res);
		}
		
		if($errors->has('lan')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('lan');
			return response()->json($res);
		}

		if($errors->has('is_publish')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('is_publish');
			return response()->json($res);
		}

		if($errors->has('slug')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('slug');
			return response()->json($res);
		}

		$data = array(
			'name' => $name,
			'lan' => $lan,
			'thumbnail' => $thumbnail,
			'is_featured' => $is_featured,
			'is_publish' => $is_publish,
            'slug' => $slug
		);

		if($id ==''){
			$response = Brand::create($data);
			if($response){
				$res['msgType'] = 'success';
				$res['msg'] = __('New Data Added Successfully');
			}else{
				$res['msgType'] = 'error';
				$res['msg'] = __('Data insert failed');
			}
		}else{
			$response = Brand::where('id', $id)->update($data);
			if($response){
				
				$slug = esc(str_slug($name));
				
				//Update Parent and Child Menu
				//gMenuUpdate($id, 'brand', $name, $slug);
				
				$res['msgType'] = 'success';
				$res['msg'] = __('Data Updated Successfully');
			}else{
				$res['msgType'] = 'error';
				$res['msg'] = __('Data update failed');
			}
		}
		
		return response()->json($res);
    }
	
	//Get data for Brand by id
    public function getBrandsById(Request $request){
		$id = $request->id;
		$data = Brand::where('id', $id)->first();
		return response()->json($data);
	}
	
	//Delete data for Brands
	public function deleteBrands(Request $request){
		
		$res = array();
		$id = $request->id;

		if($id != ''){
			$response = Brand::where('id', $id)->delete();
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
	
	//Bulk Action for Brands
	public function bulkActionBrands(Request $request){
		
		$res = array();

		$idsStr = $request->ids;
		$idsArray = explode(',', $idsStr);
		
		$BulkAction = $request->BulkAction;

		if($BulkAction == 'publish'){
			$response = Brand::whereIn('id', $idsArray)->update(['is_publish' => 1]);
			if($response){
				$res['msgType'] = 'success';
				$res['msg'] = __('Data Updated Successfully');
			}else{
				$res['msgType'] = 'error';
				$res['msg'] = __('Data update failed');
			}
			
		}elseif($BulkAction == 'draft'){
			
			$response = Brand::whereIn('id', $idsArray)->update(['is_publish' => 2]);
			if($response){
				$res['msgType'] = 'success';
				$res['msg'] = __('Data Updated Successfully');
			}else{
				$res['msgType'] = 'error';
				$res['msg'] = __('Data update failed');
			}
			
		}elseif($BulkAction == 'delete'){
			$response = Brand::whereIn('id', $idsArray)->delete();
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

    //brands slug
    public function hasBrandSlug(Request $request){
        $res = array();
		$slug = str_slug($request->slug);
        $count = Brand::where('slug', 'like', $slug) ->count();
		if($count == 0){
			$res['slug'] = $slug;
		}else{
			$incr = $count+1;
			$res['slug'] = $slug.'-'.$incr;
		}
		return response()->json($res);
    }
}

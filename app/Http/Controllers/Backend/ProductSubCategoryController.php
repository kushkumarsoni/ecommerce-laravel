<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use App\Models\{ProductCategory,ProductSubCategory,Language,TpStatus,MediaOption};

class ProductSubCategoryController extends Controller
{
    private $theme;
    public function __construct(){
        $this->theme = 'backend';
    }

    public function getProductSubCategoriesPageLoad(){
        $media_datalist = MediaOption::orderBy('id','desc')->paginate(28);
        $categories     = ProductCategory::published()->orderBy('name','asc')->get();
        $datalist       = ProductSubCategory::join('product_categories','product_sub_categories.product_category_id','=','product_categories.id')
                            ->join('tp_status', 'product_sub_categories.is_publish', '=', 'tp_status.id')
                            ->join('languages', 'product_sub_categories.lan', '=', 'languages.language_code')
                            ->select('product_sub_categories.id', 'product_sub_categories.name','product_categories.id as category_id',
                            'product_categories.name as category_name', 'product_sub_categories.lan', 'product_sub_categories.is_publish',
                             'tp_status.status', 'languages.language_name')                            
                            ->orderBy('product_sub_categories.id','desc')                           
                            ->paginate(10);
        $statuslist     = TpStatus::orderBy('id', 'asc')->get();
		$languageslist  = Language::published()->orderBy('language_name', 'asc')->get();
        return view($this->theme.'.product-sub-categories',compact('datalist','statuslist','languageslist','categories','media_datalist'));
    }

    public function getProductSubCategoriesTableData(Request $request){
       
        $search = $request->search;
		$language_code = $request->language_code;

		if($request->ajax()){

			if($search != ''){              
				$datalist  = ProductSubCategory::join('product_categories','product_sub_categories.product_category_id','=','product_categories.id')
                            ->join('tp_status', 'product_sub_categories.is_publish', '=', 'tp_status.id')
                            ->join('languages', 'product_sub_categories.lan', '=', 'languages.language_code')
                            ->select('product_sub_categories.id', 'product_sub_categories.name','product_categories.id as category_id',
                            'product_categories.name as category_name', 'product_sub_categories.lan', 'product_sub_categories.is_publish',
                             'tp_status.status', 'languages.language_name','product_sub_categories.deleted_at')  
                            ->where(function ($query) use ($search){
                                $query->where('product_sub_categories.name', 'like', '%'.$search.'%');
                            })
                            ->where(function ($query) use ($language_code){
                                $query->whereRaw("product_sub_categories.lan = '".$language_code."' OR '".$language_code."' = '0'");
                            })                            
                            ->orderBy('product_sub_categories.id','desc')
                            ->paginate(10);				
			}else{               
				$datalist  = ProductSubCategory::join('product_categories','product_sub_categories.product_category_id','=','product_categories.id')
                            ->join('tp_status', 'product_sub_categories.is_publish', '=', 'tp_status.id')
                            ->join('languages', 'product_sub_categories.lan', '=', 'languages.language_code')
                            ->select('product_sub_categories.id', 'product_sub_categories.name','product_categories.id as category_id',
                            'product_categories.name as category_name', 'product_sub_categories.lan', 'product_sub_categories.is_publish',
                             'tp_status.status', 'languages.language_name','product_sub_categories.deleted_at')  
                            ->whereRaw("product_sub_categories.lan = '".$language_code."' OR '".$language_code."' = '0'")                            
                            ->orderBy('product_sub_categories.id','desc')
                            ->paginate(10);
			}

			return view($this->theme.'.partials.product_sub_categories_table', compact('datalist'))->render();
		}
    }

    public function saveProductSubCategoriesData(Request $request){
        $res = array();

		$id = $request->input('RecordId');
		$name = esc($request->input('name'));
		$slug = esc(str_slug($request->input('slug')));
		$category_id = $request->input('product_category_id');
		$description = esc($request->input('description'));
		$lan = $request->input('lan');
		$is_publish = $request->input('is_publish');
		$og_title = esc($request->input('og_title'));
		$og_image = $request->input('og_image');
		$og_description = esc($request->input('og_description'));
		$og_keywords = esc($request->input('og_keywords'));
		
		$validator_array = array(
			'name' => $request->input('name'),
			'slug' => $slug,
			'lan' => $request->input('lan'),
			'is_publish' => $request->input('is_publish'),
            'product_category_id' => $request->input('product_category_id')
		);
		
		$rId = $id == '' ? '' : ','.$id;
		$validator = Validator::make($validator_array, [
			'name' => 'required|max:191',
			'slug' => 'required|max:191|unique:product_sub_categories,slug' . $rId,
			'lan' => 'required',
			'is_publish' => 'required',
            'product_category_id'=>'required'
		]);

		$errors = $validator->errors();

		if($errors->has('name')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('name');
			return response()->json($res);
		}
		
		if($errors->has('slug')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('slug');
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

		if($errors->has('product_category_id')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('product_category_id');
			return response()->json($res);
		}

		$data = array(
			'name' => $name,
			'slug' => $slug,
			'product_category_id' => $category_id,		
			'description' => $description,
			'lan' => $lan,
			'is_publish' => $is_publish,
			'og_title' => $og_title,
			'og_image' => $og_image,
			'og_description' => $og_description,
			'og_keywords' => $og_keywords
		);

		if($id ==''){
			$response = ProductSubCategory::create($data);
			if($response){
				$res['msgType'] = 'success';
				$res['msg'] = __('New Data Added Successfully');
			}else{
				$res['msgType'] = 'error';
				$res['msg'] = __('Data insert failed');
			}
		}else{
			$response = ProductSubCategory::where('id', $id)->update($data);
			if($response){
				
				//Update Parent and Child Menu
				//gMenuUpdate($id, 'product_category', $name, $slug);
				
				$res['msgType'] = 'success';
				$res['msg'] = __('Data Updated Successfully');
			}else{
				$res['msgType'] = 'error';
				$res['msg'] = __('Data update failed');
			}
		}
		
		return response()->json($res);
    }

    //Delete data for Product Categories
	public function deleteProductSubCategories(Request $request){
		
		$res = array();

		$id = $request->id;

		if($id != ''){
			$response = ProductSubCategory::where('id', $id)->delete();
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
	
	//Bulk Action for Product Categories
	public function bulkActionProductSubCategories(Request $request){
		
		$res = array();

		$idsStr = $request->ids;
		$idsArray = explode(',', $idsStr);
		
		$BulkAction = $request->BulkAction;

		if($BulkAction == 'publish'){
			$response = ProductSubCategory::whereIn('id', $idsArray)->update(['is_publish' => 1]);
			if($response){
				$res['msgType'] = 'success';
				$res['msg'] = __('Data Updated Successfully');
			}else{
				$res['msgType'] = 'error';
				$res['msg'] = __('Data update failed');
			}
			
		}elseif($BulkAction == 'draft'){
			
			$response = ProductSubCategory::whereIn('id', $idsArray)->update(['is_publish' => 2]);
			if($response){
				$res['msgType'] = 'success';
				$res['msg'] = __('Data Updated Successfully');
			}else{
				$res['msgType'] = 'error';
				$res['msg'] = __('Data update failed');
			}
			
		}elseif($BulkAction == 'delete'){
			$response = ProductSubCategory::whereIn('id', $idsArray)->delete();
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

    public function getProductSubCategoriesById(Request $request){
        $id = $request->id;
		$data = ProductSubCategory::where('id', $id)->first();
		return response()->json($data);
    }

    public function hasProductSubCategorySlug(Request $request){
        $res = array();
		
		$slug = str_slug($request->slug);
        $count = ProductSubCategory::where('slug', 'like', '%'.$slug.'%') ->count();
		if($count == 0){
			$res['slug'] = $slug;
		}else{
			$incr = $count+1;
			$res['slug'] = $slug.'-'.$incr;
		}
		return response()->json($res);
    }
}

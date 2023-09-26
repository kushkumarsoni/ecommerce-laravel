<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;
use App\Models\{Product,ProductCategory,
    ProductSubCategory,User,ProductImage,
    RelatedProduct,Brand,Attribute,Language,
    Tax,MediaOption,TpStatus};

class ProductController extends Controller
{
    private $theme;
    public function __construct(){
        $this->theme = 'backend';
    }

    //Products page load
    public function getProductsPageLoad() {
		
		$AllCount       = Product::count();
		$PublishedCount = Product::where('is_publish', '=', 1)->count();
		$DraftCount     = Product::where('is_publish', '=', 2)->count();
		
		$languageslist  = Language::published()->orderBy('language_name', 'asc')->get();
		$brandlist      = Brand::where('is_publish', 1)->orderBy('name','asc')->get();
		$categorylist   = ProductCategory::where('is_publish', 1)->orderBy('name','asc')->get();
			
		$datalist       = Product::join('tp_status', 'products.is_publish', '=', 'tp_status.id')
                            ->join('languages', 'products.lan', '=', 'languages.language_code')
                            ->join('product_categories', 'products.cat_id', '=', 'product_categories.id')
                            ->leftJoin('brands', 'products.brand_id', '=', 'brands.id')                            
                            ->select('products.*', 'product_categories.name as category_name', 'brands.name as brand_name', 'tp_status.status', 'languages.language_name')
                            ->orderBy('products.id','desc')
                            ->paginate(20);

        return view($this->theme.'.products', compact('AllCount', 'PublishedCount', 'DraftCount', 'languageslist', 'categorylist', 'brandlist','datalist'));		
	}
	
	//Get data for Products Pagination
	public function getProductsTableData(Request $request){

		$search = $request->search;
		$status = $request->status;
		$language_code = $request->language_code;
		$category_id = $request->category_id;
		$brand_id = $request->brand_id;

		if($request->ajax()){

			if($search != ''){
				$datalist = Product::join('tp_status', 'products.is_publish', '=', 'tp_status.id')
					->join('languages', 'products.lan', '=', 'languages.language_code')
					->join('product_categories', 'products.cat_id', '=', 'product_categories.id')
					->leftJoin('brands', 'products.brand_id', '=', 'brands.id')
					->join('users', 'products.user_id', '=', 'users.id')
					->select('products.*', 'product_categories.name as category_name', 'brands.name as brand_name', 'tp_status.status', 'languages.language_name', 'users.shop_name')
					->where(function ($query) use ($search){
						$query->where('products.title', 'like', '%'.$search.'%')
							->orWhere('product_categories.name', 'like', '%'.$search.'%')
							->orWhere('brands.name', 'like', '%'.$search.'%')
							->orWhere('languages.language_name', 'like', '%'.$search.'%')
							->orWhere('cost_price', 'like', '%'.$search.'%');
					})
					
					->where(function ($query) use ($status){
						$query->whereRaw("products.is_publish = '".$status."' OR '".$status."' = '0'");
					})
					->where(function ($query) use ($language_code){
						$query->whereRaw("products.lan = '".$language_code."' OR '".$language_code."' = '0'");
					})
					->where(function ($query) use ($category_id){
						$query->whereRaw("products.cat_id = '".$category_id."' OR '".$category_id."' = '0'");
					})
					->where(function ($query) use ($brand_id){
						$query->whereRaw("products.brand_id = '".$brand_id."' OR '".$brand_id."' = 'all'");
					})
					->orderBy('products.id','desc')
					->paginate(20);
			}else{

				$datalist = Product::join('tp_status', 'products.is_publish', '=', 'tp_status.id')
					->join('languages', 'products.lan', '=', 'languages.language_code')
					->join('product_categories', 'products.cat_id', '=', 'product_categories.id')
					->leftJoin('brands', 'products.brand_id', '=', 'brands.id')
					->select('products.*', 'product_categories.name as category_name', 'brands.name as brand_name', 'tp_status.status', 'languages.language_name', 'users.shop_name')
					->join('users', 'products.user_id', '=', 'users.id')
					->where(function ($query) use ($status){
						$query->whereRaw("products.is_publish = '".$status."' OR '".$status."' = '0'");
					})
					->where(function ($query) use ($language_code){
						$query->whereRaw("products.lan = '".$language_code."' OR '".$language_code."' = '0'");
					})
					->where(function ($query) use ($category_id){
						$query->whereRaw("products.cat_id = '".$category_id."' OR '".$category_id."' = '0'");
					})
					->where(function ($query) use ($brand_id){
						$query->whereRaw("products.brand_id = '".$brand_id."' OR '".$brand_id."' = 'all'");
					})
					
					->orderBy('products.id','desc')
					->paginate(20);
			}

			return view($this->theme.'.partials.products_table', compact('datalist'))->render();
		}
	}

	//Save data for Products
    public function saveProductsData(Request $request){
		$res = array();

		$id = $request->input('RecordId');
		$title = esc($request->input('title'));
		$slug = esc(str_slug($request->input('slug')));
		$lan = $request->input('lan');
		$cat_id = $request->input('categoryid');
		$brand_id = $request->input('brandid');
		$user_id = $request->input('storeid');
		$subcategory_id = $request->input('subcategoryid');
		
		$validator_array = array(
			'product_name' => $request->input('title'),
			'slug' => $slug,
			'language' => $request->input('lan'),
			'category' => $request->input('categoryid'),
			'brand' => $request->input('brandid'),
		);
		
		$rId = $id == '' ? '' : ','.$id;
		$validator = Validator::make($validator_array, [
			'product_name' => 'required',
			'slug' => 'required|max:191|unique:products,slug' . $rId,
			'language' => 'required',
			'category' => 'required',
			'brand' => 'required',			
		]);

		$errors = $validator->errors();

		if($errors->has('product_name')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('product_name');
			return response()->json($res);
		}
		
		if($errors->has('slug')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('slug');
			return response()->json($res);
		}

		if($errors->has('language')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('language');
			return response()->json($res);
		}
		
		if($errors->has('category')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('category');
			return response()->json($res);
		}
		
		if($errors->has('brand')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('brand');
			return response()->json($res);
		}

		$data = array(
			'title' => $title,
			'slug' => $slug,
			'cat_id' => $cat_id,
			'category_ids' => $cat_id,
			'brand_id' => $brand_id,
			'user_id' => $user_id,
			'lan' => $lan,
			'is_publish' => 2,
			'sub_category_id'=>$subcategory_id
		);

		if($id ==''){
			$response = Product::create($data)->id;
			if($response){
				$res['id'] = $response;
				$res['msgType'] = 'success';
				$res['msg'] = __('New Data Added Successfully');
			}else{
				$res['id'] = '';
				$res['msgType'] = 'error';
				$res['msg'] = __('Data insert failed');
			}
		}else{
			$response = Product::where('id', $id)->update($data);
			if($response){

				$res['id'] = $id;
				$res['msgType'] = 'success';
				$res['msg'] = __('Data Updated Successfully');
			}else{
				$res['id'] = '';
				$res['msgType'] = 'error';
				$res['msg'] = __('Data update failed');
			}
		}
		
		return response()->json($res);
    }
	
	//Delete data for Products
	public function deleteProducts(Request $request){
		
		$res = array();

		$id = $request->id;

		if($id != ''){
			ProductImage::where('product_id', $id)->delete();
			RelatedProduct::where('product_id', $id)->delete();
			$response = Product::where('id', $id)->delete();
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
	
	//Bulk Action for Products
	public function bulkActionProducts(Request $request){
		
		$res = array();

		$idsStr = $request->ids;
		$idsArray = explode(',', $idsStr);
		
		$BulkAction = $request->BulkAction;

		if($BulkAction == 'publish'){
			$response = Product::whereIn('id', $idsArray)->update(['is_publish' => 1]);
			if($response){
				$res['msgType'] = 'success';
				$res['msg'] = __('Data Updated Successfully');
			}else{
				$res['msgType'] = 'error';
				$res['msg'] = __('Data update failed');
			}
			
		}elseif($BulkAction == 'draft'){
			
			$response = Product::whereIn('id', $idsArray)->update(['is_publish' => 2]);
			if($response){
				$res['msgType'] = 'success';
				$res['msg'] = __('Data Updated Successfully');
			}else{
				$res['msgType'] = 'error';
				$res['msg'] = __('Data update failed');
			}
			
		}elseif($BulkAction == 'delete'){
			
			ProductImage::whereIn('product_id', $idsArray)->delete();
			RelatedProduct::whereIn('product_id', $idsArray)->delete();
			
			$response = Product::whereIn('id', $idsArray)->delete();
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
	
	//has Product Slug
    public function hasProductSlug(Request $request){
		$res = array();
		
		$slug = str_slug($request->slug);
        $count = Product::where('slug', $slug) ->count();
		if($count == 0){
			$res['slug'] = $slug;
		}else{
			$incr = $count+1;
			$res['slug'] = $slug.'-'.$incr;
		}
		
		return response()->json($res);
	}
	
    //get Product
    public function getProductPageData($id){
		
		$datalist       = Product::where('id', $id)->first();
		
		$lan            = $datalist->lan;
		
		$statuslist     = TpStatus::orderBy('id', 'asc')->get();
		$languageslist  = Language::published()->orderBy('id', 'asc')->get();
		
		$brandlist      = Brand::where('lan', '=', $lan)->where('is_publish', '=', 1)->orderBy('name','asc')->get();
		$categorylist   = ProductCategory::where('lan', '=', $lan)->where('is_publish', '=', 1)->orderBy('name','asc')->get();
		
		$taxlist        = Tax::orderBy('title','asc')->get();
		$unitlist       = Attribute::orderBy('name','asc')->get();
		$media_datalist = MediaOption::orderBy('id','desc')->paginate(28);
			
        return view($this->theme.'.product', compact('datalist', 'statuslist', 'languageslist', 'brandlist', 'categorylist', 'taxlist', 'media_datalist', 'unitlist'));
    }
	
	//Update data for Products
    public function updateProductsData(Request $request){

		$res = array();

		$id = $request->input('RecordId');
		$title = esc($request->input('title'));
		$slug = esc(str_slug($request->input('slug')));
		$short_desc = $request->input('short_desc');
		$description = $request->input('description');
		$brand_id = $request->input('brand_id');
		$tax_id = $request->input('tax_id');
		$collection_id = $request->input('collection_id');
		$is_featured = $request->input('is_featured');
		$lan = $request->input('lan');
		$is_publish = $request->input('is_publish');
		$f_thumbnail = $request->input('f_thumbnail');
		$category_ids = $request->input('cat_id');
		$cat_id = $request->input('cat_id');
		$user_id = $request->input('storeid');
		$variation_size = $request->input('variation_size');
		$sale_price = $request->input('sale_price');
		$sub_category_id = $request->input('sub_category_id');
		
		$validator_array = array(
			'product_name' => $request->input('title'),
			'slug' => $slug,
			'featured_image' => $request->input('f_thumbnail'),
			'category' => $request->input('cat_id'),
			'language' => $request->input('lan'),
			'status' => $request->input('is_publish'),			
			//'variation_size' => $request->input('variation_size'),
			'sale_price' => $request->input('sale_price')
		);
		
		$rId = $id == '' ? '' : ','.$id;
		$validator = Validator::make($validator_array, [
			'product_name' => 'required',
			'slug' => 'required|max:191|unique:products,slug' . $rId,
			'featured_image' => 'required',
			'language' => 'required',
			'category' => 'required',
			'status' => 'required',			
			//'variation_size' => 'required',
			'sale_price' => 'required'
		]);

		$errors = $validator->errors();

		if($errors->has('product_name')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('product_name');
			return response()->json($res);
		}
		
		if($errors->has('slug')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('slug');
			return response()->json($res);
		}

		if($errors->has('language')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('language');
			return response()->json($res);
		}
		
		if($errors->has('category')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('category');
			return response()->json($res);
		}
		
		if($errors->has('featured_image')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('featured_image');
			return response()->json($res);
		}
		
		if($errors->has('status')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('status');
			return response()->json($res);
		}
		
		// if($errors->has('variation_size')){
		// 	$res['msgType'] = 'error';
		// 	$res['msg'] = $errors->first('variation_size');
		// 	return response()->json($res);
		// }
		
		if($errors->has('sale_price')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('sale_price');
			return response()->json($res);
		}
		
		$data = array(
			'title' 		=> $title,
			'slug' 			=> $slug,
			'f_thumbnail' 	=> $f_thumbnail,
			'short_desc' 	=> $short_desc,
			'description' 	=> $description,
			'category_ids' 	=> $category_ids,
			'cat_id' 		=> $cat_id,
			'brand_id' 		=> $brand_id,
			'tax_id' 		=> $tax_id,
			'collection_id' => $collection_id,
			'is_featured'	=> $is_featured,
			'is_publish' 	=> $is_publish,
			'user_id'		=> $user_id,
			'variation_size' => $variation_size,
			'sale_price' 	=> $sale_price,
			'lan' 			=> $lan,
			'sub_category_id'=>$sub_category_id
		);
		
		$response = Product::where('id', $id)->update($data);
		if($response){
			//Update Parent and Child Menu
			//gMenuUpdate($id, 'product', $title, $slug);
			
			$res['msgType'] = 'success';
			$res['msg'] = __('Data Updated Successfully');
		}else{
			$res['msgType'] = 'error';
			$res['msg'] = __('Data update failed');
		}
		
		return response()->json($res);
    }
	
    //get Price
    public function getPricePageData($id){
		
		$datalist = Product::where('id', $id)->first();
        return view($this->theme.'.price', compact('datalist'));
    }
	
	//Save data for Price
    public function savePriceData(Request $request){
		$res = array();

		$id = $request->input('RecordId');
		$cost_price = $request->input('cost_price');
		$sale_price = $request->input('sale_price');
		$old_price = $request->input('old_price');
		$start_date = date("Y-m-d");
		$end_date = $request->input('end_date');
		$is_discount = $request->input('is_discount');

		$validator_array = array(
			'sale_price' => $sale_price
		);
		
		$validator = Validator::make($validator_array, [
			'sale_price' => 'required'
		]);

		$errors = $validator->errors();
		
		if($errors->has('sale_price')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('sale_price');
			return response()->json($res);
		}
		
		if($end_date == ''){
			$data = array(
				'cost_price' => $cost_price,
				'sale_price' => $sale_price,
				'old_price' => $old_price,
				'start_date' => NULL,
				'end_date' => NULL,
				'is_discount' => $is_discount
			);
		}else{
			$data = array(
				'cost_price' => $cost_price,
				'sale_price' => $sale_price,
				'old_price' => $old_price,
				'start_date' => $start_date,
				'end_date' => $end_date,
				'is_discount' => $is_discount
			);
		}
		
		$response = Product::where('id', $id)->update($data);
		if($response){
			$res['msgType'] = 'success';
			$res['msg'] = __('Data Updated Successfully');
		}else{
			$res['msgType'] = 'error';
			$res['msg'] = __('Data update failed');
		}
		
		return response()->json($res);
    }
	
    //get Inventory
    public function getInventoryPageData($id){
		
		$datalist = Product::where('id', $id)->first();

        return view($this->theme.'.inventory', compact('datalist'));
    }
	
	//Save data for Inventory
    public function saveInventoryData(Request $request){
		$res = array();

		$id = $request->input('RecordId');
		$is_stock = $request->input('is_stock');
		$stock_status_id = $request->input('stock_status_id');
		$sku = $request->input('sku');
		$stock_qty = $request->input('stock_qty');

		$data = array(
			'is_stock' => $is_stock,
			'stock_status_id' => $stock_status_id,
			'sku' => $sku,
			'stock_qty' => $stock_qty
		);
		
		$response = Product::where('id', $id)->update($data);
		if($response){
			$res['msgType'] = 'success';
			$res['msg'] = __('Data Updated Successfully');
		}else{
			$res['msgType'] = 'error';
			$res['msg'] = __('Data update failed');
		}
		
		return response()->json($res);
    }
	
    //get Product Images
    public function getProductImagesPageData($id){
		
		$datalist       = Product::where('id', $id)->first();
		$imagelist      = ProductImage::where('product_id', $id)->orderBy('id','desc')->paginate(15);
		$media_datalist = MediaOption::orderBy('id','desc')->paginate(28);		
        return view($this->theme.'.product-images', compact('datalist', 'imagelist', 'media_datalist'));
    }

	//Get data for Product Images Pagination
	public function getProductImagesTableData(Request $request){

		$id = $request->id;
		
		if($request->ajax()){
			$imagelist = ProductImage::where('product_id', $id)->orderBy('id','desc')->paginate(15);

			return view($this->theme.'.partials.product_images_list', compact('imagelist'))->render();
		}
	}
	
	//Save data for Product Images
    public function saveProductImagesData(Request $request){
		$res = array();

		$product_id = $request->input('product_id');
		$thumbnail = $request->input('thumbnail');
		$large_image = $request->input('large_image');
		
		$validator_array = array(
			'image' => $request->input('thumbnail')
		);
		
		$validator = Validator::make($validator_array, [
			'image' => 'required'
		]);

		$errors = $validator->errors();

		if($errors->has('image')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('image');
			return response()->json($res);
		}
		
		$data = array(
			'product_id' => $product_id,
			'thumbnail' => $thumbnail,
			'large_image' => $large_image
		);
		
		$response = ProductImage::create($data);
		if($response){
			$res['msgType'] = 'success';
			$res['msg'] = __('New Data Added Successfully');
		}else{
			$res['msgType'] = 'error';
			$res['msg'] = __('Data insert failed');
		}
		
		return response()->json($res);
    }
	
	//Delete data for Product Images
	public function deleteProductImages(Request $request){
		$res = array();

		$id = $request->id;

		if($id != ''){
			$response = ProductImage::where('id', $id)->delete();
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

    //get Variations
    public function getVariationsPageData($id){
		
		$datalist = Product::where('id', $id)->first();
		$sizelist = Attribute::where('att_type', 'Size')->orderBy('id','asc')->get();
		$colorlist = Attribute::where('att_type', 'Color')->orderBy('id','asc')->get();
		
        return view($this->theme.'.variations', compact('datalist', 'sizelist', 'colorlist'));
    }
	
	//Save data for Variations
    public function saveVariationsData(Request $request){
		$res = array();

		$id = $request->input('RecordId');
		$sizes = $request->input('variation_size');
		$colors = $request->input('variation_color');

		$variation_size = NULL;
		$i = 0;
		if($sizes !=''){
			foreach ($sizes as $key => $size) {
				if($i++){
					$variation_size .= ',';
				}
				$variation_size .= $size;
			}
		}
		
		$variation_color = NULL;
		$f = 0;
		if($colors !=''){
			foreach ($colors as $key => $color) {
				if($f++){
					$variation_color .= ',';
				}
				$variation_color .= $color;
			}
		}
		$data = array(
			'variation_size' => $variation_size,
			'variation_color' => $variation_color
		);
		
		$response = Product::where('id', $id)->update($data);
		if($response){
			$res['msgType'] = 'success';
			$res['msg'] = __('Data Updated Successfully');
		}else{
			$res['msgType'] = 'error';
			$res['msg'] = __('Data update failed');
		}
		
		return response()->json($res);
    }
	
    //get Product SEO
    public function getProductSEOPageData($id){

		$datalist 		= Product::where('id', $id)->first();
		$media_datalist = MediaOption::orderBy('id','desc')->paginate(28);
		
        return view($this->theme.'.product-seo', compact('datalist', 'media_datalist'));
	}
	
	//Save data for Product SEO
    public function saveProductSEOData(Request $request){
		$res = array();

		$id = $request->input('RecordId');
		$og_title = $request->input('og_title');
		$og_image = $request->input('og_image');
		$og_description = $request->input('og_description');
		$og_keywords = $request->input('og_keywords');

		$data = array(
			'og_title' => $og_title,
			'og_image' => $og_image,
			'og_description' => $og_description,
			'og_keywords' => $og_keywords
		);
		
		$response = Product::where('id', $id)->update($data);
		if($response){
			$res['msgType'] = 'success';
			$res['msg'] = __('Data Updated Successfully');
		}else{
			$res['msgType'] = 'error';
			$res['msg'] = __('Data update failed');
		}
		
		return response()->json($res);
    }
	
    //get Related Products
    public function getRelatedProductsPageData($id){
		
		$datalist = Product::where('id', $id)->first();
		
		$productlist = Product::join('tp_status', 'products.is_publish', '=', 'tp_status.id')
			->join('languages', 'products.lan', '=', 'languages.language_code')
			->select('products.id', 'products.title', 'products.f_thumbnail', 'products.cost_price', 'products.sale_price', 'products.is_stock', 'products.is_publish', 'tp_status.status', 'languages.language_name')
			->whereNotIn('products.id', [$id])
			->where('products.is_publish', 1)
			->orderBy('products.id','desc')
			->paginate(20);
			
		$relateddatalist = Product::join('tp_status', 'products.is_publish', '=', 'tp_status.id')
			->join('languages', 'products.lan', '=', 'languages.language_code')
			->join('related_products', 'products.id', '=', 'related_products.related_item_id')
			->select('related_products.id', 'products.title', 'products.f_thumbnail', 'products.is_publish', 'tp_status.status', 'languages.language_name')
			->where('related_products.product_id', $id)
			->where('products.is_publish', 1)
			->orderBy('related_products.id','desc')
			->paginate(20);
			
        return view($this->theme.'.related-products', compact('datalist', 'productlist', 'relateddatalist'));
    }
	
	//Get data for Products Pagination Related Products
	public function getProductListForRelatedTableData(Request $request){

		$search = $request->search;
		$id = $request->product_id;
		
		if($request->ajax()){

			if($search != ''){
				$productlist = Product::join('tp_status', 'products.is_publish', '=', 'tp_status.id')
					->join('languages', 'products.lan', '=', 'languages.language_code')
					->select('products.id', 'products.title', 'products.f_thumbnail', 'products.cost_price', 'products.sale_price', 'products.is_stock', 'products.is_publish', 'tp_status.status', 'languages.language_name')
					->where(function ($query) use ($search){
						$query->where('title', 'like', '%'.$search.'%')
							->orWhere('cost_price', 'like', '%'.$search.'%');
					})
					->whereNotIn('products.id', [$id])
					->where('products.is_publish', 1)
					->orderBy('products.id','desc')
					->paginate(20);
			}else{
				$productlist = Product::join('tp_status', 'products.is_publish', '=', 'tp_status.id')
					->join('languages', 'products.lan', '=', 'languages.language_code')
					->select('products.id', 'products.title', 'products.f_thumbnail', 'products.cost_price', 'products.sale_price', 'products.is_stock', 'products.is_publish', 'tp_status.status', 'languages.language_name')
					->whereNotIn('products.id', [$id])
					->where('products.is_publish', 1)
					->orderBy('products.id','desc')
					->paginate(20);
			}

			return view($this->theme.'.partials.products_list_for_related_product', compact('productlist'))->render();
		}
	}
	
	//Get data for Related Products Pagination
	public function getRelatedProductTableData(Request $request){

		$search = $request->search;
		$id = $request->product_id;
		
		if($request->ajax()){

			if($search != ''){
				$relateddatalist = Product::join('tp_status', 'products.is_publish', '=', 'tp_status.id')
					->join('languages', 'products.lan', '=', 'languages.language_code')
					->join('related_products', 'products.id', '=', 'related_products.related_item_id')
					->select('related_products.id', 'products.title', 'products.f_thumbnail', 'products.is_publish', 'tp_status.status', 'languages.language_name')
					->where(function ($query) use ($search){
						$query->where('title', 'like', '%'.$search.'%')
							->orWhere('languages.language_name', 'like', '%'.$search.'%');
					})
					->where('related_products.product_id', $id)
					->where('products.is_publish', 1)
					->orderBy('related_products.id','desc')
					->paginate(20);
			}else{
				$relateddatalist = Product::join('tp_status', 'products.is_publish', '=', 'tp_status.id')
					->join('languages', 'products.lan', '=', 'languages.language_code')
					->join('related_products', 'products.id', '=', 'related_products.related_item_id')
					->select('related_products.id', 'products.title', 'products.f_thumbnail', 'products.is_publish', 'tp_status.status', 'languages.language_name')
					->where('related_products.product_id', $id)
					->where('products.is_publish', 1)
					->orderBy('related_products.id','desc')
					->paginate(20);
			}

			return view($this->theme.'.partials.related_products_table', compact('relateddatalist'))->render();
		}
	}
	
	//Save data for Related Products
    public function saveRelatedProductsData(Request $request){
		$res = array();

		$product_id = $request->input('product_id');
		$related_item_id = $request->input('related_item_id');

		$data = array(
			'product_id' => $product_id,
			'related_item_id' => $related_item_id
		);
		
		$response = RelatedProduct::create($data);
		if($response){
			$res['msgType'] = 'success';
			$res['msg'] = __('New Data Added Successfully');
		}else{
			$res['msgType'] = 'error';
			$res['msg'] = __('Data insert failed');
		}
		
		return response()->json($res);
    }
	
	//Delete data for Related Product
	public function deleteRelatedProduct(Request $request){
		$res = array();

		$id = $request->id;

		$response = RelatedProduct::where('id', $id)->delete();
		if($response){
			$res['msgType'] = 'success';
			$res['msg'] = __('Data Removed Successfully');
		}else{
			$res['msgType'] = 'error';
			$res['msg'] = __('Data remove failed');
		}
		
		return response()->json($res);
	}

	//sub category
	public function getSubCategory(Request $request){
		$res = array();
		$subcategory = ProductSubCategory::where('product_category_id',$request->id)->published()->get();
		if($subcategory){
			$res['msgType'] = 'success';
			$res['msg'] = _('Sub Category Found');
			$res['subcategory'] = $subcategory;
		}else{
			$res['msgType'] = 'error';
			$res['msg'] = __('No Sub Category Found');
			$res['subcategory'] = array();
		}
		return response()->json($res);
	}
}

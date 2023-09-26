<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;
use App\Models\Review;

class ReviewController extends Controller
{
    private $theme;
    public function __construct(){
        $this->theme = 'backend';
    }

    //get page review load data
    public function getReviewRatingsPageLoad(){
        $datalist = Review::join('users','reviews.user_id','=','users.id')
                    ->join('products','reviews.item_id','=','products.id')
                    ->select('reviews.*','users.name','products.title','products.slug','products.id as product_id')
                    ->orderBy('reviews.id','desc')
                    ->paginate(20);
        return view($this->theme.'.review',compact('datalist'));
    }

    //Get data for review Ratings Pagination
    public function getReviewRatingsTableData(Request $request){
        if($request->ajax()){
            $datalist = Review::when($request->search !='',function($q) use($request){
                            $q->where('users.name', 'like', '%'.$request->search.'%')
							->orWhere('products.title', 'like', '%'.$request->search.'%')
							->orWhere('reviews.rating', 'like', '%'.$request->search.'%')
							->orWhere('reviews.created_at', 'like', '%'.$request->search.'%');})
                    ->join('users','reviews.user_id','=','users.id')
                    ->join('products','reviews.item_id','=','products.id')
                    ->select('reviews.*','users.name','products.title','products.slug','products.id as product_id')
                    ->orderBy('reviews.id','desc')->paginate(20);
            return view($this->theme.'.partials.review_ratings_table',compact('datalist'))->render();
        }   
    }

    //delete data for review & rating
    public function deleteReviewRatings(Request $request){
       $res = array();
        if($request->id !=''){
            $response = Review::where('id',$request->id)->delete();
            if($response){
                $res['msgType'] = 'success';
                $res['msg']     = __('Data Removed Successfully');
            }else{
                $res['msgType'] = 'error';
                $res['msg']     = __('Data Removed faild');
            }
        }
       return response()->json($res);
    }

    //bulk action for review & rating
    public function bulkActionReviewRatings(Request $request){
       $res = array();
       $idsStr = $request->ids;
       $idsArray = explode(',',$idsStr);
       if($request->BulkAction == 'delete'){
            $response = Review::whereIn('id',$idsArray)->delete();
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
}

<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\{Review,OrderMaster,Product,
    ProductCategory,Brand,User,Subscriber,ProductSubCategory,
    Coupon};

class DashboardController extends Controller
{
    private $theme;
    public function __construct(){
        $this->theme = 'backend';
    }

    public function index(){
        $total_order            = OrderMaster::count();
        $pending_order          = OrderMaster::pending()->count();
        $processing_order       = OrderMaster::processed()->count();
        $ready_for_pickup_order = OrderMaster::pickuped()->count();
        $completed_order        = OrderMaster::completed()->count();
        $canceled_order         = OrderMaster::canceled()->count();
        $published_product      = Product::published()->count();
        $published_category     = ProductCategory::published()->count();
        $total_subcategory      = ProductSubCategory::published()->count();
        $published_brand        = Brand::published()->count();
        $review                 = Review::count();
        $total_customer         = User::user()->active()->count();
        $out_of_stock_products  = Product::where('stock_status_id','=',0)->count();
        $total_subscribers      = Subscriber::count();        
        $total_coupons          = Coupon::published()->count();
        $total_transactions     = OrderMaster::from('order_masters as a')
                                ->leftJoin('users as b', 'a.customer_id', '=', 'b.id')                           
                                ->join('payment_methods as d', 'a.payment_method_id', '=', 'd.id')
                                ->join('payment_status as e', 'a.payment_status_id', '=', 'e.id')
                                ->join('order_status as f', 'a.order_status_id', '=', 'f.id')
                                ->join('order_items as g', 'a.id', '=', 'g.order_master_id')                                                                                        
                                ->count();

        $selling_sql            = "SELECT a.product_id, b.title, b.slug, SUM(IFNULL(quantity, 0)) TotalSelling
                                    FROM order_items a
                                    INNER JOIN products b ON a.product_id = b.id
                                    GROUP BY a.product_id, b.title, b.slug
                                    ORDER BY TotalSelling DESC LIMIT 10;";
		$top_selling_products   = DB::select(DB::raw($selling_sql));
		
		$review_sql             = "SELECT a.item_id, b.title, b.slug, COUNT(a.id) TotalReview, SUM(rating) TotalRating
                                    FROM reviews a
                                    INNER JOIN products b ON a.item_id = b.id
                                    GROUP BY a.item_id, b.title, b.slug
                                    ORDER BY TotalRating DESC LIMIT 10;";
		$top_rating_products    = DB::select(DB::raw($review_sql));

        return view($this->theme.'.dashboard',compact('total_order','pending_order','processing_order','ready_for_pickup_order','completed_order','canceled_order',
        'published_product','published_category','published_brand','review','total_customer',
        'out_of_stock_products','top_selling_products','top_rating_products','total_subcategory','total_subscribers','total_coupons'));
    }
}

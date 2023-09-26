<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use App\Models\{OrderStatus,OrderMaster,
    PaymentStatus,OrderItem};
class OrderController extends Controller
{
    private $theme;
    public function __construct(){
        $this->theme = 'backend';
    }

    //get orders page load data
    public function getOrdersPageLoad(){
        $order_status_list = OrderStatus::orderBy('id','asc')->get();
        $datalist           = OrderMaster::from('order_masters as a')
                            ->leftJoin('users as b','a.customer_id','=','b.id')
                            ->join('payment_methods as c','a.payment_method_id','=','c.id')
                            ->join('payment_status as d','a.payment_status_id','=','d.id')
                            ->join('order_status as e','a.order_status_id','=','e.id')
                            ->join('order_items as f','a.id','=','f.order_master_id')
                            ->select('a.id','a.customer_id','a.payment_status_id','a.order_status_id','a.order_no','a.created_at','a.shipping_fee',
                            DB::raw("SUM(f.total_price) as total_amount"),DB::raw("SUM(f.tax) as tax"),'b.name','c.method_name','d.pstatus_name','e.ostatus_name')
                            ->groupBy('a.customer_id','a.payment_status_id','a.order_status_id','a.created_at','e.ostatus_name',
                            'd.pstatus_name','c.method_name','a.shipping_fee','b.name','a.order_no','a.id')
                            ->orderBy('a.created_at','desc')->paginate(30);

        return view($this->theme.'.orders',compact('order_status_list','datalist'));
    }

    //get Orders Data for Pagination
    public function getOrdersTableData(Request $request){
        if($request->ajax()){
            $search             = $request->search;
            $datalist           = OrderMaster::when($search !='',function($query) use($search){
                                    $query->where(function($q) use($search){
                                        $q->where('a.order_no','LIKE','%'.$search.'%')
                                        ->orWhere('a.created_at','LIKE','%'.$search.'%')
                                        ->orWhere('b.name','LIKE','%'.$search.'%')
                                        ->orWhere('c.method_name','LIKE','%'.$search.'%')
                                        ->orWhere('d.pstatus_name','LIKE','%'.$search.'%')
                                        ->orWhere('e.ostatus_name','LIKE','%'.$search.'%')
                                        ->orWhere('b.email','LIKE','%'.$search.'%');
                                    });
                                })->when($request->start_date !='',function($q) use($request){
                                    $q->whereBetween('a.created_at',[$request->start_date,$request->end_date]);
                                })->when($request->status > 0 ,function($q) use($request){
                                    $q->where('a.order_status_id','=',$request->status);
                                })->from('order_masters as a')
                                ->leftJoin('users as b','a.customer_id','=','b.id')
                                ->join('payment_methods as c','a.payment_method_id','=','c.id')
                                ->join('payment_status as d','a.payment_status_id','=','d.id')
                                ->join('order_status as e','a.order_status_id','=','e.id')
                                ->join('order_items as f','a.id','=','f.order_master_id')
                                ->select('a.id','a.customer_id','a.payment_status_id','a.order_status_id','a.order_no','a.created_at','a.shipping_fee',
                                DB::raw("SUM(f.total_price) as total_amount"),DB::raw("SUM(f.tax) as tax"),'b.name','c.method_name','d.pstatus_name','e.ostatus_name')
                                ->groupBy('a.customer_id','a.payment_status_id','a.order_status_id','a.created_at','e.ostatus_name',
                                'd.pstatus_name','c.method_name','a.shipping_fee','b.name','a.order_no','a.id')
                                ->orderBy('a.created_at','desc')->paginate(30);

            return view($this->theme.'.partials.orders_table',compact('datalist'))->render();
        }        
    }

    //bulk action for Orders
    public function bulkActionOrders(Request $request){
        $res = array();
        $ids = explode(',',$request->ids);
        $order_status_id = $request->order_status_id;
        $response = OrderMaster::whereIn('id',$ids)->update(['order_status_id'=>$order_status_id]);
        if($response){
            $res['msgType'] = __('success');
            $res['msg']     = 'Data Updated Successfully';
        }else{
            $res['msgType'] = __('error');
            $res['msg']     = 'Data Update failed';
        }
        return response()->json($res);
    }

    //get order data
    public function getOrderData($id){
        $payment_status_list    = PaymentStatus::orderBy('id','asc')->get();
        $order_status_list      = OrderStatus::orderBy('id','asc')->get();
        $datalist               = OrderItem::join('products','order_items.product_id','=','products.id')
                                            ->select('order_items.*','products.title')
                                            ->where('order_items.order_master_id','=',$id)
                                            ->get();
        $mdata                  = OrderMaster::from('order_masters as a')
                                ->leftJoin('users as b','a.customer_id','=','b.id')
                                ->join('payment_methods as c','a.payment_method_id','=','c.id')
                                ->join('payment_status as d','a.payment_status_id','=','d.id')
                                ->join('order_status as e','a.order_status_id','=','e.id')
                                ->join('order_items as f','a.id','=','f.order_master_id')
                                ->select('a.id','a.customer_id',
                                'a.payment_status_id',
                                'a.order_status_id',
                                'a.order_no',
                                'a.created_at',
                                'a.shipping_fee',
                                'a.shipping_title',
                                'a.name as customer_name',
                                'a.email as customer_email',
                                'a.phone as customer_phone',
                                'a.country', 
                                'a.state', 
                                'a.zip_code', 
                                'a.city', 
                                'a.address as customer_address', 
                                DB::raw("SUM(f.total_price) as total_amount"),
                                DB::raw("SUM(f.tax) as tax"),
                                DB::raw("SUM(f.discount) as discount"),
                                'b.name','c.method_name',
                                'd.pstatus_name',
                                'e.ostatus_name')
                                ->where('a.id',$id)
                                ->groupBy('a.customer_id',
                                'a.payment_status_id',
                                'a.order_status_id',
                                'a.created_at',
                                'e.ostatus_name',
                                'a.phone', 
                                'a.country', 
                                'a.state', 
                                'a.zip_code', 
                                'a.city', 
                                'a.name', 
                                'a.email', 
                                'a.address', 
                                'd.pstatus_name',
                                'c.method_name',
                                'a.shipping_fee',
                                'a.shipping_title',
                                'b.name',
                                'a.order_no',
                                'a.id')
                                ->first();
        return view($this->theme.'.order',compact('payment_status_list','order_status_list','datalist','mdata'));
        
    }

    //update order status data
    public function updateOrderStatus(Request $request){
        $res                = array();
        $gtext              = gtext();
        $id                 = $request->input('order_mastet_id');
        $payment_status_id  = $request->input('payment_status_id');
        $order_status_id    = $request->input('order_status_id');
        $is_notify          = $request->input('isnotify');
        $is_notify          = ($is_notify == 'true' || $is_notify == 'on') ? 1 : 0;

        if($payment_status_id == 1){
            $random = random_int(100000,999999);
            $transaction = 'TXN-1'.$random;
            $data = array(
                'transaction_no' => $transaction,
                'payment_status_id' => $payment_status_id,
                'order_status_id' => $order_status_id
            );
        }else{
            $data = array(
                'transaction_no' => NULL,
                'payment_status_id' => $payment_status_id,
                'order_status_id' => $order_status_id
            );
        }

        $response = OrderMaster::where('id',$id)->update($data);
        if($response){
            if($is_notify == 1) {
                if($gtext['ismail'] == 1){
                    //self::orderNotify($id);
                }
            }
            $res['msgType']     = 'success';
            $res['msg']         = __('Data Updated Successfully');
        }else{
            $res['msgType']     = 'error';
            $res['msg']         = __('Data update failed');
        }

        return response()->json($res);
        
    }

    //get payments order status data
    public function getPaymentOrderStatusData(Request $request){
        $id = $request->order_master_id;
        $data = OrderMaster::join('payment_status','order_masters.payment_status_id','=','payment_status.id')
                            ->join('order_status','order_masters.order_status_id','=','order_status.id')
                            ->select('order_masters.payment_status_id','payment_status.pstatus_name',
                            'order_masters.order_status_id','order_status.ostatus_name')
                            ->where('order_masters.id',$id)->first();

        return response()->json($data);
    }

    //Order Notify
    public function orderNotify($id){
        return "Hello , from order notify";
    }

    //delete order
    public function deleteOrder(Request $request){
        $res = array();
        if($request->id !=''){
            OrderItem::where('order_master_id',$request->id)->delete();
            $response = OrderMaster::where('id',$id)->delete();
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

<div class="table-responsive">
    <table class="table table-borderless table-theme" style="width:100%;">
        <thead>
            <tr>
                <th class="checkboxlist text-center" style="width:3%;"><input type="checkbox" class="tp-check-all CheckAll form-control" /></th>
                <th class="text-left" style="width:8%;">{{ __('Order#') }}</th>
                <th class="text-left" style="width:8%;">{{ __('Order Date') }}</th>
                <th class="text-left" style="width:8%;">{{ __('Customer') }}</th>
                <th class="text-left" style="width:7%;">{{ __('Sub Total') }}</th>
                <th class="text-center" style="width:5%;">{{ __('Tax') }}</th>
                <th class="text-center" style="width:9%;">{{ __('Shipping Fee') }}</th>
                <th class="text-center" style="width:9%;">{{ __('Total Amount') }}</th>
                <th class="text-center" style="width:9%;">{{ __('Payment Method') }}</th>
                <th class="text-center" style="width:9%;">{{ __('Payment Status') }}</th>
                <th class="text-center" style="width:9%;">{{ __('Order Status') }}</th>
                <th class="text-center" style="width:5%;">{{ __('Action') }}</th>
            </tr>
        </thead>
        <tbody>
            @forelse($datalist as $row)
                @php
                    $gtext = gtext();
                    $sub_total = $row->total_amount;
                    $tax = $row->tax;
                    $shipping_fee = $row->shipping_fee;
                    $total_amount = $row->total_amount + $row->tax + $row->shipping_fee;
                @endphp
                <tr>
                    <td class="checkboxlist text-center"><input type="checkbox" name="item_ids[]" value="{{ $row->id }}" class="tp-checkbox selected_item" /></td>
                    <td class="text-left"><a href="">{{ $row->order_no }}</a></td>
                    <td class="text-left">{{ \Carbon\Carbon::parse($row->created_at)->format('Y-m-d') }}</td>
                    
                    @if($row->customer_id !='')
                        <td class="text-left">{{ $row->name}}</td>
                    @else
                        <td class="text-left">{{ __('Guest User') }}</td>
                    @endif

                    @if($gtext['currency_position'] == 'left')
                    <td class="text-center">{{ $gtext['currency_icon'] }} {{ number_format($sub_total,2) }}</td>
                    @else
                    <td class="text-center">{{ number_format($sub_total,2) }} {{ $gtext['currency_icon'] }} </td>
                    @endif

                    @if($gtext['currency_position'] == 'left')
                    <td class="text-center">{{ $gtext['currency_icon'] }} {{ number_format($tax,2) }}</td>
                    @else
                    <td class="text-center">{{ number_format($tax,2) }} {{ $gtext['currency_icon'] }} </td>
                    @endif

                    @if($gtext['currency_position'] == 'left')
                    <td class="text-center">{{ $gtext['currency_icon'] }} {{ number_format($shipping_fee,2) }}</td>
                    @else
                    <td class="text-center">{{ number_format($shipping_fee,2) }} {{ $gtext['currency_icon'] }} </td>
                    @endif

                    @if($gtext['currency_position'] == 'left')
                    <td class="text-center">{{ $gtext['currency_icon'] }} {{ number_format($total_amount,2) }}</td>
                    @else
                    <td class="text-center">{{ number_format($total_amount,2) }} {{ $gtext['currency_icon'] }} </td>
                    @endif

                    <td class="text-center">{{ $row->method_name }}</td>
                    <td class="text-center"><span class="status_btn pstatus_{{ $row->payment_status_id }}">{{ $row->pstatus_name }}</span></td>
				    <td class="text-center"><span class="status_btn ostatus_{{ $row->order_status_id }}">{{ $row->ostatus_name }}</span></td>
                    <td class="text-center">
                        <div class="btn-group action-group">
                            <a class="action-btn" href="javascript:void(0);" data-toggle="dropdown" area-haspopup="true" area-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="{{ route('admin.order',[$row->id ]) }}">{{ __('View') }}</a>
                                <a class="dropdown-item" href="{{-- route('frontend.order-invoice',[$row->id,$row->order_no]) --}}">{{ __('Invoice') }}</a>
                                <a onClick="onDelete({{ $row->id }})" class="dropdown-item" href="javascript:void(0);">{{ __('Delete') }}</a>
                            </div>
                        </div>
                    </td>
                </tr> 
            @empty
                <tr><td colspan="12" class="text-center">{{ __('No Data Available') }}</td></tr>
            @endforelse
        </tbody>
    </table>
</div>
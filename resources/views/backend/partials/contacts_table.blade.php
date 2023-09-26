<div class="table-responsive">
	<table class="table table-borderless table-theme" style="width:100%;">
		<thead>
			<tr>
				<th class="checkboxlist text-center" style="width:5%"><input class="tp-check-all checkAll" type="checkbox"></th>
				<th class="text-left" style="width:15%">{{ __('Name') }}</th>
				<th class="text-center" style="width:15%">{{ __('Email') }}</th>
				<th class="text-center" style="width:15%">{{ __('Phone') }}</th>				
				<th class="text-center" style="width:15%">{{ __('Date') }}</th>
                <th class="text-left" style="width:35%">{{ __('Message') }}</th>
				<th class="text-center" style="width:5%">{{ __('Action') }}</th>
			</tr>
		</thead>
		<tbody>
			@if (count($datalist)>0)
			@foreach($datalist as $row)
			<tr>
				<td class="checkboxlist text-center"><input name="item_ids[]" value="{{ $row->id }}" class="tp-checkbox selected_item" type="checkbox"></td> 				
				<td class="text-left">{{ $row->name }}</td> 
				<td class="text-center">{{ $row->email }}</td> 
				<td class="text-center">{{ $row->mobile }}</td>
				<td class="text-center"><span class="enable_btn">{{ \Carbon\Carbon::parse($row->created_at)->format('Y, M, d') }}</span></td>
                <td class="text-left">{{ \Str::limit($row->message,50) }}</td> 				
				<td class="text-center">
					<div class="btn-group action-group">
						<a class="action-btn" href="javascript:void(0);" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
						<div class="dropdown-menu dropdown-menu-right">							
							<a onclick="onDelete({{ $row->id }})" class="dropdown-item" href="javascript:void(0);">{{ __('Delete') }}</a>
						</div>
					</div>
				</td>
			</tr>
			@endforeach
			@else
			<tr>
				<td class="text-center" colspan="7">{{ __('No data available') }}</td>
			</tr>
			@endif
		</tbody>
	</table>
</div>
<div class="row mt-15 float-right">
	<div class="col-lg-12">
		{{ $datalist->links() }}
	</div>
</div>
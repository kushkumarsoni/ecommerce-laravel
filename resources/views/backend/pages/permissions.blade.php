@extends('layouts.backend')
@section('title','Permission Dashboard')
@section('content')
    <!--Main Body-->
        <!-- main Section -->
        <div class="main-body">
            <div class="container-fluid">
                <div class="row mt-25">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <span>{{ __('Permission') }}</span>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="float-right">
                                            <a href="{{ route('admin.add.permission')}}" class="btn blue-btn btn-form float-left mr-2"><i class="fa fa-plus"></i> {{ __('Add New') }}</a>
                                            <a href="{{ route('admin.export.permission') }}" class="btn blue-btn btn-list float-left mr-2"><i class="fa fa-file-excel-o"></i> {{ __('Export') }}</a>
                                            <a href="{{ route('admin.import.permission') }}" class="btn blue-btn btn-list float-right"><i class="fa fa-file-excel-o"></i> {{ __('Import') }}</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Data grid-->
                            <div id="list-panel" class="card-body">
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="form-group bulk-box">
                                            <select id="bulk-action" class="form-control">
                                                <option value="">{{ __('Select Action') }}</option>
                                                <option value="delete">{{ __('Delete Permanently') }}</option>
                                            </select>
                                            <button type="submit" onClick="onBulkAction()" class="btn bulk-btn">{{ __('Apply') }}</button>
                                        </div>
                                    </div>
                                    <div class="col-lg-3"></div>
                                    <div class="col-lg-5">
                                        <div class="form-group search-box">
                                            <input id="search" name="search" type="text" class="form-control" placeholder="{{ __('Search') }}...">
                                            <button type="submit" onClick="onSearch()" class="btn search-btn">{{ __('Search') }}</button>
                                        </div>
                                    </div>
                                </div>
                                <div id="tp_datalist">
                                    <div class="table-responsive">
                                        <table class="table table-borderless table-theme" style="width:100%;">
                                            <thead>
                                                <tr>
                                                    <th class="checkboxlist text-center" style="width:5%"><input class="tp-check-all checkAll" type="checkbox"></th>
                                                    <th class="text-left" style="width:45%">{{ __('Name') }}</th>
                                                    <th class="text-left" style="width:45%">{{ __('Group Name') }}</th>
                                                    <th class="text-center" style="width:10%">{{ __('Action') }}</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @if (count($datalist)>0)
                                                @foreach($datalist as $row)
                                                <tr>
                                                    <td class="checkboxlist text-center"><input name="item_ids[]" value="{{ $row->id }}" class="tp-checkbox selected_item" type="checkbox"></td> 
                                                    <td class="text-left">{{ $row->name }}</td>
                                                    <td class="text-left">{{ $row->group_name }}</td>
                                                    <td class="text-center">
                                                        <div class="btn-group action-group">
                                                            <a class="action-btn" href="javascript:void(0);" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                                                            <div class="dropdown-menu dropdown-menu-right">
                                                                <a class="dropdown-item" href="{{ route('admin.add.permission',$row->id) }}">{{ __('Edit') }}</a>
                                                                <a class="dropdown-item" onclick="return confirm('Are you sure you want to delete this item?');" href="{{ route('admin.delete.permission',$row->id) }}">{{ __('Delete') }}</a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                @endforeach
                                                @else
                                                <tr>
                                                    <td class="text-center" colspan="4">{{ __('No data available') }}</td>
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
                                </div>
                            </div>
                            <!--/Data grid/-->            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /main Section -->
    <!--/Main Body/-->
@endsection

@push('script-links')
    
@endpush

@push('scripts')
<script type="text/javascript">
    </script>
@endpush
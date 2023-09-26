@extends('layouts.backend')
@section('title','Transactions Dashboard')

@push('style-links')
    <link rel="stylesheet" href="{{asset('backend/bootstrap-datetimepicker/bootstrap-fonticon.css')}}">
    <link rel="stylesheet" href="{{asset('backend/bootstrap-datetimepicker/bootstrap-datetimepicker.css')}}">
@endpush

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
                                        <span>{{ __('Transactions') }}</span>
                                    </div>
                                    <div class="col-lg-6 dnone">
                                        <div class="group-button float-right">
                                            <button type="button" onClick="onExcelExport()" class="btn btn-theme mb0 btn-padding"><i class="fa fa-download"></i> {{ __('Excel') }}</button>
                                            <button type="button" onClick="onCSVExport()" class="btn btn-theme mb0 btn-padding"><i class="fa fa-download"></i> {{ __('CSV') }}</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Data grid-->
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-5">
                                        <div class="form-group search-box">
                                            <input id="search" name="search" type="text" class="form-control" placeholder="{{ __('Search') }}...">
                                            <button type="submit" onClick="onSearch()" class="btn search-btn">{{ __('Search') }}</button>
                                        </div>
                                    </div>
                                    <div class="col-lg-3"></div>
                                    <div class="col-lg-4">
                                        <div class="filter-form-group pull-right">
                                            <input name="start_date" id="start_date" type="text" class="form-control" placeholder="yyyy-mm-dd">
                                            <input name="end_date" id="end_date" type="text" class="form-control" placeholder="yyyy-mm-dd">
                                            <button type="submit" onClick="onFilterAction()" class="btn btn-theme">{{ __('Filter') }}</button>
                                        </div>
                                    </div>
                                </div>
                                <div id="tp_datalist">
                                    @include('backend.partials.transactions_table')
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
<script src="{{asset('backend/bootstrap-datetimepicker/bootstrap-datetimepicker.min.js')}}"></script>
<script src="{{asset('backend/pages/transactions.js')}}"></script>
@endpush

@push('scripts')
    <script>
        $(function () {
            "use strict";
            $("#start_date").datetimepicker({
                format: 'yyyy-mm-dd',
                autoclose: true,
                todayBtn: true,
                minView: 2
            });

            $("#end_date").datetimepicker({
                format: 'yyyy-mm-dd',
                autoclose: true,
                todayBtn: true,
                minView: 2
            });
        });
    </script>
@endpush
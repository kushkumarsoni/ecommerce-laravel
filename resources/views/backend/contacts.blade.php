@extends('layouts.backend')
@section('title','Contacts Enquiry Dashboard')
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
                                        <span>{{ __('Contacts Enquiry') }}</span>
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
                                    @include('backend.partials.contacts_table')
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
    <script src="{{asset('backend/pages/contacts.js')}}"></script>
@endpush

@push('scripts')
    <script type="text/javascript">
        var TEXT = [];
        TEXT['Do you really want to edit this record'] = "{{ __('Do you really want to edit this record') }}";
        TEXT['Do you really want to delete this record'] = "{{ __('Do you really want to delete this record') }}";
        TEXT['Do you really want to publish this records'] = "{{ __('Do you really want to publish this records') }}";
        TEXT['Do you really want to draft this records'] = "{{ __('Do you really want to draft this records') }}";
        TEXT['Do you really want to delete this records'] = "{{ __('Do you really want to delete this records') }}";
        TEXT['Please select action'] = "{{ __('Please select action') }}";
        TEXT['Please select record'] = "{{ __('Please select record') }}";
    </script>
@endpush
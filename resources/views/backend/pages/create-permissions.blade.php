@extends('layouts.backend')
@section('title','Create Permission Dashboard')
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
                                            <a href="{{ route('admin.all.permission')}}" class="btn warning-btn btn-list float-right"><i class="fa fa-reply"></i> {{ __('Back to List') }}</a>
                                        </div>
                                    </div>
                                </div>
                            </div>                            
                            <!--Data Entry Form-->
                            <div id="form-panel" class="card-body">
                                <form novalidate="" data-validate="parsley" id="DataEntry_formId" action="{{ route('admin.save.permission') }}" method="post">
                                    @csrf
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="group_name">{{ __('Group Name') }}<span class="red">*</span></label>
                                                <select class="form-control chosen-select parsley-validated" name="group_name" id="group_name" data-required="true">
                                                    <option value="">Select Type</option>
                                                    <option value="media" {{ $data['group_name'] == 'media' ? 'selected' :'' }}>Media</option>
                                                    <option value="ecommerce" {{ $data['group_name'] == 'ecommerce' ? 'selected' :'' }}>Ecommerce</option>
                                                    <option value="appreance" {{ $data['group_name'] == 'appreance' ? 'selected' :'' }}>Appreance</option>
                                                    <option value="review_rating" {{ $data['group_name'] == 'review_rating' ? 'selected' :'' }}>Review & Rating</option>
                                                    <option value="news_letter" {{ $data['group_name'] == 'mews_letter' ? 'selected' :'' }}>News Letter</option>
                                                    <option value="setting" {{ $data['group_name'] == 'setting' ? 'selected' :'' }}>Setting</option>
                                                    <option value="user" {{ $data['group_name'] == 'user' ? 'selected' :'' }}>User</option>                                                    
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="name">{{ __('Name') }}<span class="red">*</span></label>
                                                <input type="text" name="name" id="name" class="form-control parsley-validated" value="{{ $data['name'] }}" placeholder="permission name" data-required="true">
                                            </div>
                                        </div>
                                    </div>                                   
                                    <input type="text" name="RecordId" id="RecordId" value="{{ $data['id'] }}" class="dnone">
                                    <div class="row tabs-footer mt-15">
                                        <div class="col-lg-12">
                                            <button id="submit-form" type="submit" href="javascript:void(0);" class="btn blue-btn mr-10">{{ __('Save') }}</button>
                                            <a onClick="onListPanel()" href="javascript:void(0);" class="btn danger-btn">{{ __('Cancel') }}</a>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <!--/Data Entry Form/-->
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
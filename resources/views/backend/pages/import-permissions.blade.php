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
                                <form novalidate="" data-validate="parsley" id="DataEntry_formId" action="{{ route('admin.importExcel.permission') }}" method="post" enctype="multipart/form-data">
                                    @csrf
                                    <div class="row">                                        
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="excel_file">{{ __('Select Excel File') }}<span class="red">*</span></label>
                                                <input type="file" name="excel_file" id="excel_file" class="form-control parsley-validated" placeholder="choose file" data-required="true">
                                            </div>
                                        </div>
                                    </div>                                   
                                    
                                    <div class="row tabs-footer mt-15">
                                        <div class="col-lg-12">
                                            <button id="submit-form" type="submit" href="javascript:void(0);" class="btn blue-btn mr-10">{{ __('Upload') }}</button>
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
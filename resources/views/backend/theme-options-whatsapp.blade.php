@extends('layouts.backend')
@section('title','Theme Options Whatsapp Dashboard')
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
                                    <div class="col-lg-12">
                                        {{ __('Whatsapp') }}
                                    </div>
                                </div>
                            </div>
                            <div class="card-body tabs-area p-0">
                                @include('backend.partials.theme_options_tabs_nav')
                                <div class="tabs-body">
                                    <form id="DataEntry_formId" novalidate="" data-validate="parsley">
                                        <div class="row">
                                            <div class="col-lg-8">
                                                <div class="form-group">
                                                    <label for="whatsapp_id">{{ __('Whatsapp Phone Number') }}<span class="red">*</span></label>
                                                    <input type="number" name="whatsapp_id" id="whatsapp_id" value="{{ $datalist['whatsapp_id'] }}" placeholder="0123456789" class="form-control parsley-validated" data-required="true" />
                                                </div>
                                                <div class="form-group">
                                                    <label for="whatsapp_text">{{ __('Text')}}</label>
                                                    <input type="text" name="whatsapp_text" id="whatsapp_text" value="{{ $datalist['whatsapp_text'] }}" placeholder="Text..." class="form-control" />
                                                </div>
                                                
                                                <div class="form-group">
                                                    <label for="position">{{ __('Position') }}</label>
                                                    <select name="position" id="position" class="chosen-select form-control">
                                                        <option value="left" {{ $datalist['position'] == 'left' ? 'selected' :'' }}>Left</option>
                                                        <option value="right" {{ $datalist['position'] == 'right' ? 'selected' : '' }}>Right</option>                                                        
                                                    </select>
                                                </div>

                                                <div class="form-group">
                                                    <label for="is_publish">{{ __('Status') }}<span class="red">*</span></label>
                                                    <select name="is_publish" id="is_publish" class="chosen-select form-control">
                                                        @foreach($statuslist as $row)
                                                            <option value="{{ $row->id }}" {{ $row->id == $datalist['is_publish'] ? 'selected' : '' }}>
                                                                {{ $row->status }}
                                                            </option>
                                                        @endforeach                                                        
                                                    </select>
                                                </div>                                                
                                            </div>
                                            <div class="col-lg-4"></div>
                                        </div>
                                        <div class="row tabs-footer mt-15">
                                            <div class="col-lg-12">
                                                <a id="submit-form" href="javascript:void(0);" class="btn blue-btn">{{ __('Save') }}</a>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /main Section -->
    <!--/Main Body/-->

@endsection

@push('script-links')
    <script src="{{asset('backend/pages/theme_option_whatsapp.js')}}"></script>
@endpush

@push('scripts')
<script type="text/javascript">
    
</script>
@endpush
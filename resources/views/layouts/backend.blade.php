<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
	<title>@yield('title')</title>
	<!-- favicon -->
	<link rel="shortcut icon" href="https://aktiveheads.com/public/assets/images/ah_icon.jpg" type="image/x-icon">
	<link rel="icon" href="https://aktiveheads.com/public/assets/images/ah_icon.jpg" type="image/x-icon">
    <!-- CSS -->
	<style type="text/css">
	:root {
	  --backend-theme-color: #f25961;
	  /* --backend-theme-color: #61a402; */
	}
	</style>
    <link rel="stylesheet" href="{{asset('backend/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('backend/css/font-awesome.min.css')}}">
    <link rel="stylesheet" href="{{asset('backend/css/chosen/bootstrap-chosen.min.css')}}">
    <link rel="stylesheet" href="{{asset('backend/css/jquery.gritter.min.css')}}">
    <link rel="stylesheet" href="{{asset('backend/css/style.css')}}">
    <link rel="stylesheet" href="{{asset('backend/css/responsive.css')}}">

	@stack('style-links')
	@stack('style')

  </head>
  <body>
	<div id="wrapper" class="d-flex relative">
		<!-- Sidebar -->
		@include('backend.partials.sidebar')
		<!-- /Sidebar/ -->
		<!-- Page Content -->
		<div id="page-content-wrapper">
			<!--Top Navbar-->
			@include('backend.partials.topnav')
			<!--/Top Navbar/-->
			<!--Main Body-->
			@yield('content')	
			<!--/Main Body/-->
		</div><!-- /Page Content/ -->
	</div><!--/wrapper-->
    <!-- JS -->
	<script src="{{asset('backend/js/jquery-3.6.0.min.js')}}"></script>
	<script src="{{asset('backend/js/popper.min.js')}}"></script>
	<script src="{{asset('backend/js/bootstrap.min.js')}}"></script>
	<script src="{{asset('backend/js/jquery-ui.min.js')}}"></script>
	<script src="{{asset('backend/js/jquery.nicescroll.min.js')}}"></script>
	<script src="{{asset('backend/js/parsley.min.js')}}"></script>
	<script src="{{asset('backend/js/chosen.jquery.min.js')}}"></script>
	<script src="{{asset('backend/js/jquery.popupoverlay.min.js')}}"></script>
	<script src="{{asset('backend/js/jquery.gritter.min.js')}}"></script>
	
	@stack('script-links')

	<script type="text/javascript">
		var base_url = "{{ url('/') }}";
		var public_path = "{{ asset('') }}";
		var userid = "{{ Auth::user()->id ?? '' }}";

		@if(Session::has('msg'))
			var type = "{{ Session::get('msgType','success') }}";
			switch(type){
				case 'success':
					onSuccessMsg("{{ session('msg') }}");
				break;
				case 'error':
					onErrorMsg("{{ session('msg') }}");
				break;
			}
    	@endif

	</script>
	<script src="{{asset('backend/js/script.js')}}"></script>
	<div class="custom-popup light width-100 dnone" id="lightCustomModal">
		<div class="padding-md">
			<h4 class="m-top-none">{{ __('This is alert message') }}</h4>
		</div>
		<div class="text-center">
			<a href="javascript:void(0);" class="btn blue-btn lightCustomModal_close mr-10" onClick="onConfirm()">{{ __('Confirm') }}</a>
			<a href="javascript:void(0);" class="btn danger-btn lightCustomModal_close">{{ __('Cancel') }}</a>
		</div>
	</div>
	<a href="#lightCustomModal" class="btn btn-warning btn-small lightCustomModal_open dnone">{{ __('Edit') }}</a>
	@stack('scripts')
  </body>
</html>
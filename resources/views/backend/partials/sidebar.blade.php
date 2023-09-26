<!-- Sidebar -->
<div class="sidebar-wrapper">
  <div class="logo">
    <a href="{{ route('admin.dashboard') }}">
      @php $gtext = gtext(); @endphp     
      <img src="{{ $gtext['back_logo'] ? asset('media/'.$gtext['back_logo']) : 'https://aktiveheads.com/public/assets/images/ah-logo-black.png' }}" alt="logo">
    </a>
  </div>
  <ul class="left-navbar">
    <li>
      <a href="{{ route('admin.dashboard') }}"><i class="fa fa-tachometer"></i>Dashboard</a></li>
        <li><a href="{{ route('admin.media')}}"><i class="fa fa-picture-o"></i>Media</a></li>
        <li><a href="{{ route('admin.page') }}"><i class="fa fa-clipboard"></i>Pages</a></li>
        
        <li class="dropdown"><a class="nav-link has-dropdown" href="#" data-toggle="dropdown"><i class="fa fa-rocket"></i>Manage Order</a>
          <ul class="dropdown-menu">
            <li><a href="{{ route('admin.orders') }}">All Orders</a></li>
            {{-- <li><a href="{{ route('admin.orders') }}">Pending Order</a></li>
            <li><a href="{{ route('admin.orders') }}">Progress Order</a></li>
            <li><a href="{{ route('admin.orders') }}">Delivered Order</a></li>
            <li><a href="{{ route('admin.orders') }}">Canceled Order</a></li> --}}
          </ul>
        </li>
        <li><a href="{{ route('admin.transactions') }}"><i class="fa fa-credit-card"></i>Transactions</a></li>
        <li class="dropdown"><a class="nav-link has-dropdown" href="#" data-toggle="dropdown"><i class="fa fa-shopping-cart"></i>eCommerce</a>
          <ul class="dropdown-menu">
            <li><a href="{{ route('admin.products') }}">Products</a></li>
            <li><a href="{{ route('admin.manage-stock') }}">Manage Stock</a></li>
            <li><a href="{{ route('admin.product-categories') }}">Categories</a></li>
            <li><a href="{{ route('admin.product-sub-categories') }}">Sub Categories</a></li>
            <li><a href="{{ route('admin.brands') }}">Brands</a></li>            
            <li><a href="{{ route('admin.attributes') }}">Unit</a></li>
            <li><a href="{{ route('admin.tax') }}" >Tax</a></li>
            <li><a href="{{ route('admin.currency') }}">Currency</a></li>
            <li><a href="{{ route('admin.shipping') }}">Shipping</a></li>
            <li><a href="{{ route('admin.slider') }}">Home Slider</a></li>
            <li><a href="{{ route('admin.offer-ads') }}">Offer &amp; Ads</a></li>
            <li><a href="{{ route('admin.home-video') }}">Home Video Section</a></li>
            <li><a href="{{ route('admin.coupons') }}">Coupons</a></li> 
            <li><a href="{{ route('admin.payment-methods')}}">Payment Methods</a></li>
                    
            {{--<li class="dnone"><a href="http://localhost/organis/backend/collections">Collections</a></li>
            <li class="dnone"><a href="http://localhost/organis/backend/labels">Labels</a></li>
                                                         
            <li><a href="http://localhost/organis/backend/countries">Countries</a></li> --}}
          </ul>
        </li>
       <li class="dropdown"><a class="nav-link has-dropdown" href="#" data-toggle="dropdown"><i class="fa fa-wrench"></i>Appearance</a>
          <ul class="dropdown-menu">
            {{-- <li><a href="{{ route('admin.menu') }}">Menu</a></li>--}}
            <li><a href="{{ route('admin.theme-options') }}">Theme Options</a></li> 
          </ul>
        </li>
        <li><a href="{{ route('admin.review') }}"><i class="fa fa-recycle"></i>Review &amp; Ratings</a></li>
        <li><a href="{{ route('admin.contact') }}"><i class="fa fa-envelope"></i>Contact Enquiry</a></li>
        <li class="dropdown"><a class="nav-link has-dropdown" href="#" data-toggle="dropdown"><i class="fa fa-paper-plane"></i>Newsletters</a>
          <ul class="dropdown-menu">
            <li><a href="{{ route('admin.subscribers') }}">Subscribers</a></li>
            <li><a href="{{ route('admin.subscribe-settings') }}">Subscribe Settings</a></li>            
          </ul>
        </li>
        {{-- <li class="dropdown"><a class="nav-link has-dropdown" href="#" data-toggle="dropdown"><i class="fa fa-sitemap"></i>Marketplace</a>
          <ul class="dropdown-menu">
            <li><a href="http://localhost/organis/backend/sellers">Sellers</a></li>
            <li><a href="http://localhost/organis/backend/withdrawals">Withdrawals</a></li>
            <li><a href="http://localhost/organis/backend/seller-settings">Settings</a></li>
          </ul>
        </li>
        <li><a href="http://localhost/organis/backend/customers"><i class="fa fa-users"></i>Customers</a></li>        
        <li><a href="http://localhost/organis/backend/contact"><i class="fa fa-envelope"></i>Contact</a></li>
       
        <li class="dropdown"><a class="nav-link has-dropdown" href="#" data-toggle="dropdown"><i class="fa fa-language"></i>Languages</a>
          <ul class="dropdown-menu">
            <li><a href="http://localhost/organis/backend/languages">Languages</a></li>
            <li><a href="http://localhost/organis/backend/language-keywords">Language Keywords</a></li>
          </ul>
        </li>--}}
        <li><a id="active-settings" href="{{ route('admin.setting') }}"><i class="fa fa-cogs"></i>Settings</a></li>
        <li><a href="{{ route('admin.users') }}"><i class="fa fa-user-plus"></i>Users</a></li> 
    </ul>
  </div><!-- /Sidebar/ -->
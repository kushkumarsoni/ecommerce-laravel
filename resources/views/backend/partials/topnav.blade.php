 <!--Top Navbar-->
 <nav class="navbar-expand-lg navbar tp-header">
    <span class="menu-toggler" id="menu-toggle">
    <span class="line"></span>
    </span>
    <a href="{{ url('/') }}" target="_blank" class="view_website">View Website</a>
    
    <div class="dropdown ml-auto mt-0 mt-lg-0">
      <a href="javascript:void(0);" class="my-profile-info" data-toggle="dropdown">
        <div class="avatar">
          <img src="{{ asset('media/'.Auth::user()->photo)}}">
        </div>
        <div class="my-profile">
          <span>{{ Auth::user()->name }}</span>
          <span>{{ Auth::user()->email }}</span>
        </div>
      </a>
      <div class="dropdown-menu dropdown-menu-right my-profile-nav">
        <a class="dropdown-item" href="{{ route('admin.profile')}}">Profile</a>
        <a class="dropdown-item" href="{{ route('logout') }}"
          onclick="event.preventDefault();
          document.getElementById('logout-form').submit();">
          Logout
        </a>
        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
          <input type="hidden" name="_token" value="{{ csrf_token() }}"></form>
      </div>
    </div>
  </nav><!--/Top Navbar/-->
 <div class="content container-fluid">
      <div class="row">
          <div class="col-sm-6">
    <p>@yield('call_text') <span class="phone">@yield('call_num')</span></p>
    @yield('copyright_text') 
    </div>
    <div class="col-sm-6">
            <nav class="navbar navbar-default" role="navigation">
              <ul class="nav navbar-nav navbar-right">
                <li><a href="@yield('term_link')">@yield('term')</a></li>
                <li><a href="@yield('privacy_link')">@yield('policy')</a></li>
              </ul>
            </nav>
    </div>
   </div> <!--      row-->

  </div><!-- content container -->
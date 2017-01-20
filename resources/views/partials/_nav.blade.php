<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <div class='navbar-header'>
                <button type='button' class="navbar-toggle collapsed" data-toggle='collapse' data-target="#collapse">
                    
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    
                </button>
                
                <a class="navbar-brand"  href="#featured"><h1>@yield('brand_head') <span class="subhead">@yield('brand_subhead')</span></h1></a>
            </div> <!--navbar header-->
            <div class="collapse navbar-collapse" id="collapse">
                     <ul class="nav navbar-nav navbar-right">
      <li class='active'><a href="#featured">@yield('menu1')</a></li>
      <li ><a href="#mission">@yield('menu2')</a></li>
      <li ><a href="#services">@yield('menu3')</a></li>
      <li><a href="#staff">@yield('menu4')</a></li>
      <li><a href="#testimonials">@yield('menu5')</a></li>
    </ul>
            </div>

    </div><!--container-->

  </nav>

  <div class="carousel fade" data-ride="carousel" id="featured">
  
       <ol class="carousel-indicators">
    
       </ol>    
      
  <div class="carousel-inner fullheight">
    @yield('silder_image')
     
     
  </div> <!--      carousel inner-->
  <a class="left carousel-control" href="#featured" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
  <a class="right carousel-control" href="#featured" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
  </a>
 
 </div><!-- feautere carousle-->
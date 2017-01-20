@extends('main')

@section('title')

   {{ $header_info->title }}

@endsection

@section('brand_head')

   
   {{ $header_info->brand_head }}
  
@endsection

@section('brand_subhead')

   
   {{ $header_info->brand_subhead }}
  
@endsection

@section('menu1')

   {{ $header_info->menu1 }}

@endsection

@section('menu2')

   {{ $header_info->menu2 }}

@endsection

@section('menu3')

   {{ $header_info->menu3 }}

@endsection

@section('menu4')

   {{ $header_info->menu4 }}

@endsection

@section('menu5')

   {{ $header_info->menu5 }}

@endsection

@section('silder_image')

   @foreach($images as $image)
   
     <div class="item"><img src="{{asset('/images/' . $image->image_name)}}" alt="{{ $image->image_alt }}" ></div>
     
   @endforeach

@endsection

@section('content')

   <div class="main">
  <div class="page" id="mission">
    <div class="content container">
      <h2>{{ $mission->title }}</h2>
      <div class="row">
      {!! $mission->description !!}
      </div> 
<!--      row-->
    </div><!-- content container -->
  </div><!-- mission page -->

  <div class="page" id="services">
    <div class="content container">
      <h2>Services</h2>
      <div class="row">

      @foreach($services as $service)
        <article class="service col-md-4 col-sm-6">
          <img class="icon" src="{{asset('/images/' . $service->image)}}" alt="Icon" >
          <h3>{{ $service->title }}</h3>
          <p>{{ $service->description }}</p>
        </article>
      @endforeach

      </div><!-- row -->   
    </div><!-- content container -->
  </div><!-- services page -->

  <div class="page" id="staff">
    <div class="container-fluid">
      <h2 id="ourstaff">Our Staff</h2>
      <div class="row">
      
          @foreach($staffs as $staff)
          <div class="doctor col-lg-4">
              <div class="row">
                   <div class="photo col-xs-6 col-xs-offset-3 col-sm-3 col-sm-offset-1 col-md-2 col-md-offset-2 col-lg-4 col-lg-offset-0">
          <img class="icon" src="{{asset('/images/' . $staff->image)}}" alt="staff" >
                    </div>
                  <div class="info col-xs-8 col-xs-offset-2 col-sm-7 col-sm-offset-0 col-md-6 col-lg-8 ">
            <h3>{{ $staff->name }}</h3>
          <p>{{ $staff->description }}</p>
                    </div>
              </div>
          </div> <!-- doctor -->
          @endforeach
        
        
                   
      </div><!-- row -->
    </div><!-- container -->
  </div><!-- staff page -->

  <div class="page" id="testimonials">
    <div class="container-fluid">
      <h2>Testimonials</h2>
      <div class="row">

        @foreach($customers as $customer)

        <blockquote class="col-md-6 col-lg-3" id="{{$customer->css_id}}">
          <div class="quote">
            <span class="intro">{{$customer->intro}}</span>
            <span class="more">{{$customer->description}}</span>
            <span class="customer">{{$customer->name}}</span>
          </div>
        </blockquote>

        @endforeach
         
      </div>
    </div><!-- container -->
  </div><!-- testimonials page -->
</div><!-- main -->

@endsection

@section('call_text')

   
   {{ $footer->call_text }}
  
@endsection

@section('call_num')

   
   {{ $footer->call_num }}
  
@endsection

@section('copyright_text')

   
   {!! $footer->copyright_text !!}
  
@endsection

@section('term_link')

   
   {{ $footer->term_link }}
  
@endsection

@section('term')

   
   {{ $footer->term }}
  
@endsection
  

@section('privacy_link')

   
   {{ $footer->privacy_link }}
  
@endsection
  

@section('policy')

   
   {{ $footer->privacy }}
  
@endsection

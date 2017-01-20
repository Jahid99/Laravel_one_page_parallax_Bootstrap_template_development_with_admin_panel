<!DOCTYPE html>
<html lang="en">
<head>
@include('partials._head')
</head>
  <body>

  <header>
  @include('partials._nav')
  </header>

  
    @yield('content')


    <footer>
     @include('partials._footer')
     </footer>

     

     @include('partials._javascript')

    @yield('scripts')

  </body>

</html>
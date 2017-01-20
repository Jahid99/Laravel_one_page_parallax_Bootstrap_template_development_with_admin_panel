@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="box">
                <div class="col-lg-12">
                    <Strong><i>Click on the links inside the tabbed menus to edit:</i></strong>
                    @if (Session::has('success'))
                                <div class="alert alert-success" role="alert">
                                    <center><strong>Success:</strong>{{ Session::get('success') }}</center>
                                </div>
                            @endif
                  <br><br><ul class="tab">
                              <li><a href="javascript:void(0)" class="tablinks" onclick="openCity(event, 'London')"  id="defaultOpen">Header & Footer</a></li>
                              <li><a href="javascript:void(0)" class="tablinks" onclick="openCity(event, 'Paris')">Image sliders</a></li>
                        </ul>
    <div id="London" class="tabcontent">
      <h2 class="intro-text text-center">
                        <strong>Edit Header & Footer Information</strong>
                    </h2>
                    <hr>
                  
                    {!! Form::model($header_info->toArray()+$footer->toArray() ,array('url' => '/update', 'method' => 'put')) !!}
                        <div class="row">

            

                            <div class="form-group col-lg-6 col-lg-offset-3">
                            {{ Form::label('title', 'Site Title:') }}
                            {{ Form::text('title', null, array('class' => 'form-control', 'required' => '', 'maxlength' => '255')) }}
                            </div>

                            <div class="clearfix"></div>

                            <div class="form-group col-lg-6 col-lg-offset-3">
                            {{ Form::label('menu1', '1st menu name:') }}
                            {{ Form::text('menu1', null, array('class' => 'form-control', 'required' => '', 'maxlength' => '255')) }}
                            </div>

                            <div class="clearfix"></div>

                            <div class="form-group col-lg-6 col-lg-offset-3">
                            {{ Form::label('menu2', '2nd menu name:') }}
                            {{ Form::text('menu2', null, array('class' => 'form-control', 'required' => '', 'maxlength' => '255')) }}
                            </div>

                            <div class="clearfix"></div>

                            <div class="form-group col-lg-6 col-lg-offset-3">
                            {{ Form::label('menu3', '3rd menu name:') }}
                            {{ Form::text('menu3', null, array('class' => 'form-control', 'required' => '', 'maxlength' => '255')) }}
                            </div>

                            <div class="clearfix"></div>

                            <div class="form-group col-lg-6 col-lg-offset-3">
                            {{ Form::label('menu4', '4th menu name:') }}
                            {{ Form::text('menu4', null, array('class' => 'form-control', 'required' => '', 'maxlength' => '255')) }}
                            </div>

                            <div class="clearfix"></div>

                            <div class="form-group col-lg-6 col-lg-offset-3">
                            {{ Form::label('menu5', '5th menu name:') }}
                            {{ Form::text('menu5', null, array('class' => 'form-control', 'required' => '', 'maxlength' => '255')) }}
                            </div>

                            <div class="clearfix"></div>

                            <div class="form-group col-lg-6 col-lg-offset-3">
                              {{ Form::label('call_num', 'Phone Number:') }}
                            {{ Form::text('call_num', null, array('class' => 'form-control', 'required' => '', 'maxlength' => '255')) }}
                            </div>

                            <div class="clearfix"></div>

                            <div class="form-group col-lg-6 col-lg-offset-3">
                              {{ Form::label('term_link', 'Term Link:') }}
                            {{ Form::text('term_link', null, array('class' => 'form-control', 'required' => '', 'maxlength' => '255')) }}
                            </div>

                            <div class="clearfix"></div>

                            <div class="form-group col-lg-6 col-lg-offset-3">
                              {{ Form::label('privacy_link', 'Privacy Link:') }}
                            {{ Form::text('privacy_link', null, array('class' => 'form-control', 'required' => '', 'maxlength' => '255')) }}
                            </div>

                            <div class="clearfix"></div>

                            
                            
                            <div class="form-group col-lg-6 col-lg-offset-3">
                                {{ Form::submit('Update', array('class' => 'btn btn-success btn-lg btn-block', 'style' => 'margin-top: 20px;')) }}
                            </div>

                        </div>
                    {!! Form::close() !!}
    </div>

                    <div id="Paris" class="tabcontent">

                     <h2 class="intro-text text-center">
                                            <strong>Edit image sliders</strong>
                                        </h2>
                                        <hr>


                                        <table class="table">
                        <thead>
                          <tr>
                            <th>No</th>
                            <th>Image</th>
                            <th>Image alt</th>
                            <th>Edit</th>
                            
                          </tr>
                        </thead>
                        <tbody>
                        @php
                            $i = 0
                        @endphp
                        @foreach($images as $image)
                          <tr>
                            <td>{{ ++$i }}</td>
                            <td><img src="{{asset('/images/' . $image->image_name)}}"  height="100px" width="150px" ></td>
                            <td>{{ $image->image_alt }}</td>
                            <td><a href="{{ route('edits.edit',array($i)) }}">Edit</a></td>
                          </tr>
                        @endforeach

                        </tbody>
                      </table>

                    </div>

                <script>
                function openCity(evt, cityName) {
                    var i, tabcontent, tablinks;
                    tabcontent = document.getElementsByClassName("tabcontent");
                    for (i = 0; i < tabcontent.length; i++) {
                        tabcontent[i].style.display = "none";
                    }
                    tablinks = document.getElementsByClassName("tablinks");
                    for (i = 0; i < tablinks.length; i++) {
                        tablinks[i].className = tablinks[i].className.replace(" active", "");
                    }
                    document.getElementById(cityName).style.display = "block";
                    evt.currentTarget.className += " active";
                }
                // Get the element with id="defaultOpen" and click on it
                document.getElementById("defaultOpen").click();
                </script>
              
            </div>               
        </div>
    </div>
</div>

@endsection

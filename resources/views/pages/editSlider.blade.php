@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="box">
            <div class="col-lg-12">


            	{!! Form::model($image, ['route' => ['edits.update', $image->id], 'method' => 'PUT','files' => true]) !!}

            	<div class="item"><img src="{{asset('/images/' . $image->image_name)}}" alt="{{ $image->image_alt }}" height="100px" width="100px"></div>

				{{ Form::label('image_name', 'Upload Slider Image', ['class' => 'form-spacing-top']) }}
				{{ Form::file('image_name') }}

            	{{ Form::label('image_alt', 'Image Alt:') }}
				{{ Form::text('image_alt', null, ["class" => 'form-control input-lg']) }}<br>
			

				{{ Form::submit('Save Changes', ['class' => 'btn btn-success btn-block']) }}

				{!! Form::close() !!}
   			</div>
       	</div>
    </div>
</div>

@endsection
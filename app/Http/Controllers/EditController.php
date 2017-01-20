<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Images;

use Image;

use Storage;

use App\Header_info;

use App\Footer;

use Session;

class EditController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
         $images = Images::find($id);
         return view('pages.editSlider')->withImage($images);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
           // Validate the data
        $images = Images::find($id);

        $images->image_alt = $request->input('image_alt');


        if ($request->hasFile('image_name')) {
          $image = $request->file('image_name');
          $filename = time() . '.' . $image->getClientOriginalExtension();
          $location = public_path('images/' . $filename);
          Image::make($image)->resize(800, 400)->save($location);
         $oldFilename = $images->image_name;

          $images->image_name = $filename;

          Storage::delete($oldFilename);
        }


        $images->save();

         $header_infos = Header_info::find(1);
         $footer = Footer::find(1);
         $images = Images::all();
         Session::flash('success', 'Image updated successfully.');
         return redirect('/admin')->withHeader_info($header_infos)->withFooter($footer)->withImages($images);


        //return view('pages.editSlider');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}

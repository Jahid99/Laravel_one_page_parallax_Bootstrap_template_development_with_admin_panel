<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Header_info;

use App\Footer;

use Session;

use App\Images;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
         $header_infos = Header_info::find(1);
         $footer = Footer::find(1);
         $images = Images::all();
         return view('home')->withHeader_info($header_infos)->withFooter($footer)->withImages($images);
    }
    public function showblank()
    {
        
    }
    public function update(Request $request, $id=1)
    {
        $h_i = Header_info::find($id);
        $h_i->title = $request->title;
        $h_i->menu1 = $request->menu1;
        $h_i->menu2 = $request->menu2;
        $h_i->menu3 = $request->menu3;
        $h_i->menu4 = $request->menu4;
        $h_i->menu5 = $request->menu5;
        $h_i->save();

        $footer = Footer::find($id);
        $footer->call_num = $request->call_num;
        $footer->term_link = $request->term_link;
        $footer->privacy_link = $request->privacy_link;
        $footer->save();

        Session::flash('success', 'Informations updated successfully!');
        $header_infos = Header_info::find(1);
        $footer = Footer::find(1);

        return redirect('/admin')->withHeader_info($header_infos)->withFooter($footer);
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Header_info;

use App\Images;

use App\Mission;

use App\Service;

use App\Staff;

use App\Customer;

use App\Footer;

class Header_infoController extends Controller
{

    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $header_infos = Header_info::find(1);
        $images = Images::all();
        $missions = Mission::find(1);
        $services = Service::all();
        $staff = Staff::all();
        $customers = Customer::all();
        $footer = Footer::find(1);
        return view('pages.welcome')->withHeader_info($header_infos)->withImages($images)->withMission($missions)->withServices($services)->withStaffs($staff)->withCustomers($customers)->withFooter($footer);
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
        //
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
        //
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

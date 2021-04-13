<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\University;
use App\Course;

class UniversityController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index()
    {
        $all_universities = University::all()->groupBy('lang');
        return view('backend.pages.university.index')->with(['all_universities' => $all_universities]);
    }

    public function create()
    {
        return view('backend.pages.university.add');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|string|max:150',
            'description' => 'required',
            'facilities' => 'required',
            'location' => 'required|string|max:191',
            'status' => 'required|string|max:191',
            'image' => 'required'
        ]);
        $row = University::create($request->all());
        return redirect()->route('admin.university')->with([
            'msg' => 'New University Added...',
            'type' => 'success'
        ]);
    }

    public function edit($id)
    {
        $university = University::findOrFail($id);
        return view('backend.pages.university.edit',compact('university'));
    }

    public function update(Request $request)
    {
         $this->validate($request,[
            'university_id' => 'required|numeric',
            'name' => 'required|string|max:191',
            'description' => 'required',
            'facilities' => 'required',
            'location' => 'required',
            'image' => 'nullable',
            'status' => 'required|string',
        ]);
        University::find($request->university_id)->update($request->all());
        return redirect()->back()->with(['msg' => 'University Update Success...','type'=>'success']);
    }

    public function delete($id)
    {
        $row = University::find($id);
        $row->delete();     // associated model also deleted from University Model
         return redirect()->back()->with([
            'msg' => 'University Delete Success...',
            'type' => 'danger'
        ]);
    }


}

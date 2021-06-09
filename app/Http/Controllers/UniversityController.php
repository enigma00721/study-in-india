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

    public function addCourse($id)
    {
        // if wrong url id put returns not found 
        $university = University::findOrFail($id);
        $courses = Course::select('title','id')->get();
        $mycourses = $university->courses;

        return view('backend.pages.university.add-course',compact('courses','id','mycourses'));
    }

    public function storeCourse(Request $request)
    {
        $this->validate($request,[
            'fee' => 'required|numeric',
            'seats' => 'required|numeric',
            'course_id' => 'required|numeric',
            'university_id' => 'required|numeric',
        ]);
        $university = University::find($request->get('university_id'));

        if(!$university)
            return redirect()->back()->with(['msg'=>"No University Found",'type'=>'danger']);
        else{
            $university->courses()->attach($request->course_id, ['fee'=> $request->fee ,'seats'=>$request->seats]);;
            return redirect()->back()->with(['msg'=>"Course Added To University Successfully!",'type'=>'success']);
        }
    }

    public function updateCourse(Request $request,$id)
    {
         $this->validate($request,[
            'fee' => 'required|numeric',
            'seats' => 'required|numeric',
            'modal_course_id' => 'required|numeric',
        ]);
        $university = University::findOrFail($id);
        $university->courses()->updateExistingPivot($request->modal_course_id , ['seats'=>$request->seats,'fee'=>$request->fee],false);
        
        return redirect()->back()->with(['msg' => 'University Update Success...','type'=>'success']);
    }

    public function deleteCourse($id,$courseId)
    {
        $university = University::findOrFail($id);
        // delete relationship data
        if($university->courses()->detach($courseId))
            return redirect()->back()->with(['msg'=>"Course Deleted Successfully!",'type'=>'success']);
        else 
            return redirect()->back()->with(['msg'=>"No University Found",'type'=>'danger']);
    }

}

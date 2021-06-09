<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\University;
use App\Discipline;
use App\Level;
use App\Course;

class CourseController extends Controller
{
     public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index()
    {
        $courses = Course::with(['universities','level'])->get();
        // dd($courses);
        return view('backend.pages.course.index',compact('courses'));
    }

    public function create()
    {
        
        $disciplines = Discipline::all();
        $levels = Level::all();
        return view('backend.pages.course.add',compact('disciplines','levels'));

    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required|string|max:150',
            'elligibility' => 'required',
            'description' => 'required',
            'course_duration' => 'required',
            'discipline_id' => 'required',
            'level_id' => 'required',
            'status' => 'required|string|max:191',
        ]);
        $course = Course::create($request->all());
        if(!$course)
            return redirect()->route('admin.university')->with([
                'msg'=>'Course Could Not Be Added!',
                'type'=>'danger'
            ]);
        return redirect()->route('admin.course')->with([
            'msg' => 'New Course Added...',
            'type' => 'success'
        ]);
    }

    public function edit($id)
    {
        $course = Course::findOrFail($id);
        $disciplines = Discipline::all();
        $levels = Level::all();
        return view('backend.pages.course.edit',compact('course','disciplines','levels'));
    }

    public function update(Request $request)
    {
        $this->validate($request, [
            'course_id'=>'required|numeric',
            'title' => 'required|string|max:150|unique:courses,title,'.$request->get('course_id'),
            'elligibility' => 'required',
            'description' => 'required',
            'course_duration' => 'required',
            'discipline_id' => 'required',
            'level_id' => 'required',
            'status' => 'required|string|max:150',
        ]);
        Course::find($request->course_id)->update($request->all());
        return redirect()->route('admin.course')->with(['msg' => 'Course Update Success...','type'=>'success']);

    }

    public function delete($id)
    {
        // dd($id);
        $row = Course::find($id)->delete();
         return redirect()->back()->with([
            'msg' => 'Course Delete Success...',
            'type' => 'danger'
        ]);
    }





}

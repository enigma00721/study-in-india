<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Discipline;


class DisciplineController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index(){
        $all_disciplines = Discipline::all()->groupBy('lang');
        // dd($all_disciplines);
        return view('backend.pages.discipline.index')->with(['all_disciplines' => $all_disciplines]);
    }

    public function store(Request $request){
        // dd($request->all());
        $this->validate($request, [
            'title' => 'required|string|max:150',
            'lang' => 'required|string|max:191',
            'status' => 'required|string|max:191'
        ]);
        $row = Discipline::create($request->all());
        if($row){
            return redirect()->back()->with([
                'msg' => 'New Discipline Added...',
                'type' => 'success'
                ]);
        }else{
           return redirect()->back()->with([
                'msg' => 'Failed To Add New Discipline...',
                'type' => 'error'
                ]); 
        }
    }

    public function update(Request $request)
    {
        $this->validate($request,[
            'title' => 'required|string|max:191',
            'status' => 'required|string|max:191'
        ]);

        $row = Discipline::find($request->id);
        $row->update([
            'title' => $request->title,
            'status' => $request->status,
        ]);

        return redirect()->back()->with([
            'msg' => 'Discipline Update Success...',
            'type' => 'success'
        ]);
    }

    public function delete($id)
    {
        Discipline::find($id)->delete();
        return redirect()->back()->with([
            'msg' => 'Discipline Delete Success...',
            'type' => 'danger'
        ]);
    }

}

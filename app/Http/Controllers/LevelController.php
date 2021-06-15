<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Level;

class LevelController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index(){
        // dd('nice');
        $all_levels = Level::all()->groupBy('lang');
        return view('backend.pages.level.index')->with(['all_levels' => $all_levels]);
    }

    public function store(Request $request){
        $position = ((int)Level::count()) + 1;
        $request->request->add([
            'position' => $position
        ]);

        $this->validate($request, [
            'title' => 'required|string|max:150',
            'lang' => 'required|string|max:191',
            'status' => 'required|string|max:191',
        ]);

        $row = Level::create($request->all());
        if($row){
            return redirect()->back()->with([
                'msg' => 'New Level Added...',
                'type' => 'success'
                ]);
        }else{
           return redirect()->back()->with([
                'msg' => 'Failed To Add New Level...',
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

        $row = Level::find($request->id);
        $row->update([
            'title' => $request->title,
            'status' => $request->status,
        ]);

        return redirect()->back()->with([
            'msg' => 'Level Update Success...',
            'type' => 'success'
        ]);
    }

    public function orderUpdate(Request $request)
    {
        foreach ($request->order as $order) {

            Level::where('id',$order['id'])
                ->update([
                    'position'=> $order['position'],
                ]);

        }
        return response()->json(['status'=>'success','order_message'=>'Level Order Updated Successfully!']);
    }

    public function delete($id)
    {
        $row = Level::find($id);
        // dd($row->courses);
        // $row->courses->each->delete();
        $row->delete();
          return redirect()->back()->with([
                'msg' => 'Level Delete Success...',
                'type' => 'danger'
            ]);

        // if($row->delete()){
        //     return redirect()->back()->with([
        //         'msg' => 'Level Delete Success...',
        //         'type' => 'danger'
        //     ]);
        // }else{
        //     return redirect()->back()->with([
        //         'msg' => 'Failed To Delete Level...',
        //         'type' => 'error'
        //         ]); 
        // }
    }

}

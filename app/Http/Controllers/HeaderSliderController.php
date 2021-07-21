<?php

namespace App\Http\Controllers;

use App\HeaderSlider;
use App\Language;
use App\University;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class HeaderSliderController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index(){

        $all_header_slider = HeaderSlider::all()->groupBy('lang');
        $all_language = Language::all();
        $universities = University::select('id','name')->orderBy('id','desc')->get();
        // dd($universities);
        return view('backend.pages.home.header')->with(['universities'=>$universities, 'all_header_slider' => $all_header_slider,'all_languages' => $all_language]);
    }

    public function store(Request $request){

        // dd($request->all());
        $this->validate($request,[
            'title' => 'required|string|max:191',
            'btn_01_text' => 'required|string|max:191',
            'btn_01_url' => 'nullable|string|max:191',
            'btn_01_status' => 'nullable|string|max:191',
            'description' => 'required|string',
            'image' => 'required|string|max:191',
            'lang' => 'required|string|max:191'
        ]);
        if(!$request->has('btn_01_status'))
            $request->request->add(['btn_01_status'=>'off']);

        $university = University::where('name',$request->get('title'))->first();
        $universityId = $university->id; 

        $universityName = $this->checkUniversity($universityId);
        if($universityName == 'fail')
            return redirect()->back()->with(['msg'=>'Could Not Find University By That Name!','type'=>'danger']);

        $fullUrl = $this->getFullUrlSlug($universityName,$universityId);
        $request->merge(['btn_01_url' => $fullUrl]);

        HeaderSlider::create($request->all());

        return redirect()->back()->with(['msg' => 'New Header Slider Added...','type' => 'success']);
    }

    public function update(Request $request){
        // dd($request->all());
        $this->validate($request,[
            'edit_title' => 'required|string|max:191',
            'btn_01_text' => 'required|string|max:191',
            'btn_01_url' => 'nullable|string|max:191',
            'btn_01_status' => 'nullable|string|max:191',
            'description' => 'required|string',
            'image' => 'required|string|max:191',
            'lang' => 'required|string|max:191'
        ]);
        if(!$request->has('btn_01_status'))
            $request->request->add(['btn_01_status'=>'off']);
        
        // $universityId = $request->get('btn_01_url'); 
        $university = University::where('name',$request->get('edit_title'))->first();
        $universityId = $university->id; 
        // dd($universityId);

        $universityName = $this->checkUniversity($universityId);
        if($universityName == 'fail')
            return redirect()->back()->with(['msg'=>'Could Not Find University By That Id!','type'=>'danger']);

        $fullUrl = $this->getFullUrlSlug($universityName,$universityId);
        $request->merge(['btn_01_url' => $fullUrl]);
        $request->merge(['title' => $request->edit_title]);
        // dd($fullUrl);

        HeaderSlider::find($request->id)->update($request->all());

        return redirect()->back()->with(['msg' => 'Header Slider Updated...','type' => 'success']);
    }

    public function checkUniversity($id)
    {
        $university = University::find($id);
        if(!$university) return 'fail';
        else return $university->name;
    }

    public function getFullUrlSlug($name,$id)
    {
        return $id . '/' . Str::slug($name) . '/university';
    }

    public function delete($id)
    {
        HeaderSlider::find($id)->delete();
        return redirect()->back()->with([
            'msg' => 'Header Slider Post Delete Success...',
            'type' => 'danger'
        ]);
    }
}

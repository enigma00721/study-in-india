<?php

namespace App\Http\Controllers;

use App\Faq;
use App\Language;
use Illuminate\Http\Request;

class FaqController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    public function index(){
        $all_faqs = Faq::all()->groupBy('lang');
        $all_language = Language::all();
        return view('backend.pages.faqs')->with(['all_faqs' => $all_faqs,'all_languages' => $all_language]);
    }
    public function store(Request $request){
        $this->validate($request,[
            'title' => 'required|string',
            'description' => 'required|string',
            'lang' => 'required|string',
            'status' => 'nullable|string|max:191',
        ]);

        Faq::create([
            'title' => $request->title,
            'description' => $request->description,
            'lang' => $request->lang,
            'status' => $request->status,
        ]);


        return redirect()->back()->with(['msg' => 'New Faq Added...','type' => 'success']);
    }

    public function update(Request $request){

        $this->validate($request,[
            'title' => 'required|string',
            'description' => 'required|string',
            'lang' => 'required|string',
            'status' => 'nullable|string|max:191',
        ]);

        Faq::find($request->id)->update([
            'title' => $request->title,
            'description' => $request->description,
            'status' => $request->status,
            'lang' => $request->lang,
        ]);

        return redirect()->back()->with(['msg' => 'Faq Updated...','type' => 'success']);
    }

    public function delete($id){
        $row = Faq::find($id);
        $row->delete();
        return redirect()->back()->with(['msg' => 'Delete Success...','type' => 'danger']);
    }
}

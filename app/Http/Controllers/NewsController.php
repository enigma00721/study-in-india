<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\BlogCategory;
use App\News;
use Auth;

class NewsController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function all_news()
    {
        $all_news = News::all();
        return view('backend.pages.news.allnews',compact('all_news'));
    }

    public function add_news()
    {
        $all_category = BlogCategory::where('lang',get_default_language())->get();
        return view('backend.pages.news.news',compact('all_category'));
    }
    
    public function store_news(Request $request)
    {
         $this->validate($request,[
           'category' => 'required',
           'blog_content' => 'required',
           'tags' => 'required',
           'excerpt' => 'required',
           'title' => 'required',
           'image' => 'nullable|string|max:191',
        ]);

        // add slug to $requuest
        $request->request->add(['slug' => str_slug($request->title)]); //add request
        News::create([
            'blog_categories_id' => $request->category,
            'content' => $request->blog_content,
            'slug' => $request->slug,
            'tags' => $request->tags,
            'title' => $request->title,
            'excerpt' => $request->excerpt,
            'image' => $request->image,
            'user_id' => Auth::user()->id
        ]);
        return redirect()->route('admin.news.list')->with([
            'msg' => 'News Post Added...',
            'type' => 'success'
        ]);
    }

    public function edit_news($id)
    {
        $row = News::find($id);
        $all_category = BlogCategory::where('lang',get_default_language())->get();
        return view('backend.pages.news.edit',compact('row','all_category'));
    }
    public function update_news(Request $request,$id)
    {
        $this->validate($request,[
            'category' => 'required',
            'blog_content' => 'required',
            'tags' => 'required',
            'title' => 'required',
            'excerpt' => 'required',
            'image' => 'nullable|string|max:191',
        ]);
        
        $request->request->add(['slug' => str_slug($request->title)]); //add request

        News::where('id',$id)->update([
            'blog_categories_id' => $request->category,
            'slug' => $request->slug,
            'content' => $request->blog_content,
            'tags' => $request->tags,
            'excerpt' => $request->excerpt,
            'title' => $request->title,
            'image' => $request->image
        ]);

        return redirect()->back()->with([
            'msg' => 'News Post updated...',
            'type' => 'success'
        ]);
    }

    public function delete_news($id)
    {
        $row = News::find($id);
        $row->delete();
        return redirect()->back()->with([
            'msg' => 'News Post Deleted...',
            'type' => 'danger'
        ]);
    }
}


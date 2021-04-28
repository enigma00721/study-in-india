<?php

namespace App\Http\Controllers;

use App\Language;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Artisan;

class HomePageController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function home_01_counterup(){
        return view('backend.pages.home.home-01.counterup');
    }
    public function home_01_update_counterup(Request $request){

        $this->validate($request ,[
            'home_01_counterup_bg_image' => 'nullable|string|max:191'
        ]);
        $save_data = [
            'home_01_counterup_bg_image'
        ];
        foreach ($save_data as $item){
            if (empty($request->$item)){continue;}
            update_static_option($item,$request->$item);
        }

        return redirect()->back()->with([
            'msg' => 'Settings Updated ...',
            'type' => 'success'
        ]);
    }
    public function home_01_about_us(){
        return view('backend.pages.home.home-01.about-us');
    }

    public function home_01_update_about_us(Request $request){

        $all_language = Language::all();

        foreach ($all_language as $lang){
            $this->validate($request,[
                'home_page_01_'.$lang->slug.'_about_us_title' => 'nullable|string|max:191',
                'home_page_01_'.$lang->slug.'_about_us_description' => 'nullable|string',
                'home_page_01_'.$lang->slug.'_about_us_button_title' => 'nullable|string|max:191',
                'home_page_01_'.$lang->slug.'_about_us_button_url' => 'nullable|string|max:191',
                'home_page_01_'.$lang->slug.'_about_us_signature_text' => 'nullable|string|max:191',
                'home_page_01_'.$lang->slug.'_about_us_quote_box_title' => 'nullable|string|max:191',
                'home_page_01_'.$lang->slug.'_about_us_quote_box_description' => 'nullable|string|max:191',
                'home_page_01_'.$lang->slug.'_about_us_experience_title' => 'nullable|string|max:191',
                'home_page_01_'.$lang->slug.'_about_us_experience_year' => 'nullable|string|max:191',
                'home_page_01_'.$lang->slug.'_about_us_experience_background_image' => 'nullable|string|max:191',
                'home_page_01_'.$lang->slug.'_about_us_right_image' => 'nullable|string|max:191',
                'home_page_01_'.$lang->slug.'_about_us_background_image' => 'nullable|string|max:191',
                'home_page_02_'.$lang->slug.'_about_us_background_image' => 'nullable|string|max:191',
                'home_page_01_'.$lang->slug.'_about_us_signature_image' => 'nullable|string|max:191',
            ]);
            $save_data = [
                'home_page_01_'.$lang->slug.'_about_us_title',
                'home_page_01_'.$lang->slug.'_about_us_description',
                'home_page_01_'.$lang->slug.'_about_us_button_title',
                'home_page_01_'.$lang->slug.'_about_us_button_url',
                'home_page_01_'.$lang->slug.'_about_us_signature_text',
                'home_page_01_'.$lang->slug.'_about_us_quote_box_description',
                'home_page_01_'.$lang->slug.'_about_us_experience_title',
                'home_page_01_'.$lang->slug.'_about_us_experience_year',
                'home_page_01_'.$lang->slug.'_about_us_quote_box_title',
                'home_page_01_'.$lang->slug.'_about_us_signature_image',
                'home_page_01_'.$lang->slug.'_about_us_background_image',
                'home_page_02_'.$lang->slug.'_about_us_background_image',
                'home_page_01_'.$lang->slug.'_about_us_right_image',
                'home_page_01_'.$lang->slug.'_about_us_experience_background_image'
            ];
            foreach ($save_data as $item){
                if (empty($request->$item)){continue;}
                update_static_option($item,$request->$item);
            }

            $_about_us_button_status = 'home_page_01_'.$lang->slug.'_about_us_button_status';
            update_static_option('home_page_01_'.$lang->slug.'_about_us_button_status',$request->$_about_us_button_status);

        }

        return redirect()->back()->with([
            'msg' => 'Settings Updated ...',
            'type' => 'success'
        ]);
    }

    public function home_01_testimonial(){
        return view('backend.pages.home.home-01.testimonial');
    }
    public function home_01_update_testimonial(Request $request){

        $this->validate($request,[
           'home_01_testimonial_bg' => 'nullable|string|max:191',
           'home_03_testimonial_bg' => 'nullable|string|max:191'
        ]);
        $save_data = [
            'home_01_testimonial_bg',
            'home_03_testimonial_bg'
        ];
        foreach ($save_data as $item){
            if (empty($request->$item)){continue;}
            update_static_option($item,$request->$item);
        }

        return redirect()->back()->with([
            'msg' => 'Settings Updated ...',
            'type' => 'success'
        ]);
    }



    
    public function home_01_section_manage(){
        return view('backend.pages.section-manage');
    }
    public function home_01_update_section_manage(Request $request){

        $this->validate($request,[
            'home_page_key_feature_section_status' => 'nullable|string',
            'home_page_about_us_section_status' => 'nullable|string',
            'home_page_counterup_section_status' => 'nullable|string',
            'home_page_service_section_status' => 'nullable|string',
            'home_page_recent_work_section_status' => 'nullable|string',
            'home_page_testimonial_section_status' => 'nullable|string',
            'home_page_brand_logo_section_status' => 'nullable|string',
            'home_page_support_bar_section_status' => 'nullable|string',
            'home_page_team_member_section_status' => 'nullable|string',
            'home_page_newsletter_section_status' => 'nullable|string',
            ]);

            update_static_option('home_page_newsletter_section_status',$request->home_page_newsletter_section_status);
            update_static_option('home_page_service_section_status',$request->home_page_service_section_status);
            update_static_option('home_page_key_feature_section_status',$request->home_page_key_feature_section_status);
            update_static_option('home_page_counterup_section_status',$request->home_page_counterup_section_status);
            update_static_option('home_page_testimonial_section_status',$request->home_page_testimonial_section_status);
            update_static_option('home_page_brand_logo_section_status',$request->home_page_brand_logo_section_status);
            update_static_option('home_page_support_bar_section_status',$request->home_page_support_bar_section_status);

        Artisan::call('route:clear');
        Artisan::call('view:clear');
        Artisan::call('config:clear');
        Artisan::call('cache:clear');

        return redirect()->back()->with([
            'msg' => 'Settings Updated ...',
            'type' => 'success'
        ]);
    }
   
 

    public function home_01_newsletter()
    {
        return view('backend.pages.home.home-01.newsletter');
    }

    public function home_01_update_newsletter(Request $request){
        $all_language = Language::all();
        foreach ($all_language as $lang){
            $this->validate($request,[
                'home_page_01_'.$lang->slug.'_newsletter_area_title' => 'nullable|string',
                'home_page_01_'.$lang->slug.'_newsletter_area_description' => 'nullable|string',
            ]);
            $field_name = 'home_page_01_'.$lang->slug.'_newsletter_area_title';
            $field_name_two = 'home_page_01_'.$lang->slug.'_newsletter_area_description';
            update_static_option($field_name,$request->$field_name);
            update_static_option($field_name_two,$request->$field_name_two);
        }

        return redirect()->back()->with([
            'msg' => 'Settings Updated ...',
            'type' => 'success'
        ]);
    }

    
}

@php  $static_page_list = ['About','Service','FAQ','Team','Works','Price Plan','Blog','Contact','Career With Us','Events','Knowledgebase']; @endphp

{{-- remove this later on --}}
{{-- @if(!empty(get_static_option('home_page_support_bar_section_status')))
    <div class="topbar-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="topbar-inner">
                        <div class="left-contnet">
                            <ul class="social-icon">
                                @foreach($all_social_item as $data)
                                <li><a href="{{$data->url}}"><i class="{{$data->icon}}"></i></a></li>
                                 @endforeach
                            </ul>
                        </div>
                        <div class="right-contnet">
                            @if(!empty($top_menu->content))
                            <ul class="info-menu">
                                @php
                                    $menu_content = json_decode($top_menu->content);
                                @endphp
                                @foreach($menu_content as $data)
                                    @php $link = (in_array($data->menuTitle,$static_page_list)) ? url('/').'/'.get_static_option(strtolower($data->menuTitle).'_page_slug') :  str_replace('[url]',url('/'),$data->menuUrl) @endphp
                                    <li><a href="{{$link}}"> @if(in_array($data->menuTitle,$static_page_list)) {{get_static_option(strtolower($data->menuTitle).'_page_'.get_user_lang().'_name')}} @else {{__($data->menuTitle)}} @endif</a></li>
                                @endforeach
                            </ul>
                            @endif
                            <select id="langchange">
                                @foreach($all_language as $lang)
                                    <option @if(get_user_lang() == $lang->slug) selected @endif value="{{$lang->slug}}">{{$lang->name}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endif --}}
@section('style')
<style>
    .search-form #search_btn{
        border-radius: 20px 20px;
    } 
    .search-form #submit_btn{
        border-radius: 20px;
    } 
    .header-area-wrapper .right-content-area{
        background-position: top right;
        background-repeat: no-repeat;
        padding: 60px 150px 60px 60px;
        -webkit-box-shadow: 0 0 15px rgb(0 0 0 / 2%);
        box-shadow: 0 0 15px rgb(0 0 0 / 2%);
    }
    .right-content-area .title{
        font-size: 30px;
        line-height: 46px;
        font-weight: 700;
        margin-bottom: 15px;
    }
    .overlay {
        background-color: rgba(0, 0, 0, 0.4);
    }
    .header-inner {
        /* height: 338px; */
        position: relative;
        overflow: hidden;
    }
    .header-bg{
        max-height: 70vh;
    }
   
    #marquee li{
        margin-right: 20px;
        color: black;
        display: inline;
        list-style: none;
        color: #fff;
    }
    #marquee li::before {
        content: "•"; 
    }
    .our-cover-area .sub-title{
        font-size: 18px;
        text-align: center;
        line-height: 34px;
        font-weight: 400;
        letter-spacing: .3px;
    }
    .our-cover-area .form-inline{
        display: flex;
        justify-content: space-between;
        /* width: 20%; */
    }
    .our-cover-area .form-control{
        border-radius: 20px;
    }
    .our-cover-area .btn{
        border-radius:20px;
    }
    .our-cover-area .form-inline {
        position: relative
    }
    .our-cover-area .form-inline i {
          position: absolute;
            left: 15px;
            top: 40px;
            color: gray;
    }

</style>
@endsection


{{-- <div class="info-bar-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="info-bar-inner" style="display: flex;justify-content:space-between;">
                    <div class="logo-wrapper desktop-logo">
                        <a href="{{url('/')}}" class="logo">
                            @php
                                $site_logo = get_attachment_image_by_id(get_static_option('site_logo'),"full",false);
                            @endphp
                            @if (!empty($site_logo))
                                <img src="{{$site_logo['img_url']}}" alt="site logo">
                            @endif
                        </a>
                    </div>
                    <div class=" widget-area widget_search">
                        <form action="" method="get" class="search-form">
                            <div class="form-group">
                                <input type="text" name="search" placeholder="Search" class="form-control" id="search_btn">
                            </div>
                            <button id="submit_btn" class="submit-btn" type="submit"><i class="fa fa-search"></i></button>
                        </form>
                    </div>  
                    
                    <div class="right-content">
                        <ul class="info-items">
                            @foreach($all_support_item as $data)
                                <li>
                                    <div class="single-info-item">
                                        <div class="icon">
                                            <i class="{{$data->icon}}"></i>
                                        </div>
                                        <div class="content">
                                            <h5 class="title">{{$data->title}}</h5>
                                            <span class="details">{{$data->details}}</span>
                                        </div>
                                    </div>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> --}}
{{-- <nav class="navbar navbar-area navbar-expand-lg nav-style-01">
    <div class="container nav-container">
        <div class="responsive-mobile-menu">
            <div class="logo-wrapper mobile-logo">
                <a href="{{url('/')}}" class="logo">
                    @php
                        $site_logo = get_attachment_image_by_id(get_static_option('site_logo'),"full",false);
                    @endphp
                    @if (!empty($site_logo))
                        <img src="{{$site_logo['img_url']}}" alt="site logo">
                    @endif
                </a>
            </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#bizcoxx_main_menu" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse" id="bizcoxx_main_menu">
            <ul class="navbar-nav" style="display:flex;justify-content: space-between;">
                @if(!empty($primary_menu->content))
                    @php
                        $cc = 0;
                        $parent_item_count = 0;
                       $menu_content = json_decode($primary_menu->content);

                    @endphp
                    @foreach($menu_content as $data)
                        @php
                            if ($cc > 0 && $cc == $parent_item_count){ print '</ul>'; $cc = 0; }
                           if (!empty($data->parent_id) && $data->depth > 0){
                                if  ($cc == 0){
                                    print '<ul class="sub-menu">';
                                    $parent_item_count = get_child_menu_count($menu_content,$data->parent_id);
                                }else{  print '</li>'; }
                            }else{ print '</li>'; }
                        @endphp
                        <li class="@if(request()->path() == substr($data->menuUrl,6)) current-menu-item @endif">
                            @php
                                $page_title = str_replace(' ','_',strtolower($data->menuTitle));
                                   $link = (in_array($data->menuTitle,$static_page_list)) ? url('/').'/'.get_static_option($page_title.'_page_slug') :  str_replace('[url]',url('/'),$data->menuUrl);
                                    @endphp
                            <a href="{{$link}}">@if(in_array($data->menuTitle,$static_page_list)) {{get_static_option($page_title.'_page_'.get_user_lang().'_name')}} @else {{__($data->menuTitle)}} @endif</a>
                        @php if (!empty($data->parent_id) && $data->depth > 0){ $cc++;} @endphp
                    @endforeach
                @else
                    <li class="@if(request()->path() == '/') current-menu-item @endif">
                        <a  href="{{url('/')}}">{{__('Home')}}</a>
                    </li>
                @endif
            </ul>
        </div>
    </div>
</nav> --}}
<header class="header-area-wrapper header-carousel-two bizzcox-rtl-slider">
    @foreach($all_header_slider as $data)
        <div class="header-area header-bg"
        @php
            $header_bg_img = get_attachment_image_by_id($data->image,null,false);
        @endphp
        @if (!empty($header_bg_img))
        style="background-image: url({{$header_bg_img['img_url'] }})"
        @endif
        >
            <div class="container">
                <div class="row ">
                    <div class="col-lg-6 ml-auto">
                        <div class="header-inner overlay right-content-area">
                            <h4 class="title">{{$data->title}}</h4>
                            <p>{{$data->description}}</p>
                            <div class="btn-wrapper  desktop-left padding-top-20">
                                @if(!empty($data->btn_01_status))
                                    <a href="{{$data->btn_01_url}}" class="boxed-btn btn-rounded white">{{$data->btn_01_text}}</a>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endforeach
</header>
<div style="font-size:17px;background: #f7522d;">
    {{-- <div class="row" style="padding:10px;"> --}}
        {{-- <div class="col-sm-12 col-md-12" style="visibility: visible; animation-name: fadeInLeft;"> --}}
            <div id="marquee">
                    <marquee behaviour="scroll" style="padding-top: 20px;">
                        <ul>
                            @foreach($all_blog as $blog)
                                <li> {{$blog->title}} </li>
                            @endforeach
                        </ul>
                </marquee>
            </div>
        {{-- </div> --}}
    {{-- </div> --}}
</div>

{{-- why india section --}}
@if(!empty(get_static_option('home_page_service_section_status')))
    <section class="our-cover-area why-india-section  padding-top-90 padding-bottom-90">
        <div class="container">
            <div class="row" style="margin-bottom:70px;">
                 <div class="col-md-3">
                    <select name="course" id="" class="form-control">
                        <option readonly>Discipline</option>
                        <option value="1">1</option>
                        <option value="1">1</option>
                    </select>
                </div>
                <div class="col-md-3">
                    <select name="course" id="" class="form-control">
                        <option readonly>Course</option>
                        <option value="1">1</option>
                        <option value="1">1</option>
                    </select>
                </div>
                <div class="col-md-3">
                    <select name="course" id="" class="form-control">
                        <option readonly>Level</option>
                        <option value="1">1</option>
                        <option value="1">1</option>
                    </select>
                </div>
                <div class="col-md-3 btn-wrapper">
                    <input type="submit" value="Search" class=" boxed-btn btn-rounded white border-none border-green">
                </div>
                {{-- <div class="col-lg-12">
                    <form action="" class="form-inline">
                        <input class="form-control" type="text" placeholder="Discipline" name="discipline">
                        <input class="form-control" type="text" placeholder="Level" name="level">
                        <input class="form-control" type="text" placeholder="Course" name="course">
                        <button type="submit" class="btn btn-lg btn-primary">Search</button>
                    </form>
                </div> --}}
            </div>
            <div class="mt-5 row justify-content-center">
                <div class="col-lg-10 col-md-12">
                    <div class="section-title desktop-center margin-bottom-55">
                        <h2 class="title ">WHY INDIA ?</h2>
                        <hr style="width: 30%;" class="mb-5">
                        <p class="sub-title">
                            The Indian Education system is the world's second largest Higher Education Systemwith more than 800 universities, 39,000 colleges and a capacity of enrolling more than a whopping 20 million students.
                             Higher Education Institutions in India offer courses/degrees that are competitive in the world market in terms of quality but are delivered at one fourth the cost.
                            The Indian Education system is vast in size, as well as its academic offerings. A vibrant and diverse education system means a wide variety of courses are available.
                        </p>
                    </div>
                </div>
            </div>
            {{-- <div class="row">
                @foreach($all_service as $data)
                    <div class="col-lg-4 col-md-6">
                        <div class="icon-box-two margin-bottom-30">
                            <div class="icon">
                                <i class="{{$data->icon}}"></i>
                            </div>
                            <div class="content">
                                <a href="{{route('frontend.services.single',['id' => $data->id,'any' => Str::slug($data->title)])}}"><h4 class="title">{{$data->title}}</h4></a>
                                <p> {{$data->excerpt}}</p>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div> --}}
        </div>
    </section>

@endif


{{-- counter --}}
@if(!empty(get_static_option('home_page_counterup_section_status')))
<div class="counterup-area counterup-bg padding-top-115 padding-bottom-115"
 @php
     $home_counterup_image = get_attachment_image_by_id(get_static_option('home_01_counterup_bg_image'),null,false);
 @endphp
 @if (!empty($home_counterup_image))
 style="background-image: url({{$home_counterup_image['img_url']}})"
 @endif
>
    <div class="container">
        <div class="row">
            @foreach($all_counterup as $data)
            {{-- {{dd($data)}} --}}
            <div class="col-lg-3 col-md-6 mx-auto">
                <div class="singler-counterup-item-01 white">
                    <div class="icon">
                        <i class="{{$data->icon}}" aria-hidden="true"></i>
                    </div>
                    <div class="content">
                        <div class="count-wrap"><span>{{$data->number}}</span>{{$data->extra_text}}</div>
                        {{-- <div class="count-wrap"><span class="count-num">{{$data->number}}</span>{{$data->extra_text}}</div> --}}
                        <h4 class="title">{{$data->title}}</h4>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>
@endif
{{-- counter --}}

{{-- recent work --}}
{{-- @if(!empty(get_static_option('home_page_recent_work_section_status'))) --}}
<section class="our-work-area padding-top-110 padding-bottom-120">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="section-title desktop-center margin-bottom-55">
                    <h2 class="title">Recent News</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="our-work-carousel">
                    @foreach($all_work as $data)
                        <div class="single-work-item">
                            <div class="thumb">
                                @php
                                    $related_work_image = get_attachment_image_by_id($data->image,"grid",false);
                                @endphp
                                @if (!empty($related_work_image))
                                    <img  src="{{$related_work_image['img_url']}}" alt="{{__($data->name)}}">
                                @endif
                            </div>
                            <div class="content">
                                <h4 class="title"><a href="{{route('frontend.work.single',['id' => $data->id,'any' => Str::slug($data->title)])}}"> {{$data->title}}</a></h4>
                                <div class="cats">
                                    @php
                                        $all_cat_of_post = get_work_category_by_id($data->id);
                                    @endphp
                                    @foreach($all_cat_of_post as $key => $work_cat)
                                        <a href="{{route('frontend.works.category',['id' => $key,'any'=> Str::slug($work_cat)])}}">{{$work_cat}}</a>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>
{{-- @endif --}}
{{-- recent work --}}


{{-- pricing plan --}}
{{-- @if(!empty(get_static_option('home_page_price_plan_section_status')))
<section class="price-plan-area  padding-top-110 padding-bottom-120">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="section-title desktop-center margin-bottom-55">
                    <h2 class="title">{{get_static_option('home_page_01_'.get_user_lang().'_price_plan_section_title')}}</h2>
                    <p>{{get_static_option('home_page_01_'.get_user_lang().'_price_plan_section_description')}}</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="price-carousel">
                    @foreach($all_price_plan as $data)
                    <div class="pricing-table-15">
                        <div class="price-header">
                            <div class="icon"><i class="{{$data->icon}}"></i></div>
                            <h3 class="title">{{$data->title}}</h3>
                        </div>

                        <div class="price">
                            <span class="dollar"></span>{{$data->price}}<span class="month">{{$data->type}}</span>
                        </div>
                        <div class="price-body">
                            <ul>
                                @php
                                    $features = explode(';',$data->features);
                                @endphp
                                @foreach($features as $item)
                                <li>{{$item}}</li>
                                @endforeach
                            </ul>
                        </div>
                        <div class="price-footer">
                            @if(!empty($data->url_status))
                            <a class="order-btn" href="{{route('frontend.plan.order',$data->id)}}">{{$data->btn_text}}</a>
                            @else
                            <a class="order-btn" href="{{$data->btn_url}}">{{$data->btn_text}}</a>
                            @endif
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>
@endif --}}

{{-- team section --}}
{{-- @if(!empty(get_static_option('home_page_team_member_section_status')))
<section class="meet-the-team-area section-bg-1 padding-top-110 padding-bottom-120">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="section-title desktop-center margin-bottom-55">
                    <h2 class="title">{{get_static_option('home_page_01_'.get_user_lang().'_team_member_section_title')}}</h2>
                    <p>{{get_static_option('home_page_01_'.get_user_lang().'_team_member_section_description')}}</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="team-carousel">
                    @foreach($all_team_members as $data)
                    <div class="single-team-member-one">
                        <div class="thumb">
                            @php
                                $team_member_image = get_attachment_image_by_id($data->image,"grid",false);
                            @endphp
                            @if (!empty($team_member_image))
                                    <img src="{{$team_member_image['img_url']}}" alt="{{__($data->name)}}">
                            @endif
                            <div class="hover">
                                @php
                                    $social_fields = array(
                                        'icon_one' => 'icon_one_url',
                                        'icon_two' => 'icon_two_url',
                                        'icon_three' => 'icon_three_url',
                                    );
                                @endphp
                                <ul class="social-icon">
                                    @foreach($social_fields as $key => $value)
                                    <li><a href="{{$data->$value}}"><i class="{{$data->$key}}"></i></a></li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                        <div class="content">
                            <h4 class="name">{{$data->name}}</h4>
                            <span class="designation">{{$data->designation}}</span>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>
@endif --}}
{{-- team section --}}

{{-- testimonials --}}
@if(!empty(get_static_option('home_page_testimonial_section_status')))
<section class="testimonial-area testimonial-bg padding-top-110 padding-bottom-120"
 @php
     $home_testimonial_image = get_attachment_image_by_id(get_static_option('home_01_testimonial_bg'),null,false);
 @endphp
 @if (!empty($home_testimonial_image))
 style="background-image: url({{$home_testimonial_image['img_url']}})"
 @endif
>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="testimonial-carousel">
                    @foreach($all_testimonial as $data)
                    <div class="single-testimonial-item white">
                        <div class="icon">
                            <i class="flaticon-quote"></i>
                        </div>
                        <p>{{$data->description}} </p>
                        <div class="author-meta">
                            <h4 class="name">{{$data->name}}</h4>
                            <span class="designation">{{$data->designation}}</span>
                        </div>
                        <div class="thumb">
                            @php
                                $testimonial_image = get_attachment_image_by_id($data->image,"full",false);
                            @endphp
                            @if (!empty($testimonial_image))
                                <img src="{{$testimonial_image['img_url']}}" alt="{{__($data->name)}}">
                            @endif
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>
@endif

{{-- blog --}}
@if(!empty(get_static_option('home_page_latest_news_section_status')))
<section class="latest-news padding-top-110 padding-bottom-120">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="section-title desktop-center margin-bottom-55">
                    <h2 class="title">Blog</h2>
                    {{-- <p>{{get_static_option('home_page_01_'.get_user_lang().'_latest_news_description')}}</p> --}}
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="latest-news-carousel">
                    @foreach($all_blog as $data)
                        <div class="single-blog-grid-01">
                            <div class="thumb">
                                @php
                                    $blog_image = get_attachment_image_by_id($data->image,"grid",false);
                                @endphp
                                @if (!empty($blog_image))
                                    <img src="{{$blog_image['img_url']}}" alt="{{__($data->name)}}">
                                @endif
                            </div>
                            <div class="content">
                                <h4 class="title"><a href="{{route('frontend.blog.single',['id' => $data->id,'any' => Str::slug($data->title)])}}">{{$data->title}}</a></h4>
                                <ul class="post-meta">
                                    <li><a href="#"><i class="fa fa-calendar"></i> {{date_format($data->created_at,'d M y')}}</a></li>
                                    <li><a href="#"><i class="fa fa-user"></i> {{$data->user->username}}</a></li>
                                    <li><div class="cats"><i class="fa fa-calendar"></i><a href="{{route('frontend.blog.category',['id' => $data->category->id,'any' => Str::slug($data->category->name)])}}"> {{$data->category->name}}</a></div></li>
                                </ul>
                                <p>{{$data->excerpt}}</p>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>
@endif
@if(!empty(get_static_option('home_page_brand_logo_section_status')))
    <div class="brand-logo-area section-bg-1 padding-80">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="brand-carousel">
                        @foreach($all_brand_logo as $data)
                            <div class="single-carousel">
                                @php
                                    $brand_logo_image = get_attachment_image_by_id($data->image,"full",false);
                                @endphp
                                @if (!empty($brand_logo_image))
                                    @if(!empty($data->url)) <a href="{{$data->url}}"> @endif
                                    <img src="{{$brand_logo_image['img_url']}}" alt="{{__($data->name)}}">
                                    @if(!empty($data->url))</a> @endif
                                @endif
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
@endif
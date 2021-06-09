<!DOCTYPE html>
<html lang="{{get_default_language()}}"  dir="{{get_user_lang_direction()}}">
<head>
@if(!empty(get_static_option('site_google_analytics')))
    <!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src="https://www.googletagmanager.com/gtag/js?id={{get_static_option('site_google_analytics')}}"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag(){dataLayer.push(arguments);}
            gtag('js', new Date());

            gtag('config', "{{get_static_option('site_google_analytics')}}");
        </script>
    @endif
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    @yield('page-meta-data')

    @php
        $site_favicon = get_attachment_image_by_id(get_static_option('site_favicon'),"full",false);
    @endphp

    @if (!empty($site_favicon))
        <link rel="icon" href="{{$site_favicon['img_url']}}" type="image/png">
    @endif

    <!-- load fonts dynamically -->
    {!! load_google_fonts() !!}
<!-- all stylesheets -->
    <link rel="stylesheet" href="{{asset('assets/frontend/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/frontend/css/fontawesome.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/frontend/css/owl.carousel.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/frontend/css/animate.css')}}">
    <link rel="stylesheet" href="{{asset('assets/frontend/css/flaticon.css')}}">
    <link rel="stylesheet" href="{{asset('assets/frontend/css/magnific-popup.css')}}">
    <link rel="stylesheet" href="{{asset('assets/frontend/css/style.css')}}">
    <link rel="stylesheet" href="{{asset('assets/frontend/css/responsive.css')}}">
    <link rel="stylesheet" href="{{asset('assets/frontend/css/dynamic-style.css')}}">
    <link rel="stylesheet" href="{{asset('assets/frontend/css/jquery.ihavecookies.css')}}">

    <style>
        :root {
            --main-color-one: {{get_static_option('site_color')}};
            --secondary-color: {{get_static_option('site_main_color_two')}};
            --heading-color: {{get_static_option('site_heading_color')}};
            --paragraph-color: {{get_static_option('site_paragraph_color')}};
            @php $heading_font_family = !empty(get_static_option('heading_font')) ? get_static_option('heading_font_family') :  get_static_option('body_font_family') @endphp
            --heading-font: "{{$heading_font_family}}",sans-serif;
            --body-font:"{{get_static_option('body_font_family')}}",sans-serif;
        }
    </style>

    @yield('style')

    @if(!empty(get_static_option('site_rtl_enabled')) || get_user_lang_direction() == 'rtl')
        <link rel="stylesheet" href="{{asset('assets/frontend/css/rtl.css')}}">
    @endif
    
    @if(request()->is('blog/*') || request()->is('work/*')  || request()->is('news*') || request()->is('service/*'))
        @yield('og-meta')
        <title>@yield('site-title')</title>
    @elseif(request()->is('about') || request()->is('service') || request()->is('work') || request()->is('team') || request()->is('faq') || request()->is('blog') || request()->is('contact') || request()->is('p/*') || request()->is('blog/*') || request()->is('services/*') ||  request()->is('events*'))
        <title>@yield('site-title') - {{get_static_option('site_'.get_user_lang().'_title')}} </title>
    @else 
        <title>{{get_static_option('site_'.get_user_lang().'_title')}} - @yield('site-title') </title>
        
    @endif 
</head>
<body>

@php  $static_page_list = ['About','Service','FAQ','Team','Works','Price Plan','Blog','Contact','Career With Us','Events','Knowledgebase']; @endphp

    {{-- newly put --}}
<div class="info-bar-area">
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
                                     
                    <div class="right-content">
                        <ul class="info-items">
                            @if(isset($all_support_item))
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
                            @endif
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<nav class="navbar navbar-area navbar-expand-lg nav-style-01">
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
                    @foreach($menu_content as $key=>$data)
                    @if($key == 2)
                             <li class="menu-item-has-children @if(request()->is() == '*university*') current-menu-item @endif">
                                <a href="#">Programmes</a>
                                <ul class="sub-menu">
                                    @foreach($programmes as $programme)
                                        <li >
                                            <a  href="{{route('university.search.category',
                                                ['id' => $programme->id, 'level' => strtolower($programme->title)] )}}">
                                                 {{ $programme->title }}
                                             </a>
                                        </li>
                                    @endforeach 
                                </ul>
                            </li>

                        @endif
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
</nav>
    {{-- newly put --}}


 @php 
 $inner_page_navbar = get_static_option('site_header_type') ? get_static_option('site_header_type') : 'navbar'; 
 @endphp
<section class="breadcrumb-area breadcrumb-bg {{$inner_page_navbar}}"
@php
    $site_breadcrumb_bg = get_attachment_image_by_id(get_static_option('site_breadcrumb_bg'),"full",false);
@endphp
@if (!empty($site_breadcrumb_bg))
style="background-image: url({{$site_breadcrumb_bg['img_url']}});"
@endif
> 
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb-inner">
                    <h1 class="page-title">@yield('page-title')</h1>
                    <ul class="page-list">
                        <li><a href="{{url('/')}}">{{__('Home')}}</a></li>
                        <li>@yield('page-title')</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>


@yield('content')

@include('frontend.partials.footer')
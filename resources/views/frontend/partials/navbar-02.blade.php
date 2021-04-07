@if(!empty(get_static_option('home_page_support_bar_section_status')))
    <div class="info-bar-area style-two">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="info-bar-inner">
                        <div class="left-content">
                            <ul class="info-items-two">
                                @if(isset($all_support_item))
                                @foreach($all_support_item as $data)
                                    <li>
                                        <div class="single-info-item">
                                            <div class="icon">
                                                <i class="{{$data->icon}}"></i>
                                            </div>
                                            <div class="content">
                                                <h5 class="title">{{$data->title}}: <span class="details">{{$data->details}}</span></h5>

                                            </div>
                                        </div>
                                    </li>
                                @endforeach
                                @endif
                            </ul>
                            <select id="langchange">
                                @if(isset($all_language))
                                    @foreach($all_language as $lang)
                                        <option @if( get_user_lang() == $lang->slug) selected @endif value="{{$lang->slug}}">{{$lang->name}}</option>
                                    @endforeach
                                @endif
                            </select>
                        </div>
                        <div class="right-content">
                            <div class="request-quote">
                                @php $quote_btn_url = !empty(get_static_option('navbar_button_custom_url_status')) ? get_static_option('navbar_button_custom_url') : route('frontend.request.quote'); @endphp
                                <a href="{{$quote_btn_url}}" class="rq-btn blank">{{get_static_option('top_bar_'.get_user_lang().'_button_text')}} <i class="fa fa-long-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endif
<nav class="navbar navbar-area navbar-expand-lg nav-style-02">
    <div class="container nav-container">
        <div class="navbar-brand">
            <a href="{{url('/')}}" class="logo">
                @php
                    $site_logo = get_attachment_image_by_id(get_static_option('site_white_logo'),"full",false);
                @endphp
                @if (!empty($site_logo))
                    <img src="{{$site_logo['img_url']}}" alt="site logo">
                @endif
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#bizcoxx_main_menu" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse" id="bizcoxx_main_menu">
            <ul class="navbar-nav">
                @if(!empty($primary_menu->content))
                    @php
                        $cc = 0;
                        $parent_item_count = 0;
                       $menu_content = json_decode($primary_menu->content);
                       $static_page_list = ['About','Service','FAQ','Team','Works','Price Plan','Blog','Contact','Career With Us','Events','Knowledgebase']
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
</nav>
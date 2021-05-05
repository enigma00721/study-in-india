@php  $static_page_list = ['About','Service','FAQ','Team','Works','Price Plan','Blog','Contact','Career With Us','Events','Knowledgebase']; @endphp


@section('style')
    <style>
        .search-form #search_btn {
            border-radius: 20px 20px;
        }

        .search-form #submit_btn {
            border-radius: 20px;
        }

        .header-area-wrapper .right-content-area {
            background-position: top right;
            background-repeat: no-repeat;
            padding: 60px 150px 60px 60px;
            -webkit-box-shadow: 0 0 15px rgb(0 0 0 / 2%);
            box-shadow: 0 0 15px rgb(0 0 0 / 2%);
        }

        .right-content-area .title {
            font-size: 30px;
            line-height: 40px;
            font-weight: 700;
            margin-bottom: 15px;
        }

        .overlay {
            background-color: rgba(0, 0, 0, 0.6);
        }

        .header-inner {
            position: relative;
            overflow: hidden;
            max-width: 510px;
            padding: 20px;
        }

        @media only screen and (max-width: 768px) {
            .right-content-area {
                padding: 20px !important;
            }
        }

        .header-inner .title {
            font-size: 1.5rem;
            width: 100%;
        }

        .header-bg {
            max-height: 70vh;
        }

        #marquee li {
            margin-right: 20px;
            color: black;
            display: inline;
            list-style: none;
            color: #fff;
        }

        #marquee li::before {
            content: "•";
        }

        .our-cover-area .sub-title {
            font-size: 18px;
            text-align: center;
            line-height: 34px;
            font-weight: 400;
            letter-spacing: .3px;
        }

        .our-cover-area .form-inline {
            display: flex;
            justify-content: space-between;
            /* width: 20%; */
        }

        .our-cover-area .form-control {
            /* border-radius: 20px; */
        }

        .our-cover-area .btn {
            border-radius: 20px;
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

        .single-work-item i {
            color: var(--main-color-one);
        }

    </style>
@endsection



<header class="header-area-wrapper header-carousel-two bizzcox-rtl-slider">
    @foreach ($all_header_slider as $data)
        <div class="header-area header-bg" @php
            $header_bg_img = get_attachment_image_by_id($data->image, null, false);
        @endphp @if (!empty($header_bg_img)) style="background-image: url({{ $header_bg_img['img_url'] }})" @endif>
            <div class="container-fluid">
                <div class="row ">
                    <div class="col-lg-4 ml-auto mr-5">
                        <div class="header-inner overlay right-content-area">
                            <h4 class="title">{{ $data->title }}</h4>
                            <p>{!! $data->description !!}</p>
                            <div class="btn-wrapper  desktop-left padding-top-20">
                                @if ($data->btn_01_status == 'on')
                                    <a href="{{ $data->btn_01_url }}"
                                        class="boxed-btn btn-rounded white">{{ $data->btn_01_text }}</a>
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
    <div id="marquee">
        <marquee behaviour="scroll" style="padding-top: 20px;">
            <ul>
                @foreach ($all_blog as $blog)
                    <li> {{ $blog->title }} </li>
                @endforeach
            </ul>
        </marquee>
    </div>
</div>

{{-- why india section and university search section --}}
    <section class="our-cover-area why-india-section  padding-top-90 padding-bottom-90">
        <div class="container">
            <form action="{{ route('university.search') }}" method="get">
                <div class="row" style="margin-bottom:70px;">
                    <div class="col-md-3">
                        <select name="discipline" id="" class="form-control">
                            <option readonly value="all">Discipline</option>
                            @foreach ($all_disciplines as $data)
                                <option value="{{ $data->id }}"> {{ $data->title }} </option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-3">
                        <select name="course" id="" class="form-control">
                            <option readonly value="all">Course</option>
                            @foreach ($all_courses as $data)
                                <option value="{{ $data->title }}"> {{ $data->title }} </option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-3">
                        <select name="level" id="" class="form-control">
                            <option readonly value="all">Level</option>
                            @foreach ($all_levels as $data)
                                <option value="{{ $data->id }}"> {{ $data->title }} </option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-3 btn-wrapper">
                        <input type="submit" value="Search" class=" boxed-btn border-none ">
                    </div>

                </div>
            </form>
            <div class="mt-5 row justify-content-center">
                <div class="col-lg-10 col-md-12">
                    <div class="section-title desktop-center margin-bottom-55">
                        <h2 class="title ">WHY INDIA ?</h2>
                        <hr style="width: 30%;" class="mb-5">
                        <p class="sub-title">
                            The Indian Education system is the world's second largest Higher Education Systemwith more
                            than 800 universities, 39,000 colleges and a capacity of enrolling more than a whopping 20
                            million students.
                            Higher Education Institutions in India offer courses/degrees that are competitive in the
                            world market in terms of quality but are delivered at one fourth the cost.
                            The Indian Education system is vast in size, as well as its academic offerings. A vibrant
                            and diverse education system means a wide variety of courses are available.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>



{{-- counter --}}
@if (!empty(get_static_option('home_page_counterup_section_status')))
    <div class="counterup-area counterup-bg padding-top-115 padding-bottom-115" @php
        $home_counterup_image = get_attachment_image_by_id(get_static_option('home_01_counterup_bg_image'), null, false);
    @endphp @if (!empty($home_counterup_image)) style="background-image: url({{ $home_counterup_image['img_url'] }})" @endif>
        <div class="container">
            <div class="row">
                @foreach ($all_counterup as $data)
                    {{-- {{dd($data)}} --}}
                    <div class="col-lg-3 col-md-6 mx-auto">
                        <div class="singler-counterup-item-01 white">
                            <div class="icon">
                                <i class="{{ $data->icon }}" aria-hidden="true"></i>
                            </div>
                            <div class="content">
                                <div class="count-wrap"><span>{{ $data->number }}</span>{{ $data->extra_text }}
                                </div>
                                {{-- <div class="count-wrap"><span class="count-num">{{$data->number}}</span>{{$data->extra_text}}</div> --}}
                                <h4 class="title">{{ $data->title }}</h4>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
@endif
{{-- counter --}}

{{-- recent news --}}
{{-- @if (!empty(get_static_option('home_page_recent_work_section_status'))) --}}
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
                    @foreach ($all_news as $single_news)
                        <div class="single-work-item">
                            <div class="thumb">
                                @php
                                    $related_work_image = get_attachment_image_by_id($single_news->image, 'grid', false);
                                @endphp
                                @if (!empty($related_work_image))
                                    <img src="{{ $related_work_image['img_url'] }}"
                                        alt="{{ __($single_news->title) }}">
                                @endif
                            </div>
                            <div class="content">
                                <h4 class="title mb-4">
                                    <a
                                        href="{{ route('frontend.news.single', ['slug' => Str::slug($single_news->title)]) }}">
                                        {{-- {{ $single_news->title }} --}}
                                        {{-- {{ preg_replace('~(\R{2})\R+~', '$6' , $single_news->title) }} --}}
                                        {{str_replace(array("\r\n", "\r", "\n"), '',$single_news->title) }}
                                        
                                    </a>
                                </h4>
                                <div class="cats" style="display: flex;justify-content:space-between">
                                    <a href="#">
                                        <i class="fab fa-cuttlefish"></i>
                                        {{ $single_news->category->name }}</a>
                                    <a href="#">
                                        <i class="fa fa-calendar"></i>
                                        {{ $single_news->created_at }}</a>

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
{{-- recent news --}}



{{-- testimonials --}}
@if (!empty(get_static_option('home_page_testimonial_section_status')))
    <section class="testimonial-area testimonial-bg padding-top-110 padding-bottom-120" @php
        $home_testimonial_image = get_attachment_image_by_id(get_static_option('home_01_testimonial_bg'), null, false);
    @endphp @if (!empty($home_testimonial_image)) style="background-image: url({{ $home_testimonial_image['img_url'] }})" @endif>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="testimonial-carousel">
                        @foreach ($all_testimonial as $data)
                            <div class="single-testimonial-item white">
                                <div class="icon">
                                    <i class="flaticon-quote"></i>
                                </div>
                                <p>{{ $data->description }} </p>
                                <div class="author-meta">
                                    <h4 class="name">{{ $data->name }}</h4>
                                    <span class="designation">{{ $data->designation }}</span>
                                </div>
                                <div class="thumb">
                                    @php
                                        $testimonial_image = get_attachment_image_by_id($data->image, 'full', false);
                                    @endphp
                                    @if (!empty($testimonial_image))
                                        <img src="{{ $testimonial_image['img_url'] }}"
                                            alt="{{ __($data->name) }}">
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
@if (!empty(get_static_option('home_page_latest_news_section_status')))
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
                        @foreach ($all_blog as $data)
                            <div class="single-blog-grid-01">
                                <div class="thumb">
                                    @php
                                        $blog_image = get_attachment_image_by_id($data->image, 'grid', false);
                                    @endphp
                                    @if (!empty($blog_image))
                                        <img src="{{ $blog_image['img_url'] }}" alt="{{ __($data->name) }}">
                                    @endif
                                </div>
                                <div class="content">
                                    <h4 class="title"><a
                                            href="{{ route('frontend.blog.single', ['id' => $data->id, 'any' => Str::slug($data->title)]) }}">{{ $data->title }}</a>
                                    </h4>
                                    <ul class="post-meta">
                                        <li><a href="#"><i class="fa fa-calendar"></i>
                                                {{ date_format($data->created_at, 'd M ') }}</a></li>
                                        <li><a href="#"><i class="fa fa-user"></i> {{ $data->user->username }}</a>
                                        </li>
                                        <li>
                                            <div class="cats"><i class="fa fa-calendar"></i><a
                                                    href="{{ route('frontend.blog.category', ['id' => $data->category->id, 'any' => Str::slug($data->category->name)]) }}">
                                                    {{ $data->category->name }}</a></div>
                                        </li>
                                    </ul>
                                    <p>{!! str_limit($data->excerpt, 150, ' .....') !!}</p>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </section>
@endif
@if (!empty(get_static_option('home_page_brand_logo_section_status')))
    <div class="brand-logo-area section-bg-1 padding-80">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="brand-carousel">
                        @foreach ($all_brand_logo as $data)
                            <div class="single-carousel">
                                @php
                                    $brand_logo_image = get_attachment_image_by_id($data->image, 'full', false);
                                @endphp
                                @if (!empty($brand_logo_image))
                                    @if (!empty($data->url)) <a
                                            href="{{ $data->url }}"> @endif
                                    <img src="{{ $brand_logo_image['img_url'] }}" alt="{{ __($data->name) }}">
                                    @if (!empty($data->url))</a> @endif
                                @endif
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
@endif

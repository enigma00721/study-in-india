@php  $static_page_list = ['About','Service','FAQ','Team','Works','Price Plan','Blog','Contact','Career With Us','Events','Knowledgebase']; @endphp

{{-- {{dd($static_page_list[])}} --}}
@extends('frontend.frontend-master')
@section('site-title')
    {{__('University')}}
@endsection

@section('style')
    <link rel="stylesheet" href="{{ asset('assets/frontend/css/jqueryui.css') }}">
    <style>
        .widget_price_filter p {
            display: flex;
            justify-content: space-between;
            font-size: 16px;
            font-weight: 700;
            margin-top: 5px;
            color: #212529;
        }

        .jumbotron {
            background: #F4F7FC;
            margin-bottom: 0;
        }

        .jumbotron .title {
            font-size: 2.2rem;
        }

        .search-university .form-control-2 {
            height: 56px;
        }

        .search-university .custom-select {
            height: 56px;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #495057;
            border: 1px solid #ced4da;
        }
        .single-job-list-item .thumb img{
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        @media only screen and (max-width: 600px) {
        
            .single-job-list-item .jobs-meta li{
                margin-left: 0 !important;
                margin-bottom:10px;
            }
        }

    </style>
@endsection
@section('content')
    <section class="jumbotron mt-xl-10 mt-md-5 search-university">
        <div class="container">
            <h2 class="title mb-sm-5 mb-md-0">Explore Universities of India</h2>
            <form action="{{ route('university.search') }}" method="get" class="py-md-4">
                <div class="row">
                    <div class="col-md-3 form-group">
                        <select name="discipline" id="" class="custom-select">
                            <option value="all">All Disciplines</option>
                            @foreach ($disciplines as $data)
                                <option value="{{ $data->id }}" @if ($data->id == request()->query('discipline')) selected @endif>{{ $data->title }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-3 form-group">
                        <select name="course" id="" class="custom-select">
                            <option value="all">All Courses</option>
                            @foreach ($all_courses as $data)
                                <option value="{{ $data->title }}" @if ($data->title == request()->query('course')) selected @endif>{{ $data->title }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-3 form-group">
                        <select name="level" id="" class=" custom-select">
                            <option value="all">All Levels</option>
                            @foreach ($programmes as $data)
                                <option value="{{ $data->id }}" @if ($data->id == request()->query('level')) selected @endif>{{ $data->title }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-3 btn-wrapper">
                        {{-- <input type="submit" value="Search" class="form-control-2 btn-block boxed-btn  border-none "> --}}
                        <input type="submit" value="Search" class="submit-btn btn-block ">
                    </div>
                </div>
            </form>
        </div>
    </section>
    <section class="blog-content-area padding-100">
        <div class="container">
            <div class="row">

                <div class="col-lg-4">
                    <div class="product-widget-area">

                        <div class="widget widget_nav_menu">
                            <h2 class="widget-title">Category</h2>
                            <ul>
                                @foreach ($levels as $level)
                                    <li>
                                        <a href="{{ route('university.search.category', ['id' => $level->id, 'level' => strtolower($level->title)]) }}">{{ ucfirst($level->title) }}</a>
                                    </li>
                                @endforeach
                            </ul>
                        </div>

                        {{-- <div class="widget widget_price_filter">
                            <h4 class="widget-title">Price Filter</h4>
                            <div id="slider-range" class="ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"><div class="ui-slider-range ui-corner-all ui-widget-header" style="left: 0%; width: 100%;"></div><span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default" style="left: 0%;"></span><span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default" style="left: 100%;"></span></div>
                            <p><span class="min_filter_price">$0</span> <span class="max_filter_price">$199</span></p>
                            <button type="button" class="boxed-btn style-01 btn btn-primary" id="submit_price_filter_btn">Apply Filter</button>
                        </div> --}}

                    </div>

                </div>
                <div class="col-lg-8">

                    {{-- After Search --}}
                    @if(isset($searchCourses))
                        @if (count($searchCourses) > 0)
                            @foreach ($searchCourses as $course)
                                @if(count($course->universities)>0)
                                    @foreach($course->universities as $data)
                                        <div class="row single-job-list-item">
                                            <div class="col-md-4 thumb p-1">
                                                @php
                                                    $university_image = get_attachment_image_by_id($data->image, 'grid', false);
                                                @endphp
                                                @if (!empty($university_image))
                                                    <img src="{{ $university_image['img_url'] }}"
                                                        alt="{{ __($data->title) }}">
                                                @endif
                                            </div>
                                            <div class="col-lg-8">
                                                {{-- <span class="job_type"><i class="far fa-clock"></i> {{str_replace('_',' ',$data->employment_status)}}</span> --}}
                                                {{-- <a href="{{route('frontend.jobs.single',['id' => $data->id,'any' => Str::slug($data->name)])}}"><h3 class="title"> {{$data->title}} </h3></a> --}}
                                                <a href="{{route('single.university',['id'=>$data->id,'slug'=>Str::slug($data->name)])}}">
                                                    <h3 class="title"> {{ $data->name }} </h3>
                                                </a>
                                                <span class="company_name"><strong>{{ __('Course:') }}</strong>
                                                    {{ $course->title }}</span>
                                                <span class="company_name"><strong>{{ __('Address:') }}</strong>
                                                    {{ $data->location }}</span>
                                                <span class="deadline"><strong>{{ __('Available Seat:') }}</strong> {{$data->pivot->seats}} </span>
                                                <ul class="jobs-meta">
                                                    <li><i class="fas fa-briefcase"></i> <a href="{{ route('single.university', ['id'=>$data->id,'slug'=>Str::slug($data->name)]) }}">Learn More</a></li>
                                                    <li><i class="fas fa-wallet"></i><a href="{{ route('online.apply',['universityId'=>$data->id , 'courseId'=>$course->id]) }}">Apply
                                                            Now</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    @endforeach
                                @endif
                            @endforeach
                        @else
                            <h4 class="title">No Records Found</h4>
                        @endif
                    @else
                        {{-- No Search --}}
                        @foreach ($all_courses as $course)
                        @if (count($course->universities)>0)
                            @foreach ($course->universities as $data)
                                <div class="row single-job-list-item">
                                    <div class="col-md-4 thumb p-1">
                                            @php
                                                $university_image = get_attachment_image_by_id($data->image, 'grid', false);
                                            @endphp
                                            @if (!empty($university_image))
                                                <img src="{{ $university_image['img_url'] }}"
                                                    alt="{{ __($data->title) }}">
                                            @endif
                                    </div>
                                    <div class="col-lg-8">
                                        <a href="{{ route('single.university', ['id'=>$data->id,'slug'=>Str::slug($data->name)]) }}">
                                            <h3 class="title"> {{ $data->name }} </h3>
                                        </a>
                                        <span class="company_name"><strong>{{ __('Course:') }}</strong>
                                            {{ $course->title }}</span>
                                        <span class="company_name"><strong>{{ __('Address:') }}</strong>
                                            {{ $data->location }}</span>
                                        <span class="deadline"><strong>{{ __('Available Seat:') }}</strong> {{$data->pivot->seats}} </span>
                                        <ul class="jobs-meta">
                                            <li><i class="fas fa-briefcase"></i> <a href="{{ route('single.university', ['id'=>$data->id,'slug'=>Str::slug($data->name)]) }}">Learn More</a> </li>
                                            <li><i class="fas fa-wallet"></i><a href="{{ route('online.apply',['universityId'=>$data->id , 'courseId'=>$course->id]) }}">Apply
                                                    Now</a></li>
                                        </ul>
                                    </div>
                                </div>
                            @endforeach
                        @endif
                        @endforeach
                    @endif

                    @isset($searchCourses)
                        <div class="col-lg-12 text-center">
                            <nav class="pagination-wrapper " aria-label="Page navigation ">
                                {{ $searchCourses->links() }}
                            </nav>
                        </div>
                    @endisset
                </div>

            </div>
        </div>
    </section>
@endsection

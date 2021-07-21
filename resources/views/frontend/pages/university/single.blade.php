@extends('frontend.frontend-master')
{{-- @extends('frontend.frontend-page-master') --}}
@section('site-title')
    About University
@endsection
@section('page-title')
    {{ $university->name }}
@endsection
@section('style')
    <style>
        .list-inline-item{
            display: inline-grid;
            line-height: 28px;
        }

        .single-product-details .title {
            font-size: 20px;
            line-height: 20px;
            font-weight: 700;
            margin-bottom: 20px;

        }
        .single-product-details .title:before{
            position: static;
            content: "\f101";
            font-family: "Font Awesome 5 Free";
            font-weight: 700;
            margin-right: 5px;
            color: var(--main-color-one);
        }
        .single-job-meta-block .title:before{
            position: static;
            content: "\f101";
            font-family: "Font Awesome 5 Free";
            font-weight: 700;
            margin-right: 5px;
            color: var(--main-color-one);
        }

        .job-meta-list li .single-job-meta-block ul li:before {
            content: none;
        }
        .single-product-details .extra-content-wrap .nav-tabs {
            display: block;
            border: none;
            font-size: 0;
        }

        .single-product-details .extra-content-wrap .nav-tabs .nav-item {
            border: none;
            display: inline-block;
            background-color: #f4f7fc;
            border-radius: 0;
            font-size: 16px;
            font-weight: 500;
            color: #555;
            transition: 300ms all;
            padding: 12px 30px;
        }

        .single-product-details .extra-content-wrap .nav-tabs .nav-item.active {
            background-color: var(--main-color-one);
            color: #fff;
        }

        .single-product-details .extra-content-wrap .nav-tabs .nav-item:first-child {
            border-top-left-radius: 5px;
        }

        .single-product-details .extra-content-wrap .nav-tabs .nav-item:last-child {
            border-top-right-radius: 5px;
        }

        .single-product-details .extra-content-wrap .tab-content {
            background-color: #f4f7fc;
            padding: 30px;
        }

        .single-product-details .extra-content-wrap {
            margin-bottom: 100px;
        }
        .course-description p{
            line-height: 32px;
            font-size: 16px;
        }
        .course-description .sub-title{
            margin-top: 20px;
            font-size: 16px;
            color:  var(--paragraph-color);
        }
        .single-job-meta-block li{
            line-height: 32px;
            font-size: 16px !important;
        }
    </style>
@endsection
@section('content')

    @php
        $university_image = !empty($university->image) ? get_attachment_image_by_id($university->image,"full",false) : '';
    @endphp
    @if (!empty($university_image))
        <section class="breadcrumb-area breadcrumb-bg navbar-02"  style="background-image: url('{{$university_image['img_url']}}')"> 
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="breadcrumb-inner">
                            <h1 class="page-title"> {{$university->name}} </h1>
                            <ul class="page-list">
                                <li><a href="{{route('homepage')}}">Home</a></li>
                                <li>   {{$university->name}}  </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    @endif
    
    <section class="blog-content-area padding-120">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="single-job-details">
                        <ul class="job-meta-list">

                            @if (!empty($university->description))
                                <li>
                                    <div class="single-job-meta-block">
                                        <h4 class="title">{{ __('University Description') }}</h4>
                                        <ul class="job-details-list">
                                            @php $job_res = explode('|',$university->description); @endphp
                                            @foreach ($job_res as $data)
                                                <li>{!! $data !!}</li>
                                            @endforeach
                                        </ul>
                                    </div>
                                </li>
                            @endif
                            @if (!empty($university->facilities))
                                <li>
                                    <div class="single-job-meta-block">
                                        <h4 class="title"> {{ __('Facilities') }}</h4>
                                        {{-- <p>{!! $university->facilities !!}</p> --}}
                                        <ul class="job-details-list">
                                            @php $job_res = explode('|',$university->facilities); @endphp
                                            @foreach ($job_res as $data)
                                                <li>{!! $data !!}</li>
                                            @endforeach
                                        </ul>
                                        
                                    </div>
                                </li>
                            @endif

                        {{-- <div class="apply-procedure">
                            <p>{{ __('Send Your CV To:') }} <span>{{ $university->fee }}</span></p>
                        </div> --}}
                        </ul>
                    </div> {{-- single-job-details end--}}
                </div>{{-- col-lg-8 end --}}

                {{-- right sidebar --}}
                <div class="col-lg-4">
                    <div class="widget-area">
                        <div class="widget job_information">
                            <h2 class="widget-title">{{ __('University Information') }}</h2>
                            <ul class="job-information-list">
                                <li>
                                    <div class="single-job-info">
                                        <div class="icon">
                                            <i class="fas fa-map-marker-alt"></i>
                                        </div>
                                        <div class="content">
                                            <h4 class="title">{{ __('Location') }}</h4>
                                            <span class="details">{{ $university->location }}</span>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="single-job-info">
                                        <div class="icon">
                                            <i class="fas fa-tags"></i>
                                        </div>
                                        <div class="content">
                                            <h4 class="title">{{ __('Number Of Courses') }}</h4>
                                            <span class="details">{{ $university->getCourseCount() }}</span>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="single-job-info">
                                        <div class="icon">
                                            <i class="fas fa-chair"></i>
                                        </div>
                                        <div class="content">
                                            <h4 class="title">{{ __('Total Seats') }}</h4>
                                            <span class="details">{{ $university->getCoursesSeatsCount() }}</span>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="widget job_information  flex justify-content-center py-5 px-4">
                            <a href="{{route('online.apply',['universityId'=> $university->id])}}" class="submit-btn btn-block my-2 text-center">
                                Register Now
                            </a>

                        </div>
                    </div>
                </div>
                {{-- right sidebar --}}
            </div>

            <div class="row mt-5">
                <div class="col-md-12">
                    <div class="single-job-details">
                        <ul class="job-meta-list">
                            @if(!empty($allCourses = $university->courses))
                            <li>
                                <div class="single-product-details">
                                    <h4 class="title">{{ __('All Courses') }}</h4>
                                    <div class="extra-content-wrap">
                                        <nav>
                                            <div class="nav nav-tabs" role="tablist">
                                                @foreach($allCourses as $key=>$aCourse)
                                                    <a class="nav-item nav-link {{ $key == 0 ? 'active' : ''}}" data-toggle="tab" href="#nav-{{$aCourse->id}}" role="tab" aria-selected="true"> {{$aCourse->title}} </a>
                                                @endforeach
                                            </div>
                                        </nav>
                                        <div class="tab-content">
                                            @foreach($allCourses as $key=>$aCourse)
                                                <div class="tab-pane fade {{ $key == 0 ? 'active show' : ''}}" id="nav-{{$aCourse->id}}" role="tabpanel">
                                                   
                                                    <div class="course-description">
                                                        <ul class="list-inline">
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <li class="list-inline-item">
                                                                        <b> Course Duration:  </b>
                                                                        <span> {{$aCourse->course_duration}} </span>
                                                                    </li>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <li class="list-inline-item">
                                                                        <b> Course Discipline:  </b>
                                                                        <span> {{$aCourse->discipline->title}} </span>
                                                                    </li>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <li class="list-inline-item">
                                                                        <b> Tution Fee: </b>
                                                                        <span> {{$aCourse->fee}} </span>
                                                                    </li>
                                                                </div>
                                                                {{-- <div class="col-md-6">
                                                                    <li class="list-inline-item">
                                                                        <b> Number Of Seats: </b> 
                                                                        <span> {{$aCourse->pivot->seats}} </span>
                                                                    </li>
                                                                </div> --}}
                                                                @if(!empty($aCourse->pivot->hostel))
                                                                <div class="col-md-6">
                                                                    <li class="list-inline-item">
                                                                        <b> Hostel Fee: </b>
                                                                        <span> {{$aCourse->hostel}} </span>
                                                                    </li>
                                                                </div>
                                                                @endif
                                                                @if(!empty($aCourse->pivot->mess))
                                                                <div class="col-md-6">
                                                                    <li class="list-inline-item">
                                                                        <b> Mess Charge: </b> 
                                                                        <span> {{$aCourse->mess}} </span>
                                                                    </li>
                                                                </div>
                                                                @endif
                                                            </div>
                                                        </ul>
                                                    </div>
                                                    <div class="course-description">
                                                        <h4 class="sub-title"><b> Description </b></h4>
                                                        <p> {!! $aCourse->description !!} </p>
                                                    </div>
                                                    <div class="course-description">
                                                        <h4 class="sub-title"><b> Elligibility </b></h4>
                                                        <p> {!! $aCourse->elligibility !!} </p>
                                                    </div>
                                                    
                                                </div>
                                            @endforeach
                                        </div>
                                    </div>
                                </div>
                            </li>
                            @endif
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection


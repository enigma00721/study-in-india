@extends('frontend.frontend-page-master')
@section('site-title')
    About University
@endsection
@section('page-title')
    {{ $university->name }}
@endsection
@section('style')
    <style>
        /* .tab-content{
            background-color: #f4f7fc;
            padding: 30px;
        }
        nav{
            background-color: #f4f7fc;
        } */


/* product single page styling */
.single-product-details .title {
    font-size: 20px;
    line-height: 20px;
    font-weight: 700;
    margin-bottom: 20px;
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
    font-size: 18px;
    font-weight: 600;
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
    </style>
@endsection
@section('content')
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

                            {{-- @if (!empty($job->education_requirement))
                                <li>
                                    <div class="single-job-meta-block">
                                        <h4 class="title"> {{ __('Educational Requirement') }}</h4>
                                        <ul class="job-details-list">
                                            @php $job_res = explode('|',$job->education_requirement); @endphp
                                            @foreach ($job_res as $data)
                                                <li>{{ $data }}</li>
                                            @endforeach
                                        </ul>
                                    </div>
                                </li>
                                @endif 
                            --}}
                          
                        {{-- <div class="apply-procedure">
                            <p>{{ __('Send Your CV To:') }} <span>{{ $university->fee }}</span></p>
                        </div> --}}

                            @if(!empty($allCourses = $university->courses))
                            <li>
                                <div class="single-product-details">
                                    <h4 class="title">{{ __('All Courses') }}</h4>
                                   

                                    {{-- <div class="bottom-content"> --}}
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
                                                            <p> {!! $aCourse->description !!} </p>
                                                        </div>
                                                    </div>
                                                @endforeach
                                            </div>
                                        </div>
                                    {{-- </div> --}}

                                </div>
                            </li>
                            @endif
                        </ul>
                    </div> {{-- single-job-details end--}}
                </div>{{-- col-lg-8 end --}}

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
                                            <i class="far fa-user"></i>
                                        </div>
                                        <div class="content">
                                            <h4 class="title">{{ __('Number Of Seats') }}</h4>
                                            <span class="details">{{ $university->getCoursesSeatsCount() }}</span>
                                        </div>
                                    </div>
                                </li>
                                {{-- <li>
                                    <div class="single-job-info">
                                        <div class="icon">
                                            <i class="far fa-calendar-alt"></i>
                                        </div>
                                        <div class="content">
                                            <h4 class="title">{{ __('Deadline') }}</h4>
                                            <span class="details">{{ date('d M Y', strtotime($job->deadline)) }}</span>
                                        </div>
                                    </div>
                                </li> --}}
                            </ul>
                        </div>
                        <div class="widget widget_nav_menu">
                            <h2 class="widget-title">
                                Category    
                            </h2>
                            <ul>
                                @foreach ($levels as $level)
                                    <li>
                                        <a href="{{ route('university.search.category', ['id' => $level->id, 'level' => strtolower($level->title)]) }}">{{ ucfirst($level->title) }}</a>
                                    </li>
                                @endforeach
                            </ul>
                        </div>

                    </div>

                </div>
            </div>
        </div>
    </section>
@endsection

@section('scripts')
    <script>
        $(document).ready(function(){
            $('.')
        })
    </script>
@endsection

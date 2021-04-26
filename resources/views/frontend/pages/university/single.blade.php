@extends('frontend.frontend-page-master')
@section('site-title')
    About University
@endsection
@section('page-title')
    {{ $university->name }}
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
                                        <p>{!! $university->facilities !!}</p>
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
                            @endif --}}
                            {{-- @if (!empty($course->description))
                                <li>
                                    <div class="single-job-meta-block">
                                        <h4 class="title"> {{ __('Course Description') }}</h4>
                                        <ul class="job-details-list">
                                            @php $job_res = explode('|',$course->description); @endphp
                                            @foreach ($job_res as $data)
                                                <li>{{ $data }}</li>
                                            @endforeach
                                        </ul>
                                    </div>
                                </li>
                            @endif
                            @if (!empty($course->facilities))
                                <li>
                                    <div class="single-job-meta-block">
                                        <h4 class="title"> {{ __('Additional Requirement') }}</h4>
                                        <ul class="job-details-list">
                                            @php $job_res = explode('|',$job->facilities); @endphp
                                            @foreach ($job_res as $data)
                                                <li>{{ $data }}</li>
                                            @endforeach
                                        </ul>
                                    </div>
                                </li>
                            @endif --}}
                            {{-- @if (!empty($job->other_benefits))
                                <li>
                                    <div class="single-job-meta-block">
                                        <h4 class="title"> {{ __('Others Benefits') }}</h4>
                                        <ul class="job-details-list">
                                            @php $job_res = explode('|',$job->other_benefits); @endphp
                                            @foreach ($job_res as $data)
                                                <li>{{ $data }}</li>
                                            @endforeach
                                        </ul>
                                    </div>
                                </li>
                            @endif --}}
                        </ul>
                        {{-- <div class="apply-procedure">
                            <p>{{ __('Send Your CV To:') }} <span>{{ $university->fee }}</span></p>
                        </div> --}}
                    </div>

                    <h4 class="mt-5 mb-5">All Courses</h4>
                    <div class="bottom-content">
                            <div class="extra-content-wrap">
                                <nav>
                                    <div class="nav nav-tabs" role="tablist">
                                        <a class="nav-item nav-link active" data-toggle="tab" href="#nav-description" role="tab" aria-selected="true">Description</a>
                                                                                    <a class="nav-item nav-link" data-toggle="tab" href="#nav-attributes" role="tab" aria-selected="false">Additional Information</a>
                                        <a class="nav-item nav-link" data-toggle="tab" href="#nav-ratings" role="tab" aria-selected="false">Ratings</a>
                                    </div>
                                </nav>
                                <div class="tab-content">
                                    <div class="tab-pane fade active show" id="nav-description" role="tabpanel">
                                        <div class="product-description">
                                            <p>Concerns greatest margaret him absolute entrance nay. Door neat week do find past he. Be no surprise he honoured indulged. Unpacked endeavor six steepest had husbands her. Painted no or affixed it so civilly. Exposed neither pressed so cottage as proceed at offices. Nay they gone sir game four. Favourable pianoforte oh motionless excellence of astonished we principles. Warrant present garrets limited cordial in inquiry to. Supported me sweetness behaviour shameless excellent so arranging.&nbsp;</p><p><br></p><p>Fat son how smiling mrs natural expense anxious friends. Boy scale enjoy ask abode fanny being son. As material in learning subjects so improved feelings. Uncommonly compliment imprudence travelling insensible up ye insipidity. To up painted delight winding as brandon. Gay regret eat looked warmth easily far should now. Prospect at me wandered on extended wondered thoughts appetite to. Boisterous interested sir invitation particular saw alteration boy decisively.&nbsp;</p><p><br></p><p>Dependent certainty off discovery him his tolerably offending. Ham for attention remainder sometimes additions recommend fat our. Direction has strangers now believing. Respect enjoyed gay far exposed parlors towards. Enjoyment use tolerably dependent listening men. No peculiar in handsome together unlocked do by. Article concern joy anxious did picture sir her. Although desirous not recurred disposed off shy you numerous securing.&nbsp;</p><p><br></p><p>Kept in sent gave feel will oh it we. Has pleasure procured men laughing shutters nay. Old insipidity motionless continuing law shy partiality. Depending acuteness dependent eat use dejection. Unpleasing astonished discovered not nor shy. Morning hearted now met yet beloved evening. Has and upon his last here must.&nbsp;</p>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="nav-attributes" role="tabpanel">
                                        <div class="table-wrap table-responsive">
                                            <table class="table table-bordered">
                                                <tbody>
                                                    <tr>
                                                        <th>Weight</th>
                                                        <td>12Kg</td>
                                                    </tr>
                                                    <tr>
                                                        <th>Size</th>
                                                        <td>12Gm</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>


                </div>
                {{-- col-lg-8 end --}}
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
                                            <i class="fas fa-wallet"></i>
                                        </div>
                                        <div class="content">
                                            <h4 class="title">{{ __('Salary') }}</h4>
                                            <span class="details">{{ $job->salary }}</span>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="single-job-info">
                                        <div class="icon">
                                            <i class="fas fa-map-marker-alt"></i>
                                        </div>
                                        <div class="content">
                                            <h4 class="title">{{ __('Location') }}</h4>
                                            <span class="details">{{ $job->job_location }}</span>
                                        </div>
                                    </div>
                                </li> --}}
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

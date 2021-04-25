@php  $static_page_list = ['About','Service','FAQ','Team','Works','Price Plan','Blog','Contact','Career With Us','Events','Knowledgebase']; @endphp

@extends('frontend.frontend-master')
@section('site-title')
    {{get_static_option('career_with_us_page_'.get_user_lang().'_name')}}
@endsection
@section('page-title')
    {{get_static_option('career_with_us_page_'.get_user_lang().'_name')}}
@endsection
@section('style')
    <link rel="stylesheet" href="{{asset('assets/frontend/css/jqueryui.css')}}">
    <style>
        .widget_price_filter p{
            display: flex;
            justify-content: space-between;
            font-size: 16px;
            font-weight: 700;
            margin-top: 5px;
            color: #212529;
        }
        .jumbotron{
            background: #F4F7FC;
            margin-bottom: 0;
        }
        .jumbotron .title{
            font-size: 2.2rem;
        }
         .search-university .form-control-2{
            height: 56px;
         }
        .search-university .custom-select{
            height: 56px;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #495057;
            border: 1px solid #ced4da;
        }
        }
    </style>
@endsection
@section('content')
    <section class="jumbotron mt-xl-10 mt-md-5 search-university">
        <div class="container">
            <h2 class="title mb-sm-5 mb-md-0">Explore Universities of India</h2>
            <form action="{{route('university.search')}}" method="get" class="py-md-4">
            <div class="row">
                    <div class="col-md-3 form-group">
                        <select name="discipline" id="" class="custom-select">
                            <option readonly="readonly" disabled="disabled">Discipline</option>
                            @foreach ($disciplines as $data)
                                <option value="{{$data->id}}" @if($data->id == request()->query('discipline')) selected @endif>{{$data->title}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-3 form-group">
                        <select name="course" id="" class="custom-select">
                            <option readonly disabled>Course</option>
                            @foreach ($all_courses as $data)
                                <option value="{{$data->title}}" @if($data->title == request()->query('course')) selected @endif>{{$data->title}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-3 form-group">
                        <select name="level" id="" class=" custom-select">
                            <option readonly disabled>Level</option>
                            @foreach ($levels as $data)
                                <option value="{{$data->id}}" @if($data->id == request()->query('level')) selected @endif>{{$data->title}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-3 btn-wrapper">
                        <input type="submit" value="Search" class="form-control-2 btn-block boxed-btn  border-none">
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
                                @foreach($levels as $level)
                                    <li><a href="{{route('university.search.category' , ['id'=> $level->id , 'level' => strtolower($level->title)])}}">{{ucfirst($level->title)}}</a></li>
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
                        @if(count($searchCourses)>0)
                            @foreach($searchCourses as $data)
                                <div class="row single-job-list-item">
                                    <div class="col-md-4 ">
                                        <img src="http://127.0.0.1:8000/assets/uploads/media-uploader/grid-091587061194.jpg" alt="">
                                    </div>
                                    <div class="col-lg-8">
                                            {{-- <span class="job_type"><i class="far fa-clock"></i> {{str_replace('_',' ',$data->employment_status)}}</span> --}}
                                            {{-- <a href="{{route('frontend.jobs.single',['id' => $data->id,'any' => Str::slug($data->name)])}}"><h3 class="title"> {{$data->title}} </h3></a> --}}
                                            <a href="#"><h3 class="title"> {{$data->university->name}} </h3></a>
                                            <span class="company_name"><strong>{{__('Course:')}}</strong> {{$data->title}}</span>
                                            <span class="company_name"><strong>{{__('Address:')}}</strong> {{$data->university->location}}</span>
                                            <span class="deadline"><strong>{{__('Available Seat:')}}</strong> 200</span>
                                            <ul class="jobs-meta">
                                                <li><i class="fas fa-briefcase"></i> Learn More</li>
                                                <li><i class="fas fa-wallet"></i><a href="{{route('online.apply')}}">Apply Now</a></li>
                                            </ul>
                                    </div>
                                </div>
                            @endforeach
                        @else
                            <h4 class="title">No Records Found</h4>
                        @endif
                    @else 
                        {{-- No Search --}}
                        @foreach($all_courses as $data)
                            <div class="row single-job-list-item">
                                <div class="col-md-4 ">
                                    <img src="http://127.0.0.1:8000/assets/uploads/media-uploader/grid-091587061194.jpg" alt="">
                                </div>
                                <div class="col-lg-8">
                                        <a href="#"><h3 class="title"> {{$data->title}} </h3></a>
                                        <span class="company_name"><strong>{{__('Address:')}}</strong> {{$data->location}}</span>
                                        <span class="company_name"><strong>{{__('Courses:')}}</strong> 50</span>
                                        <span class="deadline"><strong>{{__('Available Seat:')}}</strong> 200</span>
                                        <ul class="jobs-meta">
                                            <li><i class="fas fa-briefcase"></i> Learn More</li>
                                            <li><i class="fas fa-wallet"></i><a href="{{route('online.apply')}}">Apply Now</a></li>
                                        </ul>
                                </div>
                            </div>
                        @endforeach
                    @endif
                    
                    @isset($searchCourses)
                    <div class="col-lg-12 text-center">
                        <nav class="pagination-wrapper " aria-label="Page navigation ">
                            {{$searchCourses->links()}}
                        </nav>
                    </div>
                    @endisset
                </div>
              
            </div>
        </div>
    </section>
@endsection

@section('scripts')
<script src="{{asset('assets/frontend/js/jqueryui.js')}}"></script>
<script>
        (function () {
            "use strict";

            //search form trigger
            $(document).on('click','#product_search_btn',function (e) {
                e.preventDefault();
                var searchTerms = $('#search_term').val();
                $('#search_query').val(searchTerms)
                $('#product_hidden_form_submit_button').trigger('click');
            });
            $(document).on('change','#product_sorting_select',function (e) {
                var sortVal = $('#product_sorting_select').val();
                $('#orderby').val(sortVal);
                $('#product_hidden_form_submit_button').trigger('click');
            });
            $(document).on('click','.product_category_list > li a',function (e) {
                e.preventDefault();
                var catID = $(this).data('catid');
                $('#category_id').val(catID);
                $('#product_hidden_form_submit_button').trigger('click');
            });
            $(document).on('change','input[name="ratings_val"]',function (e) {
                e.preventDefault();
                $('#review').val($(this).val());
                $('#product_hidden_form_submit_button').trigger('click');
            });
            $(document).on('click','#submit_price_filter_btn',function (e) {
                e.preventDefault();
                $('#product_hidden_form_submit_button').trigger('click');
            });
            $( "#slider-range" ).slider({
                range: true,
                min: 0,
                max: "199",
                values: [ "0", "199" ],
                slide: function( event, ui ) {
                    var min_price = ui.values[ 0 ];
                    var max_price = ui.values[ 1 ];
                    var siteGlobalCurrency = "$";
                    $('.min_filter_price').text(siteGlobalCurrency+min_price);
                    $('.max_filter_price').text(siteGlobalCurrency+max_price);
                    $('#min_price').val(min_price);
                    $('#max_price').val(max_price);
                }
            });
            $(document).on('click','.ajax_add_to_cart',function (e) {
                e.preventDefault();
                var allData = $(this).data();
                var el = $(this);
                $.ajax({
                    url : "https://xgenious.com/laravel/dizzcox/product-item/ajax/add-to-cart",
                    type: "POST",
                    data: {
                        _token : "ADQhiT6iadBk1XRN7cKRN032H4vnMk57oPEyY0eo",
                        'product_id' : allData.product_id,
                        'quantity' : allData.product_quantity,
                    },
                    beforeSend: function(){
                        el.text("Adding");
                    },
                    success: function (data) {
                        el.html('<i class="fa fa-shopping-bag" aria-hidden="true"></i>'+"Add To Cart");
                        toastr.options = {
                            "closeButton": true,
                            "debug": false,
                            "newestOnTop": false,
                            "progressBar": true,
                            "positionClass": "toast-top-right",
                            "preventDuplicates": false,
                            "onclick": null,
                            "showDuration": "300",
                            "hideDuration": "1000",
                            "timeOut": "2000",
                            "extendedTimeOut": "1000",
                            "showEasing": "swing",
                            "hideEasing": "linear",
                            "showMethod": "fadeIn",
                            "hideMethod": "fadeOut"
                        }
                        toastr.success(data.msg);
                        $('.navbar-area .nav-container .nav-right-content ul li.cart .pcount,.cart-icon-wrap .badge').text(data.total_cart_item);
                    }
                });
            });
        })(jQuery);
    </script>
@endsection

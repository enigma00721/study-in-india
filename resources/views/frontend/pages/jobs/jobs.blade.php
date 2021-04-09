@php  $static_page_list = ['About','Service','FAQ','Team','Works','Price Plan','Blog','Contact','Career With Us','Events','Knowledgebase']; @endphp

{{-- @extends('frontend.frontend-page-master') --}}
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
        }
    </style>
@endsection
@section('content')
    <section class="jumbotron mt-10">
        <div class="container">
            <h1 class="title">Explore Universities of Inida</h1>
            <div class="row">
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
                <div class="col-md-3">
                    <input type="submit" value="Search" class="form-control btn btn-primary">
                </div>
            </div>
        </div>
    </section>
    <section class="blog-content-area padding-120">
        <div class="container">
            <div class="row">

                <div class="col-lg-4">
                    <div class="product-widget-area">
                        <div class="widget widget_nav_menu">
                            <h4 class="widget-title">Category</h4>
                            <ul class="product_category_list">
                                <li><a data-catid="1" href="https://xgenious.com/laravel/dizzcox/product-category/1/green-tree">Green Tree</a></li>
                                <li><a data-catid="2" href="https://xgenious.com/laravel/dizzcox/product-category/2/stand-chair">Stand Chair</a></li>
                                <li><a data-catid="3" href="https://xgenious.com/laravel/dizzcox/product-category/3/office-chair">Office Chair</a></li>
                                <li><a data-catid="4" href="https://xgenious.com/laravel/dizzcox/product-category/4/black-tree">Black Tree</a></li>
                                <li><a data-catid="5" href="https://xgenious.com/laravel/dizzcox/product-category/5/arm-chair">Arm Chair</a></li>
                                <li><a data-catid="6" href="https://xgenious.com/laravel/dizzcox/product-category/6/stand-tree">Stand Tree</a></li>
                            </ul>
                        </div>
                        <div class="widget widget_price_filter">
                            <h4 class="widget-title">Price Filter</h4>
                            <div id="slider-range" class="ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"><div class="ui-slider-range ui-corner-all ui-widget-header" style="left: 0%; width: 100%;"></div><span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default" style="left: 0%;"></span><span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default" style="left: 100%;"></span></div>
                            <p><span class="min_filter_price">$0</span> <span class="max_filter_price">$199</span></p>
                            <button type="button" class="boxed-btn style-01 btn btn-primary" id="submit_price_filter_btn">Apply Filter</button>
                        </div>
                        <div class="widget widget_rating_filter">
                            <h4 class="widget-title">Rating Filter</h4>
                            <ul class="ratings_filter_list">
                                <li>
                                    <div class="single-rating-filter-wrap">
                                        <input type="radio" id="rating_bal_all" checked="" name="ratings_val" value="">
                                        <label class="filter-text" for="rating_bal_all">Show All</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="single-rating-filter-wrap">
                                        <input type="radio" id="rating_bal_04" name="ratings_val" value="4">
                                        <label class="filter-text" for="rating_bal_04">Upto 4 star</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="single-rating-filter-wrap">
                                        <input type="radio" id="rating_bal_03" name="ratings_val" value="3">
                                        <label class="filter-text" for="rating_bal_03">Upto 3 star</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="single-rating-filter-wrap">
                                        <input type="radio" name="ratings_val" id="rating_bal_02" value="2">
                                        <label for="rating_bal_02" class="filter-text">Upto 2 star</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="single-rating-filter-wrap">
                                        <input type="radio" name="ratings_val" id="rating_bal_01" value="1">
                                        <label class="filter-text" for="rating_bal_01">Upto 1star</label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                </div>
                <div class="col-lg-8">
                    @foreach($all_jobs as $data)
                        <div class="row single-job-list-item">
                            <div class="col-md-4 ">
                                <img src="http://127.0.0.1:8000/assets/uploads/media-uploader/grid-091587061194.jpg" alt="">
                            </div>
                            <div class="col-lg-8">
                                    {{-- <span class="job_type"><i class="far fa-clock"></i> {{str_replace('_',' ',$data->employment_status)}}</span> --}}
                                    <a href="{{route('frontend.jobs.single',['id' => $data->id,'any' => Str::slug($data->title)])}}"><h3 class="title">College Name</h3></a>
                                    <span class="company_name"><strong>{{__('Address:')}}</strong> {{$data->company_name}}</span>
                                    <span class="company_name"><strong>{{__('Courses:')}}</strong> 50</span>
                                    <span class="deadline"><strong>{{__('Available Seat:')}}</strong> 200</span>
                                    <ul class="jobs-meta">
                                        <li><i class="fas fa-briefcase"></i> Learn More</li>
                                        <li><i class="fas fa-wallet"></i> Apply Now</li>
                                    </ul>
                            </div>
                        </div>
                    @endforeach
                    <div class="col-lg-12 text-center">
                        <nav class="pagination-wrapper " aria-label="Page navigation ">
                            {{$all_jobs->links()}}
                        </nav>
                    </div>
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

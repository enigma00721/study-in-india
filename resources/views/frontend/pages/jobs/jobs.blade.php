@php  $static_page_list = ['About','Service','FAQ','Team','Works','Price Plan','Blog','Contact','Career With Us','Events','Knowledgebase']; @endphp

@extends('frontend.frontend-page-master')
@section('site-title')
    {{get_static_option('career_with_us_page_'.get_user_lang().'_name')}}
@endsection
@section('page-title')
    {{get_static_option('career_with_us_page_'.get_user_lang().'_name')}}
@endsection
@section('style')
    <link rel="stylesheet" href="{{asset('assets/frontend/css/jqueryui.css')}}">
@endsection
@section('content')
    <section class="blog-content-area padding-120">
        <div class="container">
            <div class="row">

                  <div class="col-lg-4">
                    <div class="widget-area product-widget-area">
                        {{-- <div class="widget widget_search">
                            <form action="{{route('frontend.jobs.search')}}" method="get" class="search-form">
                                <div class="form-group">
                                    <input type="text" class="form-control" name="search" placeholder="{{__('Search...')}}">
                                </div>
                                <button class="submit-btn" type="submit"><i class="fa fa-search"></i></button>
                            </form>
                        </div> --}}
                        {{-- <div class="widget widget_nav_menu">
                            <h2 class="widget-title">{{get_static_option('site_jobs_category_'.get_user_lang().'_title')}}</h2>
                            <ul>
                                @foreach($all_job_category as $data)
                                    <li><a href="{{route('frontend.jobs.category',['id' => $data->id,'any'=> Str::slug($data->title,'-')])}}">{{ucfirst($data->title)}}</a></li>
                                @endforeach
                            </ul>
                        </div> --}}
                        <div class="widget widget_price_filter">
                            <h4 class="widget-title">Price Filter</h4>
                            <div id="slider-range" class="ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"><div class="ui-slider-range ui-corner-all ui-widget-header" style="left: 0%; width: 100%;"></div><span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default" style="left: 0%;"></span><span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default" style="left: 100%;"></span></div>
                            <p><span class="min_filter_price">$0</span> <span class="max_filter_price">$199</span></p>
                            <button type="button" class="boxed-btn style-01" id="submit_price_filter_btn">Apply Filter</button>
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

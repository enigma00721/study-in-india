@extends('backend.admin-master')

@section('site-title')
    {{__('Section Manage')}}
@endsection
@section('content')
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <div class="col-lg-12">
                <div class="margin-top-40"></div>
                @include('backend/partials/message')
                @if($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach($errors->all() as $error)
                                <li>{{$error}}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
            </div>
            <div class="col-lg-12 mt-t">
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title">{{__('Section Manage')}}</h4>
                        <form action="{{route('admin.homeone.section.manage')}}" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="row">
                               
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label for="home_page_counterup_section_status"><strong>{{__('Counterup Section Show/Hide')}}</strong></label>
                                        <label class="switch">
                                            <input type="checkbox" name="home_page_counterup_section_status"  @if(!empty(get_static_option('home_page_counterup_section_status'))) checked @endif id="home_page_counterup_section_status">
                                            <span class="slider"></span>
                                        </label>
                                    </div>
                                </div>
                               
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label for="home_page_testimonial_section_status"><strong>{{__('Testimonial Section Show/Hide')}}</strong></label>
                                        <label class="switch">
                                            <input type="checkbox" name="home_page_testimonial_section_status"  @if(!empty(get_static_option('home_page_testimonial_section_status'))) checked @endif id="home_page_testimonial_section_status">
                                            <span class="slider"></span>
                                        </label>
                                    </div>
                                </div>
                              
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label for="home_page_brand_logo_section_status"><strong>{{__('Brand Logo Section Show/Hide')}}</strong></label>
                                        <label class="switch">
                                            <input type="checkbox" name="home_page_brand_logo_section_status"  @if(!empty(get_static_option('home_page_brand_logo_section_status'))) checked @endif id="home_page_brand_logo_section_status">
                                            <span class="slider"></span>
                                        </label>
                                    </div>
                                </div>
                               
                            </div>

                            <button type="submit" class="btn btn-primary mt-4 pr-4 pl-4">{{__('Update Settings')}}</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection


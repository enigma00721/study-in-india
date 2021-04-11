@extends('backend.admin-master')
@section('site-title')
    {{__('Edit University')}}
@endsection
@section('style')
    <link rel="stylesheet" href="{{asset('assets/backend/css/summernote-bs4.css')}}">
    <link rel="stylesheet" href="{{asset('assets/backend/css/dropzone.css')}}">
    <link rel="stylesheet" href="{{asset('assets/backend/css/media-uploader.css')}}">
@endsection
@section('content')
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <!-- basic form start -->
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
            <div class="col-lg-12 mt-5">
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title">{{__('Edit University')}}</h4>
                        <form action="{{route('admin.university.update')}}" method="post" enctype="multipart/form-data">
                            @csrf
                            <input type="hidden" name="university_id" value="{{$university->id}}">
                            <div class="row">
                                <div class="col-lg-12">
                                    
                                    <div class="form-group">
                                        <label for="name">{{__('Name')}}</label>
                                        <input type="text" class="form-control"  id="name" name="name" value="{{$university->name}}" placeholder="{{__('Name')}}">
                                    </div>

                                 
                                    <div class="form-group">
                                        <label for="description">{{__('Description')}}</label>
                                        <textarea name="description" id="description" class="form-control" cols="30" placeholder="{{__('Description')}}" rows="10">{{$university->description}}</textarea>
                                        <small class="info-text">{{__('separate description by pipe (|), to break in new line')}}</small>
                                    </div>
                                    <div class="form-group">
                                        <label for="facilities">{{__('Facilities')}}</label>
                                        <textarea name="facilities" id="facilities" class="form-control" cols="30" placeholder="{{__('Facilities')}}" rows="10">{{$university->facilities}}</textarea>
                                        <small class="info-text">{{__('separate responsibility by pipe (|), to break in new line')}}</small>
                                    </div>
                               
                                   
                                    <div class="form-group">
                                        <label for="job_location">{{__('Location')}}</label>
                                        <input type="text" class="form-control"  id="location" name="location" value="{{$university->location}}" placeholder="{{__('Location')}}">
                                    </div>
                                  
                                       <div class="form-group">
                                        <label for="image">{{__('Image')}}</label>
                                        <div class="media-upload-btn-wrapper">
                                            <div class="img-wrap">
                                                @php
                                                    $event_img = get_attachment_image_by_id($university->image,null,false);
                                                    $event_img_btn_label = 'Upload Image';
                                                @endphp
                                                @if (!empty($event_img))
                                                    <div class="attachment-preview">
                                                        <div class="thumbnail">
                                                            <div class="centered">
                                                                <img class="avatar user-thumb" src="{{$event_img['img_url']}}" alt="">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    @php  $event_img_btn_label = 'Change Image'; @endphp
                                                @endif
                                            </div>
                                            <input type="hidden" name="image" value="{{$university->image}}">
                                            <button type="button" class="btn btn-info media_upload_form_btn" data-btntitle="Select Event Image" data-modaltitle="Upload Event Image" data-toggle="modal" data-target="#media_upload_modal">
                                                {{$event_img_btn_label}}
                                            </button>
                                        </div>
                                        <small>{{__('Recommended image size 1920x1280')}}</small>
                                    </div>
                                  
                                    <div class="form-group">
                                        <label for="status">{{__('Status')}}</label>
                                        <select name="status" id="status"  class="form-control">
                                            <option @if($university->status == 'publish') selected @endif value="publish">{{__('Publish')}}</option>
                                            <option @if($university->status == 'draft') selected @endif value="draft">{{__('Draft')}}</option>
                                        </select>
                                    </div>
                                    <button type="submit" class="btn btn-primary mt-4 pr-4 pl-4">{{__('Update University')}}</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @include('backend.partials.media-upload.media-upload-markup')

@endsection

@section('script')
    <script src="{{asset('assets/backend/js/dropzone.js')}}"></script>
    @include('backend.partials.media-upload.media-js')
@endsection
@extends('backend.admin-master')
@section('style')

    <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
    <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/responsive/2.2.3/css/responsive.jqueryui.min.css">
    <style>
        .dataTables_wrapper .dataTables_paginate .paginate_button{
            padding: 0 !important;
        }
        div.dataTables_wrapper div.dataTables_length select {
            width: 60px;
            display: inline-block;
        }
    </style>
    <link rel="stylesheet" href="{{asset('assets/backend/css/media-uploader.css')}}">
@endsection
@section('site-title')
    {{__('All Events')}}
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
            <div class="col-lg-12 mt-5">
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title">{{__('All Events')}}</h4>
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            @php $a=0; @endphp
                            @foreach($all_events as $key => $event)
                                <li class="nav-item">
                                    <a class="nav-link @if($a == 0) active @endif"  data-toggle="tab" href="#slider_tab_{{$key}}" role="tab" aria-controls="home" aria-selected="true">{{get_language_by_slug($key)}}</a>
                                </li>
                                @php $a++; @endphp
                            @endforeach
                        </ul>
                        <div class="tab-content margin-top-40" id="myTabContent">
                            @php $b=0; @endphp
                            @foreach($all_events as $key => $event)
                                <div class="tab-pane fade @if($b == 0) show active @endif" id="slider_tab_{{$key}}" role="tabpanel" >
                                    <div class="table-wrap table-responsive">
                                        <table class="table table-default" id="all_blog_table">
                                            <thead>
                                            <th>{{__('ID')}}</th>
                                            <th>{{__('Title')}}</th>
                                            <th>{{__('Image')}}</th>
                                            <th>{{__('Location')}}</th>
                                            <th>{{__('Category')}}</th>
                                            <th>{{__('Event Date')}}</th>
                                            <th>{{__('Action')}}</th>
                                            </thead>
                                            <tbody>
                                            @foreach($event as $data)
                                                <tr>
                                                    <td>{{$data->id}}</td>
                                                    <td>{{$data->title}}</td>
                                                    <td>
                                                       <div class="img-wrap">
                                                           @php
                                                               $event_img = get_attachment_image_by_id($data->image,'thumbnail',true);
                                                           @endphp
                                                           @if (!empty($event_img))
                                                               <div class="attachment-preview">
                                                                   <div class="thumbnail">
                                                                       <div class="centered">
                                                                           <img class="avatar user-thumb" src="{{$event_img['img_url']}}" alt="">
                                                                       </div>
                                                                   </div>
                                                               </div>
                                                           @endif
                                                       </div>
                                                    </td>
                                                    <td>{{$data->location}}</td>
                                                    <td>{{$data->category->title}}</td>
                                                    <td>{{date("d - M - Y", strtotime($data->date))}}</td>
                                                    <td style="display: flex;">
                                                        <form action="{{route('admin.events.delete',$data->id)}}" method="post">
                                                            @csrf
                                                            <button type="submit" class="btn btn-sm btn-danger mb-3 mr-1 delete-confirm" >
                                                                <i class="fas fa-trash" aria-hidden="true"></i>
                                                            </button>
                                                        </form>
                                                        <a class="btn btn-lg btn-primary btn-sm mb-3 mr-1" href="{{route('admin.events.edit',$data->id)}}">
                                                            <i class="ti-pencil"></i>
                                                        </a>
                                                        <a class="btn btn-lg btn-primary btn-sm mb-3 mr-1" target="_blank" href="{{route('frontend.events.single',['id' => $data->id, 'any' => Str::slug($data->title)])}}">
                                                            <i class="ti-eye"></i>
                                                        </a>
                                                    </td>
                                                </tr>
                                            @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                @php $b++; @endphp
                            @endforeach
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    <!-- Start datatable js -->
    <script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
    <script src="//cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
    <script src="//cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>
    <script src="//cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
    <script src="//cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap.min.js"></script>

    <script>
        $(document).ready(function() {

            $('.table-wrap > table').DataTable( {
                "order": [[ 0, "desc" ]]
            } );
        } );
    </script>
    
    @include('backend.partials.confirm-delete')
@endsection

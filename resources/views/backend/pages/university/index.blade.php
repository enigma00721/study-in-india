@extends('backend.admin-master')
@section('style')
    <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
    <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/responsive/2.2.3/css/responsive.jqueryui.min.css">
    <link rel="stylesheet" href="{{asset('assets/backend/css/media-uploader.css')}}">

    <style>
        .dataTables_wrapper .dataTables_paginate .paginate_button{
            padding: 0 !important;
        }
        div.dataTables_wrapper div.dataTables_length select {
            width: 60px;
            display: inline-block;
        }
    </style>
@endsection
@section('site-title')
    {{__('All Universities')}}
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
                        <h4 class="header-title">{{__('All Universities')}}</h4>
                      
                        <div class="tab-content margin-top-40" id="myTabContent">
                            @php $b=0; @endphp
                            @foreach($all_universities as $key => $university)
                                <div class="tab-pane fade @if($b == 0) show active @endif" id="slider_tab_{{$key}}" role="tabpanel" >
                                    <div class="table-wrap table-responsive">
                                        <table class="table table-default" id="all_blog_table">
                                            <thead>
                                            <th>{{__('ID')}}</th>
                                            <th>{{__('Name')}}</th>
                                            <th>{{__('Description')}}</th>
                                            <th>{{__('Facility')}}</th>
                                            <th>{{__('Location')}}</th>
                                            <th>Image</th>
                                            <th>{{__('Created At')}}</th>
                                            <th>Status </th>
                                            <th>{{__('Action')}}</th>
                                            </thead>
                                            <tbody>
                                            @foreach($university as $data)
                                                <tr>
                                                    <td>{{$data->id}}</td>
                                                    <td>{{$data->name}}</td>
                                                    <td>{{ \Illuminate\Support\Str::limit($data->description ?? '',100,' ......') }}</td>
                                                    <td>{{ \Illuminate\Support\Str::limit($data->facilities ?? '',100,' ......') }}</td>
                                                    <td>{{$data->location}}</td>
                                                    <td>
                                                        @php
                                                            $blog_img = get_attachment_image_by_id($data->image,null,true);
                                                        @endphp
                                                        @if (!empty($blog_img))
                                                            <div class="attachment-preview">
                                                                <div class="thumbnail">
                                                                    <div class="centered">
                                                                        <img class="avatar user-thumb" src="{{$blog_img['img_url']}}" alt="">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        @endif
                                                    </td>
                                                    <td>{{date_format($data->created_at,'d - M - Y')}}</td>
                                                    <td> <button class="btn   {{ $data->status=='publish' ? 'btn-primary':'btn-warning'  }} "> {{ $data->status=='publish' ? 'active':'inactive'  }}</button> </td>
                                                    <td style="display: flex">

                                                        <a class="btn btn-lg btn-primary btn-sm mb-3 mr-1"
                                                             data-toggle="tooltip" data-placement="left" title="Add Course To University!"
                                                             href="{{route('admin.university.add.course',$data->id)}}">
                                                            <i class="fas fa-plus-circle"></i>
                                                        </a>

                                                        <form action='{{route('admin.university.delete',$data->id)}}' method="POST" >
                                                            @csrf
                                                            <button type="submit" class="btn btn-sm btn-danger mb-3 mr-1  delete-confirm" >
                                                                <i class="fas fa-trash" aria-hidden="true"></i>
                                                            </button>
                                                        </form>
                                                       
                                                        <a class="btn btn-lg btn-primary btn-sm mb-3 mr-1"  href="{{route('admin.university.edit',$data->id)}}">
                                                            <i class="ti-pencil"></i>
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
             $('[data-toggle="tooltip"]').tooltip();   
        } );
    </script>

    {{-- sweet alert --}}
@include('backend.partials.confirm-delete')
@endsection

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
@endsection
@section('site-title')
    {{__('All Courses')}}
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
                        <div style="display: flex;justify-content:space-between;align-items:center">
                            <h4 class="header-title">{{__('All Courses')}}</h4>
                            {{-- <a href="{{route('admin.course.create')}}"><button class="btn btn-primary mb-2">Add Course</button>
                                </a> --}}
                        </div>
                        <div class="table-wrap table-responsive">
                            <table class="table table-default" id="all_blog_table">
                                <thead>
                                    <th>Id</th>
                                    <th>Course Title</th>
                                    <th>Duration</th>
                                    <th>Discipline</th>
                                    <th>Level</th>
                                    <th>Action</th>
                                </thead>
                                <tbody>
                                    @foreach($courses as $data)
                                    <tr>
                                        <td>{{$data->id}}</td>
                                        <td>{{$data->title}}</td>
                                        <td>{{$data->course_duration}}</td>
                                        <td>{{optional($data->discipline)->title}}</td>
                                        <td>{{optional($data->level)->title}}</td>
                                        <td style="display: flex">
                                            <form action='{{route('admin.course.delete',$data->id)}}' method="POST" >
                                                @csrf
                                                <button type="submit" class="btn btn-sm btn-danger mb-3 mr-1  delete-confirm" >
                                                    <i class="fas fa-trash" aria-hidden="true"></i>
                                                </button>
                                            </form>
                                            
                                            <a class="btn btn-lg btn-primary btn-sm mb-3 mr-1" href="{{route('admin.course.edit',$data->id)}}">
                                                <i class="ti-pencil"></i>
                                            </a>
                                        </td>
                                      
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
@include('backend.partials.confirm-delete')
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

@endsection

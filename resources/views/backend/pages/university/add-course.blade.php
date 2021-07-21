@extends('backend.admin-master')
@section('site-title')
    {{__('Add Course ')}}
@endsection
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
        .required:after {
            font-weight: bold;
            color: #e32;
            content: ' *';
            display:inline;
        }
    </style>
@endsection
@section('content')
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <div class="col-lg-12">
                <div class="margin-top-40"></div>
                    <a href="{{route('admin.university')}}" class="btn btn-block btn-secondary text-white">Go Back</a> 
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
            <div class="col-lg-7 mt-5">
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title">{{__('Courses in University')}}</h4>
            
                        <div class="tab-content margin-top-40" id="myTabContent">
                            <div class="table-wrap table-responsive">
                                <table class="table table-default">
                                    <thead>
                                    <th>{{__('ID')}}</th>
                                    <th>{{__('Title')}}</th>
                                    <th>{{__('Fee')}}</th>
                                    {{-- <th>{{__('Seats')}}</th> --}}
                                    <th>{{__('HostelFee')}}</th>
                                    <th>{{__('MessFee')}}</th>
                                    <th>{{__('Action')}}</th>
                                    </thead>
                                    <tbody>
                                        @foreach($mycourses as $key=> $data)
                                            <tr>
                                                <td>{{++$key}}</td>
                                                {{-- <td>{{$data->id}}</td> --}}
                                                <td>{{$data->title}}</td>
                                                {{-- using model accessor on course model --}}
                                                <td>{{$data->fee}}</td>
                                                {{-- <td>{{$data->pivot->seats}}</td> --}}
                                                @if($data->pivot->hostel)
                                                <td>{{$data->hostel}}</td>
                                                @else 
                                                <td>null</td>
                                                @endif
                                                @if($data->pivot->mess)
                                                <td>{{$data->mess}}</td>
                                                @else 
                                                <td>null</td>
                                                @endif
                                                {{-- <td>
                                                    @if('publish' == $data->status)
                                                        <span class="btn btn-success btn-sm">{{ucfirst($data->status)}}</span>
                                                    @else
                                                        <span class="btn btn-warning btn-sm">{{ucfirst($data->status)}}</span>
                                                    @endif
                                                </td> --}}
                                                <td style="display: flex">

                                                     <form action='{{route('admin.university.delete.course',['universityId'=>$id , 'id'=>$data->pivot->id])}}' method="POST" >
                                                        @csrf
                                                        <button type="submit" class="btn btn-sm btn-danger mb-3 mr-1  delete-confirm" >
                                                            <i class="fas fa-trash" aria-hidden="true"></i>
                                                        </button>
                                                    </form>

                                                    <a href="#"
                                                        data-toggle="modal"
                                                        data-target="#category_edit_modal"
                                                        class="btn btn-lg btn-primary btn-sm mb-3 mr-1 category_edit_btn"
                                                        data-id="{{$data->pivot->id}}"
                                                        data-title="{{$data->title}}"
                                                        {{-- data-seats="{{$data->pivot->seats}}" --}}
                                                        data-fee="{{$data->pivot->fee}}"
                                                        data-hostel="{{$data->pivot->hostel}}"
                                                        data-mess="{{$data->pivot->mess}}"
                                                    >
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
            <div class="col-lg-5 mt-5">
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title">{{__('Add Course To University')}}</h4>
                        <form action="{{route('admin.university.store.course')}}" method="post" enctype="multipart/form-data">
                            @csrf
                            <input type="hidden" name="university_id" value="{{$id}}">
                            <div class="form-group">
                                <label class="required" for="course_id">{{__('Courses')}}</label>
                                <select name="course_id" id="course_id" class="form-control">
                                    @foreach($courses as $data)
                                        <option value="{{$data->id}}">{{$data->title}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="required" for="fee">{{__('Tution Fee')}}</label>
                                <input type="number" class="form-control"  id="fee" name="fee" placeholder="{{__('Tution Fee')}}">
                            </div>
                            {{-- <div class="form-group">
                                <label class="required" for="seats">{{__('Total Seats')}}</label>
                                <input type="number" class="form-control"  id="seats" name="seats" placeholder="{{__('Seats')}}">
                            </div> --}}
                            <div class="form-group">
                                <label for="seats">{{__('Hostel Fee')}}</label>
                                <input type="number" class="form-control"  id="seats" name="hostel" placeholder="{{__('Hostel Fee')}}">
                            </div>
                            <div class="form-group">
                                <label for="seats">{{__('Mess Fee')}}</label>
                                <input type="number" class="form-control"  id="mess" name="mess" placeholder="{{__('Mess Fee')}}">
                            </div>
                            {{-- <div class="form-group">
                                <label for="status">{{__('Status')}}</label>
                                <select name="status" class="form-control" id="status">
                                    <option value="draft">{{__("Draft")}}</option>
                                    <option value="publish">{{__("Publish")}}</option>
                                </select>
                            </div> --}}
                            <button type="submit" class="btn btn-primary mt-4 pr-4 pl-4">{{__('Submit')}}</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="category_edit_modal" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">{{__('Update Course Info')}}</h5>
                    <button type="button" class="close" data-dismiss="modal"><span>×</span></button>
                </div>
                <form action="{{route('admin.university.update.course',$id)}}"  method="post">
                    <input type="hidden" name="id" id="id" >
                    <div class="modal-body">
                        @csrf
                        
                        <div class="form-group">
                            <label for="title" class="required">{{__('Course')}}</label>
                            <input type="text" class="form-control"  id="edit_title" name="title" placeholder="{{__('Course Title')}}" disabled readonly>
                        </div>
                        <div class="form-group">
                            <label for="fee" class="required">{{__('Fee')}}</label>
                            <input type="number" class="form-control"  id="edit_fee" name="fee" placeholder="{{__('Fee')}}" autofocus>
                        </div>
                        {{-- <div class="form-group">
                            <label for="seats">{{__('Seats')}}</label>
                            <input type="number" class="form-control"  id="edit_seats" name="seats" placeholder="{{__('Seats')}}">
                        </div> --}}
                        <div class="form-group">
                            <label for="hostel">{{__('Hostel Fee')}}</label>
                            <input type="number" class="form-control"  id="edit_hostel" name="hostel" placeholder="{{__('Hostel Fee')}}">
                        </div>
                        <div class="form-group">
                            <label for="mess">{{__('Mess Fee')}}</label>
                            <input type="number" class="form-control"  id="edit_mess" name="mess" placeholder="{{__('Mess Fee')}}">
                        </div>
                       
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">{{__('Close')}}</button>
                        <button type="submit" class="btn btn-primary">{{__('Save Changes')}}</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

@endsection


@section('script')

@include('backend.partials.confirm-delete')

    <script>
        $(document).ready(function () {
            $(document).on('click','.category_edit_btn',function(){

                var el = $(this);
                // var id = el.data('id');
                var title = el.data('title');
                // var seats = el.data('seats');
                var fee = el.data('fee');
                var hostel = el.data('hostel');
                var mess = el.data('mess');
                var course_id = el.data('id')
                // console.log(seats);
                // var status = el.data('status');
                var modal = $('#category_edit_modal');
                modal.find('#edit_title').val(title);
                modal.find('#edit_fee').val(fee);
                // modal.find('#edit_seats').val(seats);
                modal.find('#edit_hostel').val(hostel);
                modal.find('#edit_mess').val(mess);
                modal.find('#id').val(course_id);
                
            });
        });
    </script>
    <!-- Start datatable js -->
    <script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
    <script src="//cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
    <script src="//cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>
    <script src="//cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
    <script src="//cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap.min.js"></script>
    <script>
        $(document).ready(function() {

            $('.table-wrap > table').DataTable( {
                "order": [[ 0, "asc" ]]
            } );
        } );
    </script>



@endsection


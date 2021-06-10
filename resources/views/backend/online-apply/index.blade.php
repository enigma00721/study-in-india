@extends('backend.admin-master')
@section('style')
    <link rel="stylesheet" href="{{asset('assets/backend/css/bootstrap-tagsinput.css')}}">
    <link rel="stylesheet" href="{{asset('assets/backend/css/summernote-bs4.css')}}">
    <link rel="stylesheet" href="{{asset('assets/backend/css/dropzone.css')}}">
    <link rel="stylesheet" href="{{asset('assets/backend/css/media-uploader.css')}}">
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
    {{__('Online Applied')}}
@endsection
@section('content')
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <div class="col-12 mt-5">
                <div class="card">
                    <div class="card-body">
                        <div class="col-12 mt-5">
                            <div class="card">
                                <div class="card-body">
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
                                    <h4 class="header-title">{{__('Online Applied')}}</h4>
                                    <div class="data-tables datatable-primary table-responsive">
                                        <table id="all_user_table" >
                                            <thead class="text-capitalize">
                                            <tr>
                                                <th>{{__('ID')}}</th>
                                                <th>{{__('Name')}}</th>
                                                <th>{{__('Mobile')}}</th>
                                                <th>{{__('Email')}}</th>
                                                <th>{{__('Address')}}</th>
                                                <th>{{__('Sent At')}}</th>
                                                <th>{{__('Action')}}</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            @foreach($all_orders as $data)
                                                <tr>
                                                    <td>{{$data->id}}</td>
                                                    <td>{{$data->name}}</td>
                                                    <td>{{$data->mobile_number}}</td>
                                                    <td>{{$data->email}}</td>
                                                    <td>{{$data->address}}</td>
                                                   
                                                        @php
                                                            $all_custom_fields = [];
                                                            $all_custom_fields_un = unserialize($data->custom_fields);
                                                            $all_custom_fields = json_encode($all_custom_fields_un);
                                                        @endphp
                                                    <td>{{date_format($data->created_at,'d M Y')}}</td>
                                                    <td class="d-flex">

                                                        <form action='{{route('admin.online.apply.delete',$data->id)}}' method="POST">
                                                            @csrf
                                                            <button type="submit" class="btn btn-sm btn-danger mb-3 mr-1  delete-confirm" >
                                                                <i class="fas fa-trash" aria-hidden="true"></i>
                                                            </button>
                                                        </form>
                                                       
                                                        {{-- send mail button --}}
                                                        <a href="#"
                                                           data-toggle="modal"
                                                           data-target="#user_edit_modal"
                                                           data-email="{{$data->email}}"
                                                           data-name="{{$data->name}}"
                                                            data-toggle="tooltip" data-placement="left" title="Send Mail!"
                                                           class="btn btn-lg btn-primary btn-sm mb-3 mr-1 user_edit_btn"
                                                        >
                                                            <i class="ti-email"></i>
                                                        </a>

                                                        <a href="{{route('admin.online.apply.view',$data->id)}}" 
                                                            data-toggle="tooltip" data-placement="left" title="View All Info!"
                                                        class="btn btn-lg btn-primary btn-sm mb-3 mr-1 ">
                                                           <i class="ti-eye"></i>
                                                       
                                                        {{-- <a href="#"
                                                           data-id="{{$data->id}}"
                                                           data-status="{{$data->status}}"
                                                           data-toggle="modal"
                                                           data-target="#order_status_change_modal"
                                                           class="btn btn-lg btn-info btn-sm mb-3 mr-1 order_status_change_btn"
                                                        >
                                                            {{__("Update Status")}}
                                                        </a> --}}
                                                    </td>
                                                </tr>
                                            @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Primary table end -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    

    {{-- send mail modal --}}
    <div class="modal fade" id="user_edit_modal" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">{{__('Send Mail To Online Applied Student')}}</h5>
                    <button type="button" class="close" data-dismiss="modal"><span>×</span></button>
                </div>

                <form action="{{route('admin.online.apply.mail')}}" method="post" enctype="multipart/form-data">
                    @csrf
                    <div class="modal-body">
                        @csrf
                        <div class="form-group">
                            <label for="name">{{__('Name')}}</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="{{__('Enter name')}}">
                        </div>
                        <div class="form-group">
                            <label for="email">{{__('Email')}}</label>
                            <input type="text" class="form-control" id="email" name="email" placeholder="{{__('Email')}}">
                        </div>
                        <div class="form-group">
                            <label for="Subject">{{__('Subject')}}</label>
                            <input type="text" class="form-control" name="subject" value="{{__('Regarding Your Interest In {site}')}}">
                            <small class="info-text">{{__('{site} will be replaced by site title')}}</small>
                        </div>
                        <div class="form-group">
                            <label>{{__('Message')}}</label>
                            <input type="hidden" name="message">
                            <div class="summernote"></div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">{{__('Close')}}</button>
                        <button type="submit" class="btn btn-primary">{{__('Send Mail')}}</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    {{-- <div class="modal fade" id="order_status_change_modal" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">{{__('order Status Change')}}</h5>
                    <button type="button" class="close" data-dismiss="modal"><span>×</span></button>
                </div>
                @if($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach($errors->all() as $error)
                                <li>{{$error}}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
                <form action="#" method="post" enctype="multipart/form-data">
                    @csrf
                    <div class="modal-body">
                        <input type="hidden" name="order_id" id="order_id">
                        <div class="form-group">
                            <label for="order_status">{{__('order Status')}}</label>
                            <select name="order_status" class="form-control" id="order_status">
                                <option value="pending">{{__('Pending')}}</option>
                                <option value="in_progress">{{__('In Progress')}}</option>
                                <option value="canceled">{{__('Canceled')}}</option>
                                <option value="completed">{{__('Completed')}}</option>
                            </select>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">{{__('Close')}}</button>
                        <button type="submit" class="btn btn-primary">{{__('Change Status')}}</button>
                    </div>
                </form>
            </div>
        </div>
    </div> --}}
    @include('backend.partials.media-upload.media-upload-markup')
@endsection

@section('script')
@include('backend.partials.confirm-delete')
    <script src="{{asset('assets/backend/js/summernote-bs4.js')}}"></script>
    <script src="{{asset('assets/backend/js/bootstrap-tagsinput.js')}}"></script>
    <!-- Start datatable js -->
    <script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
    <script src="//cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
    <script src="//cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>
    <script src="//cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
    <script src="//cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap.min.js"></script>
    <script>
        $(document).ready(function() {
           
            // $(document).on('click','.order_status_change_btn',function(e){
            //     e.preventDefault();
            //     var el = $(this);
            //     var form = $('#order_status_change_modal');
            //     form.find('#order_id').val(el.data('id'));
            //     form.find('#order_status option[value="'+el.data('status')+'"]').attr('selected',true);
            // });

            // send mail button click handler
            $(document).on('click','.user_edit_btn',function(e){
                e.preventDefault();
                var el = $(this);
                console.log(el);
                var form = $('#user_edit_modal');
                console.log(form);
                form.find('#email').val(el.data('email'));
                form.find('#name').val(el.data('name'));
                console.log(el.data('email'));
                // form.find('#order_status option[value="'+el.data('status')+'"]').attr('selected',true);
            });

            $('#all_user_table').DataTable( {
                "order": [[ 0, "desc" ]]
            } );
              $('.summernote').summernote({
                height: 250,   //set editable area's height
                codemirror: { // codemirror options
                    theme: 'monokai'
                },
                callbacks: {
                    onChange: function(contents, $editable) {
                        $(this).prev('input').val(contents);
                    }
                }
            });

        } );
    </script>
@endsection


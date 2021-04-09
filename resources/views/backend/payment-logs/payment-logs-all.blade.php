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
    {{__('All Payment Logs')}}
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
                                    <h4 class="header-title">{{__('All Payment Logs')}}</h4>
                                    <div class="data-tables datatable-primary table-responsive">
                                        <table id="all_user_table" >
                                            <thead class="text-capitalize">
                                            <tr>
                                                <th>{{__('ID')}}</th>
                                                <th>{{__('Payer Name')}}</th>
                                                <th>{{__('Payer Email')}}</th>
                                                <th>{{__('Package Name')}}</th>
                                                <th>{{__('Package Price')}}</th>
                                                <th>{{__('Package Gateway')}}</th>
                                                <th>{{__('Status')}}</th>
                                                <th>{{__('Date')}}</th>
                                                <th>{{__('Action')}}</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            @foreach($payment_logs as $data)
                                                <tr>
                                                    <td>{{$data->id}}</td>
                                                    <td>{{$data->name}}</td>
                                                    <td>{{$data->email}}</td>
                                                    <td>{{$data->package_name}}</td>
                                                    <td>{{$data->package_price}}</td>
                                                    <td><strong>{{ucwords(str_replace('_',' ',$data->package_gateway))}}</strong></td>
                                                    <td>
                                                        @if($data->status == 'pending')
                                                            <span class="alert alert-warning text-capitalize">{{$data->status}}</span>
                                                        @else
                                                            <span class="alert alert-success text-capitalize">{{$data->status}}</span>
                                                        @endif
                                                    </td>
                                                    <td>{{date_format($data->created_at,'d M Y')}}</td>
                                                    <td>
                                                        <a tabindex="0" class="btn btn-lg btn-danger btn-sm mb-3 mr-1" role="button" data-toggle="popover" data-trigger="focus" data-html="true" title="" data-content="
                                                       <h6>Are you sure to delete this payment logs?</h6>
                                                       <form method='post' action='{{route('admin.payment.delete',$data->id)}}'>
                                                       <input type='hidden' name='_token' value='{{csrf_token()}}'>
                                                       <br>
                                                        <input type='submit' class='btn btn-danger btn-sm' value='Yes,Delete'>
                                                        </form>
                                                        " data-original-title="">
                                                            <i class="ti-trash"></i>
                                                        </a>
                                                        <a href="#"
                                                           data-toggle="modal"
                                                           data-target="#view_quote_details_modal"
                                                           data-email="{{$data->email}}"
                                                           data-name="{{$data->name}}"
                                                           data-package_name="{{$data->package_name}}"
                                                           data-package_price="{{$data->package_price}}"
                                                           data-package_gateway="{{ucwords(str_replace('_',' ',$data->package_gateway))}}"
                                                           data-order_id="{{$data->order_id}}"
                                                           data-transaction_id="{{$data->transaction_id}}"
                                                           data-status="{{$data->status}}"
                                                           data-date="{{date_format($data->created_at,'d M Y')}}"
                                                           class="btn btn-lg btn-primary btn-sm mb-3 mr-1 view_quote_details_btn"
                                                        >
                                                            <i class="ti-eye"></i>
                                                        </a>
                                                        @if($data->package_gateway == 'manual_payment' && $data->status == 'pending')
                                                        <a tabindex="0" class="btn btn-lg btn-success btn-sm mb-3 mr-1" role="button" data-toggle="popover" data-trigger="focus" data-html="true" title="" data-content="
                                                       <h6>Are you sure to approve this payment?</h6>
                                                       <form method='post' action='{{route('admin.payment.approve',$data->id)}}'>
                                                       <input type='hidden' name='_token' value='{{csrf_token()}}'>
                                                       <br>
                                                        <input type='submit' class='btn btn-success btn-sm' value='Yes,Delete'>
                                                        </form>
                                                        " data-original-title="">
                                                            <i class="ti-check"></i>
                                                        </a>
                                                        @endif
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

    <div class="modal fade" id="view_quote_details_modal" tabindex="-1" role="dialog"  aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="view-quote-details-info">
                    <h4 class="title">{{__('View Payment Logs Details Information')}}</h4>
                    <div class="view-quote-top-wrap">
                        <div class="status-wrap">
                            Status: <span class="quote-status-span"></span>
                        </div>
                        <div class="data-wrap">
                            Date: <span class="quote-date-span"></span>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="quote-all-custom-fields table-striped table-bordered"></table>
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
        $(document).ready(function($) {
            $(document).on('click','.view_quote_details_btn',function (e) {
                e.preventDefault();
                var el = $(this);
                var allData = el.data();
                var parent = $('#view_quote_details_modal');
                var statusClass = allData.status == 'pending' ? 'alert alert-warning' : 'alert alert-success';

                parent.find('.quote-status-span').text(allData.status).addClass(statusClass);
                parent.find('.quote-date-span').text(allData.date);
                parent.find('.quote-all-custom-fields').html('');
                delete allData.date;
                delete allData.status;
                delete allData.target;
                delete allData.toggle;
                 console.log(allData);
                $.each(allData,function (index,value) {
                    parent.find('.quote-all-custom-fields').append('<tr><td class="fname">'+index.replace('_',' ')+'</td> <td class="fvalue">'+value+'</td></tr>');
                });
            });

            $('#all_user_table').DataTable( {
                "order": [[ 0, "desc" ]]
            } );

        } );
    </script>
@endsection

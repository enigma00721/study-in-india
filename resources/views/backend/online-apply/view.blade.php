@extends('backend.admin-master')
@section('site-title')
    {{__('Information')}}
@endsection
@section('style')
    <style>
        .list-inline-item {
            display: inline-grid;
            line-height: 33px;
            margin-bottom: 20px;
            font-size: 20px;
            font-weight: 500;
        }
        b{
            font-size: 18px;
            color: #919191;
        }
        ul{
            color: white;
        }
    </style>
@endsection
@section('content')
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <div class="col-12 mt-5">
                @include('backend.partials.message')
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title mb-5">{{__("View Student Information")}}</h4>
                        
                        <ul class="list-inline m-5">
                            <div class="row">
                                <div class="col-md-4">
                                    <li class="list-inline-item">
                                        <b> Name:  </b>
                                        <span> {{$data->name}} </span>
                                    </li>
                                </div>
                                <div class="col-md-4">
                                    <li class="list-inline-item">
                                        <b> Email: </b>
                                        <span> {{$data->email}} </span>
                                    </li>
                                </div>
                                <div class="col-md-4">
                                    <li class="list-inline-item">
                                        <b> Mobile Number:  </b>
                                        <span> {{$data->mobile_number}} </span>
                                    </li>
                                </div>
                                <hr>
                                <br>
                                <div class="col-md-4">
                                    <li class="list-inline-item">
                                        <b> Addres: </b> 
                                        <span> {{$data->address}} </span>
                                    </li>
                                </div>
                                <div class="col-md-4">
                                    <li class="list-inline-item">
                                        <b> Gender: </b> 
                                        <span> {{$data->gender}} </span>
                                    </li>
                                </div>
                                <div class="col-md-4">
                                    <li class="list-inline-item">
                                        <b> Date Of Birth: </b> 
                                        <span> {{$data->dob}} </span>
                                    </li>
                                </div>
                                <div class="col-md-4">
                                    <li class="list-inline-item">
                                        <b> District: </b> 
                                        <span> {{$data->district}} </span>
                                    </li>
                                </div>
                                <div class="col-md-4">
                                    <li class="list-inline-item">
                                        <b> Parent Name: </b> 
                                        <span> {{$data->parent_name}} </span>
                                    </li>
                                </div>
                                <div class="col-md-4">
                                    <li class="list-inline-item">
                                        <b> Parent Address: </b> 
                                        <span> {{$data->parent_address}} </span>
                                    </li>
                                </div>
                              
                                <div class="col-md-4">
                                    <li class="list-inline-item">
                                        <b> University: </b> 
                                        <span> University Nme </span>
                                    </li>
                                </div>
                                <div class="col-md-4">
                                    <li class="list-inline-item">
                                        <b> Course: </b> 
                                        <span> Course Name </span>
                                    </li>
                                </div>
                                <div class="col-md-4">
                                    <li class="list-inline-item">
                                        <b> Level: </b> 
                                        <span> {{$data->level}} </span>
                                    </li>
                                </div>
                                {{-- <span> {{$data->}} </span> --}}
                            </div>
                        </ul>

                        <a href="{{url()->previous()}}" class="btn btn-primary mx-5">Go Back</a>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

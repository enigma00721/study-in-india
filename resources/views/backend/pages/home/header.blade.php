@extends('backend.admin-master')

@section('site-title')
    {{ __('Header Slider') }}
@endsection

@section('style')
    {{-- <link rel="stylesheet" href="{{asset('assets/backend/css/summernote-bs4.css')}}"> --}}
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('assets/backend/css/dropzone.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/backend/css/media-uploader.css') }}">
    <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
    <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/responsive/2.2.3/css/responsive.jqueryui.min.css">
    <style>
        .dataTables_wrapper .dataTables_paginate .paginate_button {
            padding: 0 !important;
        }

        div.dataTables_wrapper div.dataTables_length select {
            width: 60px;
            display: inline-block;
        }

        .note-editable ul {
            list-style: disc !important;
            list-style-position: inside !important;
        }

    </style>
@endsection
@section('content')
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <div class="col-lg-12">
                <div class="margin-top-40"></div>
                @include('backend/partials/message')
                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
            </div>

            <div class="col-lg-6 mt-5">
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title">{{ __('All Header Slider') }}</h4>
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            @php $a=0; @endphp
                            @foreach ($all_header_slider as $key => $slider)

                                <li class="nav-item">
                                    <a class="nav-link @if ($a==0) active @endif" data-toggle="tab" href="#slider_tab_{{ $key }}" role="tab"
                                        aria-controls="home" aria-selected="true">{{ get_language_by_slug($key) }}</a>
                                </li>
                                @php $a++; @endphp
                            @endforeach
                        </ul>
                        <div class="tab-content margin-top-40" id="myTabContent">
                            @php $b=0; @endphp
                            @foreach ($all_header_slider as $key => $slider)
                                <div class="tab-pane fade @if ($b==0) show active @endif" id="slider_tab_{{ $key }}" role="tabpanel">
                                    <div class="table-wrap table-responsive">
                                        <table class="table table-default">
                                            <thead>
                                                <th>{{ __('ID') }}</th>
                                                <th>{{ __('Image') }}</th>
                                                <th>{{ __('Title') }}</th>
                                                <th>{{ __('Description') }}</th>
                                                <th>{{ __('Action') }}</th>
                                            </thead>
                                            <tbody>
                                                @foreach ($slider as $data)
                                                    @php $img_url =''; @endphp
                                                    <tr>
                                                        <td>{{ $data->id }}</td>
                                                        <td>
                                                            @php
                                                                $header_bg_img = get_attachment_image_by_id($data->image, null, true);
                                                                $img_url = '';
                                                            @endphp
                                                            @if (!empty($header_bg_img))
                                                                <div class="attachment-preview">
                                                                    <div class="thumbnail">
                                                                        <div class="centered">
                                                                            <img class="avatar user-thumb"
                                                                                src="{{ $header_bg_img['img_url'] }}"
                                                                                alt="">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                @php  $img_url = $header_bg_img['img_url']; @endphp
                                                            @endif
                                                        </td>
                                                        <td>{{ $data->title }}</td>
                                                        <td>{{ $data->description }}</td>
                                                        <td>

                                                            <form action='{{ route('admin.header.delete', $data->id) }}'
                                                                method="POST">
                                                                @csrf
                                                                <button type="submit"
                                                                    class="btn btn-sm btn-danger mb-3 mr-1  delete-confirm">
                                                                    <i class="fas fa-trash" aria-hidden="true"></i>
                                                                </button>
                                                            </form>

                                                            <a href="#" data-toggle="modal"
                                                                data-target="#header_slider_item_edit_modal"
                                                                class="btn btn-lg btn-primary btn-sm mb-3 mr-1 header_slider_edit_btn"
                                                                data-id="{{ $data->id }}"
                                                                data-title="{{ $data->title }}"
                                                                data-imageid="{{ $data->image }}"
                                                                data-image="{{ $img_url }}"
                                                                data-lang="{{ $data->lang }}"
                                                                data-description="{{ $data->description }}"
                                                                data-btn_01_status="{{ $data->btn_01_status }}"
                                                                data-btn_01_text="{{ $data->btn_01_text }}"
                                                                data-btn_01_url="{{ $data->getBtnUrlAttribute() }}">
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
            {{-- create modal --}}
            <div class="col-lg-6 mt-5">
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title">{{ __('New Header Slider') }}</h4>
                        <form action="{{ route('admin.header') }}" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="form-group" style="display: none;">
                                <label for="language">
                                    <h6><strong>{{ __('Languages') }}</strong></h6>
                                </label>
                                <select name="lang" id="language" class="form-control">
                                    @foreach ($all_languages as $data)
                                        <option value="{{ $data->slug }}">{{ $data->name }}</option>
                                    @endforeach
                                </select>
                                <small>{{ __('select language for make this text multilingual') }}</small>
                            </div>
                          
                             <div class="form-group">
                             <label for="title">
                                <h6><strong>{{ __('Title') }}</strong><span style="font-size: 10px;">&nbsp; (From University)</span></h6>
                            </label>
                            <select name="title" id="title" class="form-control">
                                @foreach ($universities as $data)
                                    <option value="{{ $data->name }}">{{ $data->name }}</option>
                                @endforeach
                            </select>
                        </div>
                            {{-- <div class="form-group">
                                <label for="description">{{__('Description')}}</label>
                                <textarea class="form-control max-height-150"  id="description"  name="description" placeholder="{{__('Description')}}" cols="30" rows="10"></textarea>
                            </div> --}}
                            <div class="form-group">
                                <label>{{ __('Description') }}</label>
                                <input type="hidden" name="description">
                                <div class="summernote"></div>
                            </div>
                            <div class="form-group">
                                <label for="btn_01_status">{{ __('Button Show/Hide') }}</label>
                                <label class="switch">
                                    <input type="checkbox" name="btn_01_status" id="btn_01_status" checked="checked">
                                    <span class="slider"></span>
                                </label>
                            </div>
                            <div class="form-group">
                                <label for="btn_01_text">{{ __('Button Text') }}</label>
                                <input type="text" class="form-control" id="btn_01_text" name="btn_01_text"
                                    placeholder="{{ __('Button Text eg: Learn More') }}">
                            </div>
                            
                            {{-- <div class="form-group" style="display: none;" >
                                <label for="btn_01_url">{{ __('University ID') }}</label>
                                <input type="number" class="form-control" id="btn_01_url" name="btn_01_url"
                                    placeholder="{{ __('University ID') }}" value="{{$data->id}}" >
                                <small>{{ __('should be valid to generate url/slug') }}</small>
                            </div> --}}

                            <div class="form-group">
                                <div class="media-upload-btn-wrapper">
                                    <div class="img-wrap"></div>
                                    <input type="hidden" name="image">
                                    <button type="button" class="btn btn-info media_upload_form_btn"
                                        data-btntitle="Select Slider Background" data-modaltitle="Upload Slider Background"
                                        data-toggle="modal" data-target="#media_upload_modal">
                                        {{ __('Upload Image') }}
                                    </button>
                                </div>
                                <small>{{ __('recommended image size is 1920x900 pixel') }}</small>
                            </div>
                            <button type="submit"
                                class="btn btn-primary mt-4 pr-4 pl-4">{{ __('Add  New Slider') }}</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{-- edit modal --}}
    <div class="modal fade" id="header_slider_item_edit_modal" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">{{ __('Edit Header Slider Item') }}</h5>
                    <button type="button" class="close" data-dismiss="modal"><span>??</span></button>
                </div>
                <form action="{{ route('admin.header.update') }}" id="header_slider_edit_modal_form" method="post"
                    enctype="multipart/form-data">
                    <div class="modal-body">
                        @csrf
                        <input type="hidden" name="id" id="header_slider_id" value="">
                        <div class="form-group" style="display:none;">
                            <label for="edit_language">
                                <h6><strong>{{ __('Languages') }}</strong></h6>
                            </label>
                            <select name="lang" id="edit_language" class="form-control">
                                @foreach ($all_languages as $data)
                                    <option value="{{ $data->slug }}">{{ $data->name }}</option>
                                @endforeach
                            </select>
                            <small>{{ __('select language for make this text multilingual') }}</small>
                        </div>
                        {{-- <div class="form-group">
                            <label for="edit_title">{{ __('Title') }}</label>
                            <input type="text" class="form-control" id="edit_title" name="title"
                                placeholder="{{ __('Title') }}">
                        </div> --}}
                        <div class="form-group">
                             <label for="title">
                                <h6><strong>{{ __('Title') }}</strong></h6>
                            </label>
                            <select name="edit_title" id="edit_title" class="form-control">
                                <option value="">Select Title from University</option>
                                @foreach ($universities as $data)
                                    <option value="{{ $data->name }}">{{ $data->name }}</option>
                                @endforeach
                            </select>
                        </div>
                      
                        <div class="form-group">
                            <label for="edit_description">{{ __('Description') }}</label>
                            <input type="hidden" name="description" id="edit_description">
                            <div class="summernote" id="summernote_edit"></div>
                        </div>

                        <div class="form-group">
                            <label for="edit_btn_01_status">{{ __('Button Show/Hide') }}</label>
                            <label class="switch">
                                <input type="checkbox" name="btn_01_status" id="edit_btn_01_status">
                                <span class="slider"></span>
                            </label>
                        </div>
                        <div class="form-group">
                            <label for="edit_btn_01_text">{{ __('Button Text') }}</label>
                            <input type="text" class="form-control" id="edit_btn_01_text" name="btn_01_text"
                                placeholder="{{ __('Button Text') }}"  value="{{$data->id}}" >
                        </div>
                        <div class="form-group" style="display: none;">
                            <label for="edit_btn_01_url">{{ __('University ID') }}</label>
                            <input type="number" class="form-control" id="edit_btn_01_url" name="btn_01_url"
                                placeholder="{{ __('University ID') }}">
                            <small>{{ __('should be valid to generate url/slug') }}</small>

                        </div>
                        <div class="form-group">
                            <div class="media-upload-btn-wrapper">
                                <div class="img-wrap"></div>
                                <input type="hidden" id="edit_image" name="image" value="">
                                <button type="button" class="btn btn-info media_upload_form_btn"
                                    data-btntitle="Select Slider Background" data-modaltitle="Upload Slider Background"
                                    data-imgid="{{ auth()->user()->image }}" data-toggle="modal"
                                    data-target="#media_upload_modal">
                                    {{ __('Upload Image') }}
                                </button>
                            </div>
                            <small>{{ __('recommended image size is 1920x900 pixel') }}</small>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">{{ __('Close') }}</button>
                        <button type="submit" class="btn btn-primary">{{ __('Save Changes') }}</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    @include('backend.partials.media-upload.media-upload-markup')
@endsection
@section('script')
    <script src="{{ asset('assets/backend/js/dropzone.js') }}"></script>
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

    {{-- <script src="{{asset('assets/backend/js/summernote-bs4.js')}}"></script> --}}

    @include('backend.partials.media-upload.media-js')
    <script>
        $(document).ready(function() {
            $(document).on('click', '.header_slider_edit_btn', function() {
                var el = $(this);
                var id = el.data('id');
                var title = el.data('title');
                var action = el.data('action');
                var image = el.data('image');
                var imageid = el.data('imageid');
                var form = $('#header_slider_edit_modal_form');

                form.attr('action', action);
                form.find('#header_slider_id').val(id);
                form.find('#edit_title').val(el.data('title'));

                 //To dynamically select title in edit modal
                $('select[name=edit_title] option').filter(function() { 
                    return ($(this).text() == title);
                }).prop('selected', true);


                form.find('#edit_description').val(el.data('description'));
                $('#summernote_edit').summernote('code', el.data('description'));


                form.find('#edit_btn_01_text').val(el.data('btn_01_text'));
                form.find('#edit_btn_01_url').val(el.data('btn_01_url'));
                form.find('#edit_language option[value=' + el.data("lang") + ']').attr('selected',
                true); //lang

                if (imageid != '') {
                    form.find('.media-upload-btn-wrapper .img-wrap').html(
                        '<div class="attachment-preview"><div class="thumbnail"><div class="centered"><img class="avatar user-thumb" src="' +
                        image + '" > </div></div></div>');
                    form.find('.media-upload-btn-wrapper input').val(imageid);
                    form.find('.media-upload-btn-wrapper .media_upload_form_btn').text('Change Image');
                }

                if (el.data('btn_01_status') != '') {
                    $('#edit_btn_01_status').prop('checked', true);
                }
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

            $('.table-wrap > table').DataTable({
                "order": [
                    [0, "desc"]
                ]
            });

            $('.summernote').summernote({
                height: 400, //set editable area's height
                codemirror: { // codemirror options
                    theme: 'monokai'
                },
                callbacks: {
                    onChange: function(contents, $editable) {
                        $(this).prev('input').val(contents);
                    }
                }
            });
           
            $('.summernote').summernote('insertUnorderedList');

        });

    </script>

    <script>
        $('.delete-confirm').on('click', function(event) {
            event.preventDefault();
            var form = event.target.form; // storing the form
            //   console.log(form);
            swal({
                title: 'Are you sure?',
                text: 'This record will be permanantly deleted!',
                icon: 'warning',
                buttons: ["Cancel", "Yes!"],
            }).then(function(value) {
                if (value) {
                    form.submit();
                }
            });
        });

    </script>
@endsection

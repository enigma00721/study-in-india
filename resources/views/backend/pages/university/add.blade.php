@extends('backend.admin-master')
@section('style')
    <link rel="stylesheet" href="{{ asset('assets/backend/css/dropzone.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/backend/css/media-uploader.css') }}">
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">

@endsection
@section('site-title')
    Add New University
@endsection

@section('content')
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <div class="col-lg-12 mt-5">
                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title">{{ __('Add New University') }}</h4>
                        <form action="{{ route('admin.university.store') }}" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="row">
                                <div class="col-lg-12">

                                    <div class="form-group">
                                        <label for="name">{{ __('Name') }}</label>
                                        <input type="text" class="form-control" id="name" name="name"
                                            value="{{ old('name') }}" placeholder="{{ __('Name') }}">
                                    </div>

                                    {{-- <div class="form-group">
                                        <label for="description">{{ __('Description') }}</label>
                                        <textarea name="description" id="description" class="form-control" cols="30"
                                            placeholder="{{ __('Description') }}"
                                            rows="10">{{ old('description') }}</textarea>
                                        <small
                                            class="info-text">{{ __('separate responsibility by pipe (|), to break in new line') }}</small>
                                    </div> --}}
                                    <div class="form-group">
                                        <label>{{ __('Description') }}</label>
                                        <input type="hidden" name="description">
                                        <div class="summernote"></div>
                                    </div>

                                    {{-- <div class="form-group">
                                        <label for="facilities">{{ __('Facilities') }}</label>
                                        <textarea name="facilities" id="facilities" class="form-control" cols="30"
                                            placeholder="{{ __('Facilities') }}"
                                            rows="10">{{ old('facilities') }}</textarea>
                                        <small
                                            class="info-text">{{ __('separate responsibility by pipe (|), to break in new line') }}</small>
                                    </div> --}}
                                    <div class="form-group">
                                        <label>{{ __('Facilities') }}</label>
                                        <input type="hidden" name="facilities">
                                        <div class="summernote"></div>
                                    </div>

                                    {{-- <div class="form-group">
                                         <form method="post" action="#" enctype="multipart/form-data" 
                                                        class="hello" id="hello">
                                            @csrf
                                        </form>  
                                    </div> --}}

                                    {{-- <div class="form-group">
                                        <label for="employment_status">{{__('Employment Status')}}</label>
                                        <select name="employment_status" id="employment_status"  class="form-control">
                                            <option value="full_time">{{__('Full-Time')}}</option>
                                            <option value="part_time">{{__('Part-Time')}}</option>
                                            <option value="project_based">{{__('Project Based')}}</option>
                                        </select>
                                    </div> --}}
                                    <div class="form-group">
                                        <label for="location">{{ __('Location') }}</label>
                                        <input type="text" class="form-control" id="location" name="location"
                                            value="{{ old('location') }}" placeholder="{{ __('Location') }}">
                                    </div>

                                    <div class="form-group">
                                        <label for="status">{{ __('Status') }}</label>
                                        <select name="status" id="status" class="form-control">
                                            <option value="publish">{{ __('Publish') }}</option>
                                            <option value="draft">{{ __('Draft') }}</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="image">{{ __('Background Image') }}</label>
                                        <div class="media-upload-btn-wrapper">
                                            <div class="img-wrap"></div>
                                            <input type="hidden" name="image" multiple>
                                            <button type="button" class="btn btn-info media_upload_form_btn"
                                                data-btntitle="Select University Image"
                                                data-modaltitle="Upload University Image" data-toggle="modal"
                                                data-target="#media_upload_modal">
                                                {{ __('Upload Image') }}
                                            </button>
                                        </div>
                                        <small>{{ __('Recommended image size 1920x1280') }}</small>
                                    </div>

                                    {{-- <div class="form-group">
                                        <label for="gallery">Gallery</label>
                                          <form id="hello"  class="dropzone dz-clickable" method="POST" enctype="multipart/form-data" action="{{route('image.upload.store')}}">
                                            <div class="dz-message">
                                                <h4>Drag Photos to Upload</h4>
                                                <span>Or click to browse</span>
                                            </div>
                                            <input name="_token" type="hidden" value="{{ csrf_token() }}">
                                        </form>
                                    </div> --}}

                                    <button type="submit"
                                        class="btn btn-primary mt-4 pr-4 pl-4">{{ __('Submit') }}</button>
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
    <script src="{{ asset('assets/backend/js/dropzone.js') }}"></script>
    @include('backend.partials.media-upload.media-js')


{{-- <script>
    var CSRF_TOKEN = "{{csrf_token()}}";
     Dropzone.options.hello =
         {
            maxFilesize: 12,
            renameFile: function(file) {
                var dt = new Date();
                var time = dt.getTime();
               return time+file.name;
            },
            acceptedFiles: ".jpeg,.jpg,.png,.gif",
            addRemoveLinks: true,
            timeout: 50000,
            removedfile: function(file) 
            {
                var name = file.upload.filename;
                $.ajax({
                    headers: {
                                // 'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                                _token: "{{csrf_token()}}"
                                // 'x-csrf-token': CSRF_TOKEN,
                            },
                    type: 'POST',
                    url: '{{ route("image.delete") }}',
                    data: {filename: name},
                    success: function (data){
                        console.log("File has been successfully removed!!");
                    },
                    error: function(e) {
                        console.log(e);
                        console.log('remove file error');
                        console.log(name);
                    }});
                    var fileRef;
                    return (fileRef = file.previewElement) != null ? 
                    fileRef.parentNode.removeChild(file.previewElement) : void 0;
            },
       
            success: function(file, response) 
            {
                console.log(response);
            },
            error: function(file, response)
            {
               return false;
            }
};
</script> --}}

    
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
    {{-- <script>
        $(document).ready(function() {
            
                $('.summernote').summernote({
                    tabsize: 2,
                    height: 400,
                    theme:'paper',
                    toolbar: [
                    ['style', ['style']],
                    ['font', ['bold', 'underline', 'clear']],
                    ['color', ['color']],
                    ['para', ['ul', 'ol', 'paragraph']],
                    ['table', ['table']],
                    ['insert', ['link', 'picture', 'video']],
                    ['view', ['fullscreen', 'codeview', 'help']]
                    ]
                });

        });

    </script> --}}

     <script>
        $(document).ready(function() {

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
        });

    </script>
@endsection

@extends('backend.admin-master')
@section('style')
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">

    <style>
        .note-editable ul {
            list-style: disc !important;
            list-style-position: inside !important;
        }

    </style>
@endsection
@section('site-title')
    Edit Course
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
                        <h4 class="header-title">{{ __('Edit Course') }}</h4>
                        <form action="{{ route('admin.course.update') }}" method="POST">
                            @csrf
                            <input type="hidden" value="{{ $course->id }}" name="course_id">
                            <div class="row">
                                <div class="col-lg-12">

                                    <div class="form-group">
                                        <label for="title">{{ __('Title') }}</label>
                                        <input type="text" class="form-control" id="title" name="title"
                                            value="{{ $course->title }}" placeholder="{{ __('Title') }}">
                                    </div>
                                 
                                    <div class="form-group">
                                        <label for="course_duration">{{ __('Course Duration') }}</label>
                                        <input type="text" class="form-control" id="course_duration" name="course_duration"
                                            value="{{ $course->course_duration }}"
                                            placeholder="{{ __('Course Duration') }}">
                                    </div>

                                    {{-- <div class="form-group">
                                        <label for="description">{{ __('Description') }}</label>
                                        <textarea name="description" id="description" class="form-control" cols="30"
                                            placeholder="{{ __('Description') }}"
                                            rows="10">{{ $course->description }}</textarea>
                                        <small
                                            class="info-text">{{ __('separate responsibility by pipe (|), to break in new line') }}</small>
                                    </div> --}}
                                    <div class="form-group">
                                        <label>{{ __('Description') }}</label>
                                        <input type="hidden" name="description" value='{{ $course->description }}'>
                                        <div class="summernote" data-content='{{ $course->description }}'></div>
                                    </div>


                                    <div class="form-group">
                                        <label>{{ __('Elligibility') }}</label>
                                        <input type="hidden" name="elligibility" value='{{ $course->elligibility }}'>
                                        <div class="summernote" data-content='{{ $course->elligibility }}'></div>
                                    </div>

                                    <div class="form-group">
                                        <label for="discipline">{{ __('Discipline') }}</label>
                                        <select name="discipline_id" id="discipline_id" class="form-control">
                                            @foreach ($disciplines as $discipline)
                                                <option value="{{ $discipline->id }}"
                                                    {{ $course->discipline_id == $discipline->id ? 'selected' : '' }}>
                                                    {{ $discipline->title }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="level">{{ __('Level') }}</label>
                                        <select name="level_id" id="level_id" class="form-control">
                                            @foreach ($levels as $level)
                                                <option value="{{ $level->id }}"
                                                    {{ $course->level_id == $level->id ? 'selected' : '' }}>
                                                    {{ $level->title }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="status">{{ __('Status') }}</label>
                                        <select name="status" id="status" class="form-control">
                                            <option value="publish">{{ __('Publish') }}</option>
                                            <option value="draft">{{ __('Draft') }}</option>
                                        </select>
                                    </div>

                                    <button type="submit"
                                        class="btn btn-primary mt-4 pr-4 pl-4">{{ __('Update') }}</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


@endsection

@section('script')

    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
    <script>
        $(document).ready(function() {

            $('.summernote').summernote({
                height: 500, //set editable area's height
                codemirror: { // codemirror options
                    theme: 'monokai'
                },
                callbacks: {
                    onChange: function(contents, $editable) {
                        $(this).prev('input').val(contents);
                    }
                }
            });
            if ($('.summernote').length > 0) {
                $('.summernote').each(function(index, value) {
                    $(this).summernote('code', $(this).data('content'));
                });
            }
        });

    </script>
@endsection

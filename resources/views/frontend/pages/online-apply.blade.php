@extends('frontend.frontend-page-master')
@section('site-title')
     Apply Online
@endsection
@section('page-title')
     Apply Online
@endsection

@section('style')
<style>
    .title-heading{
        font-size: 22px;
        font-weight: 600;
        color: red;
        margin-bottom: 20px;
    }
    label{
        font-size: 18px !important;
    }
    .form-control{
        min-height: 55px;
    }
    .form-check-inline{
        min-height: 55px;
    }
    input:focus {
        outline: 1px solid rgb(87, 87, 87) !important;
    }
    select:focus {
        outline: 1px solid rgb(87, 87, 87) !important;
    }
    input[type=radio]:focus {
        outline: none !important;
    }

</style>
@endsection

@section('content')
    @if (!empty(get_static_option('about_page_about_us_section_status')))
        <div class="who-we-area padding-120">

            <div class="container">

                @include('backend.partials.message')
                @if($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach($errors->all() as $message)
                        <li>{{$message}}</li>
                        @endforeach
                    </ul>
                </div>
                @endif
            </div>
            
            <form action="{{ route('online.apply.submit') }}" method="post">
                @csrf
                <div class="container">
                    <h2 class="title-heading">Personal Details
                    <span class="float-right pt-2" style="font-size: 12px;">All fields are mandatory </span>
                        

                    </h2>
                    
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label for="name">Name</label>
                                <input required type="text" class="form-control" value="{{old('name')}}" placeholder="Full Name" name="name">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="mobile">Mobile Number</label>
                                <input required type="number" name="mobile_number" class="form-control" value="{{old('mobile_number')}}" placeholder="Mobile Number">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label for="gender">Gender</label>
                            <div class="form-group">
                                <div class="form-check-inline">
                                    <label class="form-check-label">
                                        <input required type="radio" class="form-check-input" name="gender" value="male">Male
                                    </label>
                                </div>
                                <div class="form-check-inline">
                                    <label class="form-check-label">
                                        <input required type="radio" class="form-check-input" name="gender" value="female">Female
                                    </label>
                                </div>
                                <div class="form-check-inline">
                                    <label class="form-check-label">
                                        <input required type="radio" class="form-check-input" name="gender" value="others">Others
                                    </label>
                                </div>
                            </div>

                        </div>
                       
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="dob">Date Of Birth</label>
                                <input required type="date" name="dob" class="form-control" value="{{old('dob')}}">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input required type="email" name="email" class="form-control" value="{{old('email')}}" placeholder="Email Adress">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="name">Address</label>
                                <input required type="text" class="form-control" value="{{old('address')}}" name="address" placeholder="Address" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="district">District</label>
                                <input required type="text" class="form-control" value="{{old('district')}}" name="district" placeholder="District" required>
                            </div>
                        </div>
                    </div>

                    <h2 class="title-heading">Parent Details</h2>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="parent_name">Parent Name</label>
                                <input required type="text" name="parent_name" placeholder="Parent Name" class="form-control" value="{{old('parent_name')}}">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="relationship">Relationship</label>
                                <input required type="text" name="parent_relationship" placeholder="Parent Relationship"
                                    class="form-control" value="{{old('parent_relationship')}}">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="parent_address">Parent Address</label>
                                <input required type="text" name="parent_address" placeholder="Parent Address" class="form-control" value="{{old('parent_address')}}">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="parent_contact">Parent Contact</label>
                                <input required type="number" name="parent_contact" placeholder="Parent Contact" class="form-control" value="{{old('parent_contact')}}">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="parent_occupation">Parent Occupation</label>
                                <input required type="text" class="form-control" value="{{old('parent_occupation')}}" name="parent_occupation"
                                    placeholder="Parent Occupation">
                            </div>
                        </div>
                    </div>

                    <h2 class="title-heading">Interested Program</h2>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <select name="level" id="" class="form-control custom-select" required>
                                    <option value="" readonly>Select Level</option>
                                    @foreach ($levels as $level)
                                        <option value="{{ $level->title }}"> {{ $level->title }} </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <select name="discipline" id="" class="form-control custom-select" required>
                                    <option value="" readonly>Select Discipline</option>
                                    @foreach ($disciplines as $discipline)
                                        <option value="{{ $discipline->title }}"> {{ $discipline->title }} </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>

                    {{-- <h2>Academic Qualification</h2> --}}
                    {{-- <table>
                        <tbody>
                                <div class="row">
                                <tr id="academicQualification">
                                    <td class="col-md-4">
                                        <input required type="text" name="institution_name[]" placeholder="Institution Name" class="form-control">
                                    </td>
                                    <td class="col-md-4">
                                        <select name="level[]" id="" class="form-control">
                                            <option value="" readonly>Select Level</option>
                                            @foreach ($levels as $level)
                                            <option value="{{ $level->title }}"> {{ $level->title }} </option>
                                            @endforeach
                                        </select>
                                    </td>
                                    <td class="col-md-3">
                                        <input required type="text" name="percentage[]" class="form-control" placeholder="Percentage">
                                    </td>
                                    <td class="col-md-1">
                                        <a href="javascript:void(0);" id="addAcademicQualificationRow"><i class="far fa-plus-square fa-2x"></i></a>
                                    </td>
                                </tr>
                            </div>
                        </tbody>
                    </table> --}}
                    <div class="btn-wrapper mt-4" >
                        {{-- <input required type="submit" value="submit" class="boxed-btn btn-rounded  border-none button-green"> --}}
                        <input required type="submit" value="Submit" class=" submit-btn ">
                    </div>
                    
                </div> <!-- container end -->


            </form>
        </div>
    @endif



@endsection


@section('scripts')
    <script>
        $(document).ready(function() {
            $("#addAcademicQualificationRow").click(function() {
                // $("#academicQualification").append('<div class="col-md-4 remove"><div class="form-group"><input required type="text" class="form-control" name="institution_name[]" placeholder="Institution Name"></div></div><div class="col-md-4"> <select class="form-control" name="level[]">@foreach($levels as $level)<option value="{{ $level->title }}">{{ $level->title }}</option>@endforeach</select> </div><div class="col-md-3"><div class="form-group"><input required type="text" class="form-control" name="percentage[]" placeholder="Percecntage"></div></div><div class="col-md-1"> <a href="javascript:void(0);" class="removeAcademicQualificationRow"><i class="removeAcademicQualificationRow fas fa-times fa-2x"></i></a></div>');
                var html = '';
                html += '<tr>';
                html += '<td> <input required type="text" class="form-control" name="institution_name[]" placeholder="Institution Name"> </td> ';
                html += '<td> <select class="form-control" name="level[]">@foreach($levels as $level)<option value="{{ $level->title }}">{{ $level->title }}</option>@endforeach</select> </td> ';
                html += '<td> <input required type="text" class="form-control" name="percentage[]" placeholder="Percecntage"></td> ';
                html += '<td> <button type="button" name="remove-food" class="btn btn-sm btn-danger remove-food"><i class="fas fa-times"></i></button> </td></tr> ';

                $('#academicQualification').append(html);
            });

            $(document).on('click','.remove-food',function(){
                $(this).closest('tr').remove();
            });
            
        });


    </script>
@endsection

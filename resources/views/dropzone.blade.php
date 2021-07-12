<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Laravel Multiple Images Upload Using Dropzone</title>
	   <meta name="_token" content="{{csrf_token()}}" />
	   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.4.0/min/dropzone.min.css">
	   <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
	   <script src="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.4.0/dropzone.js"></script>
</head>
<body>
	 <h3 class="jumbotron">Laravel Multiple Images Upload Using Dropzone</h3>
	    <form method="post" action="{{url('image/upload/store')}}" enctype="multipart/form-data" 
	                  class="dropzone" id="hello">
	    @csrf
	</form>  
</body>

	<script type="text/javascript">
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
	            timeout: 5000,
	            success: function(file, response) 
	            {
	                console.log(response);
	            },
	            error: function(file, response)
	            {
	               return false;
	            }
        };
	</script>
</html>


<script>
    $(document).ready(function(){

        $('.delete-confirm').on('click', function (event) {
          event.preventDefault();
          var form = event.target.form; // storing the form
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
     });
</script>
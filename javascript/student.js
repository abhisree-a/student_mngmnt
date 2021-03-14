$(document).ready(function() {

 
  $(document).on('click', 'input[type="checkbox"]', function() {      
    $('input[type="checkbox"]').not(this).prop('checked', false);      
});  

  $('.error').hide();
  $('#submit').click(function(){


  var name=$("#name").val();
  var  name_regex = /^[A-Za-z]+$/;
  var email = $('#email').val();
  var regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  var a=$("#datebirth").val();
  var b ="2015-01-01";


  if(name=="" || !name_regex.test(name)||email== '' || !regex.test(email)||a>b || a==""){
    $("#invalid_name").show();
    $('#invalid_email').show();
    $("#invalid_date").show();
    return false;
  }
  else{
    return true;
  }
});

});
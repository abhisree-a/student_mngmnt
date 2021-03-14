$(document).ready(function() {
  $('.error').hide();
  $('#submit').click(function(){
  
   
var email = $('#email').val();
var regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
var pass=$('#password').val();


if(email== '' || !regex.test(email) || pass=="" || pass.length<6){
    $('#invalid_email').show();
    $("#invalid_password").show();
    return false;
}
else{
  return true;
}

 });
});
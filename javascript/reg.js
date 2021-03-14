$(document).ready(function() {
    $('.error').hide();
    $('#submit').click(function(){
        

var name=$("#name").val();
var email = $('#email').val();
var regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
var pass=$('#password').val();
var  name_regex = /^[A-Za-z]+$/;


if(name=="" || !name_regex.test(name) || email== '' || !regex.test(email) || pass=="" || pass.length<6) {
   
    $("#invalid_name").show();
    $('#invalid_email').show();
    $("#invalid_password").show();
    return false;
}  
else{
    return true;
}
   

 });
});
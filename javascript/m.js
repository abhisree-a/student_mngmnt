$(document).ready(function() {
    $('.error').hide();
    $('#submit').click(function(){
    
   
    var c=$("#mark").val();
    var d=1200;
    var sub=$("#subject").val();

    if(c>d || c=="" && sub=="")
    {
       $("#invalid_mark").show();
       $("#invalid_sub").show();
      return false;
       
    }
    else{
      return true;
     
    }
   
  });
});
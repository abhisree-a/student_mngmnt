<?php
include("connection.php");

$name=$_POST['student_name'];
$email=$_POST['email'];
$dob=$_POST['dob'];
$genderarr=$_POST['gender'];

if(isset($_POST['submit'])){


    if($_POST['name']=='' && $_POST['email']==''  &&  $_POST['dob']=='' && $_POST['gender'])
    {
        echo "empty <br>";
    }
    else{

    $sql="INSERT INTO student_form(student_name,email,dob,gender) VALUES('$name','$email','$dob','$genderarr');";

    if ($conn->query($sql) === TRUE) {
       echo "New record created successfully";

       session_start();
       $_SESSION['user_logined']=true;
       header("Location:../mark.html"); 
       exit;

    } else {
        echo "Error: " . $sql . "<br>" . $conn->error; 
    }
      $conn->close();
    }


}else{
    echo"error";
}
?>
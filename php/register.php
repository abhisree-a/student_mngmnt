<?php 
include("connection.php");

$name=$_POST['student_name'];
$email=$_POST['email'];
$pass=$_POST['pass'];

if(isset($_POST['submit'])){


    if($_POST['student_name']=='' && $_POST['email']==''  &&  $_POST['pass']=='')
    {
        echo "empty <br>";
    }
    else{

    $sql="INSERT INTO register(student_name,email,pass) VALUES('$name','$email','$pass');";

    if ($conn->query($sql) === TRUE) {
       echo "New record created successfully";
       session_start();
      $_SESSION['user_logined']=true;
      header("Location: ../home.html"); 
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
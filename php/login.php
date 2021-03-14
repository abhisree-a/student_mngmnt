<?php 
include("connection.php");

$email=$_POST['email'];
$pass=$_POST['pass'];

if(isset($_POST['submit'])){

    if($_POST['email']==''  &&  $_POST['pass']=='')
    {
        echo "empty <br>";
    }
    else{

    $sql="INSERT INTO login(email,password) VALUES('$email','$pass');";

    if ($conn->query($sql) === TRUE) {
      echo "new record added successfully";
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
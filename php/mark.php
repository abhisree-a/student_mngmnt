<?php 
include("connection.php");

$subjct=$_POST['subjct'];
$mark=$_POST['mark'];
$exam_date=$_POST['exam_date'];

if(isset($_POST['submit'])){


    if($_POST['subjct']=='' && $_POST['mark']==''  &&  $_POST['exam_date']=='')
    {
        echo "empty <br>";
    }
    else{

    $sql="INSERT INTO mark(subjct,mark,exam_date) VALUES('$subjct','$mark','$exam_date');";

    if ($conn->query($sql) === TRUE) {
       echo "New record created successfully";

       session_start();
       $_SESSION['user_logined']=true;
       header("Location:../php/view_student.php"); 
       exit;

    } else {
        echo "Error: " . $sql . "<br>" . $conn->error; 
    }
      $conn->close();
    }


}else{
    echo"error";
}
<?php
include ('common/db_connect.php');
$name=$_POST['studentname'];
$id=$_POST['studentid'];
$email=$_POST['stemail'];
$phone=($_POST['phoneno']);
$event=$_POST['eventname'];

$sql="INSERT INTO register(studentid, studentname,email,phoneno,event) VALUES('$id','$name','$email','$phone','$event')";

mysqli_query($connect,$sql);

header("Location:registration.php?result=success");
?>
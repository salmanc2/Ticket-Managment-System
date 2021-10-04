<?php

include ('common/db_connect.php');
$name=$_POST['fullname'];
$email=$_POST['my_email'];
$password=md5($_POST['my_password']);
$phone=($_POST['phoneno']);
$dob=$_POST['dob'];
$gender=$_POST['gender'];

$sql="INSERT INTO admins(name,email,password,phone_no,dob,gender) VALUES('$name','$email','$password','$phone','$dob','$gender')";

mysqli_query($connect,$sql);

header("Location:add_admins.php?result=success");
?>
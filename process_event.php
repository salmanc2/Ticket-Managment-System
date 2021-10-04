<?php

include ('common/db_connect.php');
$name=$_POST['eventname'];
$date=$_POST['eventdt'];
$time=$_POST['event_time'];
$venue=$_POST['eventadd'];
$phone=$_POST['phoneno'];
$seat=$_POST['seats'];

$sql="INSERT INTO event(eventname,eventdate,eventtime,venue,phoneno,seats) VALUES('$name','$date','$time','$venue','$phone','$seat')";

mysqli_query($connect,$sql);

header("Location:add_events.php?result=success");
?>
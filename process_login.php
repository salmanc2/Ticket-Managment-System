<?php
session_start();
include('common/db_connect.php');
$username = $_POST['username'];
$password = md5($_POST['pwd']);


$sql = "SELECT * FROM admins WHERE email='$username' AND password='$password' AND is_delete='0'";

$result = mysqli_query($connect, $sql);
$count = mysqli_num_rows($result);

if($count == 0){
	header('Location: pages/examples/login.php?result=err');
}else{
	$row = mysqli_fetch_assoc($result);
	$_SESSION['fullname'] = $row['name'];
	header('Location: index.php');
}
?>
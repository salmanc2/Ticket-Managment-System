<?php
include('common/db_connect.php');
$admin_id = $_GET['adminid'];



?>
Do you really want to deleted
<a href="delete_admin.php?confirm=y&adminid=<?php echo $admin_id; ?>">Yes</a> | <a href="view_admins.php">NO</a>

<?php
if(isset($_GET['confirm'])){
	$sql = "UPDATE admins SET is_delete='1' WHERE adminid=$admin_id";
	mysqli_query($connect, $sql);
	header('Location: view_admins.php?result=deleted');
}
?>
<?php
include('common/db_connect.php');
$event_id = $_GET['eventid'];



?>
Do you really want to deleted
<a href="delete_event.php?confirm=y&eventid=<?php echo $event_id; ?>">Yes</a> | <a href="view_events.php">NO</a>

<?php
if(isset($_GET['confirm'])){
	$sql = "UPDATE event SET is_delete='1' WHERE eventid=$event_id";
	mysqli_query($connect, $sql);
	header('Location: view_events.php?result=deleted');
}
?>
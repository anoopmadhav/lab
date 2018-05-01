<?php
	session_start();
	if(!isset($_SESSION['lab_admin']))
	{
		header("Location: index.html");
		exit();
	}
	if (isset($_REQUEST['id'])) {
		include 'config.php';
		if(!($dbconn = @mysql_connect($dbhost, $dbuser, $dbpass))) exit('Error connecting to database.');
		mysql_select_db($db);
		$id=$_REQUEST['id'];
		$query = "DELETE FROM chemicals WHERE id=$id"; 
		$result = mysql_query($query) or die ( mysqli_error());
		header("Location: lab_admin_screen.php");
	}
	else{
		header("Location: lab_admin_screen.php");
	}

?>

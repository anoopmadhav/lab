<?php
	session_start();
	if( isset($_POST['submit']) && isset($_POST['username']) && isset($_POST['password']) )
	{
		include 'config.php';
		
		$username = stripslashes($_POST['username']);
		$password = stripslashes($_POST['password']);
		
		if(!($dbconn = @mysql_connect($dbhost, $dbuser, $dbpass))) exit('Error connecting to database.');
		mysql_select_db($db);

		$getCreds = mysql_query("SELECT role FROM ".$dbtable." WHERE username='".$username."' AND password='".$password."'");
		$gotCreds = mysql_fetch_array($getCreds);

		if(strcmp($gotCreds['role'],'lab_admin')==0){
			$_SESSION['lab_admin']='adminadmin';
			header("Location: lab_admin_screen.php");
		}
		else if($gotCreds['role']=='lab_assistant'){
			$_SESSION['lab_assistant']='labassistant';
			header("Location: lab_assistant_screen.php");
		}
		else
		{
			header("Location: index.html");
		}
	}
	else
	{
		header("Location: index.html");
	}
?>
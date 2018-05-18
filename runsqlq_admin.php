<?php
	session_start();
	if(!isset($_SESSION['lab_admin']))
	{
		header("Location: index.html");
		exit();
	}

	if(isset($_POST['sqlq']))
	{
		$sqlq = $_POST['sqlq'];
		include 'config.php';
		if(!($dbconn = @mysql_connect($dbhost, $dbuser, $dbpass))) exit('Error connecting to database.');
		mysql_select_db($db);
		$sqlq = mysql_query("SELECT id,name,company,packing_size,amount_left,critical_amount,location FROM chemicals WHERE name='".$sqlq."'");
		if(!$sqlq)
		{
			echo "Query Failed.<br />";
			exit;
		}
		$num_rows = mysql_num_rows($sqlq);
		echo "<pre>Fetched ".$num_rows." rows. Output:<br /><br />";
		echo "<table border=1><tr>";

		for($i = 1; $i < mysql_num_fields($sqlq); $i++)
		{
    			$field_info = mysql_fetch_field($sqlq, $i);
			echo "<th>{$field_info->name}</th>";
		}
		echo "</tr>";
		while($row = mysql_fetch_row($sqlq))
		{
			echo "<tr>";
			$id = $row[0];
			for($i=1;$i<7;$i++){
				echo "<td>".$row[$i]."</td>";
			}
			echo "<td align='center'><a href='edit.php?id={$id}'>Edit</a></td><td align='center'><a href='delete.php?id={$id}'>Delete</a></td></tr><td align='center'><a href='view-msds.php?id=$id'>view MSDS</a></td>";
			echo "</tr>";
		}
		echo "</table>";
	}
?>

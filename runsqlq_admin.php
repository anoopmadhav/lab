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
		$sqlq = mysql_query("SELECT * FROM chemicals WHERE name='".$sqlq."'");
		if(!$sqlq)
		{
			echo "Query Failed.<br />";
			exit;
		}
		$num_rows = mysql_num_rows($sqlq);
		echo "<pre>Fetched ".$num_rows." rows. Output:<br /><br />";
		echo "<table border=1><tr>";

		for($i = 0; $i < mysql_num_fields($sqlq); $i++)
		{
    			$field_info = mysql_fetch_field($sqlq, $i);
			echo "<th>{$field_info->name}</th>";
		}
		echo "</tr>";
		while($row = mysql_fetch_row($sqlq))
		{
			echo "<tr>";
			$id = $row[0];
			$name = $row[1];
			foreach($row as $_column)
			{
				echo "<td>{$_column}</td>";
			}
			echo "<td align='center'><a href='edit.php?id={$id}'>Edit</a></td><td align='center'><a href='delete.php?id={$id}'>Delete</a></td></tr><td align='center'><a href='msds/{$name}.pdf'>view MDSD</a></td>";
			echo "</tr>";
		}
		echo "</table>";
	}
?>

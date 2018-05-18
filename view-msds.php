<?php
	session_start();
	if(!isset($_SESSION['lab_assistant']) && !isset($_SESSION['lab_admin']))
	{
		header("Location: index.html");
		exit();
	}
	if (isset($_REQUEST['id'])) {
		include 'config.php';
		if(!($dbconn = @mysql_connect($dbhost, $dbuser, $dbpass))) exit('Error connecting to database.');
		mysql_select_db($db);
		$id=$_REQUEST['id'];
		// $query = "DELETE FROM chemicals WHERE id=$id"; 
		// $result = mysql_query($query) or die ( mysqli_error());
		// header("Location: lab_admin_screen.php");
		// echo "<h2>id is $id</h2>";	
		?>
	<html>
	<head>
		<link href='http://fonts.googleapis.com/css?family=Graduate' rel='stylesheet' type='text/css'>
		<![if !IE]>
		<link href='css/style.css' rel='stylesheet' type='text/css'>
		<![endif]>
		<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
		<script>
			function ajaxForQuery()
			{
				$.ajax({type:'POST', url: 'runsqlq.php', data:$('#medadmin').serialize(), success: function(response)
				{
					$('#medadmin').find('.outputsqlq').html(response);
				}
				});
				return false;
			}
		</script>

		<title>Chemistry Lab Management</title>
	</head>

	<body>

		<form id="medadmin" method="POST" action="edit-msds.php?id=<?php echo $id;?>">
			<img src="logo.png" alt="BITS Logo" align="left" style="width:100px;height:100px;">
			<center>
				
				<h2>Birla Institute of Technology and Science, Pilani</h2>
				<h2>Chemistry Lab Management</h2>
				<hr />
			</center>
			<right>
				
			</right>
			<?php
			$msds = mysql_query("SELECT * FROM msds WHERE id='".$id."'");
			$row = mysql_fetch_row($msds);
			/*while()
			{

				for($i=1;$i<sizeof($row);$i++){
					$field_info = mysql_fetch_field($msds, $i);
					echo "<h2>".$field_info->name."</h2>";
					echo "<p>".$row[$i]."</p>";
				}
			}*/

			?>
			<div>
				<h2>Chemical Name</h2>
				<p><?php echo $row[1]; ?></p>
			</div>
			<div>
				<h2>Chemical Formula</h2>
				<p><?php echo $row[2]; ?></p>
			</div>
			<div>
				<h2>First Aid Measurments</h2>
				<p><?php echo $row[3]; ?></p>
			</div>
			<div>
				<h2>Preacautions</h2>
				<p><?php echo $row[4]; ?></p>
			</div>
			<div>
				<h2>Storage</h2>
				<p><?php echo $row[5]; ?></p>
			</div>
			<div>
				<h2>Boiling Point</h2>
				<p><?php echo $row[6]; ?></p>
			</div>
			<div>
				<h2>Melting Point</h2>
				<p><?php echo $row[7]; ?></p>
			</div>
			<div>
				<h2>Special Remarks on Reactivity</h2>
				<p><?php echo $row[8]; ?></p>
			</div>
			<input type="submit" name="submit" value="EDIT MSDS" class="submit" id="runsqlq"/>
		</form>

	</body>
</html>

	<?php
	}
	else{
		header("Location: lab_assistant_screen.php");
	}

?>

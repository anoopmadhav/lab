<?php
	session_start();
	if(!isset($_SESSION['lab_assistant']))
	{
		header("Location: index.html");
		exit();
	}
	include 'config.php';
	if(!($dbconn = @mysql_connect($dbhost, $dbuser, $dbpass))) exit('Error connecting to database.');
	mysql_select_db($db);
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

		<form id="medadmin" style="height:680px;" onsubmit="return ajaxForQuery();">
			<img src="logo.png" alt="BITS Logo" align="left" style="width:100px;height:100px;">
			<center>
				
				<h2>Birla Institute of Technology and Science, Pilani</h2>
				<h2>Chemistry Lab Management</h2>
				<hr />
			</center>

			<label for="sqlq" style="font-size:20px;">Enter the chemical name</label>
			<br /><br />
			
			<!-- <label for="sqlq">Query:</label> -->
			<input type="text" id="default" name="sqlq" list="chemicals" placeholder="Select Chemical">
			  
			  <datalist id="chemicals">
			  	 <?php
			  	$chemicalnames = mysql_query("SELECT name FROM chemicals");
			  	while($row = mysql_fetch_row($chemicalnames))
			  	{
			  		$_final = implode($row);
			  		echo "<option value='".$_final."' >";
			  	}
			  	?>
			  </datalist>  

			<input type="submit" name="submit" value="Submit" class="submit" id="runsqlq"/>

			<div class="outputsqlq" style="border:0px solid black;"></div>
		</form>

	</body>
</html>

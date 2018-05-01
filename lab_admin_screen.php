<?php
	session_start();
	if(!isset($_SESSION['lab_admin']))
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
				$.ajax({type:'POST', url: 'runsqlq_admin.php', data:$('#medadmin').serialize(), success: function(response)
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

<form id="medadmin"  onsubmit="return ajaxForQuery();">
			<center>
				<h1>Chemistry Lab Management</h1>
				<hr />
			</center>

			<label for="sqlq" style="font-size:25px;">Enter the chemical name</label>
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

<form id="medbuy" method="POST" action="addchemical.php">

	<label for="purchase" style="font-size:25px;">Add New Chemical</label>
	<br /><br />

	<label for="name">Name</label>
	<input type="text" name="name" required/>
	<br />

	<label for="company">Company</label>
	<input type="text" name="company" required/>
	<br />

	<label for="packingsize">Packing Size</label>
	<input type="text" name="packingsize" required/>
	<br />

	<label for="amountleft" class="desc">Amount Left</label>
	<input type="text" name="amountleft" pattern="[0-9]+" />
	<br />

	<label for="criticalamount" class="desc">Critical Amount</label>
	<input type="text" name="criticalamount" pattern="[0-9]+" />
	<br />
	
	<label for="saddr" class="desc">Location</label>
	<input type="text" name="location" />
	<br />
	<input type="submit" name="submit" value="Add Chemical" class="submit" id="buysub"/>
</form>

<form>
	<label for="purchase" style="font-size:25px;">Notifications</label>
	<br /><br />
	<?php 
				$sqlq = mysql_query("SELECT * FROM chemicals WHERE amount_left!='' and amount_left<=critical_amount");
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
					foreach($row as $_column)
					{
						echo "<td contenteditable='true'>{$_column}</td>";
					}
					echo "</tr>";
				}
				echo "</table>";
	 ?>
</form>

	</body>
</html>

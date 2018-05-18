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
<?php
$status = "";
$query = "SELECT * from chemicals where id='".$id."'"; 
$result = mysql_query($query);
$row = mysql_fetch_row($result);
if(isset($_POST['new']) && $_POST['new']==1)
{
$name =$_REQUEST['name'];
$formula =$_REQUEST['formula'];
$firstaidmeasures =$_REQUEST['firstaidmeasures'];
$precautions =$_REQUEST['precautions'];
$storage =$_REQUEST['storage'];
$boilingpoint =$_REQUEST['boilingpoint'];
$meltingpoint =$_REQUEST['meltingpoint'];
$remarks =$_REQUEST['remarks'];
$update="UPDATE chemicals SET name='".$name."', formula='".$formula."', first_aid_measures='".$firstaidmeasures."', precautions='".$precautions."', storage='".$storage."', boiling_point='".$boilingpoint."', melting_point='".$meltingpoint."', special_remarks_on_reactivity='".$remarks."' WHERE id='".$id."'";
mysql_query($update) or die(mysql_error());
if(isset($_SESSION['lab_assistant'])){
	header("Location: lab_assistant_screen.php");
}
else{
	header("Location: lab_admin_screen.php");
}

$status = "Record Updated Successfully. </br></br><a href='view.php'>View Updated Record</a>";
}else {
?>
<form id="medbuy" method="POST" action="">
	<center>
				<h1>Chemistry Lab Management</h1>
				<hr />
			</center>
			<input type="hidden" name="new" value="1" />
	<label for="purchase" style="font-size:25px;">Edit  Chemical</label>
	<br /><br />

	<label for="name">Name:</label>
	<input type="text" name="name" value="<?php echo $row[1];?>" required/>
	<br />

	<label for="formula">Formula</label>
	<input type="text" name="formula" value="<?php echo $row[7];?>" required/>
	<br />

	<label for="firstaidmeasures">First Aid Measures</label>
	<br />
	<textarea name="firstaidmeasures" cols="40" rows = "5"> <?php echo $row[8];?></textarea>
	<br />

	<label for="precautions" class="desc">Precautions</label>
	<br />
	<textarea name="precautions" cols="40" rows = "5"> <?php echo $row[9];?></textarea>
	<br />

	<label for="storage" class="desc">Storage</label>
	<br />
	<textarea name="storage" cols="40" rows = "5"> <?php echo $row[10];?></textarea>
	<br />
	
	
	<label for="boilingpoint" class="desc">Boiling Point</label>
	<input type="number" step = "0.01" name="boilingpoint"  value="<?php echo $row[11];?>" required/>
	<br />


	<label for="meltingpoint" class="desc">Melting Point</label>
	<input type="number" step = "0.01" name="meltingpoint" value="<?php echo $row[12];?>" required/>
	<br />

	<label for="saddr" class="desc">Special Remarks on Reactivity </label>
	<br />
	<textarea name="remarks" cols="40" rows = "5"> <?php echo $row[13];?></textarea>
	<br />
	<input type="submit" name="submit" value="SUBMIT" class="submit" id="buysub"/>
</form>
<?php } }?>
	</body>
</html>
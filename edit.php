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
	$id=$_REQUEST['id'];
	$query = "SELECT * from chemicals where id='".$id."'"; 
	$result = mysql_query($query);
	$row = mysql_fetch_row($result);
?>
<html>
	<head>
		<link href='http://fonts.googleapis.com/css?family=Graduate' rel='stylesheet' type='text/css'>
		<![if !IE]>
		<link href='css/style.css' rel='stylesheet' type='text/css'>
		<![endif]>
		<title>Chemistry Lab Management</title>
	</head>

	<body>
<?php
$status = "";
if(isset($_POST['new']) && $_POST['new']==1)
{
$id=$_REQUEST['id'];
$name =$_REQUEST['name'];
$company =$_REQUEST['company'];
$packingsize =$_REQUEST['packingsize'];
$amountleft =$_REQUEST['amountleft'];
$criticalamount =$_REQUEST['criticalamount'];
$location =$_REQUEST['location'];
$update="UPDATE chemicals SET name='".$name."', company='".$company."', packing_size='".$packingsize."', amount_left='".$amountleft."', critical_amount='".$criticalamount."', location='".$location."' WHERE id='".$id."'";
mysql_query($update) or die(mysql_error());
header("Location: lab_admin_screen.php");
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

	<label for="company">Company</label>
	<input type="text" name="company" value="<?php echo $row[2];?>" required/>
	<br />

	<label for="packingsize">Packing Size</label>
	<input type="text" name="packingsize" value="<?php echo $row[3];?>" required/>
	<br />

	<label for="amountleft" class="desc">Amount Left</label>
	<input type="text" name="amountleft" pattern="[0-9]+" value="<?php echo $row[4];?>" required/>
	<br />

	<label for="criticalamount" class="desc">Critical Amount</label>
	<input type="text" name="criticalamount" pattern="[0-9]+"  value="<?php echo $row[5];?>" required/>
	<br />
	
	<label for="saddr" class="desc">Location</label>
	<input type="text" name="location" value="<?php echo $row[6];?>" required/>
	<br />
	<input type="submit" name="submit" value="Edit Chemical" class="submit" id="buysub"/>
</form>
<?php } ?>
	</body>
</html>
<?php
	if( isset($_POST['submit']) )
	{
		include 'config.php';

		if(!($dbconn = @mysql_connect($dbhost, $dbuser, $dbpass))) exit('Error connecting to database.');
		mysql_select_db($db);
		
		$chemicalname = $_POST['name'];
		$company = $_POST['company'];
		$packingsize = $_POST['packingsize'];
		$amountleft = $_POST['amountleft'];
		$criticalamount = $_POST['criticalamount'];
		$location = $_POST['location'];

		echo "UPDATING RECORDS.............<br /><br />";

		echo "Chemical Name -	".$chemicalname."<br />";
		echo "Company -	".$company."<br />";
		echo "Packing Size -	".$packingsize."<br />";
		echo "Amount of chemical left -	".$amountleft."<br />";
		echo "Critical Amount -	".$criticalamount."<br />";
		echo "Location of chemical -	".$location."<br />";

		echo "***************RECORDS UPDATED SUCCESSFULLY**************<br /><br />";
		echo "Returning back in 1 seconds..............";
		header("refresh:1;url=lab_admin_screen.php");

		if(1)//merged cases because anyways the user can't be trusted to provide correct value
		{
			$insert = "INSERT INTO chemicals (name,company,packing_size,amount_left,critical_amount,location) VALUES ('".$chemicalname."','".$company."','".$packingsize."','".$amountleft."','".$criticalamount."','".$location."')";
			$query = mysql_query($insert);

			echo "<br /><br />Debug:".mysql_error();
		}
	}
	else
	{
		header("Location: index.html");
	}
?>

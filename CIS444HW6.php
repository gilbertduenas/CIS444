<!DOCTYPE html>
<html lang="en">
<head>
  <title>CIS 444 HW 6</title>	
  <link rel='stylesheet' href='CIS444HW6.css' />
  <meta charset="utf-8" />
</head>
<body>
	<h1>NFL Teams</h1>
	<div>
	<?php
	//  Connect to the server
	$DBConnect = @mysqli_connect (localhost, 'duena009', 'duena009')
		Or die("<div><p>ERROR: Database server unavailable.</p>" . "<p>Error Code " . mysqli_connect_errno() . ": " . mysqli_connect_error() . "</p></div>");
	echo "<div><p>SUCCESS: Connected to server</p></div>";
	
	//  Connect to the database
	@mysqli_select_db($DBConnect, 'duena009')
		Or die("<div><p>ERROR: Database not found</p>" . "<p>Error Code " . mysqli_connect_errno() . ": " . mysqli_connect_error() . "</p></div>");
	echo "<div><p>SUCCESS: Connected to database</p></div>";
	
	$teamID = $_GET['inputID'];  // Get input from html
	$result = mysqli_query($DBConnect, "SELECT * FROM teams WHERE teamID=" . $teamID . ";" );  // Send query
	
	if (mysqli_num_rows($result) == 1)  // Check input
	{
		echo "<table>
		<caption>Team Information</caption>
		<tr>
			<th>ID</th>
			<th>Team</th> 
			<th>Start</th> 
			<th>Owner </th> 
			<th>GM </th> 
			<th>Coach</th> 
			<th>Quarterback</th> 
			<th>Address</th> 
			<th>City</th> 
			<th>State</th> 
			<th>Zip Code</th> 
			<th>Phone</th> 
			<th>Record Overall</th> 
			<th>Record Conference </th>
		</tr>"; 
		
		// Display row
		while ($fieldRow = mysqli_fetch_assoc($result))
		{
			echo "<tr>";
			foreach ($fieldRow as $displayField)
			{
				echo "<td>" . $displayField . "</td>";
			}
			echo "</tr>";
		}
		echo "</table>";
	}
	else
		echo "<div><p>ID not found</p></div>";
	
	mysqli_free_result($result);
	mysqli_close($DBConnect);
	?>
  </div>
</body>
</html>

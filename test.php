<?php 
	$con = mysql_connect("localhost","root","");
	if (!$con)
    {
    die('Could not connect: ' . mysql_error());
    }
    mysql_select_db("my-web", $con);

    $result = mysql_query("SELECT * FROM SCHEDULE");

    while($row = mysql_fetch_array($result)){
	echo "<tr>";
	echo "<td>" . $row["NUMBER"] . "</td>";
	echo "<td>" . $row["TIME"] . "</td>";
	echo "<td>" . $row["CONTENT"] . "</td>";
	echo "</tr>";
    }    
    mysql_close($con);
?>
<?php
//set database server access variables

$host = "localhost"; 
$user = "root"; 
$pass = "";
$db = "ideas";

//open a connection
$connection = mysql_connect($host, $user, $pass) or die ("Unable to connect!");

//select the database 
mysql_select_db($db) or die ("Unable to select the database!");



?>
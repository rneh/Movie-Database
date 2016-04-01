<?php
error_reporting(E_ALL);
$mysql = new mysqli("oniddb.cws.oregonstate.edu","emoryr-db","P45bAMe8YqAyxfR7");
if($mysqli->connect_errno) {
	echo "Connection error " . $mysqli->connect_errno . " " . $mysqli->connect_error;
}
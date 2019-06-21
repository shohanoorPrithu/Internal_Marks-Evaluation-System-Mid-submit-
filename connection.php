<?php
  require_once('adodb.inc.php');
  $conn=&ADONewConnection("postgres");
  if(!($conn->connect("","ciet","","cietques")))
  		echo "Unable to Connect222222";
?>

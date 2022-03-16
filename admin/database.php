<?php
$cn=mysqli_connect("localhost","root","root") or die("Could not Connect My Sql");
mysqli_select_db("quiz_new",$cn)  or die("Could connect to Database");
?>

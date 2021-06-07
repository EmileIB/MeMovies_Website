<?php

include "../include/dbmoviesCon.php";
  
$UserID = $_POST['UserID'];
$Username = $_POST['Username'];
$Email = $_POST['Email'];
$Password = $_POST['Password'];
$Admin = $_POST['Admin'];

$qry = "UPDATE user 
SET Username = '$Username', Email = '$Email', Password = '$Password', Admin = '$Admin'
WHERE UserID = '$UserID';";

mysqli_query($conn, $qry) or die(mysqli_error($conn));

header("Location: ../admin.php");
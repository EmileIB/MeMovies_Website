<?php
include "../include/dbmoviesCon.php";

$username = $_POST['username'];
$email = $_POST['email'];
$password = $_POST['password'];

$qry = "INSERT INTO `user` (`UserID`, `Username`, `Password`, `Email`, `Admin`) 
VALUES (NULL, '$username', '$password', '$email', '0');";

mysqli_query($conn, $qry) or die(mysqli_error($conn));

header("Location: ../index.php");
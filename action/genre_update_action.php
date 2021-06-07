<?php
  
include "../include/dbmoviesCon.php";
  
$GenreID = $_POST['GenreID'];
$MovieID = $_POST['MovieID'];
$MovieGenre = $_POST['MovieGenre'];

$qry = "UPDATE genre 
SET MovieGenre = '$MovieGenre'
WHERE GenreID = '$GenreID' and MovieID = '$MovieID';";

mysqli_query($conn, $qry) or die(mysqli_error($conn));

header("Location: ../admin.php");
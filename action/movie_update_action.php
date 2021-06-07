<?php
  
include "../include/dbmoviesCon.php";
  
$MovieID = $_POST['MovieID'];
$MovieName = $_POST['MovieName'];
$ReleaseYear = $_POST['ReleaseYear'];
$Length = $_POST['Length'];
$IMDb_Rating = $_POST['IMDb_Rating'];
$Poster = $_POST['Poster'];
$Banner = $_POST['Banner'];
$Description = addslashes($_POST['Description']);

$qry = "UPDATE movie 
SET MovieName = '$MovieName', ReleaseYear = '$ReleaseYear', Length = '$Length', IMDb_Rating = '$IMDb_Rating', Poster = '$Poster', Banner = '$Banner', Description = '$Description'
WHERE MovieID = '$MovieID';";

mysqli_query($conn, $qry) or die(mysqli_error($conn));

header("Location: ../admin.php");
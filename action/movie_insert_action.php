<?php
include "../include/dbmoviesCon.php";

$MovieName = $_POST['MovieName'];
$ReleaseYear = $_POST['ReleaseYear'];
$Length = $_POST['Length'];
$IMDb_Rating = $_POST['IMDb_Rating'];
$Trailer = $_POST['Trailer'];
$Poster = $_POST['Poster'];
$Banner = $_POST['Banner'];
$Description = addslashes($_POST['Description']);

$qry = "INSERT INTO `movie` (`MovieID`, `MovieName`, `ReleaseYear`, `Length`, `Trailer`, `Poster`, `Banner`, `IMDb_Rating`, `Description`) VALUES (NULL, '$MovieName', '$ReleaseYear', '$Length', '$Trailer', '$Poster', '$Banner', '$IMDb_Rating', '$Description');";

mysqli_query($conn, $qry) or die(mysqli_error($conn));

header("Location: ../insert-movie.php");
<?php
include "../include/dbmoviesCon.php";

$MovieID = $_POST['MovieID'];
$MovieGenre = $_POST['MovieGenre'];

$qry = "INSERT INTO `genre` (`GenreID`, `MovieID`, `MovieGenre`) VALUES (NULL, '$MovieID', '$MovieGenre');";

mysqli_query($conn, $qry) or die(mysqli_error($conn));

header("Location: ../insert-genre.php");

<?php 
include "../include/dbmoviesCon.php";

$id = $_GET['id'];
$sql = "DELETE FROM genre WHERE GenreID = $id";

mysqli_query($conn, $sql) or die(mysqli_error($conn));

header("Location: ../admin.php");
<?php

include "include/dbmoviesCon.php";

$id = $_GET['id'];
$sql = "SELECT * FROM movie WHERE MovieID = $id";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_array($result);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <title>Movie Update</title>
</head>
<body>

<?php
if (is_array($row)){
    $MovieID = $row['MovieID'];
    $MovieName = $row['MovieName'];
    $Length = $row['Length'];
    $ReleaseYear = $row['ReleaseYear'];
    $Poster = $row['Poster'];
    $Banner = $row['Banner'];
    $IMDb_Rating = $row['IMDb_Rating'];
    $Description = $row['Description'];
?>

<form action="action/movie_update_action.php" method="post" id="movieUpdateForm">
		<div class="update-box" style="top: 58%;">
			<h4>Update Movie</h4>
			<div class="textbox">
                <span class="in-title">ID:</span>
				<input readonly type="text" placeholder="MovieID" name="MovieID" class="u-p-color update-float" value="<?php echo $MovieID ?>">
			</div>
 
			<div class="textbox">
            <span class="in-title">Name:</span>
				<input type="text" placeholder="MovieName" name="MovieName" class="u-p-color" value="<?php echo $MovieName ?>">
			</div>

            <div class="textbox">
            <span class="in-title">ReleaseYear:</span>
				<input type="text" placeholder="ReleaseYear" name="ReleaseYear" class="u-p-color" value="<?php echo $ReleaseYear ?>">
			</div>

            <div class="textbox">
            <span class="in-title">Length:</span>
				<input type="text" placeholder="Length" name="Length" class="u-p-color" value="<?php echo $Length ?>">
			</div>

            <div class="textbox">
            <span class="in-title">Rating:</span>
				<input type="text" placeholder="IMDb_Rating" name="IMDb_Rating" class="u-p-color" value="<?php echo $IMDb_Rating ?>">
			</div>

            <div class="textbox">
            <span class="in-title">Poster:</span>
				<input type="text" placeholder="Poster" name="Poster" class="u-p-color" value="<?php echo $Poster ?>">
			</div>

            <div class="textbox">
            <span class="in-title">Banner:</span>
				<input type="text" placeholder="Banner" name="Banner" class="u-p-color" value="<?php echo $Banner ?>">
			</div>
            <div class="textbox">
            <span class="in-title">Description:</span>
                <textarea name="Description" rows="4"><?php echo $Description ?></textarea>
            </div>
 
			<input class="button-lr" type="submit" name="update" value="Update">
		</div>
	</form>

<?php
}

else{
    echo 'NO RESULTS';
}
?>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

</body>
</html>
<?php

include "include/dbmoviesCon.php";

$id = $_GET['id'];
$sql = "SELECT * FROM genre WHERE GenreID = $id";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_array($result)

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <title>Genre Update</title>
</head>
<body>

<?php
if (is_array($row)){
    $GenreID = $row['GenreID'];
    $MovieID = $row['MovieID'];
    $MovieGenre = $row['MovieGenre'];
?>

<form action="action/genre_update_action.php" method="post" id="movieUpdateForm">
		<div class="update-box" style="top: 40%;">
			<h4>Update Genre</h4>
			<div class="textbox">
                <span class="in-title">GenreID:</span>
				<input readonly type="text" placeholder="GenreID" name="GenreID" class="u-p-color update-float" value="<?php echo $GenreID ?>">
			</div>
 
			<div class="textbox">
            <span class="in-title">MovieID:</span>
				<input readonly type="text" placeholder="MovieID" name="MovieID" class="u-p-color" value="<?php echo $MovieID ?>">
			</div>

            <div class="textbox">
            <span class="in-title">MovieGenre:</span>
				<input type="text" placeholder="MovieGenre" name="MovieGenre" class="u-p-color" value="<?php echo $MovieGenre ?>">
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
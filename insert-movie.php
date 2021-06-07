<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <title>Movie Insert</title>
</head>
<body>

<form action="action/movie_insert_action.php" method="post" id="movieUpdateForm">
		<div class="update-box" style="top: 65%;">
			<h4>Insert Movie</h4>
            
			<div class="textbox">
            <span class="in-title">Name:</span>
				<input type="text" placeholder="MovieName" name="MovieName" class="u-p-color">
			</div>

            <div class="textbox">
            <span class="in-title">ReleaseYear:</span>
				<input type="text" placeholder="ReleaseYear" name="ReleaseYear" class="u-p-color">
			</div>

            <div class="textbox">
            <span class="in-title">Length:</span>
				<input type="text" placeholder="Length" name="Length" class="u-p-color">
			</div>

            <div class="textbox">
            <span class="in-title">Rating:</span>
				<input type="text" placeholder="IMDb_Rating" name="IMDb_Rating" class="u-p-color">
			</div>

            <div class="textbox">
            <span class="in-title">Trailer:</span>
				<input type="text" placeholder="Trailer" name="Trailer" class="u-p-color">
			</div>

            <div class="textbox">
            <span class="in-title">Poster:</span>
				<input type="text" placeholder="Poster" name="Poster" class="u-p-color">
			</div>

            <div class="textbox">
            <span class="in-title">Banner:</span>
				<input type="text" placeholder="Banner" name="Banner" class="u-p-color">
			</div>
            <div class="textbox">
            <span class="in-title">Description:</span>
                <textarea name="Description" rows="4"></textarea>
            </div>
 
            <input class="button-lr" type="submit" name="update" value="Add Movie">
            <a href="admin.php" class="btn button-lr" style="width: 100%;">Back to admin panel.</a>
		</div>
	</form>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

</body>
</html>
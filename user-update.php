<?php

include "include/dbmoviesCon.php";

$id = $_GET['id'];
$sql = "SELECT * FROM user WHERE UserID = $id";
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
    <title>User Update</title>
</head>
<body>

<?php
if (is_array($row)){
    $UserID = $row['UserID'];
    $Username = $row['Username'];
    $Email = $row['Email'];
    $Password = $row['Password'];
    $Admin = $row['Admin'];
?>

<form action="action/user_update_action.php" method="post" id="movieUpdateForm">
		<div class="update-box" style="top: 40%;">
			<h4>Update User</h4>
			<div class="textbox">
                <span class="in-title">UserID:</span>
				<input readonly type="text" placeholder="UserID" name="UserID" class="u-p-color update-float" value="<?php echo $UserID ?>">
			</div>
 
			<div class="textbox">
            <span class="in-title">Username:</span>
				<input type="text" placeholder="Username" name="Username" class="u-p-color" value="<?php echo $Username ?>">
			</div>

            <div class="textbox">
            <span class="in-title">Email:</span>
				<input type="text" placeholder="Email" name="Email" class="u-p-color" value="<?php echo $Email ?>">
			</div>

            <div class="textbox">
            <span class="in-title">Password:</span>
				<input type="text" placeholder="Password" name="Password" class="u-p-color" value="<?php echo $Password ?>">
			</div>

            <div class="textbox">
            <span class="in-title">Admin:</span>
				<input type="text" placeholder="Admin" name="Admin" class="u-p-color" value="<?php echo $Admin ?>">
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
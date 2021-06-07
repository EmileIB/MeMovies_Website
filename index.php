<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <title>Login</title>
</head>
<body>
	<form action="action/login_action.php" method="post">
		<div class="login-box">
			<h4>Login</h4>
 
			<div class="textbox">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="darkred" class="bi bi-person-fill fa" viewBox="0 0 16 16">
				<path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
				  </svg>
				<input type="text" placeholder="Username" name="username" class="u-p-color">
			</div>
 
			<div class="textbox">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="darkred" class="bi bi-lock-fill fa" viewBox="0 0 16 16">
					<path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2z"/>
				  </svg>
				<input type="password" placeholder="Password" name="password" class="u-p-color">
			</div>
 
			<input class="button-lr" type="submit" name="login" value="Sign In">
			Don't have an account?<a href="register.php" class="register-now">Register now!</a>
		</div>
	</form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

</body>
</html>
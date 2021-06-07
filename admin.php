<?php
include_once 'include/dbmoviesCon.php';
?>
<!DOCTYPE html>
<html>
 <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <title>Admin Panel</title>
 </head>
<body>

<div class="admin-logout">
    <form action="action/logout_action.php" method="post">
        <?php session_start(); ?>
        <input type="submit" name="logout" value = " <?php echo $_SESSION['name'] ?>: logout" class="btn button-lr logout">
    </form>
</div>

<div class="container-fluid" style="margin: 10px;">
    
    <div class="row">
        <div class="col">
            <p>
                <button class="btn btn-primary table-btn" type="button" data-bs-toggle="collapse" data-bs-target="#TableCollapse" aria-expanded="false" aria-controls="TableCollapse">
                    Movies Table
                </button>
            </p>
            <div class="collapse" id="TableCollapse">
                <div class="card card-body tables-collapse">
                    <a href="insert-movie.php" class="instert-link">Add a new movie</a>
                    <?php
                    $result = mysqli_query($conn,"SELECT * FROM movie");
                    if (mysqli_num_rows($result) > 0) {
                    ?>
                    <table>
                        <tr>
                            <th>MovieID</th>
                            <th>Name</th>
                        </tr>
                        <?php
                        while($row = mysqli_fetch_array($result)) {
                        ?>
                        <tr>
                            <td><?php echo $row["MovieID"]; ?></td>
                            <td><?php echo $row["MovieName"]; ?></td>
                            <td><a class="update" href="movie-update.php?id=<?php echo $row["MovieID"]; ?>">Update</a></td>
                            <td><a class="update" href="action/movie_delete_action.php?id=<?php echo $row["MovieID"];?>">Delete<d/a></td>
                            
                        </tr>
                        <?php
                        }
                        ?>
                    </table>
                        <?php
                        }
                        else
                        {
                        echo "No result found";
                        }
                        ?>
                </div>
            </div>
        </div>
    </div>
    <div class="row">    
        <div class="col">
            <p>
                <button class="btn btn-primary table-btn" type="button" data-bs-toggle="collapse" data-bs-target="#TableCollapseGenre" aria-expanded="false" aria-controls="TableCollapseGenre">
                    Genre Table
                </button>
            </p>
            <div class="collapse" id="TableCollapseGenre">
                <div class="card card-body tables-collapse">
                    <a href="insert-genre.php" class="instert-link">Add a new Genre</a>
                    <?php
                    $result = mysqli_query($conn, "SELECT m.MovieID, g.MovieGenre, m.MovieName, g.GenreID 
                    FROM genre as g, movie as m
                    WHERE g.MovieID = m.MovieID;");
                    if (mysqli_num_rows($result) > 0) {
                    ?>
                    <table>
                        <tr>
                            <th>GenreID</th>
                            <th>MovieID</th>
                            <th>Movie Name</th>
                            <th>Genre</th>
                        </tr>
                        <?php
                        while($row = mysqli_fetch_array($result)) {
                        ?>
                        <tr>
                            <td><?php echo $row["GenreID"]; ?></td>
                            <td><?php echo $row["MovieID"]; ?></td>
                            <td><?php echo $row["MovieName"]; ?></td>
                            <td><?php echo $row["MovieGenre"]; ?></td>
                            <td><a class="update" href="genre-update.php?id=<?php echo $row["GenreID"];?>">Update</a></td>
                            <td><a class="update" href="action/genre_delete_action.php?id=<?php echo $row["GenreID"]; ?>">Delete</a></td>
                        </tr>
                        <?php
                        }
                        ?>
                    </table>
                        <?php
                        }
                        else
                        {
                        echo "No result found";
                        }
                        ?>
                </div>
            </div>
        </div>
    </div>
    <div class="row">    
        <div class="col">
            <p>
                <button class="btn btn-primary table-btn" type="button" data-bs-toggle="collapse" data-bs-target="#TableCollapseUser" aria-expanded="false" aria-controls="TableCollapseUser">
                    Users Table
                </button>
            </p>
            <div class="collapse" id="TableCollapseUser">
                <div class="card card-body tables-collapse">

                    <?php
                    $result = mysqli_query($conn, "SELECT * FROM user");
                    if (mysqli_num_rows($result) > 0) {
                    ?>
                    <table>
                        <tr>
                            <th>UserID</th>
                            <th>Username</th>
                            <th>Email</th>
                            <th>Password</th>
                            <th>Role</th>
                        </tr>
                        <?php
                        while($row = mysqli_fetch_array($result)) {
                        ?>
                        <tr>
                            <td><?php echo $row["UserID"]; ?></td>
                            <td><?php echo $row["Username"]; ?></td>
                            <td><?php echo $row["Email"]; ?></td>
                            <td><?php echo $row["Password"]; ?></td>
                            <td><?php 
                                if ($row['Admin'] == 0){
                                    echo "User";
                                }
                                else{
                                    echo "Administrator";
                                }
                            ?></td>
                            <td><a class="update" href="user-update.php?id=<?php echo $row["UserID"];?>">Update</a></td>
                            <td><a class="update" href="action/user_delete_action.php?id=<?php echo $row["UserID"]; ?>">Delete</a></td>
                        </tr>
                        <?php
                        }
                        ?>
                    </table>
                        <?php
                        }
                        else
                        {
                        echo "No result found";
                        }
                        ?>
                </div>
            </div>
        </div>
    </div>     
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

 </body>
</html>
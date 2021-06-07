<?php
    include_once 'include/dbmoviesCon.php'
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <title>Top 10 Movies Global</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg bg-dark navbar-dark">
        <div class="container-fluid no-left-padding">
            <a class="navbar-brand" href="#">MeMovies</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="Home.php">Home</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Top 10</a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="top10global.php">Highest rated | Global</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item" href="top10action.php">Action</a></li>
                            <li><a class="dropdown-item" href="top10drama.php">Drama</a></li>
                            <li><a class="dropdown-item" href="top10comedy.php">Comedies</a></li>
                            <li><a class="dropdown-item" href="top10horror.php">Horror</a></li>
                        </ul>
                    </li>
                </ul>
                <div class="d-flex">
                <form action="action/logout_action.php" method="post">
                  <?php session_start(); ?>
                <input type="submit" name="logout" value = " <?php echo $_SESSION['name'] ?>: logout" class="btn button-lr logout">
                </form>
                </div>
            </div>
        </div>
    </nav>

    <div class="space"></div>
    <h2>Top to Movies Global</h2>
    <div class="space"></div>
    <div class="spac"></div>


    <?php 
      $sql = "SELECT MovieName, ReleaseYear, Length, Trailer, Banner, IMDb_Rating, Description
      FROM movie
      ORDER BY IMDb_Rating DESC";
      $result = mysqli_query($conn, $sql);
      $resultCheck = mysqli_num_rows($result);
      $i = 1;
      if ($resultCheck > 0){
        while ($row = mysqli_fetch_assoc($result) and $i < 11){
          echo '<div class="container-fluid top-10">
                <div class="row">
                <div class="col-10 col-md-7">';
          echo '<h3>' .$i. '. ' .$row['MovieName']. '</h3>';
          echo '<div class="top-10-img">';
          echo '<a href="' .$row['Trailer']. '" target="_blank"><img src="' .$row['Banner']. '"></a>';
          echo '</div>';
          echo '<div class="top-10-info">' .$row['ReleaseYear']. ' | ' .$row['Length']. ' min | IMDb:  
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" style="color: yellow;" viewBox="0 0 16 16">
              <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
              </svg>' .$row['IMDb_Rating'];
          echo '</div>';
          echo '</div>
                </div>';
          echo '<div class="top-10-desc">';
          echo '<p class="desc-width">' .$row['Description']. '</p>
                </div>
                </div>';
          $i++;
        }
      }
    ?>

    <footer class="page-footer font-small unique-color-dark">
  
    <div class="container text-center text-md-left">
  
      <div class="row mt-3">
  
        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
          <h6 style="font-size: larger;">MeMovies</h6>
          <hr class="accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
          <p class="footer-text">MeMovies is a website bringing you the latest updates concering the top 10 movies around. We are a non-profite organisation, brought to you by a group of 3 movie enthusiasts: Mohammad yahya, Hassan shamsheddine and Emile ibrahim.</p>
        </div>

        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
          <h6 class="text-uppercase">Top 10 Highest Rated</h6>
          <hr class="accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
          <p>
            <a href="top10global.php">Global</a>
          </p>
          <p>
            <a href="top10action.php">Action Movies</a>
          </p>
          <p>
            <a href="top10drama.php">Drama Movies</a>
          </p>
          <p>
            <a href="top10comedy.php">Comedy Movies</a>
          </p>
          <p>
            <a href="top10horror.php">Horror Movies</a>
          </p>
        </div>

        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
          <h6 class="text-uppercase font-weight-bold">Contact</h6>
          <hr class="accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
          <p class="footer-text">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house-door-fill footer-logo" viewBox="0 0 16 16">
                <path d="M6.5 14.5v-3.505c0-.245.25-.495.5-.495h2c.25 0 .5.25.5.5v3.5a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5z"/>
              </svg>LIU University, Beirut, Lebanon.</p>
          <p class="footer-text">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"    class="bi bi-envelope footer-logo" viewBox="0 0 16 16">
                <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2zm13 2.383-4.758 2.855L15 11.114v-5.73zm-.034 6.878L9.271 8.82 8 9.583 6.728 8.82l-5.694 3.44A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.739zM1 11.114l4.758-2.876L1 5.383v5.73z"/>
              </svg>MeMovies@gmail.com</p>
          <p class="footer-text">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone-fill tel-margin" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
              </svg>+961 70 309 115 <br> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone-fill tel-margin" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
              </svg>+961 79 117 393 <br> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone-fill tel-margin" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
              </svg>+961 71 881 267 </p>
          <p class="footer-text">Social Media:<br>
              <!-- Facebook -->
            <a class="fb-ic">
                <a class="btn" href="https://www.facebook.com/lebintuni/" target="_blank" role="button"><img src="Logos\fb logo.png" alt="Facebook"></a>
            </a>
            <!-- Twitter -->
            <a class="tw-ic">
                <a class="btn" href="https://twitter.com/lebintuni" target="_blank" role="button"><img src="Logos\twitter logo.png" alt="Twitter"></a>
            </a>
            <!--Instagram-->
            <a class="ins-ic">
                <a class="btn" href="https://www.instagram.com/lebintuni/" target="_blank" role="button"><img src="Logos\insta logo.png" alt="Instagram"></a>
            </a></p>
        </div>

      </div>

    </div>

    <div class="footer-copyright text-center py-3">© 2021 Copyright:
      <a href="#">MeMovies.com</a>
    </div>
</footer>

      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
      
</body>
</html>
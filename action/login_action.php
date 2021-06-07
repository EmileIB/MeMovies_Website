<?php

session_start();
include_once '../include/dbmoviesCon.php';

if (count($_POST) > 0){
    $username = $_POST["username"];
    $password = $_POST["password"];
    $sql = "SELECT * FROM user
    WHERE Username = '$username' and Password = '$password';";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_array($result);
    if (is_array($row)){
        $_SESSION['id'] = $row['UserID'];
        $_SESSION['name'] = $row['Username'];
        $_SESSION['admin'] = $row['Admin'];
    }
    else {
        echo 'Invalid Username Or Password';
    }
    if (isset($_SESSION['id'])){
        if ($_SESSION['admin'] == 0){
            header("Location: ../Home.php");
        }
        else {
            header("Location: ../admin.php");
        }
    }
}
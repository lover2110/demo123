<?php
include 'connectdtb.php';
if (isset($_POST['username'])){
    $username = $_POST['username'];
}
if(isset($_POST['password'])){
    $password = $_POST['password'];
}
$sql = "select * from tblacount where _name = '$username' and _pass= '$password'";
$result = pg_result($dbconn, $sql);
if($result)
{
  echo "Welcome to admin services !!!";
  header('Location:../home.php');
}
 else {
    echo "Oops...Have a trouble to Login. Please check again  :(("; 
    echo $sql;
}

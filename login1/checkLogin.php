<?php
include 'connectdtb.php';
if (isset($_POST['username'])){
    $username = $_POST['username'];
}
if(isset($_POST['password'])){
    $password = $_POST['password'];
}
$result = pg_result($dbconn, "select * from tblacount where _name = '".$username."' and _pass= '"  .$password. "'");
if($result)
{
  echo "Welcome to admin services !!!";
  header('Location:../home.php');
}
 else {
    echo "Oops...Have a trouble to Login. Please check again  :(("; 
}
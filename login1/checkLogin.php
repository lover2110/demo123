<?php
include 'connectdtb.php';
    $name = $_POST['name'];
//if(isset($_POST['password'])){
    $pass = $_POST['pass'];
//}
$sql = "select * from tblacount where _name = '$username' and _pass= '$password'";
$result = pg_result($dbconn, $sql);
if(pg_fetch_row($result))
{
  echo "Welcome to admin services !!!";
  header('Location:../home.php');
}
 else {
    echo "Oops...Have a trouble to Login. Please check again  :(("; 
    echo $sql;
}

<?php
include 'connectdtb.php';
    $username =$_POST['name'];
//if(isset($_POST['password'])){
    $password=$_POST['pass'];
//}
$sql = "select * from tblaccount where _name = '".$username."' and _pass= '".$password."'";
$result = pg_query($dbconn, $sql);
if($result)
{
  echo "Welcome to admin services !!!";
  header('Location:../home.php');
}
 else {
    echo "Oops...Have a trouble to Login. Please check again  :(("; 
    echo $sql;
    echo $username;
    echo $password;
}

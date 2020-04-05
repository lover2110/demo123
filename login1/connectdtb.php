<?php
$conn_string = "host=ec2-52-86-33-50.compute-1.amazonaws.com user=mosfmbrdfyvbvv password=35c1074819945a156fba9d90085900a7f98dad1644eeab99719191125eb5955a database=d5d9ujkkf20s6d port=5432";
$dbconn= pg_connect($conn_string);

if($dbconn)
{
  echo "Welcome to admin services !!!";
}
 else {
    echo "Oops...Have a trouble to Login. Please check again  :(("; 
}
 ?>

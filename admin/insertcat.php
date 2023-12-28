<?php 
include('config.php');

// print_r($_POST);

$cat_name = $_POST['cat_name'];
$cat_des = $_POST['cat_des'];
$cat_status = $_POST['cat_status'];
$insert="INSERT INTO `category` (`catid`, `catname`, `cat_des`, `cat_date`, `catstatus`) VALUES (NULL, '$cat_name', '$cat_des', current_timestamp(), '$cat_status')";
$result=mysqli_query($connection, $insert);
if($result){
    echo "category added successfully";
}else{
    echo "failed to add category";
}


?>
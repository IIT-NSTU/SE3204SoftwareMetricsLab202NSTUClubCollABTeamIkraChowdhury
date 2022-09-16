<?php
include '../assets//config.php';
session_start();
$club_id=$_SESSION['club_id'];
if(isset(($_GET['addmember']))){
     $user_id=$_GET['user_id'];
     $member = mysqli_query($conn, "SELECT * FROM `club_members`  WHERE user_id='$user_id' AND club_id='$club_id'") or die('query failed');
 
if (mysqli_num_rows($member) > 0) {  
    header('location:adminaddmember.php');
} else{
     mysqli_query($conn, "INSERT INTO `club_members`(user_id,club_id,member_type) VALUES('$user_id', '$club_id', 'member')") or die('query failed');
     header('location:adminmanagemember.php');
}
  

} 
?>
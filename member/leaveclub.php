<?php

include '../assets//config.php';
$club_id= $_SESSION['club_id'];
$user_id=$_SESSION['user_id'];

$sql = 'SELECT * FROM clubs JOIN 
club_members ON clubs.club_id=club_members.club_id WHERE  club_members.club_id="$club_id" AND club_members.member_type="admin";';
$clubs = mysqli_query($conn,$sql) or die('query failed');
$totall_admin=mysqli_num_rows($clubs);
 
if($totall_admin<=0){
    echo ' <div class="heading">
    <div class="mt-3 bg-light text-center" >
        <h2>Please make a new admin then leave!!!</h2>
</div>
</div>';   

}else{ 
    mysqli_query($conn, " DELETE FROM `club_members`  WHERE club_members.user_id='$user_id'") or die('query failed');
    header('location:membercreatepost.php');
  

}

?>
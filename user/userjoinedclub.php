<?php
session_start();
$user_id=$_SESSION['user_id'];
$_SESSION['in_club']=0;
?>
<!DOCTYPE html>
<html lang="en">
<head> 
    <!-- ------------------------------------------all link and css-------------------------------------------- -->
     <?php include '../assets//linkheader.php';?>   
    
    <title>user Structure</title>
</head>
<body> 
<div class="container-scroller">
<!-------------------------------- header and sidebar---------------------- -->
<div class="header"> 
<?php include '../assets//nav.php';?>  
</div>
<!---------------------------------------------totall page-------------------------------------------- -->
 
<div class="maindiv">  
<!--------------------------------------- Discover page body---- -->
<div class="mainsection">  
    <div class="heading">
         <div class="mt-3 bg-light text-center" >
             <h2> Joined clubs</h2>
    </div>
    </div>
    <div><?php include 'joinedclubs.php'; ?></div> 
    
     


</div>

</div>
</div>  
</body>
</html>
<?php
 
 session_start();
 $user_id=$_SESSION['user_id']; 
 $club_id =$_SESSION['club_id'];
 $club_name = $_SESSION['club_name']; 
 $_SESSION['in_club']=1;
  
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css" integrity="sha256-2XFplPlrFClt0bIdPgpz8H7ojnk10H69xRqd9+uTShA=" crossorigin="anonymous" />

    <link rel="stylesheet" href="../css//user.css">
    <link rel="stylesheet" href="../css//nav.css">
    <link rel="stylesheet" href="../css//side.css">  
    <link rel="stylesheet" href="../css//pr.css">
    <link rel="stylesheet" href="../css//profile.css">
    <link rel="stylesheet" href="../css//register.css"> 




    
    
    <title>user Structure</title>
</head>
<body> 
<div class="container-scroller">
<!-------------------------------- header and sidebar---------------------- -->
<div class="header"> 
<?php include '../assets//membernav.php';?> 
</div>
<!---------------------------------------------totall page-------------------------------------------- -->
 
<div class="maindiv"> 
    
    
<!-- ----------------------------------------sidebar area fix------------> 
<nav class="sidebar col-xl-3 "> 
<?php include '../assets//side.php';?> 

</nav> 
<!--------------------------------------- Discover page body---- -->
<div class="mainsection"> 

<?php include 'publishform.php'; ?>

<!-- manage mamber deisgn -->
 



</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</div>  
</body>
</html>
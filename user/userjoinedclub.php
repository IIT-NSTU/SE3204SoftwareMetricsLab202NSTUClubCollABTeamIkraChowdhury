<?php
session_start();
$user_id=$_SESSION['user_id'];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css//user.css">
    <link rel="stylesheet" href="../css//nav.css">
    <link rel="stylesheet" href="../css//side.css"> 
    <link rel="stylesheet" href="../css//discover.css"> 
    <link rel="stylesheet" href="../css//pr.css">
    <link rel="stylesheet" href="../css//profile.css">

    
    
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
    
    
<!-- ----------------------------------------sidebar area fix------------> 
<nav class="sidebar col-xl-3 "> 
<?php include '../assets//side.php';?>
</nav> 
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
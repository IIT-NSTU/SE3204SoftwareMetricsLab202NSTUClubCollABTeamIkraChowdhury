<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet"> -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

    <link rel="stylesheet" href="css/user.css">
    <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="css/side.css"> 
    <link rel="stylesheet" href="css/discover.css">
    <link rel="stylesheet" href="css/discover.css">
    <link rel="stylesheet" href="css/pr.css">
    <link rel="stylesheet" href="css/profile.css">
    <link rel="stylesheet" href="css/activity.css">
    <link rel="stylesheet" href="css/tableCss/table.css">
    <link rel="stylesheet" href="./css/tableCss/editclub.css">



    <title>user Structure</title>
</head>
<body> 
<div class="container-scroller">
<!-------------------------------- header and sidebar---------------------- -->
<div class="header"> 
<?php include './clubnav.php';?>  
</div>
<!---------------------------------------------totall page-------------------------------------------- -->
 
<div class="maindiv"> 
    
    
<!-- ----------------------------------------sidebar area fix------------> 
<nav class="sidebar col-xl-3 "> 
<?php include './admin_side.php';?>

</nav> 
<!--------------------------------------- Discover page body---- -->
<div class="mainsection"> 
    
<!-- edit club design -->
<?php include './editClubDesign.php';?>

<?php
include './config.php';


// Check connection
if ($conn->connect_error) 
{
    die("Connection failed: " . $conn->connect_error);
}


if(isset($_POST["submit"])){

  if(isset($_FILES["image"]["name"])){
    
    $id = $_POST["id"];
    $name = $_POST["name"];

    $imageName = $_FILES["image"]["name"];
    $imageSize = $_FILES["image"]["size"];
    $tmpName = $_FILES["image"]["tmp_name"];

    // Image validation
    $validImageExtension = ['jpg', 'jpeg', 'png'];
    $imageExtension = explode('.', $imageName);
    $imageExtension = strtolower(end($imageExtension));
    if (!in_array($imageExtension, $validImageExtension)){
      echo
      "
      <script>
        alert('Invalid Image Extension');
        document.location.href = './editclub.php';
      </script>
      ";
    }
    elseif ($imageSize > 5000000 ){
      echo
      "
      <script>
        alert('Image Size Is Too Large');
        document.location.href = './editclub.php';
      </script>
      ";
    }
    else{
      $newImageName = $name . " - " . date("Y.m.d") . " - " . date("h.i.sa"); // Generate new image name
      $newImageName .= '.' . $imageExtension;
      $query = "UPDATE clubs SET club_image = '$newImageName' WHERE club_id = $id";
      mysqli_query($conn, $query);
      move_uploaded_file($tmpName, 'clubimages/' . $newImageName);
      echo
      "
      <script>
      document.location.href = './editclub.php';
      </script>
      ";
    }
  }

  }
     
  // Save changes for descriptions

  if(isset($_POST["save_changes"])){

    $id = $_POST["id"];
    $textarea = $_POST["textarea"];

    $query = "UPDATE club SET club_description = '$textarea' WHERE club_id = $id";
    mysqli_query($conn, $query);
    echo
    "
    <script>
    document.location.href = './editclub.php';
    </script>
    ";


  }




?>
</div>


</div>  

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
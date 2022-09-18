<?php
session_start();
if($_SESSION['is_login']!=1){
  header('location:../assets/login.php');
}
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
<nav class="nav nav-borders">
        <a class="nav-link active ms-0" href="https://www.bootdey.com/snippets/view/bs5-edit-profile-account-details" target="__blank">User Feed</a>
        
    </nav>
    <hr class="mt-0 mb-4"> 
<div  id="data">

</div>
<div class="row d-flex justify-content-center">
<div class="spinner-border m-5" id="loading" style="width: 3rem; height: 3rem;" role="status">
</div>
</div>
</div>



</div> 

<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>

<script>
  var page_no = 1;
  var isrunning = false;
 
  showData();
$(window).scroll(function(){
if($(window).scrollTop()+$(window).height() > $(document).height()-50){
   // alert("down");
   if(!isrunning){
     showData();
   }
  
}

});
function showData(){
  $("#loading").show();
    isrunning = true;

   
$.post("./feed.php",{page:page_no},(response)=>{

$("#data").append(response);
$("#loading").hide();
isrunning = false;
page_no++;
});

}
</script>


</body>
</html>
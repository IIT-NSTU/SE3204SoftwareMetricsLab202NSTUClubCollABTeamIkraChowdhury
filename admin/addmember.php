<?php

include '../assets//config.php'; 
$isclicked=false;
 
?> 
<!-- ---------------------------------------head msg--------------------------------------------------------------------- -->
<?php
if (isset($message)) {
	foreach ($message as $message) {
		echo '
      <div class="message">
         <span>' . $message . '</span>
         <i  class="fa fa-bell " style="font-size:20px" onclick="this.parentElement.remove();"></i>
      </div>
      ';
	}
}
?>


   
<!---------------------------------------------totall page-------------------------------------------- -->
<div class="clubdiv">    
<!-- ----------------------------------------searchdiv------------------------------------------------> 
<div class="searchdiv">   

<div class="container">
	<div class="row justify-content-center">
                        <div class="col-12 col-md-10 col-lg-8">
                            <form action="" class="card card-sm" method="post">
                                <div class="card-body row no-gutters align-items-center">
                                    <div class="col-auto">
                                        <i class="fas fa-search h4 text-body"></i>
                                    </div> 
                                    <div class="col">
                                        <input class="form-control form-control-lg form-control-borderless" name="username" type="search" placeholder="Search by username">
                                    </div> 
                                    <div class="col-auto">
                                        <button class="btn btn-lg btn-success" name="submit" type="submit">Search</button>
                                    </div> 
                                </div>
                            </form>
                        </div> 
                    </div>
</div>
</div>
  
</div>
<!--------------------------------------- club show div------------------------ -->
<div class="clubshowdiv">
      
<?php 

//------------------------------------------------searching work-------------------------------
if(isset($_POST['username'])){
    $isclicked=true;

    $username= mysqli_real_escape_string($conn, $_POST['username']);
    if($username==null){ 
        echo '<script>alert("Must provide a valid search key")</script>'; 
        $isclicked=false;
        
    } 

}
 //------------------------searching result is shown--------------------------- 
  if($isclicked){
    $user = mysqli_query($conn, "SELECT * FROM `users`  WHERE  name='$username'") or die('query failed');
         if(mysqli_num_rows($user ) > 0){
            while($row = mysqli_fetch_assoc($user)){
                ?>
 
  <div class="box-container">
    <form action="" method="post" class="box">
    <img class="image" src="../images//<?php echo $row['user_image']; ?>" alt="club profilepic">
    <div class="name"><?php echo $row['name']?>:<?php echo $row['department']; ?></div>
    <div class="totall_member"><?php echo $row['batch']; ?></div> 
    <a href="addmemberaction.php?addmember=1  &&  user_id=<?php echo  $row['user_id'] ?>" class="text-danger" data-toggle="tooltip" title="" data-original-title="Delete"><i class="fa-solid fa-plus"></i></a>
    </form>
    </div>
    <?php
         }
      }else{
         echo ' <div class="heading">
         <div class="mt-3 bg-light text-center" >
             <h2>No clubs to show</h2>
    </div>
    </div>';
      }
    } ?>
 
  
</div>
  
</div>
</div>
</div>
</div>  
 
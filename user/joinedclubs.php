<?php

include 'config.php';
$isclicked=false;
 
?>
<!---------------------------------------------totall page-------------------------------------------- -->
<div class="clubdiv">    
<!-- ----------------------------------------searchdiv------------> 
<div class="searchdiv">   
<div class="container">
<div class="row justify-content-center">
                        <div class="col-12 col-md-10 col-lg-8">
                            <form action="userjoinedclub.php" class="card card-sm" method="post">
                                <div class="card-body row no-gutters align-items-center">
                                    <div class="col-auto">
                                        <i class="fas fa-search h4 text-body"></i>
                                    </div>
                                    <!--end of col-->
                                    <div class="col">
                                        <input class="form-control form-control-lg form-control-borderless" name="clubname" type="search" placeholder="Search topics or keywords">
                                    </div>
                                    <!--end of col-->
                                    <div class="col-auto">
                                        <button class="btn btn-lg btn-success" name="submit" type="submit">Search</button>
                                    </div>
                                    <!--end of col-->
                                </div>
                            </form>
                        </div>
                        <!--end of col-->
                    </div>
</div>
</div>
  
</div>
<!--------------------------------------- club show div------------------------ -->
<div class="clubshowdiv">
<?php 

//------------------------------------------------searching work-------------------------------
if(isset($_POST['submit'])){
    $isclicked=true;
   
    $clubnam = mysqli_real_escape_string($conn, $_POST['clubname']);
    if($clubnam==null){ 
        echo '<script>alert("Must provide a valid search key")</script>'; 
        $isclicked=false;
        
    } 

}
 //------------------------searching result is shown--------------------------- 
  if($isclicked){
    $sql = 'SELECT * FROM clubs JOIN 
          club_members ON clubs.club_id=club_members.club_id WHERE club_members.user_id="4";';
         $clubs = mysqli_query($conn,$sql) or die('query failed');
         if(mysqli_num_rows($clubs) > 0){
              
             $count=0;
              while($row = mysqli_fetch_assoc($clubs)){
                if($row['club_name']==$clubnam){
                $count++;
                ?> 
 
  <div class="box-container">
    <form action="login.php" method="post" class="box">
    <img class="image" src="images/<?php echo $row['club_image']; ?>" alt="club profilepic">
    <div class="name"><?php echo $row['club_name']; ?></div>
    <div class="totall_member"><?php echo $row['totall_members']; ?></div> 
    <input type="submit" value="Visit club" name="visitclub" class="btn">
    </form>
 </div>
    <?php 
               
    }
      } 
      if($count==0){
        echo ' <div class="heading">
         <div class="mt-3 bg-light text-center" >
             <h2>No clubs to show</h2>
    </div>
    </div>';
      }
    
    }else{
         echo ' <div class="heading">
         <div class="mt-3 bg-light text-center" >
             <h2>No clubs to show</h2>
    </div>
    </div>';
      }
    }



else{
         $sql = 'SELECT * FROM clubs JOIN 
          club_members ON clubs.club_id=club_members.club_id WHERE club_members.user_id="4";';
         $clubs = mysqli_query($conn,$sql) or die('query failed');
         if(mysqli_num_rows($clubs) > 0){
            while($row = mysqli_fetch_assoc($clubs)){
                ?>
 
  <div class="box-container">
    <form action="login.php" method="post" class="box">
    <img class="image" src="images/<?php echo $row['club_image']; ?>" alt="club profilepic">
    <div class="name"><?php echo $row['club_name']; ?></div>
    <div class="totall_member"><?php echo $row['totall_members']; ?></div> 
    <input type="submit" value="Visit club" name="visitclub" class="btn">
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
    }?> 
  
</div>
  
</div>
</div>
</div>
</div>  
 
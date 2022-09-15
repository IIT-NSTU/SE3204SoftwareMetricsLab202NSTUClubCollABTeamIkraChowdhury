  

<?php
include '../assets//config.php';
if(isset($_POST['submit'])){
    $comment_content= mysqli_real_escape_string($conn, $_POST['comment_content']);
    $post_id= $_POST['post_id']; 
    $comment_time = date("m.d.Y");
    $user_id=$user_id;
    mysqli_query($conn, "INSERT INTO `comment`(user_id,post_id,comment_content,comment_time) VALUES('$user_id', '$post_id', '$comment_content','$comment_time')") or die('query failed');
     
    
}
         $post = mysqli_query($conn, "SELECT * FROM `post`ORDER BY post_id DESC ") or die('query failed');
         if(mysqli_num_rows($post) > 0){ 
            while($row = mysqli_fetch_assoc($post)){ 
                $post_id=$row['post_id'];
                $post_caption=$row['post_caption'];
                $post_picture=$row['post_picture'];
                $post_time=$row['post_time']; 
                $club_id=$row['club_id'];
                $club=mysqli_query($conn, "SELECT * FROM `clubs` WHERE club_id='$club_id'") or die('query failed');
                if(mysqli_num_rows($club) > 0){
                    $rowc= mysqli_fetch_assoc($club);
                    $club_name=$rowc['club_name'];
                    $club_image=$rowc['club_image'];
                     
                }    
      ?>


<section >
    <div class="container my-2 py-1 px-2">
        <div class="row d-flex justify-content-center">
            <div class="col-md-12 col-lg-10 col-xl-8">
                <div class="card p-2">
<!-- ---------------------------------------------------------loads post one by one------------------------------------------------------------------------------- -->
                    <div class="card-body">
                        <div class="d-flex flex-start align-items-center">
                            <img class="rounded-circle shadow-1-strong me-3" src="../images//<?php echo $club_image; ?>" alt="avatar" width="60" height="60" />
                            <div>
                                <h6 class="fw-bold text-primary mb-1"><?php echo $club_name; ?></h6>
                                <p class="text-muted small mb-0">
                                <?php echo  $post_time; ?>
                                </p>
                            </div>
                        </div>
                        <div>
                            <p class="mt-3 mb-1 pb-2 pe-2" style="text-align:justify;"> 
                            <?php echo  $post_caption; ?>
                            </p>
                        </div>
                        <div class="text-center">
                            <img class="py-3" src="../post_images//<?php echo  $post_picture; ?>" alt="avatar" width="50%" height="auto" />
                        </div>
                    </div>

                    <form action="" method="post" class="row ps-3 pe-4"> 
                        <div class="col-sm-10 mb-2 mt-2">
                            <input type="text" name="comment_content" class="form-control" placeholder="Write Comment" style="font-size:12px ;">
                            <input type="number" name="post_id" class="form-control" value="<?php echo  $post_id; ?>" style="display:none;">
                        </div>
                        <div class="col-sm-2" style="display: flex; justify-content: flex-end;">
                            <button  type="submit" name="submit" class="btn btn-sm btn-primary mb-2 mt-2">Comment</button>
                        </div>
                       
                    </form>
<!-- --------------------------------------------------------checks fo comment and loads comment-------------------------------------------- -->
<?php 
       if(!isset(($_GET['clicked']))) {
        $comment=mysqli_query($conn, "SELECT * FROM `comment` WHERE post_id='$post_id' ORDER BY comment_id DESC") or die('query failed');
        if(mysqli_num_rows($comment) > 0){
            $rowco= mysqli_fetch_assoc($comment);
            $comment_id=$rowco['comment_id'];
            $user_id=$rowco['user_id'];
            $comment_content=$rowco['comment_content'];
            $comment_time=$rowco['comment_time'];
             
        
        $user=mysqli_query($conn, "SELECT * FROM `users` WHERE  user_id=' $user_id'") or die('query failed');
        if(mysqli_num_rows($user) > 0){
            $rowu= mysqli_fetch_assoc($user);
            $user_name=$rowu['name'];
            $user_image=$rowu['user_image'];  
         } 
        ?>

        <div class="card-body p-4">  
            <div class="row">
              <div class="col">
                <div class="d-flex flex-start"> 

<!-- ---------------------------------------------------checks for comment reply and loads reply---------------------------------------------------------- -->
                  <?php 
                   include "comment.php";
                   $comment_reply=mysqli_query($conn, "SELECT * FROM `comment_reply` WHERE comment_id='$comment_id' ORDER BY reply_id DESC") or die('query failed');
                   if(mysqli_num_rows($comment_reply) > 0){
                     while( $rowreply= mysqli_fetch_assoc($comment_reply)){

                     $user_id=$rowreply['user_id'];
                     $reply_content=$rowreply['reply_content'];
                     $comment_time=$rowreply['comment_time'];

                     $user=mysqli_query($conn, "SELECT * FROM `users` WHERE  user_id=' $user_id'") or die('query failed');
                     if(mysqli_num_rows($user) > 0){
                     $rowu= mysqli_fetch_assoc($user);
                      $user_name=$rowu['name'];
                      $user_image=$rowu['user_image']; 
                     } 
                    include "reply.php";
                    }
                   }
                  ?> 
                  
                </div> 
              </div>
            </div>
          </div>
 
                    <div class="d-flex ps-3 pe-4" style="justify-content: flex-end;">
                        <a href="userfeed.php?clicked=1" class=" btn-sm text-primary"><b>See all Comments</b></a>
                    </div>

        </div>
         <?php
         } 
        }
       
       
       
       
       else{
        
        $comment=mysqli_query($conn, "SELECT * FROM `comment` WHERE post_id='$post_id' ORDER BY comment_id DESC") or die('query failed');
        while($rowco= mysqli_fetch_assoc($comment)){
            $comment_id=$rowco['comment_id'];
            $user_id=$rowco['user_id'];
            $comment_content=$rowco['comment_content'];
            $comment_time=$rowco['comment_time'];
             
        
        $user=mysqli_query($conn, "SELECT * FROM `users` WHERE  user_id=' $user_id'") or die('query failed');
        if(mysqli_num_rows($user) > 0){
            $rowu= mysqli_fetch_assoc($user);
            $user_name=$rowu['name']; 
            $user_image=$rowu['user_image']; 
         } 
          
         

        ?>
        
        <div class="card-body p-4">  
            <div class="row">
              <div class="col">
                <div class="d-flex flex-start"> 
                 

<!-- ---------------------------------------------------checks for comment reply and loads reply---------------------------------------------------------- -->
                 <?php
                  include "comment.php";
                    $comment_reply=mysqli_query($conn, "SELECT * FROM `comment_reply` WHERE comment_id='$comment_id' ORDER BY reply_id DESC") or die('query failed');
                    if(mysqli_num_rows($comment_reply) > 0){
                      while( $rowreply= mysqli_fetch_assoc($comment_reply)){

                      $user_id=$rowreply['user_id'];
                      $reply_content=$rowreply['reply_content'];
                      $comment_time=$rowreply['comment_time'];

                      $user=mysqli_query($conn, "SELECT * FROM `users` WHERE  user_id=' $user_id'") or die('query failed');
                      if(mysqli_num_rows($user) > 0){
                      $rowu= mysqli_fetch_assoc($user);
                       $user_name=$rowu['name'];
                       $user_image=$rowu['user_image']; 
                      }
                      include "reply.php";
                    }
                }
                 
                 ?>  
                  
                </div> 
              </div>
            </div>
          </div>
  

        </div>

      <?php 
        }
       }
       ?>



            </div>
        </div>

    </div>
</section>
 <?php
    
    }
   }
 ?>
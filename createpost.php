<?php

include 'config.php'; 
if(isset($_POST['submit'])){

    $post_caption = mysqli_real_escape_string($conn, $_POST['post_caption']);  
    $post_status =mysqli_real_escape_string($conn, $_POST['post_status']); 
    $image = $_FILES['image']['name']; 
    $image_size = $_FILES['image']['size'];
    $image_tmp_name = $_FILES['image']['tmp_name'];
    $image_folder = 'post_images/'.$image;

    $user_id="1";
    $club_id="27";
    $post_time=date("m.d.Y"); 
    echo $post_time;
  
          if($image_size > 2000000){
            $message[] =  'image size is too large ,please provide new picture';
          }else{
             move_uploaded_file($image_tmp_name, $image_folder);
             $create_post = mysqli_query($conn, "INSERT INTO `post`(user_id,club_id,post_caption,post_picture,post_status,post_time) VALUES('$user_id', '$club_id', '$post_caption','$image', '$post_status', '$post_time')") or die('query failed');
             $message[] =  'product added successfully!';
          }
       
    
 }

?>
<!-- ------------------------------------------error or successfull messege---------------------- -->
<?php
if(isset($message)){
   foreach($message as $message){
      echo '
      <div class="message">
         <span>'.$message.'</span>
         <i  class="fa fa-bell " style="font-size:20px" onclick="this.parentElement.remove();"></i>
      </div>
      ';
   }
}
?>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer"
<div class="container">
        <div class="row gutters-sm mt-4 ">
            <div class="col-sm-3"></div>
            <div class="col-md-6">
                <div class="card card-body mb-1"  >
                    <div class="row">
                        <div class="col-sm-12">
                            <h3 class="text-center mb-0"><i class="fa-solid fa-pencil"></i> Create Post</h3>
                        </div>
                    </div>
                    <hr>
                    <!---------------------------------------form for post------------------------------------ -->
                    <form class="row"  action="" method="post"  name="postform" enctype="multipart/form-data" autocomplete="off">
                        <div class="col-sm-12 form-group">
                            <label for="post_caption" class="mb-2"><b>Description:</b> <sup class="star-color">*</sup></label>
                            <textarea name="post_caption" class="form-control form-control-lg mb-4" rows="7"></textarea>
                        </div> 
                        <div class="col-sm-12 form-group mb-3">
                            <label for="photo" class="mb-2"><b>Photo:</b></label>
                            <input class="form-control" type="file" accept="image/jpg, image/jpeg, image/png" name="image" >
                        </div>
                        <div class="col-sm-12 form-group mb-1">
                            <label for="post_status"><b>Availability:</b></label>
                            <input type="radio" name="post_status" class="user" value="private">Private
                            <input type="radio" name="post_status" class="public" value="public">Public
                        </div>
                        <div class="col-sm-9"></div>
                        <div class="col-sm-3 mt-1 mb-1">
                            <button type="submit" name="submit" class="btn btn-primary w-100"><i
                                    class="fas fa-check"></i> Create
                            </button>
                        </div> 
                        </form>

                    </form>
                </div>
            </div>
        </div>
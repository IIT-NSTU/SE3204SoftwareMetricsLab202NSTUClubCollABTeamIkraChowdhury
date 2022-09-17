<?php
function setSession($name,$department,$batch,$image){
        $_SESSION['user_name'] =  $name;
		$_SESSION['user_dept'] =  $department ;
		$_SESSION['user_batch'] =  $batch ;
		$_SESSION['user_image'] =  $image;     
}

include '../assets//config.php';
$user_name=$_SESSION['user_name'];  
$user_dept=$_SESSION['user_dept'];
$user_batch=$_SESSION['user_batch'];
$user_image=$_SESSION['user_image'];

if (isset($_POST['submit'])) {
$name = mysqli_real_escape_string($conn, $_POST['name']); 
$department = mysqli_real_escape_string($conn, $_POST['dept_name']); 
$batch = mysqli_real_escape_string($conn, $_POST['batch']); 


if($_FILES['image']['name']!=null){

$image = $_FILES['image']['name'];
$image_size = $_FILES['image']['size'];
$image_tmp_name = $_FILES['image']['tmp_name'];
$image_folder = '../images//'. $image;

if ($image_size > 200000000) {
    $message[] =  'image size is too large ,please provide new picture';

} else{ 
    move_uploaded_file($image_tmp_name, $image_folder); 
    mysqli_query($conn, "UPDATE `users` SET name = '$name', department='$department', batch='$batch' ,user_image='$image'  WHERE user_id= '$user_id'") or die('query failed');
    setSession($name,$department,$batch,$image);
    $message[] = 'Successfully updated Profile';
     
}
}
else { 
    $image=$user_image;
    mysqli_query($conn, "UPDATE `users` SET name = '$name', department='$department', batch='$batch' ,user_image='$image'  WHERE user_id= '$user_id'") or die('query failed');
    setSession($name,$department,$batch,$image);
    $message[] = 'Successfully updated Profile'; 
}

 }
?>

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


<section>
    <div class="container">
         <!-- Account page navigation-->
    <nav class="nav nav-borders">
        <a class="nav-link active ms-0" href="https://www.bootdey.com/snippets/view/bs5-edit-profile-account-details" target="__blank">Edit profile</a>
        
    </nav>
    <hr class="mt-0 mb-4">
        <div class="row d-flex justify-content-center align-items-center">
            <div class="col-sm-7">
                <div class="card text-black" style="border-radius: 25px;">
                    <div class="card-body px-5 py-3">
                        <div class="">
                            <h2 class="text-center fw-bold mb-5 mx-1 mt-4">Edit Profile</h2>
                            <form class="mx-1"  action="" method="post" name="postform" enctype="multipart/form-data">
                                <div class="row pb-3">
                                    <div class="col-sm-3">
                                        <label class="form-label mb-0 pt-1" for="form3Example1c">Full Name</label>
                                    </div>
                                    <div class="col-sm-9">
                                        <input type="text" name="name" id="form3Example1c" value="<?php echo $user_name; ?>" class="form-control" />
                                    </div>
                                </div> 
                                <div class="row pb-3">
                                    <div class="col-sm-3">
                                        <label class="form-label mb-0 pt-1" for="form3Example1c">Department</label>
                                    </div>
                                    <div class="col-sm-9">
                                        <input type="text" name="dept_name" id="form3Example1c" value="<?php echo $user_dept; ?>" class="form-control" />
                                    </div>
                                </div>
                                <div class="row pb-3">
                                    <div class="col-sm-3">
                                        <label class="form-label mb-0 pt-1" for="form3Example1c">Batch</label>
                                    </div>
                                    <div class="col-sm-9">
                                        <input type="text" name="batch" id="form3Example1c" value="<?php echo  $user_batch; ?>"  class="form-control" />
                                    </div>
                                </div> 
                                <div class="row pb-3">
                                    <div class="col-sm-3">
                                        <label class="form-label mb-0 pt-1" for="form3Example1c">Profile Picture</label>
                                    </div>
                                    <div class="col-sm-9">
                                    <input class="form-control" type="file" accept="image/jpg, image/jpeg, image/png"   name="image">
                                    </div>
                                </div>
                                <div class="d-flex justify-content-end  mb-3 ">
                                    <button type="submit" name="submit" class="btn btn-sm btn-primary btn-lg">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
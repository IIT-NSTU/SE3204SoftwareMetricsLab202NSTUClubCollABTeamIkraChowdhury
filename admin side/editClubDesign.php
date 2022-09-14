<?php
require './config.php';
$_SESSION["club_id"] = 27; // User's session
$sessionId = $_SESSION["club_id"];
$user = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM clubs WHERE club_id = $sessionId"));
?>

<div class="container-xl px-4 mt-4">
    <!-- Account page navigation-->
    <nav class="nav nav-borders">
        <a class="nav-link active ms-0" href="https://www.bootdey.com/snippets/view/bs5-edit-profile-account-details" target="__blank">Club settings</a>
        
    </nav>
    <hr class="mt-0 mb-4">
    <div class="row">
        <div class="col-xl-4">
            <!-- Profile picture card-->
            <div class="card mb-4 mb-xl-0">
                <div class="card-header">Club Picture</div>
                <div class="card-body text-center">
                    <!-- Profile picture image-->
                    <?php
                    $club_id = $user["club_id"];
                    $name = $user["club_description"];
                    $image = $user["club_image"];
                     ?>
                    
                    <img class="img-account-profile rounded-circle mb-2" src="./clubimages/<?php echo $image; ?>" alt="">
                    <!-- Profile picture help block-->
                    <div class="small font-italic text-muted mb-4">JPG or PNG no larger than 5 MB</div>
                    <!-- Profile picture upload button-->
                    <form class="form" id = "form" class="mb-3" action="./editclub.php" method="post" enctype="multipart/form-data">
   
                            <!-- <input type="file"  class="form-control form-control-sm" name="club_pics">
                            <button type="submit" name="club-pics-submit" class="btn btn-primary p-2">Submit</button> -->
                            <input type="hidden"  class="form-control form-control-sm" name="id" value="<?php echo $club_id; ?>"> 

                            <input type="hidden"  class="form-control form-control-sm" name="name" value="<?php echo $name; ?>"> 

                            <input type="file"  class="form-control form-control-sm" name="image" id = "image" accept=".jpg, .jpeg, .png"> <br>
                           <button type = "submit" class="btn btn-primary p-2" name = "submit">Submit</button>
    
                    </form>
                </div>
            </div>
        </div>
        <div class="col-xl-8">
            <!-- Account details card-->
            <div class="card mb-4">
                <div class="card-header">Club Details</div>
                <div class="card-body">
                    <form action="./editclub.php" method="post" >
                    <div class="form-floating">
                               <input type="hidden"  class="form-control form-control-sm" name="id" value="<?php echo $club_id; ?>"> 

                                <textarea name="textarea" class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px"></textarea>
                                <label for="floatingTextarea2">Description</label>
                                </div>
                               </br>
                        <button class="btn btn-primary p-2" type = "submit" name = "save_changes">Save changes</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
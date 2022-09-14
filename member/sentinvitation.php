<?php
include '../assets//config.php';
if(isset($_POST['submit'])){
    $club_id=27;
    $invitedclub_id= $_POST['invitedclub_id']; 
    $invite_msg = mysqli_real_escape_string($conn, $_POST['invite_msg']);
    $invite_date = date("m.d.Y");
    $user_id="1";
    mysqli_query($conn, "INSERT INTO `invitation`(club_id,invitedclub_id,invite_msg,invite_date) VALUES('$club_id', '$invitedclub_id', '$invite_msg','$invite_date')") or die('query failed');
     
    
}
?>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer">
<div class="container">
    <div class="row gutters-sm mt-0 ">
        <div class="col-sm-2"></div>
        <div class="col-md-8">
            <div class="card card-body px-5">
                <div class="row">
                    <div class="col-sm-12">
                        <h3 class="text-center mb-0"><i class="fa-solid fa-pencil"></i>Invite CLubs</h3>
                    </div>
                </div>
                <hr>
                <!---------------------------------------form for post------------------------------------ -->
                <form class="row" action="" method="post" name="postform" enctype="multipart/form-data" autocomplete="off">

                    <div class="col-sm-12 form-group">
                        <label for="invite_msg" class="mb-2"><b>Description:</b> <sup class="star-color">*</sup></label>
                        <textarea name="invite_msg" class="form-control form-control-lg mb-4" rows="4"></textarea>
                    </div> 
                    <div class="d-flex mb-0">
                        <label class="mb-2 me-3"><b>Select Clubs</b></label> 
                        <div class="me-3">
                        <select name="invitedclub_id" class="mb-3" id="type-option" required>
                        <option value="">Select a club</option>


                        <?php
                        $club=mysqli_query($conn, "SELECT * FROM `clubs`") or die('query failed');
                        if(mysqli_num_rows($club) > 0){ 
                            while($row = mysqli_fetch_assoc($club)){ 
                                $club_name=$row['club_name'];
                                $club_id=$row['club_id'];

                        ?>


                        <option value="<?php echo  $club_id; ?>"><?php echo  $club_name; ?></option>


                        <?php
                            }}
                       ?>


                        </select>
                        </div> 
                    </div>
                    <div class="align-items-center d-flex">
                        <button type="submit" name="submit" class="btn btn-sm btn-primary ms-auto"><i class="fas fa-check"></i> Post</button>
                    </div>

                </form>
            </div>
        </div>
    </div>
 
    <!-- ------------------------------------------error or successfull messege---------------------- -->
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
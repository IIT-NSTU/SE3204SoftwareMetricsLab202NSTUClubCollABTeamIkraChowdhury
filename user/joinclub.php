<?php
include '../assets//config.php'; 
         $post = mysqli_query($conn, "SELECT * FROM `apply_form` ORDER BY session_id DESC ") or die('query failed');
         if(mysqli_num_rows($post) > 0){ 
            while($row = mysqli_fetch_assoc($post)){ 
                $club_id=$row['club_id'];
                $description=$row['description'];
                $ammount=$row['ammount'];
                $bkash_number=$row['bkash_number']; 
                $end_time=$row['end_time']; 

                $club=mysqli_query($conn, "SELECT * FROM `clubs` WHERE club_id='$club_id'") or die('query failed');
                if(mysqli_num_rows($club) > 0){
                    $rowc= mysqli_fetch_assoc($club);
                    $club_name=$rowc['club_name'];
                    $club_image=$rowc['club_image'];
                     
                } 

                ?>
                 <div class="row d-flex align-items-center justify-content-center mt-5">
        <div class="col-md-7">
            <div class="card bg-light">
                <div class="d-flex justify-content-between p-2 px-3">
                    <div class="d-flex flex-row align-items-center"> <img src="../images//<?php echo $club_image; ?>" width="90" class="rounded-circle">
                        <div class="d-flex flex-column ms-2"> <span class="font-weight-bold"><?php echo $club_name; ?></span>
                        </div>
                          
                    </div>

                </div>
                <div class="p-3">
                    <p class="text-justify"><?php echo $description; ?></p>
                    <hr>
                    <div>
                        <div class="row">
                            <div class="col">
                                <div class="card">
                                    <div class="card-body">
                                        <h6 class="text-center text-primary">Bkash Number</h6>
                                        <hr class="mt-1 mb-1">
                                        <p class="mt-2 text-center"><?php echo  $bkash_number; ?>
                                        </p>
                                    </div>
                                </div>

                            </div>
                            <div class="col">
                                <div class="card">
                                    <div class="card-body">
                                        <h6 class="text-center text-primary">Form Price</h6>
                                        <hr class="mt-1 mb-1">
                                        <p class="mt-2 text-center"><?php echo  $ammount; ?></p>
                                    </div>
                                </div>

                            </div>
                            <div class="col">
                                <div class="card">
                                    <div class="card-body">
                                        <h6 class="text-center text-primary">Submission Daadline</h6>
                                        <hr class="mt-1 mb-1">
                                        <p class="mt-2 text-center"><?php echo  $end_time; ?>
                                        </p>
                                    </div>
                                </div>

                            </div>


                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col">
                            <textarea class="form-control" name="" id="" cols="66" rows="3" placeholder="Why you want to join the club?" required> </textarea>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="d-flex justify-content-end">
                            <a href="userformpay.php?description=<?php echo  $description; ?> && club_id=<?php echo  $club_id; ?>" class=" btn-sm text-danger" style="text-decoration:none ;"><b>Delete</b></a>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
 




                <?php
                
            }
         }
                
      ?>
    
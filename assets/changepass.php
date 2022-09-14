<?php

include 'config.php'; 
if(isset($_POST['submit'])){
	 

	$password = mysqli_real_escape_string($conn, md5($_POST['password']));
	$password_confirm= mysqli_real_escape_string($conn, md5($_POST['password_confirm'])); 
 
	if ($password==$password_confirm) {  
		mysqli_query($conn, "UPDATE `users` SET password='$password_confirm' WHERE user_id='$user_id'") or die('query failed');

   }else{
	 
	echo ' <div class="heading">
	           <div class="mt-3 bg-light text-center" >
		           <h2>No clubs to show</h2>
              </div>
          </div>';
   }
 }
 
?>
	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-sm-center h-100">
				<div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
 
					<div class="card shadow-lg">
						<div class="card-body p-5">
							<h1 class="fs-4 card-title fw-bold mb-4">Change Password</h1>
							<form method="POST" action="" class="needs-validation" novalidate="" autocomplete="off">
								<div class="mb-3">
									<label class="mb-2 text-muted" for="password">New Password</label>
									<input id="password" type="password" class="form-control" name="password" value="" required autofocus>
									<div class="invalid-feedback">
										Password is required	
									</div>
								</div>

								<div class="mb-3">
									<label class="mb-2 text-muted" for="password-confirm">Confirm Password</label>
									<input id="password-confirm" type="password" class="form-control" name="password_confirm" required>
								    <div class="invalid-feedback">
										Please confirm your new password
							    	</div>
								</div>

								<div class="d-flex align-items-center">
								 
									<button type="submit" name="submit" class="btn btn-primary ms-auto">
										Reset Password	
									</button>
								</div>
							</form>
						</div>
					</div> 
				</div>
			</div>
		</div>
	</section>

 
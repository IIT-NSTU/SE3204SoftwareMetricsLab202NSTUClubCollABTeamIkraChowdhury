<?php

include '../assets//config.php';

if (isset($_POST['submit'])) {

	$month = mysqli_real_escape_string($conn, $_POST['month']);
	$year = mysqli_real_escape_string($conn, $_POST['year']);
	$usergiven_paynumber = $_POST['pay_number'];
	$payment_ammount = $_POST['payment_ammount'];
	$transiction_number = mysqli_real_escape_string($conn, $_POST['transiction_number']);

	//--------------------------------------checks for availability of payment of the month------------------------------
	$available = mysqli_query($conn, "SELECT * FROM `clubmonthypayment`  WHERE  clubmonthypayment.month='$month' AND clubmonthypayment.year='$year' AND clubmonthypayment.club_id='$club_id'") or die('query failed');

	if (mysqli_num_rows($available) > 0) {

		while ($row = mysqli_fetch_assoc($available)) {
			$pay_number = $row['pay_number'];
			$payment_id = $row['payment_id'];
		}
		//----------------------------checks if the user already paid for the month--------------------------------	
		$payed = mysqli_query($conn, "SELECT * FROM `pay`  WHERE   pay.user_id='$user_id' AND  pay.payment_id='$payment_id'") or die('query failed');
		$payment_status = null;
		if (mysqli_num_rows($payed) > 0) {
			while ($row = mysqli_fetch_assoc($payed)) {
				$payment_status = $row['payment_status'];
				if ($payment_status == "checked") {
					$message[] = 'You Have already paied for this month --->' . $month;
					break;
				}
			}
		}
		//--------------------------------if payment is not completed inserts payment check request to table----------------------------
		if ($payment_status != "checked" ||  $payment_status = null) {


			if ($pay_number == $usergiven_paynumber) {

				mysqli_query($conn, "INSERT INTO `pay`(user_id,payment_id,payment_ammount,transiction_number) VALUES('$user_id', '$payment_id', '$payment_ammount', '$transiction_number')") or die('query failed');
				$message[] = 'Succesfully inserted payment check request of month   --->' . $month;
			} else {
				$message[] = 'Not the correct Bkash NUmber .The correct number is --->' . $pay_number;
			}
		}
	} else {
		$message[] = 'No payment for this month on this club  --->' . $month;
	}
}

?>




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



<section class="h-100">
	<div class="container h-100">
		<div class="row justify-content-sm-center h-100">
			<div class="col-xxl-5 col-xl-6 col-lg-6 col-md-7 col-sm-9">

				<div class="card shadow-lg mb-5">
					<div class="card-body px-5 pt-4 pb-3">
						<h1 class="fs-4 card-title fw-bold mb-4 text-center">Monthly Payment</h1>

						<!-- -----------------------------check form---------------------------------- -->
						<form action="" method="post" class="checkform" name="checkform" autocomplete="on">

							<div class="dept mb-3">
								<label class="mb-2 text-muted" for="month">Payment of Month</label>
								<select placeholder="Month" class="month" name="month" id="type-option" required>
									<option disabled selected value>Select Month</option>
									<option name="January" value="jan">January</option>
									<option name="February" value="feb">February</option>
									<option name="March" value="mar">March</option>
									<option name="April" value="apr">April</option>
									<option name="May" value="may">May</option>
									<option name="June" value="jun">June</option>
									<option name="July" value="jul">July</option>
									<option name="August" value="aug">August</option>
									<option name="September" value="sep">September</option>
									<option name="October" value="oct">October</option>
									<option name="November" value="nov">November</option>
									<option name="December" value="dec">December</option>
								</select>
							</div>
							</script>
							<div class="batch mb-3">
								<label class="mb-2 text-muted"> Year</label>
								<input class="year" type="number" name="year" value="" id="type-option" required>
							</div>


							<div class="mb-3">
								<label class="mb-2 text-muted" for="pay_number">Bkash Number (Club)</label>
								<input id="pay_numberr" type="number" class="form-control" name="pay_number" value="" required autofocus>
							</div>

							<div class="mb-3">
								<label class="mb-2 text-muted" for="payment_ammount">Payment Amount</label>
								<input id="payment_ammount" type="number" class="form-control" name="payment_ammount" value="" required>
							</div>

							<div class="mb-1">
								<label class="mb-2 text-muted" for="transiction_number">Transaction number</label>
								<input id="transiction_number" type="text" class="form-control" name="transiction_number" required>
							</div>

							<div class="align-items-center d-flex">
								<button type="submit" name="submit" class="btn btn-sm btn-primary ms-auto">
									Submit
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
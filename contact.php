<?php
include("config.php");
$error = "";
$msg = "";
if (isset($_POST['send'])) {
	$name = $_POST['name'];
	$email = $_POST['email'];
	$phone = $_POST['phone'];
	$subject = $_POST['subject'];
	$message = $_POST['message'];

	if (!empty($name) && !empty($email) && !empty($phone) && !empty($subject) && !empty($message)) {

		$sql = "INSERT INTO contact (name,email,phone,subject,message) VALUES ('$name','$email','$phone','$subject','$message')";
		$result = mysqli_query($con, $sql);
		if ($result) {
			$msg = "<p class='alert alert-success'>Message Send Successfully</p> ";
		} else {
			$error = "<p class='alert alert-warning'>Message Not Send Successfully</p> ";
		}
	} else {
		$error = "<p class='alert alert-warning'>Please Fill all the fields</p>";
	}
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Meta Tags -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link rel="shortcut icon" href="images/favicon.ico">
	<link rel="icon" type="image/x-icon" href="images/logo/icon4.png">

	<!--	Fonts
	========================================================-->
	<link href="https://fonts.googleapis.com/css?family=Muli:400,400i,500,600,700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Comfortaa:400,700" rel="stylesheet">

	<!--	Css Link
	========================================================-->
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap-slider.css">
	<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
	<link rel="stylesheet" type="text/css" href="css/layerslider.css">
	<link rel="stylesheet" type="text/css" href="css/color.css" id="color-change">
	<link rel="stylesheet" type="text/css" href="css/owl.carousel.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="fonts/flaticon/flaticon.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">

	<!--	Title
	=========================================================-->
	<title>Krihouse</title>
</head>

<body>

	<!--	Page Loader
=============================================================
<div class="page-loader position-fixed z-index-9999 w-100 bg-white vh-100">
	<div class="d-flex justify-content-center y-middle position-relative">
	  <div class="spinner-border" role="status">
		<span class="sr-only">Loading...</span>
	  </div>
	</div>
</div>
-->

	<div id="page-wrapper">
		<div class="row">
			<!--	Header start  -->
			<?php include("include/header.php"); ?>
			<!--	Header end  -->

			<!--	Banner -->
			<!-- <div class="banner-full-row page-banner" style="background-image:url('images/breadcromb.jpg');">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h2 class="page-name float-left text-white text-uppercase mt-1 mb-0"><b>Contact</b></h2>
                    </div>
                    <div class="col-md-6">
                        <nav aria-label="breadcrumb" class="float-left float-md-right">
                            <ol class="breadcrumb bg-transparent m-0 p-0">
                                <li class="breadcrumb-item text-white"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">Contact</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div> -->
			<!--	Banner -->

			<!--	Contact Information -->
			<div class="full-row">
				<div class="container">
					<div class="row">
						<div class="col-lg-4 mb-5 bg-secondary">
							<div class="contact-info">
								<h3 class="mb-4 mt-4 text-white">Contactez-nous</h3>

								<ul>
									<li class="d-flex mb-4"> <i class="fas fa-map-marker-alt text-white mr-2 font-13 mt-1"></i>
										<div class="contact-address">
											<h5 class="text-white">Address</h5>
											<span class="text-white"> Rue 14 boulverads mohamed VI , Fes</span> <br>
											<span class="text-white"> Rue 18 av.Allal Al Fassi , Rabat </span>
										</div>
									</li>
									<li class="d-flex mb-4"> <i class="fas fa-phone-alt text-white mr-2 font-13 mt-1"></i>
										<div class="contact-address">
											<h5 class="text-white">Appelle-Nous</h5>
											<span class="d-table text-white">+212 63278263</span>
											<span class="text-white">+212 642938743 </span>
										</div>
									</li>
									<li class="d-flex mb-4"> <i class="fas fa-envelope text-white mr-2 font-13 mt-1"></i>
										<div class="contact-address">
											<h5 class="text-white">Email Adderss</h5>
											<span class="d-table text-white">Krihouse1@Gmail.com</span>
											<span class="text-white">krihousecontact@Gmail.com</span>
										</div>
									</li>
								</ul>
							</div>
						</div>
						<div class="col-lg-1"></div>
						<div class="col-md-12 col-lg-7">
							<div class="container">
								<div class="row">
									<div class="col-lg-12">
										<h2 class="text-secondary double-down-line text-center mb-5"> Entrer En Contact</h2>
										<?php echo $msg; ?><?php echo $error; ?>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<form class="w-100" action="#" method="post">
											<div class="row">
												<div class="row mb-4">
													<div class="form-group col-lg-6">
														<input type="text" name="name" class="form-control" placeholder="Votre Nom*">
													</div>
													<div class="form-group col-lg-6">
														<input type="text" name="email" class="form-control" placeholder="Votre Email Address*">
													</div>
													<div class="form-group col-lg-6">
														<input type="text" name="phone" class="form-control" placeholder="votre téléphone" maxlength="10">
													</div>
													<div class="form-group col-lg-6">
														<input type="text" name="subject" class="form-control" placeholder="Sujet">
													</div>
													<div class="col-lg-12">
														<div class="form-group">
															<textarea name="message" class="form-control" rows="5" placeholder="ecrivez un commentaire..."></textarea>
														</div>
													</div>
												</div>
												<button type="submit" value="send message" name="send" class="btn btn-success">envoyer le Message</button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--	Contact Inforamtion -->

			<!--	Map -->
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d656.46440213545!2d-6.864206062487025!3d33.98294414575751!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xda76cc242813bd9%3A0xe2d130ac1d955d64!2sPark%20INSEA%2C%20Av.%20Allal%20Al%20Fassi%2C%20Rabat%2C%20Maroc!5e0!3m2!1sfr!2sfr!4v1712535385373!5m2!1sfr!2sfr" width="100%" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			<!--	Map -->

			<!--	Footer   start-->
			<?php include("include/footer.php"); ?>
			<!--	Footer   start-->

			<!-- Scroll to top -->
			<a href="#" class="bg-secondary text-white hover-text-secondary" id="scroll"><i class="fas fa-angle-up"></i></a>
			<!-- End Scroll To top -->
		</div>
	</div>
	<!-- Wrapper End -->

	<!--	Js Link
============================================================-->
	<script src="js/jquery.min.js"></script>
	<!--jQuery Layer Slider -->
	<script src="js/greensock.js"></script>
	<script src="js/layerslider.transitions.js"></script>
	<script src="js/layerslider.kreaturamedia.jquery.js"></script>
	<!--jQuery Layer Slider -->
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/tmpl.js"></script>
	<script src="js/jquery.dependClass-0.1.js"></script>
	<script src="js/draggable-0.1.js"></script>
	<script src="js/jquery.slider.js"></script>
	<script src="js/wow.js"></script>
	<script src="js/jquery.cookie.js"></script>
	<script src="js/custom.js"></script>

</body>

</html>
<?php
ini_set('session.cache_limiter', 'public');
session_cache_limiter(false);
session_start();
include("config.php");
if (!isset($_SESSION['uemail'])) {
	header("location:login.php");
}

//// code insert
//// add code
$error = "";
$msg = "";
if (isset($_POST['add'])) {

	$title = $_POST['title'];
	$content = $_POST['content'];
	$ptype = $_POST['ptype'];
	$bhk = $_POST['bhk'];
	$bed = $_POST['bed'];
	$balc = $_POST['balc'];
	$hall = $_POST['hall'];
	$stype = $_POST['stype'];
	$bath = $_POST['bath'];
	$kitc = $_POST['kitc'];
	$floor = $_POST['floor'];
	$price = $_POST['price'];
	$city = $_POST['city'];
	$asize = $_POST['asize'];
	$loc = $_POST['loc'];
	$state = $_POST['state'];
	$status = $_POST['status'];
	$uid = $_SESSION['uid'];
	$feature = $_POST['feature'];

	$totalfloor = $_POST['totalfl'];

	$isFeatured = $_POST['isFeatured'];

	$aimage = $_FILES['aimage']['name'];
	$aimage1 = $_FILES['aimage1']['name'];
	$aimage2 = $_FILES['aimage2']['name'];
	$aimage3 = $_FILES['aimage3']['name'];
	$aimage4 = $_FILES['aimage4']['name'];

	$fimage = $_FILES['fimage']['name'];
	$fimage1 = $_FILES['fimage1']['name'];
	$fimage2 = $_FILES['fimage2']['name'];

	$temp_name  = $_FILES['aimage']['tmp_name'];
	$temp_name1 = $_FILES['aimage1']['tmp_name'];
	$temp_name2 = $_FILES['aimage2']['tmp_name'];
	$temp_name3 = $_FILES['aimage3']['tmp_name'];
	$temp_name4 = $_FILES['aimage4']['tmp_name'];

	$temp_name5 = $_FILES['fimage']['tmp_name'];
	$temp_name6 = $_FILES['fimage1']['tmp_name'];
	$temp_name7 = $_FILES['fimage2']['tmp_name'];

	move_uploaded_file($temp_name, "admin/property/$aimage");
	move_uploaded_file($temp_name1, "admin/property/$aimage1");
	move_uploaded_file($temp_name2, "admin/property/$aimage2");
	move_uploaded_file($temp_name3, "admin/property/$aimage3");
	move_uploaded_file($temp_name4, "admin/property/$aimage4");

	move_uploaded_file($temp_name5, "admin/property/$fimage");
	move_uploaded_file($temp_name6, "admin/property/$fimage1");
	move_uploaded_file($temp_name7, "admin/property/$fimage2");

	$sql = "insert into property (title,pcontent,type,bhk,stype,bedroom,bathroom,balcony,kitchen,hall,floor,size,price,location,city,feature,pimage,pimage1,pimage2,pimage3,pimage4,uid,status,mapimage,topmapimage,groundmapimage,totalfloor, isFeatured)
	values('$title','$content','$ptype','$bhk','$stype','$bed','$bath','$balc','$kitc','$hall','$floor','$asize','$price',
	'$loc','$city','$feature','$aimage','$aimage1','$aimage2','$aimage3','$aimage4','$uid','$status','$fimage','$fimage1','$fimage2','$totalfloor', '$isFeatured')";
	$result = mysqli_query($con, $sql);
	if ($result) {
		$msg = "<p class='alert alert-success'>Property Inserted Successfully</p>";
	} else {
		$error = "<p class='alert alert-warning'>Property Not Inserted Some Error</p>";
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

	<!--	Fonts
	========================================================-->
	<link href="https://fonts.googleapis.com/css?family=Muli:400,400i,500,600,700&amp;display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Comfortaa:400,700" rel="stylesheet">
	<link rel="icon" type="image/x-icon" href="images/logo/icon4.png">

	<!--	Css Link
	========================================================-->
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap-slider.css">
	<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
	<link rel="stylesheet" type="text/css" href="css/layerslider.css">
	<link rel="stylesheet" type="text/css" href="css/color.css">
	<link rel="stylesheet" type="text/css" href="css/owl.carousel.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="fonts/flaticon/flaticon.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/login.css">
	<!--   -->
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

			<!--	Banner   --->
			<!-- <div class="banner-full-row page-banner" style="background-image:url('images/breadcromb.jpg');">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h2 class="page-name float-left text-white text-uppercase mt-1 mb-0"><b>Submit Property</b></h2>
                    </div>
                    <div class="col-md-6">
                        <nav aria-label="breadcrumb" class="float-left float-md-right">
                            <ol class="breadcrumb bg-transparent m-0 p-0">
                                <li class="breadcrumb-item text-white"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">Submit Property</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div> -->
			<!--	Banner   --->


			<!--	Submit property   -->
			<div class="full-row">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<h2 class="text-secondary double-down-line text-center">Soumettre la propriété</h2>
						</div>
					</div>
					<div class="row p-5 bg-white">
						<form method="post" enctype="multipart/form-data">
							<div class="description">
								<h5 class="text-secondary">Informations de base</h5>
								<hr>
								<?php echo $error; ?>
								<?php echo $msg; ?>

								<div class="row">
									<div class="col-xl-12">
										<div class="form-group row">
											<label class="col-lg-2 col-form-label">Titre</label>
											<div class="col-lg-9">
												<input type="text" class="form-control" name="title" required placeholder="Entrez le titre">
											</div>
										</div><!--   -->
										<div class="form-group row">
											<label class="col-lg-2 col-form-label">Contenu</label>
											<div class="col-lg-9">
												<textarea class="tinymce form-control" name="content" rows="10" cols="30"></textarea>
											</div>
										</div>

									</div>
									<div class="col-xl-6">
										<div class="form-group row">
											<label class="col-lg-3 col-form-label">Type de propriété</label>
											<div class="col-lg-9">
												<select class="form-control" required name="ptype">
													<option value="">Sélectionner le genre</option>
													<option value="Appartement">Appartement</option>
													<option value="Plat">Plat</option>
													<option value="Bâtiment">Bâtiment</option>
													<option value="Maison">Maison</option>
													<option value="Villa">Villa</option>
													<option value="Bureau">Bureau</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-lg-3 col-form-label">Type de vente</label>
											<div class="col-lg-9">
												<select class="form-control" required name="stype">
													<option value="">Sélectionnez le statut</option>
													<option value="Louer">Louer</option>
													<option value="Vente">Vente</option>
												</select>
											</div>
										</div><!--   -->
										<div class="form-group row">
											<label class="col-lg-3 col-form-label">Salle de bain</label>
											<div class="col-lg-9">
												<input type="text" class="form-control" name="bath" required placeholder="Entrez dans la salle de bain (uniquement les numéros 1 à 10)">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-lg-3 col-form-label">Cuisine</label>
											<div class="col-lg-9">
												<input type="text" class="form-control" name="kitc" required placeholder="Entrez dans la cuisine (uniquement les numéros 1 à 10)">
											</div>
										</div>

									</div>
									<div class="col-xl-6">
										<div class="form-group row mb-3">
											<label class="col-lg-3 col-form-label">BHK</label>
											<div class="col-lg-9">
												<select class="form-control" required name="bhk">
													<option value="">Sélectionnez BHK (Chambre/Salle/Cuisine)</option>
													<option value="1 BHK">1 BHK</option>
													<option value="2 BHK">2 BHK</option>
													<option value="3 BHK">3 BHK</option>
													<option value="4 BHK">4 BHK</option>
													<option value="5 BHK">5 BHK</option>
													<option value="1,2 BHK">1,2 BHK</option>
													<option value="2,3 BHK">2,3 BHK</option>
													<option value="2,3,4 BHK">2,3,4 BHK</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-lg-3 col-form-label">Chambre à coucher</label>
											<div class="col-lg-9">
												<input type="text" class="form-control" name="bed" required placeholder="Entrez dans la chambre (uniquement les numéros 1 à 10)">
											</div>
										</div><!--   -->
										<div class="form-group row">
											<label class="col-lg-3 col-form-label">Balcon</label>
											<div class="col-lg-9">
												<input type="text" class="form-control" name="balc" required placeholder="Entrez dans le balcon (uniquement les numéros 1 à 10)">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-lg-3 col-form-label">Salle</label>
											<div class="col-lg-9">
												<input type="text" class="form-control" name="hall" required placeholder="Entrez dans le Salle (uniquement les numéros 1 à 10)">
											</div>
										</div>

									</div><!--   -->
								</div>
								<h5 class="text-secondary">Prix et emplacement</h5>
								<hr>
								<div class="row">
									<div class="col-xl-6">
										<div class="form-group row">
											<label class="col-lg-3 col-form-label">Sol</label>
											<div class="col-lg-9">
												<select class="form-control" required name="floor">
													<option value="">Select sol</option>
													<option value="1er étage">1er étage</option>
													<option value="2eme étager">2eme étage</option>
													<option value="3eme étage">3eme étage</option>
													<option value="4eme étage">4eme étage</option>
													<option value="5eme étage">5eme étage</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-lg-3 col-form-label">Prix</label>
											<div class="col-lg-9">
												<input type="text" class="form-control" name="price" required placeholder="Entrez le prix">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-lg-3 col-form-label">Ville</label>
											<div class="col-lg-9">
												<input type="text" class="form-control" name="city" required placeholder="Entrez la ville">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-lg-3 col-form-label">État</label>
											<div class="col-lg-9">
												<input type="text" class="form-control" name="state" required placeholder="Entrer l'état">
											</div>
										</div>
									</div><!--   -->
									<div class="col-xl-6">
										<div class="form-group row">
											<label class="col-lg-3 col-form-label">Étage total</label>
											<div class="col-lg-9">
												<select class="form-control" required name="totalfl">
													<option value="">Sélectionnez l'étage</option>
													<option value="1er étage">1er étage</option>
													<option value="2eme étage">2eme étage</option>
													<option value="3eme étage">3eme étage</option>
													<option value="4eme étage">4eme étage</option>
													<option value="5eme étage">5eme étage</option>
													<option value="6eme étage">6eme étage</option>
													<option value="7eme étage">7eme étage</option>
													<option value="8eme étage">8eme étage</option>
													<option value="9eme étage">9eme étage</option>
													<option value="10eme étage">10eme étage</option>
													<option value="11eme étage">11eme étage</option>
													<option value="12eme étage">12eme étage</option>
													<option value="13eme étage">13eme étage</option>
													<option value="14eme étage">14eme étage</option>
													<option value="15 étage">15eme étage</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-lg-3 col-form-label">Taille de la zone</label>
											<div class="col-lg-9">
												<input type="text" class="form-control" name="asize" required placeholder="Entrez la taille de la zone (en sqrt)">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-lg-3 col-form-label">Adresse</label>
											<div class="col-lg-9">
												<input type="text" class="form-control" name="loc" required placeholder="Entrer l'adresse">
											</div>
										</div>

									</div><!--   -->
								</div>

								<div class="form-group row">
									<label class="col-lg-2 col-form-label">Fonctionnalité</label>
									<div class="col-lg-9">
										<p class="alert alert-danger">* Important, veuillez ne pas supprimer le contenu ci-dessous uniquement. <b>oui</b> Ou <b>No</b> ou Détails et ne pas ajouter plus de détails</p>

										<textarea class="tinymce form-control" name="feature" rows="10" cols="30">
												<!---feature area start--->
												<div class="col-md-4">
														<ul>
														<li class="mb-3"><span class="text-secondary font-weight-bold">Âge de la propriété : </span>10 Années</li>
														<li class="mb-3"><span class="text-secondary font-weight-bold">Piscine : </span>oui</li>
														<li class="mb-3"><span class="text-secondary font-weight-bold">Parking : </span>oui</li>
														<li class="mb-3"><span class="text-secondary font-weight-bold">SALLE DE SPORT : </span>oui</li>
														</ul>
													</div>
													<div class="col-md-4">
														<ul>
														<li class="mb-3"><span class="text-secondary font-weight-bold">Type : </span>Appartement</li>
														<li class="mb-3"><span class="text-secondary font-weight-bold">Sécurité : </span>Oui</li>
														<li class="mb-3"><span class="text-secondary font-weight-bold">Capacité de restauration : </span>10 personnes</li>
														<li class="mb-3"><span class="text-secondary font-weight-bold">Église/Temple  : </span>No</li>
														
														</ul>
													</div>
													<div class="col-md-4">
														<ul>
														<li class="mb-3"><span class="text-secondary font-weight-bold">3ème partie : </span>Non</li>
														<li class="mb-3"><span class="text-secondary font-weight-bold">Ascenseur : </span>Oui</li>
														<li class="mb-3"><span class="text-secondary font-weight-bold">Vidéosurveillance : </span>Oui</li>
														<li class="mb-3"><span class="text-secondary font-weight-bold">Approvisionnement en eau : </span>Eau souterraine / Réservoir</li>
														</ul>
													</div>
												<!---feature area end---->
											</textarea>
									</div><!--   -->
								</div>

								<h5 class="text-secondary">Image & Status</h5>
								<hr>
								<div class="row">
									<div class="col-xl-6">

										<div class="form-group row">
											<label class="col-lg-3 col-form-label">Image</label>
											<div class="col-lg-9">
												<input class="form-control" name="aimage" type="file" required="">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-lg-3 col-form-label">Image 2</label>
											<div class="col-lg-9">
												<input class="form-control" name="aimage2" type="file" required="">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-lg-3 col-form-label">Image 4</label>
											<div class="col-lg-9">
												<input class="form-control" name="aimage4" type="file" required="">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-lg-3 col-form-label">Status</label>
											<div class="col-lg-9">
												<select class="form-control" required name="status">
													<option value="">Sélectionnez le statut</option>
													<option value="Disponible">Disponible</option>
													<option value="Épuisé">Épuisé</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-lg-3 col-form-label">Chambre 2</label>
											<div class="col-lg-9">
												<input class="form-control" name="fimage1" type="file">
											</div><!--   -->
										</div>
									</div>
									<div class="col-xl-6">

										<div class="form-group row">
											<label class="col-lg-3 col-form-label">Image 1</label>
											<div class="col-lg-9">
												<input class="form-control" name="aimage1" type="file" required="">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-lg-3 col-form-label">image 3</label>
											<div class="col-lg-9">
												<input class="form-control" name="aimage3" type="file" required="">
											</div>
										</div>

										<div class="form-group row">
											<label class="col-lg-3 col-form-label">Cuisine</label>
											<div class="col-lg-9">
												<input class="form-control" name="fimage" type="file">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-lg-3 col-form-label">Chambre 1</label>
											<div class="col-lg-9">
												<input class="form-control" name="fimage2" type="file">
											</div>
										</div>
									</div>
								</div>

								<hr>

								<div class="row"><!--   -->
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-lg-3 col-form-label"><b>est en vedette ?</b></label>
											<div class="col-lg-9">
												<select class="form-control" required name="isFeatured">
													<option value="">sélectionner...</option>
													<option value="0">Non</option>
													<option value="1">Oui</option>
												</select>
											</div>
										</div>
									</div>
								</div>


								<input type="submit" value="Soumettre la propriété" class="btn btn-info" name="add" style="margin-left:200px;">

							</div>
						</form>
					</div>
				</div>
			</div>
			<!--	Submit property   -->


			<!--	Footer   start-->
			<?php include("include/footer.php"); ?>
			<!--	Footer   start-->

			<!-- Scroll to top -->
			<a href="#" class="bg-secondary text-white hover-text-secondary" id="scroll"><i class="fas fa-angle-up"></i></a>
			<!-- End Scroll To top -->
		</div>
	</div>
	<!-- Wrapper End -->
	<!--   -->
	<!--	Js Link
============================================================-->
	<script src="js/jquery.min.js"></script>
	<script src="js/tinymce/tinymce.min.js"></script>
	<script src="js/tinymce/init-tinymce.min.js"></script>
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
	<script src="js/custom.js"></script>
</body>

</html>
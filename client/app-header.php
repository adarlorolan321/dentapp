 <?php
 session_start();  
 
 
if( !isset($_SESSION['username']) ) {
    header("Location: ../");
    exit;
}
  
?>
<!DOCTYPE html>
<html>
<head>
	<title>Castillet Dental Clinic</title>

	 <link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
	 <link rel="stylesheet" type="text/css" href="select2/select2.min.css">
	 <link rel="stylesheet" type="text/css" href="css/jquery-ui-timepicker-addon.css">
	 <link rel="stylesheet" type="text/css" href="css/jquery.timepicker.css">
	 <link rel="stylesheet" type="text/css" href="css/jquery.timepicker.min.css">
	 <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" type="text/css" href="plugins/cubeportfolio/css/cubeportfolio.min.css">
  <link href="css/nivo-lightbox.css" rel="stylesheet" />
  <link href="css/nivo-lightbox-theme/default/default.css" rel="stylesheet" type="text/css" />
  <link href="css/owl.carousel.css" rel="stylesheet" media="screen" />
  <link href="css/owl.theme.css" rel="stylesheet" media="screen" />
  <link href="css/animate.css" rel="stylesheet" />
  <link href="css/style.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
	 <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
	 <link href="../css/style.css" rel="stylesheet" media="screen">
	 <link rel="icon" href="../img/tooth1.png">
	<script src="js/jquery-1.12.4.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/jquery-ui-timepicker-addon.js"></script>
	
	

</head>
<body>
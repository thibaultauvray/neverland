<?php
include ('connection.php')
?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">	<LINK rel="stylesheet" type="text/css" href="style/main.css">
	<link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>
	<script src="js/jquery-2.0.3.min.js"></script>
	<link rel="stylesheet" href="style/portfolio.css">
	<link rel="stylesheet" type="text/css" href="style/jquery.fancybox.css" media="screen" />
 <style type="text/css">
    #container{position:relative;width:990px;margin:auto;}
    #container #map{width:500px;height:500px;margin:auto;}
  </style>
  <!--
	 <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>-->
	 <script type="text/javascript" src="js/gmap.js"></script>
	
	<script src="js/filterable.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript" src="js/jquery.fancybox.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".fancybox").fancybox();
	});
</script>

	<script src="js/filterable.pack.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/gallery.js" type="text/javascript"></script>
	<script>
	$('a[href^="#"]').click(function(){
	var the_id = $(this).attr("href");
	$('html, body').animate({
		scrollTop:$(the_id).offset().top
	}, 'slow');
	return false;
});

	</script>


<title></title>
</head>

<body>
	<header>
			<div class="wrapper">
				<div class="center">
					<img src="img/logo2.png">
<?php
include('menu.php')
?>
				</div>

		</div>
	</header>

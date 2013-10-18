<html>
    <head>
      <meta charset="UTF-8">
      <link rel="stylesheet" href="style/admin.css">
  </head>
  <body>
  	<?php
  	if(empty($_SESSION)){

echo '<a href="/index.php">Tu n\'a rien a faire la !</a>';
header('Location: ../hhh.php');


} 
else{
include('menu.php'); 
}
  	?>

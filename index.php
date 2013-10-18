<?php
$page=''; /*ON INITIE LA VARIABLE PAGE POUR LA PAGE DACCEUIL*/
if(isset($_GET['page'])){
	$page=$_GET['page'];
	

}

elseif (empty($page)){ /*SI LA VARIABLE EST VIDE ALORS AFFICHE ACCEUIL*/
 	$page='acceuil';
 }
else{ /*PREVENTION BUG*/
	$page=null;
}
if ($page=='acceuil'){ /*AFFICHE ACCEUIL SI VIDE*/

	include('template/acceuil.php');
}

elseif(file_exists('pages/'.$page.'.php')){/*SI CEST PAS EGALE A ACCEUIL AFFICHER LA PAGE */
	
	include('pages/'.$page.'.php');


}
else{
	header('HTTP/1.1 404 Not Found');
	include('erreurs/404.php');
	}


?>



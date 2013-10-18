<?php
$page='';
if(isset($_GET['page'])){
	$page=$_GET['page'];
	echo $page;

}

elseif (empty($page)){
 	$page='accueil';
 }
else{
	$page=null;
}
if ($page=='accueil'){

	include('template/acceuil.php');
}
elseif(file_exists('pages/'.$page.'.php')){
	include('pages/'.$page.'.php');


}

else{
	header('HTTP/1.1 404 Not Found');
	include('erreurs/404.php');
	}
?>



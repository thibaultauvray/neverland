<?php
include('connection.php');
session_start(); 
include('template/header.php')
?>


	<h1>Modification du contenu </h1>
<?php
	$reponse = $bdd->query('SELECT titre, texte, urlimg FROM article WHERE CATEGORIEARTICLE_idCATEGORIEARTICLE=1');            
	
	while ($donnees = $reponse->fetch())
{
	echo '<form>';
	echo '<table>';
}

	?>
</body>

</html>	

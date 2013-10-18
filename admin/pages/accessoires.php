<?php
include('connection.php');
session_start(); 
include('template/header.php');
$id=$_GET['id'];

?>


	<h1>Modification du contenu </h1>
<?php
	$reponse = $bdd->query('SELECT accessoires.id, img, imgthumb, titre, nom FROM accessoires, categorie WHERE accessoires.CATEGORIE_idCATEGORIE = categorie.id');            
	
	while ($donnees = $reponse->fetch())
{
	echo '<div class="blockacc">';
	echo '<FORM METHOD=POST action="?id='.$donnees['id'].'">';
	echo '<img src="../'.$donnees['imgthumb'].'" />';
	echo '<p>';
	echo $donnees['titre'];
	echo '</p>';
	echo '<INPUT TYPE="submit" NAME="'.$donnees['id'].'" VALUE=" Envoyer ">';
	echo '</div>';
	echo '</form>';
}

	?>
</body>

</html>	

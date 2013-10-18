<?php
include('connection.php');
session_start(); 
include('template/header.php');


	if( filter_has_var( INPUT_POST, 'envoyer' ) ) // le formulaire a été soumis avec le bouton [Envoyer]  
    		{
   				$content_dir = '../img/acc/'; // dossier où sera déplacé le fichier
   				$content_dirthumb = '../img/acc/thumb/';
				$file1 = $_FILES['ufile']['name'][0];
				$file2 = $_FILES['ufile']['name'][1];

    			if(empty($file2) || empty($file1)){
					echo 'erreur';	
    			}
    			else{
    				$tmp_file = $_FILES['ufile']['tmp_name'][0];
    				$tmp_file2 = $_FILES['ufile']['tmp_name'][1];

   				 if( !is_uploaded_file($tmp_file) || !is_uploaded_file($tmp_file2) )
   						 {
     					   exit("Les fichier sont introuvable");
   						 }
    				$type_file = $_FILES['ufile']['type'][0];
    				$type_file2 = $_FILES['ufile']['type'][1];
    				if( !strstr($type_file, 'jpg') && !strstr($type_file, 'jpeg') && !strstr($type_file, 'bmp') && !strstr($type_file, 'gif') )
    					{
       						 exit("Le fichier n'est pas une image");

    					}
    				if( !strstr($type_file2, 'jpg') && !strstr($type_file2, 'jpeg') && !strstr($type_file2, 'bmp') && !strstr($type_file2, 'gif')) 
    					{
    						exit("Le fichier n'est pas une image");

    					}
    				$name_file = $_FILES['ufile']['name'][0];
    				$name_file2 = $_FILES['ufile']['name'][1];
    				if( preg_match('#[\x00-\x1F\x7F-\x9F/\\\\]#', $name_file) )
					{
    					exit("Nom de fichier non valide");
					}
					if( preg_match('#[\x00-\x1F\x7F-\x9F/\\\\]#', $name_file2) )
					{
    					exit("Nom de fichier non valide");
					}
					if( !move_uploaded_file($tmp_file, $content_dirthumb . $name_file) )
    						{
        						exit("Impossible de copier le fichier dans $content_dir");
    						}
    				if( !move_uploaded_file($tmp_file2, $content_dir . $name_file2) )
    						{
        						exit("Impossible de copier le fichier dans $content_dir");
    						}
    $dirbdd = 'img/acc/' . $name_file; // dossier où sera déplacé le fichier
    $dirbddthumb = 'img/acc/thumb/' . $name_file2; // dossier où sera déplacé le fichier


    echo "Le fichier a bien été uploadé";
    $catego =  $_POST['categorie'];
    $titre = $_POST['titre'];
    $req = $bdd->prepare('INSERT INTO accessoires(img, imgthumb, titre, CATEGORIE_idCATEGORIE) VALUES(:img, :imgthumb, :titre, :categorie)');
$req->execute(array(
    'img' => $dirbdd,
    'imgthumb' => $dirbddthumb,
    'titre' => $titre,
    'categorie' => $catego
   

    ));

    			}

			}
	
	 $categorie = $bdd->query('SELECT * FROM categorie ORDER BY id ASC');


	 echo '<form method="POST" action="'.$_SERVER['REQUEST_URI'].'" enctype="multipart/form-data" class="formupload">

     <table>
     <input type="hidden" name="MAX_FILE_SIZE" value="99999999999">
	<tr><td>Thumbmail :</td><td> <input name="ufile[]" type="file" id="ufile[]" size="50" /></td></tr>
    <tr><td>Image</td><td> <input name="ufile[]" type="file" id="ufile[]" size="50" /></td></tr>
     <tr><td><label for="titre">Titre</label></td><td><input type="text" name="titre" id="titre" value="Votre titre ici" /></td></tr>
	<tr><td><label for="categorie"></td><td></tr><tr>';
    echo 'Catagorie :';
    while($cat = $categorie->fetch()){
        echo '<span class="radio">';
        
 echo '<INPUT type= "radio" name="categorie" value="'.$cat['id'].'" ><br> '.$cat['nom'].'';
        
        echo '</span>';
    }

echo'<tr><td>
     <input type="submit" name="envoyer" value="Envoyer le fichier">
     </td></tr>
     </table>
</form>';





 
?>



</body>

</html>	

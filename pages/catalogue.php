<?php
include('template/header.php');
?>

		<div class="wrapper">

				<?php 
        /*INIALISATION DES VARIABLES POUR PREMIERE UTILISATION*/
        $nom = '';
        $prenom = ''; 
        $naissance ='';
        $adresse = '';
        $code = '';
        $ville = '';
        $tel ='';
        $from ='';
        $refrom ='';

    

    $req = false; // drapeau qui aiguille l'affichage du formulaire OU du récapitulatif  
    $errors = array(); // tableau des erreurs de saisie  
      
    if( filter_has_var( INPUT_POST, 'send' ) ) // le formulaire a été soumis avec le bouton [Envoyer]  
    {  
      /*RECUERATION DES VARIABLES DU FORMULAIRE*/
      $nom = $_POST['nom'];
      $prenom = $_POST['prenom'];  
      $naissance =$_POST['naissance'];
      $adresse = $_POST['adresse'];
      $code = $_POST['code'];
      $ville = $_POST['ville'];
      $tel = $_POST['tel'];
      $refrom = filter_input( INPUT_POST, 'refrom', FILTER_VALIDATE_EMAIL );  
      $from = filter_input( INPUT_POST, 'from', FILTER_VALIDATE_EMAIL );  
      if(empty($_POST['news'])){
          $new = 0; //s'il refuse enwsletter
      }
      else {
        $new = 1; //s'il accepte
      }

        if( $from === NULL) // si le courriel fourni est vide OU égale à la valeur par défaut  
        {  
            $errors[] = 'Vous devez renseigner votre adresse de courrier électronique.';  
        }  
        elseif( $from === false ) // si le courriel fourni n'est pas valide  
        {  
            $errors[] = 'L\'adresse de courrier électronique n\'est pas valide.';  
            $from = filter_input( INPUT_POST, 'from', FILTER_SANITIZE_EMAIL );  
        }  
          if($refrom != $from){

            $errors[] = 'L\'adresse de courrier électronique n\'est pas identique.';  

          }
/*verif nom*/

          

        if(empty($nom)){
          
          $errors[] = 'Vous devez renseigner votre nom.';
        } 
/*verif prenom*/

        if(empty($prenom)){
          $errors[] = 'Vous devez renseigner votre prénom.';
        } 
/*VERIF NAISSANCE ET SI LE FORMAT EST BON*/


          if(!preg_match( '`^\d{1,2}/\d{1,2}/\d{4}$`' , $naissance )){ /*Si la date ets different du format JJ/MM/AAAA*/
            
            $errors[] = 'Veuillez rentrer une date de naissance valide.';
          }
/*VERIF ADRESSE*/
          if(empty($adresse)){
             $errors[] = 'Veuillez remplir une adresse.';

          }
          /*VERIFICATION CODE POSTAL*/
          if (empty($code)) /*Si le code postal est vide */
          {
            $errors[] = 'Veuillez remplir un code postal.';

          }
          elseif(!preg_match('#^[0-9]{5}$#',$code)){/*Si le code postal ne comporte pas 5 chiffre*/
              $errors[] = 'Veuillez remplir un code postal valide a 5 chiffres.';
          }

        if(empty($ville)){
              $errors[] = 'Veuillez saisir une ville.';
        }
        if(empty($tel)){
              $errors[] = 'Veuillez saisir un numero de telephone.';
        }
        elseif(!preg_match('#^0[1-68]([-. ]?[0-9]{2}){4}$#', $tel)){
              $errors[] = 'Veuillez saisir un numero de telephone.';

        }
        if( count( $errors ) === 0 ) // si il n'y a pas d'erreurs  
        {    
         $req = $bdd->prepare('INSERT INTO client(nom, prenom, mail, adresse, code_postal, ville, datenaissance, tel, newsletter) VALUES(:nom, :prenom, :mail, :adresse, :code_postal, :ville, :datenaissance, :tel, :newsletter)');
$req->execute(array(
    'nom' => $nom,
    'prenom' => $prenom,
    'mail' => $from,
    'adresse' => $adresse,
    'ville' => $ville,
    'code_postal' => $code,
    'datenaissance' => $naissance,
    'tel' => $tel,
    'newsletter' => $new
    ));

        }  
    }  

?>  

        
<?php  
    if( $req != false ) // si le message a bien été envoyé, on affiche le récapitulatif  
    {  
?>  
<img src="img/catalogue.jpg" alt="" class="imgcata">
<div class="succes">

        <p id="success">Votre demande de catalogue a bien été enregistré.</p>  
  </div>
<?php  
    }  
    else // le formulaire est affiché pour la première fois ou le formulaire a été soumis mais contenait des erreurs  
    {  
        if( count( $errors ) !== 0 )  
        {  
            echo( "\t\t<ul>\n" );  
            foreach( $errors as $error )  
            {  
                echo( "\t\t\t<li>$error</li>\n" );  
            }  
            echo( "\t\t</ul>\n" );  


        }  
        else  
        {  
        }  
?>  
<img src="img/catalogue.jpg" alt="" class="imgcata">
<div class="formu">
<h1 style="text-align:center">Recevoir le catalogue Nerverland</h1>
<p id="welcome"><em>Tous les champs sont obligatoires</em></p>
        <form id='contact' class="catalogue" method="post" action="<?php echo( $_SERVER['REQUEST_URI'] ); ?>">  
            <table>
            <tr>
            	<td><label for="nom">Nom</label> </td>
            	<td><label for="prenom">Prenom</label></td> 
            </tr>
            <tr>
                <td><input type="text" name="nom" id="nom" value="<?php echo $nom ?>" /> </td>
                <td><input type="text" name="prenom" id="prenom" value="<?php echo $prenom ?>" /></td>
			</tr>
			<tr>
				<td><label for="naissance">Date de Naissance</label></td>
			</tr>
			<tr>
				<td><input type="text" name="naissance" id="naissance" value="JJ/MM/AAAA" /></td>
			</tr>
			<tr>
				<td><label for="from">Adresse Mail</label></td>
				<td><label for="refrom">Confirmez votre adresse mail</label></td>
			</tr>
			<tr>
				<td><input type="text" name="from" id="from" value="<?php echo $from ?>"/></td>
				<td><input type="text" name="refrom" id="refrom" value="<?php echo $refrom ?>"/></td>
			</tr>
           <tr>
           	<tr>
           		<td><label for="adresse" >Adresse</label></td>
           	</tr>
           	<tr>
           		<td colspan="2"><input type="text" name="adresse" id="adresse" style="width: 500px;" value="<?php echo $adresse ?>"></td>
           	</tr>
           	<tr>
           		<td><label for="code">Code Postal</label></td>
           		<td><label for="ville">Ville</label></td>
           	</tr>
           	<tr>
           		<td><input type="text" name="code" id="code" value="<?php echo $code ?>"/></td>
           		<td><input type="text" name="ville" id="ville" value="<?php echo $ville ?>"></td>
           	</tr>
           	<tr>
           		<td><label for="tel">Telephone</label></td>
           	</tr>

           	<tr>
           		<td><input type="text" name="tel" id="tel" value="<?php echo $tel ?>"></td>
              <td></td>
           	</tr>
            <tr><td><input type="checkbox" name="news"  style="display: inline-block; position: relative; top: 26px; left: -114px;"><p class="offre" >Je souhaite recevoir par e-mail des offres et informations
de Scott & Hugues</p></td>
        <td><input type="submit" name="send" value="Envoyer" class="envoie"/> </td>
</tr>

             
           
                </tr>
            </table>
                 
            </p>  
        </form> 
        </div> 
<?php  
    }  
?>  

	
		</div>
<?php
include('template/footer.php')
?>

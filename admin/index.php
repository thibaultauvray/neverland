<?php
include('connection.php');
session_start(); 
?>

<!DOCTYPE html>
<html>
    <head>
      <meta charset="UTF-8">
      <link rel="stylesheet" href="style/admin.css">
       <?php
      
     
 $errors ='';
       if( filter_has_var( INPUT_POST, 'send' ) ){
              $errors ='';
               $pass_hache = sha1($_POST['mdp']);
            $req = $bdd->prepare('SELECT id FROM admin WHERE user = ? AND mdp = ?');
            
$req->execute(array($_POST['user'], $pass_hache));
            $resultat=($req->fetch());
if (!$resultat)
{
    $errors = 'Mauvais identifiant ou mot de passe !';
}
else
{
  $_SESSION['login'] = $_POST['user']; 

}

           
      }
       ?>
    </head>
 
    <body>
      <?php
      if(empty($_SESSION)){
      ?>
      <div class="formulaire">
        <img src="img/logo.png" alt="">
        <form id='connexion' class="connec" method="post" action="<?php echo( $_SERVER['REQUEST_URI'] ); ?>">  
            <p><label for="user">Nom d'utilisateur</label><br><input class="inputtext" type="text" id="user" name="user"></p>
            <p><label for="mdp">Mot de passe</label><br><input class="inputtext" type="text" id="mdp" name="mdp"></p>
            <?php echo "<p style='color:red;font-size:11px;''>".$errors."</p>"; ?>
            <input type="submit" class="inputenvoie" id="send" name="send">

        </form>
        </div>
        <?php
      }
        else{

          include('accueil.php');

        }
        ?>
    </body>
</html>

</div>
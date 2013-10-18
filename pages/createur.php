<?php
include('template/header.php');
?>
		<div class="wrapper">
			<div class="contenu">
				<div class="hugues">
									
						<?php
						$resultats=$bdd->query("SELECT titre, texte, urlimg FROM article WHERE id='5'");
  						while($row = $resultats->fetch()) {    
  							  	echo '<img src="'.$row['urlimg'].'" class="photocrea"/>';

    							echo '<h1>'.$row['titre'].'</h1><p>'.$row['texte'].'</p>';    
							 }    

							 	$resultats->closeCursor();
					?>
					
					
				</div>
				<div class="scott">
					
					<?php
						$resultats=$bdd->query("SELECT titre, texte, urlimg FROM article WHERE id='6'");
  						while($row = $resultats->fetch()) {    
  								echo '<img src="'.$row['urlimg'].'" class="photocrea"/>';
    							 echo '<h1>'.$row['titre'].'</h1><p>'.$row['texte'].'</p>';    
							 }    
							 $resultats->closeCursor();
					?>
				</div>
			</div>	
		</div>
<?php
include('template/footer.php')
?>

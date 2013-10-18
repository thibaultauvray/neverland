<?php
include('template/header.php');
?>
		<div class="wrapper">
			<div class="contenu">
				<div class="histo">
					<?php
						$resultats=$bdd->query("SELECT titre, texte, urlimg FROM article WHERE id='3'");
  						while($row = $resultats->fetch()) {    
    							 echo '<h1>'.$row['titre'].'</h1><p>'.$row['texte'].'</p>';
    							 echo '<img src="'.$row['urlimg'].'"/>';
    
							 }    

							 	$resultats->closeCursor();
							 	?>
					
					
				</div>
				<div class="lamarque">
						
						<?php
											$resultats=$bdd->query("SELECT titre, texte, urlimg FROM article WHERE id='4'");
  						while($row = $resultats->fetch()) { 

  						  		echo '<img src="'.$row['urlimg'].'"/>';   
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
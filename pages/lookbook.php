<?php
include('template/header.php');
?>
		<div class="wrapper">
			<div class="photo">
				<div id="thumbs">
               <?php
                  $resultats=$bdd->query("SELECT img, urlthumb, id FROM lookbook");
                  while($row = $resultats->fetch()) {    
                         echo '<a href="'.$row['img'].'" id="img'.$row['id'].'">';
                         echo '<img src="'.$row['urlthumb'].'"/>';
                         echo '</a>';
    
                      }    

               ?>
					
			
   				 </div>
			</div>
		</div>

<?php
include('template/footer.php')
?>
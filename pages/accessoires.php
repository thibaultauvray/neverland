<?php
include('template/header.php');
?>
<!--
		<div class="wrapper">
			<div class="acc">
				<ul id="portfolio-filter">
					<li><a href="#all" title="">Tous</a></li>
					<li><a href="#echarpes" title="" rel="design">Echarpes</a></li>
					<li><a href="#pareos" title="" rel="partner">Pareos</a></li>
					<li><a href="#keffieh" title="" rel="design">Keffieh</a></li>
					<li><a href="#lunettes" title="" rel="partner">Lunettes</a></li>		
				</ul>
				<ul id="portfolio-list">
						<li style="display: block;" class="echarpes">
							<a href="" title=""><img src="img/acc/JPEG/Chèche Argile.png" alt=""></a>
				<p>
					Saranac
				</p>
			</li>

			<li style="display: block;" class="pareos">
							<a href="" title=""><img src="portfolio_files/SaranacThumb.gif" alt=""></a>
				<p>
					Saranac
				</p>
			</li>

			</div>	
		</div>-->
		<div class="wrapper" >
			<div class="acc">
		<ul id="portfolio-filter">
			<li><a href="#all" title="">Tous</a></li>
			<?php
						$resultats=$bdd->query("SELECT nom FROM categorie");
  						while($row = $resultats->fetch()) {    
  							  	echo '<li><a href="#'.$row['nom'].'" title="" rel="'.$row['nom'].'">'.$row['nom'].'</a></li>';

    
							 }    

							 	$resultats->closeCursor();
					?>
					
				
		</ul>
		
		<ul id="portfolio-list">
			<?php
			$resultats=$bdd->query("SELECT img, imgthumb, titre, nom FROM accessoires, categorie WHERE accessoires.CATEGORIE_idCATEGORIE = categorie.id");
  			while($row = $resultats->fetch()) {  
  			  echo '<li style="display: block;" class="'.$row['nom'].'">';
  			  echo '<a class="fancybox" rel="group" href="'.$row['img'].'" title="Blabla">';
			  echo '<img src="'.$row['imgthumb'].'" alt=""></a>';
			  echo '<p>'.$row['titre'].'</p>';
			  echo '</li>';
			}
?>
		

			
		</ul>
		<ul><li style="overflow: hidden; clear: both; height: 0px; position: relative; float: none; display: block;" class="Echarpes "></li></ul>
	</div>
</div>
<?php
include('template/footer.php')
?>

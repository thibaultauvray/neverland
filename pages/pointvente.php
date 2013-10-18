<?php
include('template/header.php');
?>
		<div class="wrapper">
		<div id="container">
			<div class="formi">
				<form id='loca' class="catalogue" method="post" action="<?php echo( $_SERVER['REQUEST_URI'] ); ?>">  
						<input type="text" name="ville" id="ville">
						<input type="submit" id="localisation" name="localisation"/>
					
				</form>
			</div>
			<div id="map">
           
        	</div>
</div>
		</div>

<?php
include('template/footer.php')
?>
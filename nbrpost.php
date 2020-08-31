<?php


//admin afficher les nombres des annonces
$sql  =" SELECT * FROM postvehicule";
$result = query($sql);
$nbrRow = mysqli_num_rows($result);

?>
<div class="nbr bg-white rounded-pill text-center p-4 h3" >
    <?php echo $nbrRow; ?>
</div>
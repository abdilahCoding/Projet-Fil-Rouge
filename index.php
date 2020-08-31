<?php

include('includes/header.php');
$sql = " SELECT * FROM ads WHERE active=1";
$result = query($sql);
$row = mysqli_fetch_array($result);

?>
     <!-- start body  -->
     <div class="par">
        <p>Achat et vente très facile avec Wasit</p>
      </div>
     <div class="container mt-5">
       
     <div>

       <form  action="filter.php" method="post" style="background-color: white;padding: 40px;border-radius: 30px;margin-bottom:40px ">
  <div class="form-row">
    <div class="form-group col-md-4">
      <input type="text" name="titre"  placeholder="Rechercher" class="form-control" style="border-radius: 30px">
    </div>
    <div class="form-group col-md-4">
      <input type="text" name="ville"  placeholder="Ville" class="form-control" style="border-radius: 30px" >
    </div>

    <div class="form-group col-md-4">
    
      <select id="inputState" name="category" class="form-control" style="border-radius: 30px">
         <option value="moto" selected>moto</option>
          <option value="voitur">voiture</option>
      </select>
    </div>
   
   </div>
  <button type="submit" class="btn btn-danger d-block mx-auto " style="border-radius: 30px">Rechecher</button>
  
</form>

</div>  


       

     </div>
     <!-- end filter  -->
     <!-- start ads  -->
     <div class="ads">
<?php 
echo ' <img src="ads/'.$row['image'].'" class="card-img-top" alt="...">'
?>
     </div>
     <!-- end ads  -->
     <!-- start category  -->
     <div class="category align-items-center justify-content-center ">
      <p class="parcat">Choisissez une catégorie</p>
        <div class="row align-items-center justify-content-center vb">
          <div class="col-md-6 col-12 align-items-center justify-content-center">
            <div class="card" style="width: 100%;">
              <img src="img/car.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">Voiture</h5>
                <a href="search.php?cat=voitur" class="btn btn-primary">plus</a>
              </div>
            </div>
          </div>
          <!-- <div class="col-md-2 col-12 section"></div> -->
          <div class="col-md-6  col-12 align-items-center justify-content-center">
            <div class="card" style="width: 100%;">
              <img src="img/moto.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">Moto</h5>
                <a href="search.php?cat=moto" class="btn btn-primary">plus</a>
              </div>
            </div>
          </div>
        </div>
      </div>
     <!-- end gategoru  -->
     <!-- start populair brand  -->
     <div class="par">
      <p>Recherches populaires</p>
    </div>
   <div class="search container">
     
     <div class="filter row">
      <button><a href="#">KAWASAKI Z 750</a></button>
      <button><a href="#">YAMAHA R1</a></button>
      <button><a href="#">GSX-R 1000</a></button>
      <button><a href="#">SANYA FICE R50</a></button>
      <button><a href="#">Volkswagen Tiguan</a></button>
      <button><a href="#">DACIA</a></button>
      <button><a href="#">renault</a></button>
      <button><a href="#">mercedes</a></button>
      <button><a href="#">toyota</a></button>
     </div>
   </div>
     <!-- end populaire brand  -->
     <!-- end body  -->

 <!-- start footer  -->
     <div class="footer-top">
       <div class="container">
         <div class="row">
           <div class="col-md-3 col-ms-6 col-xs-12 segment-1 res">
             <h3>Wasit / وسيط</h3>
             <p>- Une plateforme de vente et achat automobile (moto /voiture) neuves ou d’occasion.<br>
              - Forum pour change l’expérience, et donnes des conseils .<br>
              - Espace de signale d'une voiture, si le cas de vol.
               .</p>
           </div>

           <div class="col-md-3 col-ms-6 col-xs-12 segment-2 res">
            <h2>Quick Link</h2>
            <ul>
              <li><a href="#">Home</a></li>
              <li><a href="#">Forum</a></li>
              <li><a href="#">vol</a></li>
              <li><a href="#">Deposer une annonce</a></li>
            </ul>
          </div>

          <div class="col-md-3 col-ms-6 col-xs-12 segment-3 res">
            <h2>social media</h2>
            <a href=""><i class="fa fa-facebook"></i></a>
            <a href=""><i class="fa fa-twitter"></i></a>
            <a href=""><i class="fa fa-linkedin"></i></a>
            <a href=""><i class="fa fa-pinterest"></i></a>
          </div>

          <div class="col-md-3 col-ms-6 col-xs-12 segment-4 res">
            <h2>contactez-nous</h2>
            <p>écrire votre email pour participer dans la famille de wasit.</p>
            <form action="" method="post">
              <input type="email" name="" id="">
              <input type="submit" value="subscribe">
            </form>
          </div>

         </div>
       </div>
     </div>
     <!-- end footer  -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>


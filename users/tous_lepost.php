<?php
$titre="Accueil";
session_start();

if(isset($_SESSION['auth'])){
  //var_dump($_SESSION);
}
require('utilitaire/class.post.php');
require('connexion.php');
$pdo=new DB;
$post=new post($pdo);
$user=$post->user();
$type=$pdo->requette('SELECT * FROM type');

$lespostrecent=$pdo->requette('SELECT stype.nom_stype, type.nom_type,user.id, user.nom,user.prenom,user.photo,post.iduser, post.post,post.photo, post.date,post.heur, post.idpost FROM post 
JOIN user ON user.id = post.iduser 
JOIN type ON post.idtype = type.id
JOIN stype ON post.stype = stype.id
  order by idpost desc LIMIT 4');
require('utilitaire/heade.php');

?>

        <div class="mt-5" >
            <hr class="my-4" >
            <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.php">Accueil</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Tous les Posts </li>

                </ol>
            </nav>
            <?php
            //var_dump($lepost);
            ?>
        
        
        </div>
        <style>
            .b-example-divider {
  height: 3rem;
  background-color: rgba(0, 0, 0, .1);
  border: solid rgba(0, 0, 0, .15);
  border-width: 1px 0;
  box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
}

.bi {
  vertical-align: -.125em;
  fill: currentColor;
}

.feature-icon {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  width: 4rem;
  height: 4rem;
  margin-bottom: 1rem;
  font-size: 2rem;
  color: #fff;
  border-radius: .75rem;
}

.icon-link {
  display: inline-flex;
  align-items: center;
}
.icon-link > .bi {
  margin-top: .125rem;
  margin-left: .125rem;
  transition: transform .25s ease-in-out;
  fill: currentColor;
}
.icon-link:hover > .bi {
  transform: translate(.25rem);
}

.icon-square {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  width: 3rem;
  height: 3rem;
  font-size: 1.5rem;
  border-radius: .75rem;
}

.rounded-4 { border-radius: .5rem; }
.rounded-5 { border-radius: 1rem; }

.text-shadow-1 { text-shadow: 0 .125rem .25rem rgba(0, 0, 0, .25); }
.text-shadow-2 { text-shadow: 0 .25rem .5rem rgba(0, 0, 0, .25); }
.text-shadow-3 { text-shadow: 0 .5rem 1.5rem rgba(0, 0, 0, .25); }

.card-cover {
  background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;
}
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

<?php
/*SELECT stype.nom_stype, type.nom_type,user.id, user.nom,user.prenom,user.photo,post.iduser, post.post,post.photo, post.date,post.heur, post.idpost FROM post 
JOIN user ON user.id = post.iduser 
JOIN type ON post.idtype = type.id
JOIN stype ON post.stype = stype.id*/
$web=$pdo->requette('SELECT type.id,stype.id AS id_stype, stype.nom_stype FROM stype
        JOIN type ON type.id = stype.id_type WHERE id_type=1');

$entreprise=$pdo->requette('SELECT type.id,stype.id AS id_stype, stype.nom_stype FROM stype
JOIN type ON type.id = stype.id_type WHERE id_type=2');

$pg=$pdo->requette('SELECT type.id,stype.id AS id_stype, stype.nom_stype FROM stype
JOIN type ON type.id = stype.id_type WHERE id_type=3');

$se=$pdo->requette('SELECT type.id,stype.id AS id_stype, stype.nom_stype FROM stype
JOIN type ON type.id = stype.id_type WHERE id_type=4');

$design=$pdo->requette('SELECT type.id,stype.id AS id_stype, stype.nom_stype FROM stype
JOIN type ON type.id = stype.id_type WHERE id_type=5');

$materiel=$pdo->requette('SELECT type.id,stype.id AS id_stype, stype.nom_stype FROM stype
JOIN type ON type.id = stype.id_type WHERE id_type=6');

$jeux=$pdo->requette('SELECT type.id,stype.id AS id_stype, stype.nom_stype FROM stype
JOIN type ON type.id = stype.id_type WHERE id_type=7');

$science=$pdo->requette('SELECT type.id,stype.id AS id_stype, stype.nom_stype FROM stype
JOIN type ON type.id = stype.id_type WHERE id_type=8');


  
//var_dump($web);

?>

<style>
  .colorc:hover{
    --bs-bg-opacity: 1;
    background-color: rgba(var(--bs-primary-rgb),var(--bs-bg-opacity))!important;
  color: white;
  border-radius: 5px;

  }
</style>
<div class="row" data-masonry='{"percentPosition": true }'>
  <p>Web</p>
  <hr>
  <?php  foreach($web as $w) :?>
  <div class="col-sm-6 col-lg-4 mb-4 ">
    <div class="card text-center  ">
      <div class="card-body colorc">
        <h5 class="card-title"><?=$w["nom_stype"]?></h5>
        <?php 
        for($i=0;$i<10;$i++){
        if($w['id_stype']===$i){
          
          echo('<img src="../css/images/logo/'.$i.'.png" alt="" class="bd-placeholder-img shadow-lg rounded-circle photo photo" width="90" height="90">');
        }
      }
        ?>
        <hr>
        <div class="shadow-lg p-3 bg-body rounded">
        <a href="details.php?id=<?=$w['id']?>&idstype=<?=$w['id_stype']?> " class="stretched-link">Voir la suite</a>

        </div>
      </div>
    </div>
  </div>
  <?php endforeach ?>

</div>



<div class="row" data-masonry='{"percentPosition": true }'>
  <p>Entreprise</p>
  <hr>
  <?php foreach($entreprise as $en) :?>
    <div class="col-sm-6 col-lg-4 mb-4">
    <div class="card text-center  ">
      <div class="card-body colorc">
        <h5 class="card-title"><?=$en["nom_stype"]?></h5>
        <?php 
        for($i=0;$i<10;$i++){
        if($en['id_stype']===$i){
          
          echo('<img src="../css/images/logo/'.$i.'.png" alt="" class="bd-placeholder-img shadow-lg rounded-circle photo" width="90" height="90">');
        }
      }
        ?>
        <hr>
        <div class="shadow-lg p-3 bg-body rounded">
        <a href="details.php?id=<?=$en['id']?>&idstype=<?=$en['id_stype']?> " class="stretched-link">Voir la suite</a>

        </div>
      </div>
    </div>
  </div>
  <?php endforeach ?>

</div>
    


<div class="row" data-masonry='{"percentPosition": true }'>
  <p>Programmation</p>
  <hr>
  <?php foreach($pg as $p) :?>
    <div class="col-sm-6 col-lg-4 mb-4">
    <div class="card text-center  ">
      <div class="card-body colorc">
        <h5 class="card-title"><?=$p["nom_stype"]?></h5>
        <?php 
        for($i=0;$i<30;$i++){
        if($p['id_stype']===$i){
          
          echo('<img src="../css/images/logo/'.$i.'.png" alt="" class="bd-placeholder-img shadow-lg rounded-circle photo" width="90" height="90">');
        }
      }
        ?>
        <hr>
        <div class="shadow-lg p-3 bg-body rounded">
        <a href="details.php?id=<?=$p['id']?>&idstype=<?=$p['id_stype']?> " class="stretched-link">Voir la suite</a>

        </div>
      </div>
    </div>
  </div>
  <?php endforeach ?>

</div>


<div class="row" data-masonry='{"percentPosition": true }'>
  <p>Système d'exploitation</p>
  <hr>
  <?php foreach($se as $sy) :?>
    <div class="col-sm-6 col-lg-4 mb-4">
    <div class="card text-center  ">
      <div class="card-body colorc">
        <h5 class="card-title"><?=$sy["nom_stype"]?></h5>
        <?php 
        for($i=0;$i<30;$i++){
        if($sy['id_stype']===$i){
          
          echo('<img src="../css/images/logo/'.$i.'.png" alt="" class="bd-placeholder-img shadow-lg rounded-circle photo" width="90" height="90">');
        }
      }
        ?>
        <hr>
        <div class="shadow-lg p-3 bg-body rounded">
        <a href="details.php?id=<?=$sy['id']?>&idstype=<?=$sy['id_stype']?> " class="stretched-link">Voir la suite</a>

        </div>
      </div>
    </div>
  </div>
  <?php endforeach ?>

</div>


<div class="row" data-masonry='{"percentPosition": true }'>
  <p>Design</p>
  <hr>
  <?php foreach($design as $d) :?>
    <div class="col-sm-6 col-lg-4 mb-4">
    <div class="card text-center  ">
      <div class="card-body colorc">
        <h5 class="card-title"><?=$d["nom_stype"]?></h5>
        <?php 
        for($i=0;$i<30;$i++){
        if($d['id_stype']===$i){
          
          echo('<img src="../css/images/logo/'.$i.'.png" alt="" class="bd-placeholder-img shadow-lg rounded-circle photo" width="90" height="90">');
        }
      }
        ?>
        <hr>
        <div class="shadow-lg p-3 bg-body rounded">
        <a href="details.php?id=<?=$d['id']?>&idstype=<?=$d['id_stype']?> " class="stretched-link">Voir la suite</a>

        </div>
      </div>
    </div>
  </div>
  <?php endforeach ?>

</div>


<div class="row" data-masonry='{"percentPosition": true }'>
  <p>Materiel et logiciel</p>
  <hr>
  <?php foreach($materiel as $ma) :?>
    <div class="col-sm-6 col-lg-4 mb-4">
    <div class="card text-center  ">
      <div class="card-body colorc">
        <h5 class="card-title"><?=$ma["nom_stype"]?></h5>
        <?php 
        for($i=0;$i<30;$i++){
        if($ma['id_stype']===$i){
          
          echo('<img src="../css/images/logo/'.$i.'.png" alt="" class="bd-placeholder-img shadow-lg rounded-circle photo" width="90" height="90">');
        }
      }
        ?>
        <hr>
        <div class="shadow-lg p-3 bg-body rounded">
        <a href="details.php?id=<?=$ma['id']?>&idstype=<?=$ma['id_stype']?> " class="stretched-link">Voir la suite</a>

        </div>
      </div>
    </div>
  </div>
  <?php endforeach ?>

</div>



<div class="row" data-masonry='{"percentPosition": true }'>
  <p>Jeux Vidéos</p>
  <hr>
  <?php foreach($jeux as $j) :?>
    <div class="col-sm-6 col-lg-4 mb-4">
    <div class="card text-center  ">
      <div class="card-body colorc">
        <h5 class="card-title"><?=$j["nom_stype"]?></h5>
        <?php 
        for($i=0;$i<30;$i++){
        if($j['id_stype']===$i){
          
          echo('<img src="../css/images/logo/'.$i.'.png" alt="" class="bd-placeholder-img shadow-lg rounded-circle photo" width="90" height="90">');
        }
      }
        ?>
        <hr>
        <div class="shadow-lg p-3 bg-body rounded">
        <a href="details.php?id=<?=$j['id']?>&idstype=<?=$j['id_stype']?> " class="stretched-link">Voir la suite</a>

        </div>
      </div>
    </div>
  </div>
  <?php endforeach ?>

</div>



<div class="row" data-masonry='{"percentPosition": true }'>
  <p>Science</p>
  <hr>
  <?php foreach($science as $sc) :?>
    <div class="col-sm-6 col-lg-4 mb-4">
    <div class="card text-center  ">
      <div class="card-body colorc">
        <h5 class="card-title"><?=$sc["nom_stype"]?></h5>
        <?php 
        for($i=20;$i<39;$i++){
        if($sc['id_stype']===$i){
          
          echo('<img src="../css/images/logo/'.$i.'.png" alt="" class="bd-placeholder-img shadow-lg rounded-circle photo" width="90" height="90">');
        }
      }
        ?>
        <hr>
        <div class="shadow-lg p-3 bg-body rounded">
        <a href="details.php?id=<?=$sc['id']?>&idstype=<?=$sc['id_stype']?> " class="stretched-link">Voir la suite</a>

        </div>
      </div>
    </div>
  </div>
  <?php endforeach ?>

</div>


</main>
<?php
require('utilitaire/foot.php');
?>
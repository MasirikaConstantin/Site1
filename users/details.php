<?php
$titre="Accueil";
session_start();


if(($_GET['id']===null)){
  header('Location: tous_lepost.php');
  
}elseif($_GET['idstype']===null){
  header('Location: tous_lepost.php');

}elseif($_GET['idstype']===null AND $_GET['id']===null){
  header('Location: tous_lepost.php');

}

if(isset($_SESSION['auth'])){
  //var_dump($_SESSION);
}
require('utilitaire/class.post.php');
require('connexion.php');
$pdo=new DB;
$post=new post($pdo);
$user=$post->user();
$type=$pdo->requette('SELECT * FROM type');
$verif=$pdo->req_simple('SELECT * FROM type WHERE id=:id',['id'=>$_GET['id']]);


$verif2=$pdo->requette('SELECT  stype.nom_stype FROM stype
        JOIN type ON type.id = stype.id_type WHERE type.id=:id AND stype.id_type=:id2',['id'=>$_GET['id'],'id2'=>$_GET['idstype']]);
if($verif===false){
  header('Location: tous_lepost.php');

}elseif($verif2===false){
  header('Location: tous_lepost.php');
  
}

$lespostrecent=$pdo->requette('SELECT stype.nom_stype, type.nom_type,user.id, user.nom,user.prenom,user.photo,post.iduser, post.post,post.photo, post.date,post.heur, post.idpost FROM post 
JOIN user ON user.id = post.iduser 
JOIN type ON post.idtype = type.id
JOIN stype ON post.stype = stype.id
WHERE idtype=:id AND stype=:stype
  order by idpost desc LIMIT 40',['id'=>$_GET['id'],'stype'=>$_GET['idstype']]);

$lepost=$post->typeselect($_GET['id']);
$lestype=$post->soustypeselect($_GET['idstype']);



require('utilitaire/heade.php');
?>


        <div class="mt-5" >
        <a href="javascript:history.back()">Retour aux menus</a>
            <hr class="my-4" >
            <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.php">Accueil</a></li>
                    <li class="breadcrumb-item active" aria-current="page"><a  style="text-decoration: none;" class="text-muted" href="tous_lepost.php"><?= $lepost['nom_type'] ?></a> </li>
                    <li class="breadcrumb-item active" aria-current="page"><a  style="text-decoration: none;" class="text-muted" href="tous_lepost.php"><?= $lestype['nom_stype'] ?></a> </li>

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
 
    <div class="row mb-2">
    

    

    <?php foreach ($lespostrecent as $l):?>

    <div class="col-md-6">
      <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
        <div class="col p-4 d-flex flex-column position-static chute2">
          <strong class="d-inline-block mb-2 text-primary"><?=$l['nom_type'] ?> </strong>
          <h3 class="mb-0"><?=$l['nom_stype'] ?>  </h3>
          <div class="mb-1 text-muted"><?=$l['date'] ?> </div>
          <div class="chute2s ">
          <p class="card-text mb-auto  "><?=$l['post'] ?> </p>
          </div>
          <a href="vue_post.php?id=<?=$l['idpost'] ?> " class="stretched-link">Visionner</a>
        </div>
        <div class="col-auto d-none d-lg-block">
          <img class="bd-placeholder-img" width="200" height="250" src="<?php if($l['photo']===null):?>images/grace.png<?php else :?> images/<?=$l['photo'] ?> <?php endif?>" />

        </div>
      </div>
    </div>
    <?php endforeach?>
    <small class="d-block text-end mt-3">
      <a href="#">All updates</a>
    </small>
   
    
  </div>

    </div>
    
</main>
<?php
require('utilitaire/foot.php');
?>
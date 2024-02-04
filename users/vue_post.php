<?php

session_start();

if(($_GET['id']===null)){
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
if($user){
    $iduser=$user['id'];


}
$lepost=$post->postselect($_GET['id']);
$postid=$lepost['idpost'];
$titre=$lepost['titre'];
$date=date('Y-m-d');
$heure=date('H:m:s');
if(isset($_POST['comm'])){
    $comment=$_POST['comm'];
    if($_POST['comm']=!null){
        $post->Commentaire($user['id'],$postid,$comment,$date,$heure);
        echo ("<script>
        alert('Commentaire réussis')
    </script>");
    }
}

$lescommetaires=$post->commeselect($postid);
require('utilitaire/heade.php');
$com=$post->VerifComm($iduser);
dump($lescommetaires);
$count=0;
?>


<script src="tiny/tinymce.min.js" referrerpolicy="origin"></script>




    
<style>
    *{
        font-family: 'Ubuntu';
    }
</style>

<style>
    .chute{
        width: 70vw;
        height: 300px;
        overflow: auto;

        scrollbar-width: thin;
        
    }
    @media screen and (orientation: landscape){
        .chute{
            background-color: s;
        }
    }
    .chute{
        font-size: 2,5rem;
    }

    @media screen and (max-width: 600px){
        .chute{
            font-size: .9rem;
        }
    }


    @media screen and (orientation: landscape){
        .chutes{
            background-color: s;
        }
    }
    .chutes{
        font-size: 2,5rem;
    }

    @media screen and (max-width: 600px){
        .chutes{
            font-size: .9rem;
        }
    }   
</style>
    
<style>
  .are{
    width: 80%;
    height: 300px;
    border: 2px solid #ccc;
    padding: 10px;
    font-size: 13px;
    resize: none;
  }
</style>




    <div class="container mt-5">
        <a href="javascript:history.back()">Retour aux menus</a>

    <div class="col-sm-12 col-lg-12 mb-4 shadow-lg p-3 mb-5 bg-body rounded">
        <div class="card p-2">
            <figure class="figure mt-2 ">
                <img src="<?php if($lepost['photo']===null):?>images/grace2.ico<?php else :?>images/<?= $lepost["photo"]?><?php endif?>" width="250" height="300" class="figure-img img-fluid rounded" alt="...">
                <figcaption class="figure-caption text-">Enregistré le : <?= $lepost['date'] ?> à <?= $lepost['heur'] ?>   </figcaption>
            </figure>
            <div class="card-body"> 
                <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
    
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.php">Accueil</a></li>
                        <li class="breadcrumb-item " aria-current="page"> <?= $lepost['nom_type'] ?> </li>
                        <li class="breadcrumb-item active" aria-current="page"> <?= $lepost['nom_stype'] ?> </li>

                    </ol>
                </nav>
                <div   class="chute" >
                    <h5 class="card-title text-muted"><?= $lepost['titre'] ?></h5>
                    <p class="card-text"><?= $lepost['post'] ?></p>
                </div>
            </div>
        </div>



        <div class="my-3 p-3 bg-body rounded shadow-sm">
        <div class="mb-3"  >
            
            

  <?php if(!isset($_SESSION['auth'])): ?>
            <div class="alert alert-warning mt-5 text-center">
                Veillez vous connecter <a href="login.php">ici</a>
                ou creer un compte <a href="creer/creer.php">ici</a> avant <strong>de commenter ou de Creer </strong> un post 
            </div>
        <?php else : ?>
            </div>
            <?php endif ?>
            <div class="d-grid gap-2 col-4 mx-auto">
            <button type="button" class="btn btn-link" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                 Ajouter un Commentaire
            </button>
            
            </div>
            
    <h6 class="border-bottom pb-2 mb-0">Commentaires</h6>
    <div class="row g-4 py-5 row-cols-1 row-cols-lg-1">
    
<style>
  .are{
    width: 80%;
    height: 300px;
    border: 2px solid #ccc;
    padding: 10px;
    font-size: 13px;
    resize: none;
  }
</style>
    <?php  foreach($lescommetaires as $c) {
        $count++
        ?>
      <div class="col d-flex align-items-start">
        <div class="icon-square bg-light text-dark flex-shrink-0 me-5">
            <div class="bg-body" >
        <img src="images/imagess_2024-01-13_21-06-32.jpg" alt="" class="bd-placeholder-img shadow-lg rounded-circle photo" width="90" height="90">
        </div>
        </div>
        <div class="bg-white text-dark p-4 chutes" style="border-radius: 12px;" >
          <h2>Titre</h2>
          
            <?= htmlentities($c['commentaire'])?>
          
        </div>
        <form action="" method="post">
        <hr class="my-4">
        <?php if($user){if($c['iduser'] === $iduser ){ ?>
            <a href="modif.php?id=<?= $c['idcomm']?>" type="budtton" class="btn btn-link" data-bs-toggle="smodal" data-bs-target="#staticBackdrop<?= $count ?>">
                Modifier
        </a>
        <?php }} ?>


      </div>




<!-- Modal -->
<div class="modal fade  " id="staticBackdrop<?= $count ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel<?= $count ?>" aria-hidden="true">
<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <?php
        echo($c['idcomm']);
      
      if(isset($_POST['recomm'])){
        $post->Modifcomm($_POST['recomm'],$c['idcomm']);
      }?>
        <form action="" method="post">
        <h5 class="modal-title" id="staticBackdropLabel">Commentaire</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      
      <div class="modal-body">

      
        <textarea class="form-control are" cols="10" name="recomm"  id="are" rows="3">
            <?= $c['commentaire']?>
              
        </textarea>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Annuler</button>
        <button type="submit" class="btn btn-primary">Commenter</button>
      </div>
      </form>

    </div>
  </div>
</div>

<!-- END Modal -->

</form>
        <?php 
        
        }
         ?>
    
  </div>

    </div>
</div>



<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade  " id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <form action="" method="post">
        <h5 class="modal-title" id="staticBackdropLabel">Commentaire</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">

      
        <textarea class="form-control" cols="10" name="comm"  id="exampleFormControlTextarea1" rows="3"></textarea>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Annuler</button>
        <button type="submit" class="btn btn-primary">Commenter</button>
      </div>
      </form>
    </div>
  </div>
</div>
<?= $c['idcomm']?>
        
<style>
  #are{
    width: 80%;
    height: 300px;
    border: 2px solid #ccc;
    padding: 10px;
    font-size: 13px;
    resize: none;
  }
</style>
<script>
  tinymce.init({
    selector: 'textareas',
    plugins: 'anchor autolink charmap codesample emoticons image link lists media searchreplace table visualblocks wordcount',
    toolbar: 'undo redo | blocks fontfamily fontsize | bold italic underline strikethrough | align lineheight | numlist bullist indent outdent ',
  });
</script>
</main>
<?php
require('utilitaire/foot.php');
?>
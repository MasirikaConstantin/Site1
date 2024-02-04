<?php
require('utilitaire/header.php');
?>

<main class="flex-shrink-0 mt-5 ">
    
    <div class="container mt-5">

<!-- Modal -->
<div class="modal fade  " id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false"  tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
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

      
        <textarea class="form-control" cols="10" name="recomm"  id="exampleFormControlTextarea1" rows="3">
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

<div class="modald" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <p>Modal body text goes here.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

<!-- END Modal -->

<script src="jquery.min.js"></script>

<?php
require('utilitaire/foot.php');
?>
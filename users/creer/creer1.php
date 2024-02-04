
<?php
session_start();
  if($_SESSION['creer1']===null){
    header('Location: creer.php');
  }

  require('../utilitaire/class.post.php');
require('../connexion.php');
$pdo=new DB;
$post=new post($pdo);
  if(isset($_POST['m2'])){
    $m1=$_POST['m1'];
    $m2=$_POST['m2'];
    if($m1===$m2){
      array_push($_SESSION['creer1'],'mdp',$_POST['m2']);
        $nom=$_SESSION['creer1']['nom'];
        $prenom=$_SESSION['creer1']['prenom'];
        $sexe=$_SESSION['creer1']['sexe'];
        $daten=$_SESSION['creer1']['daten'];
        $email=$_SESSION['creer1']['email'];
        $contact=$_SESSION['creer1']['contact'];
        $photo=$_SESSION['creer1']['photo'];
        $mdp=$_POST['m2'];

        
        
         $post->CreerUtili($nom,$prenom,$sexe,$daten, $email,$contact, $photo,$mdp);
          $dom=array(
            'expires'=>time()+60,
            'path'=>'/'
           );
           setcookie('succes',$email,$dom);
  
            header('Location: ../login.php');
         

    }
  }
  
require('head.php')
?>
<script src="jquery.min.js"></script>
    <link rel="stylesheet" href="all.min.css">


<div class="col-md-12 mb-3">
              <label for="inputEmail4" class="form-label">Adresse mail</label>
              <input type="text" class="form-control" value="<?=$_SESSION['creer1']['email']?>" id="inputEmail4" disabled>
              
            </div>


            <form method="post" >
        <div class="form-group col-md-12 mb-3">
          <div class="input-group flex-nowrap">
            <span class="input-group-text" id="toggle-password1"><i class="fa fa-eye-slash" aria-hidden="true"></i></span>
              <input type="password" class="form-control" name="m1" id="password1" placeholder="Mot de passe">
          </div>
          <small id="passwordHelp1" class="form-text text-muted" style="color:red" ></small>
          </div>
          <div class="form-group col-md-12 mb-3">
            <input type="password" class="form-control "  name="m2" id="password2" placeholder="Confirmer le mot de passe">
            <small id="passwordHelp2" class="form-text text-muted"></small>
          </div>
          <button type="submit" class="btn btn-primary" id="submit" disabled>Enregistrer</button>
        </div>
      </form>

          
            
<script>
  document.getElementById('password2').addEventListener('keydown',function (foo) {
    if(foo.keyCode==86)
      {
        //alert('Ereur');
        foo.preventDefault();
      }
    
  })
</script>
<script>
$(document).ready(function() {
    function checkConditions() {
        var password1 = $('#password1').val();
        var password2 = $('#password2').val();
        var regex = /^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
        return regex.test(password1) && password1 === password2;
    }
    $('#password1, #password2').on('input', function() {
        var password = $(this).val();
        var regex = /^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
        if (!regex.test($('#password1').val())) {
            $('#passwordHelp1').text('Le mot de passe doit contenir une lettre majuscule, un chiffre et un caractère spécial.');
        } else {
            $('#passwordHelp1').text('');
        }
        if ($('#password2').val() !== $('#password1').val()) {
            $('#passwordHelp2').text('Les mots de passe ne correspondent pas.');
        } else {
            $('#passwordHelp2').text('');
        }
        $('#submit').prop('disabled', !checkConditions());
    });
    $('#toggle-password1').click(function() {
        $(this).find('.fa').toggleClass('fa-eye-slash fa-eye');
        var input = $('#password1');
        input.attr('type') === 'password' ? input.attr('type', 'text') : input.attr('type', 'password');
    });
});
</script>
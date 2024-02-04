<?php

session_start();
$erreur= false;
$r=false;
require('../connexion.php');
$pdo=new DB;
$a=false;
if(isset($_POST['nom'])){
  if(!empty($_POST['nom']) AND !empty($_POST['prenom']) AND !empty($_POST['date']) AND !empty($_POST['email']) AND !empty($_POST['genre'])){

    
    $t=$pdo->requette('SELECT email FROM user WHERE email=:email',['email'=>$_POST['email']]);
  
$birthday = new DateTime($_POST['date']);
$today = new DateTime('today');
$age = $birthday->diff($today)->y;
    if($age>15){

      if(empty($t)){
        $_SESSION['creer1']=[
            'nom'=>$_POST['nom'],
            'prenom'=>$_POST['prenom'],
            'sexe'=>$_POST['genre'],
            'daten'=>$_POST['date'],
            'email'=>$_POST['email'],
            'contact'=>null,
            'photo'=>null,
            
            
            
            ];
            header('Location: creer1.php');
        }else{
          $r=true;
          $erreur=true;
        }
      }else{
          $erreur=true;
          $a=true;
        }
  }else{
    $erreur=true;
  }
}
require('head.php')
?>
 
<?php if($erreur):?>
<div class="col-md-12 alert alert-danger ">
  <p class="text-center" >Une erreur est survenu, verifiez si :</p>
    <ul>
      <li>Tous les champs sont remplie</li>
      <li>Si non l'adresse mail est déjà utilisé</li>
      <li>Ou l'age est inferieur à 15</li>
    </ul>
  </div>
<?php endif ?>

            <div class="col-md-6">
              <label for="inputEmail4" class="form-label">Nom</label>
              <input type="text" class="form-control" name="nom" value="<?php if($erreur):?><?=$_POST['nom']?><?php endif?>" id="inputEmail4">
              
            </div>
            <div class="col-md-6" style="margin-bottom: 20px;">
              <label for="inputPassword4" class="form-label" >Prenom</label>
              <input type="text" class="form-control" name="prenom" id="inputPassword4" value="<?php if($erreur):?><?=$_POST['prenom']?><?php endif?>">
              
            </div>
            <div class="col-12" >
            <div class="form-floating mb-3 " >
                    <input type="date" name="date"  class="form-control" value="<?php if($erreur):?><?=$_POST['date']?><?php else:?>2008-01-01<?php endif?>"  id="floatingInput" >
                    <label for="floatingInput " style="color: black;"> <strong >Date de naissance</strong></label>                                    
                   
                </div>
            </div>
            
            <div class="col-md-12">
              <label for="inputAddress2" class="form-label">Addresse mail </label>
              <input type="mail" class="form-control" name="email" id="inputAddress2" value="<?php if($erreur):?><?=$_POST['email']?><?php endif?>" placeholder="exemple@gmail.com">
           

            </div>
            

            <div class="col-12" >
            <p>Genre</p>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="genre" value="Masculin" checked>
                                    <label class="form-check-label" >Masculin</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="genre"  value="Feminin" >
                                    <label class="form-check-label" >Feminin</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="genre" value="Personaliser">
                                <label class="form-check-label" for="inlineRadio3">Personaliser</label>
                            </div>

                          </div>
                        

            <div class="col-12 mt-2" >
              <button type="submit"  class="w-100 btn btn-lg btn-primary">Créer un compte</a>
            </div>
          </form>

          
        </div>



          



      </div></div></div>




</main>
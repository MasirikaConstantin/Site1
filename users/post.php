<?php
session_start();
if(!isset($_SESSION['auth'])){
    header('Location: index.php');
}
$titre="Créer un Post";
require('utilitaire/class.post.php');
require('connexion.php');
date_default_timezone_set('Europe/Paris');
$seltype=null;
$pdo=new DB;
$post=new post($pdo);
$type=$post->type();
$stype=[];
$erreur=false;
$erreurcat=false;
$erreursouscat=false;
$date=date('Y-m-d');
$heure=date('H:m:s');
if(isset($_POST['type'])){
    $seltype=$_POST['type'];
    $stype=$pdo->requette('SELECT * FROM stype WHERE id_type=:id',['id'=>$_POST['type']]);
    

}
$user=$post->user();
if(isset($_POST['type'])){
    $_SESSION['categorie']=$_POST['type'];
}
if(isset($_SESSION['categorie'])){
$categorie=$_SESSION['categorie'];
}
if(isset($_POST['post'])){
    $monpost=$_POST['post'];
    $titre1=$_POST['titre'];
    $souscategorie=$_POST['stype'];
    if(strlen($monpost)>15 OR $categorie!="null"  ){
        if(isset($_POST['stype'])){
            $errors= array();
            $file_name = $_FILES['image']['name'];
            $file_size = $_FILES['image']['size'];
            $file_tmp = $_FILES['image']['tmp_name'];
            $file_type = $_FILES['image']['type'];
            $file_ext = strtolower(pathinfo($file_name, PATHINFO_EXTENSION));
            
            $extensions= array("jpeg","jpg","png");
            
            if(in_array($file_ext,$extensions)=== false){
                $errors[]="extension not allowed, please choose a JPEG or PNG file.";
            }
            
            if($file_size > 2097152){
                $errors[]='File size must be exactly 2 MB';
            }
            
            if(empty($errors)==true){
                // Générer un nom de fichier unique basé sur la date et l'heure actuelles
                $new_file_name = 'imagess_' . date('Y-m-d_H-i-s') . '.' . $file_ext;
                $is_moved = move_uploaded_file($file_tmp,"images/".$new_file_name);
                if ($is_moved) {
                /*    $pdo->requette('INSERT INTO post (post,id_user,id_type,photo,stype) VALUES(:post,:id_user,:id_type,:photo,:stype)',
                        [
                            'post'=>$monpost,
                            'id_user'=>$user['id'],
                            'id_type'=>$categorie,
                            'photo'=>'$new_file_name',
                            'stype'=>$souscategorie,
                        
                        ]);*/
                    echo "Success";
                } else {

//                    echo "Impossible de copier le fichier";
                }
            }else{
                //print_r($errors);
            }
            $post->Monpost($monpost,$user['id'],$categorie,$new_file_name,$souscategorie,$date,$heure,$titre1);
            header('Location: index.php');
        }

    }else{
        if(strlen($monpost)<15){
            $erreur=true;
        }
        if($categorie==='null'){
            $erreurcat=true;
        }
        

    }

}
require('utilitaire/heade.php');
?>




<style>
    .img-c{
        border:2px solid black;
    }
    img{
        max-width: 100%;
        max-height: 100%;
        object-fit: cover;
    }
</style>

<main class="flex-shrink-0 mt-5 ">
    
    <div class="container mt-5">
        <hr>
        
        <h1>Poser une Question</h1> 
        
        <form action="" method="post"  >
                <?php if($erreurcat) :?>
                    <div class="alert alert-danger">
                        <p class="text-center" >
                            Sélectionner une catégorie svp <?= $_POST['type'] ?>
                        </p>
                    </div>
                <?php endif ?>
            
            <select class="form-select mb-4" onchange="this.form.submit()" name="type"  aria-label="Default select example" required  >
                <option selected value="null">Sélectionner la catégorie</option>
                <?php foreach($type as $t):?>
                <option <?php if($seltype==$t['id'] ):?><?='selected' ?><?php endif ?> value="<?=$t['id']?>"><?=$t["nom_type"]?></option>
                <?php endforeach?>
                
            </select>
            </form>
            
            <form action="" method="post" enctype="multipart/form-data" >
            <div class="row align-items-md-stretch mb-3">
                <div class="col-md-6">
                    <label for="validationDefault03" class="form-label">Titre </label>
                    <input type="text" name="titre" class="form-control" min="6" max="16" value="<?php if($erreurcat){echo($_POST['titre']);} ?>" >
                </div>
                
            </div>
                
            <select class="form-select mb-2" name="stype" aria-label="Default select example" required  >
                
                <?php foreach($stype as $st):?>

                <option value="<?=$st['id']?>"><?=$st["nom_stype"]?></option>
                <?php endforeach?>
                
            </select>
            <div class="row align-items-md-stretch mb-3">
                <div class="col-md-6">
                    <label for="validationDefault03" class="form-label">Photo(si possible)</label>
                    <input type="file" name="image" class="form-control"  id='fileUpload'/>
                </div>
                <div class="col-md-6 img-c" >
                    <img id='imageDiv' class="h-100" />
                </div>
            </div>
            <div class="mb-3">
                
                <label for="exampleFormControlTextarea1" class="form-label">Example textarea</label>
                <?php if($erreur) :?>
                    <div class="alert alert-danger">
                        <p class="text-center" >
                            Ajouter du contenu
                        </p>
                    </div>
                <?php endif ?>
                <textarea class="form-control" name="post"  id="exampleFormControlTextarea1" rows="3">dddddddddd ddddddddddddd ddddddddddddddd</textarea>
            </div>
<button class="btn btn-primary" type="submit" >OOOK</button>
        </form>
    </div>
    

    <script src="tiny/tinymce.min.js" referrerpolicy="origin"></script>
    <script>
  tinymce.init({
    selector: 'textarea',
    plugins: 'anchor autolink charmap codesample emoticons image link lists media searchreplace table visualblocks wordcount',
    toolbar: 'undo redo | blocks fontfamily fontsize | bold italic underline strikethrough | align lineheight | numlist bullist indent outdent | emoticons charmap | removeformat',
  });
</script>



    
    <script>
document.getElementById('fileUpload').addEventListener('change', function() {
    var reader = new FileReader();
    reader.onload = function(e) {
        document.getElementById('imageDiv').src = e.target.result;
    }
    reader.readAsDataURL(this.files[0]);
});
</script>
<script>
document.getElementById('fileUpload').addEventListener('change', function() {
    var reader = new FileReader();
    reader.onload = function(e) {
        var img = document.createElement('img');
        img.src = e.target.result;
        document.getElementById('imageDiv').appendChild(img);
    }
    reader.readAsDataURL(this.files[0]);
});
</script>
</main>

<?php
require('utilitaire/foot.php')
?>
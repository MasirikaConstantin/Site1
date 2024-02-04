<?php

use function PHPSTORM_META\type;

class post{
    private $pdo;
    private $user;
    public function __construct($pdo){
        if(!isset($_SESSION)){
            session_start();
        }
    
        //déclaration d'une variable globale
        $this->pdo=$pdo;
    }


    public function user(){
        if(isset($_SESSION['auth'])){
        $user=$this->pdo->req_simple('SELECT * FROM user WHERE id=:id',['id'=>$_SESSION['auth']] );
        
        return $user;
        }else{
            return null;
        }

    }
    public function type(){
        $type=$this->pdo->requette('SELECT * FROM type');
        return $type;

    }
    function Utilisateur($mail, $mdp){
             
        $utilisateur=$this->pdo->req_simple('SELECT * FROM user WHERE email = :email',['email' =>$mail]);
    
            if($utilisateur === false){
                
                return false;
            }
             
            
            if(($mdp === $utilisateur['mdp'])){
                
                    if(session_status()=== PHP_SESSION_NONE){
                        session_start();
                    }
                    $_SESSION['auth']=$utilisateur['id'];
                
                    return $utilisateur;
            }else{

                return null;
            }

        
    }





    public function Monpost($post, $id_user, $id_type, $photo=null,$soustype,$date,$heure,$titre){
        $this->pdo->requette('INSERT INTO post(post,iduser,idtype,photo,stype,date,heur,titre) VALUES(:post,:iduser,:idtype,:photo,:stype,:date,:heur, :titre)',
        [
            'post'=>$post,
            'iduser'=>$id_user,
            'idtype'=>$id_type,
            'photo'=>$photo,
            'stype'=>$soustype,
            'date'=>$date,
            'heur'=>$heure,
            'titre'=>$titre,
        
        ]
    );

    }

    public function CreerUtili($nom,$prenom,$sexe,$daten, $email,$contact, $photo,$mdp){
        $this->pdo->requetteinsert('INSERT INTO user (nom,prenom,sexe,daten,email,contact,photo,mdp,etat) VALUES(:nom,:prenom,:sexe,:daten,:email,:contact,:photo,:mdp,:etat)',
        [
            'nom'=> $nom,
            'prenom'=> $prenom,
            'sexe'=> $sexe,
            'daten'=> $daten,
            'email'=>$email,
            'contact'=> $contact,
            'photo'=> $photo,
            'mdp'=> $mdp,
            'etat'=> 1
        ]
    );
    }
    

    public function postselect($id){
        $lepost=$this->pdo->req_simple('SELECT stype.nom_stype, type.nom_type,user.id, user.nom,user.prenom,user.photo,post.iduser,post.titre, post.post,post.photo, post.date,post.heur, post.idpost FROM post 
        JOIN user ON user.id = post.iduser 
        JOIN type ON post.idtype = type.id
        JOIN stype ON post.stype = stype.id

        WHERE idpost=:id', ['id'=>$id]);
        return $lepost;
    }

    public function commeselect($id){
        $lepost=$this->pdo->requette('SELECT commentaire.commentaire,commentaire.id AS idcomm ,user.id, commentaire.iduser, user.nom,user.prenom,user.photo FROM commentaire 
        JOIN user ON user.id = commentaire.iduser 
        JOIN post ON  commentaire.idpost= post.idpost

        WHERE commentaire.idpost=:id', ['id'=>$id]);
        return $lepost;
    }
    public function typeselect($id){
        $lepost=$this->pdo->req_simple('SELECT  nom_type FROM type 
        
    
        WHERE id=:id', ['id'=>$id]);
        return $lepost;
    }

    public function soustypeselect($id){
        $lepost=$this->pdo->req_simple('SELECT nom_stype FROM stype 
        
        WHERE id=:id', ['id'=>$id]);
        return $lepost;
    }
    public function Mesposts($id){
        $lepost=$this->pdo->requette(
            'SELECT stype.nom_stype, type.nom_type,user.id, user.nom,user.prenom,user.photo,post.titre,post.iduser, post.post,post.photo, post.date,post.heur, post.idpost FROM post 
JOIN user ON user.id = post.iduser 
JOIN type ON post.idtype = type.id
JOIN stype ON post.stype = stype.id
WHERE iduser=:id',
            ['id'=>$id]);
        return $lepost;
    }
  
    public function Commentaire($user, $post, $comm, $date,$heure){
        $this->pdo->requette('INSERT INTO commentaire(iduser,idpost,commentaire,date, heure) VALUES(:iduser,:idpost,:commentaire,:date,:heure)',
        [
            'iduser'=>$user,
            'idpost'=>$post,
            'commentaire'=>$comm,
            'date'=>$date,
            'heure'=>$heure,
        
        ]
    );
}

public function VerifComm($id){
    $lepost=$this->pdo->req_simple(
        'SELECT user.id, user.nom,user.prenom, commentaire.iduser FROM commentaire 
        JOIN user ON user.id = commentaire.iduser 
        WHERE iduser=:id',
        ['id'=>$id]);
        return $lepost;
}


public function Modifcomm($user, $post){
    $this->pdo->requette('UPDATE commentaire SET commentaire =:com  WHERE id =:idcom  ',
    [
        'com'=>$user,
        'idcom'=>$post,
        
    
    ]
);
}
}
?>
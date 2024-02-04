<?php
function Utilisateur($pdo,$mail, $mdp){
             
             $query=$pdo->prepare('SELECT * FROM user WHERE email = :email');
             $query->execute(['email' =>$mail]);
         
                 $utilisateur =$query->fetch();
                 
                 if($utilisateur === false){
                     
                     return null;
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





?>
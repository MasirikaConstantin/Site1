<?php

class DB{
    private $pdo;
    private $host="localhost";
    private $user ="root";
    private $password="";
    private $dbname="blog";

        //$pdo= 
    public function __construct()
    {
        
    
        try{
                
            $this->pdo =new PDO('mysql:host ='.$this->host. ';dbname='.$this->dbname. ';charset=utf8', $this->user,$this->password,[
                PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_DEFAULT_FETCH_MODE=>PDO::FETCH_ASSOC
            ]);
    
            /*new PDO('sqlite:../bdd/blog.db',null,null, [
                PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]
            );*/
        }catch(PDOException $e){
            
            echo('<div class="container">
                <div class="alert alert-danger">
                    Impossible de se connecter <h6>'.$e.'</h6>
                </div>
            </div>');die;

        }
    }
    public function requette($sql, $data=[]){
        $req=$this->pdo->prepare($sql);
        $req->execute($data);
        return $req->fetchAll(PDO::FETCH_ASSOC);
}
public function requetteinsert($sql, $data=[]){
    $req=$this->pdo->prepare($sql);
    $req->execute($data);
    
}
public function req_simple($sql, $data=[]){
    $req=$this->pdo->prepare($sql);
    $req->execute($data);
    return $req->fetch();
}
}

?>
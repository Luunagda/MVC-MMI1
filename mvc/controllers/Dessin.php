<?php 
namespace controllers;
class Dessin extends \app\Controller{
    /** @return void */
    public function index(){
        $this->loadModel('Dessin');
        $dessins = $this->Dessin->join();
        
        $tab=[];
        foreach($dessins as $dessin){
            $tab[$dessin["id_dessin"]]["titre"]=$dessin["titre"];
            $tab[$dessin["id_dessin"]]["paragraphe"]=$dessin["paragraphe"];
            $tab[$dessin["id_dessin"]]["images"][]=[
                "sous-titre" => $dessin["sous-titre"], 
                "nom_fichier" => $dessin["nom_fichier"], "alt" => $dessin["alt"]
            ];
        }
        //echo "<pre>". print_r($tab, true) ."</pre>";
        //die;


        $this->render('index'  , compact('tab'));
        
    }
    
    
    
}

?>
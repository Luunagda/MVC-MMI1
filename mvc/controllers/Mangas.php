<?php 
namespace controllers;
class Mangas extends \app\Controller{
    /** @return void */
    public function index(){
        $this->loadModel('Mangas');
        $mangas = $this->Mangas->getAll();
        $this->render('index' , compact('mangas'));
    }
    /** @param string $slug
     * @return void
     */
    public function lire(string $slug){
        $this->loadModel('Mangas');
        $mangas = $this->Mangas->findBySlug($slug);
        $this->render('lire', compact('mangas'));
    }
}
?>

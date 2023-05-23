<?php 
namespace controllers;
class Wakfu extends \app\Controller{
    /** @return void */
    public function index(){
        $this->loadModel('Wakfu');
        $wakfu = $this->Wakfu->getAll();
        $this->render('index' , compact('wakfu'));
    }
}
?>

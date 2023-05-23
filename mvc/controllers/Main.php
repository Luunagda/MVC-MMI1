<?php
namespace controllers;
class Main extends \app\Controller{
/** @return void */
    public function index(){
        $main = array();
        $this->loadModel('Main');
        $main = $this->Main->getAll();
        $this->render('index', compact('main'));
    }
}
?>
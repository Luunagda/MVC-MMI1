<?php 
namespace controllers;
class Contact extends \app\Controller{
    /** @return void */
    public function index(){
        $this->loadModel('Contact');
        $contact = $this->Contact->getAll();
        $this->render('index' , compact('contact'));
    }
}
?>

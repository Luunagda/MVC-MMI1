<?php
namespace models;

class Contact extends \app\Model{
    public function __construct()
    {
        $this->table = "contact";
        $this->getConnection();
    }    
}
?>
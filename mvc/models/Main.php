<?php
namespace models;

class Main extends \app\Model{
    public function __construct()
    {
        $this->table = "main";
        $this->getConnection();
    }
}
?>
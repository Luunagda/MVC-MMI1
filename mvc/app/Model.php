<?php

namespace app;

abstract class Model{
    private $host = "localhost";
    private $db_name = "centre_interet";
    private $username = "root";
    private $password = "";
    
    protected $_connexion;

    public $table;
    public $id;

    /** @return void */
    public function getConnection(){
        $this->_connexion = null;
        try{
            $this->_connexion = new \mysqli($this->host, $this->username, $this->password, $this->db_name);
            $this->_connexion->set_charset("utf8");
        }catch(\mysqli_sql_exception $exception){
            echo "Erreur de connexion : " . $exception->getMessage();
        }
    }
    /** @return void */
    public function getAll(){
        $sql = "SELECT * FROM `{$this->table}`";
        $query = $this->_connexion->query($sql);
        return $query->fetch_all(MYSQLI_ASSOC);
    }
    
}
?>

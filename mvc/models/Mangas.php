<?php
namespace models;

class Mangas extends \app\Model{
    public function __construct()
    {
        $this->table = "manga";
        $this->getConnection();
    }
    /** @param string $slug
     * @return void
     */
    public function findBYSlug(string $slug){
        $sql = "SELECT * FROM `".$this->table."` WHERE `slug`='".$slug."'";
        $query = $this->_connexion->query($sql);
        return $query->fetch_assoc();
    }
    
}
?>
<?php
namespace models;

class Dessin extends \app\Model{
    public function __construct()
    {
        $this->table = "dessin";
        $this->table_image = "liste_images_dessin";
        $this->getConnection();
    }
    public function join(){
        $sql = "SELECT * FROM `{$this->table}` INNER JOIN `{$this->table_image}` ON (id_dessin=dessin_id_dessin)";
        $query = $this->_connexion->query($sql);
        return $query->fetch_all(MYSQLI_ASSOC);
    }
}
?>
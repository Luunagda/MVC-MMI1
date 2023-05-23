<?php
namespace models;

class Wakfu extends \app\Model{
    public function __construct()
    {
        $this->table = "wakfu";
        $this->getConnection();
    }
    /** @param string $slug
     * @return void
     */

}
?>
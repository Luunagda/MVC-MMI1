<?php
namespace app;
abstract class Controller{
    /** @param string $model
     * @return void
     */
    public function loadModel(string $model){
        require_once(ROOT.'models/'.$model.'.php');
        $c_model = "\\models\\".$model;
        $this->$model = new $c_model();
    }
    /** @param string $fichier
     * @param array $data
     * @return void
     */
    public function render(string $fichier, array $data = []){
        extract($data);
        ob_start();
        require_once(ROOT.'views/'.explode("\\",strtolower(get_class($this)))[1].'/'.$fichier.'.php');
        $content = ob_get_clean();
        require_once(ROOT.'views/layout/default.php');
    }
    public function index(){
        $this->loadModel('Articles');
        $articles = $this->Articles->getAll();
        $this->render('index', compact('articles'));
        }
}
?>
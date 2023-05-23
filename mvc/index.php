<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');
/*echo "<pre>".print_r($_SERVER, true)."</pre>";
echo 1==='1' ?"vrai":"faux";*/
/*$variable = $_SERVER['SERVEUR8NAME'] == "sae203.hopto.org" ? "/~pseudo" : "";*/
define('ROOT', str_replace('index.php','',$_SERVER['SCRIPT_FILENAME']));
define('HTMLROOT', $_SERVER['SERVER_NAME'] == "sae203.hopto.org" ? "/~cyanh" : "");
require_once(ROOT.'app/Model.php');
require_once(ROOT.'app/Controller.php');

$params = explode('/', $_GET['p']);
if($params[0] != ""){
    $controller = "\\controllers\\".ucfirst($params[0]);
    $action = isset($params[1]) ? $params[1] : 'index';
    if(file_exists(ROOT.str_replace('\\', DIRECTORY_SEPARATOR, $controller).'.php')) {
        require_once(ROOT.str_replace('\\', DIRECTORY_SEPARATOR, $controller).'.php');
        $controller = new $controller();
        if(method_exists($controller, $action)){
            unset($params[0]);
            unset($params[1]);
            call_user_func_array([$controller,$action], $params);
        } 
        else {
            http_response_code(404);
            echo "La page recherchée n'existe pas";
        }
    }
    else {
        http_response_code(404);
        echo "La page recherchée n'existe pas";
    }
}
else{
    require_once(ROOT.'controllers/Main.php');
    $controller = new \controllers\Main();
    $controller->index();
}

?>
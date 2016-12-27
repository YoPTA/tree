<?php

// Общие настройки
/*ini_set('display_errors',1);
error_reporting(E_ALL);*/

// Подключение файлов системы
define('ROOT', dirname(__FILE__));
require_once(ROOT.'/components/Autoload.php');

// Подключение констант
require_once(ROOT.'/config/constants.php');

// Вызов Router
$router = new App();
$router->run();
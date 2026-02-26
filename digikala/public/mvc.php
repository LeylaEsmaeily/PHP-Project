<?php
ini_set('display_errors', '1');
error_reporting(E_ALL);

session_start();

define('BASE_URL', rtrim(dirname($_SERVER['SCRIPT_NAME']), '/\\'));
define('APP_PATH', realpath(__DIR__ . '/../app'));

require_once APP_PATH . '/Core/Database.php';
require_once APP_PATH . '/Core/Controller.php';
require_once APP_PATH . '/Core/Router.php';

$router = new Router();
$router->dispatch();
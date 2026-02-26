<?php

class Router
{
    public function dispatch(): void
    {
        $url = $_GET['url'] ?? 'auth/login';
        $url = trim($url, '/');

        [$c, $m] = array_pad(explode('/', $url, 2), 2, 'index');

        $c = preg_replace('/[^a-zA-Z0-9_]/', '', $c);
        $m = preg_replace('/[^a-zA-Z0-9_]/', '', $m);

        $controller = ucfirst($c) . 'Controller';
        $file = APP_PATH . '/Controllers/' . $controller . '.php';

        if (!file_exists($file)) {
            http_response_code(404);
            echo "404 Controller";
            return;
        }

        require_once $file;

        if (!class_exists($controller)) {
            http_response_code(500);
            echo "Controller class not found";
            return;
        }

        $obj = new $controller();

        if (!method_exists($obj, $m)) {
            http_response_code(404);
            echo "404 Method";
            return;
        }

        $obj->$m();
    }
}
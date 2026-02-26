<?php

class Controller
{
    protected function view(string $view, array $data = []): void
    {
        extract($data);
        $path = APP_PATH . '/Views/' . $view . '.php';

        if (!file_exists($path)) {
            http_response_code(500);
            echo "View not found: " . htmlspecialchars($view);
            return;
        }

        require $path;
    }

    protected function redirect(string $to): void
    {
        header("Location: $to");
        exit;
    }

    protected function url(string $route): string
    {
        return BASE_URL . '/mvc.php?url=' . ltrim($route, '/');
    }

    protected function asset(string $path): string
    {
        return BASE_URL . '/' . ltrim($path, '/');
    }
}
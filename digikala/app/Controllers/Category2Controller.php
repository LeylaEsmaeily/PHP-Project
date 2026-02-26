<?php

class Category2Controller extends Controller
{
    public function show(): void
    {
        $id = isset($_GET['id']) ? (int)$_GET['id'] : 0;
        if ($id <= 0) { http_response_code(404); echo "404"; return; }

        $pdo = Database::connect();
        $stmt = $pdo->prepare("SELECT id, title, image FROM category2 WHERE id = ? LIMIT 1");
        $stmt->execute([$id]);
        $item = $stmt->fetch(PDO::FETCH_ASSOC);

        if (!$item) { http_response_code(404); echo "404"; return; }

        $this->view('category2/show', ['item' => $item]);
    }
}
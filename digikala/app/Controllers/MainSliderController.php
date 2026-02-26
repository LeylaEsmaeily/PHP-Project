<?php

class MainsliderController extends Controller
{
    public function show(): void
    {
        $id = isset($_GET['id']) ? (int)$_GET['id'] : 0;
        if ($id <= 0) { http_response_code(404); echo "404"; return; }

        $pdo = Database::connect();
        $stmt = $pdo->prepare("SELECT id, image FROM main_slider WHERE id = ? LIMIT 1");
        $stmt->execute([$id]);
        $item = $stmt->fetch(PDO::FETCH_ASSOC);

        if (!$item) { http_response_code(404); echo "404"; return; }

        $this->view('mainslider/show', ['item' => $item]);
    }
}
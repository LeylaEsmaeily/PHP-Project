<?php
class ApiIncrediblesController extends Controller {
  public function index() {
    header('Content-Type: application/json; charset=utf-8');
    $model = new Incredible();
    echo json_encode($model->all(), JSON_UNESCAPED_UNICODE);
    exit;
  }

  public function show() {
    header('Content-Type: application/json; charset=utf-8');
    $id = (int)($_GET['id'] ?? 0);
    $model = new Incredible();
    $row = $model->find($id);
    if (!$row) {
      http_response_code(404);
      echo json_encode(['error' => 'not found'], JSON_UNESCAPED_UNICODE);
      exit;
    }
    echo json_encode($row, JSON_UNESCAPED_UNICODE);
    exit;
  }
}
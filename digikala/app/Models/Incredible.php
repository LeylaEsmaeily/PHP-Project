<?php
class Incredible {
  private PDO $db;

  public function __construct() {
    $this->db = Database::getInstance();
  }

  public function all(): array {
    $stmt = $this->db->query("SELECT * FROM incredibles ORDER BY id DESC");
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
  }

  public function find(int $id): ?array {
    $stmt = $this->db->prepare("SELECT * FROM incredibles WHERE id=?");
    $stmt->execute([$id]);
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
    return $row ?: null;
  }

  public function create(array $data): int {
    $stmt = $this->db->prepare("INSERT INTO incredibles (title, alt, image, price1, price2, takhfif, description) VALUES (?,?,?,?,?,?,?)");
    $stmt->execute([
      $data['title'],
      $data['alt'] ?? '',
      $data['image'],
      $data['price1'] ?? '',
      $data['price2'] ?? '',
      $data['takhfif'] ?? '',
      $data['description'] ?? ''
    ]);
    return (int)$this->db->lastInsertId();
  }

  public function update(int $id, array $data): bool {
    $stmt = $this->db->prepare("UPDATE incredibles SET title=?, alt=?, image=?, price1=?, price2=?, takhfif=?, description=? WHERE id=?");
    return $stmt->execute([
      $data['title'],
      $data['alt'] ?? '',
      $data['image'],
      $data['price1'] ?? '',
      $data['price2'] ?? '',
      $data['takhfif'] ?? '',
      $data['description'] ?? '',
      $id
    ]);
  }

  public function delete(int $id): bool {
    $stmt = $this->db->prepare("DELETE FROM incredibles WHERE id=?");
    return $stmt->execute([$id]);
  }
}
<?php

require_once APP_PATH . '/Core/Database.php';

class User
{
    public static function findByPhone(string $phone): ?array
    {
        $pdo = Database::connect();
        $st = $pdo->prepare("SELECT * FROM users WHERE phone=? LIMIT 1");
        $st->execute([$phone]);
        $u = $st->fetch(PDO::FETCH_ASSOC);
        return $u ?: null;
    }

    public static function create(string $fullname, string $phone, string $hash): int
    {
        $pdo = Database::connect();
        $st = $pdo->prepare("INSERT INTO users(fullname,phone,password) VALUES(?,?,?)");
        $st->execute([$fullname, $phone, $hash]);
        return (int)$pdo->lastInsertId();
    }

    public static function findById(int $id): ?array
    {
        $pdo = Database::connect();
        $st = $pdo->prepare("SELECT id,fullname,phone,created_at FROM users WHERE id=? LIMIT 1");
        $st->execute([$id]);
        $u = $st->fetch(PDO::FETCH_ASSOC);
        return $u ?: null;
    }
    public static function updatePassword(int $id, string $hash): void
{
    $pdo = Database::connect();
    $stmt = $pdo->prepare("UPDATE users SET password = ? WHERE id = ?");
    $stmt->execute([$hash, $id]);
}

public static function deleteById(int $id): void
{
    $pdo = Database::connect();
    $stmt = $pdo->prepare("DELETE FROM users WHERE id = ?");
    $stmt->execute([$id]);
}
}
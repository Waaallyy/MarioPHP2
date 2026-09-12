<?php
session_start();
include __DIR__ . '/../admin/info.php';

try {
    $pdo = new PDO("mysql:host=" . SERVER. ';dbname=' . DATABASE, USERNAME, PASSWORD);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Erreur de connexion : " . $e->getMessage());
}
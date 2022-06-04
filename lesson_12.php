<?php
session_start();
$new_text = $_POST['text'];

$pdo = new PDO("mysql:host=localhost;dbname=php_marlin;", "root", "");
$sql = "SELECT * FROM texts WHERE text=:user_text";
$statement = $pdo->prepare($sql);
$statement->execute(['user_text' => $new_text]);
$task = $statement->fetch(PDO::FETCH_ASSOC);

var_dump($task);

if (!empty($task)) {
    $message = 'Введенное значение уже присутствует в таблице.';
    $_SESSION['danger'] = $message;

    header("Location: /task_12.php");
    exit;
}

$sql = "INSERT INTO texts (text) VALUES (:usertext)";
$statement = $pdo->prepare($sql);
$statement->execute(['usertext' => $new_text]);

$message = 'Введенное значение успешно добавилось в таблицу.';
$_SESSION['success'] = $message;

header("Location: /task_12.php");

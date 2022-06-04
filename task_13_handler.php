<?php
session_start();
$email = $_POST['email'];
$pass = $_POST['password'];
$hash = password_hash($pass, PASSWORD_DEFAULT);

$pdo = new PDO("mysql:host=localhost;dbname=php_marlin;", "root", "");
$sql = "SELECT * FROM users WHERE email=:user_email";
$statement = $pdo->prepare($sql);
$statement->execute(['user_email' => $email]);
$task = $statement->fetch(PDO::FETCH_ASSOC);

var_dump($task);

if (!empty($task)) {
    $message = 'Этот эл адрес уже занят другим пользователем.';
    $_SESSION['danger'] = $message;

    header("Location: /task_13.php");
    exit;
}

$sql = "INSERT INTO users (email, password) VALUES (:email, :password)";
$statement = $pdo->prepare($sql);
$statement->execute(['email' => $email, 'password' => $hash]);

$message = 'Пользователь успешно зарегистрировался.';
$_SESSION['success'] = $message;

header("Location: /task_13.php");

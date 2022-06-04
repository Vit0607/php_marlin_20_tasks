<?php
session_start();

$email = $_POST['email'];
$password = $_POST['password'];

$pdo = new PDO("mysql:host=localhost;dbname=php_marlin;", "root", "");
$sql = "SELECT * FROM users WHERE email=:email";
$statement = $pdo->prepare($sql);
$statement->execute(['email' => $email]);
$task = $statement->fetch(PDO::FETCH_ASSOC);

if (empty($task)):
    $_SESSION['danger'] = 'Неверный логин или пароль';

    header("Location: /task_16.php");
endif;

$hash = $task['password'];

if(!empty($task) && !password_verify($password, $hash)):
    $_SESSION['danger'] = 'Неверный пароль';

    header("Location: /task_16.php");
endif;

if($task['email'] == $email && password_verify($password, $hash)):
$_SESSION['email'] = $email;
$_SESSION['success'] = 'Здравствуйте, ' . $email;

header("Location: /task_16.php");
endif;

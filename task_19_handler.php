<?php

$unique = uniqid();
$img = $unique . '.jpg';

var_dump($_FILES);
move_uploaded_file($_FILES['image']['tmp_name'], 'img\demo\moved\\' . $img);


$pdo = new PDO("mysql:host=localhost;dbname=php_marlin;", "root", "");
$sql = "INSERT INTO images (image) VALUES (:image)";
$statement = $pdo->prepare($sql);
$statement->execute(['image' => $img]);

header("Location: /task_19.php");
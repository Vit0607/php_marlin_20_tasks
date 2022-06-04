<?php

var_dump($_POST['delete']);

$img = $_POST['delete'];


$pdo = new PDO("mysql:host=localhost;dbname=php_marlin;", "root", "");
$sql = "DELETE FROM images WHERE image=:image";
$statement = $pdo->prepare($sql);
$statement->execute(['image' => $img]);

unlink('img\demo\moved\\' . $img);

header("Location: /task_19.php");

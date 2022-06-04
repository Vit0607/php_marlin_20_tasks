<?php

function get_uniqid ($file) {
    $pathinfo = pathinfo($file);
    $ext = $pathinfo['extension'];
    $file = uniqid() . '.' . $ext;
    return $file;
}

$pdo = new PDO("mysql:host=localhost;dbname=php_marlin;", "root", "");


for ($i = 0; $i < count($_FILES['image']['name']); $i++) {

//    Получаем уникальное название для каждой картинки:
    $uniqid = get_uniqid($_FILES['image']['name'][$i]);

//    Загружаем картинку на сервер:
    move_uploaded_file($_FILES['image']['tmp_name'][$i], 'img\demo\moved\\' . $uniqid);

//    Загружаем картинку в базу данных:
    $sql = "INSERT INTO images (image) VALUES (:image)";
    $statement = $pdo->prepare($sql);
    $statement->execute(['image' => $uniqid]);
}

header("Location: /task_20.php");


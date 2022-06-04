<?php

//1. Нужно создать таблицу images, такой структуры: id(int), image(varchar255)
//2. Соединиться с БД и сделать запрос для добавления картинки с БД
//3. Сделать уникальным название картинки
//4. После загрузки картинки вернуть пользователя назад(на страницу формы)
//5. Загруженные картинки вывести в блоке справа

$unique = uniqid();
$img = $unique . '.jpg';

var_dump($_FILES);
move_uploaded_file($_FILES['image']['tmp_name'], 'img\demo\moved\\' . $img);


$pdo = new PDO("mysql:host=localhost;dbname=php_marlin;", "root", "");
$sql = "INSERT INTO images (image) VALUES (:image)";
$statement = $pdo->prepare($sql);
$statement->execute(['image' => $img]);

header("Location: /task_18.php");


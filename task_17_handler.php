<?php
session_start();

unset($_SESSION['email']);

header("Location: /task_16.php");
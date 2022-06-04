-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 04 2022 г., 10:40
-- Версия сервера: 8.0.24
-- Версия PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `php_marlin`
--

-- --------------------------------------------------------

--
-- Структура таблицы `experts`
--

CREATE TABLE `experts` (
  `id` int NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proffession` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bootstrap_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `experts`
--

INSERT INTO `experts` (`id`, `img`, `full_name`, `proffession`, `position`, `first_name`, `status`, `twitter`, `twitter_link`, `bootstrap_link`) VALUES
(1, 'img/demo/authors/sunny.png', 'Sunny A.', '(UI/UX Expert)', 'Lead Author', 'Sunny', 'active', '@myplaneticket', 'https://twitter.com/@myplaneticket', 'https://wrapbootstrap.com/user/myorange'),
(2, 'img/demo/authors/josh.png', 'Jos K.', '(ASP.NET Developer)', 'Partner &amp; Contributor', 'Jos', 'active', '@atlantez', 'https://twitter.com/@atlantez', 'https://wrapbootstrap.com/user/Walapa'),
(3, 'img/demo/authors/jovanni.png', 'Jovanni Lo', '(PHP Developer)', 'Partner &amp; Contributor', 'Jovanni', 'banned', '@lodev09', 'https://twitter.com/@lodev09', 'https://wrapbootstrap.com/user/lodev09'),
(4, 'img/demo/authors/roberto.png', 'Roberto R.', '(Rails Developer)', 'Partner &amp; Contributor', 'Roberto', 'banned', '@sildur', 'https://twitter.com/@sildur', 'https://wrapbootstrap.com/user/sildur');

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `image`) VALUES
(1, '629b0c0470bca.jpg'),
(2, '629b0c0485bf4.jpg'),
(3, '629b0c048c6e0.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `people`
--

CREATE TABLE `people` (
  `id` int NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `people`
--

INSERT INTO `people` (`id`, `first_name`, `last_name`, `user_name`) VALUES
(1, 'Mark', 'Otto', '@mdo'),
(2, 'Jacob', 'Thornton', '@fat'),
(3, 'Larry', 'the Bird', '@twitter'),
(4, 'Larry the Bird', 'Bird', '@twitter');

-- --------------------------------------------------------

--
-- Структура таблицы `texts`
--

CREATE TABLE `texts` (
  `id` int NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `texts`
--

INSERT INTO `texts` (`id`, `text`) VALUES
(1, 'Проверка'),
(2, 'Рамштайн'),
(3, 'Рамштайн'),
(4, 'Ещё проверка'),
(5, 'Проверка 33'),
(6, 'курс для беременных'),
(7, 'подготовка к родам'),
(8, 'hhggfd'),
(9, 'Книги по UX/UI');

-- --------------------------------------------------------

--
-- Структура таблицы `texts2`
--

CREATE TABLE `texts2` (
  `id` int NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'jvn5@mail.ru', '$2y$10$TWpRhvEnq4CWN3DM/BiZ0ujpxSA8i1TpLzvMtNKiJqZ5BkEJg8jMy'),
(2, 'jvn5@mail.ru', '$2y$10$Y2LQMlOSkCGk3LB5GStU6uM.uYDnnp/JM1Al8AX9BXOdZ2UEOK1oC'),
(3, 'jvn5@mail.ru', '$2y$10$36sQdjqAc39RYY06VDmuOeXTiZ/LaDRgxPumBm91k9gr6g4kz.rmq'),
(4, 'jvn5@mail.ru', '$2y$10$MO5p/hvSXc5FoybO.mbFM./YqFdxSEKqyarPiCYA6ts6YXQaTWFkK'),
(5, 'jvn5@mail.ru', '$2y$10$1cZLQ1KBj3TnK2ZA7wDxFePCzQDmBIqyXX1.HDn6JguYGEblJvgqe'),
(6, 'jvn7@yandex.ru', '$2y$10$yGjwEWBzVRaP1/HNQc57xOkn9dJWJZjXWwNltE9Ky9liPt7oUUacm'),
(7, 'test@taholand.ru ', '$2y$10$fytIMVaNNV05CnI4gPJdj.IZDkNU8R1tYQ7sutYrc2PAhCwhEGF.C');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `experts`
--
ALTER TABLE `experts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `texts`
--
ALTER TABLE `texts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `texts2`
--
ALTER TABLE `texts2`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `experts`
--
ALTER TABLE `experts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `people`
--
ALTER TABLE `people`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `texts`
--
ALTER TABLE `texts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `texts2`
--
ALTER TABLE `texts2`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Хост: 10.10.10.155:3306
-- Время создания: Дек 27 2016 г., 15:26
-- Версия сервера: 5.5.48
-- Версия PHP: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tree`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tree`
--

CREATE TABLE IF NOT EXISTS `tree` (
  `id` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  `title` varchar(64) NOT NULL COMMENT 'Заголовок пункта',
  `description` varchar(256) NOT NULL COMMENT 'Описание пункта',
  `type` int(1) NOT NULL COMMENT 'Тип кнопки',
  `url_address` varchar(512) NOT NULL COMMENT 'URL - адрес',
  `parent_id` int(11) NOT NULL COMMENT 'ID - родителя (ссылка на текущую таблицу)',
  `index_number` int(1) NOT NULL COMMENT 'Порядковый номер',
  `member` int(1) NOT NULL COMMENT 'Член группы',
  `flag` int(1) NOT NULL COMMENT 'Флаг'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tree`
--

INSERT INTO `tree` (`id`, `name`, `title`, `description`, `type`, `url_address`, `parent_id`, `index_number`, `member`, `flag`) VALUES
(1, 'Раздел 1', '', '', 0, '', 0, 2, 1, 1),
(2, 'Раздел 2', '', '', 0, '', 0, 1, 1, 1),
(3, 'Раздел 3', '', '', 0, '', 0, 3, 8, 1),
(4, 'Раздел 1.1', '', '', 0, '', 1, 0, 2, 1),
(5, 'Раздел 1.2', '', '', 0, '', 1, 0, 4, 1),
(6, 'Раздел 1.1.1', '', '', 0, '', 4, 0, 2, 1),
(7, 'Раздел 2.1', '', '', 0, '', 2, 2, 2, 1),
(8, 'Раздел 2.2', '', '', 0, '', 2, 1, 2, 1),
(9, 'Раздел 3.1', '', '', 0, '', 3, 0, 2, 1),
(10, 'Раздел 1.1.1.1', '', '', 0, '', 6, 0, 2, 1),
(11, 'Раздел 3.2', '', '', 0, '', 3, 2, 2, 1),
(12, '', '', '', 1, '', 2, 1, 2, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tree`
--
ALTER TABLE `tree`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tree`
--
ALTER TABLE `tree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

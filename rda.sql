-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 25 2018 г., 16:01
-- Версия сервера: 5.7.19
-- Версия PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `rda`
--

-- --------------------------------------------------------

--
-- Структура таблицы `albums`
--

CREATE TABLE `albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `albums`
--

INSERT INTO `albums` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Садко', 'albums/April2018/r1mKMSzO4f8lu7M8IuCP.jpg', '2018-04-17 16:36:11', '2018-04-17 16:36:11'),
(2, 'Сотня', 'albums/April2018/SdezaOA6uVlKOpOaTEIG.jpeg', '2018-04-17 16:36:50', '2018-04-17 16:36:50'),
(3, 'Банковская', 'albums/April2018/eJqnb1qc4SWENoEgr643.jpg', '2018-04-17 16:37:29', '2018-04-17 16:37:29'),
(4, 'Щепкина', 'albums/April2018/kyatFmKedRCDE3sliiZz.jpg', '2018-04-17 16:38:01', '2018-04-17 16:38:01'),
(5, 'Казка', 'albums/April2018/IwT0mo8iAmqAPO5D6D0i.jpg', '2018-04-17 16:38:43', '2018-04-17 16:38:43'),
(6, 'Альтанка', 'albums/April2018/PVrBuPxZDOoGjplJTAFL.jpg', '2018-04-17 16:39:19', '2018-04-17 16:39:19');

-- --------------------------------------------------------

--
-- Структура таблицы `anounses`
--

CREATE TABLE `anounses` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Admin',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('published','pending','closed') COLLATE utf8_unicode_ci DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `anounses`
--

INSERT INTO `anounses` (`id`, `author`, `title`, `body`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Доски объявлений. Как выделить объявление на общем фоне', '<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #323232; font-family: site-font, Arial, sans-serif; font-size: 16px; background-color: #f0f0f0;\"><span style=\"box-sizing: border-box;\">Люди часто размещают объявления на досках. И многие не задумываются что и как они пишут. Конечно, можно написать много объявлений, разместить их на всех досках и ждать много звонков. Но! Если объявления не интересные, то читать их не будут, звонить &mdash; тем более. И не важно сколько объявлений размещено.<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" /></span><span style=\"box-sizing: border-box;\">Давайте разберемся с самыми частыми ошибками при создании объявлений и выясним как сделать объявление более привлекательным.<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" /></span><span style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bold;\"><img style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; margin-bottom: 10px;\" src=\"https://www.s.0542.ua/s/44/section/newsInText/upload/images/news/intext/000/032/594/6_5ad602256d872.jpg\" alt=\"\" width=\"652\" height=\"389\" data-author=\"\" /><br style=\"box-sizing: border-box;\" /></span><em style=\"box-sizing: border-box;\">Что неправильно: орфографические ошибки в заголовке, вакансия размещена в разделе автозапчастей.<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" /></em></span><span style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bold;\"><img style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; margin-bottom: 10px;\" src=\"https://www.s.0542.ua/s/44/section/newsInText/upload/images/news/intext/000/032/593/9_5ad5f82c778ea.jpg\" alt=\"\" width=\"545\" height=\"577\" data-author=\"\" /><br style=\"box-sizing: border-box;\" /></span><em style=\"box-sizing: border-box;\">Что правильно: понятный заголовок, много фотографий, подробное описание.</em></span><span style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\" /></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #323232; font-family: site-font, Arial, sans-serif; font-size: 16px; background-color: #f0f0f0;\">&nbsp;</p>', 'anounses/April2018/tWwYVwKrbOY3hZl4uYHd.png', 'published', '2018-04-17 16:17:02', '2018-04-17 16:17:02'),
(2, 'Admin', 'Мэр г. Сумы Александр Лысенко заявил отвод судье', '<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #323232; font-family: site-font, Arial, sans-serif; font-size: 16px; background-color: #f0f0f0;\"><span style=\"box-sizing: border-box;\">Сегодня в Заречном районном суде г. Сумы должно было состояться слушание по делу в отношении городского головы Сум Александра Лысенко, которого обвиняют в админнарушении, связанном с коррупцией. Сегодня был запланирован допрос свидетелей.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #323232; font-family: site-font, Arial, sans-serif; font-size: 16px; background-color: #f0f0f0;\"><span style=\"box-sizing: border-box;\">Но к слушанию по сути так и не приступили, поскольку обвиняемый заявил отвод судье. Адвокат утверждает, что судья Климашевская грубо нарушала процессуальное право во время рассмотрения дела, а именно, находясь в отпуске и с целью принятия решения по делу, 14 и 20 марта выходила на работу, в то время как другие дела на указанные даты не назначались. Помимо этого, судья Климашевская не угодила тем, что на время пребывания подсудимого на больничном, во избежание затягивания дела и истечения срока привлечения к админответственности, приостановила рассмотрение дела. Решение о приостановлении слушания принято в форме постановления без присутствия обвиняемого что, как утверждает адвокат Матюшинец, противоречит процессуальному и административному кодексу. В третьих, сторона защиты считает, что при рассмотрении аналогичного дела по секретарю горсовета Андрею Баранову, у суда уже сложилось окончательное мнение, поэтому в данном случае суд может принять такое же решение.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #323232; font-family: site-font, Arial, sans-serif; font-size: 16px; background-color: #f0f0f0;\"><span style=\"box-sizing: border-box;\">Учитывая ходатайство обвиняемого, дело было отложено до 24 апреля. За это время автоматизированная система должна назначить другого судью.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #323232; font-family: site-font, Arial, sans-serif; font-size: 16px; background-color: #f0f0f0;\"><span style=\"box-sizing: border-box;\">Впрочем, есть подозрение, что к тому времени истечет срок привлечения Александра Лысенко к административной ответственности. Как утверждает адвокат городского головы, по их подсчетам, срок привлечения к ответственности уже истек.</span></p>', 'anounses/April2018/XlhAaEVdiYUMI3ZwZz9o.jpg', 'published', '2018-04-17 16:17:49', '2018-04-17 16:17:49');

-- --------------------------------------------------------

--
-- Структура таблицы `collegiums`
--

CREATE TABLE `collegiums` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('published','pending','closed') COLLATE utf8_unicode_ci DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `collegiums`
--

INSERT INTO `collegiums` (`id`, `author`, `title`, `body`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Админ', 'План засідання колегії Сумської обласної державної адміністрації на ІІ квартал 2018 року', '<p><span lang=\"UK\" style=\"font-size: 13.0pt;\">ПЛАН</span></p>\r\n<p><span lang=\"UK\" style=\"font-size: 13.0pt;\">засідань колегії Сумської обласної державної адміністрації </span></p>\r\n<p><span lang=\"UK\" style=\"font-size: 13.0pt;\">на І квартал 2018 року</span></p>\r\n<p class=\"MsoBodyTextIndent\" style=\"margin-left: 0cm;\"><strong><span lang=\"UK\" style=\"font-size: 4.0pt;\">&nbsp;</span></strong></p>\r\n<p class=\"MsoBodyTextIndent\" style=\"margin-left: 0cm;\"><strong><span lang=\"UK\" style=\"font-size: 4.0pt;\">&nbsp;</span></strong></p>\r\n<p class=\"MsoBodyTextIndent\" style=\"margin-left: 0cm;\"><strong><span lang=\"UK\" style=\"font-size: 4.0pt;\">&nbsp;</span></strong></p>\r\n<table class=\"MsoNormalTable\" style=\"margin-left: -34.05pt; border-collapse: collapse; mso-table-layout-alt: fixed; border: none; mso-border-alt: solid windowtext .5pt; mso-yfti-tbllook: 480; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt; mso-border-insideh: .5pt solid windowtext; mso-border-insidev: .5pt solid windowtext;\" border=\"1\" width=\"690\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"mso-yfti-irow: 0; mso-yfti-firstrow: yes;\">\r\n<td style=\"width: 21.25pt; border: solid windowtext 1.0pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 1.4pt 0cm 1.4pt;\" valign=\"top\" width=\"28\">\r\n<p class=\"MsoBodyText\" style=\"text-align: center;\" align=\"center\"><strong><span lang=\"UK\" style=\"font-size: 12.0pt;\">№ </span></strong></p>\r\n<p class=\"MsoBodyText\" style=\"text-align: center;\" align=\"center\"><strong><span lang=\"UK\" style=\"font-size: 12.0pt;\">п/п</span></strong></p>\r\n</td>\r\n<td style=\"width: 219.75pt; border: solid windowtext 1.0pt; border-left: none; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 1.4pt 0cm 1.4pt;\" valign=\"top\" width=\"293\">\r\n<p class=\"MsoBodyText\" style=\"text-align: center; margin: 0cm -4.7pt .0001pt -4.85pt;\" align=\"center\"><strong><span lang=\"UK\" style=\"font-size: 12.0pt;\">Питання, що пропонується </span></strong></p>\r\n<p class=\"MsoBodyText\" style=\"text-align: center; margin: 0cm -4.7pt .0001pt -4.85pt;\" align=\"center\"><strong><span lang=\"UK\" style=\"font-size: 12.0pt;\">розглянути</span></strong></p>\r\n</td>\r\n<td style=\"width: 63.8pt; border: solid windowtext 1.0pt; border-left: none; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" valign=\"top\" width=\"85\">\r\n<p class=\"MsoBodyText\" style=\"text-align: center;\" align=\"center\"><strong><span lang=\"UK\" style=\"font-size: 12.0pt;\">Дата </span></strong></p>\r\n<p class=\"MsoBodyText\" style=\"text-align: center; margin: 0cm -5.4pt .0001pt -5.4pt;\" align=\"center\"><strong><span lang=\"UK\" style=\"font-size: 12.0pt;\">проведення засідання</span></strong></p>\r\n</td>\r\n<td style=\"width: 148.85pt; border: solid windowtext 1.0pt; border-left: none; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" valign=\"top\" width=\"198\">\r\n<p class=\"MsoBodyText\" style=\"text-align: center; margin: 0cm -4.65pt .0001pt -4.75pt;\" align=\"center\"><strong><span lang=\"UK\" style=\"font-size: 12.0pt;\">Відповідальні</span></strong></p>\r\n<p class=\"MsoBodyText\" style=\"text-align: center; margin: 0cm -4.65pt .0001pt -4.75pt;\" align=\"center\"><strong><span lang=\"UK\" style=\"font-size: 12.0pt;\">за підготовку </span></strong></p>\r\n<p class=\"MsoBodyText\" style=\"text-align: center; margin: 0cm -4.65pt .0001pt -4.75pt;\" align=\"center\"><strong><span lang=\"UK\" style=\"font-size: 12.0pt;\">питання</span></strong></p>\r\n</td>\r\n<td style=\"width: 63.75pt; border: solid windowtext 1.0pt; border-left: none; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 1.4pt 0cm 1.4pt;\" valign=\"top\" width=\"85\">\r\n<p class=\"MsoBodyText\" style=\"text-align: center;\" align=\"center\"><strong><span lang=\"UK\" style=\"font-size: 12.0pt;\">Строк </span></strong></p>\r\n<p class=\"MsoBodyText\" style=\"text-align: center;\" align=\"center\"><strong><span lang=\"UK\" style=\"font-size: 12.0pt;\">подання матеріалів</span></strong></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n<thead>\r\n<tr style=\"mso-yfti-irow: 1; height: 3.55pt;\">\r\n<td style=\"width: 21.25pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 1.4pt 0cm 1.4pt; height: 3.55pt;\" valign=\"top\" width=\"28\">\r\n<p class=\"MsoBodyText\" style=\"text-align: center;\" align=\"center\"><span lang=\"UK\" style=\"font-size: 12.0pt; mso-bidi-font-weight: bold;\">1</span></p>\r\n</td>\r\n<td style=\"width: 219.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 1.4pt 0cm 1.4pt; height: 3.55pt;\" valign=\"top\" width=\"293\">\r\n<p class=\"MsoBodyText\" style=\"text-align: center; margin: 0cm -4.7pt .0001pt -4.85pt;\" align=\"center\"><span lang=\"UK\" style=\"font-size: 12.0pt; mso-bidi-font-weight: bold;\">2</span></p>\r\n</td>\r\n<td style=\"width: 63.8pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt; height: 3.55pt;\" valign=\"top\" width=\"85\">\r\n<p class=\"MsoBodyText\" style=\"text-align: center;\" align=\"center\"><span lang=\"UK\" style=\"font-size: 12.0pt; mso-bidi-font-weight: bold;\">3</span></p>\r\n</td>\r\n<td style=\"width: 148.85pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt; height: 3.55pt;\" valign=\"top\" width=\"198\">\r\n<p class=\"MsoBodyText\" style=\"text-align: center; margin: 0cm -4.65pt .0001pt -4.75pt;\" align=\"center\"><span lang=\"UK\" style=\"font-size: 12.0pt; mso-bidi-font-weight: bold;\">4</span></p>\r\n</td>\r\n<td style=\"width: 63.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 1.4pt 0cm 1.4pt; height: 3.55pt;\" valign=\"top\" width=\"85\">\r\n<p class=\"MsoBodyText\" style=\"text-align: center;\" align=\"center\"><span lang=\"UK\" style=\"font-size: 12.0pt; mso-bidi-font-weight: bold;\">5</span></p>\r\n</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr style=\"mso-yfti-irow: 2;\">\r\n<td style=\"width: 517.4pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" colspan=\"5\" valign=\"top\" width=\"690\">\r\n<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><span lang=\"UK\" style=\"font-size: 8.0pt; background: yellow; mso-highlight: yellow; mso-bidi-font-weight: bold;\">&nbsp;</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 3; height: 11.75pt;\">\r\n<td style=\"width: 21.25pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt; height: 11.75pt;\" valign=\"top\" width=\"28\">\r\n<p class=\"a2\" style=\"margin-left: 0cm; text-align: center; text-indent: 0cm; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\" align=\"center\"><!-- [if !supportLists]--><span lang=\"UK\" style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-ansi-language: UK;\"><span style=\"mso-list: Ignore;\">1.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span lang=\"UK\" style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-ansi-language: UK;\">&nbsp;</span></p>\r\n</td>\r\n<td style=\"width: 219.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; background: white; padding: 0cm 5.4pt 0cm 5.4pt; height: 11.75pt;\" valign=\"top\" width=\"293\">\r\n<p style=\"margin-right: 1.45pt; text-align: justify; mso-pagination: none;\"><span lang=\"UK\" style=\"font-size: 12.0pt; font-weight: normal; mso-bidi-font-weight: bold;\">Про підсумки соціально-економічного розвитку області та виконання місцевих бюджетів за 2017 рік.</span></p>\r\n</td>\r\n<td style=\"width: 63.8pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; background: white; padding: 0cm 5.4pt 0cm 5.4pt; height: 11.75pt;\" valign=\"top\" width=\"85\">\r\n<p class=\"MsoNormal\" style=\"text-align: center; margin: 0cm -5.4pt .0001pt -5.4pt;\" align=\"center\"><span lang=\"UK\" style=\"font-size: 12.0pt; mso-bidi-font-weight: bold;\">22.02.2018</span></p>\r\n</td>\r\n<td style=\"width: 148.85pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; background: white; padding: 0cm 5.4pt 0cm 5.4pt; height: 11.75pt;\" valign=\"top\" width=\"198\">\r\n<p class=\"MsoNormal\" style=\"text-align: center; margin: 0cm -3.15pt .0001pt -4.7pt;\" align=\"center\"><span lang=\"UK\" style=\"font-size: 12.0pt;\">Департамент економічного розвитку і торгівлі,</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center; margin: 0cm -3.15pt .0001pt -4.7pt;\" align=\"center\"><span lang=\"UK\" style=\"font-size: 12.0pt;\">Департамент фінансів Сумської обласної державної адміністрації</span></p>\r\n</td>\r\n<td style=\"width: 63.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; background: white; padding: 0cm 5.4pt 0cm 5.4pt; height: 11.75pt;\" valign=\"top\" width=\"85\">\r\n<p class=\"MsoNormal\" style=\"text-align: center; margin: 0cm -5.4pt .0001pt -5.4pt;\" align=\"center\"><span lang=\"UK\" style=\"font-size: 12.0pt; mso-bidi-font-weight: bold;\">13.02.2018</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 4; mso-yfti-lastrow: yes;\">\r\n<td style=\"width: 21.25pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0cm 5.4pt 0cm 5.4pt;\" valign=\"top\" width=\"28\">\r\n<p class=\"a2\" style=\"margin-left: 0cm; text-align: center; text-indent: 0cm; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\" align=\"center\"><!-- [if !supportLists]--><span lang=\"UK\" style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-ansi-language: UK;\"><span style=\"mso-list: Ignore;\">2.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span lang=\"UK\" style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-ansi-language: UK;\">&nbsp;</span></p>\r\n</td>\r\n<td style=\"width: 219.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; background: white; padding: 0cm 5.4pt 0cm 5.4pt;\" valign=\"top\" width=\"293\">\r\n<p class=\"MsoNormal\" style=\"text-align: justify; mso-pagination: none;\"><span lang=\"UK\" style=\"font-size: 12.0pt;\">Про стан житлового будівництва на території області.</span></p>\r\n</td>\r\n<td style=\"width: 63.8pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; background: white; padding: 0cm 5.4pt 0cm 5.4pt;\" valign=\"top\" width=\"85\">\r\n<p class=\"MsoNormal\" style=\"text-align: center; margin: 0cm -5.4pt .0001pt -5.4pt;\" align=\"center\"><span lang=\"UK\" style=\"font-size: 12.0pt; mso-bidi-font-weight: bold;\">22.02.2018</span></p>\r\n</td>\r\n<td style=\"width: 148.85pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; background: white; padding: 0cm 5.4pt 0cm 5.4pt;\" valign=\"top\" width=\"198\">\r\n<p class=\"MsoNormal\" style=\"text-align: center; margin: 0cm -3.15pt .0001pt -4.7pt;\" align=\"center\"><span lang=\"UK\" style=\"font-size: 12.0pt;\">Управління капітального будівництва Сумської обласної державної адміністрації</span></p>\r\n</td>\r\n<td style=\"width: 63.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; background: white; padding: 0cm 5.4pt 0cm 5.4pt;\" valign=\"top\" width=\"85\">\r\n<p class=\"MsoNormal\" style=\"text-align: center; margin: 0cm -5.4pt .0001pt -5.4pt;\" align=\"center\"><span lang=\"UK\" style=\"font-size: 12.0pt; mso-bidi-font-weight: bold;\">13.02.2018</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 'published', '2018-04-23 12:42:08', '2018-04-23 12:42:08');

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, NULL, 1),
(15, 2, 'author_id', 'text', 'Автор', 1, 0, 0, 0, 0, 0, NULL, 2),
(16, 2, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 3),
(17, 2, 'excerpt', 'hidden', 'Краткое описание', 0, 0, 1, 1, 1, 1, NULL, 4),
(18, 2, 'body', 'rich_text_box', 'Содержимое страницы', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:4000\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 6),
(19, 2, 'slug', 'hidden', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 8),
(20, 2, 'meta_description', 'hidden', 'meta_description', 0, 0, 1, 1, 1, 1, NULL, 9),
(21, 2, 'meta_keywords', 'hidden', 'meta_keywords', 0, 0, 1, 1, 1, 1, NULL, 10),
(22, 2, 'status', 'radio_btn', 'Статус', 1, 1, 1, 1, 1, 1, '{\"default\":\"ACTIVE\",\"options\":{\"ACTIVE\":\"ACTIVE\",\"INACTIVE\":\"INACTIVE\"}}', 11),
(23, 2, 'created_at', 'timestamp', 'Время создания', 0, 1, 1, 0, 0, 0, NULL, 12),
(24, 2, 'updated_at', 'timestamp', 'Время обновления', 0, 0, 0, 0, 0, 0, NULL, 13),
(25, 2, 'image', 'hidden', 'Картинка', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"65%\",\"upsize\":true}', 7),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, '', 3),
(29, 3, 'password', 'password', 'password', 0, 0, 0, 1, 1, 0, '', 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(31, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, '', 5),
(32, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 6),
(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(34, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, '', 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(53, 3, 'role_id', 'text', 'role_id', 1, 1, 1, 1, 1, 1, '', 9),
(59, 8, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(60, 8, 'name', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 2),
(61, 8, 'image', 'image', 'Картинка', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"65%\",\"upsize\":true}', 3),
(62, 8, 'created_at', 'timestamp', 'Время создания', 0, 1, 1, 0, 0, 0, NULL, 4),
(63, 8, 'updated_at', 'timestamp', 'Время обновления', 0, 0, 0, 0, 0, 0, NULL, 5),
(64, 9, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(65, 9, 'title', 'text', 'Заголовок', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 2),
(66, 9, 'body', 'rich_text_box', 'Описание статьи', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:4000\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 3),
(67, 9, 'feature', 'checkbox', 'Головна новина', 0, 0, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Звичайна подiя\",\"1\":\"Головна подiя\"}}', 4),
(68, 9, 'status', 'radio_btn', 'Статус', 0, 1, 1, 1, 1, 1, '{\"default\":\"published\",\"options\":{\"published\":\"Опубликованный\",\"pending\":\"В ожидании\",\"closed\":\"Закрыто\"}}', 5),
(69, 9, 'created_at', 'timestamp', 'Время создания', 0, 1, 1, 0, 0, 0, NULL, 6),
(70, 9, 'updated_at', 'timestamp', 'Время обновления', 0, 0, 0, 0, 0, 0, NULL, 7),
(71, 9, 'image', 'image', 'Картинка', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"65%\",\"upsize\":true}', 4),
(72, 10, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(73, 10, 'title', 'text', 'Заголовок', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 2),
(74, 10, 'body', 'rich_text_box', 'Описание анонса', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:4000\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 3),
(75, 10, 'image', 'image', 'Картинка', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"65%\",\"upsize\":true}', 4),
(76, 10, 'status', 'radio_btn', 'Статус', 0, 1, 1, 1, 1, 1, '{\"default\":\"published\",\"options\":{\"published\":\"Опубликованный\",\"pending\":\"В ожидании\",\"closed\":\"Закрыто\"}}', 5),
(77, 10, 'created_at', 'timestamp', 'Время создания', 0, 1, 1, 0, 0, 0, NULL, 6),
(78, 10, 'updated_at', 'timestamp', 'Время обновления', 0, 0, 0, 0, 0, 0, NULL, 7),
(79, 11, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(80, 11, 'name', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 2),
(81, 11, 'image', 'image', 'Картинка', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"65%\",\"upsize\":true}', 3),
(82, 11, 'created_at', 'timestamp', 'Время создания', 0, 1, 1, 0, 0, 0, NULL, 4),
(83, 11, 'updated_at', 'timestamp', 'Время обновления', 0, 0, 0, 0, 0, 0, NULL, 5),
(84, 12, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(85, 12, 'album_id', 'hidden', 'Album Id', 1, 1, 1, 1, 1, 1, NULL, 2),
(86, 12, 'image', 'image', 'Картинка', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"65%\",\"upsize\":true}', 3),
(87, 12, 'title', 'text', 'Название', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 4),
(88, 12, 'created_at', 'timestamp', 'Время создания', 0, 1, 1, 0, 0, 0, NULL, 5),
(89, 12, 'updated_at', 'timestamp', 'Время обновления', 0, 0, 0, 0, 0, 0, NULL, 6),
(90, 12, 'photo_belongsto_album_relationship', 'relationship', 'Альбом', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Album\",\"table\":\"albums\",\"type\":\"belongsTo\",\"column\":\"album_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"albums\",\"pivot\":\"0\"}', 7),
(91, 10, 'author', 'text', 'Автор', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 2),
(92, 9, 'author', 'text', 'Автор', 1, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 2),
(93, 2, 'category', 'select_dropdown', 'Категория', 1, 1, 1, 1, 1, 1, '{\"default\":\"Other pages\",\"options\":{\"Other pages\":\"ДРУГАЯ СТРАНИЦА\",\"DEPARTMENT OF EDUCATION\":\"ВІДДІЛ ОСВІТИ\",\"RUBRICS\":\"РУБРИКИ\",\"PRE-SCHOOL EDUCATION\":\"ДОШКІЛЬНА ОСВІТА\",\"SECONDARY EDUCATION\":\"ЗАГАЛЬНА СЕРЕДНЯ ОСВІТА\",\"PRESCHOOL EDUCATION\":\"ПОЗАШКІЛЬНА ОСВІТА\",\"Regulatory framework\":\"НОРМАТИВНО-ПРАВОВА БАЗА\",\"Access to public information\":\"ДОСТУП ДО ПУБЛIЧНОI IНФОРМАЦII\",\"Appeal of Citizens\":\"ЗВЕРНЕНЯЯ ГРОМАДЯН\"}}', 5),
(94, 13, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(95, 13, 'author', 'text', 'Автор', 1, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 3),
(96, 13, 'title', 'text', 'Заголовок', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 2),
(97, 13, 'body', 'rich_text_box', 'Описание статьи', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 5),
(98, 13, 'status', 'radio_btn', 'Статус', 0, 1, 1, 1, 1, 1, '{\"default\":\"published\",\"options\":{\"published\":\"Опубликованный\",\"pending\":\"В ожидании\",\"closed\":\"Закрыто\"}}', 6),
(99, 13, 'created_at', 'timestamp', 'Время создания', 0, 1, 1, 0, 0, 0, NULL, 7),
(100, 13, 'updated_at', 'timestamp', 'Время обновления', 0, 0, 0, 0, 0, 0, NULL, 8),
(101, 14, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(102, 14, 'author', 'text', 'Автор', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 3),
(103, 14, 'title', 'text', 'Заголовок', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 2),
(104, 14, 'body', 'rich_text_box', 'Описание статьи', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 5),
(105, 14, 'status', 'radio_btn', 'Статус', 0, 1, 1, 1, 1, 1, '{\"default\":\"published\",\"options\":{\"published\":\"Опубликованный\",\"pending\":\"В ожидании\",\"closed\":\"Закрыто\"}}', 6),
(106, 14, 'created_at', 'timestamp', 'Время создания', 0, 1, 1, 0, 0, 0, NULL, 7),
(107, 14, 'updated_at', 'timestamp', 'Время обновления', 0, 0, 0, 0, 0, 0, NULL, 8),
(108, 13, 'image', 'image', 'Картинка', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"65%\",\"upsize\":true}', 4),
(109, 14, 'image', 'image', 'Картинка', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"65%\",\"upsize\":true}', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '2018-04-02 14:26:47', '2018-04-18 14:08:39'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, '2018-04-02 14:26:47', '2018-04-02 14:26:47'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, '2018-04-02 14:26:47', '2018-04-02 14:26:47'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, '2018-04-02 14:26:47', '2018-04-02 14:26:47'),
(8, 'sliders', 'sliders', 'Slider', 'Sliders', 'voyager-play', 'App\\Slider', NULL, NULL, NULL, 1, 0, '2018-04-13 11:12:15', '2018-04-13 11:12:15'),
(9, 'news', 'news', 'News', 'News', 'voyager-news', 'App\\News', NULL, NULL, NULL, 1, 0, '2018-04-17 06:05:40', '2018-04-17 06:05:40'),
(10, 'anounses', 'anounses', 'Anounse', 'Anounses', 'voyager-news', 'App\\Anounse', NULL, NULL, NULL, 1, 0, '2018-04-17 16:15:02', '2018-04-17 16:15:02'),
(11, 'albums', 'albums', 'Album', 'Albums', 'voyager-photo', 'App\\Album', NULL, NULL, NULL, 1, 0, '2018-04-17 16:35:10', '2018-04-17 16:35:10'),
(12, 'photos', 'photos', 'Photo', 'Photos', 'voyager-photos', 'App\\Photo', NULL, NULL, NULL, 1, 0, '2018-04-17 16:41:36', '2018-04-17 16:41:36'),
(13, 'collegiums', 'collegiums', 'Колегії', 'Колегії', 'voyager-news', 'App\\Collegium', NULL, NULL, NULL, 1, 0, '2018-04-23 11:42:04', '2018-04-23 11:42:04'),
(14, 'meetings', 'meetings', 'Совещания', 'Совещания', 'voyager-news', 'App\\Meeting', NULL, NULL, NULL, 1, 0, '2018-04-23 13:20:02', '2018-04-23 13:20:02');

-- --------------------------------------------------------

--
-- Структура таблицы `meetings`
--

CREATE TABLE `meetings` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('published','pending','closed') COLLATE utf8_unicode_ci DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `meetings`
--

INSERT INTO `meetings` (`id`, `author`, `title`, `body`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Админ', 'НОВІ ПОСІБНИКИ ДЛЯ ГРОМАД', '<p style=\"margin: 12px 0px; padding: 0px; color: #404040; font-family: Arial, Helvetica, sans-serif; font-size: 13px; background-color: #ededed; text-align: justify;\"><strong>Рада Європи, Інститут Громадянського Суспільства та Національна академія державного управління при Президентові України підготували чотири навчальні посібники з питань реформування місцевого самоврядування та децентралізації.</strong></p>\r\n<p style=\"margin: 12px 0px; padding: 0px; color: #404040; font-family: Arial, Helvetica, sans-serif; font-size: 13px; background-color: #ededed; text-align: justify;\">Видання сфокусовані на питаннях розвитку об&rsquo;єднаних територіальних громад та місцевого самоврядування в Україні загалом і стануть у пригоді всім, хто залучений до питань місцевого і регіонального розвитку.</p>', '', 'published', '2018-04-23 13:25:59', '2018-04-23 13:25:59');

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-04-02 14:26:48', '2018-04-02 14:26:48');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Панель приладів', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2018-04-02 14:26:48', '2018-04-18 15:43:55', 'voyager.dashboard', 'null'),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2018-04-02 14:26:48', '2018-04-23 13:27:01', 'voyager.media.index', NULL),
(4, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-04-02 14:26:48', '2018-04-02 14:26:48', 'voyager.users.index', NULL),
(6, 1, 'Сторінки', '', '_self', 'voyager-file-text', '#000000', NULL, 5, '2018-04-02 14:26:48', '2018-04-23 13:27:01', 'voyager.pages.index', 'null'),
(7, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-04-02 14:26:48', '2018-04-02 14:26:48', 'voyager.roles.index', NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 6, '2018-04-02 14:26:48', '2018-04-23 13:27:01', NULL, NULL),
(9, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 8, 1, '2018-04-02 14:26:48', '2018-04-23 13:27:01', 'voyager.menus.index', NULL),
(10, 1, 'Database', '', '_self', 'voyager-data', NULL, 8, 2, '2018-04-02 14:26:48', '2018-04-23 13:27:01', 'voyager.database.index', NULL),
(11, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 8, 3, '2018-04-02 14:26:48', '2018-04-23 13:27:01', 'voyager.compass.index', NULL),
(12, 1, 'Налаштування', '', '_self', 'voyager-settings', '#000000', NULL, 7, '2018-04-02 14:26:48', '2018-04-23 13:27:01', 'voyager.settings.index', 'null'),
(13, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 8, 4, '2018-04-02 14:26:48', '2018-04-23 13:27:01', 'voyager.hooks', NULL),
(15, 1, 'Слайдер', '/admin/sliders', '_self', 'voyager-play', '#000000', NULL, 8, '2018-04-13 11:12:15', '2018-04-23 13:27:01', NULL, ''),
(16, 1, 'Новини', '/admin/news', '_self', 'voyager-news', '#000000', NULL, 9, '2018-04-17 06:05:40', '2018-04-23 13:27:01', NULL, ''),
(17, 1, 'Анонси подій', '/admin/anounses', '_self', 'voyager-news', '#000000', NULL, 12, '2018-04-17 16:15:03', '2018-04-23 13:28:43', NULL, ''),
(18, 1, 'Альбоми', '/admin/albums', '_self', 'voyager-photo', '#000000', NULL, 13, '2018-04-17 16:35:10', '2018-04-23 13:27:02', NULL, ''),
(19, 1, 'Фотографії', '/admin/photos', '_self', 'voyager-photos', '#000000', NULL, 14, '2018-04-17 16:41:36', '2018-04-23 13:27:02', NULL, ''),
(20, 1, 'Колегії', '/admin/collegiums', '_self', 'voyager-news', NULL, NULL, 10, '2018-04-23 11:42:04', '2018-04-23 13:27:01', NULL, NULL),
(21, 1, 'Совещания', '/admin/meetings', '_self', 'voyager-news', NULL, NULL, 11, '2018-04-23 13:20:02', '2018-04-23 13:28:43', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(21, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(22, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(23, '2017_08_05_000000_add_group_to_settings_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Admin',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `feature` tinyint(4) DEFAULT '0',
  `status` enum('published','pending','closed') COLLATE utf8_unicode_ci DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `author`, `title`, `body`, `image`, `feature`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'На Сумщине в ДТП пострадал водитель мотороллера', '<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #323232; font-family: site-font, Arial, sans-serif; font-size: 16px; background-color: #f0f0f0;\"><span style=\"box-sizing: border-box;\">В Ахтырке произошло ДТП с участием автомобиля Opel Astra и мотороллера Yamaha Jog, пишет Панорама со ссылкой на отдел коммуникации ГУНП в Сумской области.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #323232; font-family: site-font, Arial, sans-serif; font-size: 16px; background-color: #f0f0f0;\"><span style=\"box-sizing: border-box;\">Управляя автомобилем Opel, 60-летний мужчина допустил столкновение с 40-летним водителем мотороллера. В результате аварии последний получил травмы, с которыми был госпитализирован в хирургию местной больницы. У мужчины диагностировали ушибленную рану переносицы, закрытую черепно-мозговую травму, сотрясение головного мозга и ушиб левого плечевого сустава.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #323232; font-family: site-font, Arial, sans-serif; font-size: 16px; background-color: #f0f0f0;\"><span style=\"box-sizing: border-box;\">Полиция открыла уголовное производство по ч. 1 ст. 286 &laquo;Нарушение правил безопасности дорожного движения или эксплуатации транспорта лицами, управляющими транспортными средствами&raquo;. Причины и обстоятельства аварии выясняются.</span></p>', 'news/April2018/G8EZVIsqTOvzTF14Dt0f.jpg', 0, 'published', '2018-04-17 06:08:23', '2018-04-17 06:22:41'),
(2, 'Admin', 'На Сумщине двое мужчин могут сесть за самовольную вырубку леса', '<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #323232; font-family: site-font, Arial, sans-serif; font-size: 16px; background-color: #f0f0f0;\"><span style=\"box-sizing: border-box;\">На Сумщине работники полиции обнаружили жителей Тростянецкого и Великописаривского районов, которые занимались незаконной вырубкой сосны и ясеня. За содеянное нарушителям грозит уголовная ответственность, сообщает Отдел коммуникации полиции в Сумской области.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #323232; font-family: site-font, Arial, sans-serif; font-size: 16px; background-color: #f0f0f0;\"><span style=\"box-sizing: border-box;\">За последние два дня в ходе проверки полицейские задокументировали два факта похищения древесины твердой породы. Нарушителями оказались двое мужчин - 44-летний житель Великописаривского района 69-летний пенсионер из Тростянецкого района, которые в местных лесных массивах осуществили незаконный выруб деревьев породы &laquo;Акация&raquo; и &laquo;Сосны&raquo;. И если более младший мужчина спилил пять деревьев акации, дедушка совершил незаконную порубку пяти сосен и четырех деревьев акации.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #323232; font-family: site-font, Arial, sans-serif; font-size: 16px; background-color: #f0f0f0;\"><span style=\"box-sizing: border-box;\">Во время беседы с работниками полиции мужчины рассказали, что деревья выбирали для себя, для собственного пользования, выбирая твердые породы.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #323232; font-family: site-font, Arial, sans-serif; font-size: 16px; background-color: #f0f0f0;\"><span style=\"box-sizing: border-box;\">Древесину работники полиции изъяли и устанавливают нанесенный нарушителями убытки. А по данному факту открыли уголовные производства по ч.1 ст.246 Уголовного кодекса Украины &laquo;Незаконная порубка леса&raquo;, которая предусматривает штраф или ограничение или лишение свободы сроком до трех лет.</span></p>', 'news/April2018/bRxvDwU6LmRT0a7k8ooT.jpg', 0, 'published', '2018-04-17 06:10:00', '2018-04-17 06:22:07'),
(3, 'Admin', 'В Сумах планируют обустроить 4 площадки для выгула собак', '<div class=\"row\" style=\"box-sizing: border-box; margin-left: -10px; margin-right: -10px; color: #323232; font-family: site-font, Arial, sans-serif; font-size: 13px; background-color: #f0f0f0;\">\r\n<div class=\"col-xs-12 col-sm-9\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-left: 10px; padding-right: 10px; float: left; width: 710.438px;\">\r\n<div class=\"article-text\" style=\"box-sizing: border-box; margin-bottom: 10px; font-size: 16px; line-height: 1.4;\">\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px;\"><span style=\"box-sizing: border-box;\">В единой системе местных петиций время от времени продолжают появляться обращения с просьбой обустроить специальные площадки для выгула собак. Летом 2016 года, отвечая на петицию о необходимости обустройства площадок для выгула, власть посоветовала собаководам убирать за своими питомцами.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px;\"><span style=\"box-sizing: border-box;\">Зимой 2017 года, рассмотрев очередную петицию, власти пообещали в первом квартале 2018&nbsp;<a style=\"box-sizing: border-box; background-color: transparent; text-decoration-line: none; box-shadow: #90b400 0px -1px inset;\" href=\"https://www.0542.ua/news/1892363\">разработать предложения относительно определения мест расположения площадок для выгула животных</a>, просчитать стоимость работ, а также подготовить соответствующую документацию для финансирования мероприятий по строительству этих объектов благоустройства.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px;\"><span style=\"box-sizing: border-box;\">Чтобы узнать, что было сделано в данном направлении, мы направили запрос в департамент инфраструктуры г. Сумы. Как выяснилось, департамент обработал данный вопрос и определил следующие места, в которых планируется обустроить площадки:</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px;\"><span style=\"box-sizing: border-box;\">- район детского парка &laquo;Сказка&raquo; возле прибрежно-защитной полосы р. Сумка;</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px;\"><span style=\"box-sizing: border-box;\">- район водоема по ул. Интернационалистов;</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px;\"><span style=\"box-sizing: border-box;\">- район железнодорожной дороги по ул. Ковпака;</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px;\"><span style=\"box-sizing: border-box;\">- возле жилых домов №44 А, 44 Б, 44 В, 44 Г по ул. Прокофьева.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px;\"><span style=\"box-sizing: border-box;\">Однако, как сообщают в департаменте инфраструктуры, прежде чем провести работы по определению стоимости специализированных площадок для выгула животных, необходимо чтобы поданные предложения утвердило управление архитектуры и градостроительства. Также они должны утвердить и архитектурное решение объектов благоустройства.</span></p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\" style=\"box-sizing: border-box; margin-left: -10px; margin-right: -10px; color: #323232; font-family: site-font, Arial, sans-serif; font-size: 13px; background-color: #f0f0f0;\">\r\n<div class=\"col-xs-12 col-sm-3\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-left: 10px; padding-right: 10px; float: left; width: 236.813px;\">&nbsp;</div>\r\n<div class=\"col-xs-12 col-sm-9\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-left: 10px; padding-right: 10px; float: left; width: 710.438px;\">\r\n<div class=\"article-photo intext-photo\" style=\"box-sizing: border-box; max-height: none; margin-bottom: 20px; text-align: center; overflow: hidden;\"><img style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; max-height: 100%;\" src=\"https://www.s.0542.ua/s/44/section/newsInText/upload/images/news/intext/000/032/591/3018496816082590758946852109298139n_5ad5a4005e6da.jpg\" alt=\"\" /></div>\r\n</div>\r\n</div>', 'news/April2018/h4WOLX38kZJ02adkbQ7B.jpg', 0, 'published', '2018-04-17 06:10:25', '2018-04-17 06:21:36'),
(4, 'Admin', 'В Сумах некоторые дома остались без воды', '<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #323232; font-family: site-font, Arial, sans-serif; font-size: 16px; background-color: #f0f0f0;\"><span style=\"box-sizing: border-box;\">В связи с проведением аварийно-ремонтных работ на насосной станции третьего подъема сегодня, 17 апреля, с 9:00 до 15:00 прекращено водоснабжение домов №№ 41, 42, 43 по ул. Интернационалистов и дома № 35 по ул. Прокофьева.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #323232; font-family: site-font, Arial, sans-serif; font-size: 16px; background-color: #f0f0f0;\"><span style=\"box-sizing: border-box;\">После завершения работ водоснабжение будет восстановлено.</span></p>', 'news/April2018/GK6cib6pnGAcHSor6C1J.jpg', 1, 'published', '2018-04-17 06:10:46', '2018-04-17 06:20:56');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `category` enum('DEPARTMENT OF EDUCATION','RUBRICS','PRE-SCHOOL EDUCATION','SECONDARY EDUCATION','PRESCHOOL EDUCATION','Regulatory framework','Access to public information','Appeal of Citizens','Other pages') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Other pages',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `category`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(3, 1, 'Керівництво', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'DEPARTMENT OF EDUCATION', NULL, 'kerivnictvo', NULL, NULL, 'ACTIVE', '2018-04-18 14:39:39', '2018-04-18 14:39:39'),
(4, 1, 'Структура', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'DEPARTMENT OF EDUCATION', NULL, 'struktura', NULL, NULL, 'ACTIVE', '2018-04-18 14:41:37', '2018-04-18 14:41:37'),
(5, 1, 'Положення про відділ освіти', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'DEPARTMENT OF EDUCATION', NULL, 'polozhennya-pro-viddil-osviti', NULL, NULL, 'ACTIVE', '2018-04-18 14:42:02', '2018-04-18 14:42:02'),
(6, 1, 'Перелік послуг', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'DEPARTMENT OF EDUCATION', NULL, 'perelik-poslug', NULL, NULL, 'ACTIVE', '2018-04-18 14:42:35', '2018-04-18 14:42:35'),
(7, 1, 'План роботи', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'DEPARTMENT OF EDUCATION', NULL, 'plan-roboti', NULL, NULL, 'ACTIVE', '2018-04-18 14:43:04', '2018-04-18 14:43:04'),
(8, 1, 'Вакансії', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'DEPARTMENT OF EDUCATION', NULL, 'vakansiyi', NULL, NULL, 'ACTIVE', '2018-04-18 14:43:37', '2018-04-18 14:43:37'),
(11, 1, 'Олімпіади, конкурси', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'RUBRICS', NULL, 'olimpiadi-konkursi', NULL, NULL, 'ACTIVE', '2018-04-18 14:44:47', '2018-04-18 14:44:47'),
(12, 1, 'НУШ', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'RUBRICS', NULL, 'nush', NULL, NULL, 'ACTIVE', '2018-04-18 14:45:20', '2018-04-18 14:45:20'),
(13, 1, 'ДПА', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'RUBRICS', NULL, 'dpa', NULL, NULL, 'ACTIVE', '2018-04-18 14:45:38', '2018-04-18 14:45:38'),
(14, 1, 'ЗНО', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'RUBRICS', NULL, 'zno', NULL, NULL, 'ACTIVE', '2018-04-18 14:45:57', '2018-04-18 14:45:57'),
(15, 1, 'БЖД', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'RUBRICS', NULL, 'bzhd', NULL, NULL, 'ACTIVE', '2018-04-18 14:46:11', '2018-04-18 14:46:11'),
(16, 1, 'Виховна робота', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'RUBRICS', NULL, 'vihovna-robota', NULL, NULL, 'ACTIVE', '2018-04-18 14:46:33', '2018-04-18 14:46:33'),
(17, 1, 'Психологічна служба', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'RUBRICS', NULL, 'psihologichna-sluzhba', NULL, NULL, 'ACTIVE', '2018-04-18 14:47:02', '2018-04-18 14:47:02'),
(18, 1, 'Спортивне життя', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'RUBRICS', NULL, 'sportivne-zhittya', NULL, NULL, 'ACTIVE', '2018-04-18 14:47:25', '2018-04-18 14:47:25'),
(19, 1, 'Мережа закладів', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'PRE-SCHOOL EDUCATION', NULL, 'merezha-zakladiv', NULL, NULL, 'ACTIVE', '2018-04-18 14:47:49', '2018-04-18 14:47:49'),
(20, 1, 'Методичні рекомендації щодо організації освітнього процесу', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'PRE-SCHOOL EDUCATION', NULL, 'metodichni-rekomendaciyi-shodo-organizaciyi-osvitn-ogo-procesu', NULL, NULL, 'ACTIVE', '2018-04-18 14:48:09', '2018-04-18 14:48:09'),
(22, 1, 'Мережа закладів', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'SECONDARY EDUCATION', NULL, 'merezha-zakladiv', NULL, NULL, 'ACTIVE', '2018-04-18 14:49:11', '2018-04-18 14:49:11'),
(23, 1, 'Методичні рекомендації щодо організації освітнього процесу', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'SECONDARY EDUCATION', NULL, 'metodichni-rekomendaciyi-shodo-organizaciyi-osvitn-ogo-procesu', NULL, NULL, 'ACTIVE', '2018-04-18 14:49:35', '2018-04-18 14:49:35'),
(24, 1, 'Опорні школи', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'SECONDARY EDUCATION', NULL, 'oporni-shkoli', NULL, NULL, 'ACTIVE', '2018-04-18 14:49:58', '2018-04-18 14:49:58'),
(25, 1, 'Мережа закладів', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'PRESCHOOL EDUCATION', NULL, 'merezha-zakladiv', NULL, NULL, 'ACTIVE', '2018-04-18 14:50:24', '2018-04-18 14:50:24'),
(26, 1, 'Методичні рекомендації щодо організації освітнього процесу', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'PRESCHOOL EDUCATION', NULL, 'metodichni-rekomendaciyi-shodo-organizaciyi-osvitn-ogo-procesu', NULL, NULL, 'ACTIVE', '2018-04-18 14:51:03', '2018-04-18 14:51:03'),
(27, 1, 'Закони', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'Regulatory framework', NULL, 'zakoni', NULL, NULL, 'ACTIVE', '2018-04-18 14:51:36', '2018-04-18 14:51:36'),
(28, 1, 'Укази Президента', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'Regulatory framework', NULL, 'zakoni', NULL, NULL, 'ACTIVE', '2018-04-18 14:51:36', '2018-04-18 14:51:36'),
(29, 1, 'Постанови КМУ', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'Regulatory framework', NULL, 'zakoni', NULL, NULL, 'ACTIVE', '2018-04-18 14:51:36', '2018-04-18 14:51:36'),
(30, 1, 'Накази ', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'Regulatory framework', NULL, 'zakoni', NULL, NULL, 'ACTIVE', '2018-04-18 14:51:36', '2018-04-18 14:51:36'),
(31, 1, 'Нормативні акти', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'Access to public information', NULL, 'normativni-akti', NULL, NULL, 'ACTIVE', '2018-04-18 14:53:24', '2018-04-18 14:53:24'),
(32, 1, 'Накази відділу освіти з основної діяльності', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'Access to public information', NULL, 'normativni-akti', NULL, NULL, 'ACTIVE', '2018-04-18 14:53:24', '2018-04-18 14:53:24'),
(33, 1, 'Програми', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'Access to public information', NULL, 'normativni-akti', NULL, NULL, 'ACTIVE', '2018-04-18 14:53:24', '2018-04-18 14:53:24'),
(34, 1, 'Нормативні акти', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'Appeal of Citizens', NULL, 'normativni-akti', NULL, NULL, 'ACTIVE', '2018-04-18 14:54:20', '2018-04-18 14:54:20');
INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `category`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(35, 1, 'Графік прийому', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'Appeal of Citizens', NULL, 'normativni-akti', NULL, NULL, 'ACTIVE', '2018-04-18 14:54:20', '2018-04-18 14:54:20'),
(36, 1, 'Інформація про роботу зі зверненнями', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'Appeal of Citizens', NULL, 'normativni-akti', NULL, NULL, 'ACTIVE', '2018-04-18 14:54:20', '2018-04-18 14:54:20'),
(37, 1, 'Державнi Закупiвлi', NULL, '<h1 style=\"margin: 0px; padding: 4px 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 14px; color: #333333; font-family: Arial, Helvetica, sans-serif;\">Віце-прем\'єр-міністр з питань європейської та євроатлантичної інтеграції України</h1>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Відповідно до розпорядження Голови Верховної Ради України від 10 листопада 2014 року № 713 &laquo;Деякі питання проведення перевірки відповідно до&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1682-18\">Закону України &laquo;Про очищення влади&raquo;</a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;з 10 листопада Апаратом Верховної Ради України розпочато перевірку посадових осіб, які призначаються та звільняються з посад Парламентом. Перевірка проводиться протягом листопада-грудня 2014 року згідно з планом, який затверджений&nbsp;</span><a style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #2474b2; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\" href=\"http://zakon.rada.gov.ua/go/1025-2014-%D1%80\">розпорядженням Кабінету Міністрів України від 16 жовтня 2014 року № 1025-р &laquo;Про затвердження плану проведення перевірок відповідно до Закону України &laquo;Про очищення влади&raquo;</a></p>', 'Other pages', NULL, 'derzhavni-zakupivli', NULL, NULL, 'ACTIVE', '2018-04-18 15:29:32', '2018-04-18 15:29:32');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(2, 'browse_database', NULL, '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(3, 'browse_media', NULL, '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(4, 'browse_compass', NULL, '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(5, 'browse_menus', 'menus', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(6, 'read_menus', 'menus', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(7, 'edit_menus', 'menus', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(8, 'add_menus', 'menus', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(9, 'delete_menus', 'menus', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(10, 'browse_pages', 'pages', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(11, 'read_pages', 'pages', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(12, 'edit_pages', 'pages', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(13, 'add_pages', 'pages', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(14, 'delete_pages', 'pages', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(15, 'browse_roles', 'roles', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(16, 'read_roles', 'roles', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(17, 'edit_roles', 'roles', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(18, 'add_roles', 'roles', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(19, 'delete_roles', 'roles', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(20, 'browse_users', 'users', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(21, 'read_users', 'users', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(22, 'edit_users', 'users', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(23, 'add_users', 'users', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(24, 'delete_users', 'users', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(35, 'browse_settings', 'settings', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(36, 'read_settings', 'settings', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(37, 'edit_settings', 'settings', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(38, 'add_settings', 'settings', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(39, 'delete_settings', 'settings', '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(40, 'browse_hooks', NULL, '2018-04-02 14:26:48', '2018-04-02 14:26:48', NULL),
(46, 'browse_sliders', 'sliders', '2018-04-13 11:12:15', '2018-04-13 11:12:15', NULL),
(47, 'read_sliders', 'sliders', '2018-04-13 11:12:15', '2018-04-13 11:12:15', NULL),
(48, 'edit_sliders', 'sliders', '2018-04-13 11:12:15', '2018-04-13 11:12:15', NULL),
(49, 'add_sliders', 'sliders', '2018-04-13 11:12:15', '2018-04-13 11:12:15', NULL),
(50, 'delete_sliders', 'sliders', '2018-04-13 11:12:15', '2018-04-13 11:12:15', NULL),
(51, 'browse_news', 'news', '2018-04-17 06:05:40', '2018-04-17 06:05:40', NULL),
(52, 'read_news', 'news', '2018-04-17 06:05:40', '2018-04-17 06:05:40', NULL),
(53, 'edit_news', 'news', '2018-04-17 06:05:40', '2018-04-17 06:05:40', NULL),
(54, 'add_news', 'news', '2018-04-17 06:05:40', '2018-04-17 06:05:40', NULL),
(55, 'delete_news', 'news', '2018-04-17 06:05:40', '2018-04-17 06:05:40', NULL),
(56, 'browse_anounses', 'anounses', '2018-04-17 16:15:02', '2018-04-17 16:15:02', NULL),
(57, 'read_anounses', 'anounses', '2018-04-17 16:15:02', '2018-04-17 16:15:02', NULL),
(58, 'edit_anounses', 'anounses', '2018-04-17 16:15:02', '2018-04-17 16:15:02', NULL),
(59, 'add_anounses', 'anounses', '2018-04-17 16:15:02', '2018-04-17 16:15:02', NULL),
(60, 'delete_anounses', 'anounses', '2018-04-17 16:15:02', '2018-04-17 16:15:02', NULL),
(61, 'browse_albums', 'albums', '2018-04-17 16:35:10', '2018-04-17 16:35:10', NULL),
(62, 'read_albums', 'albums', '2018-04-17 16:35:10', '2018-04-17 16:35:10', NULL),
(63, 'edit_albums', 'albums', '2018-04-17 16:35:10', '2018-04-17 16:35:10', NULL),
(64, 'add_albums', 'albums', '2018-04-17 16:35:10', '2018-04-17 16:35:10', NULL),
(65, 'delete_albums', 'albums', '2018-04-17 16:35:10', '2018-04-17 16:35:10', NULL),
(66, 'browse_photos', 'photos', '2018-04-17 16:41:36', '2018-04-17 16:41:36', NULL),
(67, 'read_photos', 'photos', '2018-04-17 16:41:36', '2018-04-17 16:41:36', NULL),
(68, 'edit_photos', 'photos', '2018-04-17 16:41:36', '2018-04-17 16:41:36', NULL),
(69, 'add_photos', 'photos', '2018-04-17 16:41:36', '2018-04-17 16:41:36', NULL),
(70, 'delete_photos', 'photos', '2018-04-17 16:41:36', '2018-04-17 16:41:36', NULL),
(71, 'browse_collegiums', 'collegiums', '2018-04-23 11:42:04', '2018-04-23 11:42:04', NULL),
(72, 'read_collegiums', 'collegiums', '2018-04-23 11:42:04', '2018-04-23 11:42:04', NULL),
(73, 'edit_collegiums', 'collegiums', '2018-04-23 11:42:04', '2018-04-23 11:42:04', NULL),
(74, 'add_collegiums', 'collegiums', '2018-04-23 11:42:04', '2018-04-23 11:42:04', NULL),
(75, 'delete_collegiums', 'collegiums', '2018-04-23 11:42:04', '2018-04-23 11:42:04', NULL),
(76, 'browse_meetings', 'meetings', '2018-04-23 13:20:02', '2018-04-23 13:20:02', NULL),
(77, 'read_meetings', 'meetings', '2018-04-23 13:20:02', '2018-04-23 13:20:02', NULL),
(78, 'edit_meetings', 'meetings', '2018-04-23 13:20:02', '2018-04-23 13:20:02', NULL),
(79, 'add_meetings', 'meetings', '2018-04-23 13:20:02', '2018-04-23 13:20:02', NULL),
(80, 'delete_meetings', 'meetings', '2018-04-23 13:20:02', '2018-04-23 13:20:02', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(10, 3),
(11, 1),
(11, 3),
(12, 1),
(12, 3),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(35, 1),
(35, 3),
(36, 1),
(36, 3),
(37, 1),
(37, 3),
(38, 1),
(39, 1),
(40, 1),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(54, 3),
(55, 1),
(55, 3),
(56, 1),
(56, 3),
(57, 1),
(57, 3),
(58, 1),
(58, 3),
(59, 1),
(59, 3),
(60, 1),
(60, 3),
(61, 1),
(61, 3),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(64, 3),
(65, 1),
(65, 3),
(66, 1),
(66, 3),
(67, 1),
(67, 3),
(68, 1),
(68, 3),
(69, 1),
(69, 3),
(70, 1),
(70, 3),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `album_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `photos`
--

INSERT INTO `photos` (`id`, `album_id`, `image`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'photos/April2018/m99sP4OyeJ0lnR2vrJav.jpg', NULL, '2018-04-17 16:43:48', '2018-04-17 16:43:48'),
(2, 1, 'photos/April2018/dxZzqjXUumc1NnHkfHuy.jpg', NULL, '2018-04-17 16:43:56', '2018-04-17 16:43:56'),
(3, 1, 'photos/April2018/xRxEf0nivNsY2ARna1Mk.jpg', NULL, '2018-04-17 16:44:51', '2018-04-17 16:44:51'),
(4, 1, 'photos/April2018/UQMsdJfK0POimXzVb5nx.jpeg', NULL, '2018-04-17 16:45:00', '2018-04-17 16:45:00'),
(5, 1, 'photos/April2018/lr2SozGYEe5ekP0Lr2AW.jpg', NULL, '2018-04-17 16:45:43', '2018-04-17 16:45:43'),
(6, 1, 'photos/April2018/faZ8kVbCZO2dt3yWoF6Z.jpg', NULL, '2018-04-17 16:45:52', '2018-04-17 16:45:52'),
(7, 1, 'photos/April2018/rBXxFfDxgA1X6YQLjhIi.jpg', NULL, '2018-04-17 16:46:52', '2018-04-17 16:46:52'),
(8, 1, 'photos/April2018/hMHX4kwRtk0QM4ZrKFU6.jpg', NULL, '2018-04-17 16:47:02', '2018-04-17 16:47:02'),
(9, 1, 'photos/April2018/XwEX0PdaG3RBwMuZCJxQ.jpg', NULL, '2018-04-17 16:47:38', '2018-04-17 16:47:38'),
(10, 1, 'photos/April2018/SbTbcEtpYcp0xAfod4Tj.jpg', NULL, '2018-04-17 16:47:48', '2018-04-17 16:47:48'),
(11, 1, 'photos/April2018/o1h8h4dEWPM9ILrVv36X.jpg', NULL, '2018-04-17 16:47:59', '2018-04-17 16:47:59'),
(14, 1, 'photos/April2018/wY617GIoIQmJRs5bi6Rq.jpg', NULL, '2018-04-17 17:23:59', '2018-04-17 17:23:59'),
(15, 1, 'photos/April2018/5iF3IMmvTwObcBbDAmO8.jpg', NULL, '2018-04-17 17:24:38', '2018-04-17 17:24:38'),
(16, 1, 'photos/April2018/xud97XeM6OR3otSeGPdG.jpg', NULL, '2018-04-25 12:57:12', '2018-04-25 12:57:12'),
(18, 6, 'photos/April2018/Av4pLRdd4jxoIU5sWd1q.jpg', 'Альтанка', '2018-04-25 13:00:11', '2018-04-25 13:00:11');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-04-02 14:26:48', '2018-04-02 14:26:48'),
(2, 'user', 'Normal User', '2018-04-02 14:26:48', '2018-04-02 14:26:48'),
(3, 'moderator', 'Moderator', '2018-04-18 15:42:37', '2018-04-18 15:42:37');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Відділ освіти', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Відділ освіти', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/April2018/ddHODMzRMNx1hLKxblde.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/April2018/s2pb4Otsxm8y8Yyq7TQb.png', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Відділ освіти', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Відділ освіти', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings/April2018/C91YQGDbTIQkiP1TS7FK.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/April2018/WrdA84cgp49sLZySzeI8.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin'),
(11, 'site.facebook_link', 'facebook', 'http://www.facebook.com/', NULL, 'text', 6, 'Site'),
(12, 'site.twitter_link', 'twitter', 'https://twitter.com/?lang=en', NULL, 'text', 7, 'Site'),
(13, 'site.youtube_link', 'youtube', 'https://www.youtube.com/', NULL, 'text', 8, 'Site'),
(14, 'site.rss_link', 'rss', 'https://en.wikipedia.org/wiki/RSS', NULL, 'text', 9, 'Site');

-- --------------------------------------------------------

--
-- Структура таблицы `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, '1', 'sliders/April2018/DQxsPhFEspd5biFKglyA.png', '2018-04-13 11:15:33', '2018-04-13 11:15:33'),
(2, '2', 'sliders/April2018/fj77uQUliCg4JpIkEzYR.png', '2018-04-13 11:17:53', '2018-04-13 11:17:53');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$6MgBiipg.s8TLvWcsSn1BOXcL6IqT8/NjTo39ykDDLt66ouAt4a4S', '0EoUE39q96OwIooW15vSPUACUJjG0L53Nwbc2MqRxGwmwL58D5molbe3JcNW', '2018-04-02 14:27:07', '2018-04-02 14:27:07'),
(2, 3, 'moderator', 'rda@admin.com', 'users/April2018/gnPotnE3Eq065YhTq565.png', '$2y$10$XC2kYNQSeQTJj7//vLmbkuY23DAyYBhShOZcffkSzabTZF.f6YPKK', '7euFmhnlI562IiBgTgIETCWTWAbsSZETg0SYwFyyzW0zv9ES4i8AqwukPQOI', '2018-04-18 15:43:16', '2018-04-18 15:43:16');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `anounses`
--
ALTER TABLE `anounses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `collegiums`
--
ALTER TABLE `collegiums`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `anounses`
--
ALTER TABLE `anounses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `collegiums`
--
ALTER TABLE `collegiums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблицы `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT для таблицы `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблицы `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

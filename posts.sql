-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-02-2019 a las 05:37:40
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reddit`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `banner_img` text COLLATE utf8_spanish2_ci NOT NULL,
  `public_description` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `community_icon` text COLLATE utf8_spanish2_ci NOT NULL,
  `banner_background_image` text COLLATE utf8_spanish2_ci NOT NULL,
  `display_name` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `id_api` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `title` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `subscribers` int(11) NOT NULL,
  `created` text COLLATE utf8_spanish2_ci NOT NULL,
  `advertiser_category` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `header_title` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `primary_color` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `display_name_prefixed` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `banner_img`, `public_description`, `community_icon`, `banner_background_image`, `display_name`, `id_api`, `title`, `subscribers`, `created`, `advertiser_category`, `header_title`, `name`, `primary_color`, `display_name_prefixed`) VALUES
(1, 'https://b.thumbs.redditmedia.com/PXt8GnqdYu-9lgzb3iesJBLN21bXExRV1A45zdw4sYE.png', '/r/AskReddit is the place to ask and answer thought-provoking questions.', 'https://styles.redditmedia.com/t5_2qh1i/styles/communityIcon_tijjpyw1qe201.png', '', 'AskReddit', '2qh1i', 'Ask Reddit...', 21510156, '1201261935', 'Lifestyles', 'Ass Credit ', 't5_2qh1i', '#646d73', 'r/AskReddit'),
(2, 'https://a.thumbs.redditmedia.com/kcKnQt4TInkTARtKtsyRhvs5g3bdkVXq8wSJF6gDH20.png', '/r/Politics is for news and discussion about U.S. politics.', 'https://styles.redditmedia.com/t5_2cneq/styles/communityIcon_fy84mdgh75201.jpg', 'https://styles.redditmedia.com/t5_2cneq/styles/bannerBackgroundImage_6yzzdjhguh521.jpeg', 'politics', '2cneq', 'Politics', 4687085, '1186406199', 'Lifestyles', 'The Place for U.S. Politics ', 't5_2cneq', '#205493', 'r/politics'),
(3, 'https://a.thumbs.redditmedia.com/QDs8lkt6ai9dxqNmhO8ura3k4H1JTFW5CtlBVSBURj4.png', 'The_Donald is a never-ending rally dedicated to the 45th President of the United States, Donald J. T', 'https://styles.redditmedia.com/t5_38unr/styles/communityIcon_nticc5f7pcg01.png', 'https://styles.redditmedia.com/t5_38unr/styles/bannerBackgroundImage_5tnncx4yi0f21.png', 'The_Donald', '38unr', 'The Donald - America First!', 711236, '1435476873', '', 'MAGA ', 't5_38unr', '#ffffff', 'r/The_Donald'),
(4, '', 'A place for major news from around the world, excluding US-internal news. ', '', 'https://styles.redditmedia.com/t5_2qh13/styles/bannerBackgroundImage_5q0f5lsk6pu01.png', 'worldnews', '2qh13', 'World News', 20505205, '1201259919', 'Lifestyles', 'News from Planet Earth ', 't5_2qh13', '#0079d3', 'r/worldnews'),
(5, 'https://a.thumbs.redditmedia.com/96EAv-DarsnBFuzx3_j89-dQtWb_r_p317JyClwMN38.png', 'All things NBA basketball.', 'https://styles.redditmedia.com/t5_2qo4s/styles/communityIcon_1podsfdai4301.png', 'https://styles.redditmedia.com/t5_2qo4s/styles/bannerBackgroundImage_kvoncwazmrn01.png', 'nba', '2qo4s', 'NBA', 1854576, '1225851303', 'Sports', 'null ', 't5_2qo4s', '#ffa500', 'r/nba'),
(6, '', 'The best place for video content of all kinds. Please read the sidebar below for our rules.', '', '', 'videos', '2qh1e', '/r/videos', 19550675, '1201261036', 'Entertainment', 'Buffering Mouseover Text...22% ', 't5_2qh1e', '#ea0027', 'r/videos'),
(7, 'https://a.thumbs.redditmedia.com/9zfV0uAe-z008QZ0NJnHQ34o30cmLCN9-qBCgAZGcc0.png', 'Welcome to r/Funny: reddits largest humour depository', '', '', 'funny', '2qh33', 'funny', 22875155, '1201271756', 'Entertainment', 'null ', 't5_2qh33', '', 'r/funny'),
(8, '', 'You learn something new every day; what did you learn today? Submit interesting and specific facts a', '', '', 'todayilearned', '2qqjc', 'Today I Learned (TIL)', 20288492, '1230475619', 'Lifestyles', 'TIL: 20 Million Learners! ', 't5_2qqjc', '', 'r/todayilearned'),
(9, 'https://b.thumbs.redditmedia.com/wFhPgLftkHIoCXQzvNA08sFsI0u-aUNbVt2fviFY1Xg.png', 'The football subreddit. News, results and discussion about the beautiful game. ', '', '', 'soccer', '2qi58', 'The back page of the internet ', 1325220, '1211915203', 'Sports', 'The front page ', 't5_2qi58', '#1d4169', 'r/soccer'),
(10, 'https://b.thumbs.redditmedia.com/R1aCktUBgjwjtwfeZWNwpXAV5SoooU699xeRS0lBVBo.png', 'A forum for all things college football. Primarily focused on NCAA football, discussion is welcome o', '', 'https://styles.redditmedia.com/t5_2qm9d/styles/bannerBackgroundImage_8zemw65d8mb21.png', 'CFB', '2qm9d', 'The Internets Tailgate', 561247, '1220965349', 'Sports', 'null ', 't5_2qm9d', '#0c7f0b', 'r/CFB'),
(11, '', 'A place to share photographs and pictures.', '', '', 'pics', '2qh0u', 'Reddit Pics', 20742123, '1201249869', 'Lifestyles', 'Something Clever ', 't5_2qh0u', '#cee3f8', 'r/pics'),
(12, '', 'A subreddit for (almost) anything related to games - video games, board games, card games, etc. (but', '', 'https://styles.redditmedia.com/t5_2qh03/styles/bannerBackgroundImage_36bsu8h3urx11.png', 'gaming', '2qh03', 'r/gaming', 20761099, '1190083405', 'Games', 'Games! Board, tabletop, mobile, cards, consoles, arcades & computer. We all play together! ', 't5_2qh03', '#373c3f', 'r/gaming'),
(13, '', 'News & Discussion about Major Motion Pictures', '', '', 'movies', '2qh3s', 'Movie News and Discussion', 19495541, '1201272750', 'Entertainment', 'Movies! ', 't5_2qh3s', '#349e48', 'r/movies'),
(14, 'https://b.thumbs.redditmedia.com/WFgeymV_hst-gtDexMkHnD8o3LmUSY96L2GZjc-K1bc.png', '/r/news is: real news articles, primarily but not exclusively, news relating to the United States an', '', '', 'news', '2qh3l', 'All news, US and international.', 17622759, '1201272565', 'Lifestyles', 'Logo credit: u/imnotgoats ', 't5_2qh3l', '', 'r/news'),
(15, '', 'Funny, animated gifs - your favorite computer file type! Officially pronounced with a hard \"J\"', '', '', 'gifs', '2qt55', '.gifs - funny, animated gifs for your viewing pleasure', 17728874, '1234635407', 'Lifestyles', '/r/gifs ', 't5_2qt55', '#0099ff', 'r/gifs'),
(16, '', 'NFL: National Football League News & Discussion https://www.reddit.com/r/nfl/comments/ ', '', 'https://styles.redditmedia.com/t5_2qmg3/styles/bannerBackgroundImage_wdzmvpexdyp01.png', 'nfl', '2qmg3', 'NFL: National Football League Discussion', 1123134, '1221310854', 'Sports', 'NFL news and discussion ', 't5_2qmg3', '#1b487b', 'r/nfl'),
(17, '', 'Black people being hilarious on social media', '', '', 'BlackPeopleTwitter', '33x33', 'Black Twitter ', 2754290, '1412763304', '', 'Black Twitter ', 't5_33x33', '', 'r/BlackPeopleTwitter'),
(18, '', 'Aww, cripes. I didnt know Id have to write a description. How many words is that so far, like a hund', '', '', 'mildlyinteresting', '2ti4h', 'For photos that are, you know, mildly interesting', 15504804, '1328453681', 'Lifestyles', 'Hrmmmm ', 't5_2ti4h', '#6ca3c4', 'r/mildlyinteresting'),
(19, 'https://a.thumbs.redditmedia.com/waOg6y18VZWYR3j4b_-nh1LugPP1jsU8HHSncdIh_F8.png', 'This is a subreddit devoted to League of Legends.', '', 'https://styles.redditmedia.com/t5_2rfxx/styles/bannerBackgroundImage_1y4t46cjb6v11.png', 'leagueoflegends', '2rfxx', 'Hi, Kobe!', 2362599, '1263451148', 'Games', 'Thanks to /u/thekonster for the snoos! ', 't5_2rfxx', '#646d73', 'r/leagueoflegends'),
(20, 'https://a.thumbs.redditmedia.com/5-pbhynSeq6Vvo_rYYvW32xjbRCy2_TkxKH9Urg-Zd8.png', 'Things that make you go AWW! Like puppies, bunnies, babies, and so on... A place for really cute pic', 'https://styles.redditmedia.com/t5_2qh1o/styles/communityIcon_vzx333xor7101.png', 'https://styles.redditmedia.com/t5_2qh1o/styles/bannerBackgroundImage_wmbf6g1dei301.png', 'aww', '2qh1o', 'A subreddit for cute and cuddly pictures', 19438776, '1201262822', 'Lifestyles', 'Fun fact: youre on reddit right now! ', 't5_2qh1o', '#000000', 'r/aww'),
(21, '', 'Things that make you say \"What the F*ck\". ', 'https://styles.redditmedia.com/t5_2qh61/styles/communityIcon_mdifybb3r2z01.png', '', 'WTF', '2qh61', 'WTF?!', 5503865, '1201297459', '', 'What. The. Fuck. ', 't5_2qh61', '#2a2a2a', 'r/WTF'),
(22, 'https://b.thumbs.redditmedia.com/VYMI72Hm9FP8byDs0Ki_5xDtFvYkyQPEjLBUWbiE9QM.png', 'A subreddit for sharing those miniature epiphanies you have that highlight the oddities within the f', 'https://styles.redditmedia.com/t5_2szyo/styles/communityIcon_z7dkyeif8kzz.png', '', 'Showerthoughts', '2szyo', 'Showerthoughts', 16283606, '1319001919', 'Lifestyles', 'null ', 't5_2szyo', '#57c4c7', 'r/Showerthoughts'),
(23, '', '/r/Relationships is a community built around helping people and the goal of providing a platform for', '', '', 'relationships', '2qjvn', 'Relationships', 2203196, '1215671186', 'Lifestyles', ' They arent fighting, they are singing Christian Rock. ', 't5_2qjvn', '', 'r/relationships'),
(24, 'https://a.thumbs.redditmedia.com/l-QQmgo4sImdpTIg2_WsOibdhq_QovghkAWO5E5rA18.png', 'selfies of the soul', '', 'https://styles.redditmedia.com/t5_2vegg/styles/bannerBackgroundImage_9feahkmn2ry11.png', 'me_irl', '2vegg', 'selfies of the soul', 1980150, '1351315668', '', 'devtesla4evr ', 't5_2vegg', '', 'r/me_irl'),
(25, '', 'For all things technology.', '', '', 'technology', '2qh16', 'Technology', 7235654, '1201260475', 'Local', 'beep boop ', 't5_2qh16', '', 'r/technology');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

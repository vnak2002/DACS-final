-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2023 at 09:49 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music_website_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `bio` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `bio`, `user_id`, `image`) VALUES
(1, 'Alan Walker', 'This is AW', 1, 'uploads/03.jpg'),
(2, 'Eminem', 'This is bio', 1, 'uploads/06.jpg'),
(3, 'Imagine Dragons', '', 1, 'uploads/08.jpg'),
(4, 'Doja Cat', '', 1, 'uploads/02.jpg'),
(5, 'The Weeknd', '', 1, 'uploads/The Weeknd Releases Deluxe Version of \'After Hours\' - Pursuit Of Dopeness.jpg'),
(6, 'Bruno Mars', '', 1, 'uploads/Bruno Mars Wallpaper Lockscreen.jpg'),
(7, 'BLACK PINK', '', 1, 'uploads/BLACK PINK.jpg'),
(8, 'Adele', 'This is bio', 1, 'uploads/She\'s Back! All 12 Songs From Adele\'s \'30\' Land on Billboard Hot 100.png'),
(9, 'Harry Beijing', '', 1, 'uploads/98000552_160925818802332_4747068794961133568_n.jpg'),
(10, 'Ambatukam', '', 1, 'uploads/342217983_3596782120554290_6988136418096605222_n.jpg'),
(11, '710', '', 1, 'uploads/alexey-egorov-slavery.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(30) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `disabled`) VALUES
(1, 'EDM', 0),
(2, 'R&B', 0),
(3, 'Pop', 0),
(4, 'Hip-Hop', 0),
(5, 'K-Pop', 0),
(6, 'Rock', 0),
(7, 'Funk', 0),
(8, 'Jazz', 0),
(10, 'Làng gốm Bát Tràng', 0),
(11, 'Instrument', 0);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `image` varchar(1024) NOT NULL,
  `file` varchar(1024) NOT NULL,
  `category_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `views` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `user_id`, `artist_id`, `image`, `file`, `category_id`, `date`, `views`, `slug`, `featured`) VALUES
(1, 'Alone', 1, 1, 'uploads/03.jpg', 'uploads/y2mate.com - Alan Walker  Alone.mp3', 1, '2023-06-14 19:33:53', 3, 'alone', 0),
(2, 'Woman', 1, 4, 'uploads/02.jpg', 'uploads/y2mate.com - Doja Cat  Woman Lyrics.mp3', 2, '2023-06-14 19:45:14', 0, 'woman', 0),
(3, 'Believer', 1, 3, 'uploads/08.jpg', 'uploads/y2mate.com - Imagine Dragons  Believer Lyrics.mp3', 3, '2023-06-14 19:54:45', 0, 'believer', 0),
(4, 'Godzilla', 1, 2, 'uploads/06.jpg', 'uploads/y2mate.com - Eminem  Godzilla Lyrics ft Juice WRLD.mp3', 4, '2023-06-14 19:56:41', 0, 'godzilla', 0),
(5, 'Talking To The Moon', 1, 6, 'uploads/Bruno Mars Wallpaper Lockscreen.jpg', 'uploads/y2mate.com - Bruno Mars  Talking To The Moon Lyrics.mp3', 3, '2023-06-14 20:23:15', 3, 'talking-to-the-moon', 0),
(6, 'Shut Down', 1, 7, 'uploads/BLACK PINK.jpg', 'uploads/y2mate.com - BLACKPINK  Shut Down Official Audio.mp3', 5, '2023-06-14 20:25:55', 0, 'shut-down', 0),
(7, 'Set Fire To The Rain  Adele', 1, 8, 'uploads/She\'s Back! All 12 Songs From Adele\'s \'30\' Land on Billboard Hot 100.png', 'uploads/y2mate.com - Set Fire To The Rain  Adele Lyrics .mp3', 3, '2023-06-14 20:32:21', 5, 'set-fire-to-the-rain-adele', 0),
(8, 'Avans', 1, 9, 'uploads/325775776_1160543301276329_4099242399688681047_n.jpg', 'uploads/y2mate.com - Cytus II Avans  Alb Official.mp3', 1, '2023-06-14 20:50:57', 2, 'avans', 0),
(9, 'Lily', 1, 1, 'uploads/03.jpg', 'uploads/y2mate.com - Alan Walker K391  Emelie Hollow  Lily Lyrics.mp3', 1, '2023-06-14 21:00:47', 0, 'lily', 0),
(10, 'A Stranger I Remain', 1, 10, 'uploads/150 Inspirational Metal Gear solid Wallpaper android This Month.jpg', 'uploads/y2mate.com - Metal Gear Rising  A Stranger I Remain Sly Shinobi Mix.mp3', 6, '2023-06-14 21:04:08', 0, 'a-stranger-i-remain', 0),
(11, 'I\'m My Own Master Now', 1, 10, 'uploads/150 Inspirational Metal Gear solid Wallpaper android This Month.jpg', 'uploads/y2mate.com - Metal Gear Rising  Im My Own Master Now Sly Shinobi Mix.mp3', 6, '2023-06-14 21:06:58', 0, 'im-my-own-master-now', 0),
(12, 'Bất Vấn Biệt Ly Ciaga', 1, 9, 'uploads/294319323_746320179821472_4115355894705153866_n.jpg', 'uploads/y2mate.com - 不问cigar不问别离.mp3', 10, '2023-06-14 21:10:18', 0, '', 0),
(13, 'Hết cứu', 1, 9, 'uploads/353053663_658355336305528_7199279181850237121_n.jpg', 'uploads/y2mate.com - ÔNG CHÁU ƠI VỀ ĐỘI CỦA CHÚ  WANGANH REMIX NHẠC NỀN HOT TREND TIKTOK VN CỰC 2022  NEWT MUSIC .mp3', 1, '2023-06-14 21:18:42', 0, '', 0),
(14, '4 Beautiful Soundtracks', 1, 11, 'uploads/06eb0467-125e-4019-b17f-c99625b27824.jpg', 'uploads/y2mate.com - 4 Beautiful Soundtracks  Relaxing Piano 10min.mp3', 11, '2023-06-14 21:26:22', 2, '4-beautiful-soundtracks', 0),
(15, 'Love Lost \'Piano Version\'', 1, 11, 'uploads/819c43da-5323-46c5-ac91-f17f707fd7c0.jpg', 'uploads/y2mate.com - Love Lost Piano Version.mp3', 11, '2023-06-14 21:31:10', 0, 'love-lost-piano-version', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `email` varchar(120) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(10) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `date`) VALUES
(1, 'admin', 'khoa@email.com', '$2y$10$O5XJ7s7SYC4OZJlMl4Lxnez3Hmzu3en0RX8QKg10bHbQnJPYHsGNS', 'admin', '2023-06-14 19:17:56'),
(2, 'khoa1', 'khoa1@email.com', '$2y$10$ohHQD0vcShuwI3/.zyKnp.jMpwSJGh0ilQP1LJCX3EzkInJtAs/PO', 'user', '2023-06-14 19:23:22'),
(4, 'khoa2', 'khoa2@email.com', '$2y$10$wjjMnDuiVi84YeaAMTbwHezex.YHGYVWY6K03LruVVhBgkALtPKc.', 'user', '2023-06-14 21:34:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `artist_id` (`artist_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `views` (`views`),
  ADD KEY `date` (`date`),
  ADD KEY `title` (`title`),
  ADD KEY `slug` (`slug`),
  ADD KEY `featured` (`featured`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`),
  ADD KEY `date` (`date`),
  ADD KEY `role` (`role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

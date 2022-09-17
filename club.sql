-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2022 at 07:24 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `club`
--

-- --------------------------------------------------------

--
-- Table structure for table `apply_form`
--

CREATE TABLE `apply_form` (
  `session_id` int(100) NOT NULL,
  `club_id` int(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `ammount` int(100) NOT NULL,
  `bkash_number` int(100) NOT NULL,
  `end_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apply_form`
--

INSERT INTO `apply_form` (`session_id`, `club_id`, `description`, `ammount`, `bkash_number`, `end_time`) VALUES
(2, 30, 'IIT club .\r\n10 tk.\r\n01814940719.\r\n23th september deadline.', 10, 1814940719, '2022-09-23');

-- --------------------------------------------------------

--
-- Table structure for table `clubmonthypayment`
--

CREATE TABLE `clubmonthypayment` (
  `payment_id` int(100) NOT NULL,
  `club_id` int(100) NOT NULL,
  `month` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `pay_number` int(100) NOT NULL,
  `totall` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clubmonthypayment`
--

INSERT INTO `clubmonthypayment` (`payment_id`, `club_id`, `month`, `year`, `pay_number`, `totall`) VALUES
(1, 27, 'jan', '2000', 1814940719, 0),
(2, 28, 'jan', '2000', 19876654, 0),
(3, 30, 'feb', '2022', 1814940719, 0),
(7, 30, 'april', '2099', 2025, 0);

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `club_id` int(100) NOT NULL,
  `club_name` varchar(100) NOT NULL,
  `totall_members` int(100) NOT NULL,
  `club_type` varchar(100) NOT NULL DEFAULT 'cultural',
  `club_description` varchar(100) NOT NULL,
  `club_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`club_id`, `club_name`, `totall_members`, `club_type`, `club_description`, `club_image`) VALUES
(27, 'Drupod', 80, 'cultural', 'Band and singing club', 'dhrupod.jpg'),
(28, 'Adventure Club', 30, 'adventure', 'adventure club', 'adventureClub.jpg'),
(29, 'Debating Club', 70, 'educational', 'Debating Club nitu', 'dhrupod.jpg'),
(30, 'IIT Club', 5, 'educational', 'lgjksdhfgkd', 'sneeze.png'),
(31, 'Eshti kutum', 80, 'cultural', 'Draeing club', 'dhrupod.jpg'),
(32, 'Vorer alo', 90, 'social', 'Helping club', 'dhrupod.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `club_members`
--

CREATE TABLE `club_members` (
  `user_id` int(100) NOT NULL,
  `club_id` int(100) NOT NULL,
  `member_type` varchar(100) NOT NULL DEFAULT 'member'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `club_members`
--

INSERT INTO `club_members` (`user_id`, `club_id`, `member_type`) VALUES
(1, 30, 'member'),
(4, 28, 'member'),
(4, 30, 'admin'),
(5, 29, 'member'),
(5, 30, 'member'),
(5, 32, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `post_id` int(100) NOT NULL,
  `comment_content` varchar(100) NOT NULL,
  `comment_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `user_id`, `post_id`, `comment_content`, `comment_time`) VALUES
(49, 1, 30, 'HI nitu kmn asos?', '09.15.2022'),
(50, 1, 28, 'Eto hasi keno?', '09.15.2022'),
(52, 1, 30, 'Ami tule disilam pic ta', '09.15.2022'),
(56, 4, 30, 'pare na chobi tulte ', '09.15.2022'),
(57, 4, 29, 'hi', '09.15.2022');

-- --------------------------------------------------------

--
-- Table structure for table `comment_reply`
--

CREATE TABLE `comment_reply` (
  `reply_id` int(100) NOT NULL,
  `comment_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `post_id` int(100) NOT NULL,
  `reply_content` varchar(100) NOT NULL,
  `comment_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment_reply`
--

INSERT INTO `comment_reply` (`reply_id`, `comment_id`, `user_id`, `post_id`, `reply_content`, `comment_time`) VALUES
(14, 0, 1, 30, 'Ami tule disilam pic ta', '09.15.2022'),
(15, 50, 4, 28, 'Amr mukh tai hashi hashi', '09.15.2022');

-- --------------------------------------------------------

--
-- Table structure for table `form_pay`
--

CREATE TABLE `form_pay` (
  `userpay_id` int(100) NOT NULL,
  `session_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pay_number` int(100) NOT NULL,
  `bkash_number` int(100) NOT NULL,
  `transiction_number` int(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form_pay`
--

INSERT INTO `form_pay` (`userpay_id`, `session_id`, `user_id`, `pay_number`, `bkash_number`, `transiction_number`, `description`) VALUES
(1, 2, 4, 7676, 765, 0, 'lol'),
(3, 2, 5, 234723, 823747623, 0, 'IIT club .10 tk.01814940719.23th september deadline. ');

-- --------------------------------------------------------

--
-- Table structure for table `invitation`
--

CREATE TABLE `invitation` (
  `invite_id` int(100) NOT NULL,
  `club_id` int(100) NOT NULL,
  `invitedclub_id` int(100) NOT NULL,
  `invite_msg` varchar(100) NOT NULL,
  `invite_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invitation`
--

INSERT INTO `invitation` (`invite_id`, `club_id`, `invitedclub_id`, `invite_msg`, `invite_date`) VALUES
(1, 27, 28, 'its a invitation', '09.14.2022'),
(2, 28, 29, 'arman from advanture club', '09.14.2022'),
(3, 30, 30, 'new invitation', '09.15.2022');

-- --------------------------------------------------------

--
-- Table structure for table `pay`
--

CREATE TABLE `pay` (
  `user_id` int(100) NOT NULL,
  `payment_id` int(100) NOT NULL,
  `payment_ammount` int(100) NOT NULL,
  `transiction_number` varchar(100) NOT NULL,
  `payment_status` varchar(100) NOT NULL DEFAULT 'not-checked',
  `userpayment_no` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pay`
--

INSERT INTO `pay` (`user_id`, `payment_id`, `payment_ammount`, `transiction_number`, `payment_status`, `userpayment_no`) VALUES
(1, 3, 1000, 'yuyufg', 'checked', 9),
(4, 3, 89, 'tg6', 'checked', 10);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `club_id` int(100) NOT NULL,
  `post_caption` varchar(100) NOT NULL,
  `post_picture` varchar(100) NOT NULL,
  `post_status` varchar(100) NOT NULL DEFAULT 'private',
  `post_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `user_id`, `club_id`, `post_caption`, `post_picture`, `post_status`, `post_time`) VALUES
(19, 1, 28, 'this is a adventure club psot', 'adventureClub.jpg', 'private', '9-10-22'),
(20, 1, 27, 'Hello from drhupod', 'joined.png', 'private', '9-10-22'),
(26, 1, 27, 'new post dhrupod', '1_CDCeyYxNhl-VTM0-MtmC-Q.png', 'Public', '09.14.2022'),
(27, 4, 28, 'arman posted to advanture club 4,28', 'img.png', 'Public', '09.14.2022'),
(28, 4, 30, 'IIT CLUb\r\nArman\r\nClub id-30\r\nuser -id -4', '20210831_164205.jpg', 'Private', '09.14.2022'),
(29, 5, 32, 'Vorer Alo\r\nNitu\r\nClub id-32\r\nUser -id -5', 'IMG-20210717-WA0024.jpg', 'Private', '09.14.2022'),
(30, 5, 29, 'Debating CLub\r\nNItu\r\nClub id-29\r\nuser -id -5', 'IMG-20211203-WA0029.jpg', 'Private', '09.14.2022');

-- --------------------------------------------------------

--
-- Table structure for table `userform_info`
--

CREATE TABLE `userform_info` (
  `apply_id` int(100) NOT NULL,
  `session_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `userpay_id` int(100) NOT NULL,
  `mobileno` int(100) NOT NULL,
  `answare` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_image` varchar(100) NOT NULL,
  `user_type` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `batch` int(100) NOT NULL,
  `is_validate` int(100) NOT NULL,
  `v_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`, `user_image`, `user_type`, `department`, `batch`, `is_validate`, `v_code`) VALUES
(1, 'Ikra chy nowkshi', 'ikra2514@student.nstu.edu.bd', '1ff1de774005f8da13f42943881c655f', 'IMG-20211231-WA0157.jpg', 'Student', 'IIT', 1, 1, 'ecd58c2b'),
(4, 'Armanur Rashid Riyaj', 'arman@student.nstu.edu.bd', '37693cfc748049e45d87b8c7d8b9aacd', 'IMG-20211126-WA0001.jpg', 'student', 'IIT', 14, 1, ''),
(5, 'Sanjida NItu', 'nitu@student.nstu.edu.bd', '1ff1de774005f8da13f42943881c655f', 'IMG-20211216-WA0013.jpg', 'student', 'IIT', 13, 1, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apply_form`
--
ALTER TABLE `apply_form`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `clubmonthypayment`
--
ALTER TABLE `clubmonthypayment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`club_id`);

--
-- Indexes for table `club_members`
--
ALTER TABLE `club_members`
  ADD PRIMARY KEY (`user_id`,`club_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `comment_reply`
--
ALTER TABLE `comment_reply`
  ADD PRIMARY KEY (`reply_id`);

--
-- Indexes for table `form_pay`
--
ALTER TABLE `form_pay`
  ADD PRIMARY KEY (`userpay_id`);

--
-- Indexes for table `invitation`
--
ALTER TABLE `invitation`
  ADD PRIMARY KEY (`invite_id`);

--
-- Indexes for table `pay`
--
ALTER TABLE `pay`
  ADD PRIMARY KEY (`userpayment_no`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `userform_info`
--
ALTER TABLE `userform_info`
  ADD PRIMARY KEY (`apply_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apply_form`
--
ALTER TABLE `apply_form`
  MODIFY `session_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `clubmonthypayment`
--
ALTER TABLE `clubmonthypayment`
  MODIFY `payment_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `clubs`
--
ALTER TABLE `clubs`
  MODIFY `club_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `comment_reply`
--
ALTER TABLE `comment_reply`
  MODIFY `reply_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `form_pay`
--
ALTER TABLE `form_pay`
  MODIFY `userpay_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invitation`
--
ALTER TABLE `invitation`
  MODIFY `invite_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pay`
--
ALTER TABLE `pay`
  MODIFY `userpayment_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `userform_info`
--
ALTER TABLE `userform_info`
  MODIFY `apply_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

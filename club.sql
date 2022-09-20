-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2022 at 05:48 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
  `end_time` date NOT NULL,
  `session_status` varchar(100) NOT NULL DEFAULT 'running',
  `session_number` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apply_form`
--

INSERT INTO `apply_form` (`session_id`, `club_id`, `description`, `ammount`, `bkash_number`, `end_time`, `session_status`, `session_number`) VALUES
(25, 36, 'Chirkut need new members\r\nplease submit before 30th september', 100, 1814940719, '2022-09-30', 'running', 1),
(26, 37, 'Recruitment is going on.', 100, 1869868264, '2022-09-30', 'running', 1);

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

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `club_id` int(100) NOT NULL,
  `club_name` varchar(100) NOT NULL,
  `totall_members` int(100) NOT NULL,
  `club_type` varchar(100) NOT NULL DEFAULT 'cultural',
  `club_description` longtext CHARACTER SET utf8 NOT NULL,
  `club_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`club_id`, `club_name`, `totall_members`, `club_type`, `club_description`, `club_image`) VALUES
(28, 'NSTU Adventure Club', 31, 'adventure', 'Presenting the Noakhali Science & Technology University Adventure Club, a place to share joy,adventure,happiness. Beyond all these, it\'s about celebrating immense wilderness, to learn and discuss skills to make your outdoor trips safer and more pleasant.', 'adventureClub.jpg'),
(33, 'NSTU Debating Society', 70, 'Educational', 'à¦¦à§‡à¦¶à§‡à¦° à¦¨à¦¾à¦¨à¦¾ à¦ªà§à¦°à¦¾à¦¨à§à¦¤ à¦¥à§‡à¦•à§‡ à¦à¦‡ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿà§‡ à¦ªà§œà¦¤à§‡ à¦†à¦¸à¦¾ à¦¶à¦¿à¦•à§à¦·à¦¾à¦°à§à¦¥à§€à¦¦à§‡à¦° à¦®à¦¾à¦à§‡ à¦¯à§à¦•à§à¦¤à¦¿ à¦“ à¦®à¦¨à¦¨à§‡à¦° à¦¨à§‡à¦¶à¦¾ à¦›à§œà¦¿à§Ÿà§‡ à¦¦à¦¿à¦¤à§‡ à¦•à¦¾à¦œ à¦•à¦°à§‡ à¦¯à¦¾à¦šà§à¦›à§‡ à¦¨à§‹à¦¬à¦¿à¦ªà§à¦°à¦¬à¦¿ à¦¡à¦¿à¦¬à§‡à¦Ÿà¦¿à¦‚ à¦¸à§‹à¦¸à¦¾à¦‡à¦Ÿà¦¿à¥¤\r\nà¦¨à¦¤à§à¦¨ à¦•à¦°à§‡ à¦à¦° à¦ªà¦¥à¦šà¦²à¦¾à§Ÿ à¦¸à¦¬à¦¾à¦‡à¦•à§‡ à¦à¦•à¦¤à§à¦°à¦¿à¦¤ à¦•à¦°à¦¤à§‡à¦‡ à¦à¦‡ à¦—à§à¦°à§à¦ª,à¦¯à§‡à¦–à¦¾à¦¨à§‡ à¦¸à¦¾à¦°à¦¾à¦¦à§‡à¦¶à§‡à¦° à¦¸à¦¬à¦¾à¦° à¦¸à¦¾à¦¥à§‡à¦‡ à¦¸à¦‚à¦¯à§‹à¦— à¦˜à¦Ÿà¦¬à§‡ à¦¨à§‹à¦¬à¦¿à¦ªà§à¦°à¦¬à¦¿à¦° à¦¬à¦¿à¦¤à¦¾à¦°à§à¦•à¦¿à¦•à¦¦à§‡à¦°à¥¤', '296079530_969689971094265_4244960714165675887_n.png'),
(34, 'IT Club', 5, 'educational', 'IT Club provides students with opportunities to discuss various IT issues outside the classroom.', '299143166_473534951148908_1695854776916005098_n.jpg'),
(36, 'Chitrokrit', 5, 'Cultural', 'à¦šà¦¿à¦¤à§à¦°à¦•à§ƒà§Ž(Chitrokrit) is an exhibition page of interdisciplinary visual arts. It is and will be solely dedicated to providing a platform and promoting visual arts by students of Noakhali Science and Technology University(NSTU).', '297429773_638637490943613_1378105625457766996_n.jpg'),
(37, 'NSTU Photography Club', 1, 'Cultural', 'Noakhali Science and Technology University has sea-alike possibilities and NSTUPC is a small part of that sea and a field for expressing the talent of emerging photographers of NSTU.', '301840525_825842268598036_7911772817667630618_n.jpg'),
(38, 'NSTU Business Club', 30, 'Educational', 'NSTU Business Club strives to increase awareness in the arts, media and entertainment arenas through education and professional opportunities, network-building with alumni and industry representatives, and showcasing the creative talent and artistic diversity within the NSTUBC community', '259808044_439237467573013_5664132199158856628_n.jpg'),
(39, 'NSTU Dance Club', 5, 'Cultural', 'NSTU dance club is a cultural club of Noakhali Science and Technology University whose main motto is to assemble dancers and students willing to learn dance in a platform where they can share their skill and beauty of dance.', '277821499_339740154797150_5045825695064316361_n.jpg'),
(40, 'NSTU Model United Nations Association', 5, 'Cultural', 'This NSTUMUNA family is for all general students of NSTU. Its two main objectives are Skilling ourselves (students) a little more. And representing our university in various universities.', '306051318_1273688043429287_2111994020083436662_n.png'),
(42, 'Dhrupod', 80, 'cultural', 'Dhrupod is a Campus-based music club of Noakhali Science and Technology University.', 'dhrupod.jpg'),
(43, 'Royal Economics Club', 80, 'Educational', 'Royal Economics Club (REC) is a students led the organization of the department of economics, Noakhali Science And Technology University which aims to make the students more skillful in both curricular and extracurricular activities.', '297039107_2298349560323081_8141469850951502757_n.jpg');

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
(4, 28, 'member'),
(5, 28, 'admin'),
(5, 33, 'admin'),
(5, 34, 'admin'),
(5, 36, 'admin'),
(5, 37, 'admin'),
(5, 38, 'admin'),
(5, 39, 'admin'),
(5, 40, 'admin'),
(5, 42, 'admin'),
(5, 43, 'admin');

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

-- --------------------------------------------------------

--
-- Table structure for table `invitation`
--

CREATE TABLE `invitation` (
  `invite_id` int(100) NOT NULL,
  `club_id` int(100) NOT NULL,
  `invitedclub_id` int(100) NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `invite_msg` varchar(100) NOT NULL,
  `invite_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invitation`
--

INSERT INTO `invitation` (`invite_id`, `club_id`, `invitedclub_id`, `event_name`, `invite_msg`, `invite_date`) VALUES
(8, 30, 27, 'ds9078', 'dfdsf', '09.17.2022'),
(15, 27, 30, 'ds9078', 'dfdsf', '09.17.2022'),
(16, 27, 30, 'jdkfhsdmnfbm', 'dfdsfdsflkhskuadf', '09.17.2022'),
(17, 27, 30, 'lame', 'ow shit', '09.17.2022'),
(18, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(19, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(20, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(21, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(22, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(23, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(24, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(25, 30, 27, 'ds9078', 'dfdsf', '09.17.2022'),
(26, 27, 30, 'ds9078', 'dfdsf', '09.17.2022'),
(27, 27, 30, 'jdkfhsdmnfbm', 'dfdsfdsflkhskuadf', '09.17.2022'),
(28, 27, 30, 'lame', 'ow shit', '09.17.2022'),
(29, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(30, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(31, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(32, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(33, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(34, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(35, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(36, 30, 27, 'ds9078', 'dfdsf', '09.17.2022'),
(37, 27, 30, 'ds9078', 'dfdsf', '09.17.2022'),
(38, 27, 30, 'jdkfhsdmnfbm', 'dfdsfdsflkhskuadf', '09.17.2022'),
(39, 27, 30, 'lame', 'ow shit', '09.17.2022'),
(40, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(41, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(42, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(43, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(44, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(45, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(46, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(47, 30, 27, 'ds9078', 'dfdsf', '09.17.2022'),
(48, 27, 30, 'ds9078', 'dfdsf', '09.17.2022'),
(49, 27, 30, 'jdkfhsdmnfbm', 'dfdsfdsflkhskuadf', '09.17.2022'),
(50, 27, 30, 'lame', 'ow shit', '09.17.2022'),
(51, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(52, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(53, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(54, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(55, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(56, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(57, 27, 30, 'lamei', 'ow shit', '09.17.2022');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `noti_id` int(100) NOT NULL,
  `club_id` int(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `noti_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`noti_id`, `club_id`, `description`, `noti_time`) VALUES
(1, 32, 'Vorer  published a new recruitment form', '2022-09-17'),
(7, 32, 'Vorer  ', '2022-09-17'),
(8, 32, 'Vorer   alo', '2022-09-17'),
(9, 32, 'Vo', '2022-09-17'),
(10, 32, 'Volahugf', '2022-09-17'),
(11, 36, 'Chitrokrit  has now published a new recruitment form form', '2022-09-18'),
(12, 37, 'NSTU Photography Club  has now published a new recruitment form form', '2022-09-20');

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

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `club_id` int(100) NOT NULL,
  `post_caption` longtext NOT NULL,
  `post_picture` varchar(100) NOT NULL,
  `post_status` varchar(100) NOT NULL DEFAULT 'private',
  `post_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `user_id`, `club_id`, `post_caption`, `post_picture`, `post_status`, `post_time`) VALUES
(20, 1, 27, 'Hello from drhupod', 'joined.png', 'private', '9-10-22'),
(26, 1, 27, 'new post dhrupod', '1_CDCeyYxNhl-VTM0-MtmC-Q.png', 'Public', '09.14.2022'),
(27, 4, 28, 'arman posted to advanture club 4,28', 'img.png', 'Public', '09.14.2022'),
(32, 4, 30, 'klhgjfdg', 'mess.png', 'Public', '09.18.2022'),
(34, 1, 28, '\r\nবিলাইছড়ির ধূপপানি ঝর্ণা এই মুহূর্তে বাংলাদেশের সবচেয়ে সুন্দর ঝর্ণাগুলোর মধ্যে একটি। সুবিশাল উচ্চতা, শুভ্র জলরাশির ঝর্ণা আর ঝর্ণার নিচের গুহার জন্য ট্রেকারদের কাছে এই ঝর্নাটির আবেদন সবসময় অন্যরকম। ঝর্ণার স্বচ্ছ পানি এবং অনেক উচুঁ থেকে আছড়ে পড়া জলরাশি আপনাকে একরকম পাগল করে দিবে, ধূপপানি ঝর্ণার নিচের গুহায় চোখ বন্ধ করে বসলে মনে হবে অন্য কোন জগতে চলে গেছেন। \r\nটুকে রাখুন ১৬-১৮ সেপ্টেম্বরের দিনগুলো আর যুক্ত হয়ে যান আমাদের সাথে \"বিলাইছড়ি : লাল পাহাড়ির দেশে\" ইভেন্টে।', '304738982_762403141492679_7090714083179021838_n.jpg', 'Public', '09.18.2022'),
(35, 1, 28, 'Shahriar Ahmed Siyam\r\n\"ঝর্ণার খোজেঁ বোয়ালিয়ায়\"\r\nসকাল সাড়ে সাতটায় সোনাপুর জিরো পয়েন্ট থেকে যাত্রাশুরু, গন্তব্য মিরসরাই বোয়ালিয়া ট্রেইল। বাসে সমবেত সুরে গান উপভোগ করতে করতে কখন যে মিরসরাই পৌঁছালাম, টেরই পেলাম না। ঘড়িতে তখন সাড়ে দশটা, স্থানীয় একটি হোটেলে ব্যাগ রেখে আমরা রওনা দিলাম ট্রেইলের উদ্দ্যেশ্যে। বোয়ালিয়া ট্রেইলটিতে দুইটি অংশ আছে। ট্রেইলটির সুন্দরতম স্থান বোয়ালিয়া ঝর্ণার দেখা মিলবে প্রথম অংশে। দ্বিতীয় অংশে আছে অসম্ভব সুন্দর ঝিরিপথ, অমরমানিক্য ঝর্না, ন হাইত্যে খুম সহ আরো অনেক ছোটো ছোটো ঝর্না। \r\nমনের আনন্দে সবাই দ্রুত এগুতে থাকলো। ঘন্টাখানেক  হাঁটার পর, গলাসমান পানি অতিক্রম করে দেখা মিললো সুন্দরতম স্থান বোয়ালিয়া ঝর্ণা। স্রষ্টার কি অপরুপ সৃষ্টি! কি অপরুপ নির্ঝর! ঝর্নার শীতল পানি সবাই খুব উপভোগ করছিলো। ক্ষনিকের জন্য মনে হলো বাড়িটা এখানে হলে তিনবেলা শীতল এ পানিতে স্নান করতে পারলে মন্দ হতো না। এ ঝর্নার একটি বিশেষত্ব হল, ঝর্নার ভেতরে একটি ফাকা জায়গা আছে অনেকটা ছোটো ডোবার মতো। উপর থেকে পানি এসে এখানে জমা হচ্ছে। ঘন্টাখানেক সময় এখানেই কাটলো। আমরা কয়েকজন আগে আগে রওনা দিলাম, গন্তব্য ট্রেইলের দ্বিতীয় অংশ। সবার আগে সৌন্দর্য উপভোগ করতে ভালোই লাগে। ঝিরিপথ ধরে যতোই সামনে এগোচ্ছি ততোই মুগ্ধ হচ্ছি। চারদিক ঘন জঙ্গলে ঘেরা, উচুঁ নিচু আঁকাবাঁকা পথ কিংবা পিচ্ছিল পাথর কি নেই এখানে! এতো সুন্দর উপভোগ্য প্রকৃতিতে ক্লান্তি আসার সুযোগ নাই। শীতল পানিতে নিমিষেই দূর হয়ে যাবে যেকোনো ক্লান্তি। দূর্গম ঝিরিপথ দেখে মাঝে মাঝে ভয় ও লাগছিলো, তাতেও সৌন্দর্যের কোনো কমতি নেই। তাজ্জব হয়ে আপনিও বলবেন এ যে ভয়ংকর সুন্দর! মাঝপথে শুরু হলো গানের আড্ডা। গুণি মানুষজনের সাথে ভ্রমন বৃথা যায় না। শীতল মনোমুগ্ধকর পরিবেশ সাথে সুমিষ্ট সুরে কোরাস গান পুরো ভ্রমণে একটি ভিন্ন মাত্রা যুক্ত করেছে। এ ঝিরিপথের যেনো কোনো অন্ত নেই। কিন্তু তিন-তিনটি আছাড়ে কুপকাত হয়ে আর সামনে এগোনোর সাহস পেলাম না। লম্বা সময় হাটার পর সবাই হোটেলে ফিরলাম। খাওয়া দাওয়া শেষে কিছুক্ষন বিশ্রাম অতঃপর বাসে উঠে পড়লাম। ক্লান্ত শরীরে নিমিষেই ঘুমিয়ে পড়লাম। প্রায় চল্লিশজনের গ্রুপ ছিলাম আমরা, মানুষগুলো ছিলো অনবদ্য সাথে সুন্দর গুছানো আয়োজন। আত্মার প্রশান্তির জন্য এমন আয়োজন বারংবার চাই। আজ এখানেই ইতি টানছি। কথা হবে অন্যকোনো ভ্রমণের পর।', '300175106_1453990828410103_815832942459634415_n.jpg', 'Public', '09.18.2022'),
(38, 5, 28, 'à¦†à¦—à¦¾à¦®à§€ à¦ªà¦¥à¦šà¦²à¦¾ à¦¹à§‹à¦• à¦¸à§à¦¨à§à¦¦à¦° à¦“ à¦¸à¦®à§à¦­à¦¾à¦¬à¦¨à¦¾à¦®à§Ÿ à¦¨à¦¤à§à¦¨ à¦•à¦®à¦¿à¦Ÿà¦¿à¦° à¦¸à¦¾à¦¥à§‡à¥¤ à¦šà¦²à§‹ à¦ªà¦¾à¦²à§à¦Ÿà¦¾à¦‡ à¦«à¦¾à¦‰à¦¨à§à¦¡à§‡à¦¶à¦¨, à¦¨à§‹à¦¬à¦¿à¦ªà§à¦°à¦¬à¦¿ à¦à¦° à¦¨à¦¤à§à¦¨ à¦•à¦®à¦¿à¦Ÿà¦¿à¦•à§‡ à¦œà¦¾à¦¨à¦¾à¦‡ à¦…à¦­à¦¿à¦¨à¦¨à§à¦¦à¦¨à¥¤', '306035324_490094039792802_1527465107577761591_n.jpg', 'Public', '09.20.2022'),
(39, 5, 28, 'à¦à¦•à¦¦à¦¾ à¦ªà¦¾à¦¹à¦¾à§œà§‡ à¦¯à¦¾à¦“à§Ÿà¦¾à¦° à¦à¦•à¦¬à¦›à¦° à¦ªà§‚à¦°à§à¦¤à¦¿à¥¤', '104885775_2637960716457905_412470466113210303_n.jpg', 'Public', '09.20.2022'),
(40, 5, 33, 'à¦¬à§‡à¦—à¦® à¦°à§‹à¦•à§‡à§Ÿà¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ, à¦°à¦‚à¦ªà§à¦° à¦à¦° à¦ªà§à¦°à¦¥à¦® à¦¬à¦¿à¦¤à¦°à§à¦• à¦¸à¦‚à¦—à¦ à¦¨ à¦¬à§‡à¦—à¦® à¦°à§‹à¦•à§‡à§Ÿà¦¾ à¦‡à¦‰à¦¨à¦¿à¦­à¦¾à¦°à§à¦¸à¦¿à¦Ÿà¦¿ à¦¡à¦¿à¦¬à§‡à¦Ÿ à¦…à§à¦¯à¦¾à¦¸à§‹à¦¸à¦¿à§Ÿà§‡à¦¶à¦¨ (à¦¬à§à¦°à§à¦¡à¦¾) à¦†à§Ÿà§‹à¦œà¦¨ à¦•à¦°à¦¤à§‡ à¦¯à¦¾à¦šà§à¦›à§‡ BRUDA National IV Debate Championship-2022 .\r\nà¦ªà§à¦°à¦¤à¦¿à¦¯à§‹à¦—à¦¿à¦¤à¦¾à¦° à¦§à¦°à¦£à¦ƒ à¦¬à¦¾à¦‚à¦²à¦¾ à¦à¦¶à¦¿à§Ÿà¦¾à¦¨ à¦ªà¦¾à¦°à§à¦²à¦¾à¦®à§‡à¦¨à§à¦Ÿà¦¾à¦°à¦¿\r\nà¦¸à¦®à§Ÿà¦•à¦¾à¦²à¦ƒ à§¦à§ª-à§¦à§¬ à¦¨à¦­à§‡à¦®à§à¦¬à¦°, à§¨à§¦à§¨à§¨\r\nà¦¦à¦²à¦¸à¦‚à¦–à§à¦¯à¦¾à¦ƒ à§©à§¨\r\nà¦¬à¦¿à¦¸à§à¦¤à¦¾à¦°à¦¿à¦¤ à¦¶à§€à¦˜à§à¦°à¦‡ à¦†à¦¸à¦›à§‡â€¦..\r\nà¦‡à¦­à§‡à¦¨à§à¦Ÿ à¦²à¦¿à¦‚à¦•', '305084054_389476693344916_1314004203128509241_n.jpg', 'Public', '09.20.2022'),
(41, 5, 33, 'à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦Ÿà§‡à¦²à¦¿à¦­à¦¿à¦¶à¦¨ à¦šà¦Ÿà§à¦Ÿà¦—à§à¦°à¦¾à¦® à¦•à§‡à¦¨à§à¦¦à§à¦° à¦•à¦°à§à¦¤à§ƒà¦• à¦†à§Ÿà§‹à¦œà¦¿à¦¤ à¦œà¦¾à¦¤à§€à§Ÿ à¦¬à¦¿à¦¤à¦°à§à¦• à¦ªà§à¦°à¦¤à¦¿à¦¯à§‹à¦—à¦¿à¦¤à¦¾à¦° à¦•à§‹à§Ÿà¦¾à¦°à§à¦Ÿà¦¾à¦° à¦«à¦¾à¦‡à¦¨à¦¾à¦² à¦ªà¦°à§à¦¬à§‡ à¦¨à§‹à§Ÿà¦¾à¦–à¦¾à¦²à§€ à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦“ à¦ªà§à¦°à¦¯à§à¦•à§à¦¤à¦¿ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿà§‡à¦° à¦­à¦¾à¦·à¦¾ à¦¶à¦¹à§€à¦¦ à¦†à¦¬à§à¦¦à§à¦¸ à¦¸à¦¾à¦²à¦¾à¦® à¦¹à¦²à¥¤\r\nà¦¨à§‹à§Ÿà¦¾à¦–à¦¾à¦²à§€ à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦“ à¦ªà§à¦°à¦¯à§à¦•à§à¦¤à¦¿ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ à¦à¦° à¦¬à¦¿à¦¤à¦¾à¦°à§à¦•à¦¿à¦•à¦¬à§ƒà¦¨à§à¦¦-\r\nMumtahin Siam\r\nRedoy Kumer Ghosh\r\nMd. Nafis Fuad\r\nà¦¸à¦¬à¦¾à¦‡ à¦¤à¦¾à¦¦à§‡à¦°à¦•à§‡ à¦¦à§‹à§Ÿà¦¾à§Ÿ à¦°à¦¾à¦–à§à¦¨ â¤ï¸', '301494335_3273954236179952_5403285047759225314_n.jpg', 'Public', '09.20.2022'),
(48, 5, 34, 'The Programmer\'s Day Celebration has come to an end!! We would like to thank all the participants to attend the celebration and making the day beautiful. We are happy to celebrate the day together! \r\nð—ªð—¶ð—»ð—»ð—²ð—¿ð˜€ ð¨ðŸ ð­ð¡ðž ð„ð¯ðžð§ð­ð¬\r\nðˆð§ðŸð¨ð«ð¦ðšð­ð¢ðœð¬ ðŽð¥ð²ð¦ð©ð¢ðšð\r\nðŸð¬ð­ - Tahsin Hasan (ICE-14)\r\nðŸð§ð - Joy Bhoumik (IIT-14) \r\nðŸ‘ð«ð - Md. Fazlul Azim (CSTE-14)\r\nðˆð§ð­ð«ðš ð”ð§ð¢ð¯ðžð«ð¬ð¢ð­ð² ðð«ð¨ð ð«ðšð¦ð¦ð¢ð§ð  ð‚ð¨ð§ð­ðžð¬ð­ (ð’ðžð§ð¢ð¨ð«)\r\nðŸð¬ð­ - Loadshedding \r\nTeam members: Mosiur Zaman (CSTE -14), Khadija Tul Kubra (CSTE -14) \r\nðŸð§ð  - RedDevil10 \r\nTeam members: Md. Saimun Islam (ICE-14), Siam Sharif Ami (ICE-14)\r\nðˆð§ð­ð«ðš ð”ð§ð¢ð¯ðžð«ð¬ð¢ð­ð² ðð«ð¨ð ð«ðšð¦ð¦ð¢ð§ð  ð‚ð¨ð§ð­ðžð¬ð­ (ð‰ð®ð§ð¢ð¨ð«)\r\nðŸð¬ð­ - Sahadat Hossain (CSTE-16)\r\nðŸð§ð - A. H. Soikot (CSTE -16)\r\nðŸ‘ð«ð - Md. Ashraful Islam (ICE - 16)\r\nð†ðšð¦ð¢ð§ð  ð‚ð¨ð§ð­ðžð¬ð­ ðð¨ð¬ð­ðžð« ðð«ðžð¬ðžð§ð­ðšð­ð¢ð¨ð§\r\nðŸð¬ð­ -Cranial Antagonists\r\nTeam members: Ayan Bhowmik(Pharmacy -15), Tanver Hossain Rafi(Pharmacy-15)', '306845937_570119771574287_9029030675056616940_n.jpg', 'Public', '09.20.2022'),
(49, 5, 34, 'Hello programmers! International Programmers\' Day is quickly approaching, and we are happy to let you know about it. IT CLUB NSTU has decided to celebrate \'World Programmers\' Day\' on 13 September 2022 through organizing a carnival at 2rd floor, Library Building, NSTU from 10.00 AM to 4 PM.', '306476526_568504798402451_1128823782142639016_n.jpg', 'Public', '09.20.2022'),
(50, 5, 36, 'Neymar da Silva Santos JÃºnior, \r\nThe Perfect Chaos', '307089410_3344537475802226_8525425874153245127_n.jpg', 'Public', '09.20.2022'),
(51, 5, 37, 'Hurry up. Recruitment is going on.', '305923957_3276775829257452_5063546480919895529_n.jpg', 'Public', '09.20.2022'),
(52, 5, 38, 'à¦¨à§‹à¦¬à¦¿à¦ªà§à¦°à¦¬à¦¿ à¦¬à¦¿à¦œà¦¨à§‡à¦¸ à¦•à§à¦²à¦¾à¦¬ à¦à¦° à¦ªà¦•à§à¦· à¦¥à§‡à¦•à§‡ à¦¸à¦¬à¦¾à¦‡à¦•à§‡ à¦œà¦¾à¦¨à¦¾à¦‡ à¦¶à¦¾à¦°à¦¦à§€à¦¯à¦¼ à¦¶à§à¦­à§‡à¦šà§à¦›à¦¾ à¥¤ à¦†à¦¶à¦¾ à¦•à¦°à¦¿ à¦¸à¦•à¦² à¦…à¦¶à§à¦­ à¦¶à¦•à§à¦¤à¦¿ à¦¦à§‚à¦°à§‡ à¦¸à¦°à§‡ à¦—à¦¿à¦¯à¦¼à§‡ à¦¸à¦«à¦² à¦†à¦° à¦†à¦¨à¦¨à§à¦¦à¦˜à¦¨ à¦‰à§Žà¦¸à¦¬à§‡ à¦®à§à¦–à¦° à¦¹à¦¯à¦¼à§‡ à¦‰à¦ à¦¬à§‡ à¦à¦‡ à¦¶à¦¾à¦°à¦¦à§€à¦¯à¦¼ à¦¦à¦¿à¦¨à¦—à§à¦²à§‹ à¦à¦¬à¦‚ à¦†à¦—à¦¾à¦®à§€ à¥¤ à¦…à¦¨à¦¨à§à¦¤à¦•à¦¾à¦² à¦à¦®à¦¨à¦¿ à¦•à¦°à§‡à¦‡ à¦¸à¦¾à¦®à§à¦ªà§à¦°à¦¦à¦¾à¦¯à¦¼à¦¿à¦• à¦¸à¦®à§à¦ªà§à¦°à§€à¦¤à¦¿ à¦à¦¬à¦‚ à¦§à¦°à§à¦®à§€à¦¯à¦¼ à¦‰à§Žà¦¸à¦¬à§‡à¦° à¦¬à§ˆà¦šà¦¿à¦¤à§à¦°à§à¦¯ à¦…à¦Ÿà§à¦Ÿ à¦¥à¦¾à¦•à§à¦• à¦¸à¦•à¦²à§‡à¦° à¦®à¦¾à¦à§‡à¥¤ à¦¸à¦•à¦² à¦†à¦¨à¦¨à§à¦¦-à¦¬à§‡à¦¦à¦¨à¦¾à¦¯à¦¼ à¦†à¦®à¦°à¦¾ à¦¯à§‡à¦¨ à¦à¦•à§‡ à¦…à¦¨à§à¦¯à§‡à¦° à¦ªà¦¾à¦¶à§‡à¦‡ à¦¥à¦¾à¦•à¦¤à§‡ à¦ªà¦¾à¦°à¦¿à¥¤', '245399009_5259043794125533_4418854380117273532_n.jpg', '', '09.20.2022'),
(53, 5, 39, 'NSTU dance club is a cultural club of Noakhali Science and Technology University whose main motto is to assemble dancers and students willing to learn dance in a platform where they can share their skill and beauty of dance.', '295290888_5363975273688373_6598486535871650067_n.jpg', 'Public', '09.20.2022'),
(54, 5, 40, 'à¦à¦‡ NSTUMUNA à¦ªà¦°à¦¿à¦¬à¦¾à¦°à¦Ÿà¦¾ NSTU à¦à¦° à¦¸à¦•à¦² à¦¸à¦¾à¦§à¦¾à¦°à¦£ à¦›à¦¾à¦¤à§à¦°-à¦›à¦¾à¦¤à§à¦°à§€à¦¦à§‡à¦° à¦œà¦¨à§à¦¯à¥¤ à¦à¦Ÿà¦¾à¦° à¦¦à§à¦‡à¦Ÿà¦¿ à¦…à¦¨à§à¦¯à¦¤à¦® à¦‰à¦¦à§à¦¦à§‡à¦¶à§à¦¯ à¦¹à¦šà§à¦›à§‡: \r\nà§§à¥¤ à¦¨à¦¿à¦œà§‡à¦¦à§‡à¦° (à¦¶à¦¿à¦•à§à¦·à¦¾à¦°à§à¦¥à§€à¦¦à§‡à¦°) à¦†à¦°à§‡à¦•à¦Ÿà§ à¦¸à§à¦•à¦¿à¦²à¦¡à§ à¦•à¦°à¦¾à¥¤\r\nà§¨à¥¤ à¦†à¦®à¦¾à¦¦à§‡à¦° à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿà§‡à¦° à¦¹à§Ÿà§‡ à¦¬à¦¿à¦­à¦¿à¦¨à§à¦¨ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿà§‡ à¦ªà§à¦°à¦¤à¦¿à¦¨à¦¿à¦§à¦¿à¦¤à§à¦¬ à¦•à¦°à¦¾à¥¤ \r\nà¦à¦–à¦¨, à¦†à¦ªà¦¨à¦¿ à¦¯à¦¦à¦¿ à¦à¦•à¦Ÿà§ à¦ªà§à¦°à¦«à§‡à¦¶à¦¨à¦¾à¦²à¦¿à¦œà¦® à¦à¦° à¦®à¦¾à¦§à§à¦¯à¦®à§‡ à¦¨à¦¿à¦œà§‡à¦° Public Speaking, English Speaking, Communication Skills, Organizing, Networking, etc., à¦¬à§‡à¦¶ à¦­à¦¾à¦²à§‹ à¦•à¦°à¦¤à§‡ à¦šà¦¾à¦¨, à¦¨à¦¿à¦œà§‡à¦•à§‡ à¦†à¦°à§‡à¦•à¦Ÿà§ presentable à¦•à¦°à¦¤à§‡ à¦šà¦¾à¦¨, à¦†à¦° à¦à¦‡ à¦šà¦²à¦®à¦¾à¦¨ à¦ªà§à¦°à¦¤à¦¿à¦¯à§‹à¦—à¦¿à¦¤à¦¾à§Ÿ à¦†à¦°à¦“ à¦à¦• à¦§à¦¾à¦ª à¦à¦—à¦¿à§Ÿà§‡ à¦¨à¦¿à¦¤à§‡ à¦šà¦¾à¦¨ à¦¤à¦¾à¦¹à¦²à§‡ à¦†à¦° à¦¦à§‡à¦°à¦¿ à¦¨à¦¾ à¦•à¦°à§‡à¦‡ à¦†à¦®à¦¾à¦¦à§‡à¦° Recruitment 7.0 à¦ à¦à¦ªà§à¦²à¦¾à¦‡ à¦•à¦°à§à¦¨à¥¤', '307675090_2110891632436802_5455061626091030138_n.png', 'Public', '09.20.2022'),
(55, 5, 42, 'à¦†à¦—à¦¾à¦®à§€ à§¨à§¨-à§¦à§¯-à§¨à§¦à§¨à§¨ à¦¬à§ƒà¦¹à¦¸à§à¦ªà¦¤à¦¿à¦¬à¦¾à¦° à¦¨à§‹à¦¬à¦¿à¦ªà§à¦°à¦¬à¦¿à¦° à¦«à¦¿à¦¶à¦¾à¦°à¦¿à¦œ à¦¬à¦¿à¦­à¦¾à¦—à§‡à¦° à§¨à§¦à§§à§©-à§§à§ª à¦†à¦¬à¦°à§à¦¤à¦¨à§‡à¦° à¦¸à¦¾à¦¬à§‡à¦• à¦¶à¦¿à¦•à§à¦·à¦¾à¦°à§à¦¥à§€ à¦®à¦¾à¦¹à¦¿à¦¦à§à¦² à¦‡à¦¸à¦²à¦¾à¦® à¦­à¦¾à¦‡à§Ÿà§‡à¦° à¦•à§à¦°à¦¨à¦¿à¦• à¦•à¦¿à¦¡à¦¨à¦¿ à¦¡à¦¿à¦œà¦¿à¦œà§‡à¦° à¦šà¦¿à¦•à¦¿à§Žà¦¸à¦¾à§Ÿ à¦¸à¦¾à¦¹à¦¾à¦¯à§à¦¯à§‡ à¦¬à¦¿à¦•à¦¾à¦² à§« à¦Ÿà¦¾à§Ÿ  à¦¨à§‹à¦¬à¦¿à¦ªà§à¦°à¦¬à¦¿ à¦—à§à¦¯à¦¾à¦°à§‡à¦œ à¦šà¦¤à§à¦¤à¦°à§‡ à¦†à¦®à¦°à¦¾ à¦†à§Ÿà§‹à¦œà¦¨ à¦•à¦°à¦¤à§‡ à¦¯à¦¾à¦šà§à¦›à¦¿ à¦­à¦¾à¦‡à§Ÿà§‡à¦° à¦œà¦¨à§à¦¯ à¦—à¦¾à¦¨à¥¤ \r\nà¦®à¦¾à¦¹à¦¿à¦¦ à¦­à¦¾à¦‡à§Ÿà§‡à¦° à¦šà¦¿à¦•à¦¿à§Žà¦¸à¦¾à¦° à¦œà¦¨à§à¦¯  à¦¬à¦¿à¦ªà§à¦² à¦ªà¦°à¦¿à¦®à¦¾à¦¨à§‡à¦° à¦…à¦°à§à¦¥ à¦ªà§à¦°à§Ÿà§‹à¦œà¦¨à¥¤ à¦†à¦®à¦°à¦¾ à¦šà§‡à¦·à§à¦Ÿà¦¾ à¦•à¦°à¦¬à§‹ à¦†à¦®à¦¾à¦¦à§‡à¦° à¦¸à¦¾à¦§à§à¦¯à§‡à¦° à¦®à¦§à§à¦¯à§‡ à¦¸à¦¬ à¦Ÿà§à¦•à§ à¦¸à¦¾à¦¹à¦¾à¦¯à§à¦¯ à¦•à¦°à¦¤à§‡à¥¤ à¦†à¦®à¦¾à¦¦à§‡à¦° à¦à¦‡ à¦šà§‡à¦·à§à¦Ÿà¦¾ à¦¸à¦«à¦² à¦•à¦°à¦¤à§‡ à¦ªà§à¦°à§Ÿà§‹à¦œà¦¨ à¦†à¦ªà¦¨à¦¾à¦¦à§‡à¦° à¦…à¦‚à¦¶à¦—à§à¦°à¦¹à¦£à¥¤ \r\nà¦®à§à¦²à¦¤ à¦à¦Ÿà¦¿ à¦†à¦®à¦¾à¦¦à§‡à¦° à¦“à¦ªà§‡à¦¨ à¦šà§à¦¯à¦¾à¦°à¦¿à¦Ÿà¦¿ à¦•à¦¨à¦¸à¦¾à¦°à§à¦Ÿ à¦¹à¦¬à§‡à¥¤ à¦‰à¦ªà¦¸à§à¦¥à¦¿à¦¤ à¦¸à¦•à¦²à§‡ à¦¯à¦¾à¦° à¦¯à¦¾à¦° à¦…à¦¬à¦¸à§à¦¥à¦¾à¦¨ à¦¥à§‡à¦•à§‡ à¦¸à¦¾à¦¹à¦¾à¦¯à§à¦¯à§‡à¦° à¦¹à¦¾à¦¤ à¦¬à¦¾à§œà¦¿à§Ÿà§‡ à¦¦à¦¿à¦²à§‡ à¦†à¦®à¦¾à¦¦à§‡à¦° à¦¦à§ƒà§œ à¦¬à¦¿à¦¶à§à¦¬à¦¾à¦¸ à¦†à¦®à¦°à¦¾ à¦†à¦®à¦¾à¦¦à§‡à¦° à¦²à¦•à§à¦·à§‡ à¦ªà§Œà¦›à§‡ à¦¯à§‡à¦¤à§‡ à¦ªà¦¾à¦°à¦¬à§‹à¥¤', '307527431_763138411707316_8017557995335822994_n.jpg', '', '09.20.2022'),
(56, 5, 43, 'Royal Economics Club and Bangladesh Youth Leadership Center (BYLC), BYLCx presents \r\nBlended Workshop on Kick Start Your Career.', '307657349_1533839287066762_607429440969716104_n.jpg', 'Public', '09.20.2022');

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
(5, 'Sanjida NItu', 'nitu@student.nstu.edu.bd', '1ff1de774005f8da13f42943881c655f', 'IMG-20211216-WA0013.jpg', 'student', 'IIT', 14, 1, ''),
(35, 'Shahriar Ahmed', 'shahriar2514@student.nstu.edu.bd', '37693cfc748049e45d87b8c7d8b9aacd', 'Siyam1.jpg', 'Student', 'IIT', 14, 1, 'b2f93a39'),
(36, ' Raju Bishash', 'raju2514@student.nstu.edu.bd', '1ff1de774005f8da13f42943881c655f', 'RAju.jpg', 'Student', 'IIT', 14, 1, 'ecd58c2b'),
(38, 'Roichuddun rana', 'rana2514@student.nstu.edu.bd', '1ff1de774005f8da13f42943881c655f', '306630147_590001779472321_8372578113628443782_n.jpg', 'Student', 'IIT', 14, 1, 'ecd58c2b'),
(39, 'Sunaan Sultan', 'sunaan2514@student.nstu.edu.bd', '1ff1de774005f8da13f42943881c655f', 'IMG-20211231-WA0157.jpg', 'Student', 'IIT', 14, 1, 'ecd58c2b'),
(40, 'Prosanto Deb', 'prosanto2514@student.nstu.edu.bd', '1ff1de774005f8da13f42943881c655f', 'Prosanto.jpg', 'Student', 'IIT', 14, 1, 'ecd58c2b'),
(41, 'Nadia Islam', 'nadia2514@student.nstu.edu.bd', '1ff1de774005f8da13f42943881c655f', 'IMG-20211231-WA0157.jpg', 'Student', 'IIT', 14, 1, 'ecd58c2b'),
(42, 'Redwan Hossain', 'redwan2514@student.nstu.edu.bd', '1ff1de774005f8da13f42943881c655f', 'Redwan.jpg', 'Student', 'IIT', 14, 1, 'ecd58c2b'),
(43, 'Md. Al-amin ', 'alamin2514@student.nstu.edu.bd', '1ff1de774005f8da13f42943881c655f', 'pias.jpg', 'Student', 'IIT', 14, 1, 'ecd58c2b'),
(44, 'Abdullah Alif', 'alif2514@student.nstu.edu.bd', '1ff1de774005f8da13f42943881c655f', 'Aliff.jpg', 'Student', 'IIT', 14, 1, 'ecd58c2b'),
(45, 'Sultana Marjan', 'marjan2514@student.nstu.edu.bd', '1ff1de774005f8da13f42943881c655f', 'Mitu.jpg', 'Student', 'IIT', 14, 1, 'ecd58c2b'),
(46, 'Naimur Rahman', 'naimur2514@student.nstu.edu.bd', '1ff1de774005f8da13f42943881c655f', 'Naimur.jpg', 'Student', 'IIT', 14, 1, 'ecd58c2b'),
(47, 'Joy Bhowmik', 'joy2514@student.nstu.edu.bd', '1ff1de774005f8da13f42943881c655f', 'Joy.jpg', 'Student', 'IIT', 14, 1, 'ecd58c2b'),
(48, 'Md. Tahmid', 'tahmid2514@student.nstu.edu.bd', '1ff1de774005f8da13f42943881c655f', 'Tahmid.jpg', 'Student', 'IIT', 14, 1, 'ecd58c2b'),
(49, 'Md. Alamgir  Hossain', 'alamgir2514@student.nstu.edu.bd', '1ff1de774005f8da13f42943881c655f', 'Alamgir.jpg', 'Student', 'IIT', 14, 1, 'ecd58c2b'),
(50, 'Rokonujjaman', 'rokon2514@student.nstu.edu.bd', '1ff1de774005f8da13f42943881c655f', 'rokon.jpg', 'Student', 'IIT', 14, 1, 'ecd58c2b'),
(51, 'Anupa Das', 'anupa2514@student.nstu.edu.bd', '1ff1de774005f8da13f42943881c655f', 'Anupa.jpg', 'Student', 'IIT', 14, 1, 'ecd58c2b'),
(52, 'Sourav Debnath', 'sourav2514@student.nstu.edu.bd', '1ff1de774005f8da13f42943881c655f', 'Debu.jpg', 'Student', 'IIT', 14, 1, 'ecd58c2b'),
(53, 'Sanjatul Hasan', 'sanjatul2514@student.nstu.edu.bd', '1ff1de774005f8da13f42943881c655f', 'sian.jpg', 'Student', 'IIT', 14, 1, 'ecd58c2b'),
(54, 'Arnab Dey', 'arnab2514@student.nstu.edu.bd', '1ff1de774005f8da13f42943881c655f', 'Arnab.jpg', 'Student', 'IIT', 14, 1, 'ecd58c2b'),
(55, 'Ayshea Nasrin', 'ayesha2514@student.nstu.edu.bd', '1ff1de774005f8da13f42943881c655f', 'Ripa.jpg', 'Student', 'IIT', 14, 1, 'ecd58c2b'),
(56, 'Abdullah Al Mamun', 'mamun2514@student.nstu.edu.bd', '1ff1de774005f8da13f42943881c655f', 'mamun.jpg', 'Student', 'IIT', 14, 1, 'ecd58c2b'),
(57, 'Nayeem khan', 'nayeem2514@student.nstu.edu.bd', '1ff1de774005f8da13f42943881c655f', 'ayem.jpg', 'Student', 'IIT', 14, 1, 'ecd58c2b'),
(58, 'Md Rayhan Billah', 'rayhan2514@student.nstu.edu.bd', '1ff1de774005f8da13f42943881c655f', 'Billu.jpg', 'Student', 'IIT', 14, 1, 'ecd58c2b'),
(59, 'Sourav Barman', 'barman2514@student.nstu.edu.bd', '1ff1de774005f8da13f42943881c655f', 'bormon.jpg', 'Student', 'IIT', 14, 1, 'ecd58c2b'),
(60, 'Dhruba kanti', 'dhruba2514@student.nstu.edu.bd', '1ff1de774005f8da13f42943881c655f', '269914576_471584951235536_8378856938442061634_n.jpg', 'Student', 'IIT', 14, 1, 'ecd58c2b'),
(61, 'Fardin Ahsan Shawon', 'fardin2514@student.nstu.edu.bd', '1ff1de774005f8da13f42943881c655f', '280583744_708652253711360_7040209141863349966_n.jpg', 'Student', 'IIT', 14, 1, 'ecd58c2b'),
(62, 'Ratna Tripura', 'ratna2514@student.nstu.edu.bd', '1ff1de774005f8da13f42943881c655f', '174327172_1444781769198257_4261523618838482564_n.jpg', 'Student', 'IIT', 14, 1, 'ecd58c2b');

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
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`noti_id`);

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
  MODIFY `session_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `clubmonthypayment`
--
ALTER TABLE `clubmonthypayment`
  MODIFY `payment_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `clubs`
--
ALTER TABLE `clubs`
  MODIFY `club_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment_reply`
--
ALTER TABLE `comment_reply`
  MODIFY `reply_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_pay`
--
ALTER TABLE `form_pay`
  MODIFY `userpay_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `invitation`
--
ALTER TABLE `invitation`
  MODIFY `invite_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `noti_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pay`
--
ALTER TABLE `pay`
  MODIFY `userpayment_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `userform_info`
--
ALTER TABLE `userform_info`
  MODIFY `apply_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

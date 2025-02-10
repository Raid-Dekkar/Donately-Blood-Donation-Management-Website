-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2023 at 12:52 PM
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
-- Database: `pfe_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id_ad` int(50) NOT NULL,
  `first_name_ad` varchar(50) NOT NULL,
  `last_name_ad` varchar(50) NOT NULL,
  `user_name_ad` varchar(50) NOT NULL,
  `email_ad` varchar(50) NOT NULL,
  `password_ad` varchar(50) NOT NULL,
  `md5_pass_ad` varchar(50) NOT NULL,
  `gender_ad` enum('male','female') NOT NULL DEFAULT 'male',
  `city_ad` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone_number_ad` varchar(20) NOT NULL,
  `birth_date_ad` date NOT NULL,
  `profile_pic_ad` varchar(255) NOT NULL DEFAULT 'profile-pic.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id_ad`, `first_name_ad`, `last_name_ad`, `user_name_ad`, `email_ad`, `password_ad`, `md5_pass_ad`, `gender_ad`, `city_ad`, `phone_number_ad`, `birth_date_ad`, `profile_pic_ad`) VALUES
(2, 'raid', 'dekkar', 'raid_admin', 'rd.admin@gmail.com', '321', 'caf1a3dfb505ffed0d024130f58c5cfa', 'male', 'عين ولمان', '1111111111', '2002-08-01', 'profile-pic.png'),
(3, 'ayoub', 'megdoud', 'ayoub_admin', 'am.admin@gmail.com', '321', 'caf1a3dfb505ffed0d024130f58c5cfa', 'male', '', '', '0000-00-00', 'profile-pic.png'),
(4, 'youcef', 'boulkhiout', 'youcef_admin', 'yb.admin@gmail.com', '321', 'caf1a3dfb505ffed0d024130f58c5cfa', 'male', '', '', '0000-00-00', 'profile-pic.png');

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `id` int(20) NOT NULL,
  `phone_number_d` varchar(20) NOT NULL,
  `birth_date_d` date NOT NULL,
  `city_d` varchar(20) NOT NULL,
  `gender_d` varchar(10) NOT NULL,
  `blood_type_d` varchar(10) NOT NULL,
  `recent_donation` varchar(50) NOT NULL,
  `diseases` varchar(50) NOT NULL,
  `status` enum('Pending','Approved','Declined') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`id`, `phone_number_d`, `birth_date_d`, `city_d`, `gender_d`, `blood_type_d`, `recent_donation`, `diseases`, `status`) VALUES
(1, '778924621', '2002-08-01', 'عين ولمان', 'male', 'O+', 'hh', 'kkk', 'Approved'),
(2, '657935588', '2002-07-18', 'قصر الأبطال', 'male', 'B-', 'today', 'no', 'Approved'),
(3, '1111111111', '1990-07-07', 'سطيف', 'male', 'O-', '1 month ago', 'no ', 'Pending'),
(4, '2222222222', '2002-09-15', 'سطيف', 'male', 'A+', '2 months ago', 'i have nothing', 'Declined'),
(7, '3333333333', '2002-02-22', 'العلمة', 'male', 'AB+', 'i do not remember', 'just some allergies', 'Declined');

-- --------------------------------------------------------

--
-- Table structure for table `recievers`
--

CREATE TABLE `recievers` (
  `id` int(20) NOT NULL,
  `phone_number_r` varchar(20) NOT NULL,
  `birth_date_r` date NOT NULL,
  `city_r` varchar(20) NOT NULL,
  `gender_r` varchar(10) NOT NULL,
  `blood_type_r` varchar(10) NOT NULL,
  `medical_condition` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recievers`
--

INSERT INTO `recievers` (`id`, `phone_number_r`, `birth_date_r`, `city_r`, `gender_r`, `blood_type_r`, `medical_condition`) VALUES
(1, '778924621', '2002-08-01', 'عين ولمان', 'male', 'O+', 'hello'),
(2, '657935588', '2002-07-18', 'قصر الأبطال', 'male', 'B-', 'good'),
(3, '1111111111', '1990-07-07', 'سطيف', 'male', 'O-', 'very good'),
(4, '2222222222', '2002-09-15', 'سطيف', 'male', 'A+', 'it is ok'),
(7, '3333333333', '2002-02-22', 'العلمة', 'male', 'AB+', 'urgent');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL,
  `md5_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `user_name`, `email`, `password`, `md5_pass`) VALUES
(1, 'raid', 'dekkar', 'raid_dek', 'rad@gmail.com', '123', '202cb962ac59075b964b07152d234b70'),
(2, 'ayoub', 'megdoud', 'ayoub_meg', 'aym@gmail.com', '123', '202cb962ac59075b964b07152d234b70'),
(3, 'youcef', 'boulkhiout', 'youcef_bou', 'yb@gmail.com', '123', '202cb962ac59075b964b07152d234b70'),
(4, 'zinou', 'bouyoucef', 'zinou_bou', 'zinou@gmail.com', '123', '202cb962ac59075b964b07152d234b70'),
(5, 'monaim', 'cheraga', 'monaim_che', 'moch@gmail.com', '123', '202cb962ac59075b964b07152d234b70'),
(6, 'oussama', 'belaiche', 'oussama_bel', 'oubel@gmail.com', '123', '202cb962ac59075b964b07152d234b70'),
(7, 'fakhro', 'hayahoum', 'fakhro_hay', 'fah@gmail.com', '123', '202cb962ac59075b964b07152d234b70'),
(8, 'saif', 'ouchfoun', 'saif_ouch', 'saou@gmail.com', '123', '202cb962ac59075b964b07152d234b70'),
(9, 'brahim', 'bendada', 'brahim_ben', 'brb@gmail.com', '123', '202cb962ac59075b964b07152d234b70'),
(10, 'okba', 'merrouche', 'okba_mer', 'okmer@gmail.com', '123', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id_ad`);

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recievers`
--
ALTER TABLE `recievers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id_ad` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `recievers`
--
ALTER TABLE `recievers`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

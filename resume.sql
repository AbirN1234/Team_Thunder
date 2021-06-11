-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2021 at 08:03 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resume`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`) VALUES
(1, 'Test name', 'email@gmail.com', 'password1234', 'test_img.png'),
(2, 'Test name', 'email@gmail.com', 'password1234', 'test_img.png'),
(3, 'test at 10:12', 't1012@mail.com', 'c0d5ad23d0deeb156791dda89518649b', 'myInage'),
(4, 'test at 1022', 't1022@mail.com', 'c0d5ad23d0deeb156791dda89518649b', 'myPhoto'),
(5, 'test at 1022', 't1022@mail.com', 'c0d5ad23d0deeb156791dda89518649b', 'myPhoto'),
(6, 'test at 1022', 't1022@mail.com', 'c0d5ad23d0deeb156791dda89518649b', 'myPhoto'),
(7, 'test at 1022', 't1022@mail.com', 'c0d5ad23d0deeb156791dda89518649b', 'myPhoto'),
(8, 'test at 1022', 't1022@mail.com', 'c0d5ad23d0deeb156791dda89518649b', 'myPhoto'),
(9, 'test at 1022', 't1022@mail.com', 'c0d5ad23d0deeb156791dda89518649b', 'myPhoto'),
(10, 'test at 1022', 't1022@mail.com', 'c0d5ad23d0deeb156791dda89518649b', 'myPhoto'),
(11, 'test at 1022', 't1022@mail.com', 'c0d5ad23d0deeb156791dda89518649b', 'myPhoto'),
(12, 'test at 1022', 't1022@mail.com', 'c0d5ad23d0deeb156791dda89518649b', 'myPhoto'),
(13, 'test at 1022', 't1022@mail.com', 'c0d5ad23d0deeb156791dda89518649b', 'myPhoto'),
(14, 'test at 1022', 't1022@mail.com', 'c0d5ad23d0deeb156791dda89518649b', 'myPhoto'),
(15, 'test at 1022', 't1022@mail.com', 'c0d5ad23d0deeb156791dda89518649b', 'myPhoto'),
(16, 'name1029', 'mail@mail.com', 'c0d5ad23d0deeb156791dda89518649b', 'picture'),
(17, 'name1037', 'mail@mail.com', 'c0d5ad23d0deeb156791dda89518649b', 'picture'),
(18, 'name1037', 'mail@mail.com', 'c0d5ad23d0deeb156791dda89518649b', 'picture'),
(19, 'name1037', 'mail@mail.com', 'c0d5ad23d0deeb156791dda89518649b', 'picture'),
(20, 'nameat1041', 't1041@mail.com', 'c0d5ad23d0deeb156791dda89518649b', 'myImage'),
(21, 'name at 1054', 'test@mail.com', 'f4242ffccf4db13e7b627092b220b493', 'img'),
(22, 'nameat1111', 'mail1111@gmail.com', 'c0d5ad23d0deeb156791dda89518649b', 'img'),
(23, 'nameat1111', 'mail1111@gmail.com', 'c0d5ad23d0deeb156791dda89518649b', 'img'),
(24, 'nameat1111', 'mail1111@gmail.com', 'c0d5ad23d0deeb156791dda89518649b', 'img'),
(25, 'nameat1111', 'mail1111@gmail.com', 'c0d5ad23d0deeb156791dda89518649b', 'img'),
(26, 'nameat1111', 'mail1111@gmail.com', 'c0d5ad23d0deeb156791dda89518649b', 'img'),
(27, 'nameat1111', 'mail1111@gmail.com', 'c0d5ad23d0deeb156791dda89518649b', 'img'),
(28, 'nameat1111', 'mail1111@gmail.com', 'c0d5ad23d0deeb156791dda89518649b', 'img'),
(29, 'nameat1111', 'mail1111@gmail.com', 'c0d5ad23d0deeb156791dda89518649b', 'img'),
(30, 'nameat1111', 'mail1111@gmail.com', 'c0d5ad23d0deeb156791dda89518649b', 'img'),
(31, 'nameat1111', 'mail1111@gmail.com', 'c0d5ad23d0deeb156791dda89518649b', 'img'),
(32, 'nameat1111', 'mail1111@gmail.com', 'c0d5ad23d0deeb156791dda89518649b', 'img'),
(33, 'nameat1111', 'mail1111@gmail.com', 'c0d5ad23d0deeb156791dda89518649b', 'img'),
(34, 'nameat1111', 'mail1111@gmail.com', 'c0d5ad23d0deeb156791dda89518649b', 'img'),
(35, 'nameat1111', 'mail1111@gmail.com', 'c0d5ad23d0deeb156791dda89518649b', 'img'),
(36, 'nameat1111', 'mail1111@gmail.com', 'c0d5ad23d0deeb156791dda89518649b', 'img'),
(37, 'nameat1111', 'mail1111@gmail.com', 'c0d5ad23d0deeb156791dda89518649b', 'img'),
(38, 'nameat1111', 'mail1111@gmail.com', 'c0d5ad23d0deeb156791dda89518649b', 'img'),
(39, 'nameat1111', 'mail1111@gmail.com', 'c0d5ad23d0deeb156791dda89518649b', 'img'),
(40, 'nameat1111', 'mail1111@gmail.com', 'c0d5ad23d0deeb156791dda89518649b', 'img'),
(41, 'nameat1111', 'mail1111@gmail.com', 'c0d5ad23d0deeb156791dda89518649b', 'img'),
(42, 'nameat1111', 'mail1111@gmail.com', 'c0d5ad23d0deeb156791dda89518649b', 'img'),
(43, 'nameat1111', 'mail1111@gmail.com', 'c0d5ad23d0deeb156791dda89518649b', 'img'),
(44, 'uhnu', 'uh@oinjfi.pcijm', 'c0d5ad23d0deeb156791dda89518649b', 'image'),
(45, 'myName', 'email@gmail.com', 'f4242ffccf4db13e7b627092b220b493', 'myImage'),
(46, 'myName', 'email@gmail.com', 'c0d5ad23d0deeb156791dda89518649b', 'myImage'),
(47, 'nameat1144', 'e1144@mail.com', 'c0d5ad23d0deeb156791dda89518649b', 'img'),
(48, 'nameat0532', 'subhradeep662@gmail.com', 'c0d5ad23d0deeb156791dda89518649b', 'image'),
(49, 'Subharadeep Halder', 'subhradeep662@gmail.com', 'c0d5ad23d0deeb156791dda89518649b', 'img'),
(50, '', '', '4d10c71cde1a09d3d8496b7bd48b7472', ''),
(51, '', '', '4d10c71cde1a09d3d8496b7bd48b7472', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

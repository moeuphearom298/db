-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 17, 2022 at 07:42 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gdsnaf`
--

-- --------------------------------------------------------

--
-- Table structure for table `authority`
--

CREATE TABLE `authority` (
  `id` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authority`
--

INSERT INTO `authority` (`id`, `name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER'),
(3, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id` text DEFAULT NULL,
  `fileName` text DEFAULT NULL,
  `size` text DEFAULT NULL,
  `postDate` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `type` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id`, `fileName`, `size`, `postDate`, `status`, `title`, `type`) VALUES
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `downloadfile`
--

CREATE TABLE `downloadfile` (
  `id` text DEFAULT NULL,
  `downloadId` text DEFAULT NULL,
  `file` binary(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `imageBase64` text DEFAULT NULL,
  `newsEventId` text DEFAULT NULL,
  `rank` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `image`, `imageBase64`, `newsEventId`, `rank`) VALUES
('id', 'image', 'imageBase64', 'newsEventId', 'rank');

-- --------------------------------------------------------

--
-- Table structure for table `newsandevent`
--

CREATE TABLE `newsandevent` (
  `id` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `postDate` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `weight` text DEFAULT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newsandevent`
--

INSERT INTO `newsandevent` (`id`, `description`, `location`, `postDate`, `status`, `title`, `weight`, `image`) VALUES
('id', 'description', 'location', 'postDate', 'status', 'title', 'weight', 'image');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` text DEFAULT NULL,
  `accountNonExpired` int(11) DEFAULT NULL,
  `accountNonLocked` int(11) DEFAULT NULL,
  `credentialsNonExpired` int(11) DEFAULT NULL,
  `enabled` int(11) DEFAULT NULL,
  `firstname` text DEFAULT NULL,
  `lastname` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `username` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `accountNonExpired`, `accountNonLocked`, `credentialsNonExpired`, `enabled`, `firstname`, `lastname`, `name`, `password`, `username`) VALUES
('d_U36NRFoAQ5hyyJa7iRgzEUvF', 1, 1, 1, 1, 'admin', 'admin', 'admin admin', 'admin', 'admin'),
('d_x22VtD5nDiwrHKmvMPh2UjIz', 1, 1, 1, 1, 'user', 'user', 'user user', 'user', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `user_authority`
--

CREATE TABLE `user_authority` (
  `USER_ID` text DEFAULT NULL,
  `AUTHORITY_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_authority`
--

INSERT INTO `user_authority` (`USER_ID`, `AUTHORITY_ID`) VALUES
('d_U36NRFoAQ5hyyJa7iRgzEUvF', 1),
('d_x22VtD5nDiwrHKmvMPh2UjIz', 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

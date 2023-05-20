-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2020 at 03:43 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u655308956_dent`
--

-- --------------------------------------------------------

--
-- Table structure for table `cancelled`
--

CREATE TABLE `cancelled` (
  `id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `dates` datetime NOT NULL,
  `canc` datetime NOT NULL,
  `reason` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cancelled`
--

INSERT INTO `cancelled` (`id`, `app_id`, `title`, `dates`, `canc`, `reason`) VALUES
(23, 131, 'New- Adarlo, Ronel', '2020-05-20 10:00:00', '2020-05-17 09:38:17', 'I havea bussiness meeting'),
(24, 133, 'New- Adarlo, Ronel', '2020-05-28 08:00:00', '2020-05-17 09:43:43', 'I havea bussiness meeting'),
(25, 133, 'New- Adarlo, Ronel', '2020-05-28 08:00:00', '2020-05-17 09:44:44', 'I havea bussiness meeting'),
(26, 134, 'New- Adarlo, Ronel', '2020-05-27 08:00:00', '2020-05-17 09:47:12', 'im not feeling well'),
(27, 135, 'New- Adarlo, Ronel', '2020-05-28 08:00:00', '2020-05-17 09:52:54', 'im not feeling well'),
(28, 137, 'New- Aceveda, Jairah', '2020-05-20 11:00:00', '2020-05-17 12:05:37', 'I havea bussiness meeting');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dates` date NOT NULL,
  `created` date NOT NULL,
  `modified` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Active, 0=Block',
  `start_event` datetime NOT NULL,
  `end_event` datetime NOT NULL,
  `changes` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `patient_id`, `title`, `dates`, `created`, `modified`, `status`, `start_event`, `end_event`, `changes`) VALUES
(132, 22, 'New- Adarlo, Rolan', '2020-05-20', '2020-05-16', '2020-05-16 15:05:25', 0, '2020-05-20 10:00:00', '2020-05-20 10:30:00', 'NO_SHOW'),
(137, 24, 'New- Aceveda, Jairah', '2020-05-20', '2020-05-17', '0000-00-00 00:00:00', 0, '2020-05-20 11:00:00', '2020-05-20 11:30:00', 'Cancelled Appointment'),
(138, 24, 'New- Aceveda, Jairah', '2020-05-21', '2020-05-17', '2020-05-17 15:01:19', 1, '2020-05-21 08:00:00', '2020-05-21 08:30:00', 'Rescheduled'),
(139, 25, 'New- De Castro, Phoebe Kates', '2020-05-18', '2020-05-17', '0000-00-00 00:00:00', 1, '2020-05-18 12:00:00', '2020-05-18 12:30:00', 'Pending'),
(140, 0, 'may gagawin ako', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, '2020-05-19 09:00:00', '2020-05-19 09:30:00', 'Pending'),
(141, 0, 'may seminar si doc', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, '2020-05-19 12:00:00', '2020-05-19 16:00:00', 'Pending'),
(142, 26, 'New- Lopez, Camille ', '2020-05-20', '2020-05-17', '0000-00-00 00:00:00', 1, '2020-05-20 09:40:00', '2020-05-20 10:10:00', 'Pending'),
(143, 0, 'Birthday ng Kumpare ni Doc', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, '2020-05-17 10:30:00', '2020-05-17 16:30:00', 'Pending'),
(144, 27, 'Recall- Delizo, Hannah', '2020-05-19', '2020-05-17', '0000-00-00 00:00:00', 1, '2020-05-19 10:00:00', '2020-05-19 10:15:00', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `change_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `action_made` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `user_name`, `change_time`, `action_made`) VALUES
(51, ' ', '2019-04-21 21:22:39', 'Add Appointment.'),
(52, ' ', '2019-04-21 21:27:34', 'Add Appointment.'),
(53, ' ', '2019-04-21 21:28:02', 'Add Appointment.'),
(54, ' ', '2019-04-21 21:58:05', 'Add Appointment.'),
(55, ' ', '2019-04-21 22:00:39', 'Add Appointment.'),
(56, ' ', '2019-04-21 22:00:41', 'Add Appointment.'),
(57, ' ', '2019-04-21 22:01:07', 'Add Appointment.'),
(58, ' ', '2019-04-21 22:02:18', 'Add Appointment.'),
(59, ' ', '2019-04-21 22:02:19', 'Add Appointment.'),
(60, ' ', '2019-04-21 22:02:21', 'Add Appointment.'),
(61, ' ', '2019-04-21 22:02:22', 'Add Appointment.'),
(62, ' ', '2019-04-21 22:02:22', 'Add Appointment.'),
(63, ' ', '2019-04-21 22:04:45', 'Add Appointment.'),
(64, ' ', '2019-04-21 22:13:48', 'Add Appointment.'),
(65, ' ', '2019-04-21 22:14:21', 'Add Appointment.'),
(66, ' ', '2019-04-21 22:14:23', 'Add Appointment.'),
(67, ' ', '2019-04-21 22:14:34', 'Add Appointment.'),
(68, ' ', '2019-04-21 22:19:23', 'Add Appointment.'),
(69, ' ', '2019-04-21 22:45:36', 'Add Appointment.'),
(70, ' ', '2019-04-21 22:46:21', 'Add Appointment.'),
(71, ' ', '2019-04-21 22:48:03', 'Add Appointment.'),
(72, ' ', '2019-04-21 22:48:13', 'Add Appointment.'),
(73, ' ', '2019-04-21 22:48:31', 'Add Appointment.'),
(74, ' ', '2019-04-22 00:00:12', 'Add Appointment.'),
(75, ' ', '2019-04-22 00:00:13', 'Add Appointment.'),
(76, ' ', '2019-04-22 00:00:13', 'Add Appointment.'),
(77, ' ', '2019-04-22 00:00:13', 'Add Appointment.'),
(78, ' ', '2019-04-22 00:00:13', 'Add Appointment.'),
(79, ' ', '2019-04-22 00:00:14', 'Add Appointment.'),
(80, ' ', '2019-04-22 00:00:14', 'Add Appointment.'),
(81, ' ', '2019-04-22 00:00:14', 'Add Appointment.'),
(82, ' ', '2019-04-22 00:00:14', 'Add Appointment.'),
(83, ' ', '2019-04-22 00:00:14', 'Add Appointment.'),
(84, ' ', '2019-04-22 00:00:15', 'Add Appointment.'),
(85, ' ', '2019-04-22 00:00:15', 'Add Appointment.'),
(86, ' ', '2019-04-22 00:00:15', 'Add Appointment.'),
(87, ' ', '2019-04-22 00:00:15', 'Add Appointment.'),
(88, ' ', '2019-04-22 00:00:15', 'Add Appointment.'),
(89, ' ', '2019-04-22 00:00:16', 'Add Appointment.'),
(90, ' ', '2019-04-22 00:00:16', 'Add Appointment.'),
(91, ' ', '2019-04-22 00:00:16', 'Add Appointment.'),
(92, ' ', '2019-04-22 00:00:16', 'Add Appointment.'),
(93, ' ', '2019-04-22 00:00:17', 'Add Appointment.'),
(94, ' ', '2019-04-22 00:00:17', 'Add Appointment.'),
(95, ' ', '2019-04-22 00:00:17', 'Add Appointment.'),
(96, ' ', '2019-04-22 00:00:17', 'Add Appointment.'),
(97, ' ', '2019-04-22 00:00:17', 'Add Appointment.'),
(98, ' ', '2019-04-22 00:00:18', 'Add Appointment.'),
(99, ' ', '2019-04-22 00:00:18', 'Add Appointment.'),
(100, ' ', '2019-04-22 00:00:18', 'Add Appointment.'),
(101, ' ', '2019-04-22 00:00:18', 'Add Appointment.'),
(102, ' ', '2019-04-22 00:00:18', 'Add Appointment.'),
(103, ' ', '2019-04-22 00:00:19', 'Add Appointment.'),
(104, ' ', '2019-04-22 00:00:19', 'Add Appointment.'),
(105, ' ', '2019-04-22 00:00:19', 'Add Appointment.'),
(106, ' ', '2019-04-22 00:00:20', 'Add Appointment.'),
(107, ' ', '2019-04-22 00:00:20', 'Add Appointment.'),
(108, ' ', '2019-04-22 00:00:20', 'Add Appointment.'),
(109, ' ', '2019-04-22 00:00:20', 'Add Appointment.'),
(110, ' ', '2019-04-22 00:00:20', 'Add Appointment.'),
(111, ' ', '2019-04-22 00:00:21', 'Add Appointment.'),
(112, ' ', '2019-04-22 00:00:21', 'Add Appointment.'),
(113, ' ', '2019-04-22 00:00:21', 'Add Appointment.'),
(114, ' ', '2019-04-22 00:00:21', 'Add Appointment.'),
(115, ' ', '2019-04-22 00:00:21', 'Add Appointment.'),
(116, ' ', '2019-04-22 00:00:22', 'Add Appointment.'),
(117, ' ', '2019-04-22 00:00:22', 'Add Appointment.'),
(118, ' ', '2019-04-22 00:00:22', 'Add Appointment.'),
(119, ' ', '2019-04-22 00:00:23', 'Add Appointment.'),
(120, ' ', '2019-04-22 00:00:23', 'Add Appointment.'),
(121, ' ', '2019-04-22 00:00:23', 'Add Appointment.'),
(122, ' ', '2019-04-22 00:00:23', 'Add Appointment.'),
(123, ' ', '2019-04-22 00:00:24', 'Add Appointment.'),
(124, ' ', '2019-04-22 00:00:24', 'Add Appointment.'),
(125, ' ', '2019-04-22 00:00:24', 'Add Appointment.'),
(126, ' ', '2019-04-22 00:00:24', 'Add Appointment.'),
(127, ' ', '2019-04-22 00:00:24', 'Add Appointment.'),
(128, ' ', '2019-04-22 00:00:25', 'Add Appointment.'),
(129, ' ', '2019-04-22 00:00:25', 'Add Appointment.'),
(130, ' ', '2019-04-22 00:00:25', 'Add Appointment.'),
(131, ' ', '2019-04-22 00:00:25', 'Add Appointment.'),
(132, ' ', '2019-04-22 00:00:25', 'Add Appointment.'),
(133, ' ', '2019-04-22 00:00:26', 'Add Appointment.'),
(134, ' ', '2019-04-22 00:00:26', 'Add Appointment.'),
(135, ' ', '2019-04-22 00:00:26', 'Add Appointment.'),
(136, ' ', '2019-04-22 00:00:26', 'Add Appointment.'),
(137, ' ', '2019-04-22 00:00:27', 'Add Appointment.'),
(138, ' ', '2019-04-22 00:00:27', 'Add Appointment.'),
(139, ' ', '2019-04-22 00:00:27', 'Add Appointment.'),
(140, ' ', '2019-04-22 00:00:27', 'Add Appointment.'),
(141, ' ', '2019-04-22 00:00:27', 'Add Appointment.'),
(142, ' ', '2019-04-22 00:00:28', 'Add Appointment.'),
(143, ' ', '2019-04-22 00:00:28', 'Add Appointment.'),
(144, ' ', '2019-04-22 00:00:28', 'Add Appointment.'),
(145, ' ', '2019-04-22 00:00:28', 'Add Appointment.'),
(146, ' ', '2019-04-22 00:00:29', 'Add Appointment.'),
(147, ' ', '2019-04-22 00:00:29', 'Add Appointment.'),
(148, ' ', '2019-04-22 00:00:29', 'Add Appointment.'),
(149, ' ', '2019-04-22 00:00:29', 'Add Appointment.'),
(150, ' ', '2019-04-22 00:00:29', 'Add Appointment.'),
(151, ' ', '2019-04-22 00:00:30', 'Add Appointment.'),
(152, ' ', '2019-04-22 00:00:30', 'Add Appointment.'),
(153, ' ', '2019-04-22 00:00:30', 'Add Appointment.'),
(154, ' ', '2019-04-22 00:00:30', 'Add Appointment.'),
(155, ' ', '2019-04-22 00:00:31', 'Add Appointment.'),
(156, ' ', '2019-04-22 00:00:31', 'Add Appointment.'),
(157, ' ', '2019-04-22 00:00:31', 'Add Appointment.'),
(158, ' ', '2019-04-22 00:00:31', 'Add Appointment.'),
(159, ' ', '2019-04-22 00:00:31', 'Add Appointment.'),
(160, ' ', '2019-04-22 00:00:32', 'Add Appointment.'),
(161, ' ', '2019-04-22 00:00:32', 'Add Appointment.'),
(162, ' ', '2019-04-22 00:00:32', 'Add Appointment.'),
(163, ' ', '2019-04-22 00:00:32', 'Add Appointment.'),
(164, ' ', '2019-04-22 00:00:32', 'Add Appointment.'),
(165, ' ', '2019-04-22 00:00:33', 'Add Appointment.'),
(166, ' ', '2019-04-22 00:00:33', 'Add Appointment.'),
(167, ' ', '2019-04-22 00:00:33', 'Add Appointment.'),
(168, ' ', '2019-04-22 00:00:33', 'Add Appointment.'),
(169, ' ', '2019-04-22 00:00:34', 'Add Appointment.'),
(170, ' ', '2019-04-22 00:00:34', 'Add Appointment.'),
(171, ' ', '2019-04-22 00:00:34', 'Add Appointment.'),
(172, ' ', '2019-04-22 00:00:34', 'Add Appointment.'),
(173, ' ', '2019-04-22 00:00:34', 'Add Appointment.'),
(174, ' ', '2019-04-22 00:00:35', 'Add Appointment.'),
(175, ' ', '2019-04-22 00:00:35', 'Add Appointment.'),
(176, ' ', '2019-04-22 00:00:35', 'Add Appointment.'),
(177, ' ', '2019-04-22 00:00:35', 'Add Appointment.'),
(178, ' ', '2019-04-22 00:00:35', 'Add Appointment.'),
(179, ' ', '2019-04-22 00:00:36', 'Add Appointment.'),
(180, ' ', '2019-04-22 00:00:36', 'Add Appointment.'),
(181, ' ', '2019-04-22 00:00:36', 'Add Appointment.'),
(182, ' ', '2019-04-22 00:00:36', 'Add Appointment.'),
(183, ' ', '2019-04-22 00:00:36', 'Add Appointment.'),
(184, ' ', '2019-04-22 00:00:37', 'Add Appointment.'),
(185, ' ', '2019-04-22 00:00:37', 'Add Appointment.'),
(186, ' ', '2019-04-22 00:00:37', 'Add Appointment.'),
(187, ' ', '2019-04-22 00:00:37', 'Add Appointment.'),
(188, ' ', '2019-04-22 00:00:38', 'Add Appointment.'),
(189, ' ', '2019-04-22 00:00:38', 'Add Appointment.'),
(190, ' ', '2019-04-22 00:00:38', 'Add Appointment.'),
(191, ' ', '2019-04-22 00:00:38', 'Add Appointment.'),
(192, ' ', '2019-04-22 00:00:39', 'Add Appointment.'),
(193, ' ', '2019-04-22 00:00:39', 'Add Appointment.'),
(194, ' ', '2019-04-22 00:00:39', 'Add Appointment.'),
(195, ' ', '2019-04-22 00:00:39', 'Add Appointment.'),
(196, ' ', '2019-04-22 00:00:40', 'Add Appointment.'),
(197, ' ', '2019-04-22 00:00:40', 'Add Appointment.'),
(198, ' ', '2019-04-22 00:00:40', 'Add Appointment.'),
(199, ' ', '2019-04-22 00:00:40', 'Add Appointment.'),
(200, ' ', '2019-04-22 00:00:41', 'Add Appointment.'),
(201, ' ', '2019-04-22 00:00:41', 'Add Appointment.'),
(202, ' ', '2019-04-22 00:00:41', 'Add Appointment.'),
(203, ' ', '2019-04-22 00:00:41', 'Add Appointment.'),
(204, ' ', '2019-04-22 00:00:42', 'Add Appointment.'),
(205, ' ', '2019-04-22 00:00:42', 'Add Appointment.'),
(206, ' ', '2019-04-22 00:00:42', 'Add Appointment.'),
(207, ' ', '2019-04-22 00:00:42', 'Add Appointment.'),
(208, ' ', '2019-04-22 00:00:43', 'Add Appointment.'),
(209, ' ', '2019-04-22 00:00:43', 'Add Appointment.'),
(210, ' ', '2019-04-22 00:00:43', 'Add Appointment.'),
(211, ' ', '2019-04-22 00:00:43', 'Add Appointment.'),
(212, ' ', '2019-04-22 00:00:43', 'Add Appointment.'),
(213, ' ', '2019-04-22 00:00:44', 'Add Appointment.'),
(214, ' ', '2019-04-22 00:00:44', 'Add Appointment.'),
(215, ' ', '2019-04-22 00:00:44', 'Add Appointment.'),
(216, ' ', '2019-04-22 00:00:44', 'Add Appointment.'),
(217, ' ', '2019-04-22 00:00:44', 'Add Appointment.'),
(218, ' ', '2019-04-22 00:00:45', 'Add Appointment.'),
(219, ' ', '2019-04-22 00:00:45', 'Add Appointment.'),
(220, ' ', '2019-04-22 00:00:45', 'Add Appointment.'),
(221, ' ', '2019-04-22 00:00:45', 'Add Appointment.'),
(222, ' ', '2019-04-22 00:00:46', 'Add Appointment.'),
(223, ' ', '2019-04-22 00:00:46', 'Add Appointment.'),
(224, ' ', '2019-04-22 00:00:46', 'Add Appointment.'),
(225, ' ', '2019-04-22 00:00:46', 'Add Appointment.'),
(226, ' ', '2019-04-22 00:00:46', 'Add Appointment.'),
(227, ' ', '2019-04-22 00:00:47', 'Add Appointment.'),
(228, ' ', '2019-04-22 00:00:47', 'Add Appointment.'),
(229, ' ', '2019-04-22 00:00:47', 'Add Appointment.'),
(230, ' ', '2019-04-22 00:00:47', 'Add Appointment.'),
(231, ' ', '2019-04-22 00:00:47', 'Add Appointment.'),
(232, ' ', '2019-04-22 00:00:48', 'Add Appointment.'),
(233, ' ', '2019-04-22 00:00:48', 'Add Appointment.'),
(234, ' ', '2019-04-22 00:00:48', 'Add Appointment.'),
(235, ' ', '2019-04-22 00:00:49', 'Add Appointment.'),
(236, ' ', '2019-04-22 00:00:49', 'Add Appointment.'),
(237, ' ', '2019-04-22 00:00:49', 'Add Appointment.'),
(238, ' ', '2019-04-22 00:00:49', 'Add Appointment.'),
(239, ' ', '2019-04-22 00:00:49', 'Add Appointment.'),
(240, ' ', '2019-04-22 00:00:50', 'Add Appointment.'),
(241, ' ', '2019-04-22 00:00:50', 'Add Appointment.'),
(242, ' ', '2019-04-22 00:00:50', 'Add Appointment.'),
(243, ' ', '2019-04-22 00:00:50', 'Add Appointment.'),
(244, ' ', '2019-04-22 00:00:51', 'Add Appointment.'),
(245, ' ', '2019-04-22 00:00:51', 'Add Appointment.'),
(246, ' ', '2019-04-22 00:00:51', 'Add Appointment.'),
(247, ' ', '2019-04-22 00:00:51', 'Add Appointment.'),
(248, ' ', '2019-04-22 00:00:51', 'Add Appointment.'),
(249, ' ', '2019-04-22 00:00:52', 'Add Appointment.'),
(250, ' ', '2019-04-22 00:00:52', 'Add Appointment.'),
(251, ' ', '2019-04-22 00:00:52', 'Add Appointment.'),
(252, ' ', '2019-04-22 00:00:52', 'Add Appointment.'),
(253, ' ', '2019-04-22 00:00:52', 'Add Appointment.'),
(254, ' ', '2019-04-22 00:00:53', 'Add Appointment.'),
(255, ' ', '2019-04-22 00:00:53', 'Add Appointment.'),
(256, ' ', '2019-04-22 00:00:53', 'Add Appointment.'),
(257, ' ', '2019-04-22 00:00:53', 'Add Appointment.'),
(258, ' ', '2019-04-22 00:00:53', 'Add Appointment.'),
(259, ' ', '2019-04-22 00:00:54', 'Add Appointment.'),
(260, ' ', '2019-04-22 00:00:54', 'Add Appointment.'),
(261, ' ', '2019-04-22 00:00:54', 'Add Appointment.'),
(262, ' ', '2019-04-22 00:00:54', 'Add Appointment.'),
(263, ' ', '2019-04-22 00:00:55', 'Add Appointment.'),
(264, ' ', '2019-04-22 00:00:55', 'Add Appointment.'),
(265, ' ', '2019-04-22 00:00:55', 'Add Appointment.'),
(266, ' ', '2019-04-22 00:00:55', 'Add Appointment.'),
(267, ' ', '2019-04-22 00:00:56', 'Add Appointment.'),
(268, ' ', '2019-04-22 00:00:56', 'Add Appointment.'),
(269, ' ', '2019-04-22 00:00:56', 'Add Appointment.'),
(270, ' ', '2019-04-22 00:00:56', 'Add Appointment.'),
(271, ' ', '2019-04-22 00:00:57', 'Add Appointment.'),
(272, ' ', '2019-04-22 00:00:57', 'Add Appointment.'),
(273, ' ', '2019-04-22 00:00:57', 'Add Appointment.'),
(274, ' ', '2019-04-22 00:00:57', 'Add Appointment.'),
(275, ' ', '2019-04-22 00:00:58', 'Add Appointment.'),
(276, ' ', '2019-04-22 00:00:58', 'Add Appointment.'),
(277, ' ', '2019-04-22 00:00:58', 'Add Appointment.'),
(278, ' ', '2019-04-22 00:00:58', 'Add Appointment.'),
(279, ' ', '2019-04-22 00:00:58', 'Add Appointment.'),
(280, ' ', '2019-04-22 00:00:59', 'Add Appointment.'),
(281, ' ', '2019-04-22 00:00:59', 'Add Appointment.'),
(282, ' ', '2019-04-22 00:00:59', 'Add Appointment.'),
(283, ' ', '2019-04-22 00:00:59', 'Add Appointment.'),
(284, ' ', '2019-04-22 00:01:00', 'Add Appointment.'),
(285, ' ', '2019-04-22 00:01:00', 'Add Appointment.'),
(286, ' ', '2019-04-22 00:01:00', 'Add Appointment.'),
(287, ' ', '2019-04-22 00:01:00', 'Add Appointment.'),
(288, ' ', '2019-04-22 00:01:00', 'Add Appointment.'),
(289, ' ', '2019-04-22 00:01:01', 'Add Appointment.'),
(290, ' ', '2019-04-22 00:01:01', 'Add Appointment.'),
(291, ' ', '2019-04-22 00:01:01', 'Add Appointment.'),
(292, ' ', '2019-04-22 00:01:01', 'Add Appointment.'),
(293, ' ', '2019-04-22 00:01:01', 'Add Appointment.'),
(294, ' ', '2019-04-22 00:01:02', 'Add Appointment.'),
(295, ' ', '2019-04-22 00:01:02', 'Add Appointment.'),
(296, ' ', '2019-04-22 00:01:02', 'Add Appointment.'),
(297, ' ', '2019-04-22 00:01:02', 'Add Appointment.'),
(298, ' ', '2019-04-22 00:01:02', 'Add Appointment.'),
(299, ' ', '2019-04-22 00:01:03', 'Add Appointment.'),
(300, ' ', '2019-04-22 00:01:03', 'Add Appointment.'),
(301, ' ', '2019-04-22 00:01:03', 'Add Appointment.'),
(302, ' ', '2019-04-22 00:01:03', 'Add Appointment.'),
(303, ' ', '2019-04-22 00:01:04', 'Add Appointment.'),
(304, ' ', '2019-04-22 00:01:04', 'Add Appointment.'),
(305, ' ', '2019-04-22 00:01:04', 'Add Appointment.'),
(306, ' ', '2019-04-22 00:01:04', 'Add Appointment.'),
(307, ' ', '2019-04-22 00:01:05', 'Add Appointment.'),
(308, ' ', '2019-04-22 00:01:05', 'Add Appointment.'),
(309, ' ', '2019-04-22 00:01:05', 'Add Appointment.'),
(310, ' ', '2019-04-22 00:01:05', 'Add Appointment.'),
(311, ' ', '2019-04-22 00:01:05', 'Add Appointment.'),
(312, ' ', '2019-04-22 00:01:06', 'Add Appointment.'),
(313, ' ', '2019-04-22 00:01:06', 'Add Appointment.'),
(314, ' ', '2019-04-22 00:01:06', 'Add Appointment.'),
(315, ' ', '2019-04-22 00:01:06', 'Add Appointment.'),
(316, ' ', '2019-04-22 00:01:06', 'Add Appointment.'),
(317, ' ', '2019-04-22 00:01:06', 'Add Appointment.'),
(318, ' ', '2019-04-22 00:01:07', 'Add Appointment.'),
(319, ' ', '2019-04-22 00:01:07', 'Add Appointment.'),
(320, ' ', '2019-04-22 00:01:07', 'Add Appointment.'),
(321, ' ', '2019-04-22 00:01:07', 'Add Appointment.'),
(322, ' ', '2019-04-22 00:01:07', 'Add Appointment.'),
(323, ' ', '2019-04-22 00:01:08', 'Add Appointment.'),
(324, ' ', '2019-04-22 00:01:08', 'Add Appointment.'),
(325, ' ', '2019-04-22 00:01:08', 'Add Appointment.'),
(326, ' ', '2019-04-22 00:01:08', 'Add Appointment.'),
(327, ' ', '2019-04-22 00:01:08', 'Add Appointment.'),
(328, ' ', '2019-04-22 00:01:09', 'Add Appointment.'),
(329, ' ', '2019-04-22 00:01:09', 'Add Appointment.'),
(330, ' ', '2019-04-22 00:01:09', 'Add Appointment.'),
(331, ' ', '2019-04-22 00:01:09', 'Add Appointment.'),
(332, ' ', '2019-04-22 00:01:10', 'Add Appointment.'),
(333, ' ', '2019-04-22 00:01:10', 'Add Appointment.'),
(334, ' ', '2019-04-22 00:01:10', 'Add Appointment.'),
(335, ' ', '2019-04-22 00:01:10', 'Add Appointment.'),
(336, ' ', '2019-04-22 00:01:10', 'Add Appointment.'),
(337, ' ', '2019-04-22 00:01:11', 'Add Appointment.'),
(338, ' ', '2019-04-22 00:01:11', 'Add Appointment.'),
(339, ' ', '2019-04-22 00:01:11', 'Add Appointment.'),
(340, ' ', '2019-04-22 00:01:11', 'Add Appointment.'),
(341, ' ', '2019-04-22 00:01:12', 'Add Appointment.'),
(342, ' ', '2019-04-22 00:01:12', 'Add Appointment.'),
(343, ' ', '2019-04-22 00:01:12', 'Add Appointment.'),
(344, ' ', '2019-04-22 00:01:12', 'Add Appointment.'),
(345, ' ', '2019-04-22 00:01:12', 'Add Appointment.'),
(346, ' ', '2019-04-22 00:01:13', 'Add Appointment.'),
(347, ' ', '2019-04-22 00:01:13', 'Add Appointment.'),
(348, ' ', '2019-04-22 00:01:13', 'Add Appointment.'),
(349, ' ', '2019-04-22 00:01:13', 'Add Appointment.'),
(350, ' ', '2019-04-22 00:01:13', 'Add Appointment.'),
(351, ' ', '2019-04-22 00:01:14', 'Add Appointment.'),
(352, ' ', '2019-04-22 00:01:14', 'Add Appointment.'),
(353, ' ', '2019-04-22 00:01:14', 'Add Appointment.'),
(354, ' ', '2019-04-22 00:01:14', 'Add Appointment.'),
(355, ' ', '2019-04-22 00:01:15', 'Add Appointment.'),
(356, ' ', '2019-04-22 00:01:15', 'Add Appointment.'),
(357, ' ', '2019-04-22 00:01:15', 'Add Appointment.'),
(358, ' ', '2019-04-22 00:01:15', 'Add Appointment.'),
(359, ' ', '2019-04-22 00:01:15', 'Add Appointment.'),
(360, ' ', '2019-04-22 00:01:16', 'Add Appointment.'),
(361, ' ', '2019-04-22 00:01:16', 'Add Appointment.'),
(362, ' ', '2019-04-22 00:01:16', 'Add Appointment.'),
(363, ' ', '2019-04-22 00:01:16', 'Add Appointment.'),
(364, ' ', '2019-04-22 00:01:17', 'Add Appointment.'),
(365, ' ', '2019-04-22 00:01:17', 'Add Appointment.'),
(366, ' ', '2019-04-22 00:01:17', 'Add Appointment.'),
(367, ' ', '2019-04-22 00:01:17', 'Add Appointment.'),
(368, ' ', '2019-04-22 00:01:18', 'Add Appointment.'),
(369, ' ', '2019-04-22 00:01:18', 'Add Appointment.'),
(370, ' ', '2019-04-22 00:01:18', 'Add Appointment.'),
(371, ' ', '2019-04-22 00:01:18', 'Add Appointment.'),
(372, ' ', '2019-04-22 00:01:18', 'Add Appointment.'),
(373, ' ', '2019-04-22 00:01:19', 'Add Appointment.'),
(374, ' ', '2019-04-22 00:01:19', 'Add Appointment.'),
(375, ' ', '2019-04-22 00:01:19', 'Add Appointment.'),
(376, ' ', '2019-04-22 00:01:19', 'Add Appointment.'),
(377, ' ', '2019-04-22 00:01:20', 'Add Appointment.'),
(378, ' ', '2019-04-22 00:01:20', 'Add Appointment.'),
(379, ' ', '2019-04-22 00:01:20', 'Add Appointment.'),
(380, ' ', '2019-04-22 00:01:20', 'Add Appointment.'),
(381, ' ', '2019-04-22 00:01:21', 'Add Appointment.'),
(382, ' ', '2019-04-22 00:01:21', 'Add Appointment.'),
(383, ' ', '2019-04-22 00:01:21', 'Add Appointment.'),
(384, ' ', '2019-04-22 00:01:21', 'Add Appointment.'),
(385, ' ', '2019-04-22 00:01:21', 'Add Appointment.'),
(386, ' ', '2019-04-22 00:01:22', 'Add Appointment.'),
(387, ' ', '2019-04-22 00:01:22', 'Add Appointment.'),
(388, ' ', '2019-04-22 00:01:22', 'Add Appointment.'),
(389, ' ', '2019-04-22 00:01:22', 'Add Appointment.'),
(390, ' ', '2019-04-22 00:01:23', 'Add Appointment.'),
(391, ' ', '2019-04-22 00:01:23', 'Add Appointment.'),
(392, ' ', '2019-04-22 00:01:23', 'Add Appointment.'),
(393, ' ', '2019-04-22 00:01:23', 'Add Appointment.'),
(394, ' ', '2019-04-22 00:01:24', 'Add Appointment.'),
(395, ' ', '2019-04-22 00:01:24', 'Add Appointment.'),
(396, ' ', '2019-04-22 00:01:24', 'Add Appointment.'),
(397, ' ', '2019-04-22 00:01:24', 'Add Appointment.'),
(398, ' ', '2019-04-22 00:01:25', 'Add Appointment.'),
(399, ' ', '2019-04-22 00:01:25', 'Add Appointment.'),
(400, ' ', '2019-04-22 00:01:25', 'Add Appointment.'),
(401, ' ', '2019-04-22 00:01:25', 'Add Appointment.'),
(402, ' ', '2019-04-22 00:01:26', 'Add Appointment.'),
(403, ' ', '2019-04-22 00:01:27', 'Add Appointment.'),
(404, ' ', '2019-04-22 00:01:27', 'Add Appointment.'),
(405, ' ', '2019-04-22 00:01:27', 'Add Appointment.'),
(406, ' ', '2019-04-22 00:01:27', 'Add Appointment.'),
(407, ' ', '2019-04-22 00:01:27', 'Add Appointment.'),
(408, ' ', '2019-04-22 00:01:28', 'Add Appointment.'),
(409, ' ', '2019-04-22 00:01:28', 'Add Appointment.'),
(410, ' ', '2019-04-22 00:01:28', 'Add Appointment.'),
(411, ' ', '2019-04-22 00:01:28', 'Add Appointment.'),
(412, ' ', '2019-04-22 00:01:28', 'Add Appointment.'),
(413, ' ', '2019-04-22 00:03:23', 'Add Appointment.'),
(414, ' ', '2019-04-22 00:03:25', 'Add Appointment.'),
(415, ' ', '2019-04-22 00:03:29', 'Add Appointment.'),
(416, ' ', '2019-04-22 00:06:16', 'Add Appointment.'),
(417, ' ', '2019-04-22 00:06:57', 'Add Appointment.'),
(418, ' ', '2019-04-22 00:07:39', 'Add Appointment.'),
(419, ' ', '2019-04-22 00:07:49', 'Add Appointment.'),
(420, ' ', '2019-04-23 12:57:24', 'Add Appointment.'),
(421, ' ', '2019-04-23 14:29:35', 'Add Appointment.'),
(422, ' ', '2019-04-23 14:45:25', 'Add Appointment.'),
(423, ' ', '2019-04-23 14:48:39', 'Add Appointment.'),
(424, 'q w', '2019-04-23 14:49:46', 'new Client added.'),
(425, ' ', '2019-04-23 14:54:34', 'Add Appointment.'),
(426, ' ', '2019-04-23 14:54:49', 'Add Appointment.'),
(427, ' ', '2019-04-23 15:00:07', 'Add Appointment.'),
(428, ' ', '2019-04-23 15:00:21', 'Add Appointment.'),
(429, ' ', '2019-04-23 15:01:08', 'Add Appointment.'),
(430, ' ', '2019-04-23 15:01:15', 'Add Appointment.'),
(431, ' ', '2019-04-23 15:02:24', 'Add Appointment.'),
(432, ' ', '2019-04-23 15:02:31', 'Add Appointment.'),
(433, ' ', '2019-04-23 15:27:43', 'Add Appointment.'),
(434, ' ', '2019-04-23 15:28:20', 'Add Appointment.'),
(435, ' ', '2019-04-23 15:28:50', 'Add Appointment.'),
(436, ' ', '2019-04-23 15:28:52', 'Add Appointment.'),
(437, ' ', '2019-04-23 15:28:53', 'Add Appointment.'),
(438, ' ', '2019-04-23 15:34:32', 'Add Appointment.'),
(439, ' ', '2019-04-23 20:01:24', 'Add Appointment.'),
(440, ' ', '2019-04-23 20:01:26', 'Add Appointment.'),
(441, ' ', '2019-04-23 20:02:41', 'Add Appointment.'),
(442, ' ', '2019-04-23 20:02:43', 'Add Appointment.'),
(443, ' ', '2019-04-23 20:02:50', 'Add Appointment.'),
(444, ' ', '2019-04-23 20:03:26', 'Add Appointment.'),
(445, ' ', '2019-04-23 20:03:27', 'Add Appointment.'),
(446, ' ', '2019-04-23 20:03:28', 'Add Appointment.'),
(447, ' ', '2019-04-23 20:03:29', 'Add Appointment.'),
(448, ' ', '2019-04-23 20:04:57', 'Add Appointment.'),
(449, ' ', '2019-04-23 20:05:00', 'Add Appointment.'),
(450, ' ', '2019-04-23 20:06:36', 'Add Appointment.'),
(451, ' ', '2019-04-23 20:06:40', 'Add Appointment.'),
(452, ' ', '2019-04-23 20:06:47', 'Add Appointment.'),
(453, ' ', '2019-04-23 20:07:37', 'Add Appointment.'),
(454, ' ', '2019-04-23 20:07:39', 'Add Appointment.'),
(455, ' ', '2019-04-23 20:07:40', 'Add Appointment.'),
(456, ' ', '2019-04-23 20:07:41', 'Add Appointment.'),
(457, ' ', '2019-04-23 20:08:46', 'Add Appointment.'),
(458, ' ', '2019-04-23 20:08:49', 'Add Appointment.'),
(459, ' ', '2019-04-23 20:08:49', 'Add Appointment.'),
(460, ' ', '2019-04-23 20:11:14', 'Add Appointment.'),
(461, ' ', '2019-04-23 20:11:16', 'Add Appointment.'),
(462, ' ', '2019-04-23 20:11:18', 'Add Appointment.'),
(463, ' ', '2019-04-23 20:12:27', 'Add Appointment.'),
(464, ' ', '2019-04-23 20:12:29', 'Add Appointment.'),
(465, ' ', '2019-04-23 20:12:30', 'Add Appointment.'),
(466, ' ', '2019-04-23 20:13:01', 'Add Appointment.'),
(467, ' ', '2019-04-23 20:14:07', 'Add Appointment.'),
(468, ' ', '2019-04-23 20:14:08', 'Add Appointment.'),
(469, ' ', '2019-04-23 20:14:10', 'Add Appointment.'),
(470, ' ', '2019-04-23 20:14:11', 'Add Appointment.'),
(471, ' ', '2019-04-23 20:14:12', 'Add Appointment.'),
(472, ' ', '2019-04-23 20:14:13', 'Add Appointment.'),
(473, ' ', '2019-04-23 20:15:17', 'Add Appointment.'),
(474, ' ', '2019-04-23 20:15:18', 'Add Appointment.'),
(475, ' ', '2019-04-23 20:16:20', 'Add Appointment.'),
(476, ' ', '2019-04-23 20:16:21', 'Add Appointment.'),
(477, ' ', '2019-04-23 20:16:23', 'Add Appointment.'),
(478, ' ', '2019-04-23 23:12:13', 'Add Appointment.'),
(479, ' ', '2019-04-23 23:12:14', 'Add Appointment.'),
(480, ' ', '2019-04-23 23:16:13', 'Add Appointment.'),
(481, ' ', '2019-04-23 23:16:14', 'Add Appointment.'),
(482, ' ', '2019-04-23 23:16:15', 'Add Appointment.'),
(483, ' ', '2019-04-23 23:17:01', 'Add Appointment.'),
(484, ' ', '2019-04-23 23:17:02', 'Add Appointment.'),
(485, ' ', '2019-04-23 23:17:03', 'Add Appointment.'),
(486, ' ', '2019-04-23 23:17:04', 'Add Appointment.'),
(487, ' ', '2019-04-23 23:19:13', 'Add Appointment.'),
(488, ' ', '2019-04-23 23:19:14', 'Add Appointment.'),
(489, ' ', '2019-04-23 23:19:15', 'Add Appointment.'),
(490, ' ', '2019-04-23 23:21:02', 'Add Appointment.'),
(491, ' ', '2019-04-23 23:21:06', 'Add Appointment.'),
(492, ' ', '2019-04-23 23:21:08', 'Add Appointment.'),
(493, ' ', '2019-04-23 23:21:09', 'Add Appointment.'),
(494, ' ', '2019-04-23 23:28:31', 'Add Appointment.'),
(495, ' ', '2019-04-23 23:28:33', 'Add Appointment.'),
(496, ' ', '2019-04-23 23:28:34', 'Add Appointment.'),
(497, ' ', '2019-04-23 23:31:01', 'Add Appointment.'),
(498, ' ', '2019-04-23 23:31:02', 'Add Appointment.'),
(499, ' ', '2019-04-23 23:31:22', 'Add Appointment.'),
(500, ' ', '2019-04-23 23:37:18', 'Add Appointment.'),
(501, ' ', '2019-04-23 23:37:20', 'Add Appointment.'),
(502, ' ', '2019-04-23 23:37:57', 'Add Appointment.'),
(503, ' ', '2019-04-23 23:42:40', 'Add Appointment.'),
(504, ' ', '2019-04-23 23:42:49', 'Add Appointment.'),
(505, ' ', '2019-04-23 23:42:56', 'Add Appointment.'),
(506, ' ', '2019-04-23 23:44:35', 'Add Appointment.'),
(507, ' ', '2019-04-23 23:44:35', 'Add Appointment.'),
(508, ' ', '2019-04-23 23:44:35', 'Add Appointment.'),
(509, ' ', '2019-04-23 23:44:35', 'Add Appointment.'),
(510, ' ', '2019-04-23 23:44:36', 'Add Appointment.'),
(511, ' ', '2019-04-23 23:44:36', 'Add Appointment.'),
(512, ' ', '2019-04-23 23:44:36', 'Add Appointment.'),
(513, ' ', '2019-04-23 23:44:36', 'Add Appointment.'),
(514, ' ', '2019-04-23 23:44:36', 'Add Appointment.'),
(515, ' ', '2019-04-23 23:44:36', 'Add Appointment.'),
(516, ' ', '2019-04-23 23:44:36', 'Add Appointment.'),
(517, ' ', '2019-04-23 23:44:36', 'Add Appointment.'),
(518, ' ', '2019-04-23 23:44:36', 'Add Appointment.'),
(519, ' ', '2019-04-23 23:44:36', 'Add Appointment.'),
(520, ' ', '2019-04-23 23:44:36', 'Add Appointment.'),
(521, ' ', '2019-04-23 23:44:36', 'Add Appointment.'),
(522, ' ', '2019-04-23 23:44:37', 'Add Appointment.'),
(523, ' ', '2019-04-23 23:44:37', 'Add Appointment.'),
(524, ' ', '2019-04-23 23:44:37', 'Add Appointment.'),
(525, ' ', '2019-04-23 23:44:37', 'Add Appointment.'),
(526, ' ', '2019-04-23 23:44:40', 'Add Appointment.'),
(527, ' ', '2019-04-23 23:44:40', 'Add Appointment.'),
(528, ' ', '2019-04-23 23:44:41', 'Add Appointment.'),
(529, ' ', '2019-04-23 23:44:41', 'Add Appointment.'),
(530, ' ', '2019-04-23 23:44:41', 'Add Appointment.'),
(531, ' ', '2019-04-23 23:44:41', 'Add Appointment.'),
(532, ' ', '2019-04-23 23:44:41', 'Add Appointment.'),
(533, ' ', '2019-04-23 23:44:41', 'Add Appointment.'),
(534, ' ', '2019-04-23 23:44:41', 'Add Appointment.'),
(535, ' ', '2019-04-23 23:44:41', 'Add Appointment.'),
(536, ' ', '2019-04-23 23:44:41', 'Add Appointment.'),
(537, ' ', '2019-04-23 23:44:41', 'Add Appointment.'),
(538, ' ', '2019-04-23 23:44:41', 'Add Appointment.'),
(539, ' ', '2019-04-23 23:44:41', 'Add Appointment.'),
(540, ' ', '2019-04-23 23:44:41', 'Add Appointment.'),
(541, ' ', '2019-04-23 23:44:42', 'Add Appointment.'),
(542, ' ', '2019-04-23 23:44:42', 'Add Appointment.'),
(543, ' ', '2019-04-23 23:44:42', 'Add Appointment.'),
(544, ' ', '2019-04-23 23:44:42', 'Add Appointment.'),
(545, ' ', '2019-04-23 23:44:42', 'Add Appointment.'),
(546, ' ', '2019-04-23 23:44:47', 'Add Appointment.'),
(547, ' ', '2019-04-23 23:44:47', 'Add Appointment.'),
(548, ' ', '2019-04-23 23:44:47', 'Add Appointment.'),
(549, ' ', '2019-04-23 23:44:47', 'Add Appointment.'),
(550, ' ', '2019-04-23 23:44:47', 'Add Appointment.'),
(551, ' ', '2019-04-23 23:44:47', 'Add Appointment.'),
(552, ' ', '2019-04-23 23:44:48', 'Add Appointment.'),
(553, ' ', '2019-04-23 23:44:48', 'Add Appointment.'),
(554, ' ', '2019-04-23 23:44:48', 'Add Appointment.'),
(555, ' ', '2019-04-23 23:44:48', 'Add Appointment.'),
(556, ' ', '2019-04-23 23:44:48', 'Add Appointment.'),
(557, ' ', '2019-04-23 23:44:48', 'Add Appointment.'),
(558, ' ', '2019-04-23 23:44:48', 'Add Appointment.'),
(559, ' ', '2019-04-23 23:44:48', 'Add Appointment.'),
(560, ' ', '2019-04-23 23:44:48', 'Add Appointment.'),
(561, ' ', '2019-04-23 23:44:48', 'Add Appointment.'),
(562, ' ', '2019-04-23 23:44:48', 'Add Appointment.'),
(563, ' ', '2019-04-23 23:44:48', 'Add Appointment.'),
(564, ' ', '2019-04-23 23:44:49', 'Add Appointment.'),
(565, ' ', '2019-04-23 23:44:49', 'Add Appointment.'),
(566, ' ', '2019-04-23 23:44:54', 'Add Appointment.'),
(567, ' ', '2019-04-23 23:44:54', 'Add Appointment.'),
(568, ' ', '2019-04-23 23:44:54', 'Add Appointment.'),
(569, ' ', '2019-04-23 23:44:54', 'Add Appointment.'),
(570, ' ', '2019-04-23 23:44:54', 'Add Appointment.'),
(571, ' ', '2019-04-23 23:44:54', 'Add Appointment.'),
(572, ' ', '2019-04-23 23:44:54', 'Add Appointment.'),
(573, ' ', '2019-04-23 23:44:54', 'Add Appointment.'),
(574, ' ', '2019-04-23 23:44:54', 'Add Appointment.'),
(575, ' ', '2019-04-23 23:44:54', 'Add Appointment.'),
(576, ' ', '2019-04-23 23:44:55', 'Add Appointment.'),
(577, ' ', '2019-04-23 23:44:55', 'Add Appointment.'),
(578, ' ', '2019-04-23 23:44:55', 'Add Appointment.'),
(579, ' ', '2019-04-23 23:44:55', 'Add Appointment.'),
(580, ' ', '2019-04-23 23:44:55', 'Add Appointment.'),
(581, ' ', '2019-04-23 23:44:55', 'Add Appointment.'),
(582, ' ', '2019-04-23 23:44:55', 'Add Appointment.'),
(583, ' ', '2019-04-23 23:44:55', 'Add Appointment.'),
(584, ' ', '2019-04-23 23:44:55', 'Add Appointment.'),
(585, ' ', '2019-04-23 23:44:55', 'Add Appointment.'),
(586, ' ', '2019-04-23 23:44:56', 'Add Appointment.'),
(587, ' ', '2019-04-23 23:44:56', 'Add Appointment.'),
(588, ' ', '2019-04-23 23:44:56', 'Add Appointment.'),
(589, ' ', '2019-04-23 23:44:56', 'Add Appointment.'),
(590, ' ', '2019-04-23 23:44:56', 'Add Appointment.'),
(591, ' ', '2019-04-23 23:44:56', 'Add Appointment.'),
(592, ' ', '2019-04-23 23:44:56', 'Add Appointment.'),
(593, ' ', '2019-04-23 23:44:56', 'Add Appointment.'),
(594, ' ', '2019-04-23 23:44:56', 'Add Appointment.'),
(595, ' ', '2019-04-23 23:44:56', 'Add Appointment.'),
(596, ' ', '2019-04-23 23:44:57', 'Add Appointment.'),
(597, ' ', '2019-04-23 23:44:57', 'Add Appointment.'),
(598, ' ', '2019-04-23 23:44:57', 'Add Appointment.'),
(599, ' ', '2019-04-23 23:44:57', 'Add Appointment.'),
(600, ' ', '2019-04-23 23:44:57', 'Add Appointment.'),
(601, ' ', '2019-04-23 23:44:57', 'Add Appointment.'),
(602, ' ', '2019-04-23 23:44:57', 'Add Appointment.'),
(603, ' ', '2019-04-23 23:44:57', 'Add Appointment.'),
(604, ' ', '2019-04-23 23:44:57', 'Add Appointment.'),
(605, ' ', '2019-04-23 23:44:57', 'Add Appointment.'),
(606, ' ', '2019-04-23 23:45:02', 'Add Appointment.'),
(607, ' ', '2019-04-23 23:45:03', 'Add Appointment.'),
(608, ' ', '2019-04-23 23:45:03', 'Add Appointment.'),
(609, ' ', '2019-04-23 23:45:03', 'Add Appointment.'),
(610, ' ', '2019-04-23 23:45:03', 'Add Appointment.'),
(611, ' ', '2019-04-23 23:45:03', 'Add Appointment.'),
(612, ' ', '2019-04-23 23:45:03', 'Add Appointment.'),
(613, ' ', '2019-04-23 23:45:03', 'Add Appointment.'),
(614, ' ', '2019-04-23 23:45:03', 'Add Appointment.'),
(615, ' ', '2019-04-23 23:45:03', 'Add Appointment.'),
(616, ' ', '2019-04-23 23:45:03', 'Add Appointment.'),
(617, ' ', '2019-04-23 23:45:03', 'Add Appointment.'),
(618, ' ', '2019-04-23 23:45:03', 'Add Appointment.'),
(619, ' ', '2019-04-23 23:45:03', 'Add Appointment.'),
(620, ' ', '2019-04-23 23:45:03', 'Add Appointment.'),
(621, ' ', '2019-04-23 23:45:04', 'Add Appointment.'),
(622, ' ', '2019-04-23 23:45:04', 'Add Appointment.'),
(623, ' ', '2019-04-23 23:45:04', 'Add Appointment.'),
(624, ' ', '2019-04-23 23:45:04', 'Add Appointment.'),
(625, ' ', '2019-04-23 23:45:04', 'Add Appointment.'),
(626, ' ', '2019-04-23 23:45:18', 'Add Appointment.'),
(627, ' ', '2019-04-23 23:45:20', 'Add Appointment.'),
(628, ' ', '2019-04-23 23:45:22', 'Add Appointment.'),
(629, ' ', '2019-04-23 23:45:36', 'Add Appointment.'),
(630, ' ', '2019-04-23 23:45:45', 'Add Appointment.'),
(631, ' ', '2019-04-23 23:50:01', 'Add Appointment.'),
(632, ' ', '2019-04-23 23:52:00', 'Add Appointment.'),
(633, ' ', '2019-04-23 23:54:52', 'Add Appointment.'),
(634, ' ', '2019-04-23 23:55:22', 'Add Appointment.'),
(635, ' ', '2019-04-23 23:56:38', 'Add Appointment.'),
(636, ' ', '2019-04-23 23:58:52', 'Add Appointment.'),
(637, ' ', '2019-04-23 23:58:55', 'Add Appointment.'),
(638, ' ', '2019-04-23 23:59:51', 'Add Appointment.'),
(639, ' ', '2019-04-24 00:00:19', 'Add Appointment.'),
(640, ' ', '2019-04-24 00:01:15', 'Add Appointment.'),
(641, ' ', '2019-04-24 00:02:39', 'Add Appointment.'),
(642, ' ', '2019-04-24 00:03:41', 'Add Appointment.'),
(643, '', '2019-04-24 00:04:33', 'Add Appointment.'),
(644, 'New- Tutor, Rinalita', '2019-04-24 01:27:43', 'Add Appointment.'),
(645, '- Tutor, Rinalita', '2019-04-24 01:53:57', 'Add Appointment.'),
(646, 'New- Tutor, Rinalita', '2019-04-24 02:03:23', 'Add Appointment.'),
(647, 'New- Tutor, Faust Yuri', '2019-04-24 06:36:14', 'Add Appointment.'),
(648, 'New- Tutor, Faust Yuri', '2019-04-24 07:57:46', 'Add Appointment.'),
(649, 'Recall- Tutor, Faust Yuri', '2019-04-24 08:00:18', 'Add Appointment.'),
(650, 'New- Tutor, Faust Yuri', '2019-04-24 08:01:24', 'Add Appointment.'),
(651, 'New- Tutor, Faust Yuri', '2019-04-24 08:02:29', 'Add Appointment.'),
(652, 'New- Tutor, Faust Yuri', '2019-04-24 08:03:55', 'Add Appointment.'),
(653, 'New- Tutor, Faust Yuri', '2019-04-24 08:19:29', 'Add Appointment.'),
(654, 'Recall- Tutor, Faust Yuri', '2019-04-24 09:02:11', 'Add Appointment.'),
(655, 'New- Tutor, Faust Yuri', '2019-04-24 09:03:51', 'Add Appointment.'),
(656, 'New- Tutor, Faust Yuri', '2019-04-24 09:06:29', 'Add Appointment.'),
(657, 'New- Tutor, Faust Yuri', '2019-04-24 09:31:19', 'Add Appointment.'),
(658, 'New- Tutor, Rinalita', '2019-04-24 09:57:02', 'Add Appointment.'),
(659, 'New- Tutor, Rinalita', '2019-04-24 13:23:09', 'Add Appointment.'),
(660, 'New- Tutor, Rinalita', '2019-04-24 13:32:38', 'Add Appointment.'),
(661, '- Tutor, Rinalita', '2019-04-24 13:34:25', 'Add Appointment.'),
(662, 'New- Tutor, Rinalita', '2019-04-24 13:36:21', 'Add Appointment.'),
(663, 'Recall- Tutor, Rinalita', '2019-04-24 13:36:38', 'Add Appointment.'),
(664, '- Tutor, Rinalita', '2019-04-24 13:38:06', 'Add Appointment.'),
(665, 'Recall- Tutor, Rinalita', '2019-04-24 13:38:58', 'Add Appointment.'),
(666, 'New- Tutor, Rinalita', '2019-04-24 13:48:29', 'Add Appointment.'),
(667, 'Recall- Tutor, Rinalita', '2019-04-24 13:50:40', 'Add Appointment.'),
(668, 'Recall- Tutor, Rinalita', '2019-04-24 13:52:56', 'Add Appointment.'),
(669, 'New- Tutor, Rinalita', '2019-04-24 14:00:22', 'Add Appointment.'),
(670, 'New- Tutor, Faust Yuri', '2019-04-26 11:55:58', 'Add Appointment.'),
(671, 'Recall- Tutor, Faust Yuri', '2019-04-26 12:02:03', 'Add Appointment.'),
(672, 'New- Tutor, Faust Yuri', '2019-04-26 12:07:57', 'Add Appointment.'),
(673, 'Recall- Tutor, Faust Yuri', '2019-04-26 12:09:24', 'Add Appointment.'),
(674, 'Recall- Tutor, Faust Yuri', '2019-04-26 12:18:17', 'Add Appointment.'),
(675, 'New- Tutor, Faust Yuri', '2019-04-26 12:21:42', 'Add Appointment.'),
(676, 'New- Tutor, Faust Yuri', '2019-04-26 12:29:31', 'Add Appointment.'),
(677, 'New- Tutor, Faust Yuri', '2019-04-26 12:31:33', 'Add Appointment.'),
(678, 'Recall- Tutor, Faust Yuri', '2019-04-26 12:40:06', 'Add Appointment.'),
(679, 'New- Tutor, Faust Yuri', '2019-04-26 12:47:23', 'Add Appointment.'),
(680, 'Recall- Tutor, Faust Yuri', '2019-04-26 12:48:38', 'Add Appointment.'),
(681, 'New- Tutor, Faust Yuri', '2019-04-26 12:50:30', 'Add Appointment.'),
(682, 'New- Tutor, Faust Yuri', '2019-04-26 12:55:21', 'Add Appointment.'),
(683, 'New- Tutor, Faust Yuri', '2019-04-26 13:05:12', 'Add Appointment.'),
(684, 'New- Tutor, Faust Yuri', '2019-04-26 13:07:07', 'Add Appointment.'),
(685, 'New- Tutor, Faust Yuri', '2019-04-26 13:18:47', 'Add Appointment.'),
(686, 'New- Tutor, Faust Yuri', '2019-04-26 13:45:55', 'Add Appointment.'),
(687, 'New- Tutor, Faust Yuri', '2019-04-26 13:48:03', 'Add Appointment.'),
(688, 'New- Tutor, Faust Yuri', '2019-04-26 13:49:05', 'Add Appointment.'),
(689, 'Recall- Tutor, Faust Yuri', '2019-04-26 14:10:13', 'Add Appointment.'),
(690, 'New- Tutor, Faust Yuri', '2019-04-26 14:12:40', 'Add Appointment.'),
(691, 'Recall- Tutor, Faust Yuri', '2019-04-26 14:14:57', 'Add Appointment.'),
(692, 'New- Tutor, Faust Yuri', '2019-04-26 14:25:34', 'Add Appointment.'),
(693, 'Recall- Tutor, Faust Yuri', '2019-04-26 14:28:15', 'Add Appointment.'),
(694, 'New- Tutor, Rinalita', '2019-04-28 16:20:03', 'Add Appointment.'),
(695, 'New- Tutor, Rinalita', '2019-04-28 16:26:38', 'Add Appointment.'),
(696, 'New- Tutor, Rinalita', '2019-04-28 16:29:21', 'Add Appointment.'),
(697, 'Recall- Tutor, Rinalita', '2019-04-30 11:10:43', 'Add Appointment.'),
(698, 'New- Tutor, Rinalita', '2019-04-30 11:19:29', 'Add Appointment.'),
(699, 'New- Tutor, Rinalita', '2019-04-30 12:05:51', 'Add Appointment.'),
(700, 'Recall- Tutor, Rinalita', '2019-04-30 16:28:25', 'Add Appointment.'),
(701, 'New- Tutor, Rinalita', '2019-04-30 16:47:14', 'Add Appointment.'),
(702, 'New- Tutor, Rinalita', '2019-04-30 16:49:06', 'Add Appointment.'),
(703, 'New- Tutor, Rinalita', '2019-04-30 17:15:08', 'Add Appointment.'),
(704, 'New- Tutor, Rinalita', '2019-04-30 17:17:38', 'Add Appointment.'),
(705, 'New- Tutor, Rinalita', '2019-04-30 17:23:50', 'Add Appointment.'),
(706, 'New- Tutor, Rinalita', '2019-04-30 17:26:18', 'Add Appointment.'),
(707, 'New- Tutor, Rinalita', '2019-04-30 18:29:35', 'Add Appointment.'),
(708, 'New- Tutor, Rinalita', '2019-05-01 01:34:25', 'Add Appointment.'),
(709, 'New- Tutor, Rinalita', '2019-05-01 02:09:51', 'Add Appointment.'),
(710, 'New- Tutor, Rinalita', '2019-05-01 02:14:38', 'Add Appointment.'),
(711, 'New- Tutor, Rinalita', '2019-05-01 02:23:06', 'Add Appointment.'),
(712, 'New- Tutor, Rinalita', '2019-05-01 02:26:35', 'Add Appointment.'),
(713, 'New- Tutor, Rinalita', '2019-05-01 02:29:15', 'Add Appointment.'),
(714, 'New- Tutor, Rinalita', '2019-05-01 02:29:43', 'Add Appointment.'),
(715, 'New- Tutor, Rinalita', '2019-05-01 02:33:19', 'Add Appointment.'),
(716, 'New- Tutor, Rinalita', '2019-05-01 02:38:56', 'Add Appointment.'),
(717, 'New- Tutor, Rinalita', '2019-05-01 02:39:20', 'Add Appointment.'),
(718, 'New- Tutor, Rinalita', '2019-05-01 02:44:05', 'Add Appointment.'),
(719, 'New- Tutor, Rinalita', '2019-05-01 03:02:43', 'Add Appointment.'),
(720, 'Recall- Tutor, Rinalita', '2019-05-01 03:06:46', 'Add Appointment.'),
(721, 'New- Tutor, Rinalita', '2019-05-01 03:07:40', 'Add Appointment.'),
(722, 'New- Tutor, Rinalita', '2019-05-01 03:40:21', 'Add Appointment.'),
(723, 'Procedure- Tutor, Faust Yuri', '2019-05-02 07:39:33', 'Add Appointment.'),
(724, 'Ronel Adarlo', '2020-05-15 16:36:30', 'new Client added.'),
(725, 'Ronel Adarlo', '2020-05-15 16:37:30', 'new Client added.'),
(726, 'Ronel Adarlo', '2020-05-15 16:42:14', 'new Client added.'),
(727, 'New- Adarlo, Ronel', '2020-05-15 16:43:59', 'Add Appointment.'),
(728, 'New- Adarlo, Ronel', '2020-05-15 16:55:29', 'Add Appointment.'),
(729, 'Recall- Adarlo, Ronel', '2020-05-15 16:56:09', 'Add Appointment.'),
(730, 'Recall- Adarlo, Ronel', '2020-05-15 16:57:40', 'Add Appointment.'),
(731, 'Rolan Adarlo', '2020-05-16 02:31:54', 'new Client added.'),
(732, 'Ronel Adarlo', '2020-05-16 03:20:37', 'new Client added.'),
(733, 'Ronel Adarlo', '2020-05-16 03:25:24', 'new Client added.'),
(734, 'Ronel Adarlo', '2020-05-16 03:27:07', 'new Client added.'),
(735, 'New- Adarlo, Ronel', '2020-05-16 06:51:26', 'Add Appointment.'),
(736, 'Rolan Adarlo', '2020-05-16 06:58:26', 'new Client added.'),
(737, 'New- Adarlo, Rolan', '2020-05-16 07:00:09', 'Add Appointment.'),
(738, 'New- Adarlo, Ronel', '2020-05-17 01:41:32', 'Add Appointment.'),
(739, 'New- Adarlo, Ronel', '2020-05-17 01:45:48', 'Add Appointment.'),
(740, 'Ronel Adarlo', '2020-05-17 01:49:08', 'new Client added.'),
(741, 'New- Adarlo, Ronel', '2020-05-17 01:49:36', 'Add Appointment.'),
(742, 'New- Adarlo, Ronel', '2020-05-17 01:53:09', 'Add Appointment.'),
(743, 'Jairah Aceveda', '2020-05-17 04:00:54', 'new Client added.'),
(744, 'New- Aceveda, Jairah', '2020-05-17 04:05:31', 'Add Appointment.'),
(745, 'New- Aceveda, Jairah', '2020-05-17 04:05:50', 'Add Appointment.'),
(746, 'Phoebe Kates De Castro', '2020-05-17 06:45:15', 'new Client added.'),
(747, 'New- De Castro, Phoebe Kates', '2020-05-17 06:45:43', 'Add Appointment.'),
(748, 'Camille  Lopez', '2020-05-17 06:58:04', 'new Client added.'),
(749, 'New- Lopez, Camille ', '2020-05-17 06:59:11', 'Add Appointment.'),
(750, 'Hannah Delizo', '2020-05-17 07:05:39', 'new Client added.'),
(751, 'Recall- Delizo, Hannah', '2020-05-17 07:06:59', 'Add Appointment.');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `mi` varchar(40) NOT NULL,
  `contact` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(250) NOT NULL,
  `type` varchar(50) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `lastname`, `firstname`, `mi`, `contact`, `email`, `address`, `type`, `username`, `password`) VALUES
(18, 'Adarlo', 'Rolan', '', 2147483647, 'adarlorolan@gmail.com', 'Sitio 5', 'Employee', 'Rolanm12', 'd2bb04839868526608dbe4255e7bb38c'),
(22, 'Adarlo', 'Rolan', '', 2147483647, 'adarlorolan14@gmail.com', 'calapan ', 'Guest', 'admin1', 'd2bb04839868526608dbe4255e7bb38c'),
(24, 'Aceveda', 'Jairah', '', 2147483647, 'jairah123@gmail.com', 'Sitio 5', 'Student', 'jairah12', '81e3b6e8d5ad9fc65e77b4d19d50e539'),
(25, 'De Castro', 'Phoebe Kates', '', 2147483647, 'adarlorolan12@gmail.com', 'Naujan', 'Student', 'Rolan', 'f5e799831c9fefd5ae58b7357448f81e'),
(26, 'Lopez', 'Camille ', '', 2147483647, 'adarlorolan17@gmail.com', 'Puerto', 'Employee', 'Camille', 'eb81e83dfa3285bb36b750b6929553eb'),
(27, 'Delizo', 'Hannah', '', 2147483647, 'adarlorolan123@gmail.com', 'Sitio 5', 'Employee', 'Hannah', 'cd70055a9889ad196a5d0df13dd44665');

-- --------------------------------------------------------

--
-- Table structure for table `sched`
--

CREATE TABLE `sched` (
  `id` int(11) NOT NULL,
  `sched_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sched`
--

INSERT INTO `sched` (`id`, `sched_time`) VALUES
(1, '09:00:00'),
(2, '10:00:00'),
(3, '11:00:00'),
(4, '13:00:00'),
(5, '14:00:00'),
(6, '15:00:00'),
(7, '14:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `category` varchar(80) NOT NULL,
  `service` varchar(255) NOT NULL,
  `fee` decimal(8,2) NOT NULL,
  `availability` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `category`, `service`, `fee`, `availability`) VALUES
(1, 'Preventive Dentistry', 'Consultation -Per Session', '150.00', 1),
(3, 'Preventive Dentistry', 'Sealant per Tooth', '700.00', 1),
(4, 'Periodontics', 'Crown Lengthening - Hard Tissue', '2500.00', 1),
(6, 'Periodontics', 'Osseous Surgery per Quad', '30000.00', 1),
(7, 'Cosmetic Dentistry', 'Home Whitening Kit with Trays', '18000.00', 1),
(8, 'Crowns & Bridges', 'Porcelain Fused to Non-Precious Metal', '6000.00', 1),
(9, 'Crowns & Bridges', 'Porcelain Fused to Gold	', '25000.00', 1),
(10, 'Crowns & Bridges', 'Zirconia', '25000.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `unavailable`
--

CREATE TABLE `unavailable` (
  `id` int(11) NOT NULL,
  `udates` date NOT NULL,
  `caption` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unavailable`
--

INSERT INTO `unavailable` (`id`, `udates`, `caption`) VALUES
(22, '2020-05-18', 'Birthday Party'),
(23, '2020-05-28', 'on-leave'),
(24, '2020-06-05', 'wala lang akong magawa ahahahahaah'),
(25, '2020-05-29', 'Graduation Day');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(40) NOT NULL,
  `user_email` varchar(40) NOT NULL,
  `user_pass` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_pass`) VALUES
(4, 'doctor', 'doctor@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759'),
(6, 'rolanm', 'adarlorolan@gmail.com', 'd2bb04839868526608dbe4255e7bb38c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cancelled`
--
ALTER TABLE `cancelled`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sched`
--
ALTER TABLE `sched`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unavailable`
--
ALTER TABLE `unavailable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cancelled`
--
ALTER TABLE `cancelled`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=752;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `sched`
--
ALTER TABLE `sched`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `unavailable`
--
ALTER TABLE `unavailable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
dentapp
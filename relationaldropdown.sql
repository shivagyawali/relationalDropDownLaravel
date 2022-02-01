-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 01, 2022 at 07:43 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `relationaldropdown`
--

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(2) NOT NULL,
  `name` varchar(15) NOT NULL,
  `province_id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `province_id`) VALUES
(1, 'Bhojpur', 1),
(2, 'Dhankuta', 1),
(3, 'Ilam', 1),
(4, 'Jhapa', 1),
(5, 'Khotang', 1),
(6, 'Morang', 1),
(7, 'Okhaldhunga', 1),
(8, 'Panchthar', 1),
(9, 'Sankhuwasabha', 1),
(10, 'Solukhumbu', 1),
(11, 'Sunsari', 1),
(12, 'Taplejung', 1),
(13, 'Terhathum', 1),
(14, 'Udayapur', 1),
(15, 'Saptari', 2),
(16, 'Siraha', 2),
(17, 'Dhanusha', 2),
(18, 'Mahottari', 2),
(19, 'Sarlahi', 2),
(20, 'Bara', 2),
(21, 'Parsa', 2),
(22, 'Rautahat', 2),
(23, 'Sindhuli', 3),
(24, 'Ramechhap', 3),
(25, 'Dolakha', 3),
(26, 'Bhaktapur', 3),
(27, 'Dhading', 3),
(28, 'Kathmandu', 3),
(29, 'Kavrepalanchowk', 3),
(30, 'Lalitpur', 3),
(31, 'Nuwakot', 3),
(32, 'Rasuwa', 3),
(33, 'Sindhupalchok', 3),
(34, 'Chitwan', 3),
(35, 'Makwanpur', 3),
(36, 'Baglung', 4),
(37, 'Gorkha', 4),
(38, 'Kaski', 4),
(39, 'Lamjung', 4),
(40, 'Manang', 4),
(41, 'Mustang', 4),
(42, 'Myagdi', 4),
(43, 'Nawalpur', 4),
(44, 'Parbat', 4),
(45, 'Syangja', 4),
(46, 'Tanahun', 4),
(47, 'Kapilvastu', 5),
(48, 'Parasi', 5),
(49, 'Rupandehi', 5),
(50, 'Arghakhanchi', 5),
(51, 'Gulmi', 5),
(52, 'Palpa', 5),
(53, 'Dang', 5),
(54, 'Pyuthan', 5),
(55, 'Rolpa', 5),
(56, 'Eastern Rukum', 5),
(57, 'Banke', 5),
(58, 'Bardiya', 5),
(59, 'Western Rukum', 6),
(60, 'Salyan', 6),
(61, 'Dolpa', 6),
(62, 'Humla', 6),
(63, 'Jumla', 6),
(64, 'Kalikot', 6),
(65, 'Mugu', 6),
(66, 'Surkhet', 6),
(67, 'Dailekh', 6),
(68, 'Jajarkot', 6),
(69, 'Kailali', 7),
(70, 'Achham', 7),
(71, 'Doti', 7),
(72, 'Bajhang', 7),
(73, 'Bajura', 7),
(74, 'Kanchanpur', 7),
(75, 'Dadeldhura', 7),
(76, 'Baitadi', 7),
(77, 'Darchula', 7);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `municipalities`
--

CREATE TABLE `municipalities` (
  `id` int(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `district_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `municipalities`
--

INSERT INTO `municipalities` (`id`, `name`, `district_id`) VALUES
(1, 'Aamargadhi', 75),
(2, 'Aathabis', 67),
(3, 'Aathabiskot', 59),
(4, 'Arjundhara', 4),
(5, 'Aurahi', 18),
(6, 'Badimalika', 73),
(7, 'Bagchaur', 60),
(8, 'Baglung', 36),
(9, 'Bagmati', 19),
(10, 'Bahudarmai', 21),
(11, 'Balara', 19),
(12, 'Balawa', 18),
(13, 'Banepa', 29),
(14, 'Bangad Kupinde', 60),
(15, 'Banganga', 47),
(16, 'Bansgadhi', 58),
(17, 'Barahachhetra', 11),
(18, 'Barahathawa', 19),
(19, 'Barbardiya', 58),
(20, 'Bardghat', 48),
(21, 'Bardibas', 18),
(22, 'Barhabise', 33),
(23, 'Baudhimai', 22),
(24, 'Bedkot', 74),
(25, 'Belaka', 14),
(26, 'Belauri', 74),
(27, 'Belbaari', 6),
(28, 'Belkotgadhi', 31),
(29, 'Beni', 42),
(30, 'Besishahar', 39),
(31, 'Bhadrapur', 4),
(32, 'Bhajani', 69),
(33, 'Bhaktapur', 26),
(34, 'Bhangaha', 18),
(35, 'Bhanu', 46),
(36, 'Bharatpur', 34),
(37, 'Bheemdatta', 74),
(38, 'Bheerkot', 45),
(39, 'Bheri', 68),
(40, 'Bheriganga', 66),
(41, 'Bhimad', 46),
(42, 'Bhimeshwar', 25),
(43, 'Bhojpur', 1),
(44, 'Bhumikasthan', 50),
(45, 'Bideha', 17),
(46, 'Bidur', 31),
(47, 'Biratnagar', 6),
(48, 'Birendranagar', 66),
(49, 'Birgunj', 21),
(50, 'Birtamod', 4),
(51, 'Bode Barsain', 15),
(52, 'Brindaban', 22),
(53, 'Buddhabhumi', 47),
(54, 'Budhanilkantha', 28),
(55, 'Budhiganga', 73),
(56, 'Budhinanda', 73),
(57, 'Bungal', 72),
(58, 'Butwal', 49),
(59, 'Chainpur', 9),
(60, 'Chamunda Bindrasaini', 67),
(61, 'Chandannath', 63),
(62, 'Chandragiri', 28),
(63, 'Chandrapur', 22),
(64, 'Changunarayan', 26),
(65, 'Chapakot', 45),
(66, 'Chaudandigadhi', 14),
(67, 'Chaurjahari', 59),
(68, 'Chautara Sangachowkgadhi', 33),
(69, 'Chhayanath Rara', 65),
(70, 'Chhedagad', 68),
(71, 'Dakneshwari', 15),
(72, 'Damak', 4),
(73, 'Dasharath Chand', 76),
(74, 'Daxinkaali', 28),
(75, 'Deumai', 3),
(76, 'Devchuli', 43),
(77, 'Devdaha', 49),
(78, 'Dewahi Gonahi', 22),
(79, 'Dhangadhi', 69),
(80, 'Dhangadimai', 16),
(81, 'Dhankuta', 2),
(82, 'Dhanushadham', 17),
(83, 'Dharan', 11),
(84, 'Dharmadevi', 9),
(85, 'Dhorpatan', 36),
(86, 'Dhulikhel', 29),
(87, 'Dhunibeshi', 27),
(88, 'Diktel Rupakot Majuwagadhi', 5),
(89, 'Dipayal Silgadhi', 71),
(90, 'Dudhauli', 23),
(91, 'Duhabi', 11),
(92, 'Dullu', 67),
(93, 'Gadhimai', 22),
(94, 'Gaindakot', 43),
(95, 'Galkot', 36),
(96, 'Galyang', 45),
(97, 'Ganeshman Charnath', 17),
(98, 'Garuda', 22),
(99, 'Gaur', 22),
(100, 'Gauradaha', 4),
(101, 'Gauriganga', 69),
(102, 'Gaushala', 18),
(103, 'Ghodaghodi', 69),
(104, 'Ghorahi', 53),
(105, 'Godaita', 19),
(106, 'Godawari', 30),
(107, 'Godawari, Seti', 69),
(108, 'Gokarneshwor', 28),
(109, 'Golbazar', 16),
(110, 'Gorkha', 37),
(111, 'Gujara', 22),
(112, 'Gulariya', 58),
(113, 'Gurbhakot', 66),
(114, 'Halesi Tuwachung', 5),
(115, 'Hansapur', 17),
(116, 'Hanumannagar Kankalini', 15),
(117, 'Haripur', 19),
(118, 'Haripurwa', 19),
(119, 'Hariwan', 19),
(120, 'Hetauda', 35),
(121, 'Ilam', 3),
(122, 'Inaruwa', 11),
(123, 'Ishnath', 22),
(124, 'Ishworpur', 19),
(125, 'Itahari', 11),
(126, 'Jaimini', 36),
(127, 'Jaleshwar', 18),
(128, 'Janakpur', 17),
(129, 'Jaya Prithvi', 72),
(130, 'Jiri', 25),
(131, 'Jitpur Simara', 20),
(132, 'Kabilasi', 19),
(133, 'Kageshwori Manohara', 28),
(134, 'Kalaiya', 20),
(135, 'Kalika', 34),
(136, 'Kalyanpur', 16),
(137, 'Kamala', 17),
(138, 'Kamalamai', 23),
(139, 'Kamalbazar', 70),
(140, 'Kanchanrup', 15),
(141, 'Kankai', 4),
(142, 'Kapilvastu', 47),
(143, 'Karjanha', 16),
(144, 'Katahariya', 22),
(145, 'Katari', 14),
(146, 'Kathmandu', 28),
(147, 'Kawasoti', 43),
(148, 'Khadak', 15),
(149, 'Khairhani', 34),
(150, 'Khandachakra', 64),
(151, 'Khandbari', 9),
(152, 'Kirtipur', 28),
(153, 'Kohalpur', 57),
(154, 'Kolhabi', 20),
(155, 'Krishnanagar', 47),
(156, 'Krishnapur', 74),
(157, 'Kshireshwor Nath', 17),
(158, 'Kushma', 44),
(159, 'Lahan', 16),
(160, 'Lalbandi', 19),
(161, 'Laligurans', 13),
(162, 'Lalitpur', 30),
(163, 'Lamahi', 53),
(164, 'Lamki Chuha', 69),
(165, 'Lekbeshi', 66),
(166, 'Letang', 6),
(167, 'Loharpatti', 18),
(168, 'Lumbini Sanskritik', 49),
(169, 'Madhav Narayan', 22),
(170, 'Madhuwan', 58),
(171, 'Madhya Nepal', 39),
(172, 'Madhyabindu', 43),
(173, 'Madhyapur Thimi', 26),
(174, 'Madi', 34),
(175, 'Madi', 9),
(176, 'Mahagadhimai', 20),
(177, 'Mahakali', 77),
(178, 'Mahakali', 74),
(179, 'Mahalaxmi', 2),
(180, 'Mahalaxmi', 30),
(181, 'Maharajgunj', 47),
(182, 'Mai', 3),
(183, 'Malangwa', 19),
(184, 'Manara Shisawa', 18),
(185, 'Mandandeupur', 29),
(186, 'Mangalsen', 70),
(187, 'Manthali', 24),
(188, 'Matihani', 18),
(189, 'Maulapur', 22),
(190, 'Mechinagar', 4),
(191, 'Melamchi', 33),
(192, 'Melauli', 76),
(193, 'Mirchaiya', 16),
(194, 'Mithila', 17),
(195, 'Mithila Bihari', 17),
(196, 'Musikot', 51),
(197, 'Musikot', 59),
(198, 'Myanglung', 13),
(199, 'Nagarain', 17),
(200, 'Nagarjun', 28),
(201, 'Nalgad', 68),
(202, 'Namobuddha', 29),
(203, 'Narayan', 67),
(204, 'Nepalgunj', 57),
(205, 'Nijgadh', 20),
(206, 'Nilkantha', 27),
(207, 'Pachrauta', 20),
(208, 'Pakhribas', 2),
(209, 'Palungtar', 37),
(210, 'Panchadewal Binayak', 70),
(211, 'Panchapuri', 66),
(212, 'Panchkhal', 29),
(213, 'Panchkhapan', 9),
(214, 'Parashuram', 75),
(215, 'Paroha', 22),
(216, 'Parsagadhi', 21),
(217, 'Patan', 76),
(218, 'Pathari Shanischare', 6),
(219, 'Paunauti', 29),
(220, 'Phalewas', 44),
(221, 'Phatuwa Bijayapur', 22),
(222, 'Phidim', 8),
(223, 'Phungling', 12),
(224, 'Pokhara', 38),
(225, 'Pokhariya', 21),
(226, 'Punarbas', 74),
(227, 'Purchaundi', 76),
(228, 'Putalibaazar', 45),
(229, 'Pyuthan', 54),
(230, 'Rainas', 39),
(231, 'Rajapur', 58),
(232, 'Rajbiraj', 15),
(233, 'Rajdevi', 22),
(234, 'Rajpur', 22),
(235, 'Ramdhuni', 11),
(236, 'Ramechhap', 24),
(237, 'Ramgopalpur', 18),
(238, 'Ramgram', 48),
(239, 'Rampur', 52),
(240, 'Rangeli', 6),
(241, 'Rapti', 34),
(242, 'Raskot', 64),
(243, 'Ratnanagar', 34),
(244, 'Ratuwamai', 6),
(245, 'Resunga', 51),
(246, 'Ropla', 55),
(247, 'Sabaila', 17),
(248, 'Sainamaina', 49),
(249, 'Sandhikharka', 50),
(250, 'Saphebagar', 70),
(251, 'Saptakoshi', 15),
(252, 'Shaarda', 60),
(253, 'Shadanand', 1),
(254, 'Shahidnagar', 17),
(255, 'Shailyashikhar', 77),
(256, 'Shambhunath', 15),
(257, 'Shankharapur', 28),
(258, 'Shikhar', 71),
(259, 'Shiva Sataxi', 4),
(260, 'Shivaraj', 47),
(261, 'Shuklagandaki', 46),
(262, 'Shuklaphanta', 74),
(263, 'Siddharthanagar', 49),
(264, 'Siddhicharan', 7),
(265, 'Simraungadh', 20),
(266, 'Siraha', 16),
(267, 'Sitganga', 50),
(268, 'Solu Dudhkunda', 10),
(269, 'Sukhipur', 16),
(270, 'Sunawarshi', 6),
(271, 'Sundar Haraincha', 6),
(272, 'Sundarbazar', 39),
(273, 'Sunwal', 48),
(274, 'Surunga', 15),
(275, 'Suryabinayak', 26),
(276, 'Suryodaya', 3),
(277, 'Swargadwari', 54),
(278, 'Tansen', 52),
(279, 'Tarakeshor', 28),
(280, 'Thaha', 35),
(281, 'Thakurbaba', 58),
(282, 'Thuli Bheri', 61),
(283, 'Tikapur', 69),
(284, 'Tilagufa', 64),
(285, 'Tilottama', 49),
(286, 'Tokha', 28),
(287, 'Tribeni', 73),
(288, 'Tripura Sundari', 61),
(289, 'Triyuga', 14),
(290, 'Tulsipur', 53),
(291, 'Urlabari', 6),
(292, 'Vyas', 46),
(293, 'Waling', 45),
(294, 'Hatuwagadhi', 1),
(295, 'Ramprasad Rai', 1),
(296, 'Aamchok', 1),
(297, 'Tyamke Maiyunm', 1),
(298, 'Arun', 1),
(299, 'Pauwadungma', 1),
(300, 'Salpasilichho', 1),
(301, 'Sangurigadhi', 2),
(302, 'Chaubise', 2),
(303, 'Khalsa Chhintang Sahidbhumi', 2),
(304, 'Chhathar Jorpati', 2),
(305, 'Phakphokthum', 3),
(306, 'Mai Jogmai', 3),
(307, 'Chulachuli', 3),
(308, 'Rong', 3),
(309, 'Mangsebung', 3),
(310, 'Sandakpur', 3),
(311, 'Kamal', 4),
(312, 'Buddha Shanti', 4),
(313, 'Kachankawal', 4),
(314, 'Jhapa', 4),
(315, 'Barhadashi', 4),
(316, 'Gaurigunj', 4),
(317, 'Haldibari', 4),
(318, 'Khotehang', 5),
(319, 'Diprung', 5),
(320, 'Aiselukharka', 5),
(321, 'Jantedhunga', 5),
(322, 'Kepilasgadhi', 5),
(323, 'Barahpokhari', 5),
(324, 'Lamidanda', 5),
(325, 'Sakela', 5),
(326, 'Jahada', 6),
(327, 'Budi Ganga', 6),
(328, 'Katahari', 6),
(329, 'Dhanpalthan', 6),
(330, 'Kanepokhari', 6),
(331, 'Gramthan', 6),
(332, 'Kerabari', 6),
(333, 'Miklajung', 6),
(334, 'Manebhanjyang', 7),
(335, 'Champadevi', 7),
(336, 'Sunkoshi', 7),
(337, 'Molung', 7),
(338, 'Chisankhugadhi', 7),
(339, 'Khiji Demba', 7),
(340, 'Likhu', 7),
(341, 'Miklajung', 8),
(342, 'Phalgunanda', 8),
(343, 'Hilihang', 8),
(344, 'Phalelung', 8),
(345, 'Yangwarak', 8),
(346, 'Kummayak', 8),
(347, 'Tumbewa', 8),
(348, 'Makalu', 9),
(349, 'Silichong', 9),
(350, 'Sabhapokhari', 9),
(351, 'Chichila', 9),
(352, 'Bhot Khola', 9),
(353, 'Dudhakaushika', 10),
(354, 'Necha Salyan', 10),
(355, 'Dudhkoshi', 10),
(356, 'Maha Kulung', 10),
(357, 'Sotang', 10),
(358, 'Khumbu Pasang Lhamu', 10),
(359, 'Likhu Pike', 10),
(360, 'Koshi', 11),
(361, 'Harinagara', 11),
(362, 'Bhokraha', 11),
(363, 'Dewangunj', 11),
(364, 'Gadhi', 11),
(365, 'Barju', 11),
(366, 'Sirijangha', 12),
(367, 'Aathrai Triveni', 12),
(368, 'Pathibhara Yangwarak', 12),
(369, 'Meringden', 12),
(370, 'Sidingwa', 12),
(371, 'Phaktanglung', 12),
(372, 'Maiwa Khola', 12),
(373, 'Mikwa Khola', 12),
(374, 'Aathrai', 13),
(375, 'Phedap', 13),
(376, 'Chhathar', 13),
(377, 'Menchayayem', 13),
(378, 'Udayapurgadhi', 14),
(379, 'Rautamai', 14),
(380, 'Tapli', 14),
(381, 'Limchungbung', 14),
(382, 'Subarna', 20),
(383, 'Adarsha Kotwal', 20),
(384, 'Baragadhi', 20),
(385, 'Pheta', 20),
(386, 'Karaiyamai', 20),
(387, 'Prasauni', 20),
(388, 'Bishrampur', 20),
(389, 'Devtal', 20),
(390, 'Parawanipur', 20),
(391, 'Laksminiya', 17),
(392, 'Mukhiyapatti Musaharmiya', 17),
(393, 'Janak Nandini', 17),
(394, 'Aaurahi', 17),
(395, 'Bateshwar', 17),
(396, 'Dhanauji', 17),
(397, 'Sonama', 18),
(398, 'Pipara', 18),
(399, 'Samsi', 18),
(400, 'Ekdara', 18),
(401, 'Mahottari Rural Municipality', 18),
(402, 'Sakhuwa Prasauni', 21),
(403, 'Jagarnathpur', 21),
(404, 'Chhipaharmai', 21),
(405, 'Bindabasini', 21),
(406, 'Paterwa Sugauli', 21),
(407, 'Jeera Bhavani', 21),
(408, 'Kalikamai', 21),
(409, 'Pakaha Mainpur', 21),
(410, 'Thori', 21),
(411, 'Dhobini', 21),
(412, 'Durga Bhagawati', 22),
(413, 'Yamunamai', 22),
(414, 'Tilathi Koiladi', 15),
(415, 'Belhi Chapena', 15),
(416, 'Chhinnamasta', 15),
(417, 'Mahadeva', 15),
(418, 'Aagnisaira Krishnasawaran', 15),
(419, 'Rupani', 15),
(420, 'Balan-Bihul', 15),
(421, 'Bishnupur', 15),
(422, 'Tirhut', 15),
(423, 'Chandranagar', 19),
(424, 'Bramhapuri', 19),
(425, 'Ramnagar', 19),
(426, 'Chakraghatta', 19),
(427, 'Kaudena', 19),
(428, 'Dhankaul', 19),
(429, 'Bishnu', 19),
(430, 'Basbariya', 19),
(431, 'Parsa', 19),
(432, 'Laksmipur Patari', 16),
(433, 'Bariyarpatti', 16),
(434, 'Aaurahi', 16),
(435, 'Arnama', 16),
(436, 'Bhagawanpur', 16),
(437, 'Naraha', 16),
(438, 'Nawarajpur', 16),
(439, 'Sakhuwanankarkatti', 16),
(440, 'Bishnupur', 16),
(441, 'Ichchhakamana', 34),
(442, 'Thakre', 27),
(443, 'Benighat Rorang', 27),
(444, 'Galchhi', 27),
(445, 'Gajuri', 27),
(446, 'Jwalamukhi', 27),
(447, 'Siddhalekh', 27),
(448, 'Tripura Sundari', 27),
(449, 'Gangajamuna', 27),
(450, 'Netrawati Dabjong', 27),
(451, 'Khaniyabas', 27),
(452, 'Ruby Valley', 27),
(453, 'Kalinchok', 25),
(454, 'Melung', 25),
(455, 'Shailung', 25),
(456, 'Baiteshwar', 25),
(457, 'Tamakoshi', 25),
(458, 'Bigu', 25),
(459, 'Gaurishankar', 25),
(460, 'Roshi', 29),
(461, 'Temal', 29),
(462, 'Chaunri Deurali', 29),
(463, 'Bhumlu', 29),
(464, 'Mahabharat', 29),
(465, 'Bethanchok', 29),
(466, 'Khanikhola', 29),
(467, 'Bagmati', 30),
(468, 'Konjyosom', 30),
(469, 'Mahankal', 30),
(470, 'Bakaiya', 35),
(471, 'Manhari', 35),
(472, 'Bagmati', 35),
(473, 'Raksirang', 35),
(474, 'Makawanpurgadhi', 35),
(475, 'Kailash', 35),
(476, 'Bhimphedi', 35),
(477, 'Indrasarowar', 35),
(478, 'Kakani', 31),
(479, 'Dupcheshwar', 31),
(480, 'Shivapuri', 31),
(481, 'Tadi', 31),
(482, 'Likhu', 31),
(483, 'Suryagadhi', 31),
(484, 'Panchakanya', 31),
(485, 'Tarkeshwar', 31),
(486, 'Kispang', 31),
(487, 'Myagang', 31),
(488, 'Khandadevi', 24),
(489, 'Likhu Tamakoshi', 24),
(490, 'Doramba', 24),
(491, 'Gokulganga', 24),
(492, 'Sunapati', 24),
(493, 'Umakunda', 24),
(494, 'Naukunda', 32),
(495, 'Kalika', 32),
(496, 'Uttargaya', 32),
(497, 'Gosaikund', 32),
(498, 'Aamachodingmo', 32),
(499, 'Tinpatan', 23),
(500, 'Marin', 23),
(501, 'Hariharpurgadhi', 23),
(502, 'Sunkoshi', 23),
(503, 'Golanjor', 23),
(504, 'Phikkal', 23),
(505, 'Ghyanglekh', 23),
(506, 'Indrawati', 33),
(507, 'Panchpokhari Thangpal', 33),
(508, 'Jugal', 33),
(509, 'Balephi', 33),
(510, 'Helambu', 33),
(511, 'Bhotekoshi', 33),
(512, 'Sunkoshi', 33),
(513, 'Lisankhu Pakhar', 33),
(514, 'Tripura Sundari', 33),
(515, 'Badigad', 36),
(516, 'Kathekhola', 36),
(517, 'Nisikhola', 36),
(518, 'Bareng', 36),
(519, 'Tarakhola', 36),
(520, 'Tamankhola', 36),
(521, 'Shahid Lakhan', 37),
(522, 'Barpak Sulikot', 37),
(523, 'Aarughat', 37),
(524, 'Siranchok', 37),
(525, 'Gandaki', 37),
(526, 'Bhimsen Thapa', 37),
(527, 'Ajirkot', 37),
(528, 'Dharche', 37),
(529, 'Chum Nubri', 37),
(530, 'Annapurna', 38),
(531, 'Machhapuchhre', 38),
(532, 'Madi', 38),
(533, 'Rupa', 38),
(534, 'Marsyangdi', 39),
(535, 'Dordi', 39),
(536, 'Dudhpokhari', 39),
(537, 'Kwaholasothar', 39),
(538, 'Manang Disyang', 40),
(539, 'Nason', 40),
(540, 'Chame', 40),
(541, 'Narpa Bhumi', 40),
(542, 'Gharpajhong', 41),
(543, 'Thasang', 41),
(544, 'Baragung Muktichhetra', 41),
(545, 'Lomanthang', 41),
(546, 'Lo-Thekar Damodarkunda', 41),
(547, 'Malika', 42),
(548, 'Mangala', 42),
(549, 'Raghuganga', 42),
(550, 'Dhaulagiri', 42),
(551, 'Annapurna', 42),
(552, 'Hupsekot', 43),
(553, 'Binayi Triveni', 43),
(554, 'Bulingtar', 43),
(555, 'Baudikali', 43),
(556, 'Jaljala', 44),
(557, 'Modi', 44),
(558, 'Painyu', 44),
(559, 'Bihadi', 44),
(560, 'Mahashila', 44),
(561, 'Kaligandaki', 45),
(562, 'Biruwa', 45),
(563, 'Harinas', 45),
(564, 'Aandhikhola', 45),
(565, 'Arjun Chaupari', 45),
(566, 'Phedikhola', 45),
(567, 'Rishing', 46),
(568, 'Myagde', 46),
(569, 'Aanbu Khaireni', 46),
(570, 'Bandipur', 46),
(571, 'Ghiring', 46),
(572, 'Devghat', 46),
(573, 'Malarani', 50),
(574, 'Pandini', 50),
(575, 'Chhatradev', 50),
(576, 'Raptisonari', 57),
(577, 'Baijnath', 57),
(578, 'Khajura', 57),
(579, 'Janaki', 57),
(580, 'Duduwa', 57),
(581, 'Narainapur', 57),
(582, 'Badhaiyatal', 58),
(583, 'Geruwa', 58),
(584, 'Rapti', 53),
(585, 'Gadhawa', 53),
(586, 'Babai', 53),
(587, 'Shantinagar', 53),
(588, 'Rajpur', 53),
(589, 'Banglachuli', 53),
(590, 'Dangisharan', 53),
(591, 'Satyawati', 51),
(592, 'Dhurkot', 51),
(593, 'Gulmi Durbar', 51),
(594, 'Madane', 51),
(595, 'Chandrakot', 51),
(596, 'Malika', 51),
(597, 'Chhatrakot', 51),
(598, 'Isma', 51),
(599, 'Kaligandaki', 51),
(600, 'Ruru', 51),
(601, 'Mayadevi', 47),
(602, 'Shuddhodhan', 47),
(603, 'Yasodhara', 47),
(604, 'Bijaynagar', 47),
(605, 'Triveni Susta', 48),
(606, 'Pratappur', 48),
(607, 'Sarawal', 48),
(608, 'Palhi Nandan', 48),
(609, 'Rainadevi Chhahara', 52),
(610, 'Mathagadhi', 52),
(611, 'Nisdi', 52),
(612, 'Bagnaskali', 52),
(613, 'Rambha', 52),
(614, 'Purbakhola', 52),
(615, 'Tinau', 52),
(616, 'Ribdikot', 52),
(617, 'Naubahini', 54),
(618, 'Jhimaruk', 54),
(619, 'Gaumukhi', 54),
(620, 'Airawati', 54),
(621, 'Sarumarani', 54),
(622, 'Mallarani', 54),
(623, 'Mandavi', 54),
(624, 'Sunil Smriti', 55),
(625, 'Runtigadhi', 55),
(626, 'Lungri', 55),
(627, 'Triveni', 55),
(628, 'Paribartan', 55),
(629, 'Gangadev', 55),
(630, 'Madi', 55),
(631, 'Sunchhahari', 55),
(632, 'Thawang', 55),
(633, 'Bhume', 56),
(634, 'Putha Uttarganga', 56),
(635, 'Sisne', 56),
(636, 'Gaidhawa', 49),
(637, 'Mayadevi', 49),
(638, 'Kotahimai', 49),
(639, 'Marchawarimai', 49),
(640, 'Siyari', 49),
(641, 'Sammarimai', 49),
(642, 'Rohini', 49),
(643, 'Shuddhodhan', 49),
(644, 'Om Satiya', 49),
(645, 'Kanchan', 49),
(646, 'Gurans', 67),
(647, 'Bhairabi', 67),
(648, 'Naumule', 67),
(649, 'Mahabu', 67),
(650, 'Thantikandh', 67),
(651, 'Bhagawatimai', 67),
(652, 'Dungeshwar', 67),
(653, 'Mudkechula', 61),
(654, 'Kaike', 61),
(655, 'She Phoksundo', 61),
(656, 'Jagadulla', 61),
(657, 'Dolpo Buddha', 61),
(658, 'Chharka Tangsong', 61),
(659, 'Simkot', 62),
(660, 'Sarkegad', 62),
(661, 'Adanchuli', 62),
(662, 'Kharpunath', 62),
(663, 'Tanjakot', 62),
(664, 'Chankheli', 62),
(665, 'Namkha', 62),
(666, 'Junichande', 68),
(667, 'Kuse', 68),
(668, 'Barekot', 68),
(669, 'Shivalaya', 68),
(670, 'Tatopani', 63),
(671, 'Patarasi', 63),
(672, 'Tila', 63),
(673, 'Kanaka Sundari', 63),
(674, 'Sinja', 63),
(675, 'Hima', 63),
(676, 'Guthichaur', 63),
(677, 'Narharinath', 64),
(678, 'Palata', 64),
(679, 'Shubha Kalika', 64),
(680, 'Sanni Triveni', 64),
(681, 'Pachaljharana', 64),
(682, 'Mahawai', 64),
(683, 'Khatyad', 65),
(684, 'Soru', 65),
(685, 'Mugum Karmarong', 65),
(686, 'Sani Bheri', 59),
(687, 'Triveni', 59),
(688, 'Banphikot', 59),
(689, 'Kumakh', 60),
(690, 'Kalimati', 60),
(691, 'Chhatreshwari', 60),
(692, 'Darma', 60),
(693, 'Kapurkot', 60),
(694, 'Triveni', 60),
(695, 'Siddha Kumakh', 60),
(696, 'Barahatal', 66),
(697, 'Simta', 66),
(698, 'Chaukune', 66),
(699, 'Chingad', 66),
(700, 'Ramaroshan', 70),
(701, 'Chaurpati', 70),
(702, 'Turmakhand', 70),
(703, 'Mellekh', 70),
(704, 'Dhankari', 70),
(705, 'Bannigadi Jayagad', 70),
(706, 'Dogdakedar', 76),
(707, 'Dilashaini', 76),
(708, 'Sigas', 76),
(709, 'Pancheshwar', 76),
(710, 'Surnaya', 76),
(711, 'Shivanath', 76),
(712, 'Kedarsyu', 72),
(713, 'Thalara', 72),
(714, 'Bitthadchir', 72),
(715, 'Chhabis Pathibhera', 72),
(716, 'Chhanna', 72),
(717, 'Masta', 72),
(718, 'Durgathali', 72),
(719, 'Talkot', 72),
(720, 'Surma', 72),
(721, 'Saipal', 72),
(722, 'Khaptad Chhededaha', 73),
(723, 'Swami Kartik Khapar', 73),
(724, 'Jagannath', 73),
(725, 'Himali', 73),
(726, 'Gaumul', 73),
(727, 'Navadurga', 75),
(728, 'Aalitaal', 75),
(729, 'Ganyapadhura', 75),
(730, 'Bhageshwar', 75),
(731, 'Ajaymeru', 75),
(732, 'Naugad', 77),
(733, 'Malikarjun', 77),
(734, 'Marma', 77),
(735, 'Lekam', 77),
(736, 'Duhu', 77),
(737, 'Vyans', 77),
(738, 'Api Himal', 77),
(739, 'Aadarsha', 71),
(740, 'Purbichauki', 71),
(741, 'K.I. Singh', 71),
(742, 'Jorayal', 71),
(743, 'Sayal', 71),
(744, 'Bogatan', 71),
(745, 'Badikedar', 71),
(746, 'Janaki', 69),
(747, 'Kailari', 69),
(748, 'Joshipur', 69),
(749, 'Bargagoriya', 69),
(750, 'Mohanyal', 69),
(751, 'Chure', 69),
(752, 'Laljhadi', 74),
(753, 'Beldandi', 74);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` int(1) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`) VALUES
(3, 'Bagmati Pradesh'),
(4, 'Gandaki Pradesh'),
(6, 'Karnali Pradesh'),
(1, 'Province no. 1'),
(2, 'Province no. 2'),
(5, 'Province no. 5'),
(7, 'Sudurpashchim Pradesh');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `province_id` (`province_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `municipalities`
--
ALTER TABLE `municipalities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `province_name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `municipalities`
--
ALTER TABLE `municipalities`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=754;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_ibfk_1` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

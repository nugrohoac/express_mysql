-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2018 at 03:55 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_belajar`
--

-- --------------------------------------------------------

--
-- Table structure for table `countrys`
--

CREATE TABLE `countrys` (
  `country_id` int(100) NOT NULL,
  `country_name` varchar(100) NOT NULL,
  `country_villagers` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countrys`
--

INSERT INTO `countrys` (`country_id`, `country_name`, `country_villagers`) VALUES
(1, 'Western Sahara', 20024),
(2, 'Cook Islands', 50198),
(3, 'Sint Maarten', 32710),
(4, 'Chile', 81987),
(5, 'South Sudan', 75908),
(6, 'Mali', 28547),
(7, 'Libya', 81089),
(8, 'Montenegro', 38475),
(9, 'Bonaire, Sint Eustatius and Saba', 5177),
(10, 'Cocos (Keeling) Islands', 49553),
(11, 'Panama', 26053),
(12, 'Kiribati', 13159),
(13, 'Gambia', 51732),
(14, 'Oman', 50098),
(15, 'Samoa', 42793),
(16, 'Netherlands', 69796),
(17, 'Belize', 52408),
(18, 'Laos', 73535),
(19, 'South Georgia and The South Sandwich Islands', 78272),
(20, 'Aruba', 50878),
(21, 'Solomon Islands', 7909),
(22, 'Guernsey', 74712),
(23, 'United Arab Emirates', 75131),
(24, 'Guatemala', 9833),
(25, 'Croatia', 10558),
(26, 'India', 71066),
(27, 'New Caledonia', 58108),
(28, 'Zimbabwe', 64513),
(29, 'Ireland', 78862),
(30, 'Turkmenistan', 57263),
(31, 'Somalia', 77555),
(32, 'Ireland', 85595),
(33, 'Yemen', 98577),
(34, 'Reunion', 77563),
(35, 'Kenya', 82631),
(36, 'Cayman Islands', 58013),
(37, 'Tokelau', 24137),
(38, 'Czech Republic', 39166),
(39, 'India', 87992),
(40, 'Poland', 87582),
(41, 'Mauritania', 31421),
(42, 'Tuvalu', 77826),
(43, 'Viet Nam', 95065),
(44, 'Pitcairn Islands', 91385),
(45, 'Anguilla', 37843),
(46, 'Gambia', 76097),
(47, 'Argentina', 46918),
(48, 'Singapore', 76936),
(49, 'Canada', 5819),
(50, 'Zambia', 12442),
(51, 'Estonia', 23750),
(52, 'San Marino', 7785),
(53, 'Bangladesh', 89494),
(54, 'Mauritius', 42034),
(55, 'Trinidad and Tobago', 61962),
(56, 'Belarus', 66047),
(57, 'Timor-Leste', 69677),
(58, 'Virgin Islands, United States', 25463),
(59, 'Timor-Leste', 68984),
(60, 'Reunion', 9526),
(61, 'French Polynesia', 54091),
(62, 'Botswana', 95118),
(63, 'Cyprus', 52169),
(64, 'Sint Maarten', 57018),
(65, 'Sri Lanka', 53063),
(66, 'Samoa', 34817),
(67, 'Malawi', 71233),
(68, 'Dominica', 72534),
(69, 'Guernsey', 76132),
(70, 'Iraq', 52071),
(71, 'Nicaragua', 18724),
(72, 'Brunei', 21318),
(73, 'Uganda', 39019),
(74, 'Virgin Islands, United States', 71466),
(75, 'French Guiana', 8979),
(76, 'Sao Tome and Principe', 78158),
(77, 'American Samoa', 42144),
(78, 'Austria', 87303),
(79, 'Zimbabwe', 41573),
(80, 'Saint Helena, Ascension and Tristan da Cunha', 46340),
(81, 'Ecuador', 37311),
(82, 'Nauru', 50129),
(83, 'Estonia', 17884),
(84, 'France', 92966),
(85, 'Ecuador', 98222),
(86, 'Benin', 40285),
(87, 'Wallis and Futuna', 54635),
(88, 'Iceland', 72633),
(89, 'Sint Maarten', 91590),
(90, 'Guatemala', 95303),
(91, 'Mali', 59446),
(92, 'Saint Kitts and Nevis', 7007),
(93, 'Bosnia and Herzegovina', 33730),
(94, 'British Indian Ocean Territory', 10731),
(96, 'Mozambique', 36366),
(97, 'Romania', 95175),
(98, 'Antigua and Barbuda', 64300),
(99, 'Grenada', 84552),
(100, 'Czech Republic', 24407);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countrys`
--
ALTER TABLE `countrys`
  ADD PRIMARY KEY (`country_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countrys`
--
ALTER TABLE `countrys`
  MODIFY `country_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

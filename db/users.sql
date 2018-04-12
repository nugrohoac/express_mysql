-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2018 at 11:00 AM
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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `alamat`, `token`) VALUES
(1, 'NACO', 'Kopi hideng iji', 'D4061F78-48D4-6921-8C40-039DD485F290'),
(2, 'Cahyo', 'Jl. Menujut kebenaran', '05DA2318-E557-0E41-550A-3A0D1DA3239F'),
(4, 'Hyatt Dale', 'Ap #839-5383 Ac Street', '518007A4-60D9-ADB0-76EA-80C1413125EF'),
(5, 'Quamar Green', 'P.O. Box 699, 5921 Dictum Ave', 'F9DCB3C1-5817-B6B9-7490-4A2244CCBAC9'),
(6, 'Colby Duke', 'P.O. Box 424, 233 Rutrum, Road', 'DAB0D8B7-2FCF-4D28-7137-03737089E1CB'),
(7, 'Bruce Becker', '7617 Integer Ave', 'A3DC2C7A-6CDD-C25B-6F86-9549431A30E7'),
(8, 'Sebastian Walsh', '9565 Facilisi. Rd.', '5CCCBF35-0E39-5435-0909-05CD6FB9610E'),
(9, 'Vance Hill', '162-1215 At Rd.', '51C0DEBE-F1AD-C76A-6254-6E50C733D3DF'),
(10, 'Ishmael Wise', 'P.O. Box 725, 6331 Nulla Street', 'B928D624-B1D9-B325-C34C-AC0666EC2FD8'),
(11, 'Richard Cline', '966-9220 Eu, Avenue', 'A77812F7-3348-00B7-0EF7-7D172D6EAE35'),
(12, 'Carson Gallegos', '542 Praesent Street', 'E6B1661C-930E-C3DF-47FF-B7892650F2A1'),
(13, 'Dane Young', 'P.O. Box 688, 9174 Dictum Ave', 'B4AE642D-F833-F296-93C2-51F00900A4C5'),
(14, 'Brock Decker', '1117 Tempus Avenue', 'DEB1A2BF-BF74-094E-5E37-244D7C4A898C'),
(15, 'Keefe Mckenzie', 'P.O. Box 199, 981 Morbi Rd.', 'A1D069C2-8707-FCAC-78DB-71E262B77666'),
(16, 'Blaze Livingston', 'Ap #995-2611 Etiam Street', 'EACC2531-46DA-8087-8217-7D23E9449615'),
(17, 'Zahir Sheppard', 'Ap #348-3893 Cursus Av.', 'D5D9E2F2-A17F-3501-F052-59178CDFBAD2'),
(18, 'Talon Durham', 'P.O. Box 232, 7021 Ante Road', '72899B14-FD77-8274-2E54-A0393C5F6BEA'),
(19, 'Rajah Spears', 'P.O. Box 461, 6837 Mauris Street', '9C6C8714-36E6-8E12-92D9-59E680A68A12'),
(20, 'Andrew Tate', '226-1935 Lobortis St.', 'A0F5FD5D-B49C-FDDC-F4A9-B47882A407D9'),
(21, 'Elliott Logan', '3975 Blandit Rd.', '5B530852-19B9-B58B-5B0F-A3AAA3489698'),
(22, 'Ronan David', 'Ap #622-2115 Felis Av.', '6E425E3F-6226-4485-F4E0-D7E9458A4103'),
(23, 'Arden Olson', '5731 Eleifend, Av.', '408536D1-6480-E16D-1606-166527AB3AF4'),
(24, 'Evan Nash', 'Ap #334-2898 Turpis Ave', 'F825E053-5CB0-C5ED-77C6-9025D999647E'),
(25, 'Ferris Howe', 'P.O. Box 634, 4741 Dictum. Rd.', 'F410857E-F469-1D36-4487-C521E70C8759'),
(26, 'Stewart Swanson', '1305 Metus Street', '15BCFA2E-154B-7A1F-2B3B-FDDED7130A5C'),
(27, 'Richard Reilly', '6949 Molestie St.', '9F9FA45C-A488-4501-1B71-62714F6F7752'),
(28, 'Brennan Gordon', 'Ap #826-2259 Ante, Road', '1BCBC13C-CFBB-EC61-C3D8-CC70A04A2041'),
(29, 'Roth Guerra', 'Ap #861-2008 Cursus, Av.', 'C5B1E04D-842A-BE82-1B9F-61AD785F2EDF'),
(30, 'Hasad Mosley', 'P.O. Box 639, 6244 Sed Rd.', '1A2B0B60-8471-D135-45CB-89C89AEEB26F'),
(31, 'Hashim Hinton', '639-3839 A, Street', 'B19998CD-2221-019F-16A7-B17140412B3E'),
(32, 'Ralph Carey', 'Ap #320-5390 Nulla St.', 'B8E40E23-B316-97D3-EBBF-9F1DF87DF899'),
(33, 'Jermaine Petty', 'Ap #776-6481 Donec Rd.', 'E796ED26-32FF-2281-5808-66D57B20088B'),
(34, 'Jordan Leonard', 'P.O. Box 644, 1676 Convallis St.', 'F6B19515-C3FF-2C90-CFF1-A43D41C2050F'),
(35, 'Forrest Wilkins', '475-785 Laoreet Road', '7F168BB7-3B52-E636-5D27-FA906FECB425'),
(36, 'Acton Duffy', '169-2527 Ut, St.', '9E2986ED-1100-E102-ADA3-42F530AB240F'),
(37, 'Justin Good', '9150 Pede Street', 'A6945E96-3D27-03D9-A60A-F30A0EEB064A'),
(38, 'Joel Conrad', 'P.O. Box 216, 1646 Dignissim St.', '658955F5-B035-86E6-576A-810B34BA01E0'),
(39, 'Coby Peterson', 'P.O. Box 298, 6082 Integer Avenue', '9BF86AE3-577D-3F49-A0E9-C478297C2D51'),
(40, 'Rashad Perkins', '6256 Maecenas Rd.', 'CAEA48A2-6C60-D36D-4ACE-8EF64E6704D5'),
(41, 'Kuame Blankenship', 'Ap #721-749 Nec Street', 'F7D3B7D7-88BC-6671-11EE-ADF15A823B87'),
(42, 'Jin Michael', 'Ap #991-3945 Risus Avenue', '2396B57B-4660-52B4-9450-23AC6BFF7586'),
(43, 'Malcolm Reyes', '291-4066 Eget, Street', '992A3C98-47B9-3733-B8D7-08506D2407B8'),
(44, 'Barry Puckett', '5443 Id, Av.', 'E1C78632-F998-82C5-7041-5163510D3200'),
(45, 'Dustin Boone', 'P.O. Box 207, 8707 In St.', '6A2A82C8-032D-A0C8-991F-013B5D9662F3'),
(46, 'Paki Ross', 'P.O. Box 212, 8639 Etiam Rd.', '8EA85146-CAB0-A862-B8B0-6E3C048E295F'),
(47, 'Ignatius Allison', 'Ap #973-8156 Sollicitudin Rd.', '40493CD8-07AB-ED45-70EA-35CADAFD2E11'),
(48, 'Vance Haynes', '7087 Pellentesque Rd.', '8FAEF3E6-12E1-B4B0-0997-6A69B490038D'),
(49, 'Ezra Duncan', '4539 Ipsum St.', 'C8C66E16-B116-FAA5-64BF-D04D500BCEEF'),
(50, 'Gannon Kelly', 'P.O. Box 279, 3580 Phasellus Road', '9DE4DAC7-F44C-BA25-EE5A-770531DD8C4A'),
(51, 'Ray Sandoval', '338 Mauris Street', '7C9D2E9B-BE5F-DB4F-BEF5-A3DCA35F37B0'),
(52, 'Kenneth Thompson', 'P.O. Box 728, 6143 Eu Street', 'DBA8FFAA-4E69-FD7D-8FB0-881FB4A27129'),
(53, 'Dillon Pearson', 'P.O. Box 665, 3233 Orci. Av.', '9D0CC65F-E6E3-E995-56B2-4F79108CD113'),
(54, 'Gage Dixon', '5271 Faucibus Avenue', '9566A412-CBB6-F98C-8428-BD5FC331E831'),
(55, 'Ryan Morrison', 'Ap #582-4332 Congue, Road', '90AE7BF8-BDE6-CE51-52F2-715852C3D693'),
(56, 'Cain Silva', '234-9353 Sem Ave', '9AD0003D-50BA-ABBD-C0E4-6CAEBA721DA9'),
(57, 'Denton Stokes', '911-3241 Sit Rd.', 'EE929CDC-D5D3-FB28-5EEC-717591F27700'),
(58, 'Hayes Nieves', 'P.O. Box 895, 3263 Accumsan Street', '5D0D812E-E43A-6E0D-616E-DD511FE8EF78'),
(59, 'Dennis Barton', '7173 Neque. St.', 'E73D086D-BC3E-4383-DE1A-FB855694B9C7'),
(60, 'Jerry Baldwin', '8547 Orci, Street', 'FC8B5E32-8908-F5B2-C306-85E41E587478'),
(61, 'Brenden Bass', 'Ap #788-6430 Nec Rd.', '7174534B-D6B2-1461-457D-BEA8725B7E05'),
(62, 'Lev Oneil', '381-5130 Aliquet Street', 'C2BC08C5-A9BC-33EA-CAE3-FAC63C6501DF'),
(63, 'Nicholas Hodges', 'Ap #252-4988 Commodo Rd.', '110E7839-892B-5E1C-B0BA-A60E4DD3C56D'),
(64, 'Lamar Camacho', '862-4020 Ipsum Road', '78776595-F449-65E2-AF48-B54C1454FEB5'),
(65, 'Orlando Salazar', '362 Arcu. St.', '832954D4-688A-44D0-05BC-CB4C17551CCA'),
(66, 'Fitzgerald Payne', '356-3587 Rhoncus Street', 'B2890791-9DC7-C281-2C35-B9A40EFAE8A4'),
(67, 'Colt Schultz', 'P.O. Box 298, 9328 A Rd.', '5524AA76-1B6C-9D8F-2131-814C3467552C'),
(68, 'Kasimir Gould', '275-2464 Nisl St.', '52E76B1A-0169-62F3-5C73-A18CD72FB366'),
(69, 'Beck Mccarty', '346 Odio. St.', 'B50E41B8-3DC3-5BE2-D056-FDC612FD848E'),
(70, 'Arsenio Contreras', 'Ap #183-8122 Eget, Avenue', '2BAA63B9-497A-7415-5D8A-8226191EFF9C'),
(71, 'Price Knowles', '974-2365 Augue Road', '7A163C4C-09B3-CA5A-8AED-3DA91A997444'),
(72, 'Kermit Goff', 'P.O. Box 372, 9408 Proin Ave', '9D6B96D7-FD41-3354-B3B0-E2C076FD0ADC'),
(73, 'Wylie Hancock', '1274 Proin Road', '18122C68-ED0E-6A69-0179-2F6E9763105D'),
(74, 'Laith Kaufman', 'Ap #852-1457 Magna. St.', '936812AB-2E7E-08F7-54BD-AF4FFB49430C'),
(75, 'Evan Pena', '267-8244 Vitae Av.', '8C63CAA2-866C-B99E-BBFF-BB80141DB2FA'),
(76, 'Quinn Clemons', '334-1912 Sit St.', 'D36CFD22-684C-A53B-102D-73EB650B3F66'),
(77, 'Lucian Tran', 'Ap #531-9212 Dui, Rd.', '6C77E3AE-5B32-4D29-F2E2-857E36A5B82A'),
(78, 'David Hill', '5597 Urna St.', '3E34D49D-C465-5057-2FA6-D21E27FB7B42'),
(79, 'Lamar Dotson', '424-4172 Quam. Ave', '6E827FF0-6903-4598-52D6-44CADE3394B2'),
(80, 'Ali Rose', '964-555 Mauris St.', 'C2BA4AAE-2EE9-2461-100C-A6F3D2759059'),
(81, 'James Stout', 'Ap #432-5054 Ornare Road', '2DF74A7B-2C4B-BEE4-08E4-924A2E1EA847'),
(82, 'Fritz West', '5096 Eu Road', 'E3DEBE31-56E9-4ED4-32B4-9521D2D71C2A'),
(83, 'Ivor Hurst', 'P.O. Box 675, 4194 Eget Rd.', '70D716CC-B539-90B8-62D7-290126F5F316'),
(84, 'Patrick Shaw', '211-7825 Sed St.', '7FF6C026-CC30-098C-81D1-4E21EE0C90D6'),
(85, 'Beau Mcintyre', '879-5626 Vitae, Ave', '5EDD5E59-09BF-20A3-1B4D-0DA407C55546'),
(86, 'Kato Burris', '9573 Erat Ave', '7ECA5284-DC18-9649-98D0-E4247B5AC7D8'),
(87, 'Alec Day', 'P.O. Box 672, 8678 Etiam Street', '4649B2CF-5B88-D6A5-91B8-96DCC8F593DC'),
(88, 'Justin Harrell', '661-8528 A, Ave', 'D0E19613-F12D-8A43-DE92-C7D36C292686'),
(89, 'Leroy Phelps', '6000 Mauris Avenue', '2298FDAF-831E-A4CD-FABE-512A5710F6F5'),
(90, 'Ian Morse', '2084 Feugiat St.', '981492B7-C1AC-FA02-1D27-6050B24DF5EC'),
(91, 'Lucian Massey', 'Ap #301-9947 Ut, Rd.', '5D274DF4-6DEA-92BC-D1DC-E3812043ACB1'),
(92, 'Keegan Potter', 'P.O. Box 358, 3382 Vulputate Avenue', 'C31B9151-7425-E711-5B67-50FEC0ACC4E0'),
(93, 'Alden Fletcher', 'P.O. Box 741, 2300 Nisi. St.', 'EADA3E50-1504-FC52-ECCF-8216C9B1C91F'),
(94, 'Tad Dodson', '917-1708 Consectetuer Rd.', '65A4F113-D390-1934-2EB2-FAFE0B51AB55'),
(95, 'Duncan Compton', 'Ap #421-5862 Aliquam Road', 'A463BBFF-C11C-1A8D-AD85-15AFA68ADF93'),
(96, 'Gareth Dodson', '7976 Amet Ave', '8B0CCBEA-0695-312F-F1C8-91A2E3221514'),
(97, 'Byron Kramer', '8805 Pellentesque Rd.', '076A0D64-BCBA-15C6-C837-1DF94ECCB78B'),
(98, 'Kamal Andrews', 'Ap #175-1704 Senectus Av.', 'DD8A2825-1DD9-02C1-758E-06B55A260C0E'),
(99, 'Steel Booth', '3810 Dolor Road', '709219E3-19A4-DD38-D2A7-BD45AFEBA219'),
(100, 'Todd Horn', 'P.O. Box 784, 2192 Arcu. St.', '4287AEC0-D59C-B800-B85A-BBBECED4A088'),
(101, 'siapa', 'di mana', 'GG44-009-FFF-0087'),
(102, 'siapa', 'di mana', 'GG44-009-FFF-0087'),
(103, 'siapa', 'di mana', 'GG44-009-FFF-0087'),
(104, 'budi', 'jakarta', '2df48ff0-3dfe-11e8-8fd2-c369a7f7f6b5'),
(105, 'budi', 'passwornya luwak white kopi ga bikin kembung', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiYnVkaSIsImFsYW1ldCI6InBhc3N3b3JueWEgbHV3YWsgd2hpdGU'),
(106, 'bapak budi', 'passwornya luwak white kopi ga bikin kembung', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiYmFwYWsgYnVkaSIsImFsYW1ldCI6InBhc3N3b3JueWEgbHV3YWs'),
(107, 'saya', 'rumah', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoic2F5YSIsImFsYW1ldCI6InJ1bWFoIiwidGltZSI6MTUyMzUxNjY'),
(108, 'kamu', 'passwornya luwak white kopi ga bikin kembung', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoia2FtdSIsImFsYW1ldCI6InBhc3N3b3JueWEgbHV3YWsgd2hpdGU');

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
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

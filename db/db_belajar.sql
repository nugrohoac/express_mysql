-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2018 at 12:51 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `id` int(100) NOT NULL,
  `user_id` int(5) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_address` varchar(50) NOT NULL,
  `token` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`id`, `user_id`, `user_name`, `user_email`, `user_address`, `token`) VALUES
(0, 1, 'qweq', 'asd', 'ads', ''),
(0, 2, 'qew', 'eqw', 'qwe', ''),
(0, 4, 'Cahyo', 'Cahyo@gmail.com', 'Alamat', ''),
(0, 5, 'qrqwr', 'wrwqer', 'qrqwerwe', ''),
(0, 6, 'werwqer', 'werqwer', 'wqreqwer', ''),
(0, 7, 'qwreqw', 'qwerq', 'tqtqwr', ''),
(0, 8, 'rqwerqwr', 'wqerqwre', 'qwrqwer', ''),
(0, 9, 'rqwerqw', 'rqwer', 'qwerwqerwqer', ''),
(0, 10, 'werwer', 'qwerqwer', 'qwreqwer', ''),
(0, 11, 'qwrqw', 'q1rqwe', 'qwerqw', ''),
(0, 12, 'rqwerqwerwerw', 'erwerwqerq', 'rqerqwedqw', ''),
(0, 13, 'Beau V. Monroe', 'nec.urna.et@sit.com', 'Brighton', ''),
(0, 14, 'Flynn S. Mack', 'viverra.Donec.tempus@idblanditat.edu', 'Okara', ''),
(0, 15, 'Jameson D. Nicholson', 'sit.amet.luctus@Donecporttitor.edu', 'Bellante', ''),
(0, 16, 'Nehru G. Mccall', 'id.mollis.nec@leo.org', 'Columbia', ''),
(0, 17, 'Tyler J. Petty', 'mi.felis@lacusvariuset.net', 'Beigem', ''),
(0, 18, 'Lesley M. Deleon', 'vel@sociis.ca', 'Hollogne-sur-Geer', ''),
(0, 19, 'Wynne Z. Dale', 'hendrerit.id@idsapienCras.org', 'Gillette', ''),
(0, 20, 'Chester J. Townsend', 'Suspendisse.tristique@eget.edu', 'Naihati', ''),
(0, 21, 'Gareth X. Allison', 'aliquam.iaculis@Curabituregestasnunc.com', 'Braies/Prags', ''),
(0, 22, 'Vladimir Q. Green', 'feugiat.non@Suspendissecommodotincidunt.org', 'Villers-lez-Heest', ''),
(0, 23, 'Anastasia P. Roberson', 'a.purus@auctor.com', 'Pazarc?k', ''),
(0, 24, 'Tatyana F. Barron', 'non@pedePraesent.co.uk', 'Mirzapur-cum-Vindhyachal', ''),
(0, 25, 'Lenore R. Reynolds', 'et.nunc@aliquetmetus.com', 'Wijnegem', ''),
(0, 26, 'Geraldine I. Rosario', 'Suspendisse@dapibus.com', 'Zaragoza', ''),
(0, 27, 'Cooper Y. Fisher', 'arcu.Sed@loremvehicula.edu', 'Springfield', ''),
(0, 28, 'Karina D. Warner', 'ligula@eu.co.uk', 'Beaumont', ''),
(0, 29, 'Nissim S. Carver', 'Etiam.vestibulum.massa@lacusNullatincidunt.co.uk', 'Dunfermline', ''),
(0, 30, 'Xyla Q. Conner', 'egestas.urna.justo@Praesent.co.uk', 'Carunchio', ''),
(0, 31, 'Fuller S. Ellis', 'ac.ipsum.Phasellus@tortoratrisus.edu', 'Benalla', ''),
(0, 32, 'Victor H. Parrish', 'Nunc.laoreet@Aenean.com', 'Nocciano', ''),
(0, 33, 'Keiko D. Fischer', 'id.libero@nibhenim.edu', 'Kakinada', ''),
(0, 34, 'Odette J. Conway', 'ipsum.dolor.sit@augueac.com', 'Saintes', ''),
(0, 35, 'Calista I. May', 'facilisis.magna@enimEtiam.org', 'Gebze', ''),
(0, 36, 'Joel G. Santos', 'at@Etiamvestibulummassa.com', 'Pincher Creek', ''),
(0, 37, 'George V. Miller', 'lorem.sit.amet@egestasblanditNam.org', 'Orhangazi', ''),
(0, 38, 'Genevieve C. Blankenship', 'diam.at.pretium@porttitortellus.net', 'Auburn', ''),
(0, 39, 'Hope F. Schroeder', 'ornare.lectus.justo@magnaatortor.net', 'Saint-L?onard', ''),
(0, 40, 'Sacha N. Dominguez', 'Nam.nulla.magna@arcuvelquam.ca', 'Saint-Servais', ''),
(0, 41, 'Rebecca R. Shaw', 'adipiscing.lacus.Ut@quamdignissim.net', 'Huasco', ''),
(0, 42, 'Clayton M. Mclean', 'mauris.blandit@senectuset.ca', 'Baidyabati', ''),
(0, 43, 'Hyatt X. Pruitt', 'Sed@diam.net', 'Posina', ''),
(0, 44, 'Wyatt G. Landry', 'pede.Nunc@malesuadamalesuadaInteger.com', 'Bierk Bierghes', ''),
(0, 45, 'Sylvia L. Barron', 'mauris.sapien.cursus@rhoncus.com', 'Zandhoven', ''),
(0, 46, 'Roth X. Ramirez', 'et.lacinia.vitae@dolor.ca', 'Rigolet', ''),
(0, 47, 'Francesca Z. Cooley', 'id@magnaSuspendissetristique.net', 'Purnea', ''),
(0, 48, 'Hashim K. Castaneda', 'Aliquam.ornare.libero@ligula.net', 'Glovertown', ''),
(0, 49, 'Quincy N. Horne', 'in.consequat@vitae.edu', 'Kilmalcolm', ''),
(0, 50, 'Clarke W. Turner', 'leo@turpisegestasAliquam.com', 'Teruel', ''),
(0, 51, 'Carol B. Walsh', 'amet@quispede.edu', 'Betim', ''),
(0, 52, 'Lane Y. Ballard', 'congue@blanditenimconsequat.net', 'Folx-les-Caves', ''),
(0, 53, 'Freya J. May', 'mus@eleifend.org', 'Oosterhout', ''),
(0, 54, 'Emily E. Cohen', 'sem@lobortis.ca', 'Rodengo/Rodeneck', ''),
(0, 55, 'Devin E. Mayer', 'luctus.sit.amet@vulputate.ca', 'Salamanca', ''),
(0, 56, 'Georgia Q. Sawyer', 'magna.Nam@eleifend.edu', 'Montague', ''),
(0, 57, 'Ian C. Osborne', 'torquent.per@augue.org', 'Montague', ''),
(0, 58, 'Emily Z. Hooper', 'semper.dui.lectus@morbi.com', 'Tumba', ''),
(0, 59, 'Pamela O. Jones', 'sit.amet.nulla@metusAeneansed.net', 'Springfield', ''),
(0, 60, 'Honorato A. Gomez', 'turpis.Aliquam@dolorquamelementum.edu', 'Pontey', ''),
(0, 61, 'Lana B. Dillon', 'in.consectetuer.ipsum@ultricessitamet.ca', 'Mobile', ''),
(0, 62, 'Calvin W. Robertson', 'arcu.Vivamus.sit@tinciduntadipiscingMauris.com', 'Carbonear', ''),
(0, 63, 'Price J. Patton', 'Vivamus.sit@lorem.net', 'Allein', ''),
(0, 64, 'Maggie F. Mcdonald', 'In.nec.orci@Maurisnondui.com', 'Herne', ''),
(0, 65, 'Dara G. Bradford', 'lorem@pedesagittis.org', 'Vernon', ''),
(0, 66, 'Davis E. Mcfarland', 'ridiculus.mus.Proin@mattis.edu', 'Pierrefonds', ''),
(0, 67, 'Francis Z. Johns', 'senectus@Duis.edu', 'Ruoti', ''),
(0, 68, 'Tanek A. Flowers', 'Donec@hendreritnequeIn.co.uk', 'Gressoney-Saint-Jean', ''),
(0, 69, 'Ethan C. Rosa', 'dolor@nulla.com', 'Gap', ''),
(0, 70, 'Felicia Q. Robertson', 'lorem.eget@orci.ca', 'Kalken', ''),
(0, 71, 'Isabella A. Morgan', 'fermentum.arcu@ultricesVivamusrhoncus.net', 'Cáceres', ''),
(0, 72, 'Selma R. Vasquez', 'tincidunt.aliquam.arcu@sapiencursus.ca', 'Villa Latina', ''),
(0, 73, 'Sonya T. Yang', 'lorem.eu.metus@semmollisdui.ca', 'Akron', ''),
(0, 74, 'Alfreda O. Brady', 'pharetra@sedsemegestas.net', 'Gadag Betigeri', ''),
(0, 75, 'Benedict L. Blevins', 'odio.Aliquam.vulputate@mauriserat.co.uk', 'Walsall', ''),
(0, 76, 'Maya G. Guy', 'lorem@elementumloremut.org', 'Valparaíso de Goiás', ''),
(0, 77, 'Mariam M. Townsend', 'ipsum@magnaSed.net', 'Curitiba', ''),
(0, 78, 'Keaton H. Newman', 'Curabitur@liberoettristique.edu', 'NeuprŽ', ''),
(0, 79, 'Cullen B. Cunningham', 'vitae.orci@aliquameros.edu', 'Çald?ran', ''),
(0, 80, 'Rosalyn O. Ferguson', 'Nunc@dictum.com', 'Chittoor', ''),
(0, 81, 'Susan M. Solis', 'dictum@augueporttitor.edu', 'Montrose', ''),
(0, 82, 'Abraham K. Gilbert', 'leo.Morbi@uteros.net', 'Mildura', ''),
(0, 83, 'Irma A. Warren', 'enim.non@elementumategestas.edu', 'Le Puy-en-Velay', ''),
(0, 84, 'Gloria W. Chang', 'lorem.fringilla.ornare@estac.com', 'Nieuwkapelle', ''),
(0, 85, 'Katell B. Dunn', 'In@metusurna.org', 'Indore', ''),
(0, 86, 'Phoebe U. Ortega', 'orci@Mauris.edu', 'Portico e San Benedetto', ''),
(0, 87, 'Skyler A. Scott', 'velit.eget@eratin.ca', 'Ried im Innkreis', ''),
(0, 88, 'Hermione N. Serrano', 'eu.erat.semper@Suspendisse.net', 'Daknam', ''),
(0, 89, 'Fulton E. Barry', 'Ut.tincidunt.vehicula@Nam.com', 'Barddhaman', ''),
(0, 90, 'Noble H. Nash', 'a.tortor@metusIn.edu', 'Molfetta', ''),
(0, 91, 'Tamara I. Woodward', 'nibh.Donec@Pellentesque.co.uk', 'Yellowknife', ''),
(0, 92, 'Lucius S. Pugh', 'Vestibulum.accumsan@fermentumvel.ca', 'Cobquecura', ''),
(0, 93, 'Emily A. Cameron', 'Curabitur.sed@Donecfeugiatmetus.com', 'Regensburg', ''),
(0, 94, 'Holmes P. Mcintosh', 'congue.elit@velvulputate.co.uk', 'Pica', ''),
(0, 95, 'Joel D. Short', 'Suspendisse.eleifend.Cras@luctusfelis.com', 'Cambridge Bay', ''),
(0, 96, 'Cole A. Burris', 'in@aliquetProinvelit.org', 'Pagazzano', ''),
(0, 97, 'Kane S. Guy', 'Aliquam.rutrum@lacuspede.ca', 'Selva di Cadore', ''),
(0, 98, 'Hall E. Yang', 'et@ligulaconsectetuer.co.uk', 'Sint-Laureins-Berchem', ''),
(0, 99, 'Russell X. Rush', 'nonummy@tinciduntnunc.net', 'Saint-Brieuc', ''),
(0, 100, 'Honorato D. Stanton', 'dui.Fusce.aliquam@in.co.uk', 'Alma', ''),
(0, 101, 'Cade J. Fuentes', 'nonummy.Fusce@variuseteuismod.ca', 'Candidoni', ''),
(0, 102, 'Roth K. Wilder', 'mi.lacinia.mattis@consectetuermauris.com', 'Aartrijke', ''),
(0, 103, 'Norman A. Harper', 'Nunc.ullamcorper.velit@mieleifend.ca', 'Kakisa', ''),
(0, 104, 'Fletcher K. Landry', 'erat.Etiam@duiin.co.uk', 'Giardinello', ''),
(0, 105, 'Imani G. Hebert', 'sed.sem.egestas@libero.ca', 'Peralillo', ''),
(0, 106, 'Orla I. Beasley', 'scelerisque@libero.edu', 'Beverlo', ''),
(0, 107, 'Reuben M. Dudley', 'nec@Nuncsollicitudincommodo.co.uk', 'Longvilly', ''),
(0, 108, 'Hashim L. Morrow', 'Morbi@massarutrum.com', 'Williams Lake', ''),
(0, 109, 'Murphy M. Sharpe', 'Sed.diam.lorem@Quisque.org', 'Bocchigliero', ''),
(0, 110, 'Gabriel V. Best', 'et.ipsum@ante.co.uk', 'Perchtoldsdorf', ''),
(0, 111, 'Vivian G. Deleon', 'est.arcu.ac@eratnequenon.net', 'Devizes', ''),
(0, 112, 'Brynn G. Hickman', 'dui@arcueuodio.org', 'Bruckneudorf', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `alamat`, `password`, `token`) VALUES
(1, 'Uriah Newton', 'Anne', '6635 Placerat Av.', '4D5C8AE1-404D-AF8A-7D8A-08B976F9D292', '1C424D06-16A9-ABFC-3056-9153E3B370AF'),
(2, 'Slade Cline', 'Quail', 'Ap #793-8371 Pellentesque St.', '616FAA10-1C71-F149-E27F-BE5E47C9CAB5', '03ED5D36-E2C3-23F6-9324-4B8997A01523'),
(3, 'Samson Coleman', 'Winifred', '900-2236 Eu St.', '585B4D8C-9941-43C5-147A-A157F4C209FF', 'DAB17C9A-99AA-D93E-52FE-7CD3774139BB'),
(4, 'Emmanuel Love', 'Michael', 'Ap #608-7992 Vitae Road', 'EB12B03C-9A6D-832D-1844-4A28C001CB80', 'B9FDF895-2D1C-CBD2-E7A1-5E3D5DA8C451'),
(5, 'Bevis Marks', 'Guy', 'Ap #879-6383 Nec Street', 'A9175EA4-0170-E902-D61E-0076C83F9098', 'C81A661F-7B08-016C-B916-69CACF6F6211'),
(6, 'Sawyer Noble', 'Prescott', '148-447 Euismod Rd.', '274AB4C5-15EF-4AE9-33CA-DFF891124BB5', 'E441AF04-5AFD-FDFF-2002-394EC484EB1F'),
(7, 'Wayne Hoover', 'Jeremy', '3679 Aliquam Rd.', '2B4126EF-AE4F-D4F4-1BB5-2A1F13F82A21', '1DA40DC5-1E43-FBEC-A3FB-C540E02523F7'),
(8, 'Tad Barrett', 'Quemby', 'Ap #393-3225 Aliquam St.', '63B4CD75-19F6-0D56-6179-4FA280DB07A2', 'F0B7E9DC-62D6-1E81-7245-FBC25BBA9D67'),
(9, 'Mufutau Cannon', 'Edward', 'Ap #246-2497 Pede. St.', '7FFEFABF-01B2-2EC6-9DC8-68DD9D751168', '0FC3B612-3908-28E3-15F9-CFEF7FEDFEC9'),
(10, 'Luke Daugherty', 'Orli', '2863 Molestie Rd.', '7E66F1B6-F59F-A731-4580-3FCCF469B6BD', '6F86F604-6DB6-B24B-3F10-D1B89925B988'),
(11, 'Patrick Kelly', 'Erin', 'Ap #588-7206 Cras Avenue', '2A4ED52B-C7F2-AB3A-F438-76C68884A96E', '00714238-F53E-1E8D-7A6F-F039B6A63F46'),
(12, 'Xavier Kelly', 'Daria', '155-4383 Augue. Road', 'E1B0A28D-7ABC-2485-DB95-6E35D716F8D0', '437D0058-F20D-7F18-DEEC-4039FE076B62'),
(13, 'Jarrod Knox', 'Stone', '800-5239 Sit Ave', '524212C4-A81A-354F-BB93-1459B836B07E', '62219447-BFF5-D8BC-55F9-BFCD49BA6FC9'),
(14, 'Coby Rose', 'Merritt', 'Ap #492-4638 Fames Rd.', '551288D6-6687-BDCD-8776-A109FC3E55D5', 'C7892AFB-333B-0F6E-0217-6CA0D08ADF52'),
(15, 'Connor Fulton', 'Kelly', '3073 Tempus Av.', '49071F3E-21AA-F749-F6BE-860B26240627', '35F70D5F-45C2-CAB4-D195-A91AFE121374'),
(16, 'Finn Hawkins', 'Brady', '5110 Lorem, St.', '3348FA15-0148-6ABF-98F0-E35CFC4F7062', '43EEBA85-8BB8-3E74-C9FA-52DBA2EC7448'),
(17, 'Malachi Langley', 'Stephen', 'P.O. Box 808, 7778 Ipsum Ave', '67B55574-93C3-E4C0-9D20-4519B3205797', 'A90161D5-3948-DD5B-07DF-3FEFD5C26DD2'),
(18, 'Lester Parker', 'Martha', '604-8995 Scelerisque St.', 'E405DE9E-D8B5-3AFD-DFD6-5FC018C4479D', '5317F0DA-ED08-CBE7-1E5E-F590E922DD6C'),
(19, 'Ian Bruce', 'Holmes', 'Ap #274-2334 Tristique Street', 'F9338637-D1C7-D7C4-2E11-D42E4E5A1EE7', '32C7E5E4-7ED1-7E6F-9DD7-F44F1A57BF99'),
(20, 'Branden Battle', 'Colby', 'P.O. Box 599, 3315 At, Avenue', 'CF4FED4B-EA21-AECB-F810-712DF16DE97A', 'C217D459-4719-6E45-FBEA-7E8901A432C3'),
(21, 'Clarke Barber', 'Reuben', '6878 Scelerisque Street', '373800A8-F0E3-6CA1-69AE-9BBF302EF43A', 'D7711921-EB3D-2BE5-5921-10C04456C3C0'),
(22, 'Lance Parrish', 'Ignacia', 'P.O. Box 634, 2719 Tincidunt, Road', '37C9578E-9001-FE80-ECF6-2F39F1777255', '550E5E49-4047-32DB-F771-4F0A70453711'),
(23, 'Kasper Suarez', 'Isabelle', '4610 Metus. Avenue', '91763F41-657E-733F-D6D0-94FBC025565B', '1CA3D7D3-F03A-F40D-9F1A-3FC3CA093782'),
(24, 'Ferdinand Britt', 'Summer', 'Ap #988-4277 In Street', '779674D4-8E48-2D01-77F9-98C3F6FAC376', '1C558F98-B309-068F-41DA-1A0E17E91DB9'),
(25, 'James Whitley', 'Kevin', '7868 Aliquet Av.', '68C37A51-D9A3-18BB-B456-BA30AD1D6D7E', '5B221090-D81C-F7AF-7749-07815F722E86'),
(26, 'Griffin Russo', 'Stephanie', '3453 Dignissim Street', '74D55B10-FA6A-68F9-5FB6-98EAD88F1EA9', '25AF104C-3274-397C-B9EE-07DCA67CA402'),
(27, 'Elvis Vance', 'Louis', 'P.O. Box 205, 3984 Fames Road', 'FFEAD225-23C2-7ECA-8BE6-6334E3EC250D', '7264E386-9A57-ACB5-206D-CE189B1F2554'),
(28, 'Alexander Briggs', 'Anthony', 'Ap #236-7409 In, Street', 'D1F84508-E459-C3F7-9F4F-03E4383634AC', '1E3CBC37-FA15-1EA5-87BB-168C9B05998A'),
(29, 'Samson Wade', 'Scarlett', '4057 Luctus Avenue', 'A6D5F6B9-F1B4-E57D-C9CC-9D576F4A1F59', '87B3BBF1-0A45-76F9-635A-CE7C44638043'),
(30, 'John Thornton', 'Lenore', 'P.O. Box 515, 7549 Fusce Street', 'DFBC7C7C-208F-3D38-E720-662FC48134EB', '468FD501-5A3C-4338-9361-5CD5AB0DA8E7'),
(31, 'Simon Christensen', 'Claire', '239-1016 Non, Rd.', 'D57DC88B-EB57-D734-B974-413F5535C05C', '4E52FDA6-FD5B-DE10-E457-75A3A0B11650'),
(32, 'Nicholas Ford', 'Chester', '220-2214 Eget Av.', '05C1D753-A9F5-7608-C4A6-D36178C03AB6', 'CA860DFA-757B-C84A-76AA-C33B68748F02'),
(33, 'Channing Best', 'Boris', 'Ap #635-576 Vestibulum Ave', '8453A92B-7775-530B-04CD-BD6631043B84', '223500AE-D5DA-04D2-D945-426F198252C1'),
(34, 'Solomon Lee', 'Aurelia', 'Ap #275-7592 Auctor, Rd.', '28761FB1-7D80-C3C7-D12D-4BE963545A13', 'C22C6F4B-7FCF-D566-14C9-DAC2185213E1'),
(35, 'Colin Morrow', 'Zorita', 'P.O. Box 972, 254 Nullam Rd.', '8AC3CD6F-075D-DA7C-0419-CC03115D7418', 'BC619ABB-D686-8D5B-639B-FAB05C55A962'),
(36, 'Avram Waters', 'Alvin', '7369 Nibh. Av.', 'D919CA51-9DBA-B15E-8854-2B1B1F2DFAA9', '383D5249-741C-93B0-8BDC-BD9B31EB8F38'),
(37, 'Herman Beasley', 'Edan', 'Ap #366-1148 Sapien St.', '9B7B85DA-7763-6E86-6C38-C68A038A9645', '3AF2CD5C-0E4B-B73A-5CCF-C22FFD378F8B'),
(38, 'Ronan Kelley', 'Quemby', '9365 Sed Road', 'AFAE4A6F-C1F8-7079-255A-B1EC954EF6B0', 'F0A73852-99FB-8DBD-A0D8-A5D3C77D0739'),
(39, 'Dustin Bray', 'Emmanuel', '4907 Ac Road', 'B210D67F-A419-6096-E999-8D1D7C19EFB5', '93DBE2CC-1712-2B6D-3D6C-8266CFE788D8'),
(40, 'Leo Riggs', 'Myra', 'P.O. Box 904, 5642 Quisque Rd.', '416981BC-4446-84EC-0EC4-DF7403CDBE98', '0ABF6E38-FC0F-857D-9EC2-B402462C625B'),
(41, 'Quentin Whitehead', 'Simone', 'P.O. Box 972, 636 Blandit St.', '58523677-FA5E-D45C-639A-7F78817C87BB', '953CE550-3BD9-42CD-FA42-C490B5C6C5D8'),
(42, 'Tyler Roach', 'Dominic', '669-7153 Eleifend Avenue', 'C2A1BD8E-4683-921A-327D-7552F2147D1C', 'D5832AAC-B001-ECE1-E3E5-994AF7D21BF0'),
(43, 'Avram Higgins', 'Hammett', 'P.O. Box 459, 6598 Vulputate Av.', '622DF292-5C5B-FEE2-F200-6CE89786764F', '5307CB91-C54D-9CD8-3F60-83386C67099A'),
(44, 'Connor Chandler', 'Lester', '5346 Sed Av.', 'EB3B36E9-758E-DD80-67D0-1ED52032250D', '39934E5F-4CEE-6585-3542-4413E00E9E58'),
(45, 'Reuben Curry', 'Gil', '837-4702 Vivamus Rd.', '5C5DF7A6-9CD1-F294-C450-9951DDD3E2F5', 'D18ADC08-8583-0FB6-642B-9434EF912C40'),
(46, 'Paki Ware', 'Carla', '824-7498 Fringilla Avenue', '26370372-8440-6721-0A88-F2C313C7DD51', '442F9F23-E447-9601-59A3-021632B9A9A2'),
(47, 'Caldwell Gross', 'Tyler', '7916 Lorem Rd.', '39C39B7C-289C-3EBA-C395-CDBD0EA82F0D', 'A56601F6-4083-6048-A665-B6AAA2E010C1'),
(48, 'Buckminster Dawson', 'Orli', 'P.O. Box 813, 9566 Cras St.', '0FD37C99-CA4F-3D8E-398D-27E20A61F262', '37D3512B-28E5-4A46-F292-59A40E0C40D4'),
(49, 'Prescott Durham', 'Gemma', 'P.O. Box 967, 3247 Consectetuer Av.', '18548052-C39F-9014-0EBA-591DB5B00D74', 'D4F654CF-DB08-186B-0E2A-69FD6B174132'),
(50, 'Gareth Joseph', 'Kessie', 'Ap #235-5224 Ullamcorper. Avenue', '68F93FFE-82B6-B0AB-B516-5A6DAEDA74F9', 'CD96CA06-54DA-8542-63EB-55C883C01068'),
(51, 'Griffith Johnson', 'Sybil', '517-8750 Eget Av.', '9C0FB765-6A57-5B0F-0170-C40AD3DE1152', '1BC11F2A-9689-942F-D849-AF44AEE27CB7'),
(52, 'Keegan Evans', 'Zeph', 'P.O. Box 481, 1697 Elementum, Ave', 'DD36B489-BB29-EC66-9B8C-4A032547A5BD', '4D6956E1-8C24-A7F0-9CB8-0362AE04F095'),
(53, 'Moses Schneider', 'Pamela', 'P.O. Box 381, 2077 Magnis Rd.', '0E0F6F3F-86E0-21D0-C51B-844A24E4D1D1', '114B3FBE-832A-3EE7-C0EC-FD5FC29A7836'),
(54, 'John Walters', 'Russell', 'P.O. Box 460, 2333 Euismod Av.', 'CE272C21-B031-36B8-C853-046090DC885D', '083FBC2D-6492-AB14-D34B-54B25201C266'),
(55, 'Cade Stevens', 'Idona', 'P.O. Box 193, 2637 Eget Street', 'A8D57199-F284-E934-FFA2-AF3E9F6B90DC', 'B4E66729-2CC7-7A0E-05D5-1CE21648B209'),
(56, 'Allen Blair', 'Colby', 'P.O. Box 966, 9717 Consectetuer Av.', '7FA90E9A-7C21-989F-F624-F7A182885A13', '0536F957-08C2-AD57-4AF2-57D823E81482'),
(57, 'Trevor Travis', 'Aidan', '535-1474 Eu Av.', '159237CD-7115-D440-9F1D-FC488406836D', '8350C436-0177-F8D0-D4B3-87A997473831'),
(58, 'Elliott Bray', 'Quin', '8786 Accumsan Avenue', '5E248C03-4473-6BCA-DAF7-B301BDFE75AC', 'AECD8524-D8DF-9AE9-9443-79AF529E9F23'),
(59, 'Tate Douglas', 'Giacomo', '7976 Lacus Av.', '9A1D3FF4-0DC0-AD9F-7F73-0E4AD7A9ABFB', 'BEA8D0A2-211B-52F5-39AC-C393A79C7032'),
(60, 'Ryder Andrews', 'Carl', '8731 In St.', '02FDAD83-B9A1-5C11-8DA4-D33FE8F480BD', '7E686547-D053-6195-7EDE-238D044983DB'),
(61, 'Isaiah Trujillo', 'Zeus', '7623 Ipsum St.', '2719E534-A75F-6A11-3EC8-D86F2F560C58', '46BBFDD5-AA4A-FEE4-E2D6-87925438D5FC'),
(62, 'Ray Rocha', 'Dominic', '1715 Magna. Rd.', '035D64E1-BB31-71CE-B9B9-37ED8C46DC62', '5078B44D-0C1E-A107-A980-12EB9E79E12E'),
(63, 'Zane Edwards', 'Hu', '105-6907 Posuere St.', '1B8E8BA9-57A7-D358-D780-A915758FF44C', '8523D79B-8CB9-7B70-C41B-1DFAA55E769C'),
(64, 'Craig Stanley', 'Brock', 'Ap #346-6200 Sit St.', 'D144F805-6233-A3FF-EC70-2EBFDF6E8A14', 'D0F4A63D-079E-C594-25B3-98C9B70B1294'),
(65, 'Valentine Blackwell', 'Nelle', 'P.O. Box 400, 3161 Mollis Road', '4B3D2539-210B-00E5-A852-EC95A0F289ED', '792C59E0-3C6E-7843-1C9C-02E8DC5A39E8'),
(66, 'Carl Kemp', 'Piper', '558-2338 Faucibus Rd.', 'EA8C09F8-8586-AB49-BBFC-77719C06F390', 'EE57C7E2-0870-BBB0-C3CC-E7ED5794EF74'),
(67, 'Tarik Gilbert', 'Emily', 'P.O. Box 343, 9944 Eu St.', '81E6EEE2-D2D5-AED9-19EF-84E56DE44D99', '7D00CDD2-00F2-B84D-AC0F-C0912A05B5B3'),
(68, 'Boris Hendricks', 'Mariam', '170-7355 Blandit Road', 'FE9EC7CA-0B56-99C3-1A82-1E659E08653C', 'D5685CF8-858E-A1FB-6F7A-4A4828C8B5BA'),
(69, 'Aaron Cook', 'Aphrodite', 'P.O. Box 818, 5552 Praesent Rd.', '4A2D3868-F3FD-0F7C-BA58-C2839163DA8B', '7627679A-69F2-5896-5069-9DF48545C2C2'),
(70, 'Orlando Koch', 'Aristotle', '737-6396 Odio Street', '8EEAB83C-86D2-0C03-CE7F-B522D53DD359', '3F29CE18-CCC8-09D5-9D2A-37EDA33770AF'),
(71, 'Wang Pearson', 'Ciara', 'P.O. Box 572, 6529 Aliquet, Road', '2C32AFD2-0A3E-BBA0-CFB7-EB6A2FF34C00', '7449BD9D-BDCA-E05F-F0DD-8695305ED299'),
(72, 'Bruno Stein', 'Donovan', '165-2772 Nulla Rd.', '3A8299E0-CF62-E261-A23D-DF00BA56FCEB', 'C2D517F3-F49C-3E68-B700-5327954599CD'),
(73, 'Lewis Hopper', 'Mohammad', '5018 Elit Av.', '60933A67-CABF-E727-FA18-427A89C865A7', '343B7B25-73B8-0656-1F1C-88F94D688B09'),
(74, 'Jameson Richard', 'Lucas', 'Ap #966-6109 Lorem. Road', '0A5EC5C7-9958-254E-288C-A1D7C2B676F4', '3210DB36-EF97-5F62-6C50-E2D093ED0932'),
(75, 'Randall Avila', 'Armando', '8301 Ipsum Street', 'C1D03ACD-5360-BBAD-E60D-2E322BE5AB6A', 'B3D9233F-0A12-B14A-7AD6-6A8F84F8FC08'),
(76, 'Joseph Alexander', 'Omar', 'P.O. Box 931, 4125 Pede. Ave', 'ED6233FC-558D-A5AF-28EA-0AF7D4291FEE', 'FB200C36-140E-E868-84A0-0363A3DEA0EB'),
(77, 'Lev Pacheco', 'Quamar', '913-8099 Ultricies Ave', '907E3A48-A48A-ADDC-5F39-891596FB65DD', 'B549ABF7-2DB5-A7E7-2F83-77B7B1829928'),
(78, 'Bernard Cruz', 'Ahmed', 'P.O. Box 464, 8221 Et Avenue', '5181A304-15C0-61D7-4E3D-ED125D89F17B', 'FBAD1DA6-0625-DA52-B1DD-3333B7FA4625'),
(79, 'Valentine Rivers', 'Merritt', '943-3853 Malesuada Ave', '51C1F5C2-5819-8139-AC02-8274A3019C59', '981BC052-A91D-35AA-43DE-3643C8FCE70E'),
(80, 'Norman Nelson', 'Felix', '846 At, Av.', '642C5905-8448-860B-F7E7-705793ACAD45', '2AF98578-C5C8-FF5A-45A7-027BF79715B8'),
(81, 'Addison Puckett', 'Leila', 'P.O. Box 426, 6200 Sed Ave', '44762E5E-282A-89CE-D248-E1657C69B6E7', '5459216C-ED9C-5107-5C00-8C82CCB07A32'),
(82, 'Slade Dyer', 'Ryder', 'P.O. Box 995, 2073 Felis St.', '025BE4CA-BC29-D4ED-18C2-326D41F21F95', '8AD03014-A95C-7833-96A4-096DD9E0F645'),
(83, 'Armand Campbell', 'Amery', 'P.O. Box 784, 9521 Ornare. Ave', 'E10C5EA5-D908-B96B-31A9-561FB36D2B51', '0C3E9A6B-5780-D3E4-66D5-D3A6F9609002'),
(84, 'Bradley Sexton', 'Yael', 'P.O. Box 355, 1855 Ante Road', 'C0CAC9D7-6D5F-C547-02CE-B093B76ACAB3', 'B08E5A17-5310-F02C-37C3-A246AD72B37F'),
(85, 'Clark Wynn', 'Ivory', '629-5603 Dolor Rd.', '632E868A-D93F-6492-EB3C-1020B65BFE5F', 'CBCE2BE6-5DD8-317E-35DE-135E23894149'),
(86, 'Joel Mercer', 'Donna', '604-2982 Quisque St.', '7B404E67-8371-E76E-3AA6-F62BAD4FA817', '78FAF680-CA0A-52CA-C466-D58966680808'),
(87, 'Alec Rutledge', 'Chase', '235-2413 Mauris. Road', '8798636D-B046-8A29-093A-6620EE9A4D1E', 'DB676222-4CE9-EE23-FFF6-7609ECFEB1E5'),
(88, 'Benedict Ferguson', 'Tarik', '5856 Torquent Av.', '17797000-BA77-4DC2-B471-97A25E861560', '02F25C26-2952-BFA4-192C-77CBF6871DD2'),
(89, 'Abdul Lowery', 'Glenna', '3780 Sed Av.', '030BF982-0BCD-2E1D-73F5-DB34C9CC0860', '6322703D-AC69-9517-DCEA-AFC69680DFA2'),
(90, 'Harrison Patton', 'Molly', 'P.O. Box 244, 4960 Nulla Rd.', '8D12B87F-28D0-B5A9-1D84-49A106B4A1CC', '6BE7DD2A-9E26-008D-4A25-5E44471EAA24'),
(91, 'Hayes Mccarty', 'Paloma', '8190 Pede Av.', 'F2A3BD32-FEF8-4E16-02A5-5D7B56A85D5F', '2F0FF1F5-372D-5F1F-6F9C-B697D3E4EAA9'),
(92, 'Tobias Roberson', 'Wesley', 'P.O. Box 600, 4459 Tempor Street', '2A214CE5-B3C9-826C-E6B2-4A24BCF64E31', '09EAE4FE-044F-1B72-E547-3036E742B717'),
(93, 'Josiah Elliott', 'Ria', '410-6894 Mi. Street', 'C1950029-7BDE-C0FD-5D1E-4E23C954FF68', '54D5CA83-AC4D-1906-9C72-7BC0A6193864'),
(94, 'Buckminster Carlson', 'Brian', 'P.O. Box 394, 3297 Suspendisse Av.', '49B8F3E2-78BB-D3EF-6BA3-FA67846EFFF2', '512DF457-2257-C181-DB66-FFAECA5BAA63'),
(95, 'Macaulay Holcomb', 'Tyler', '934-6290 Gravida St.', 'DDD882EB-447A-64BD-68C4-2C0DC712E9C5', '06F19485-31C7-01EF-38C0-A0CCEF5CA698'),
(96, 'Ciaran Moss', 'Martina', 'Ap #423-1252 Amet Av.', '4E26F18E-E2C8-2C48-E854-CBADC425A3A8', '2E813601-5575-29F6-5E65-DF205939FA9B'),
(97, 'Herman Fowler', 'Dara', '188-6041 Parturient Avenue', '5865B431-10C5-5D49-5D3B-D6AF13D23F2B', '3A8C1B26-6561-6248-58FF-90FE74E9F99D'),
(98, 'Yardley Stone', 'Scott', '5555 Nisi Av.', '36961F98-D8E7-31FF-5833-80D90CB6CFC0', 'EFDC8305-494D-0739-C920-0CD99783A5EC'),
(99, 'Flynn Burnett', 'Giacomo', 'Ap #957-7806 Nunc St.', 'DB380E1B-3AF8-D6E9-7648-1347A0A9C328', '84BB979F-D35F-5756-C555-DAA38CE89B2C'),
(100, 'Blaze Mcgee', 'Xerxes', '9849 Sem Rd.', '134DB121-D095-BCEE-9D9E-00A79CD962A7', 'E50771DE-F10C-63EB-7B1A-CED3BD9B4762'),
(102, 'Cahyono NA', 'cahyono', 'Jl. yang ada gangnya', '$2b$10$wVJXlwt4XSBO3bGaZl8w.e/dugL5DCd9x0/pIOK6si4tpB7h0NEtC', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQ2FoeW9ubyBOQSIsImFsYW1ldCI6IkpsLiB5YW5nIGFkYSBnYW5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countrys`
--
ALTER TABLE `countrys`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countrys`
--
ALTER TABLE `countrys`
  MODIFY `country_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

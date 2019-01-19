-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2018 at 08:40 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-05-13 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `FromDate` varchar(100) NOT NULL,
  `ToDate` varchar(100) NOT NULL,
  `Comment` mediumtext NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `mancount` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`, `mancount`) VALUES
(12, 10, 'sarita@gmail.com', '2018-11-06', '2018-11-27', 'This is me boooking lauda lahsun', '2018-11-18 07:01:24', 0, NULL, NULL, ''),
(13, 9, 'anish78@gmail.com', '2018-11-22', '2018-11-14', 'This is me booking soimething man', '2018-11-18 07:19:05', 1, NULL, '2018-11-18 07:19:53', ''),
(14, 9, 'anish78@gmail.com', '2018-11-22', '2018-11-14', 'This is me booking soimething man', '2018-11-18 09:24:31', 0, NULL, NULL, ''),
(15, 1, 'abc@gmail.com', '2018-11-20', '2018-11-19', 'This is me booking soimething man', '2018-11-27 07:18:29', 0, NULL, NULL, '0'),
(16, 1, 'abc@gmail.com', '2018-11-21', '2018-11-29', 'testing else', '2018-11-27 07:19:07', 0, NULL, NULL, '0'),
(17, 1, 'abc@gmail.com', '2018-11-22', '2018-11-29', 'tezst2', '2018-11-27 07:22:42', 0, NULL, NULL, '7'),
(18, 8, 'abc@gmail.com', '2018-11-29', '2018-11-29', 'test3', '2018-11-27 07:33:50', 0, NULL, NULL, '6');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `EmailId` varchar(100) NOT NULL,
  `MobileNumber` char(10) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(5, 'Anish', 'ansari@gmail.com', '9999999999', 'dsfs', 'sdfsgsds', '2018-11-18 06:56:28', NULL),
(6, 'Dipu Kumar Chaudhary', 'Dipu@gmail.com', '8998989898', 'Lauda lahsun', '`fnsdkjfnskfnskjfnskjdfskjfs', '2018-11-18 06:58:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Issue` varchar(100) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `AdminremarkDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>'),
(2, 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'aboutus', '										<div class=\"col-md-7 col-sm-7\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 713.406px; color: rgb(47, 47, 47); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 100; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(249, 249, 249); text-decoration-style: initial; text-decoration-color: initial;\"><p style=\"box-sizing: border-box; margin: 20px 0px; font-size: 16px; font-weight: normal; color: rgb(47, 47, 47);\">Tourism Management System is a national tourism organization of Nepal established in 1998 by an Act of Parliament in the form of partnership between the Government of Nepal and private sector tourism industry &nbsp;to develop and market Nepal as an attractive tourist destination. The Board provides platform for vision-drawn leadership for Nepal’s tourism sector by integrating Government commitment with the dynamism of private sector.</p><p style=\"box-sizing: border-box; margin: 20px 0px; font-size: 16px; font-weight: normal; color: rgb(47, 47, 47);\">TMS is promoting Nepal in the domestic and international market and is working toward positioning the image of the country. It also aims to regulate product development activities. Fund for TMS is collected in the form of Tourist Service Fee from departing foreign passengers at the Tribhuvan International Airport, Kathmandu, thus keeping it financially independent. The Board chaired by the Secretary at the Ministry of Tourism and Civil Aviation consists of 11 Board Members with five Government representatives, five private sector representatives and the Chief Executive Officer.</p><p style=\"box-sizing: border-box; margin: 20px 0px; font-size: 16px; font-weight: normal; color: rgb(47, 47, 47);\">“Naturally Nepal, Once is not Enough” is the tourism brand of Nepal.”Naturally Nepal” is a simple expression that repackages the Nepal brand in a positive light. “Once is not Enough” not only accurately captures the tourists\' emotions at the airport’s departure gate but also serves as a decision tool that enables the Nepali tourism industry individually and collectively to focus both on consumer retention and acquisition.</p></div><br class=\"Apple-interchange-newline\">\r\n										'),
(11, 'contact', '<h3 style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(47, 47, 47); margin: 0px; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"box-sizing: border-box; font-weight: 700;\">Tourism Managment System<br></strong></h3><h4 style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(47, 47, 47); margin-top: 10px; margin-bottom: 10px; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Tourist Service Center</h4><h5 style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(47, 47, 47); margin-top: 10px; margin-bottom: 10px; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Address: Bhrikutimandap, Kathmandu<br style=\"box-sizing: border-box;\">P.O. Box: 11018<br style=\"box-sizing: border-box;\">Tel: +977 1 4256909<br style=\"box-sizing: border-box;\">Fax: +977 1 4256910<br style=\"box-sizing: border-box;\">E-mail: info@ntb.org.np</h5>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) NOT NULL,
  `PackageType` varchar(150) NOT NULL,
  `PackageLocation` varchar(100) NOT NULL,
  `PackagePrice` int(11) NOT NULL,
  `PackageFetures` varchar(255) NOT NULL,
  `PackageDetails` mediumtext NOT NULL,
  `PackageImage` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Gokyo Valley', 'General', 'Khumbu region Nepal', 100, 'Air Conditioning ,Balcony / Terrace,Cable / Satellite / Pay TV available,Ceiling Fan,Hairdryer', 'Gokyo valley lies towards the west of the Khumbu region. In this serene valley, there are abundant pastures for yaks to graze during summer and the pristine turquoise lakes are breathtaking. Gokyo can be visited after trekking up to Everest Base Camp by adding another five days to the itinerary.\r\n\r\nIf Gokyo is the main destination, then the trek goes up the Everest trail only as far as the teahouses at Kenjoma (where the trail from Khumjung joins the main trail). From this point, the trail leads up towards Mong La pass before dropping steeply back down to the banks of the Dudh Koshi River. The trail then leads past rhododendron and oak forests and waterfalls which are often frozen. A couple of hours on this enchanting trail and Dole is reached, where you spend the night in a teahouse.', 'gokyo_sbc_trekking-2.jpg', '2017-05-13 14:23:44', '2018-11-18 06:24:34'),
(8, 'LUMBINI, NEPAL - BIRTHPLACE OF BUDDHA', 'General', 'Lumbini Nepal', 200, 'Bus facility availlable', 'One of the world\'s most important spiritual sites is home to the historic birthplace of the Buddha. Today you can visit over 25 international Buddhist monasteries, study Buddhism, meditation and visit Buddha\'s birthplace itself within the sacred Mayadevi Gardens!\r\nMayadevi Temple is one of the important sites in the Lumbini Garden with many historians and archaeologists referring to it as the place of birth of Lord Buddha. Inscriptions on the Ashoka Pillar also refers the spot as his birthplace. It is said that here the newly born Prince took his first seven steps and gave a peace message to humanity.\r\n\r\nThis happened in the beautiful Sal grove, which is now the focal point of the Lumbini Garden. Mayadevi, the Queen of Shakya King Suddhodhana of Kapilvastu, while passing through the Lumbini Garden, on the day of  Baishakha Purnima (full moon day of May in 623 BC) took a bath in the Pushkarini (the Sacred Pond) and soon after she took support of a tree branch, and gave birth to the Prince Siddhartha, who became the Buddha. ', 'lumbini3.jpg', '2018-11-18 06:30:43', '0000-00-00 00:00:00'),
(9, 'Kumari ', 'Family', 'Kathmandu Nepal', 100, 'Pic up /Drop off ', ' Living Goddess Kumari\r\n\r\nWant to experience divinity in real life? Welcome to Nepal, the land of living gods and goddesses. Kumari is derived from the Sanskrit word Kaumarya, which means princess. Learn the historical significance of worshiping a girl as a goddess; be a part of the tradition that dates back to the 17th century where two of the world’s oldest religions Hinduism and Buddhism interlink.\r\n\r\nAs the selection process of a Kumari resembles that of Tibetan Lamas, like the Panchen Lama or the Dalai Lama. Visit the Kumari Ghar, situated at Basantapur, where the goddess resides and to get a glimpse of the goddess.\r\n\r\nIf you are visiting around late August or early September, then be sure to be a part of the biggest and most vibrant festival in Nepal called Indra Jatra, where the Kumari, is paraded across the city, in her golden palanquin. It is quite a sight to behold, as hundreds of  masked men and devotees dance to traditional Newari music and pull on the chariots of the Lord Indra and Kumari.', 'kumari.jpg', '2018-11-18 06:32:59', '0000-00-00 00:00:00'),
(10, 'RARA', 'Family', 'Pokhara Nepal', 200, 'FREE PICK UP', 'RARA NATIONAL PARK\r\nSojourn to the Rara region through thick pine and juniper forests and camp next to the sparkling Rara Lake at 2,990 m, walled by green hills on all sides. Boat in the clear waters, hike to nearby hills for nearer views of the mountains and lake, meet the charming local people, or just take a walk around the lake watching out for a wild flower or a rare bird on the way.\r\n\r\nThe park is surrounded by alpine coniferous vegetation and offers a representative sample of the region\'s flora and fauna. More than 500 different kinds of flowers, 20 different species of mammals and 214 species of birds can be observed at Rara National Park. As for water life in the lake, the snow trout is the fish variety recorded so far.\r\n\r\nThe rich vegetation of the park is home to the endangered red panda, musk deer, Himalayan black bear, leopard, jackal, Himalayan tahr, yellow-throated martin, wild dog, wild boar, common langur, rhesus macaque and common otter. During winter the park abounds in bird varieties like coots, great-crested grebe, black-necked grebe, red crested pochard, mallard, common teal, merganser and gulls. Migrant water fowls and gallinaceous birds can also be seen during certain seasons.', 'rara-iw-adventure.jpg', '2018-11-18 06:36:07', '0000-00-00 00:00:00'),
(11, 'BOUDHANATH', 'Family', 'Kathamdnu', 50, 'Bus facility availlable', 'BOUDHANATH STUPA\r\nTake an early morning or evening stroll around the inspiring white dome buzzing with energy; observe the devout passersby, light a butter lamp and send a prayer where you wish, look around for souvenirs, or observe all from a nearby rooftop restaurant, coffee in hand.\r\n\r\nSituated 8 km to the east of downtown Kathmandu, Boudhanath,  is one of the most imposing landmarks in Kathmandu, visible as soon as you land at the Tribhuvan International Airport. It is the largest stupa in the Kathmandu Valley.\r\n\r\nThe 36-meter-high stupa of Boudhanath is one of the largest stupas in South Asia. With countless monasteries surrounding it, Boudhanath is the center of Tibetan Buddhism in Nepal.\r\n\r\nBuilt in the shape of a mandala designed to replicate the Gyangtse of Tibet, the stupa was renovated by Licchhavi rulers in the 8th century. The location of the stupa is interesting as it once lay on the ancient trade route to Tibet and it was here that Tibetan merchants rested and offered prayers for centuries.\r\n\r\nOn each side are a pair of the all-seeing-eyes of the Buddha symbolizing awareness. The canopy has 13 stages. At ground level there is a brick wall with 147 niches and 108 images of the meditational Buddha inset behind copper prayer wheels.', 'bauddha-sb-lt.jpg', '2018-11-18 06:38:35', '0000-00-00 00:00:00'),
(12, 'LANGTANG', 'Family', ' Langtang', 800, 'FREE PICCK UP', 'Trek to Langtang if you want a relatively short itinerary with all the excitement of the Himalayas. Here, th trail is less crowded and the trek more rewarding. \r\n\r\nThis is one of the most accessible trekking regions near the Kathmandu Valley with short day hikes or week-long ventures into the lake district. An ideal region if you are short on time but still want to trek the Himalayas and experience the wonderful cultures of the native Tamangs. \r\n\r\nThe region was affected by the earthquake in April 2015. With reconstruction and renovation efforts underway, the area has reopened for trekking, and the local people have also welcomed tourists.\r\n\r\nLangtang has over 70 glaciers of varying sizes, the Langtang and Ganesh Himal mountain ranges, and high-altitude lakes including Gosainkunda, Parvatikunda, Bhairavkunda, and Dudhkunda.', 'langtang6.jpg', '2018-11-18 06:41:14', '0000-00-00 00:00:00'),
(13, 'JOMSOM & MUKTINATH', 'General', 'JOmsom', 1000, 'Bus facility availlable', 'Jomsom is a great place to start trekkking. The diverse landscapes and cultures to be found along the trekking routes give marvelous insight into the way of life of rural Nepali people.\r\n\r\nA highlight is trekking through the gorge carved by the Kali Gandaki River, which originates in the Tibetan plateau to eventually flow into the Ganges in India.\r\n\r\nNot to far from Johnson you find Muktinath, the famous pilgrimage site for Buddhists and Hindus. To Hindus, Muktinath is a sacred place of salvation. They believe that bathing in the waters here guarantees salvation after death. \r\n\r\nThe Hindu god, Brahma, is said to have lit the eternal flames that burn at Muktinath.\r\n\r\nTo Buddhists, Muktinath is a place where the great sage guru Rinpoche (Padmasambhava) came to meditate.\r\n\r\nThe area is a perfect place to find fossilized ammonites, known locally as Shaligram, which are found all along the upper reaches of Kali Gandaki.\r\n\r\nThis part of Nepal is inhabited by Gurungs and Magars in the lower regions of the Kali Gandaki, Thakalis around Jomsom and people with obvious Tibetan roots, the Lopa, around Muktinath and up to Mustang.', 'mustang-wvp-adventure.jpg', '2018-11-18 06:43:12', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `MobileNumber` char(10) NOT NULL,
  `EmailId` varchar(70) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(12, 'Anish Ansari', '9066067053', 'anish@gmail.com', '0293793d488328c71d67648e52e92f8b', '2018-11-18 07:04:05', '0000-00-00 00:00:00'),
(13, 'Dipu', '9009090909', 'anish78@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2018-11-18 07:17:55', '0000-00-00 00:00:00'),
(14, 'Anish Ansari', '9066067053', 'abc@gmail.com', '7c2987570a26e0e29d5c649508bd98d3', '2018-11-27 06:41:17', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

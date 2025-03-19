-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2024 at 07:30 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realestatephp`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `content`, `image`) VALUES
(10, 'About Us', '<p>Bienvenue sur Kri House !</p>\r\n<p>Nous sommes une plateforme en ligne sp&eacute;cialis&eacute;e dans la location de maisons pour des s&eacute;jours temporaires. Que vous recherchiez une escapade de vacances relaxante, un voyage d\'affaires pratique ou un h&eacute;bergement pour un &eacute;v&eacute;nement sp&eacute;cial, nous avons ce qu\'il vous faut.</p>\r\n<p>Chez Kri House, nous nous effor&ccedil;ons de rendre votre exp&eacute;rience de location aussi agr&eacute;able et sans tracas que possible. Avec une large s&eacute;lection de propri&eacute;t&eacute;s dans diff&eacute;rentes destinations, vous &ecirc;tes s&ucirc;r de trouver la maison parfaite pour r&eacute;pondre &agrave; vos besoins.</p>\r\n<p>Notre &eacute;quipe est compos&eacute;e de professionnels d&eacute;vou&eacute;s qui travaillent sans rel&acirc;che pour assurer la qualit&eacute; de nos services. De la recherche et la s&eacute;lection minutieuse des propri&eacute;t&eacute;s &agrave; l\'assistance client&egrave;le personnalis&eacute;e, nous sommes l&agrave; pour vous accompagner &agrave; chaque &eacute;tape de votre voyage.</p>\r\n<p>Chez Kri House, nous croyons en la transparence, la fiabilit&eacute; et l\'excellence du service. Notre objectif est de vous offrir une exp&eacute;rience de location m&eacute;morable et sans souci, afin que vous puissiez profiter pleinement de votre s&eacute;jour.</p>\r\n<p>N\'h&eacute;sitez pas &agrave; explorer notre site pour d&eacute;couvrir nos offres de locations de maisons et &agrave; nous contacter si vous avez des questions ou avez besoin d\'aide. Nous sommes l&agrave; pour vous aider &agrave; trouver la maison de vos r&ecirc;ves pour votre prochain s&eacute;jour.</p>\r\n<p>Merci de choisir Kri House pour vos besoins de location de maisons. Nous avons h&acirc;te de vous accueillir bient&ocirc;t !</p>\r\n<p>L\'&eacute;quipe de Kri House</p>', 'marrakech-airbnb-4-riad-medina-2-scaled.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(10) NOT NULL,
  `auser` varchar(50) NOT NULL,
  `aemail` varchar(50) NOT NULL,
  `apass` varchar(50) NOT NULL,
  `adob` date NOT NULL,
  `aphone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `auser`, `aemail`, `apass`, `adob`, `aphone`) VALUES
(9, 'admin', 'admin@gmail.com', '2ae61185c5c2a15bf96420b90a927ae5ccff152e', '1994-12-06', '1470002569');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `cid` int(50) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `sid` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`cid`, `cname`, `sid`) VALUES
(10, 'Marrakech', 2),
(20, 'Rabat', 0),
(22, 'Tanger', 0),
(23, 'Casa', 0),
(24, 'Essaouira', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `cid` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`cid`, `name`, `email`, `phone`, `subject`, `message`) VALUES
(8, 'jhon', 'jhon33@gmail.com', '0648392032', 'test', 'test contact');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `fid` int(50) NOT NULL,
  `uid` int(50) NOT NULL,
  `fdescription` varchar(300) NOT NULL,
  `status` int(1) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fid`, `uid`, `fdescription`, `status`, `date`) VALUES
(11, 40, 'Belle maison, j\'adore l\'architecture', 1, '2024-04-13 01:39:19'),
(12, 38, 'Beau et calme riad, et une équipe accueillante et réactive. Je n\'aurais pas pu demander un meilleur hébergement pour nos 2 nuits à Marrakech.', 1, '2024-04-13 01:42:18'),
(13, 39, '\"C\'est une maison tellement chaleureuse, j\'adore l\'ambiance.', 1, '2024-04-13 01:44:47'),
(14, 42, 'J\'admire vraiment l\'attention portée aux détails dans cette maison.', 1, '2024-04-13 01:57:04');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `pid` int(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `pcontent` longtext NOT NULL,
  `type` varchar(100) NOT NULL,
  `bhk` varchar(50) NOT NULL,
  `stype` varchar(100) NOT NULL,
  `bedroom` int(50) NOT NULL,
  `bathroom` int(50) NOT NULL,
  `balcony` int(50) NOT NULL,
  `kitchen` int(50) NOT NULL,
  `hall` int(50) NOT NULL,
  `floor` varchar(50) NOT NULL,
  `size` int(50) NOT NULL,
  `price` int(50) NOT NULL,
  `location` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `feature` longtext NOT NULL,
  `pimage` varchar(300) NOT NULL,
  `pimage1` varchar(300) NOT NULL,
  `pimage2` varchar(300) NOT NULL,
  `pimage3` varchar(300) NOT NULL,
  `pimage4` varchar(300) NOT NULL,
  `uid` int(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `mapimage` varchar(300) NOT NULL,
  `topmapimage` varchar(300) NOT NULL,
  `groundmapimage` varchar(300) NOT NULL,
  `totalfloor` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `isFeatured` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`pid`, `title`, `pcontent`, `type`, `bhk`, `stype`, `bedroom`, `bathroom`, `balcony`, `kitchen`, `hall`, `floor`, `size`, `price`, `location`, `city`, `feature`, `pimage`, `pimage1`, `pimage2`, `pimage3`, `pimage4`, `uid`, `status`, `mapimage`, `topmapimage`, `groundmapimage`, `totalfloor`, `date`, `isFeatured`) VALUES
(36, 'maison de ville - Marrakech', '<p>La chambre Smata peut avoir un lit double ou 2 lits s&eacute;par&eacute;s avec un coin salon int&eacute;rieur et ext&eacute;rieur. Parfait pour un couple ou des amis voyageant ensemble.<br />La chambre dispose de la climatisation/du chauffage et d\'une salle de bain privative.<br />Les chambres du Riad Dar El Souk disposent d\'un d&eacute;cor typiquement marocain.<br />Le m&eacute;nage quotidien de la chambre et le petit d&eacute;jeuner sont compris.<br />Une connexion Wi-Fi gratuite est disponible.<br />Cet authentique riad dispose d\'une terrasse sur le toit,<br />de chaises longues,<br />d\'un coin salon,<br />d\'un coin tente Caidal,<br />d\'un coin salon marocain et d\'un patio carrel&eacute; avec une piscine.<br />La plupart des pi&egrave;ces ont un coin salon &agrave; l\'ext&eacute;rieur de la pi&egrave;ce.<br />Les plats marocains peuvent &ecirc;tre servis par la chemin&eacute;e dans la salle &agrave; manger en hiver ou sur la terrasse sur le toit ou le patio en &eacute;t&eacute; sur demande.</p>', 'Maison', '3 BHK', 'Louer', 5, 3, 3, 2, 4, '2nd Etage', 700, 1800, '57 Rue Sali, Marrakesh,Morocco', 'Marrakech', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">&Acirc;ge de la propri&eacute;t&eacute; :11</span> Annees</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">piscine : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">SALLE DE SPORT : </span>Oui</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartement</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">S&eacute;curit&eacute; : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Capacit&eacute; de restauration : 6</span> Personnes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">&Eacute;glise/Temple : </span>Oui</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3&egrave;me partie :</span>Non</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Ascenseur : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Approvisionnement en eau : </span>Eau souterraine / R&eacute;servoir</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'ex1.jpeg', 'ex2.jpeg', 'ex3.jpeg', 'ex4.jpeg', 'ex5.jpeg', 38, 'Disponible', 'floorplan_sample.jpg', 'ex6.jpeg', 'off1.jpeg', '3 Etage', '2024-04-11 17:08:03', 1),
(37, 'Bienvenue au Riad MAKILA', '<p>Logement climatis&eacute; enti&egrave;rement r&eacute;nov&eacute; pouvant accueillir jusqu\'&agrave; 4 personnes dans un style Boh&egrave;me Chic.<br />Villa MyMa est une villa 100% privative lou&eacute;e en exclusivit&eacute;, comprenant s&eacute;jour, salle &agrave; manger, cuisine &eacute;quip&eacute;e, 2 chambres avec salle de douche et WC.<br />Possibilit&eacute; 2 chambres suppl&eacute;mentaires pour vos voyages entre amis, famille ou famille nombreuse.<br />Piscine sans vis-&agrave;-vis (non chauff&eacute;e) et jardin clos.<br />Prise en charge a&eacute;roport incluse (arriv&eacute;e).<br />Gardien<br />Le logement<br />Entrez par le jardin chatoyant et &eacute;clair&eacute; de mille feux &agrave; la tomb&eacute;e de la nuit.<br />Vous appr&eacute;cierez prendre votre petit d&eacute;jeuner ou vos repas sous la tonnelle entour&eacute;s de bananiers et de multiples essences d&rsquo;arbres, de fleurs et de plantes d&rsquo;ici et d&rsquo;ailleurs.<br />Vous savourerez les moments de d&eacute;tente, un livre &agrave; la main, &agrave; l&rsquo;abris des oliviers, des figuiers et des grenadiers.<br />Vous disposez d\'une vaste pi&egrave;ce de vie lumineuse avec chemin&eacute;e ouvrant sur le jardin et disposant d&rsquo;un espace salon avec TV et d&rsquo;un coin repas.<br />Vous profitez d&rsquo;une cuisine fonctionnelle pour pr&eacute;parer vos repas. De l\'eau fraiche est &agrave; disposition &agrave; votre arriv&eacute;e.<br />Choisissez votre espace nuit parmi les 2 chambres disponibles :<br />- 1 chambres parentales avec lit Queen size (160 cm).<br />- 1 chambre enfants avec lits s&eacute;par&eacute;s (2 x 90 cm)<br />Possibilit&eacute; 2 chambres suppl&eacute;mentaires sur demande<br />- 1 chambres parentales avec lit Queen size (160 cm).<br />- 1 chambre avec lit double (140 cm)<br />Chaque chambre dispose d\'une salle de douche avec toilette privative et d\'une climatisation individuelle.</p>\r\n<p>Patio :<br />Le patio vous enchantera gr&acirc;ce &agrave; son style &laquo; Beldi &raquo; et ses murs en Tadelakt traditionnel enti&egrave;rement refaits &agrave; neuf.<br />Vous pourrez profiter de bons moments, install&eacute;s autour de la piscine (5,50 x 3 m), ou pour boire un verre &agrave; l&rsquo;abri du soleil dans de vastes canap&eacute;s.<br />Vous disposez &eacute;galement d&rsquo;un coin repas sous une pergola r&eacute;alis&eacute;e dans un style local avec des mat&eacute;riaux r&eacute;employ&eacute;s.<br />Un acc&egrave;s direct au jardin permettra &agrave; vos enfants de laisser court &agrave; leur imagination en toute s&eacute;curit&eacute; sous votre regard attentif.</p>\r\n<p>Buanderie avec machine &agrave; laver le linge<br />Enti&egrave;re clos et sans vis-&agrave;-vis.<br />Acc&egrave;s par une piste (goudronn&eacute;e sur une bonne partie)<br />Acc&egrave;s des voyageurs<br />La piscine (non chauff&eacute;e) et le jardin sont 100% privatifs et sans aucun vis-&agrave;-vis.<br />Autres remarques<br />Vous souhaitez profiter de notre cuisini&egrave;re durant votre s&eacute;jour. Elle vous fera voyager gr&acirc;ce &agrave; une cuisine marocaine riche en saveur et en &eacute;motion (25 &euro; par jour hors courses).</p>', 'Maison', '3 BHK', 'Louer', 3, 3, 3, 1, 5, '2nd Etage', 800, 1500, '199 Rue Adaouia, Marrakesh,Morocco', 'Marrakech', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">&Acirc;ge de la propri&eacute;t&eacute; : </span>10 Annees</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">piscine : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">SALLE DE SPORT : </span>Oui</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartement</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">S&eacute;curit&eacute; : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Capacit&eacute; de restauration : </span>10 Personnes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">&Eacute;glise/Temple : </span>Oui</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3&egrave;me partie :</span>Non</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Ascenseur : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Approvisionnement en eau : </span>Eau souterraine / R&eacute;servoir</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'Riad en Exclusivité - Piscine chauffée - Medina.jpeg', 'Riad en Exclusivité - Piscine chauffée - Medina2.jpeg', 'Riad en Exclusivité - Piscine chauffée - Medina3.jpeg', 'Riad en Exclusivité - Piscine chauffée - Medina4.jpeg', 'Riad en Exclusivité - Piscine chauffée - Medina5.jpeg', 38, 'Disponible', 'floorplan_sample.jpg', 'off2.jpeg', 'off2.jpeg', '2 Etage', '2024-04-11 17:46:48', 0),
(38, ' villa - Essaouira, Maroc', '<p>Villa au style moderne et traditionnel. Elle b&eacute;n&eacute;ficie de deux chambres et une suite, chacune avec sa salle de bain privative, un salon avec chemin&eacute;e et un grand jardin donnant sur la piscine priv&eacute;e. Profitez de moments de d&eacute;tente dans le calme absolu.</p>\r\n<p>Vous disposez sur 140 m2 de trois chambres bien ensoleill&eacute;es avec salles de bains privatives . au rez de chauss&eacute;e :<br />-Une chambre de deux lits simples .<br />-Une chambre d&rsquo;invit&eacute;s avec un lit double<br />- Un beau s&eacute;jour avec chemin&eacute;e<br />-une cuisine bien &eacute;quip&eacute;e et fournie.<br />-Une salle &agrave; manger .<br />-Une WC pour invit&eacute;s.<br />Au premier &eacute;tage :<br />-une suite parentale avec salle de bains<br />-une salle de s&eacute;jour d&eacute;di&eacute; au travail<br />-Une belle et splendide terrasse donnant sur piscine</p>', 'Maison', '2 BHK', 'Louer', 4, 4, 2, 1, 2, '2nd Etage', 230, 1200, 'Avenue Moulay Ismail, Essaouira,Morocco', 'Essouira', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">&Acirc;ge de la propri&eacute;t&eacute; : 8</span> Annees</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">piscine : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">SALLE DE SPORT : </span>Oui</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartement</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">S&eacute;curit&eacute; : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Capacit&eacute; de restauration : 6</span> Personnes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">&Eacute;glise/Temple : </span>Oui</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3&egrave;me partie :</span>Non</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Ascenseur : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Approvisionnement en eau : </span>Eau souterraine / R&eacute;servoir</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'sec6.jpg', 'sec5.jpg', 'sec4.jpg', 'sec2.jpg', 'sec1.jpg', 39, 'Disponible', 'floorplan_sample.jpg', 'off1.jpg', 'off2.jpg', '2 Etage', '2024-04-11 18:14:38', 0),
(39, 'Luxe à Anfa Place', '<p>Offrant une vue sur la piscine, Anfa Place, Luxury Apartment just renovated, Ocean View propose un h&eacute;bergement avec des installations de sports nautiques, une piscine ext&eacute;rieure et un bain en plein air, &agrave; environ 6,7 km de la mosqu&eacute;e Hassan II. Cette propri&eacute;t&eacute; en bord de mer offre un acc&egrave;s &agrave; un balcon et un parking priv&eacute; gratuit. Le logement propose une r&eacute;ception ouverte 24h/24, un ascenseur et un espace de stockage des bagages pour les clients.</p>\r\n<p>L\'appartement spacieux avec une terrasse et vue sur la mer dispose de 1 chambre, d\'un salon, d\'une t&eacute;l&eacute;vision &agrave; &eacute;cran plat, d\'une cuisine &eacute;quip&eacute;e d\'un grille-pain et d\'un r&eacute;frig&eacute;rateur, et d\'une salle de bains avec douche &agrave; l\'italienne. Les serviettes et le linge de lit sont fournis dans l\'appartement. Cet appartement est hypoallerg&eacute;nique et non-fumeurs.</p>\r\n<p>Un minimarket est disponible &agrave; l\'appartement.</p>\r\n<p>Pour les clients avec enfants, l\'appartement propose des &eacute;quipements de jeux ext&eacute;rieurs. Apr&egrave;s une journ&eacute;e d\'&eacute;quitation, de visites &agrave; pied ou de tourn&eacute;es des pubs, les clients peuvent se d&eacute;tendre dans le jardin ou dans la salle commune.</p>\r\n<p>Anfa Place Living Resort se trouve &agrave; 8,8 km de Anfa Place, Luxury Apartment just renovated, Ocean View, tandis que le Morocco Mall est &agrave; 13 km de la propri&eacute;t&eacute;. L\'a&eacute;roport le plus proche est l\'a&eacute;roport international Mohammed V, &agrave; 28 km de l\'h&eacute;bergement.</p>', 'Appartement', '4 BHK', 'Louer', 5, 2, 2, 1, 4, '3eme étage', 75, 1350, 'Anfa Casablanca, Maroc', 'Casa', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">&Acirc;ge de la propri&eacute;t&eacute; : 6</span> Ann&eacute;es</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Piscine : </span>oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">SALLE DE SPORT : </span>oui</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartement</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">S&eacute;curit&eacute; : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Capacit&eacute; de restauration : 3</span> personnes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">&Eacute;glise/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3&egrave;me partie : </span>Non</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Ascenseur : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Vid&eacute;osurveillance : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Approvisionnement en eau : </span>Eau souterraine / R&eacute;servoir</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'photo1_home1.jpg', 'photo2_home1.jpg', 'photo3_home1.jpg', 'photo4_home1.jpg', 'photo5_home1.jpg', 39, 'Disponible', 'floorplan_sample.jpg', 'photo2_home1.jpg', 'photo6_home1.jpg', '8eme étage', '2024-04-12 01:25:20', 0),
(40, 'Restaurants et plage près d\'Anfa', '<p>&Agrave; Casablanca, &agrave; proximit&eacute; de la Mosqu&eacute;e Hassan II et d\'Anfa Place Living Resort, l\'appartement Anfa propose l\'air conditionn&eacute;, le WiFi et le parking gratuits. Non-fumeur, il se trouve &eacute;galement &agrave; proximit&eacute; de restaurants et de la plage. L\'appartement spacieux comprend un balcon, une chambre, un salon et une cuisine bien &eacute;quip&eacute;e. La gare Casa Voyageurs est &agrave; 2,6 km et le march&eacute; central de Casablanca &agrave; 4,2 km. L\'a&eacute;roport international Mohammed V est &agrave; 28 km.</p>', 'Appartement', '3 BHK', 'Louer', 4, 2, 2, 1, 4, '3eme étage', 85, 1400, 'Anfa Casablanca, Maroc', 'Casa', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">&Acirc;ge de la propri&eacute;t&eacute; : 4</span> Ann&eacute;es</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Piscine : </span>oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">SALLE DE SPORT : </span>oui</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartement</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">S&eacute;curit&eacute; : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Capacit&eacute; de restauration : 4</span> personnes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">&Eacute;glise/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3&egrave;me partie : </span>Non</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Ascenseur : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Vid&eacute;osurveillance : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Approvisionnement en eau : </span>Eau souterraine / R&eacute;servoir</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'photo1_home2.jpg', 'photo2_home2.jpg', 'photo3_home2.jpg', 'photo4_home2.jpg', 'photo6_home2.jpg', 39, 'Disponible', 'floorplan_sample.jpg', 'photo3_home2.jpg', 'photo5_home2.jpg', '12eme étage', '2024-04-12 01:40:41', 0),
(41, 'Studio rénové à Rabat', '<p>&Agrave; propos de ce logement<br />Joli studio fra&icirc;chement r&eacute;nov&eacute; au centre de Rabat.<br />wifi Fibre optique ,TV Netflix ، serviette, shampoing &hellip;<br />Une grande et une petite serviette pour chaque s&eacute;jour.<br />-proche de tout les commodit&eacute;s: sup&eacute;rettes , boulangerie, caf&eacute;s et restaurants &agrave; proximit&eacute;.<br />- La gare est &agrave; 10 mn, lieux touristiques de la ville.<br />- Tramway &agrave; 10 mn.<br />- &Agrave; 15 mn de l&rsquo;a&eacute;roport.<br />=======================================================================<br />Cuisine toute &eacute;quip&eacute;e.<br />Vue panoramique sur la ville<br />Cuisine<br />Wifi rapide (93 Mbit/s)<br />Espace de travail d&eacute;di&eacute;<br />Parking gratuit sur place<br />Animaux accept&eacute;s<br />T&eacute;l&eacute;vision<br />Cam&eacute;ras de surveillance ext&eacute;rieures pr&eacute;sentes sur place<br />Indisponible : D&eacute;tecteur de monoxyde de carboneD&eacute;tecteur de monoxyde de carbone<br />Indisponible : D&eacute;tecteur de fum&eacute;eD&eacute;tecteur de fum&eacute;e</p>', 'Bureau', '2 BHK', 'Louer', 2, 1, 1, 1, 3, '4eme étage', 50, 370, 'Rabat, Maroc', 'Rabat', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">&Acirc;ge de la propri&eacute;t&eacute; : 4</span> Ann&eacute;es</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Piscine : </span>oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">SALLE DE SPORT : </span>oui</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartement</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">S&eacute;curit&eacute; : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Capacit&eacute; de restauration : 2</span> personnes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">&Eacute;glise/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3&egrave;me partie : </span>Non</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Ascenseur : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Vid&eacute;osurveillance : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Approvisionnement en eau : </span>Eau souterraine / R&eacute;servoir</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', '4e1bc283-9c5d-4665-a5a1-1e3ca88c205e.webp', '5ceab714-eec6-4cab-8b60-29075d07fde5.webp', '5f3e9173-af40-4e37-9060-160d09a2c519.webp', 'a06e902c-6c9e-479c-b680-e025e4f21c6c.webp', 'eb72f09e-0d42-4f18-a8e0-ee55b5edaf88.webp', 39, 'Disponible', 'floorplan_sample.jpg', '5f3e9173-af40-4e37-9060-160d09a2c519.webp', 'f088be2f-765c-4452-bbb5-26e0ff309ee3.webp', '11eme étage', '2024-04-12 02:10:32', 0),
(42, 'Appartement spacieux au Rabat', '<p>&Agrave; propos de ce logement<br />L appartement se trouve &agrave; 1 mn de marche de la m&eacute;dina , 5mn du parlement et au centre du rabat colonial. Les &eacute;difices dans ce quartier date sont tous d\'&eacute;poque.<br />L\'appartement se compose de deux chambres , un grand salon et une cuisine &eacute;quip&eacute;e ainsi qu\'une terrasse de plus de 80 m2.<br />Le logement<br />Le logement est unique de part son emplacement car il est dans la jonction entre la vieille ville et la nouvelle ville de rabat . Vous pourrez d&eacute;couvrir tous les monuments de rabat &agrave; pieds .<br />Acc&egrave;s des voyageurs<br />Les voyageurs auront acc&egrave;s &agrave; un appartement propre et s&eacute;curis&eacute; dans un quartier tr&egrave;s anim&eacute; de la ville de rabat.<br />Se trouvant en face du minist&egrave;re de la justice et du parlement vous vous sentirez constamment en s&eacute;curit&eacute; lorsque vous vous promenerez a pied.<br />Autres remarques<br />En raison du coronavirus, nous prenons des mesures suppl&eacute;mentaires pour nettoyer et d&eacute;sinfecter les surfaces fr&eacute;quemment touch&eacute;es entre chaque r&eacute;servation. <br />=============================================================<br />Cuisine<br />Wifi<br />Animaux accept&eacute;s<br />TV avec abonnement standard au c&acirc;ble<br />Ascenseur<br />Lave-linge<br />Climatisation<br />Patio ou balcon, acc&egrave;s partag&eacute;<br />D&eacute;p&ocirc;t de bagages autoris&eacute;<br />Lit pour b&eacute;b&eacute;</p>', 'Bureau', '2 BHK', 'Louer', 2, 1, 1, 1, 2, '3eme étage', 60, 450, 'Rabat, Maroc', 'Rabat', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">&Acirc;ge de la propri&eacute;t&eacute; : 7</span> Ann&eacute;es</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Piscine : </span>oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">SALLE DE SPORT : </span>oui</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartement</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">S&eacute;curit&eacute; : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Capacit&eacute; de restauration : 3</span> personnes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">&Eacute;glise/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3&egrave;me partie : </span>Non</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Ascenseur : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Vid&eacute;osurveillance : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Approvisionnement en eau : </span>Eau souterraine / R&eacute;servoir</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', '109c6a45-f942-4e1e-a06b-89d4cafd05cb.webp', '415a6a12-72d7-4fda-aac7-ff3bf7797865.webp', '7206f83e-ce04-426d-a358-29941b73dadc.webp', 'bd53aa10-5828-4f35-a286-d4d35d43d510.webp', 'c9602bc4-2fda-4bda-a669-337df9210ff5.webp', 40, 'Disponible', 'floorplan_sample.jpg', '415a6a12-72d7-4fda-aac7-ff3bf7797865.webp', 'fce28182-5775-48a6-be5d-469a96714777.webp', '15 étage', '2024-04-12 02:19:35', 0),
(43, 'Luxe central avec commodités', '<p>Profitez d\'une exp&eacute;rience de luxe dans ce logement central. La m&eacute;dina est &agrave; 5 min &agrave; pied, vous avez un supermarch&eacute; et des magasins &agrave; 3 min, la station de tramway &agrave; 3 min a pied<br />==================================================<br />Cuisine<br />Wifi<br />Parking gratuit dans la rue<br />T&eacute;l&eacute;vision<br />Ascenseur<br />Lave-linge<br />S&eacute;jours longue dur&eacute;e autoris&eacute;s<br />Indisponible : D&eacute;tecteur de monoxyde de carboneD&eacute;tecteur de monoxyde de carbone<br />Indisponible : D&eacute;tecteur de fum&eacute;eD&eacute;tecteur de fum&eacute;e</p>', 'Bureau', '2 BHK', 'Louer', 2, 1, 0, 1, 1, '4eme étage', 63, 470, 'Rabat, Maroc', 'Rabat', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">&Acirc;ge de la propri&eacute;t&eacute; : 2</span> Ann&eacute;es</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Piscine : </span>oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">SALLE DE SPORT : </span>oui</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartement</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">S&eacute;curit&eacute; : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Capacit&eacute; de restauration : 3</span> personnes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">&Eacute;glise/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3&egrave;me partie : </span>Non</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Ascenseur : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Vid&eacute;osurveillance : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Approvisionnement en eau : </span>Eau souterraine / R&eacute;servoir</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', '9d594dcf-5f6e-4d4b-8ba4-681cac2cdcf5.jpeg', '57aad164-6413-44f1-bc70-50663edb6b12.jpeg', '69aeeebb-0c8e-4480-921a-cd3f20a15499.jpeg', '128d7218-3132-4669-9152-6e5aa08b485a.jpeg', '7496ffb9-acf3-4a81-a430-3ac38ae0079f.webp', 40, 'Disponible', 'floorplan_sample.jpg', 'a6b373d9-1dfe-4dcb-bdbd-43a8745d894e.webp', '37002493-e2a2-414c-bf95-eed0a83d0e1b.webp', '13eme étage', '2024-04-12 02:26:49', 1),
(44, 'Luxe détente à Tanger', '<p>ℹ️ 🏊&zwj;♂️ Une toute nouvelle piscine ext&eacute;rieure sera disponible dans la villa &agrave; partir de mai 2024 🏊&zwj;♂️ℹ️ ✨ La meilleure villa &agrave; louer &agrave; Tanger ✨. Vous disposerez de 1500 m&egrave;tres carr&eacute;s d\'espace d&eacute;cor&eacute; avec go&ucirc;t avec des meubles haut de gamme. Inclus dans la location une femme de m&eacute;nage qui peut cuisiner pour vous. Parking priv&eacute; pouvant accueillir jusqu\'&agrave; 5 voitures. Disponible en juillet et ao&ucirc;t, un coach priv&eacute; pour des le&ccedil;ons de natation Location de voiture disponible &agrave; des prix avantageux Pr&eacute;voyez-vous un &eacute;v&eacute;nement (mariage 🤵&zwj;♂️👰, f&ecirc;te de fian&ccedil;ailles, ...) ? Veuillez envoyer un message pour plus d\'informations. L\'espace Tr&egrave;s spacieux avec diff&eacute;rentes zones. 3 &eacute;tages pour 3 usages : &eacute;tage fitness et piscine. L\'&eacute;tage de rassemblement avec 3 salons, une salle &agrave; manger, une cuisine enti&egrave;rement &eacute;quip&eacute;e et un jardin. Et l\'&eacute;tage de repos avec 5 chambres confortables et 3 salles de bains.</p>', 'Villa', '5 BHK', 'Louer', 5, 3, 5, 2, 3, '3eme étage', 1500, 5000, 'château du roi ,Tanger, Maroc', 'Tanger', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">&Acirc;ge de la propri&eacute;t&eacute; : 5</span> Ann&eacute;es</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Piscine : </span>oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">SALLE DE SPORT : </span>oui</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartement</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">S&eacute;curit&eacute; : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Capacit&eacute; de restauration : 7</span> personnes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">&Eacute;glise/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3&egrave;me partie : </span>Non</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Ascenseur : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Vid&eacute;osurveillance : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Approvisionnement en eau : </span>Eau souterraine / R&eacute;servoir</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'tanger1_1.webp', 'tanger1_2.webp', 'tanger1_3.webp', 'tanger1_4.webp', 'tanger1_5.webp', 38, 'Disponible', 'floorplan_sample.jpg', 'tanger1_7.webp', 'tanger1_6.webp', '3eme étage', '2024-04-12 23:47:15', 0),
(45, 'Appartement à Casablanca', '<p>D&eacute;couvrez la r&eacute;sidence JASMIN, un v&eacute;ritable havre de confort et de luxe id&eacute;alement nich&eacute; &agrave; seulement 5 minutes du grand parc et des plages de Mohammedia. Avec son architecture moderne et ses immeubles &eacute;l&eacute;gants &eacute;quip&eacute;s d\'ascenseurs desservant les 5 &eacute;tages, cette r&eacute;sidence offre un cadre de vie incomparable.</p>\r\n<p>Profitez de ces appartements de standing, o&ugrave; chaque d&eacute;tail a &eacute;t&eacute; pens&eacute; pour votre bien-&ecirc;tre. Les logements, compos&eacute;s de 2 chambres et d\'un salon spacieux, s\'&eacute;tendent sur une superficie g&eacute;n&eacute;reuse allant de 64 &agrave; 84 m&sup2;, offrant ainsi un espace de vie luxueux et confortable. De plus, chaque appartement est pourvu d\'une place de parking privative en sous-sol, assurant praticit&eacute; et s&eacute;curit&eacute; pour tous les r&eacute;sidents.</p>\r\n<p>&Agrave; la r&eacute;sidence JASMIN, laissez-vous envelopper par une atmosph&egrave;re de tranquillit&eacute; et de s&eacute;r&eacute;nit&eacute;, o&ugrave; le luxe rencontre le raffinement, pour une exp&eacute;rience de vie in&eacute;gal&eacute;e &agrave; Mohammedia.</p>', 'Appartement', '3 BHK', 'Vente', 3, 1, 2, 1, 3, '4eme étage', 64, 570000, 'Casablanca, Maroc', 'Casa', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">&Acirc;ge de la propri&eacute;t&eacute; : 4</span> Annees</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">piscine : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">SALLE DE SPORT : </span>Oui</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartement</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">S&eacute;curit&eacute; : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Capacit&eacute; de restauration : 3</span> Personnes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">&Eacute;glise/Temple : </span>Oui</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3&egrave;me partie :</span>Non</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Ascenseur : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Approvisionnement en eau : </span>Eau souterraine / R&eacute;servoir</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'casa_41.jpeg', 'casa_42.jpeg', 'casa_43.jpeg', 'casa_44.jpeg', 'casa_45.jpeg', 40, 'Disponible', 'floorplan_sample.jpg', 'casa_42.jpeg', 'casa_45.jpeg', '8eme étage', '2024-04-13 00:06:49', 0),
(46, 'Appartement à vendre à Tanger', '<p>La r&eacute;sidence Assalam Tanger occupe une place privil&eacute;gi&eacute;e au c&oelig;ur de la ville, sur l\'avenue Moulay Ismail, l\'art&egrave;re principale, dans un quartier r&eacute;sidentiel prestigieux. Con&ccedil;ue pour r&eacute;pondre aux plus hautes exigences, elle offre une diversit&eacute; de services et de commodit&eacute;s pour un mode de vie luxueux et confortable.</p>\r\n<p>Cette r&eacute;sidence exclusive pr&eacute;sente une architecture moderne et &eacute;l&eacute;gante, harmonieusement int&eacute;gr&eacute;e dans son environnement urbain. Avec ses deux centres d\'affaires d&eacute;di&eacute;s aux plateaux de bureaux, elle propose un espace propice &agrave; l\'&eacute;panouissement des entreprises et des professionnels.</p>\r\n<p>Les appartements et duplex haut de gamme de la r&eacute;sidence offrent un cadre de vie exceptionnel. Dot&eacute;s d\'une conception contemporaine, les logements s\'&eacute;tendent sur des superficies g&eacute;n&eacute;reuses, allant de 144 &agrave; 213 m&sup2;. Chaque unit&eacute; comprend un salon spacieux, un s&eacute;jour accueillant, une suite parentale avec salle de bain attenante, une ou deux chambres pour enfants, des salles de bain suppl&eacute;mentaires, des toilettes, une cuisine enti&egrave;rement &eacute;quip&eacute;e, ainsi qu\'un balcon et une terrasse spacieuse pour profiter pleinement de la vue panoramique sur la ville.</p>\r\n<p>Pour compl&eacute;ter ce projet d\'exception, un parking avec deux niveaux en sous-sol est pr&eacute;vu, offrant ainsi un espace s&eacute;curis&eacute; et pratique pour stationner les v&eacute;hicules des r&eacute;sidents et de leurs visiteurs. La r&eacute;sidence Assalam Tanger incarne le luxe, le confort et l\'&eacute;l&eacute;gance, offrant un style de vie r&eacute;sidentiel incomparable dans la vibrante ville de Tanger.</p>', 'Appartement', '3 BHK', 'Vente', 3, 1, 1, 1, 3, '2eme étager', 144, 1370000, '443 tanger ,Maroc', 'Tanger', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">&Acirc;ge de la propri&eacute;t&eacute; : 3</span> Annees</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">piscine : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">SALLE DE SPORT : </span>Oui</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartement</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">S&eacute;curit&eacute; : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Capacit&eacute; de restauration : 4</span> Personnes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">&Eacute;glise/Temple : </span>Oui</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3&egrave;me partie :</span>Non</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Ascenseur : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Oui</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Approvisionnement en eau : </span>Eau souterraine / R&eacute;servoir</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'tanger_41.jpeg', 'tanger_42.jpeg', 'tanger_43.jpeg', 'tanger_44.jpeg', 'tanger_45.jpeg', 40, 'Disponible', 'floorplan_sample.jpg', 'tanger_46.jpeg', 'tanger_47.jpeg', '6eme étage', '2024-04-13 00:30:45', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(50) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `uemail` varchar(100) NOT NULL,
  `uphone` varchar(20) NOT NULL,
  `upass` varchar(50) NOT NULL,
  `utype` varchar(50) NOT NULL,
  `uimage` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uname`, `uemail`, `uphone`, `upass`, `utype`, `uimage`) VALUES
(38, 'Leonard C. McCants', 'LeonardCMcCants@jourrapide.com', '608-319-15', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'user', 'user1.png'),
(39, 'Amelia R. Fudge', 'AmeliaRFudge@dayrep.com', '860-667-53', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'user', 'user2.jpg'),
(40, 'Adam E. Tabor', 'AdamETabor@jourrapide.com', '208-570-90', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'agent', 'james-person-1.jpg'),
(41, 'Alan M. Frawley', 'AlanMFrawley@gmail.com', '218-849-31', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'builder', 'agent-3.jpg'),
(42, 'David J. Williams', 'DavidJWilliams@gmail.com', '443-806-13', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'user', 'robert-godwin-SPcFpXIME6M-unsplash.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `cid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `cid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `pid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

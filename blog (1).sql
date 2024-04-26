-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 25, 2024 at 11:01 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `dateCreated` date NOT NULL,
  `dateUpdated` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `dateCreated`, `dateUpdated`) VALUES
(1, 'Actualités', '2024-04-20', '2024-04-22'),
(2, 'Opinion/Éditorial ', '2022-04-20', '2022-04-24');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `id_post` int NOT NULL,
  `content` text NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `dateCreated` date NOT NULL,
  `dateUpdated` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`),
  KEY `id_post` (`id_post`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `id_user`, `id_post`, `content`, `status`, `dateCreated`, `dateUpdated`) VALUES
(8, 22, 18, 'Je viens de Gaza, déplacé par la guerre. Je vis dans la ville de Rafah et je vis les jours les plus difficiles à Gaza. Ma famille et moi ne pouvons pas fournir de nourriture, d&#039;électricité ou toute autre résistance de la vie. J&#039;espère que mon message parviendra au monde entier, qu&#039;il me soutiendra et m&#039;aidera\r\n', 1, '2024-04-25', '2024-04-25'),
(9, 22, 14, 'Cela m’a littéralement donné la chair de poule. Comment les dirigeants du monde peuvent-ils ne pas voir cela ?\r\n', 1, '2024-04-25', '2024-04-25'),
(10, 22, 13, 'La vie a changé , NOUS en sommes tous responsables ?\r\n', 1, '2024-04-25', '2024-04-25'),
(11, 22, 14, 'Nos enfants bien-aimés sont allés au ciel, et ceux qui sont encore en vie que Dieu les protège et leur facilite en toutes choses la satisfaction de leurs besoins physiques et spirituels. Qu&#039;Allah nous pardonne??', 1, '2024-04-25', '2024-04-25'),
(12, 23, 14, 'C&#039;est la guerre contre les enfants?', 1, '2024-04-25', '2024-04-25'),
(13, 23, 13, 'Sommes-nous vraiment habitués à cela ? Oh, un autre bombardement. Oh, encore un enfant mort. Ce n’est pas normal.', 1, '2024-04-25', '2024-04-25'),
(14, 23, 16, 'Ils viennent de bombarder une école', 1, '2024-04-25', '2024-04-25'),
(15, 24, 18, 'Nous savons quelle est la prochaine étape. Boycottez le gouvernement et les impôts.', 1, '2024-04-25', '2024-04-25'),
(16, 24, 18, '#Free_Palestine', 0, '2024-04-25', NULL),
(17, 24, 17, 'Free Palestine\r\n', 1, '2024-04-25', '2024-04-25'),
(18, 24, 16, 'Free Palestine\r\n', 1, '2024-04-25', '2024-04-25'),
(19, 24, 16, 'Free Palestine\r\n', 1, '2024-04-25', '2024-04-25'),
(20, 24, 13, '#Free_Palestine', 1, '2024-04-25', '2024-04-25'),
(21, 24, 17, '#Free_Palestine', 1, '2024-04-25', '2024-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `id_category` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `chapo` varchar(255) NOT NULL,
  `dateCreated` date NOT NULL,
  `dateUpdated` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`),
  KEY `id_category` (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `id_user`, `id_category`, `title`, `content`, `chapo`, `dateCreated`, `dateUpdated`) VALUES
(13, 21, 1, 'Peace', 'Après le début de l’offensive israélienne sur Gaza et durant quatre mois, Mazen Kerbaj a dessiné la guerre, presque quotidiennement. Des images et des mots, composés comme des affiches, au fil des angoisses de l’auteur et des étapes du carnage.\r\nLe 5 octobre 2023, à Ljubljana, en Slovénie, Mazen Kerbaj réalisait une fresque « en souvenir des enfants gazaouis morts depuis 2008 ». « Je n’avais aucun doute sur le fait que cela tiendrait aussi lieu de mémorial pour les enfants qui seraient tués par des bombes dans le futur. Mais je ne savais pas que ce futur arriverait aussi vite et que ce serait aussi sanglant, cette fois », écrivait il en partageant des photos de l’œuvre sur Instagram quelques jours plus tard.\r\n\r\nDès lors, comme en 2006 quand Israël a bombardé Beyrouth, et à l’hiver 2008-2009, pendant une précédente opération à Gaza, l’artiste libanais s’est mis à dessiner la guerre et la mort, jour après jour. En 2015, Kerbaj a emménagé à Berlin avec sa famille, et c’est depuis cet exil, peu propice au soutien des Palestiniens, qu’il a suivi l’offensive. La distance ajoute ainsi un sentiment de déréalisation qu’il exprime dans nombre des dessins de cette série.\r\n\r\nL’ampleur du massacre actuel semble imposer une nouvelle grammaire de la représentation. Pas de strip, de peinture, aucune des élaborations graphiques souvent tragiquement drôles dont il est coutumier. Ici, le texte est prépondérant, et les images épurées au minimum de signes, souvent très graphiques, presque toutes au même format et toujours en noir et blanc. Des affiches faites de symboles et d’icônes, à placarder sur les murs électroniques.', 'Génocide. Ne pouvez-vous toujours pas le voir ?', '2024-04-25', '2024-04-25'),
(14, 21, 2, 'Peace', ' \r\nEst-ce que vous nous voyez vraiment ?\r\nJe n’avais jamais pensé que je verrais quelque chose de pire que le corps d’un enfant assassiné, jusqu’à ce que je voie la vidéo d’un père transportant les restes de son fils dans un sac-poubelle en plastique\r\n', 'La Palestine est la boussole morale du monde: De Gaza Au Mone...', '2024-04-25', '2024-04-25'),
(16, 21, 1, 'Free', 'Le 7 octobre a ouvert un chapitre d’une violence inédite au Proche-Orient. Aux 1 200 victimes dénombrées en Israël des suites de l’attaque du Hamas s’ajoutent les plus de 24 000 morts causés par la guerre de représailles de Tel-Aviv. Du rêve sioniste à l’anéantissement de Gaza, le nouveau numéro de « Manière de voir » remonte aux sources du conflit israélo-palestinien et remet en perspectives les grandes séquences d’un engrenage toujours plus meurtrier.', 'Israël, Palestine, une terre à vif', '2024-04-25', '2024-04-25'),
(17, 21, 2, 'Free', 'On n’avait plus vu cela depuis la mobilisation de 2003 contre la guerre d’Irak menée par MM. George W. Bush et Anthony Blair. Le 11 novembre dernier, selon les organisateurs, plus de 800 000 personnes auraient défilé à Londres en solidarité avec Gaza. Les manifestants ciblaient le gouvernement conservateur comme le Parti travailliste, qui lui aussi a pris fait et cause pour Israël.', 'La rue avec Gaza, les élites derrière Israël', '2024-04-25', '2024-04-25'),
(18, 21, 1, 'Free', '“Nous resterons ici”\r\nCe n’est pas un slogan politique. C’est le chant repris en chœur par les médecins palestiniens qui refusent d’abandonner leurs patients après que l’armée israélienne a ordonné leur évacuation de l’hôpital » (25 octobre 2023).', '&quot;Nous resterons ici&quot;', '2024-04-25', '2024-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(64) NOT NULL,
  `lastName` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `role` int NOT NULL DEFAULT '0',
  `picture` varchar(255) DEFAULT NULL,
  `dateCreated` date NOT NULL,
  `dateUpdated` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstName`, `lastName`, `email`, `password`, `role`, `picture`, `dateCreated`, `dateUpdated`) VALUES
(21, 'salma', 'ben', 'benbrahimsalma18@gmail.com', '746d0601603d1cc907ae82fed1c4bdf3', 1, 'logo.png', '2024-04-25', '2024-04-25'),
(22, 'Asma', 'Khemiri', 'khemiriasma@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', 1, 'default-post.jpg', '2024-04-25', '2024-04-25'),
(23, 'Assia', 'Rezgui', 'razguiassia19@gmail.com', 'e36a2f90240e9e84483504fd4a704452', 0, NULL, '2024-04-25', NULL),
(24, 'Maram', 'Lamiri', 'maramlamiri@gmail.com', 'fe743d8d97aa7dfc6c93ccdc2e749513', 0, NULL, '2024-04-25', NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`id_post`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

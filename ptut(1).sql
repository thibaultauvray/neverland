-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Ven 18 Octobre 2013 à 18:27
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `ptut`
--
CREATE DATABASE IF NOT EXISTS `ptut` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ptut`;

-- --------------------------------------------------------

--
-- Structure de la table `accessoires`
--

CREATE TABLE IF NOT EXISTS `accessoires` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(45) DEFAULT NULL,
  `imgthumb` varchar(45) NOT NULL,
  `titre` varchar(45) DEFAULT NULL,
  `CATEGORIE_idCATEGORIE` int(11) NOT NULL,
  PRIMARY KEY (`id`,`CATEGORIE_idCATEGORIE`),
  KEY `fk_LOOKBOOK_CATEGORIE_idx` (`CATEGORIE_idCATEGORIE`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `accessoires`
--

INSERT INTO `accessoires` (`id`, `img`, `imgthumb`, `titre`, `CATEGORIE_idCATEGORIE`) VALUES
(3, 'img/acc/Chèche Argile.jpg', 'img/acc/thumb/Chèche Argile.jpg', 'Chèche Argile', 2),
(4, 'img/acc/Chèche Argile.jpg', 'img/acc/thumb/Chèche Argile.jpg', 'Echarpe Arty Acier', 1),
(7, 'img/acc/Lunettes  Copacabana.jpg', 'img/acc/thumb/Lunettes  Copacabana.jpg', 'Lunettes  Copacabana', 4),
(8, 'img/acc/Paréo Bahia.jpg', 'img/acc/thumb/Paréo Bahia.jpg', 'Paréo Bahia', 2),
(9, 'img/acc/Sac''n Beach Flore.jpg', 'img/acc/thumb/Sac''n Beach Flore.jpg', 'Sac''n Beach Flore', 5);

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(45) DEFAULT NULL,
  `mdp` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`id`, `user`, `mdp`) VALUES
(1, 'admin', '226524fe28f09dfd5ec54dafae8aa99cc627bd0e');

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(45) DEFAULT NULL,
  `texte` text,
  `urlimg` varchar(50) NOT NULL,
  `CATEGORIEARTICLE_idCATEGORIEARTICLE` int(11) NOT NULL,
  PRIMARY KEY (`id`,`CATEGORIEARTICLE_idCATEGORIEARTICLE`),
  KEY `fk_ARTICLE_CATEGORIEARTICLE1_idx` (`CATEGORIEARTICLE_idCATEGORIEARTICLE`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`id`, `titre`, `texte`, `urlimg`, `CATEGORIEARTICLE_idCATEGORIEARTICLE`) VALUES
(3, 'Historique', '	Printemps 2012 - Dubai Fashion Week : Rencontre des 2 créateurs.<br/>\r\n\r\n						Juin 2012 - Dépôt de la marque Scott & Hugues.<br/>\r\n\r\n						Juillet 2012 - Ouverture de l''atelier.<br/>\r\n\r\n						Décembre 2012 - Sorti de la première collection Printemps/été.<br/>\r\n\r\n						Janvier 2013 - Premier défilé à Paris.<br/>\r\n\r\n						Janvier 2013 - Premier partenariat avec la grande distribution : 12 boutiques.<br/>\r\n\r\n						Février 2013 - L''effectif de l''atelier est doublé.<br/>\r\n\r\n						Mars 2013 - Overture d''un showroom à Paris.<br/>\r\n\r\n						Avril 2013 - Deuxième partenariat de distribution : 38 boutiques.<br/>\r\n\r\n						Juin 2013 - Sorti de la collection Automne/hiver "Neverland".<br/>\r\n\r\n						Juillet 2013 - Défilé Automne/hiver à Madrid. <br/>\r\n\r\n						Septembre 2013 - Ouverture d''un deuxième showroom à Marseille.<br/>\r\n\r\n				', 'img/marque/histo.jpg', 1),
(4, 'La marque', 'SCOTT & HUGUES est une marque française au style épuré, glamour et contemporain, pour une femme qui recherche de la simplicité, des détails, une histoire et refuse l’ostentatoire.<br><br>\r\n\r\n						Juste valeur : La mode est une chaîne de valeur faite de savoir-faire sublime, de passion et de travail. Matières nobles, belles finitions, chacun uvre à la qualité des créations SCOTT & HUGUES.<br><br>\r\n\r\n						100% DESIGNED & Made in France : SCOTT & HUGUES admire l’uvre de ses couturières, elles ont un savoir-faire exceptionnel et travaillent pour les plus grandes maisons. Ce savoir-faire est reconnu à l’étranger.  SCOTT & HUGUES rêve de le remettre au goût du jour en France. <br><br>\r\n\r\n						Matières noble : On notera une sélection très pointue de matières « nobles » qu''affectionne les créateurs, comme des mousselines de soie, des draps de coton vaporeux ou de laine ultra souples, des gazes mousseuses, le tout associé aux mailles viscose précieuse des pulls. Côté coloris, les collections se déclinent dans des teintes raffinées : chocolat, ivoire, kaki doux et camel.<br><br>\r\n\r\n						Parler différemment : SCOTT & HUGUES exprime sa vie et son coeur avec de la proximité et un ton décalé. Des histoires qui donnent du sens aux créations et aux partis-pris de la marque.<br><br>\r\n', 'img/marque/lamarque.jpg', 1),
(5, 'Thomas Scott', 'C''est d''abord un parcours atypique. Jeune anglais, il suivra ses parents et terminera ses études en France.<br/><br/>\r\n\r\n					A 16 ans, il est déjà certain que le vêtement sera le moteur de sa vie, mais clairvoyant et curieux, il tient tout d''abord à apprendre en multipliant les expériences.<br/><br/>\r\n\r\n					il fait ses classes chez Yohji Yamamoto, devient styliste dans le domaine de la photo, du cinéma, du clip ou de la télévision.<br/><br/>\r\n\r\n					Il voyage beaucoup, se nourrit de tout et suit des cours de fashion designer à New York. De retour en France, il participe aux avant-premières des défilés de Paco Rabane et de Balmain tout 					en peaufinant ses connaissances en stylisme et en modélisme.<br/><br/>\r\n\r\n					En 2009, il se sent enfin prêt à lancer une première ligne de vêtements et c''est sa rencontre avec Julien Hugues qui sera le déclencheur.\r\n			', 'img/scott.jpg', 2),
(6, 'Julien Hugues', 'Styliste modéliste originaire de Strasbourg, artiste dans l''âme, Julien Hugues fait preuve d''un beau talent créateur doublé d''une remarquable technicité.<br/><br/>\r\n\r\n					Pluridisciplinaire dans l''univers de la mode haute couture ou prêt à porter, Julien s’est résolument orientée vers la conception sur-mesure ; domaine exigeant qui implique une relation 					éthique et privilégiée avec le client, tant au niveau du vêtement, son originalité et sa conception, qu’à celui de l’acquéreur, son écoute et sa mise en valeur.<br/><br/>\r\n\r\n					Après une formation aux Arts Décoratifs, Julien Hugues rentre directement chez Gaspard Yurkievich, puis devient l''assistant de Jean Paul Knott pour sa propre ligne mais également pour 					Krizia.<br/><br/>\r\n\r\n					En 2009, aidée par son entourage, il veut de lancer sa marque.<br/>\r\n					Exigeant et tenace, Julien met un point d''honneur à fabriquer au sein d''ateliers français en privilégiant les coupes parfaites et les très belles matières.<br/><br/>\r\n\r\n					Ces petites astuces et ces différents portés permettent d''inventer des silhouettes distinctes et des mélanges harmonieux qui donnent naissance à un « vrai » style.', 'img/hugues.jpg', 2);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`id`, `nom`) VALUES
(1, 'Echarpes'),
(2, 'Pareos'),
(3, 'Chèche '),
(4, 'Lunettes'),
(5, 'Sac');

-- --------------------------------------------------------

--
-- Structure de la table `categoriearticle`
--

CREATE TABLE IF NOT EXISTS `categoriearticle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `categoriearticle`
--

INSERT INTO `categoriearticle` (`id`, `libelle`) VALUES
(1, 'Marque'),
(2, 'Créateurs');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `adresse` text NOT NULL,
  `code_postal` varchar(5) NOT NULL,
  `ville` varchar(30) NOT NULL,
  `datenaissance` varchar(12) NOT NULL,
  `tel` varchar(16) NOT NULL,
  `newsletter` tinyint(1) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`nom`, `prenom`, `mail`, `adresse`, `code_postal`, `ville`, `datenaissance`, `tel`, `newsletter`, `id`) VALUES
('ddddd', 'dddd', 'hhhhhh@gmail.com', 'vdvd', '45875', 'New york', '24/09/1991', '0254322923', 0, 1),
('ddddd', 'dddd', 'hhhhhh@gmail.com', 'vdvd', '45875', 'New york', '24/09/1991', '0254322923', 1, 2),
('ddddd', 'dddd', 'hhhhhh@gmail.com', 'vdvd', '45875', 'New york', '24/09/1991', '0254322923', 1, 3),
('ddddd', 'dddd', 'hhhhhh@gmail.com', 'dzqdzd', '45875', 'New york', '24/09/1991', '0254322923', 1, 4),
('ddddd', 'dddd', 'hhhhhh@gmail.com', 'fdzqafqf', '45875', 'New york', '24/09/1991', '0254322923', 0, 5),
('ddddd', 'dddd', 'hhhhhh@gmail.com', 'dddddd', '45875', 'New york', '24/09/1991', '0254322923', 1, 6),
('ddddd', 'dddd', 'hhhhhh@gmail.com', 'dddddd', '45875', 'New york', '24/09/1991', '0254322923', 1, 7),
('ddddd', 'dddd', 'hhhhhh@gmail.com', 'dddddd', '45875', 'New york', '24/09/1991', '0254322923', 1, 8),
('ddddd', 'dddd', 'hhhhhh@gmail.com', 'dddddd', '45875', 'New york', '24/09/1991', '0254322923', 1, 9),
('ddddd', 'dddd', 'hhhhhh@gmail.com', 'dddddd', '45875', 'New york', '24/09/1991', '0254322923', 1, 10),
('ddddd', 'dddd', 'hhhhhh@gmail.com', 'ddddd', '45875', 'New york', '24/09/1991', '0254322923', 0, 11),
('ddddd', 'dddd', 'hhhhhh@gmail.com', 'ddddd', '45875', 'New york', '27/09/1991', '0254322923', 0, 12);

-- --------------------------------------------------------

--
-- Structure de la table `commune`
--

CREATE TABLE IF NOT EXISTS `commune` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commune` varchar(48) NOT NULL,
  `codepos` varchar(5) NOT NULL,
  `departement` varchar(255) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Contenu de la table `commune`
--

INSERT INTO `commune` (`id`, `commune`, `codepos`, `departement`, `latitude`, `longitude`) VALUES
(1, 'AAST', '64460', 'PYRENEES ATLANTIQUES', 43.2869, -0.093819),
(2, 'ABAINVILLE', '55130', 'MEUSE', 48.5313, 5.49636),
(3, 'ABANCOURT', '60220', 'OISE', 49.6987, 1.7633),
(4, 'ABANCOURT', '59265', 'NORD', 50.235, 3.2135),
(5, 'ABAUCOURT', '54610', 'MEURTHE ET MOSELLE', 48.8945, 6.26284),
(6, 'ABAUCOURT HAUTECOURT', '55400', 'MEUSE', 49.1958, 5.53961),
(7, 'ABBANS DESSOUS', '25320', 'DOUBS', 47.1332, 5.87388),
(8, 'ABBANS DESSUS', '25440', 'DOUBS', 47.118, 5.88085),
(9, 'ABBARETZ', '44170', 'LOIRE ATLANTIQUE', 47.5529, -1.52508),
(10, 'ABBAZIA', '20243', 'CORSE', 42.0033, 9.36474),
(11, 'ABBECOURT', '60430', 'OISE', 49.3591, 2.15736),
(12, 'ABBECOURT', '2300', 'AISNE', 49.5955, 3.18065),
(13, 'ABBENANS', '25340', 'DOUBS', 47.5004, 6.45146),
(14, 'ABBEVILLE', '80100', 'SOMME', 50.1109, 1.83819),
(15, 'ABBEVILLE LA RIVIERE', '91150', 'ESSONNE', 48.346, 2.16467),
(16, 'ABBEVILLE LES CONFLANS', '54800', 'MEURTHE ET MOSELLE', 49.1984, 5.84674),
(17, 'ABBEVILLE ST LUCIEN', '60480', 'OISE', 49.5198, 2.17571),
(18, 'ABBEVILLERS', '25310', 'DOUBS', 47.4291, 6.92256),
(19, 'ABEILHAN', '34290', 'HERAULT', 43.4513, 3.29288),
(20, 'ABELCOURT', '70300', 'HAUTE SAONE', 47.7846, 6.29073),
(21, 'ABERE', '64160', 'PYRENEES ATLANTIQUES', 43.3888, -0.17273),
(22, 'ABERGEMENT LA RONCE', '39500', 'JURA', 47.0733, 5.36162),
(23, 'ABERGEMENT LE GRAND', '39600', 'JURA', 46.914, 5.68157),
(24, 'ABERGEMENT LE PETIT', '39800', 'JURA', 46.9001, 5.6959),
(25, 'ABERGEMENT LES THESY', '39110', 'JURA', 46.9176, 5.93945),
(26, 'ABERGEMENT ST JEAN', '39120', 'JURA', 46.8914, 5.359),
(27, 'ABERWRACH', '29870', 'FINISTERE', 48.5962, -4.5617),
(28, 'ABIDOS', '64150', 'PYRENEES ATLANTIQUES', 43.3986, -0.624039),
(29, 'ABILLY', '37160', 'INDRE ET LOIRE', 46.9392, 0.73076),
(30, 'ABITAIN', '64390', 'PYRENEES ATLANTIQUES', 43.4204, -0.98689),
(31, 'ABJAT SUR BANDIAT', '24300', 'DORDOGNE', 45.5855, 0.7564),
(32, 'ABLAIN ST NAZAIRE', '62153', 'PAS DE CALAIS', 50.3919, 2.71203),
(33, 'ABLAINCOURT PRESSOIRE', '80320', 'SOMME', 49.839, 2.82238),
(34, 'ABLAINZEVELLE', '62116', 'PAS DE CALAIS', 50.1524, 2.73227),
(35, 'ABLANCOURT', '51240', 'MARNE', 48.8119, 4.52236),
(36, 'ABBECOURT', '2300', 'AISNE', 49.5955, 3.18065);

-- --------------------------------------------------------

--
-- Structure de la table `lookbook`
--

CREATE TABLE IF NOT EXISTS `lookbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(45) DEFAULT NULL,
  `urlthumb` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Contenu de la table `lookbook`
--

INSERT INTO `lookbook` (`id`, `img`, `urlthumb`) VALUES
(1, 'img/lookbook/big1.jpg', 'img/lookbook/thumb/thumb1.jpg'),
(2, 'img/lookbook/big2.jpg', 'img/lookbook/thumb/thumb2.jpg'),
(3, 'img/lookbook/big3.jpg', 'img/lookbook/thumb/thumb3.jpg'),
(4, 'img/lookbook/big4.jpg', 'img/lookbook/thumb/thumb4.jpg'),
(5, 'img/lookbook/big5.jpg', 'img/lookbook/thumb/thumb5.jpg'),
(6, 'img/lookbook/big6.jpg', 'img/lookbook/thumb/thumb6.jpg'),
(7, 'img/lookbook/big7.jpg', 'img/lookbook/thumb/thumb7.jpg'),
(8, 'img/lookbook/big8.jpg', 'img/lookbook/thumb/thumb8.jpg'),
(9, 'img/lookbook/big9.jpg', 'img/lookbook/thumb/thumb9.jpg'),
(10, 'img/lookbook/big10.jpg', 'img/lookbook/thumb/thumb10.jpg'),
(11, 'img/lookbook/big11.jpg', 'img/lookbook/thumb/thumb11.jpg'),
(12, 'img/lookbook/big12.jpg', 'img/lookbook/thumb/thumb12.jpg'),
(13, 'img/lookbook/big13.jpg', 'img/lookbook/thumb/thumb13.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `magasin`
--

CREATE TABLE IF NOT EXISTS `magasin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `commune` varchar(48) NOT NULL,
  `codepos` varchar(5) NOT NULL,
  `departement` varchar(255) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

--
-- Contenu de la table `magasin`
--

INSERT INTO `magasin` (`id`, `nom`, `commune`, `codepos`, `departement`, `latitude`, `longitude`) VALUES
(1, 'MammaFashion', '199, rue de la Croix-Nivert', '75015', 'paris', 48.8373, 2.28969),
(2, 'H&M', '12 Avenue de Sceaux', '78000', 'Versailles', 48.7993, 2.12791),
(3, 'Berenice', '28 Rue Poliveau', '75005', 'Paris', 48.8405, 2.3588),
(4, 'Gabrielle Geppert', '10-12 Rue du Docteur Albert Schweitzer', '93700', 'Drancy', 48.925, 2.45819),
(5, 'H&M', ' 52 Rue des Tournelles', '75003', 'Paris', 48.8564, 2.36755),
(6, 'MammaFashion', '6 Rue André et Marie Louise Roure', '92270', 'Bois-Colombes', 48.9124, 2.25769),
(7, 'Berenice', 'Chemin du Bouleux', '14000', 'Caen', 49.1756, -0.380402),
(8, 'H&M', '30 Rue Basse', '14000', 'Caen', 49.185, -0.355682),
(9, 'MammaFashion', '13 Rue Octave Feuillet', '50000', 'Saint-Lô', 49.114, -1.09039),
(10, 'H&M', '52 Rue de Bretagne', '76600', 'Le Havre', 49.4887, 0.112953),
(11, 'Berenice', '57 Avenue Foch', '76600', 'Le Havre', 49.4937, 0.100336),
(12, 'H&M', '1-7 Passage des Martyrs', '80080', 'Amiens', 49.9031, 2.29614),
(13, 'MammaFashion', '36 Rue Saint-Patrice', '76000', 'Rouen', 49.446, 1.09039),
(14, 'H&M', '20 Rue Eugène Desteuque', '51100', 'Reims', 49.2556, 4.03748),
(15, 'Gabrielle Geppert', '2-6 Rue Albert Lebrun', '54000', 'Nancy', 48.685, 6.1908),
(16, 'Berenice', 'Rue Commandant Tissot', '29200', 'Brest', 48.4031, -4.4838),
(17, 'H&M', '24 Boulevard de la Liberté', '35000', 'Rennes', 48.1076, -1.67902),
(18, 'Gabrielle Geppert', '9 Place de la République', '72100', 'Le Mans', 48.0039, 0.197067),
(19, 'MammaFashion', '11-19 Rue Musette', '21000', 'Dijon', 47.3226, 5.03964),
(20, 'Berenice', '18 Rue du Petit Soleil', '37000', 'Tours', 47.3941, 0.682561),
(21, 'H&M', '18 Rue Descartes', '49100', 'Angers', 47.4755, -0.564766),
(22, 'Gabrielle Geppert', '18 Rue de la Gourmette', '44300', 'Nantes', 47.2323, -1.57105),
(23, 'H&M', '5 Rue du Puygarreau', '86000', 'Poitiers', 46.58, 0.341606),
(24, 'Gabrielle Geppert', 'Rue Jean-Baptiste Perronneau', '17000', 'La Rochelle', 46.1691, -1.17691),
(25, 'H&M', '7-11 Rue Mellaise', '79000', 'Niort', 46.3225, -0.464172),
(26, 'Gabrielle Geppert', '1 Rue de la Chaîne', '86000', 'Poitiers', 46.5868, 0.342636),
(27, 'H&M', '21 Place Jourdan', '87000', 'Limoges', 45.8318, 1.26446),
(28, 'Berenice', '53 Rue Bonnabaud', '63000', 'Clermont-Ferrand', 45.7729, 3.08064),
(29, 'H&M', '32 Rue Père Chevrier', '69007', 'Lyon', 45.749, 4.8436),
(30, 'Gabrielle Geppert', '102 Avenue Paul Santy', '69008', 'Lyon', 45.7294, 4.87312),
(31, 'Berenice', '150 Route du Jaillet', '74120', 'Megève', 45.8594, 6.61551),
(32, 'MammaFashion', '43 Rue Huguerie', '33000', 'Bordeaux', 44.8448, -0.580559),
(33, 'H&M', '31 Rue Jac Belaubre', '33200', 'Bordeaux', 44.8472, -0.631371),
(34, 'H&M', '29 Rue Francin', '33800', 'Bordeaux', 44.8268, -0.557899),
(35, 'Gabrielle Geppert', '43 Avenue Félix Fauré', '26000', 'Valence', 44.9305, 4.8951),
(36, 'Berenice', '2 Cours la Fontaine', '38000', 'Grenoble', 45.1876, 5.72594),
(37, 'MammaFashion', '16 Rue Ancien Hôtel-de-ville', '84100', 'Orange', 44.1383, 4.80686),
(38, 'H&M', '52 Boulevard Sergent Triaire', '30900', 'Nîmes', 43.8281, 4.35917),
(39, 'Gabrielle Geppert', '8 Avenue des Lierres', '84000', 'Avignon', 43.9401, 4.80377),
(40, 'Berenice', '2 Rue des Capitouls', '81100', 'Castres', 43.6069, 2.24104),
(41, 'H&M', '62 Rue Lancefoc', '31000', 'Toulouse', 43.6093, 1.43269),
(42, 'MammaFashion', '34 Rue des Teinturiers', '31300', 'Toulouse', 43.5965, 1.43269),
(43, 'Berenice', '21 Rue Charles Floquet', '64100', 'Bayonne', 43.4929, -1.46461),
(44, 'H&M', '5 Quai François Batllo', '66000', 'Perpignan', 42.7017, 2.8937),
(45, 'Gabrielle Geppert', '47 Allée Paul Riquet', '34500', 'Béziers', 43.341, 3.21831),
(47, 'Berenice', '3 Rue d''Alger', '34000', 'Montpellier', 43.6059, 3.87749),
(48, 'MammaFashion', '974 Avenue du Pirée', '34000', 'Montpellier', 43.6026, 3.89517),
(49, 'H&M', '21 Rue des Loutres', '34090', 'Montpellier', 43.6242, 3.87663),
(50, 'Gabrielle Geppert', '74 Boulevard Sergent Triaire', '30900', 'Nîmes', 43.826, 4.35574),
(51, 'Berenice', '554 Chemin du Petit Barthélémy', '13100', 'Aix-en-Provence', 43.5192, 5.43583),
(52, 'H&M', '27 Rue de la République', '13002', 'Marseille', 43.2985, 5.37197),
(53, 'Gabrielle Geppert', '35 Avenue du 24 Avril 1915', '13012', 'Marseille', 43.3085, 5.42828),
(54, 'H&M', '10 Rue d''Antrechaus', '83000', 'Toulon', 43.1254, 5.93391),
(55, 'Gabrielle Geppert', '20 Rue des Serbes', '6400', 'Cannes', 43.5517, 7.02104),
(56, 'MammaFashion', '4 Rue Sainte-Reparate', '6300', 'Nice', 43.6967, 7.27604);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `accessoires`
--
ALTER TABLE `accessoires`
  ADD CONSTRAINT `fk_CATEGORIEARTICLE` FOREIGN KEY (`CATEGORIE_idCATEGORIE`) REFERENCES `categorie` (`id`);

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `fk_ARTICLE_CATEGORIEARTICLE1` FOREIGN KEY (`CATEGORIEARTICLE_idCATEGORIEARTICLE`) REFERENCES `categoriearticle` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

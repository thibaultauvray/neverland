-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Ven 18 Octobre 2013 à 17:36
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

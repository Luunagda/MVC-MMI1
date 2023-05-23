-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 02 oct. 2022 à 04:45
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `centre_interet`
--

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `idformulaire` int(11) NOT NULL AUTO_INCREMENT,
  `civilite` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact_id_page` int(11) NOT NULL,
  `message` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idformulaire`),
  UNIQUE KEY `idformulaire_UNIQUE` (`idformulaire`),
  KEY `fk_formulaire_page1_idx` (`contact_id_page`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`idformulaire`, `civilite`, `prenom`, `nom`, `email`, `contact_id_page`, `message`) VALUES
(49, 'Monsieur', 'Naoki', 'ClÃ©ment', 'naoki.paris@gmail.com', 5, 'Je t aime'),
(52, 'Madame', 'Camille', 'Prothin', '', 5, ''),
(53, 'Madame', 'Camille', 'Prothin', 'camille.prothin@gmail.com', 5, ''),
(67, 'Madame', 'Cyan', 'Henaff', 'cyanhenaff@gmail.com', 5, 'J ai rÃ©ussi !'),
(68, 'Madame', 'Cyan', 'Henaff', 'cyanhenaff@gmail.com', 5, 'J ai rÃ©ussi !'),
(69, 'Madame', 'Isabelle', 'Dumont', 'isabelle.dumont@cht.nc', 5, '');

-- --------------------------------------------------------

--
-- Structure de la table `dessin`
--

DROP TABLE IF EXISTS `dessin`;
CREATE TABLE IF NOT EXISTS `dessin` (
  `dessin_id_page` int(11) NOT NULL,
  `id_dessin` varchar(45) NOT NULL,
  `titre` varchar(45) NOT NULL,
  `paragraphe` varchar(500) NOT NULL,
  PRIMARY KEY (`id_dessin`),
  KEY `fk_dessin_page1_idx` (`dessin_id_page`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dessin`
--

INSERT INTO `dessin` (`dessin_id_page`, `id_dessin`, `titre`, `paragraphe`) VALUES
(1, 'dessin1', 'Ma vie', 'De mes cinq ans à mes neuf ans, j\'ai pris des cours de dessin pour enfant. Ils consistaient à recopier une image en la dessinant au crayon puis en y mettant de la couleur que ce soit de la peinture ou des pastels gras et secs. Par la suite, j\'ai continué le dessin en autodidacte, en recopiant des dessins de mangas. A partir de 2019, j\'ai commencé à prendre des cours de dessins à l\'atelier Terre et Toile où j\'ai pu apprendre des techniques de dessin académiques.'),
(1, 'dessin2', 'Matériels', 'Pour le dessin, nous pouvons utiliser différents outils pour gommer, mettre de la couleur ou tout simplement dessiner.'),
(1, 'dessin3', 'Productions', 'Voici quelques dessins que j\'ai réalisé dans le cadre de mes cours de dessin. Vous pouvez cliquer dessus.');

-- --------------------------------------------------------

--
-- Structure de la table `liste_images_dessin`
--

DROP TABLE IF EXISTS `liste_images_dessin`;
CREATE TABLE IF NOT EXISTS `liste_images_dessin` (
  `id_images` int(11) NOT NULL AUTO_INCREMENT,
  `sous-titre` varchar(45) DEFAULT NULL,
  `nom_fichier` varchar(45) DEFAULT NULL,
  `alt` varchar(100) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `dessin_id_dessin` varchar(45) NOT NULL,
  PRIMARY KEY (`id_images`),
  UNIQUE KEY `nom_fichier_UNIQUE` (`nom_fichier`),
  UNIQUE KEY `alt_UNIQUE` (`alt`),
  UNIQUE KEY `titre_UNIQUE` (`sous-titre`),
  KEY `fk_liste_images_dessin_dessin1_idx` (`dessin_id_dessin`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `liste_images_dessin`
--

INSERT INTO `liste_images_dessin` (`id_images`, `sous-titre`, `nom_fichier`, `alt`, `type`, `dessin_id_dessin`) VALUES
(12, 'Photo prise par Sidney Tokarski', 'image/moi.JPG', 'Photo de moi.', 'one', 'dessin1'),
(14, 'Le crayon 2B', 'image/crayon_2B.jpg', 'Crayon 2B de la marque Staedtler.', 'carroussel', 'dessin2'),
(15, 'Le fusain', 'image/Fusain.JPG', 'Pile de plusieurs fusains.', 'carroussel', 'dessin2'),
(16, 'La gomme mie de pain', 'image/mie_de_pain.jpg', 'Gomme mie de pain.', 'carroussel', 'dessin2'),
(17, 'Les pastels secs', 'image/pastels_secs.jpg', 'Pastels secs.', 'carroussel', 'dessin2'),
(18, 'Les pastels gras', 'image/pastels-gras.jpg', 'Pastels gras.', 'carroussel', 'dessin2'),
(19, 'La peinture acrylique', 'image/peinture-acrylique.jpg', 'Peinture acrylique.', 'carroussel', 'dessin2'),
(20, 'L\'aquarelle', 'image/aquarelle.jpg', 'Boite d\'aquarelles.', 'carroussel', 'dessin2'),
(21, 'Les crayons de couleurs polychromos', 'image/crayons_polychromos.jpg', 'Crayons de couleurs polychromos Faber-Castell.', 'carroussel', 'dessin2'),
(23, NULL, 'image/femme.jpg', 'Photo d\'un dessin au crayon d\'une femme nue en train de peindre.', 'ligne', 'dessin3'),
(24, NULL, 'image/Chaussures(1).jpg', 'Photo d\'un dessin au crayon d\'une paire de chaussure.', 'ligne', 'dessin3'),
(25, NULL, 'image/Hermès(1).jpg', 'Photo d\'un dessin au crayon de la tête d\'une sculpture d\'Hermès.', 'ligne', 'dessin3'),
(26, NULL, 'image/drapé.jpg', 'Photo d\'un dessin au crayon d\'un drapé.', 'ligne', 'dessin3');

-- --------------------------------------------------------

--
-- Structure de la table `main`
--

DROP TABLE IF EXISTS `main`;
CREATE TABLE IF NOT EXISTS `main` (
  `idmain` int(11) NOT NULL,
  `page_id_page` int(11) NOT NULL,
  `lien_page` varchar(45) NOT NULL,
  `titre_page` varchar(45) NOT NULL,
  `lien_image` varchar(45) NOT NULL,
  `alt` varchar(200) NOT NULL,
  PRIMARY KEY (`idmain`),
  UNIQUE KEY `idmain_UNIQUE` (`idmain`),
  KEY `fk_main_page1_idx` (`page_id_page`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `main`
--

INSERT INTO `main` (`idmain`, `page_id_page`, `lien_page`, `titre_page`, `lien_image`, `alt`) VALUES
(1, 4, '/dessin', 'Le dessin', 'image/dessin1.jpg', 'Photo de quelqu\'un qui dessine au fusain.'),
(2, 4, '/mangas', 'Les mangas', 'image/manga1.jpg', 'Photo de quelqu\'un lisant un manga. La photo est en gros plan sur le manga ouvert.'),
(3, 4, '/wakfu', 'Wakfu', 'image/Wakfu_logo.png', 'Logo de Wakfu.');

-- --------------------------------------------------------

--
-- Structure de la table `manga`
--

DROP TABLE IF EXISTS `manga`;
CREATE TABLE IF NOT EXISTS `manga` (
  `page_id_page` int(11) NOT NULL,
  `id_manga` varchar(45) NOT NULL,
  `nom_fichier` varchar(45) NOT NULL,
  `titre` varchar(45) NOT NULL,
  `alt` varchar(100) NOT NULL,
  `resume` varchar(1000) NOT NULL,
  `auteur` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  PRIMARY KEY (`id_manga`),
  UNIQUE KEY `id_manga_UNIQUE` (`id_manga`),
  KEY `fk_manga_page1_idx` (`page_id_page`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `manga`
--

INSERT INTO `manga` (`page_id_page`, `id_manga`, `nom_fichier`, `titre`, `alt`, `resume`, `auteur`, `slug`) VALUES
(2, 'manga1', 'image/Radiant.jpg', 'Radiant', 'Couverture du premier tome du manga Radiant.', 'Radiant est un manfra (un manga français). Il s\'agit du premier manga français à être édité au Japon et à avoir même un anime composé de deux saisons. Pour l\'instant, seize tomes sont sortis et la série est toujours en cours. L\'histoire parle de Seth, un aspirant sorcier de la région des des Pompo Hills. Comme tous les sorciers, c\'est un « infecté » : un des rares êtres vivants ayant survécu au contact des Némésis, ces créatures tombées du ciel qui contaminent et déciment tous ceux qu\'ils touchent. Son apparente immunité lui a fait choisir une voie qui lui semblait toute désignée : devenir Chasseur et combattre les Némésis. Mais plus que ça, Seth souhaite s\'engager dans une quête qui dépasse la simple chasse aux monstres... Il veut trouver le Radiant, leur berceau présumé et le détruire.', 'Tony Valente', 'radiant'),
(2, 'manga2', 'image/Alice-in-Borderland.jpg', 'Alice in Borderland', 'Couverture du premier tome du manga Alice in Borderland.', 'Netflix a produit une adaptation en série composée pour l\'instant d\'une saison. Au total, la série est composée de dix-huit tomes. L\'histoire parle de Alice, Karube et Chôta, trois potes, trois rêveurs, trois glandeurs, trois garçons en décalage avec la société... qu\'un feu d\'artifice va projeter dans un Japon parallèle et contraindre à affronter des épreuves terrifiantes pour rester en vie ! Plus question de se laisser bercer par le confort, il va falloir agir vite, intelligemment et efficacement pour gagner le répit nécessaire pour commencer à percer l\'univers dangereux et impitoyable de Borderland... Car à Borderland, la survie se gagne au jour le jour, au fil de jeux funestes !', 'Haro Asô', 'alice_in_borderland'),
(2, 'manga3', 'image/silentvoice.jpg', 'A Silent Voice', 'Couverture du premier tome du manga A Silent Voice.', 'Une adaptation en film d\'animation est sortie en 2018. L\'histoire parle de Shoko Nishimiya, sourde depuis sa naissance. Même équipée d’un appareil auditif, elle peine à saisir les conversations. Effrayé par ce handicap, son père a fini par l’abandonner, laissant sa mère l’élever seule. Quand Shoko est transférée dans une nouvelle école, elle s’emploie à surmonter ses difficultés mais, malgré ses efforts pour s’intégrer dans ce nouvel environnement, rien n’y fait : les persécutions se multiplient, menées par Shoya Ishida, le leader de la classe. Psychologiques puis physiques, les agressions du jeune garçon se font de plus en plus violentes... jusqu’au jour où la brimade de trop provoque une plainte de la famille de Shoko et l’intervention du directeur de l’école. À cet instant, tout bascule pour Shoya : ses camarades, qui jusque-là ne manquaient pas eux non plus une occasion de tourmenter la jeune fille, vont se retourner contre lui et le désigner comme seul responsable...', 'Yoshitoki Oima ', 'a_silent_voice');

-- --------------------------------------------------------

--
-- Structure de la table `page`
--

DROP TABLE IF EXISTS `page`;
CREATE TABLE IF NOT EXISTS `page` (
  `id_page` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  PRIMARY KEY (`id_page`),
  UNIQUE KEY `id_page_UNIQUE` (`id_page`),
  UNIQUE KEY `nom_UNIQUE` (`nom`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `page`
--

INSERT INTO `page` (`id_page`, `nom`) VALUES
(4, 'accueil'),
(5, 'contact'),
(1, 'Le dessin'),
(2, 'Les mangas'),
(3, 'Wakfu');

-- --------------------------------------------------------

--
-- Structure de la table `wakfu`
--

DROP TABLE IF EXISTS `wakfu`;
CREATE TABLE IF NOT EXISTS `wakfu` (
  `page_id_page` int(11) NOT NULL,
  `nom_fichier` varchar(45) NOT NULL,
  `titre` varchar(45) NOT NULL,
  `alt` varchar(45) NOT NULL,
  `paragraphe` varchar(800) NOT NULL,
  `id_wakfu` varchar(45) NOT NULL,
  PRIMARY KEY (`id_wakfu`),
  UNIQUE KEY `id_wakfu_UNIQUE` (`id_wakfu`),
  KEY `fk_wakfu_page1_idx` (`page_id_page`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `wakfu`
--

INSERT INTO `wakfu` (`page_id_page`, `nom_fichier`, `titre`, `alt`, `paragraphe`, `id_wakfu`) VALUES
(3, 'image/Yugo.jpg', 'Yugo', 'Image de Yugo, un personnage de Wakfu.', 'Yugo est un jeune garçon de 12 ans qui découvre qu\'il a des pouvoirs. Il a la capacité de se téléporter à courte distance par le biais de portails. Il est en fait un Eliatrope, une civilisation très ancienne et aujourd\'hui disparue. Ils ont pour soeur ou frère jumeau un dragon. Il est toujours accompagné de Az, un petit Tofu. Le frère de Yugo se nomme Adamaï.', 'wakfu1'),
(3, 'image/tristepin.jpg', 'Sir Tristepin de Percedal', 'Image de Tristepin, un personnage de Wakfu.', 'Sir Tristepin de Percedal surnommé Pinpin est un Iop, un chevalier et un gardien Shushu qui ne vit que pour le combat et l\'aventure. Il a prêté allégeance à Yugo après que celui-ci l\'ait délivré de son Shushu (Rubilax) qui avait pris le dessus sur son esprit. Par la suite, il épousera Evangelyne.', 'wakfu2'),
(3, 'image/evangelyne.jpg', 'Evangelyne', 'Image de Evangelyne, un personnage de Wakfu.', 'Evangelyne est une Crâ et aussi la protectrice de la Princesse Amalia. Elle manie parfaitement l\'arc ce qui fait d\'elle une véritable guerrière. On la traite souvent de rabat-joie mais elle est la voix de la raison de la Confrérie du Tofu. Elle se bat avec son arc à invocations qui, comme de nombreux arcs Crâ, permettent de générer des flèches magiques. Par la suite, elle épousera Tristepin.', 'wakfu3'),
(3, 'image/amalia.jpg', 'Amalia Sheran Sharm', 'Image de Amalia, un personnage de Wakfu.', 'Amalia est la fille du Roi Sadida Sheran Sharm. Elle est amie avec Evangelyne qui a pour mission de la protéger. Elle a le pouvoir de contrôler les végétaux et elle comprend la Nature. Elle est aussi accompagnée de sa poupée végétale qu\'elle n\'hésitera pas à utiliser pour se battre. Amalia est une Princesse ce qui fait d\'elle un personnage capricieux et gaté.', 'wakfu4'),
(3, 'image/ruel.jpg', 'Ruel Stroud', 'Image de Ruel, un personnage de Wakfu.', 'Ruel est un vieil ami de Alibert, le père adoptif de Yugo. Il est un chasseur de prime et le représentant des Stroud, célèbre et richissime famille d\'Enutrofs. Comme Amalia, Evangelyne, Tristepin, il rejoint Yugo dans sa quête et fait alors partie de la Confrérie du Tofu.', 'wakfu5'),
(3, 'image/Adamai.jpg', 'Adamaï', 'Image de Adamaï, un personnage de Wakfu.', 'Adamaï est un dragon et le frère jumeau de Yugo. Il rejoindra la Confrérie du Tofu dans ses aventures. En tant que dragon, il a la faculté de se transformer en tout ce qu\'il souhaite. Yugo et lui sont issus d\'un des neufs Dofus Eliatrope.', 'wakfu6');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `fk_formulaire_page1` FOREIGN KEY (`contact_id_page`) REFERENCES `page` (`id_page`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `dessin`
--
ALTER TABLE `dessin`
  ADD CONSTRAINT `fk_dessin_page1` FOREIGN KEY (`dessin_id_page`) REFERENCES `page` (`id_page`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `liste_images_dessin`
--
ALTER TABLE `liste_images_dessin`
  ADD CONSTRAINT `fk_liste_images_dessin_dessin1` FOREIGN KEY (`dessin_id_dessin`) REFERENCES `dessin` (`id_dessin`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `main`
--
ALTER TABLE `main`
  ADD CONSTRAINT `fk_main_page1` FOREIGN KEY (`page_id_page`) REFERENCES `page` (`id_page`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `manga`
--
ALTER TABLE `manga`
  ADD CONSTRAINT `fk_manga_page1` FOREIGN KEY (`page_id_page`) REFERENCES `page` (`id_page`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `wakfu`
--
ALTER TABLE `wakfu`
  ADD CONSTRAINT `fk_wakfu_page1` FOREIGN KEY (`page_id_page`) REFERENCES `page` (`id_page`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

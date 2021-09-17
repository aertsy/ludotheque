-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 17 sep. 2021 à 13:15
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ludotheque`
--

-- --------------------------------------------------------

--
-- Structure de la table `jeux`
--

DROP TABLE IF EXISTS `jeux`;
CREATE TABLE IF NOT EXISTS `jeux` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `titre` char(25) NOT NULL,
  `description` varchar(500) NOT NULL,
  `prix` decimal(7,2) NOT NULL,
  `type` char(50) DEFAULT NULL,
  `plateforme` char(30) DEFAULT NULL,
  `editeur` char(30) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `age` char(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `jeux`
--

INSERT INTO `jeux` (`id`, `titre`, `description`, `prix`, `type`, `plateforme`, `editeur`, `image`, `age`) VALUES
(1, 'Borderlands 3', 'Borderlands 3 (parfois abrégé BL3) est un jeu vidéo de tir à la première personne, développé par Gearbox Software et édité par 2K Games, sorti le 13 septembre 2019 sur PC, PlayStation 4 et Xbox One, puis sur Xbox Series et PlayStation 5 en novembre 2020. Il s\'agit du quatrième jeu principal de la série Borderlands, précédé par Borderlands: The Pre-Sequel! (2014).', '33.58', 'FPS', 'PC', '2K Games', 'Borderlands.jpg', '18+'),
(15, 'The Last of Us', 'Le titre se déroule dans un univers post-apocalyptique après une pandémie provoquée par un champignon, le cordyceps, qui prend le contrôle de ses hôtes humains. Les deux personnages principaux se nomment Joel et Ellie et doivent survivre ensemble alors qu\'ils traversent les États-Unis en ruines.', '15.72', 'Survival Horror', 'PlayStation 4', 'Sony Computer Entertainment', 'LoU.jpg', '18+'),
(5, 'Cyberpunk 2077', 'Cyberpunk 2077 est un jeu vidéo d\'action-RPG en vue à la première personne développé par CD Projekt RED. Le jeu présente un monde futuriste dystopique de type cyberpunk dans lequel la technologie coexiste avec une société humaine dégénérée.', '30.16', 'Action-RPG', 'PlayStation 4', 'CD Projekt', 'Cyberpunk.jpg', '18+'),
(3, 'Batman: Arkham Knight', 'L\'histoire se déroule après les évènements d\'Arkham City. Le jeu propose une ville de Gotham plus grande et, pour la première fois dans la série, la Batmobile est désormais jouable.', '27.49', 'Action-Aventure', 'PlayStation 4', 'Warner Bros. IE', 'BAK.jpg', '18+'),
(6, 'Assassin\'s Creed: Unity', 'L\'intrigue se déroule à Paris lors de la Révolution française2. Le scénario suit l\'histoire d\'Arno Victor Dorian et ses efforts pour exposer au grand jour les véritables responsables de la Révolution.', '23.17', 'Action-Aventure/Infiltration', 'XBox One', 'Ubisoft', 'ACU.jpg', '18+'),
(7, 'L.A. Noire', 'La totalité de l\'action du jeu se déroule en 1947 au cœur de la ville de Los Angeles, gangrénée par la corruption et le trafic de stupéfiants, dans une ambiance proche des romans de James Ellroy. Les producteurs présentent leur jeu comme un roman policier interactif, un récit à suspense qui mélange action et enquête dans des environnements ouverts.', '34.95', 'Action', 'PlayStation 4', 'Rockstar Games', 'LAN.jpg', '18+'),
(8, 'Grand Theft Auto V', 'Grand Theft Auto V est un jeu vidéo d\'action-aventure, développé par Rockstar North et édité par Rockstar Games. Le jeu fait partie de la série vidéoludique Grand Theft Auto.', '19.98', 'Action-Aventure', 'PlayStation 4', 'Rockstar Games', 'GTAV.jpg', '18+'),
(12, 'Brothers', 'Le jeu met en scène deux frères en quête de l\'eau de l\'Arbre de vie pour soigner leur père dans un monde fantastique. Le joueur contrôle les deux frères simultanément et doit les faire coopérer pour triompher des obstacles.', '26.94', 'Aventure', 'PlayStation 4', '505 Games', 'BaTo2s.jpg', '16+'),
(17, 'Hades', 'Hades est un jeu vidéo roguelike d\'action-RPG développé et publié par Supergiant Games, sorti le 17 septembre 2020 sur Microsoft Windows, Mac OS et Nintendo Switch en version dématérialisée puis le 13 août 2021 sur PlayStation 4, PlayStation 5, Xbox One et Xbox Series. La version physique pour la Nintendo Switch est sortie le 19 mars 2021.', '29.99', 'Action-RPG', 'XBox One', 'Supergiant Games', 'Hades.jpg', '12+'),
(19, 'God of War', 'Le jeu est pensé comme un renouveau de la série et est basé sur la mythologie nordique, contrairement aux précédents jeux qui étaient basés sur la mythologie grecque. Ce renouveau de la série s\'est fait dans un but de modernisation du propos tenu par le jeu et de son gameplay, favorisé par l\'insertion d\'un nouveau personnage : Atreus, fils de Kratos, personnage que l\'on incarne toujours.', '16.58', 'Action-Aventure', 'PlayStation 4', 'Sony Interactive Entertainment', 'GoW.jpg', '18+'),
(20, 'Fifa 21', 'FIFA 21 est un jeu vidéo de football développé par EA Canada et EA Roumanie et édité par EA Sports.', '39.50', 'Sport', 'PlayStation 4', 'EA Sports', 'Fifa21.jpg', '3+'),
(21, 'Ghost of Tsushima', 'Le jeu se passe au Japon, en 1274 et s\'inspire de l\'Histoire de cette époque, sans pour autant chercher à la retranscrire fidèlement.', '49.85', 'Action-Aventure', 'PlayStation 4', 'Sony Interactive Entertainment', 'Tsushima.jpg', '18+'),
(23, 'Red Dead Redemption 2', 'Red Dead Redemption est un jeu vidéo d\'action-aventure et de western multiplateforme, développé par Rockstar Studios. Il fait partie de la licence Red Dead et est le successeur du jeu d\'action-aventure Red Dead Redemption.', '28.50', 'Action-Aventure', 'PlayStation 4', 'Rockstar Games', 'RDR2.jpg', '18+'),
(29, 'Heavy Rain', 'Heavy Rain se présente comme un thriller interactif, un film interactif aux thèmes matures et à l\'ambiance sombre dans lequel le joueur est amené à faire des choix qui vont façonner l\'histoire, le jeu proposant 7 fins différentes. Le récit raconte les parcours croisés de quatre personnages qui enquêtent sur un tueur en série. Le thème central repose sur la question : « Jusqu\'où iriez-vous pour sauver l\'être que vous aimez ? », question posée par le tueur au père de l\'une des victimes.', '14.99', 'Film interactif', 'PC', 'Sony Computer Entertainment', 'HR.jpg', '18+'),
(30, 'Dark Souls', 'Le joueur incarne un humain maudit par la Marque Sombre le rendant mort-vivant, et évolue à Lordran dans un monde médiéval-fantastique à la troisième personne. Le jeu se concentre sur la maîtrise du gameplay et l\'utilisation des compétences, armes, armures, magies et objets pour mener à bien les combats, en particulier contre les boss du jeu. Le level design pousse le joueur à explorer l\'environnement.', '20.02', 'Action-RPG', 'PlayStation 4', 'FromSoftware', 'DarkSouls.jpg', '16+');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

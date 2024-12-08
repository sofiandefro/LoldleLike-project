-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 12 mars 2024 à 11:17
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `loldle`
--

-- --------------------------------------------------------

--
-- Structure de la table `appartient_espece`
--

CREATE TABLE `appartient_espece` (
  `ID_CHAMPION` int(2) DEFAULT NULL,
  `ID_ESPECE` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `appartient_espece`
--

INSERT INTO `appartient_espece` (`ID_CHAMPION`, `ID_ESPECE`) VALUES
(1, 1),
(3, 2),
(4, 3),
(6, 4),
(7, 7),
(7, 6),
(8, 5),
(9, 8),
(9, 9),
(10, 10),
(10, 6),
(11, 4),
(12, 4),
(13, 6),
(13, 11),
(14, 12),
(14, 13),
(15, 6),
(15, 11),
(16, 4);

-- --------------------------------------------------------

--
-- Structure de la table `appartient_region`
--

CREATE TABLE `appartient_region` (
  `ID_CHAMPION` int(3) DEFAULT NULL,
  `ID_REGION` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `appartient_region`
--

INSERT INTO `appartient_region` (`ID_CHAMPION`, `ID_REGION`) VALUES
(1, 1),
(1, 2),
(3, 3),
(4, 4),
(6, 5),
(7, 6),
(8, 7),
(8, 8),
(9, 6),
(9, 1),
(10, 9),
(10, 8),
(11, 10),
(12, 1),
(12, 10),
(13, 7),
(14, 10),
(15, 11),
(16, 11);

-- --------------------------------------------------------

--
-- Structure de la table `appartient_role`
--

CREATE TABLE `appartient_role` (
  `ID_ROLE` int(1) DEFAULT NULL,
  `ID_CHAMPION` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `appartient_role`
--

INSERT INTO `appartient_role` (`ID_ROLE`, `ID_CHAMPION`) VALUES
(1, 1),
(2, 3),
(3, 4),
(4, 6),
(1, 7),
(4, 8),
(1, 9),
(1, 10),
(5, 11),
(4, 12),
(1, 13),
(4, 14),
(5, 15),
(4, 16);

-- --------------------------------------------------------

--
-- Structure de la table `appartient_skinline`
--

CREATE TABLE `appartient_skinline` (
  `ID_SKIN` int(3) DEFAULT NULL,
  `ID_LINE` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `appartient_skinline`
--

INSERT INTO `appartient_skinline` (`ID_SKIN`, `ID_LINE`) VALUES
(1, 11),
(2, 1),
(3, 11),
(4, 2),
(5, 11),
(6, 3),
(7, 11),
(8, 4),
(9, 11),
(10, 5),
(11, 11),
(12, 6),
(13, 11),
(14, 7),
(15, 11),
(16, 8),
(17, 11),
(18, 9),
(19, 11),
(20, 9),
(21, 11),
(22, 7),
(23, 11),
(24, 9),
(25, 11),
(26, 10),
(27, 11),
(28, 8);

-- --------------------------------------------------------

--
-- Structure de la table `champion`
--

CREATE TABLE `champion` (
  `ID_CHAMPION` int(3) NOT NULL,
  `ID_GENRE` int(1) DEFAULT NULL,
  `ID_RESSOURCE` int(2) DEFAULT NULL,
  `NOM_CHAMPION` varchar(20) DEFAULT NULL,
  `ANNEE` int(11) DEFAULT NULL,
  `IMAGE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `champion`
--

INSERT INTO `champion` (`ID_CHAMPION`, `ID_GENRE`, `ID_RESSOURCE`, `NOM_CHAMPION`, `ANNEE`, `IMAGE`) VALUES
(1, 1, 1, 'aatrox', 2013, 'https://static.wikia.nocookie.net/leagueoflegends/images/9/92/Aatrox_OriginalSkin.jpg/revision/latest?cb=20181021120902'),
(3, 2, 2, 'briar', 2023, 'https://static.wikia.nocookie.net/leagueoflegends/images/2/2f/Briar_OriginalSkin.jpg/revision/latest?cb=20230831160805'),
(4, 1, 3, 'cho\'gath', 2009, 'https://static.wikia.nocookie.net/leagueoflegends/images/d/d8/Cho%27Gath_OriginalSkin.jpg/revision/latest?cb=20181021091106'),
(6, 1, 3, 'heimerdinger', 2009, 'https://static.wikia.nocookie.net/leagueoflegends/images/a/aa/Heimerdinger_OriginalSkin.jpg/revision/latest?cb=20181021043654'),
(7, 2, 3, 'illaoi', 2015, 'https://static.wikia.nocookie.net/leagueoflegends/images/0/0b/Illaoi_OriginalSkin.jpg/revision/latest?cb=20181021053828'),
(8, 2, 3, 'soraka', 2009, 'https://static.wikia.nocookie.net/leagueoflegends/images/6/66/Soraka_OriginalSkin.jpg/revision/latest?cb=20181021094844'),
(9, 1, 3, 'tahm kench', 2015, 'https://static.wikia.nocookie.net/leagueoflegends/images/1/17/Tahm_Kench_OriginalSkin.jpg/revision/latest?cb=20181021105930'),
(10, 1, 3, 'taric', 2009, 'https://static.wikia.nocookie.net/leagueoflegends/images/d/d4/Taric_OriginalSkin.jpg/revision/latest?cb=20181021071059'),
(11, 1, 3, 'teemo', 2009, 'https://static.wikia.nocookie.net/leagueoflegends/images/3/3b/Teemo_OriginalSkin.jpg/revision/latest?cb=20181021055924'),
(12, 1, 3, 'veigar', 2009, 'https://static.wikia.nocookie.net/leagueoflegends/images/8/89/Veigar_OriginalSkin.jpg/revision/latest?cb=20181021053947'),
(13, 1, 4, 'yasuo', 2013, 'https://static.wikia.nocookie.net/leagueoflegends/images/3/39/Yasuo_OriginalSkin.jpg/revision/latest?cb=20181021032917'),
(14, 2, 3, 'yuumi', 2019, 'https://static.wikia.nocookie.net/leagueoflegends/images/9/9b/Yuumi_OriginalSkin.jpg/revision/latest?cb=20190430193606'),
(15, 2, 3, 'zeri', 2022, 'https://static.wikia.nocookie.net/leagueoflegends/images/6/6f/Zeri_OriginalSkin.jpg/revision/latest?cb=20220125163450'),
(16, 1, 3, 'ziggs', 2012, 'https://static.wikia.nocookie.net/leagueoflegends/images/9/93/Ziggs_OriginalSkin.jpg/revision/latest?cb=20181021104706');

-- --------------------------------------------------------

--
-- Structure de la table `citation`
--

CREATE TABLE `citation` (
  `ID_CITATION` int(4) NOT NULL,
  `ID_CHAMPION` int(3) DEFAULT NULL,
  `CITATION` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `citation`
--

INSERT INTO `citation` (`ID_CITATION`, `ID_CHAMPION`, `CITATION`) VALUES
(1, 1, 'Now, hear the silence of annihilation!'),
(2, 1, 'Let me end this!'),
(3, 3, 'Nice to meet you! I\'m hungry. I mean... Briar!'),
(4, 3, 'Ahh... Is this what people call \'strategy\'?'),
(5, 4, 'You\'d wish the world you know to end! Yeeeesssss...'),
(6, 4, 'Afraid of the dark? Wise!'),
(7, 6, 'Not enough variables... hmm... not nearly enough variables.'),
(8, 6, '42... there\'s just something about that number.'),
(9, 7, 'I\'m not big on sermons—broken bones teach better lessons.'),
(10, 7, 'Life is too short for fear.'),
(11, 8, 'Let me guide you.'),
(12, 8, 'Every step, a new journey.'),
(13, 9, 'Appelez moi roi, Appelez moi démon - l\'eau oublie toujours le nom des noyés.'),
(14, 9, ' Quel délice !'),
(15, 10, ' Mieux que des pierres précieuses, je vous apporte un pouvoir ancestral.'),
(16, 10, 'Vous n\'êtes que du verre qui attend d\'être pilé'),
(17, 11, 'Capitaine Teemo au rapport !'),
(18, 11, 'Hop, deux, trois, quatre !'),
(19, 11, 'Armé et paré !'),
(20, 12, ' Sachez que si les choses étaient différentes, je n\'aurais aucune pitié pour vous'),
(21, 12, 'Même la mort tremble devant moi.'),
(22, 12, 'Si vous niez la noirceur de votre âme, vous niez votre puissance !'),
(23, 13, 'Death is like the wind—always by my side.'),
(24, 13, 'No cure for fools'),
(25, 14, 'You and me, we got this!'),
(26, 15, 'A spark is all I need!'),
(27, 16, 'On va faire un carton.'),
(28, 16, 'Ça va chauffer ! ');

-- --------------------------------------------------------

--
-- Structure de la table `competence`
--

CREATE TABLE `competence` (
  `ID_COMPETENCE` int(4) NOT NULL,
  `ID_CHAMPION` int(3) DEFAULT NULL,
  `ID_EMPLACEMENT` int(1) DEFAULT NULL,
  `NOM_COMPETENCE` varchar(20) DEFAULT NULL,
  `DESCRIPTION_COMPETENCE` text DEFAULT NULL,
  `IMAGE_COMPETENCE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `competence`
--

INSERT INTO `competence` (`ID_COMPETENCE`, `ID_CHAMPION`, `ID_EMPLACEMENT`, `NOM_COMPETENCE`, `DESCRIPTION_COMPETENCE`, `IMAGE_COMPETENCE`) VALUES
(1, 1, 1, 'Deathbringer Stance', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/c/cc/Aatrox_Deathbringer_Stance.png/revision/latest?cb=20210827172730'),
(2, 1, 2, 'The Darkin Blade', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/a/a8/Aatrox_The_Darkin_Blade.png/revision/latest?cb=20210827172951'),
(3, 1, 3, 'Infernal Chains', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/3/32/Aatrox_Infernal_Chains.png/revision/latest?cb=20210827172809'),
(4, 1, 4, 'Umbral Dash', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/2/2f/Aatrox_Umbral_Dash.png/revision/latest?cb=20210827172650'),
(5, 1, 5, 'World Ender', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/7/72/Aatrox_World_Ender.png/revision/latest?cb=20210827173023'),
(6, 3, 1, 'Crimson Curse', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/d/d1/Briar_Crimson_Curse.png/revision/latest?cb=20230830153544'),
(7, 3, 2, 'Head Rush', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/6/69/Briar_Head_Rush.png/revision/latest?cb=20230830153546'),
(8, 3, 3, 'Blood Frenzy', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/8/88/Briar_Blood_Frenzy.png/revision/latest?cb=20240106212833'),
(9, 3, 4, 'Chilling Scream', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/6/67/Briar_Chilling_Scream.png/revision/latest?cb=20230830153543'),
(10, 3, 5, 'Certain Death', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/8/81/Briar_Certain_Death.png/revision/latest?cb=20230830153541'),
(11, 4, 1, 'Carnivore', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/f/f1/Cho%27Gath_Carnivore.png/revision/latest?cb=20160608020152'),
(12, 4, 2, 'Rupture', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/5/50/Cho%27Gath_Rupture.png/revision/latest?cb=20160608020307'),
(13, 4, 3, 'Feral Scream', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/3/39/Cho%27Gath_Feral_Scream.png/revision/latest?cb=20160608020244'),
(14, 4, 4, 'Vorpal Spikes', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/b/b7/Cho%27Gath_Vorpal_Spikes.png/revision/latest?cb=20160608020336'),
(15, 4, 5, 'Feast', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/2/2e/Cho%27Gath_Feast.png/revision/latest?cb=20160608020218'),
(16, 6, 1, 'Hextech Affinity', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/0/03/Heimerdinger_Hextech_Affinity.png/revision/latest?cb=20140317234847'),
(17, 6, 2, 'H-28G Evolution Turr', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/4/41/Heimerdinger_H-28G_Evolution_Turret.png/revision/latest?cb=20140317235031'),
(18, 6, 3, 'Hextech Micro-Rocket', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/8/8b/Heimerdinger_Hextech_Micro-Rockets.png/revision/latest?cb=20140317235430'),
(19, 6, 4, 'CH-2 Electron Storm ', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/6/67/Heimerdinger_CH-2_Electron_Storm_Grenade.png/revision/latest?cb=20170128142731'),
(20, 6, 5, 'UPGRADE!!!', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/1/19/Heimerdinger_UPGRADE%21%21%21.png/revision/latest?cb=20140317235913'),
(21, 7, 1, 'Prophet of an Elder ', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/6/67/Illaoi_Prophet_of_an_Elder_God.png/revision/latest?cb=20171221041357'),
(22, 7, 2, 'Tentacle Smash', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/4/4b/Illaoi_Tentacle_Smash.png/revision/latest?cb=20171221041559'),
(23, 7, 3, 'Harsh Lesson', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/b/b1/Illaoi_Harsh_Lesson.png/revision/latest?cb=20171221041202'),
(24, 7, 4, 'Test of Spirit', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/2/2d/Illaoi_Test_of_Spirit.png/revision/latest?cb=20171221041654'),
(25, 7, 5, 'Leap of Faith', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/f/f7/Illaoi_Leap_of_Faith.png/revision/latest?cb=20171221041252'),
(26, 8, 1, 'Salvation', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/7/7f/Soraka_Salvation.png/revision/latest?cb=20170818194902'),
(27, 8, 2, 'Starcall', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/8/80/Soraka_Starcall.png/revision/latest?cb=20170818194914'),
(28, 8, 3, 'Astral Infusion', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/4/48/Soraka_Astral_Infusion.png/revision/latest?cb=20170818194809'),
(29, 8, 4, 'Equinox', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/7/7d/Soraka_Equinox.png/revision/latest?cb=20170818194837'),
(30, 8, 5, 'Wish', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/a/a6/Soraka_Wish.png/revision/latest?cb=20170818194929'),
(31, 9, 1, 'An Acquired Taste', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/6/60/Tahm_Kench_An_Acquired_Taste.png/revision/latest?cb=20150623185327'),
(32, 9, 2, 'Tongue Lash', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/e/ea/Tahm_Kench_Tongue_Lash.png/revision/latest?cb=20150623185326'),
(33, 9, 3, 'Abyssal Dive', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/9/99/Tahm_Kench_Abyssal_Dive.png/revision/latest?cb=20150629022326'),
(34, 9, 4, 'Thick Skin', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/c/c2/Tahm_Kench_Thick_Skin.png/revision/latest?cb=20150623185325'),
(35, 9, 5, 'Devour', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/7/70/Tahm_Kench_Devour.png/revision/latest?cb=20150623185326'),
(36, 10, 1, 'Bravado', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/8/84/Taric_Bravado.png/revision/latest?cb=20160608034459'),
(37, 10, 2, 'Starlight\'s Touch', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/8/89/Taric_Starlight%27s_Touch.png/revision/latest?cb=20160608034623'),
(38, 10, 3, 'Bastion', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/4/48/Taric_Bastion.png/revision/latest?cb=20160608034438'),
(39, 10, 4, 'Dazzle', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/5/5d/Taric_Dazzle.png/revision/latest?cb=20160608034559'),
(40, 10, 5, 'Cosmic Radiance', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/4/49/Taric_Cosmic_Radiance.png/revision/latest?cb=20160608034537'),
(41, 11, 1, 'Guerrilla Warfare', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/3/3a/Teemo_Guerrilla_Warfare.png/revision/latest?cb=20171221034119'),
(42, 11, 2, 'Blinding Dart', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/9/9a/Teemo_Blinding_Dart.png/revision/latest?cb=20171221034010'),
(43, 11, 3, 'Move Quick', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/9/97/Teemo_Move_Quick.png/revision/latest?cb=20171221034155'),
(44, 11, 4, 'Toxic Shot', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/5/55/Teemo_Toxic_Shot.png/revision/latest?cb=20171221034302'),
(45, 11, 5, 'Noxious Trap', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/5/5e/Teemo_Noxious_Trap.png/revision/latest?cb=20171221034223'),
(46, 12, 1, 'Phenomenal Evil Powe', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/1/16/Veigar_Phenomenal_Evil_Power.png/revision/latest?cb=20171223040114'),
(47, 12, 2, 'Baleful Strike', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/0/03/Veigar_Baleful_Strike.png/revision/latest?cb=20171223040029'),
(48, 12, 3, 'Dark Matter', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/f/fc/Veigar_Dark_Matter.png/revision/latest?cb=20171223040046'),
(49, 12, 4, 'Event Horizon', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/7/72/Veigar_Event_Horizon.png/revision/latest?cb=20171223040100'),
(50, 12, 5, 'Primordial Burst', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/7/7c/Veigar_Primordial_Burst.png/revision/latest?cb=20171223040128'),
(51, 16, 1, 'Short Fuse', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/8/8e/Ziggs_Short_Fuse.png/revision/latest?cb=20130929123520'),
(52, 16, 2, 'Bouncing Bomb', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/8/85/Ziggs_Bouncing_Bomb.png/revision/latest?cb=20130929123517'),
(53, 16, 3, 'Satchel Charge', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/b/b8/Ziggs_Satchel_Charge.png/revision/latest?cb=20130929123519'),
(54, 16, 4, 'Hexplosive Minefield', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/7/76/Ziggs_Hexplosive_Minefield.png/revision/latest?cb=20130929123518'),
(55, 16, 5, 'Mega Inferno Bomb', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/d/d4/Ziggs_Mega_Inferno_Bomb.png/revision/latest?cb=20130929123518'),
(56, 15, 1, 'Living Battery', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/5/55/Zeri_Living_Battery_2.png/revision/latest?cb=20220108011853'),
(57, 15, 2, 'Burst Fire', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/1/1e/Zeri_Burst_Fire.png/revision/latest?cb=20220107163524'),
(58, 15, 3, 'Ultrashock Laser', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/4/45/Zeri_Ultrashock_Laser.png/revision/latest?cb=20220107163540'),
(59, 15, 4, 'Spark Surge', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/b/b7/Zeri_Spark_Surge.png/revision/latest?cb=20220107163536'),
(60, 15, 5, 'Lightning Crash', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/2/23/Zeri_Lightning_Crash.png/revision/latest?cb=20220107163528'),
(61, 14, 1, 'Feline Friendship', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/a/af/Yuumi_Feline_Friendship.png/revision/latest?cb=20230225002044'),
(62, 14, 2, 'Prowling Projectile', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/3/34/Yuumi_Prowling_Projectile.png/revision/latest?cb=20190426210430'),
(63, 14, 3, 'You and Me!', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/b/b2/Yuumi_You_and_Me%21.png/revision/latest?cb=20190426210438'),
(64, 14, 4, 'Zoomies', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/1/16/Yuumi_Zoomies.png/revision/latest?cb=20190426210300'),
(65, 14, 5, 'Final Chapter', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/6/6d/Yuumi_Final_Chapter.png/revision/latest?cb=20190426210401'),
(66, 13, 1, 'Way of the Wanderer', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/2/2a/Yasuo_Way_of_the_Wanderer.png/revision/latest?cb=20131122024030'),
(67, 13, 2, 'Steel Tempest', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/0/09/Yasuo_Steel_Tempest.png/revision/latest?cb=20170818200123'),
(68, 13, 3, 'Wind Wall', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/2/2c/Yasuo_Wind_Wall.png/revision/latest?cb=20131122024151'),
(69, 13, 4, 'Sweeping Blade', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/c/c9/Yasuo_Sweeping_Blade.png/revision/latest?cb=20170818200138'),
(70, 13, 5, 'Last Breath', '', 'https://static.wikia.nocookie.net/leagueoflegends/images/f/f0/Yasuo_Last_Breath.png/revision/latest?cb=20170818200046');

-- --------------------------------------------------------

--
-- Structure de la table `emplacement`
--

CREATE TABLE `emplacement` (
  `ID_EMPLACEMENT` int(1) NOT NULL,
  `NOM_EMPLACEMENT` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `emplacement`
--

INSERT INTO `emplacement` (`ID_EMPLACEMENT`, `NOM_EMPLACEMENT`) VALUES
(1, 'P'),
(2, 'A'),
(3, 'Z'),
(4, 'E'),
(5, 'R');

-- --------------------------------------------------------

--
-- Structure de la table `espece`
--

CREATE TABLE `espece` (
  `ID_ESPECE` int(2) NOT NULL,
  `NOM_ESPECE` varchar(20) DEFAULT NULL,
  `DESCRIPTION_ESPECE` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `espece`
--

INSERT INTO `espece` (`ID_ESPECE`, `NOM_ESPECE`, `DESCRIPTION_ESPECE`) VALUES
(1, 'darkin', 'Darkin are corrupted God-Warriors who were traumatized by the horrors of the Void War as well as self infliction by the use of blood magic. Currently, all known Darkin have been imprisoned in weapons, unable to ever regain their original Ascended forms.'),
(2, 'golem', 'Whether organic or inorganic in origin, Golems are artificial constructs designed or inevitably created by sentient hands to provide a tireless aide for the plethora of purposes it was made for, usually combining multiple capabilities for a multitude of work or a focused specialty otherwise unachievable by a normal person. Golems are made with either a semblance of intelligence or full-fledged sentience, although creation of them are frowned upon by people for reasons ranging from ethical to moral.'),
(3, 'être du néant', 'To be a mortal touched by this power is to suffer an agonizing glimpse of eternal unreality, enough to shatter even the strongest mind. Denizens of the Void realm itself are construct-creatures, often of only limited sentience, but tasked with a singular purpose - to usher in total oblivion across Runeterra.'),
(4, 'yordle', 'The Yordle are a race of spirits who generally take the appearance of mammalian bipeds. They mostly reside in a mystical place known as Bandle City, though some of them have ventured out to live in numerous locations around Runeterra.'),
(5, 'céleste', 'A race of enigmatic beings wielding powers that are said to be godlike, Celestials are the universe\'s protectors and caretakers, seeding and influencing the tide of the world\'s past, present and future towards the greater good. Some interfere directly, as with the case of Soraka\'s crusade of healing and restoration, while others choose to contribute as a hidden hand, as is Bard\'s way to protect the multiverse from falling to destruction. Most of them are revered as powerful deities or guardians but they share the same mystery and bond with the heavenly firmaments.'),
(6, 'humain', 'Humans are the dominant sapient life forms of Runeterra Crest icon Runeterra. While their point of origin on the planet is currently unknown, the majority of human diaspora arrived from either the eastern lands beyond Ionia Crest icon Ionia, Ionia itself, or the Freljord Crest icon Freljord. They have a great variety of appearances, strengths and magical powers. Humans have the chance to be empowered by a variety of magical sources, turning into Ascended, Undead, or Vastayashai’rei. Humans are able to reproduce with Ascended, Vastayashai’rei, and Vastaya, birthing individuals that have some or all of the physical and/or magical abilities of their magically attuned parents. Cyborgs are humans who have augmented themselves by technology, with some individuals going so far as to be completely replace their human body parts with technology, effectively turning into technological Golem.'),
(7, 'spiritualiste', 'The Spirit Realm, or Spirit World, is a parallel pocket of existence to the physical realm, both of which make up the realm of existence of Runeterra Crest icon Runeterra. It is the home and origin place of the Spirits. While most (if not all) spirits seem to cross easily to the physical realm, mortals can only visit the spirit realm while in death or having powerful spiritual prowess.\r\n\r\nVery little is known about the spirit world, usually through tales and myths. What it is known is that a place where time and space function differently from the physical realm. The Spirit World seems to be separated by smaller regions or realms.'),
(8, 'démon', 'The Demons are a race of spirits with no inherent form, who are forged and driven by the negative thoughts and feelings of mortals. Specifically, demons malign and manipulate victims to sate their own desires for suffering. Each demon is attuned to a specific emotion, feeding on those emotions until the victim inevitably dies. They have been sighted in numerous locations around Runeterra Crest icon Runeterra but they mostly manifest where there is a lot of turmoil and despair.'),
(9, 'spirit', 'As creatures that inhabit the ether and are divorced from the mortality that mortals suffer, spirits are similar to Celestials in a sense that they help maintain the balance of the natural world, intervening every now and then, whether the causes they support are maligned by mortals or revered by them.\r\nSpirits are deathless, returning to the ether when their physical vessels are destroyed and return again to continue their crusade. Often these spirits beings, or spirits empowered beings, also seem to have some sort of natural ability to alter their physicality. Spirits are seemingly not tied to a shape or to time in the same way physical beings are.'),
(10, 'hôte', 'The term Aspect Host refers to humans magically altered and usually made hosts to the Aspects of Targon Prime.'),
(11, 'né magique', 'Magical individuals, also commonly known as Mages, are beings that have either been born with magical properties or gain magical abilities through some form of training. There are a huge variety of different magical abilities that these indiviuals are capable of but almost all of them utilize magical energies pulled from the Material, Spiritual and Celestial realms. Some have been magically altered to become completely unique beings entirely.'),
(12, 'chat', 'Le chat domestique est l’un des principaux animaux de compagnie et compte aujourd’hui une cinquantaine de races différentes reconnues par les instances de certification. Dans de très nombreux pays, le chat entre dans le cadre de la législation sur les carnivores domestiques à l’instar du chien et du furet. Essentiellement territorial, le chat est un prédateur de petites proies comme les rongeurs ou les oiseaux. Les chats ont diverses vocalisations dont les ronronnements, les miaulements, les feulements ou les grognements, bien qu’ils communiquent principalement par des positions faciales et corporelles et des phéromones.'),
(13, 'altéré magiquement', 'There are individuals who had their bodies altered, willingly or unwillingly, by magic. Magical Alteration can happen to anyone or anything like a doll doll. Most of these were changed by powers originating from higher magical beings:  God-Warriors, Darkin, Celestials. Celestial artifacts like the world runes are also able to alter one\'s physical and/or magical features. Others were changed by powerful natural magic such as the waters on the Blessed Isles Crest icon Blessed Isles, which used to heal wounds.');

-- --------------------------------------------------------

--
-- Structure de la table `est_de_portee`
--

CREATE TABLE `est_de_portee` (
  `ID_CHAMPION` int(3) DEFAULT NULL,
  `ID_TYPE_DE_PORTEE` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `est_de_portee`
--

INSERT INTO `est_de_portee` (`ID_CHAMPION`, `ID_TYPE_DE_PORTEE`) VALUES
(1, 1),
(3, 1),
(4, 1),
(6, 2),
(7, 1),
(8, 2),
(9, 1),
(10, 1),
(11, 2),
(12, 2),
(13, 1),
(14, 2),
(15, 2),
(16, 2);

-- --------------------------------------------------------

--
-- Structure de la table `est_sur_lane`
--

CREATE TABLE `est_sur_lane` (
  `ID_CHAMPION` int(3) DEFAULT NULL,
  `ID_LANE` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `est_sur_lane`
--

INSERT INTO `est_sur_lane` (`ID_CHAMPION`, `ID_LANE`) VALUES
(1, 1),
(3, 5),
(4, 1),
(6, 4),
(6, 3),
(7, 1),
(8, 3),
(9, 1),
(9, 3),
(10, 3),
(11, 1),
(12, 4),
(13, 4),
(14, 3),
(15, 2),
(16, 2),
(16, 4);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `ID_GENRE` int(1) NOT NULL,
  `GENRE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`ID_GENRE`, `GENRE`) VALUES
(1, 'masculin'),
(2, 'feminin'),
(3, 'neutre');

-- --------------------------------------------------------

--
-- Structure de la table `lane`
--

CREATE TABLE `lane` (
  `ID_LANE` int(1) NOT NULL,
  `NOM_LANE` varchar(20) DEFAULT NULL,
  `DESCRIPTION_LANE` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `lane`
--

INSERT INTO `lane` (`ID_LANE`, `NOM_LANE`, `DESCRIPTION_LANE`) VALUES
(1, 'top', 'c\'est en haut'),
(2, 'adc', 'il tire beaucoup'),
(3, 'support', 'toujours avec l\'adc il est un support mental et physique'),
(4, 'mid', 'il est milieu'),
(5, 'jungler', 'il est dans la jungle');

-- --------------------------------------------------------

--
-- Structure de la table `line`
--

CREATE TABLE `line` (
  `ID_LINE` int(3) NOT NULL,
  `NOM_LINE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `line`
--

INSERT INTO `line` (`ID_LINE`, `NOM_LINE`) VALUES
(1, 'bloodmoon'),
(2, 'streetdemon'),
(3, 'shanhaiscroll'),
(4, 'dragontrainer'),
(5, 'resistance'),
(6, 'starguardian'),
(7, 'highnoon'),
(8, 'poolparty'),
(9, 'bee'),
(10, 'oceansong'),
(11, 'default');

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

CREATE TABLE `region` (
  `ID_REGION` int(2) NOT NULL,
  `NOM_REGION` varchar(20) DEFAULT NULL,
  `DESCRIPTION_REGION` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `region`
--

INSERT INTO `region` (`ID_REGION`, `NOM_REGION`, `DESCRIPTION_REGION`) VALUES
(1, 'runeterra', 'Runeterra (meaning magic earth) is a plane of existence composed of the physical realm: an oblate spheroid planet and the Spirit Realm. It is also the fictional world where most of the lore of the League of Legends icon League of Legends intellectual property takes place. Runeterra is part of the larger Runeterra Map profileicon Runeterra Prime universe. The currently known continents the planet comprises are Valoran, Shurima and the Camavoran Continent. It also boasts several large bodies of water, such as the currently known 18 Seas (like the Conqueror\'s Sea and the Guardian\'s Sea), and 2 Oceans with several archipelagos and islands around them (like Ionia, the Serpent Isles, and the Shadow Isles). The planet orbits around a G-type star while a natural satellite moon orbits around the planet. Runeterra\'s sun and moon also even mirrored equivalents in the spirit realm.'),
(2, 'shurima', 'The empire of Shurima was once a thriving civilization that spanned a vast desert. After an era of growth and prosperity, the fall fall of its gleaming capital left the empire in ruins. Over millennia, tales of Shurima\'s glorious city became myth and religion among the descendants of the scattered survivors. Most of the nomadic nomadic inhabitants of Shurima search for basic sustenance in an unforgiving land. Some defend small outposts built around a few oases. Others hunt buried riches among the ruins of the fallen empire, or obtain mercenary mercenary work, taking coin for their deeds before disappearing back into the sands. Now, the tribes are stirred by whispers from the heart of the desert: the city of Shurima has risen risen again.'),
(3, 'noxus', 'Noxus is a powerful empire with a fearsome reputation. To those beyond its borders, Noxus is brutal, expansionist, and threatening, yet those who look beyond its warlike exterior see an unusually inclusive society, where the strengths and talents of its people are respected and cultivated. Its people were once a fierce reaver culture until they stormed the ancient city that now lies at the heart of their empire. Under threat from all sides, they aggressively took the fight to their enemies, pushing their borders outward with every passing year. This struggle for survival has made the Noxians a deeply proud people who value strength above all, though that strength can manifest by many different means. Anyone can rise to a position of power and respect within Noxus if they display the necessary aptitude, regardless of social standing, background, homeland, or wealth.'),
(4, 'neant', 'Screaming into existence with the birth of the universe, the Void is a manifestation of the unknowable nothingness that lies beyond. It is a force of insatiable hunger, waiting through the eons until its masters, the mysterious Watchers, mark the final time of undoing. To be a mortal touched by this power is to suffer an agonizing glimpse of eternal unreality, enough to shatter even the strongest mind. Denizens of the Void realm itself are construct-creatures, often of only limited sentience, but tasked with a singular purpose - to usher in total oblivion across Runeterra.'),
(5, 'piltover', 'Piltover, also known as the City of Progress, is a thriving, progressive city whose power and influence is on the rise. It is Valoran\'s cultural center, where art, craftsmanship, trade and innovation walk hand in hand. Its power comes not through military might, but the engines of commerce and forward thinking. Situated on the cliffs above the district of Zaun Crest icon Zaun and overlooking the ocean, fleets of ships pass through its titanic sea-gates, bringing goods from all over the world. The wealth this generates has given rise to an unprecedented boom in the city\'s growth. Piltover has - and still is - reinventing itself as a city where fortunes can be made and dreams can be lived. Burgeoning merchant clans fund development in the most incredible endeavors: grand artistic follies, esoteric hextech research, and architectural monuments to their power. With ever more inventors delving into the emergent lore of hextech, Piltover has become a lodestone for the most skilled craftsmen the world over.'),
(6, 'bilgewater', 'Bilgewater is a haven for smugglers, marauders, and the unscrupulous, where fortunes are made and ambitions shattered in the blink of an eye. For those fleeing justice, debt, or persecution, it is a city of new beginnings; no one on the twisted streets of Bilgewater cares about your past. It\'s a melting pot of cultures, races, and creeds, alive with activity at all hours. While incredibly dangerous, Bilgewater is also ripe with opportunity, free from the shackles of government, regulation, and moral constraints. If you have the coin, almost anything can be purchased in Bilgewater, from outlawed hextech to the favor of local crime lords. Nevertheless, come daybreak, the unwary are found floating in the harbor, their purses empty and their throats slit.'),
(7, 'ionia', 'Ionia, in original Vastayan nomenclature: The First Lands, is a land of unspoiled beauty and natural magic. Its inhabitants, living in scattered settlements across this massive archipelago, are a spiritual people who seek to live in harmony and balance with the world. There are many orders and sects across Ionia, each following their own (often conflicting) paths and ideals. Self-sufficient and isolationist, Ionia has remained largely neutral in the wars that have ravaged Valoran over the centuries - until it was invaded by Noxus Crest icon Noxus. This brutal conflict and occupation has forced Ionia to reassess its place in the world. How it reacts and the future path Ionia will follow is as of yet undetermined, however, animosity against Noxus has led to militarization and vigilantism. Thirst for the dark arts is on the rise.'),
(8, 'targon', 'Like any place of myth, Mount Targon is a beacon to dreamers, madmen and questors of adventure. A mountainous and sparsely inhabited region to the west of Shurima Crest icon Shurima, Targon boasts the tallest peak in Runeterra. Located far from civilization, Mount Targon is all but impossible to reach, save by the most determined pilgrims, chasing some soul-deep yearning to reach its summit. Those hardy few who survive the arduous journey to the foot of the titanic mountain find a sky shimmering with celestial bodies; the sun and moons, but also constellations, planets, fiery comets that streak the darkness, and auspicious arrangements of stars. They return haunted and empty, or changed beyond all recognition. The people living at the mountain\'s base believe these to be aspects of long-vanished stellar beings, creatures powerful and ancient on a scale beyond human comprehension.[1] However, Mount Targon is simply a way into the celestial realm, and it would be wrong to attribute much in the way of mortal sensibilities, morals or concerns to what lies beyond the mountain.'),
(9, 'demacia', 'A strong, lawful kingdom with a prestigious military history, Demacia\'s people have always valued the ideals of justice, honor, and duty most highly, and are fiercely proud of their cultural heritage. But in spite of these lofty principles, this largely self-sufficient nation has grown more insular and isolationist in recent centuries.Now, Demacia is a kingdom in turmoil.The capital, the Great City of Demacia, was founded as a refuge from sorcery after the nightmare of the Rune Wars, and built upon the riddle of petricite—a peculiar white stone that dampens magical energy. It is from here that the royal family has long seen to the defense of the outlying towns and villages, farmland, forests, and mountains rich with mineral resources.'),
(10, 'bandle', 'Opinions differ as to where exactly the home of the yordles is to be found, though a handful of mortals claim to have traveled unseen pathways to a land of curious enchantment beyond the material realm. They tell of a place of unfettered magic, where the foolhardy can be led astray by myriad wonders, and end up lost in a dream...In Bandle City, it is said that every sensation is heightened for non-yordles. Colors are brighter. Food and drink intoxicates the senses for years and, once tasted, will never be forgotten. The sunlight is eternally golden, the waters crystal clear, and every harvest brings a fruitful bounty. Perhaps some of these claims are true, or maybe none—for no two taletellers ever seem to agree on what they actually saw. Only one thing is known for certain, and that is the timeless quality of Bandle City and its inhabitants. This might explain why those mortals who find their way back often appear to have aged tremendously, while many more never return at all.'),
(11, 'zaun', 'Zaun, also known as the City of Iron and Glass, is a large undercity district lying in the deep canyons and valleys threading Piltover Crest icon Piltover. What light reaches below is filtered through fumes leaking from the tangles of corroded pipework and reflected from the stained glass of its industrial architecture. Zaun and Piltover were once united, but are now separate, yet symbiotic societies. Though it exists in perpetual smogged twilight, Zaun thrives, its people vibrant and its culture rich. Piltover\'s wealth has allowed Zaun to develop in tandem; a dark mirror of the city above. Many of the goods coming to Piltover find their way into Zaun\'s black markets, and hextech inventors who find the restrictions placed upon them in the city above too restrictive often find their dangerous researches welcomed in Zaun. Unfettered development of volatile technologies and reckless industry has rendered whole swathes of Zaun polluted and dangerous. Streams of toxic runoff stagnate in the city\'s lower reaches, but even here people find a way to exist and prosper.');

-- --------------------------------------------------------

--
-- Structure de la table `ressource`
--

CREATE TABLE `ressource` (
  `ID_RESSOURCE` int(2) NOT NULL,
  `NOM_RESSOURCE` varchar(20) DEFAULT NULL,
  `DESCRIPTION_RESSOURCE` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ressource`
--

INSERT INTO `ressource` (`ID_RESSOURCE`, `NOM_RESSOURCE`, `DESCRIPTION_RESSOURCE`) VALUES
(1, 'sans mana', 'Manaless champions do not utilize mana as a resource to gate casting'),
(2, 'coûts de santé', 'Some champions, instead of or in addition to an ability resource can expend a set quantity or percentage of health to cast some or all of their spells. Some resourceless champions have health costs.'),
(3, 'mana', 'Mana is the most common form of ability resource, and is usually expended through ability casts. It is designed to be a gating mechanic, meaning champions cannot cast their abilities too often without running out of mana, especially when their mana costs are high and/or cooldowns are low. Its regeneration rate is low and has a limited pool in abscence of bonus mana or mana regeneration obtained through growth and various other effects. This resource is used by almost all champions.'),
(4, 'vent', 'Yasuo\'s Way of the Wanderer Way of the Wanderer generates flow as he moves. When at maximum, it will be consumed and converted to a Hybrid resistances icon shield upon taking damage.');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `ID_ROLE` int(1) NOT NULL,
  `NOM_ROLE` varchar(20) DEFAULT NULL,
  `DESCRIPTION_ROLE` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`ID_ROLE`, `NOM_ROLE`, `DESCRIPTION_ROLE`) VALUES
(1, 'combattant', 'Souvant au corps le corps, le combattant peut à la fois infliger des dégats et en tanker une bonne partie, c\'est un rôle flexible'),
(2, 'assassin', 'l\'assassin dispose de compétence faisant beaucoup de dégats instantanés, cependant il a néanmoins très peu de points de vie ce qui le rend vulnérable aux cc'),
(3, 'tank', 'le tank doit attirer l\'attention sur lui pour protéger ses alliés vulnérables, il dispose d\'énormément de points de vie pour assurer sa survavibilité'),
(4, 'mage', 'le mage dispose de sorts puissants permettant d\'infliger des dégats aux ennemies à distance'),
(5, 'tireur', 'le tireur dispose d\'attaque à distance souvent basés sur la vitesse d\'attaque pour infliger des dégats aux ennemies, il est souvent la cible la plus vulnérable mais la plus dangereuse de l\'équipe');

-- --------------------------------------------------------

--
-- Structure de la table `skin`
--

CREATE TABLE `skin` (
  `ID_SKIN` int(3) NOT NULL,
  `ID_CHAMPION` int(3) DEFAULT NULL,
  `NOM_SKIN` varchar(20) DEFAULT NULL,
  `SPLASH` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `skin`
--

INSERT INTO `skin` (`ID_SKIN`, `ID_CHAMPION`, `NOM_SKIN`, `SPLASH`) VALUES
(1, 1, 'Default', 'https://static.wikia.nocookie.net/leagueoflegends/images/9/92/Aatrox_OriginalSkin.jpg/revision/latest?cb=20181021120902'),
(2, 1, 'Aatrox Lune de sang', 'https://static.wikia.nocookie.net/leagueoflegends/images/9/90/Aatrox_BloodMoonSkin.jpg/revision/latest?cb=20181204211951'),
(3, 3, 'Default', 'https://static.wikia.nocookie.net/leagueoflegends/images/2/2f/Briar_OriginalSkin.jpg/revision/latest?cb=20230831160805'),
(4, 3, 'Briar ville démoniaq', 'https://static.wikia.nocookie.net/leagueoflegends/images/1/11/Briar_StreetDemonsSkin.jpg/revision/latest?cb=20230831161500'),
(5, 4, 'Default', 'https://static.wikia.nocookie.net/leagueoflegends/images/d/d8/Cho%27Gath_OriginalSkin.jpg/revision/latest?cb=20181021091106'),
(6, 4, 'Cho\'Gath des rouleau', 'https://static.wikia.nocookie.net/leagueoflegends/images/d/db/Cho%27Gath_ShanHaiScrollsSkin.jpg/revision/latest?cb=20210922214826'),
(7, 6, 'Default', 'https://static.wikia.nocookie.net/leagueoflegends/images/a/aa/Heimerdinger_OriginalSkin.jpg/revision/latest?cb=20181021043654'),
(8, 6, 'Heimerdinger Draconn', 'https://static.wikia.nocookie.net/leagueoflegends/images/e/e1/Heimerdinger_DragonTrainerSkin.jpg/revision/latest?cb=20180925193738'),
(9, 7, 'Default', 'https://static.wikia.nocookie.net/leagueoflegends/images/0/0b/Illaoi_OriginalSkin.jpg/revision/latest?cb=20181021053828'),
(10, 7, 'Illaoi Résistante', 'https://static.wikia.nocookie.net/leagueoflegends/images/8/8a/Illaoi_ResistanceSkin.jpg/revision/latest?cb=20181021053635'),
(11, 8, 'Default', 'https://static.wikia.nocookie.net/leagueoflegends/images/6/66/Soraka_OriginalSkin.jpg/revision/latest?cb=20181021094844'),
(12, 8, 'Soraka Gardienne des', 'https://static.wikia.nocookie.net/leagueoflegends/images/f/f2/Soraka_StarGuardianSkin.jpg/revision/latest?cb=20181021021906'),
(13, 9, 'Default', 'https://static.wikia.nocookie.net/leagueoflegends/images/1/17/Tahm_Kench_OriginalSkin.jpg/revision/latest?cb=20181021105930'),
(14, 9, 'Tahm Kench de l\'Oues', 'https://static.wikia.nocookie.net/leagueoflegends/images/4/49/Tahm_Kench_HighNoonSkin.jpg/revision/latest?cb=20220511022646'),
(15, 10, 'Default', 'https://static.wikia.nocookie.net/leagueoflegends/images/d/d4/Taric_OriginalSkin.jpg/revision/latest?cb=20181021071059'),
(16, 10, 'Taric à Malibu', 'https://static.wikia.nocookie.net/leagueoflegends/images/8/8d/Taric_PoolPartySkin.jpg/revision/latest?cb=20181021092604'),
(17, 11, 'Default', 'https://static.wikia.nocookie.net/leagueoflegends/images/3/3b/Teemo_OriginalSkin.jpg/revision/latest?cb=20181021055924'),
(18, 11, 'Teemo abeille', 'https://static.wikia.nocookie.net/leagueoflegends/images/c/c1/Teemo_BeemoSkin.jpg/revision/latest?cb=20181021035835'),
(19, 12, 'Default', 'https://static.wikia.nocookie.net/leagueoflegends/images/8/89/Veigar_OriginalSkin.jpg/revision/latest?cb=20181021053947'),
(20, 12, 'Veigar abeille', 'https://static.wikia.nocookie.net/leagueoflegends/images/e/ee/Veigar_KingBeegarSkin.jpg/revision/latest?cb=20231109011007'),
(21, 13, 'Default', 'https://static.wikia.nocookie.net/leagueoflegends/images/3/39/Yasuo_OriginalSkin.jpg/revision/latest?cb=20181021032917'),
(22, 13, 'Yasuo de l\'Ouest', 'https://static.wikia.nocookie.net/leagueoflegends/images/c/ce/Yasuo_HighNoonSkin.jpg/revision/latest?cb=20181021104058'),
(23, 14, 'Default', 'https://static.wikia.nocookie.net/leagueoflegends/images/9/9b/Yuumi_OriginalSkin.jpg/revision/latest?cb=20190430193606'),
(24, 14, 'Yuumi abeille', 'https://static.wikia.nocookie.net/leagueoflegends/images/0/01/Yuumi_YuubeeSkin.jpg/revision/latest?cb=20210923012401'),
(25, 15, 'Default', 'https://static.wikia.nocookie.net/leagueoflegends/images/6/6f/Zeri_OriginalSkin.jpg/revision/latest?cb=20220125163450'),
(26, 15, 'Zeri du chant de l\'o', 'https://static.wikia.nocookie.net/leagueoflegends/images/e/e3/Zeri_OceanSongSkin.jpg/revision/latest?cb=20220527204556'),
(27, 16, 'Default', 'https://static.wikia.nocookie.net/leagueoflegends/images/9/93/Ziggs_OriginalSkin.jpg/revision/latest?cb=20181021104706'),
(28, 16, 'Ziggs Bombe à Eau', 'https://static.wikia.nocookie.net/leagueoflegends/images/1/18/Ziggs_PoolPartySkin.jpg/revision/latest?cb=20181021032327');

-- --------------------------------------------------------

--
-- Structure de la table `type_de_portee`
--

CREATE TABLE `type_de_portee` (
  `ID_TYPE_DE_PORTEE` int(1) NOT NULL,
  `TYPE_DE_PORTEE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `type_de_portee`
--

INSERT INTO `type_de_portee` (`ID_TYPE_DE_PORTEE`, `TYPE_DE_PORTEE`) VALUES
(1, 'mêlée'),
(2, 'à distance');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `appartient_espece`
--
ALTER TABLE `appartient_espece`
  ADD KEY `ESPECE_CHAMP` (`ID_CHAMPION`),
  ADD KEY `ESPECE_ESPECE` (`ID_ESPECE`);

--
-- Index pour la table `appartient_region`
--
ALTER TABLE `appartient_region`
  ADD KEY `REGION_CHAMP` (`ID_CHAMPION`),
  ADD KEY `REGION_REGION` (`ID_REGION`);

--
-- Index pour la table `appartient_role`
--
ALTER TABLE `appartient_role`
  ADD KEY `ROLE_CHAMPION` (`ID_CHAMPION`),
  ADD KEY `ROLE_ROLE` (`ID_ROLE`);

--
-- Index pour la table `appartient_skinline`
--
ALTER TABLE `appartient_skinline`
  ADD KEY `SKINLINE_SKINLINE` (`ID_LINE`),
  ADD KEY `SKINLINE_SKIN` (`ID_SKIN`);

--
-- Index pour la table `champion`
--
ALTER TABLE `champion`
  ADD PRIMARY KEY (`ID_CHAMPION`),
  ADD KEY `GENRE_CHAMPION` (`ID_GENRE`),
  ADD KEY `RESSOURCE_CHAMPION` (`ID_RESSOURCE`);

--
-- Index pour la table `citation`
--
ALTER TABLE `citation`
  ADD PRIMARY KEY (`ID_CITATION`),
  ADD KEY `CITATION_CHAMPION` (`ID_CHAMPION`);

--
-- Index pour la table `competence`
--
ALTER TABLE `competence`
  ADD PRIMARY KEY (`ID_COMPETENCE`),
  ADD KEY `COMPETENCE_CHAMPION` (`ID_CHAMPION`),
  ADD KEY `COMPETENCE_EMPLACEMENT` (`ID_EMPLACEMENT`);

--
-- Index pour la table `emplacement`
--
ALTER TABLE `emplacement`
  ADD PRIMARY KEY (`ID_EMPLACEMENT`);

--
-- Index pour la table `espece`
--
ALTER TABLE `espece`
  ADD PRIMARY KEY (`ID_ESPECE`);

--
-- Index pour la table `est_de_portee`
--
ALTER TABLE `est_de_portee`
  ADD KEY `PORTEE_CHAMPION` (`ID_CHAMPION`),
  ADD KEY `PORTEE_PORTEE` (`ID_TYPE_DE_PORTEE`);

--
-- Index pour la table `est_sur_lane`
--
ALTER TABLE `est_sur_lane`
  ADD KEY `LANE_CHAMPION` (`ID_CHAMPION`),
  ADD KEY `LANE_LANE` (`ID_LANE`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`ID_GENRE`);

--
-- Index pour la table `lane`
--
ALTER TABLE `lane`
  ADD PRIMARY KEY (`ID_LANE`);

--
-- Index pour la table `line`
--
ALTER TABLE `line`
  ADD PRIMARY KEY (`ID_LINE`);

--
-- Index pour la table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`ID_REGION`);

--
-- Index pour la table `ressource`
--
ALTER TABLE `ressource`
  ADD PRIMARY KEY (`ID_RESSOURCE`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`ID_ROLE`);

--
-- Index pour la table `skin`
--
ALTER TABLE `skin`
  ADD PRIMARY KEY (`ID_SKIN`),
  ADD KEY `SKIN-CHAMPION` (`ID_CHAMPION`);

--
-- Index pour la table `type_de_portee`
--
ALTER TABLE `type_de_portee`
  ADD PRIMARY KEY (`ID_TYPE_DE_PORTEE`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `champion`
--
ALTER TABLE `champion`
  MODIFY `ID_CHAMPION` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `citation`
--
ALTER TABLE `citation`
  MODIFY `ID_CITATION` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `competence`
--
ALTER TABLE `competence`
  MODIFY `ID_COMPETENCE` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT pour la table `emplacement`
--
ALTER TABLE `emplacement`
  MODIFY `ID_EMPLACEMENT` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `espece`
--
ALTER TABLE `espece`
  MODIFY `ID_ESPECE` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `ID_GENRE` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `lane`
--
ALTER TABLE `lane`
  MODIFY `ID_LANE` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `line`
--
ALTER TABLE `line`
  MODIFY `ID_LINE` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `region`
--
ALTER TABLE `region`
  MODIFY `ID_REGION` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `ressource`
--
ALTER TABLE `ressource`
  MODIFY `ID_RESSOURCE` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `ID_ROLE` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `skin`
--
ALTER TABLE `skin`
  MODIFY `ID_SKIN` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `type_de_portee`
--
ALTER TABLE `type_de_portee`
  MODIFY `ID_TYPE_DE_PORTEE` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `appartient_espece`
--
ALTER TABLE `appartient_espece`
  ADD CONSTRAINT `ESPECE_CHAMP` FOREIGN KEY (`ID_CHAMPION`) REFERENCES `champion` (`ID_CHAMPION`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ESPECE_ESPECE` FOREIGN KEY (`ID_ESPECE`) REFERENCES `espece` (`ID_ESPECE`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `appartient_region`
--
ALTER TABLE `appartient_region`
  ADD CONSTRAINT `REGION_CHAMP` FOREIGN KEY (`ID_CHAMPION`) REFERENCES `champion` (`ID_CHAMPION`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `REGION_REGION` FOREIGN KEY (`ID_REGION`) REFERENCES `region` (`ID_REGION`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `appartient_role`
--
ALTER TABLE `appartient_role`
  ADD CONSTRAINT `ROLE_CHAMPION` FOREIGN KEY (`ID_CHAMPION`) REFERENCES `champion` (`ID_CHAMPION`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ROLE_ROLE` FOREIGN KEY (`ID_ROLE`) REFERENCES `role` (`ID_ROLE`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `appartient_skinline`
--
ALTER TABLE `appartient_skinline`
  ADD CONSTRAINT `SKINLINE_SKIN` FOREIGN KEY (`ID_SKIN`) REFERENCES `skin` (`ID_SKIN`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `SKINLINE_SKINLINE` FOREIGN KEY (`ID_LINE`) REFERENCES `line` (`ID_LINE`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `champion`
--
ALTER TABLE `champion`
  ADD CONSTRAINT `GENRE_CHAMPION` FOREIGN KEY (`ID_GENRE`) REFERENCES `genre` (`ID_GENRE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `RESSOURCE_CHAMPION` FOREIGN KEY (`ID_RESSOURCE`) REFERENCES `ressource` (`ID_RESSOURCE`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `citation`
--
ALTER TABLE `citation`
  ADD CONSTRAINT `CITATION_CHAMPION` FOREIGN KEY (`ID_CHAMPION`) REFERENCES `champion` (`ID_CHAMPION`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `competence`
--
ALTER TABLE `competence`
  ADD CONSTRAINT `COMPETENCE_CHAMPION` FOREIGN KEY (`ID_CHAMPION`) REFERENCES `champion` (`ID_CHAMPION`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `COMPETENCE_EMPLACEMENT` FOREIGN KEY (`ID_EMPLACEMENT`) REFERENCES `emplacement` (`ID_EMPLACEMENT`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `est_de_portee`
--
ALTER TABLE `est_de_portee`
  ADD CONSTRAINT `PORTEE_CHAMPION` FOREIGN KEY (`ID_CHAMPION`) REFERENCES `champion` (`ID_CHAMPION`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `PORTEE_PORTEE` FOREIGN KEY (`ID_TYPE_DE_PORTEE`) REFERENCES `type_de_portee` (`ID_TYPE_DE_PORTEE`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `est_sur_lane`
--
ALTER TABLE `est_sur_lane`
  ADD CONSTRAINT `LANE_CHAMPION` FOREIGN KEY (`ID_CHAMPION`) REFERENCES `champion` (`ID_CHAMPION`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `LANE_LANE` FOREIGN KEY (`ID_LANE`) REFERENCES `lane` (`ID_LANE`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `skin`
--
ALTER TABLE `skin`
  ADD CONSTRAINT `SKIN-CHAMPION` FOREIGN KEY (`ID_CHAMPION`) REFERENCES `champion` (`ID_CHAMPION`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mar. 29 mars 2022 à 07:06
-- Version du serveur :  5.7.11
-- Version de PHP :  7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `museum vision`
--
DROP DATABASE IF EXISTS museum_vision;
CREATE DATABASE museum_vision;
USE museum_vision;
-- --------------------------------------------------------

--
-- Structure de la table `exposition`
--

CREATE TABLE `exposition` (
  `Id` int(11) NOT NULL,
  `nom` text NOT NULL,
  `permanent` tinyint(1) NOT NULL,
  `TarifEnfant` decimal(10,2) NOT NULL,
  `TarifAdulte` decimal(10,2) NOT NULL,
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `exposition`
--

INSERT INTO `exposition` (`Id`, `nom`, `permanent`, `TarifEnfant`, `TarifAdulte`, `Active`) VALUES
(1, 'le 14eme siècle ', 1, '4.00', '6.00', 1),
(2, 'le 16eme siècle ', 1, '1.00', '2.00', 1),
(3, 'le 20eme siècle ', 1, '2.00', '4.00', 0),
(4, 'le 12eme siècle ', 1, '5.00', '7.00', 1);

-- --------------------------------------------------------

--
-- Structure de la table `visite`
--

CREATE TABLE `visite` (
  `ID` int(11) NOT NULL,
  `NbAdulte` int(11) NOT NULL,
  `NbEnfant` int(11) NOT NULL,
  `DateHeureEntree` datetime NOT NULL,
  `DateHeureSortie` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `visite`
--

INSERT INTO `visite` (`ID`, `NbAdulte`, `NbEnfant`, `DateHeureEntree`, `DateHeureSortie`) VALUES
(1, 5, 3, '2022-02-01 08:23:14', '2022-02-01 09:45:14'),
(2, 2, 2, '2022-01-31 10:22:25', '2022-01-31 13:21:09'),
(3, 1, 0, '2022-01-31 15:31:00', '2022-02-01 18:26:00');

-- --------------------------------------------------------

--
-- Structure de la table `visiteexposition`
--

CREATE TABLE `visiteexposition` (
  `IdExpo` int(11) NOT NULL,
  `IdVisite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `visiteexposition`
--

INSERT INTO `visiteexposition` (`IdExpo`, `IdVisite`) VALUES
(1, 1),
(1, 3),
(2, 1),
(2, 3),
(3, 3),
(4, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `exposition`
--
ALTER TABLE `exposition`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `visite`
--
ALTER TABLE `visite`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `visiteexposition`
--
ALTER TABLE `visiteexposition`
  ADD KEY `IdExpo` (`IdExpo`,`IdVisite`),
  ADD KEY `IdVisite` (`IdVisite`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `visiteexposition`
--
ALTER TABLE `visiteexposition`
  ADD CONSTRAINT `visiteexposition_ibfk_1` FOREIGN KEY (`IdVisite`) REFERENCES `visite` (`ID`),
  ADD CONSTRAINT `visiteexposition_ibfk_2` FOREIGN KEY (`IdExpo`) REFERENCES `exposition` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

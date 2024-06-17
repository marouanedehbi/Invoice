-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : dim. 09 juin 2024 à 19:38
-- Version du serveur : 10.3.39-MariaDB
-- Version de PHP : 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ifisoftc_invoices`
--

-- --------------------------------------------------------

--
-- Structure de la table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:17:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:4:\"role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:9:\"role-list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:11:\"role-create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:9:\"role-edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:11:\"role-delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:8:\"invoices\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:13:\"invoices-list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:15:\"invoices-create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:13:\"invoices-edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:15:\"invoices-delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:9:\"estimates\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:14:\"estimates-list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:16:\"estimates-create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:14:\"estimates-edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:16:\"estimates-delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:9:\"dashboard\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:17:\"invoices-research\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}}s:5:\"roles\";a:3:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:5:\"admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:9:\"DIRECTION\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:2:\"BO\";s:1:\"c\";s:3:\"web\";}}}', 1717959424);

-- --------------------------------------------------------

--
-- Structure de la table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `estimates`
--

CREATE TABLE `estimates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `estimate_number` varchar(50) NOT NULL,
  `societe_id` bigint(20) UNSIGNED NOT NULL,
  `mission_type_id` bigint(20) UNSIGNED NOT NULL,
  `estimate_date` date NOT NULL,
  `prestation_date` date DEFAULT NULL,
  `client_name` varchar(100) DEFAULT NULL,
  `ice` varchar(80) DEFAULT NULL,
  `client_adress` text DEFAULT NULL,
  `object` varchar(100) DEFAULT NULL,
  `detail` text NOT NULL,
  `advance` decimal(11,2) DEFAULT NULL,
  `discount` decimal(11,2) DEFAULT NULL,
  `commission` decimal(11,2) DEFAULT NULL,
  `payment_mode` varchar(80) DEFAULT NULL,
  `remainder` decimal(11,2) NOT NULL,
  `totalHT` decimal(11,2) NOT NULL,
  `totalHTRem` decimal(11,2) NOT NULL,
  `montantTVA` decimal(11,2) NOT NULL,
  `totalTTC` decimal(11,2) NOT NULL,
  `totalTTC2` decimal(11,2) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `value_status` int(11) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `estimates`
--

INSERT INTO `estimates` (`id`, `estimate_number`, `societe_id`, `mission_type_id`, `estimate_date`, `prestation_date`, `client_name`, `ice`, `client_adress`, `object`, `detail`, `advance`, `discount`, `commission`, `payment_mode`, `remainder`, `totalHT`, `totalHTRem`, `montantTVA`, `totalTTC`, `totalTTC2`, `status`, `value_status`, `payment_date`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'DV-0001-2024', 1, 1, '2023-12-26', NULL, 'STE SHELTERS', '', '', 'Devis Terrain TEMARA', 'Evaluation immobilière  d\'un projet Construction d\'un projet en SS + 4 Etages de TF 74,677/78 d’une superficie de 480m², Sis Skhirat\n\n\'-/Expertise du Foncier\n\'-/Evaluation du Chiffre d\'affaires du projet\n\'-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 7500.00, 0.00, 1500.00, 9000.00, 9000.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(2, 'DV-0002-2024', 1, 1, '2024-01-08', NULL, 'M. ZAKARIA JEDDAOUI & Mme. HIND RAMID', '', '', 'Devis _Terrain Bouskoura', 'Evaluation immobilière relatif au terrain ayant le TF N° 123.671/63 d’une superficie de 1.246m², Sis Bouskoura', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(3, 'DV-0003-2024', 1, 1, '2024-01-08', NULL, 'M. CHRAIBI ADNANE ', '', '', 'Devis_02_Terrain_Mediouna', 'Evaluation immobilière relatif aux terrain ayant lex TF N° 124.655/01 et 124.656/01 d’une superficie global de de 1.226m², Sis Médiouna Casablanca', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(4, 'DV-0004-2024', 1, 3, '2024-01-10', NULL, 'Bank Al MAGHRIB', '', '', 'Formation BAM', 'Animation de formation en BIM 360', 0.00, 0.00, 0.00, '', 0.00, 11000.00, 0.00, 2200.00, 52800.00, 52800.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(5, 'DV-0005-2024', 1, 1, '2024-01-10', NULL, 'M. HEDDA YOUSSEF', '', '', 'Expertiser_Terrain_Skhirate', 'Evaluation immobilière relatif au terrain ayant le TF 99.799/78 d’une superficie de de 1.526m², Sis Skhirat TEMARA', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(6, 'DV-0006-2024', 1, 1, '2024-01-15', NULL, 'M. Yassine Chahid', '', '', 'Devis Terrain Casablanca', 'Evaluation immobilière relatif au terrain ayant le TF N° 74.205/47 d’une superficie de 207m², Sis Casablanca', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(7, 'DV-0007-2024', 1, 1, '2024-01-18', NULL, 'Société  TAIB IMO 3', '', '', 'Evaluation Projet_EL BAAMRANI MOUHCINE  Marrakech Yousr', 'Evaluation immobilière du projet ayant le T.F N° 215.301/04 sis Marrakech\n\n-/ Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 9500.00, 0.00, 1900.00, 11400.00, 12000.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(8, 'DV-0008-2024', 1, 1, '2024-01-18', NULL, 'AGAUARCHE', '', '', 'Evaluation Projet Tiznit Yousr', 'Evaluation immobilière du projet ayant le T.F N° 79.364/31 de superficie 23.656 m²sis Tiznit \n\n-/Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 9500.00, 0.00, 1900.00, 11400.00, 12300.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(9, 'DV-0009-2024', 1, 1, '2024-01-18', NULL, 'Sté BEAU LIVING', '', '', 'Evaluation Projet Quartier les princesse Yousr', 'Evaluation immobilière du projet ayant le T.F N° 3.767/34 de superficie 611 m²sis Quartier des Princesses \n\n-/Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 9500.00, 0.00, 1900.00, 11400.00, 11400.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(10, 'DV-0010-2024', 1, 1, '2024-01-18', NULL, 'Sté HAYRAE', '', '', 'Evaluation Projet à Témara Yousr', 'Evaluation immobilière du projet ayant le T.F N° 68.482/R de superficie 7.040m²sis Témara\n\n-/Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 9500.00, 0.00, 1900.00, 11400.00, 11400.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(11, 'DV-0011-2024', 1, 1, '2024-01-19', NULL, 'Sté SOUR AL BAIDA', '', '', 'Evaluation projet Hay Hassani Yousr', 'Evaluation immobilière du projet ayant le T.F N° 78.707/64 de superficie 225m²sis Hay Hassani\n\n-/Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 9500.00, 0.15, 1900.00, 11400.00, 11400.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(12, 'DV-0012-2024', 1, 1, '2024-01-19', NULL, 'Sté MICE', '', '', 'Evaluation Immobilière d\'un Bureau', 'Evaluation immobilière d\'un bureau ayant le T.F N° 59.128/01 de superficie 125 m² sis Casablanca ANFA', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(13, 'DV-0013-2024', 1, 1, '2024-01-19', NULL, 'Sté NARRAS PROMO', '', '', 'Evaluation projet Beni Mellal Yousr', 'Evaluation immobilière du projet ayant le T.F N° 27.438/10 de superficie 1.073m²sis Beni Mellal\n\n-/Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 9500.00, 0.25, 1900.00, 11400.00, 12000.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(14, 'DV-0014-2024', 1, 1, '2024-01-22', NULL, 'Ste AKMSTECH', '', '', 'Evaluation Immobilière d\'un Local Commercial', 'Evaluation Immobilière d\'un local Commercial ayant le T.F N° 36.902/01, de superficie 119 m², sis Casablanca ANFA', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.07, 600.00, 3600.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(15, 'DV-0015-2024', 1, 1, '2024-01-23', NULL, 'Sté SCIENCES ACADEMY', '', '', 'Evaluation Immobilière terrain à béni Mellal', 'Evaluation immobilière du Foncier ayant le T.F N° 42.527/10 de superficie 9.722m²sis Beni Mellal.', 0.00, 0.00, 0.00, '', 0.00, 3500.00, 0.00, 700.00, 4200.00, 4800.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(16, 'DV-0016-2024', 1, 1, '2024-01-25', NULL, 'M.YOUNES AZAF ', '', '', 'Evaluation Maison à Casablanca', 'Evaluation immobilière d\'une maison ayant le T.F N° 70.885/C de superficie 80 m²sis HAY MABROUKA RUE 23 N 34 CASABLANCA', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(17, 'DV-0017-2024', 1, 1, '2024-01-25', NULL, 'M.AMINE TEMSAMANI ', '', '', 'Evaluation Appartement Tanger', 'Evaluation immobilière d\'un appartement ayant le T.F N° 20.843/61 de superficie 84 m²sis Tanger', 0.00, 0.00, 0.00, '', 0.00, 2500.00, 0.15, 500.00, 3000.00, 3780.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(18, 'DV-0018-2024', 1, 1, '2024-01-25', NULL, 'Mr Kaddour Hassen ', '', '', 'Evaluation Terrain Haouz', 'Evaluation immobilière du Foncier ayant le T.F N° 23.606/65 de superficie 401m²sis Commune AGHOUATEM', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(19, 'DV-0019-2024', 1, 1, '2024-01-30', NULL, 'STÉ EDUCATIONAL ASSET MANAGEMENT', '', '', 'Evaluation Ecole ', 'Evaluation immobilière de l\'établissement scolaire faisant l\'objet du TF N° 10.944/32 sis ', 0.00, 0.00, 0.00, '', 0.00, 6500.00, 0.00, 1300.00, 7800.00, 7800.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(20, 'DV-0020-2024', 1, 1, '2024-01-30', NULL, 'M.KADIRI ABDELLAH', '', '', 'Evaluation villa CIL', 'Evaluation d\'une villa ayant le TF N° 3954/34 de superficie de 394 m²', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(21, 'DV-0021-2024', 1, 1, '2024-02-02', NULL, 'Mr JABRI ISSAM   ', '', '', 'Evaluation Projet Meknès', 'Evaluation du projet en cours de construction  objet de TF N° 2023/K sis MEKNES EL MENZAH :\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.\n-/Etat d\'avancement du projet', 0.00, 0.00, 0.00, '', 0.00, 9500.00, 0.00, 1900.00, 11400.00, 12000.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(22, 'DV-0022-2024', 1, 1, '2024-02-06', NULL, 'MM. HICHAM EL HIYANI & SALAH EDDINE EL HIYANI ', '', '', 'Evaluation Projet Salé', 'Evaluation du projet en cours de construction  objet de TF : 74030/58 – 74031/58 sis Salé :\n\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.\n-/Etat d\'avancement du projet', 0.00, 0.00, 0.00, '', 0.00, 9500.00, 0.15, 1900.00, 11400.00, 11400.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(23, 'DV-0023-2024', 1, 1, '2024-02-06', NULL, 'MM. HICHAM EL HIYANI & SALAH EDDINE EL HIYANI ', '', '', 'Evaluation Projet Salé', 'Evaluation du projet en cours de construction  objet de TF 74052/58, sis Salé :\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.\n-/Etat d\'avancement du projet', 0.00, 0.00, 0.00, '', 0.00, 9500.00, 0.15, 1900.00, 11400.00, 11400.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(24, 'DV-0024-2024', 1, 1, '2024-02-06', NULL, 'MME EL HARRAS MAHASSINE', '', '', 'Evaluation Appartement Hay hassani', 'Evaluation immobilière d\'un appartement ayant le T.F N° 57.579/64 de superficie 127 m²sis Casablanca', 0.00, 0.00, 0.00, '', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(25, 'DV-0025-2024', 1, 1, '2024-02-06', NULL, 'MME CHIADMI', '', '', 'Evaluation Appartement Hay hassani', 'Evaluation immobilière d\'un appartement ayant le T.F N° 67.209/64 de superficie 76 m²sis Casablanca', 0.00, 0.00, 0.00, '', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(26, 'DV-0026-2024', 1, 1, '2024-02-06', NULL, 'M.NAMATE MOHAMED', '', '', 'Evaluation Terrain', 'Evaluation d\'un lot de  d\'immeuble en (R+2) ayant le TF N° 73.310/13 de superficie de 108 m²', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(27, 'DV-0027-2024', 1, 1, '2024-02-07', NULL, 'Ste les Collines des Zaers', '', '', 'Evaluation Projet Temara', 'Evaluation du projet   objet de TF 55289/R, sis Ain Aouda :\n\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.\n-/Etat d\'avancement du projet', 0.00, 0.00, 0.00, '', 0.00, 9500.00, 0.00, 1900.00, 11400.00, 11400.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(28, 'DV-0028-2024', 1, 1, '2024-02-07', NULL, 'SOCIETE SOCIUS', '', '', 'Evalaution Projet SAFI', 'Evaluation immobilière portant sur le TF n° 67.403/23 relatif à un projet d’un lotissement et de construction d’un groupement d’habitation des logements sociaux,  sis Safi quartier LJENNANE LAADIR . Route HAD HRARA', 0.00, 0.00, 0.00, '', 0.00, 11500.00, 0.00, 2300.00, 13800.00, 13800.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(29, 'DV-0029-2024', 1, 1, '2024-02-08', NULL, 'STE CENTRE DE DIALYSE IBN ZAHR ', '', '', 'Evaluation Centre de santé Beni Mellal', 'Evaluation du projet   objet de TF 19.980/10, sis Beni Mellal:\n\n-/Validation du programme d\'investissement.\n-/Validation des coûts d\'aménagement', 0.00, 0.00, 0.00, '', 0.00, 6500.00, 0.00, 1300.00, 7800.00, 8400.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(30, 'DV-0030-2024', 1, 1, '2024-02-08', NULL, 'MR EL ASSOULI ZOUHEIR', '', '', 'Evalation Terrain_Californie', 'Evaluation d\'un lot de terrain ayant le TF N° 78.972/47 de superficie de 604 m², sis Californie-Casablanca.', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(31, 'DV-0031-2024', 1, 1, '2024-02-13', NULL, 'Mr Kartoubi Aissam', '', '', 'Evaluation Terrain_Mansouria', 'Evaluation d\'un lot de terrain ayant le TF N° 101.236/25 de superficie de 200 m², sis AL Mansouria', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(32, 'DV-0032-2024', 1, 1, '2024-02-14', NULL, 'M.AIT OUASSARAH MOHAMMED YASSINE', '', '', 'Evalaution Projet Marrakech', 'Evaluation Immobilière du Projet ayant le TF N°131.430/04  de superficie de  86.140 m², sis PREFECTURE DE MARRAKECH COMMUNE TASSOULTANT.\n\n-/Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 9500.00, 0.00, 1900.00, 11400.00, 12000.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(33, 'DV-0033-2024', 1, 1, '2024-02-14', NULL, 'M.MAZMILI SAID', '', '', 'Evaluation Appartement Sidi Kacem', 'Evaluation immobilière d\'un appartement ayant le T.F N° 81.941/30 de superficie 114 m²sis Sidi Kacem', 0.00, 0.00, 0.00, '', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(34, 'DV-0034-2024', 1, 1, '2024-02-16', NULL, 'MADAME EL HARRAS MAHASSINE', '', '', 'Evaluation Appartement Casablanca', 'Evaluation immobilière d\'un appartement ayant le T.F N° 57.579/64  de superficie 127 m²sis Casablanca', 0.00, 0.00, 0.00, '', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(35, 'DV-0035-2024', 1, 1, '2024-02-19', NULL, 'MACHROUHI FATIMA EZZAHRA', '', '', 'Evaluation Appartement Berrechid', 'Evaluation immobilière d\'un appartement ayant le T.F N° 17.560/53 de superficie 124 m²sis Berrechid', 0.00, 0.00, 0.00, '', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(36, 'DV-0036-2024', 1, 1, '2024-02-19', NULL, 'Mr OMAR BELKHAYAT ZOUGARI', '', '', 'Evaluation villa Dar Bouazza', 'Evaluation d\'une villa à Dar Bouazza', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(37, 'DV-0037-2024', 1, 1, '2024-02-20', NULL, 'CDM', '', '', 'Evaluation Terrain à Ait Melloul', 'Evaluation d\'un lot de terrain ayant le TF N° 44.769/09 de superficie de 1099 m², sis Ait Melloul', 0.00, 0.00, 0.00, '', 0.00, 4500.00, 0.00, 900.00, 5400.00, 5400.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(38, 'DV-0038-2024', 1, 1, '2024-02-20', NULL, 'Mr HABI ALI', '', '\'Lot 165 Avenue Imam Ali B N 1 - Kénitra (M)', 'Evaluation Terrain à Bouskoura', 'Evaluation d\'un lot de terrain ayant le TF N° 52.451/63 de superficie de 500 m², sis Casablanca', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(39, 'DV-0039-2024', 1, 1, '2024-02-22', NULL, 'SOCIETE BENKIRANE IMMOBILIER-SARL', '001655728000025', '', 'Evaluation Projet à Kenitra', 'Evaluation Immobilière du Projet ayant le TF N° 185200/13 de superficie de  400 m², sis Kenitra :\n\n-/Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 9500.00, 0.20, 1900.00, 11400.00, 11400.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(40, 'DV-0040-2024', 1, 1, '2024-02-23', NULL, 'STE AKKAR ESSALAM', '', '', 'Evaluation Projet à Safi', 'Evaluation Immobilière du Projet  BORJ NADOR ayant le TF N° 93.807/23; 9.801/23, 93.803/23, 93.804/23, 93.805/23 et 93.806/23,  sis SAFI :\n\n-/Expertise du Foncier\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 6000.00, 0.00, 1200.00, 7200.00, 7800.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(41, 'DV-0041-2024', 1, 1, '2024-02-23', NULL, 'STE AKKAR ESSALAM', '', '', 'Evaluation Projet à Safi', 'Evaluation Immobilière du Projet HAY MOHAMMADI   ayant le TF N° 137.469/23, 137.470/23, 137.471/23, 137.472/23 et 137.471/23, sis SAFI :\n\n-/Expertise du Foncier\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 6000.00, 0.00, 1200.00, 7200.00, 7200.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(42, 'DV-0042-2024', 1, 1, '2024-02-26', NULL, 'STE PROMO GOLDEN ', '', '', 'Evaluation Etat d\'avancement à Tanger', 'Evaluation d\'un état d\'avancement d\'un projet sis Tanger', 0.00, 0.00, 0.00, '', 0.00, 3500.00, 0.00, 700.00, 4200.00, 4980.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(43, 'DV-0043-2024', 1, 1, '2024-02-27', NULL, 'STE BERALMAR', '', '', 'Evaluation Projet à ASSILA', 'Evaluation Immobilière du Projet ayant le TF N° 78.713/06 de superficie de  51.746 m², sis ASSILA :\n\n-/Expertise du Foncier\n-/ Etat d\'avancement\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 12500.00, 0.00, 2500.00, 15000.00, 15780.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(44, 'DV-0044-2024', 1, 1, '2024-02-27', NULL, 'SOCIETE MWY HOME Sarl', '', '', 'Evaluation Projet à Kenitra', 'Evaluation Immobilière d’un projet immobilier de type « Immeuble en SS R+4 », sis Route de Mehdia, Kénitra - Maroc. Objet des TF 109.623/13 & 109.625/13.\n\n-/Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 9500.00, 0.00, 1900.00, 11400.00, 11400.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(45, 'DV-0045-2024', 1, 1, '2024-03-05', NULL, 'M.El alaoui Abdelkarim', '', '', 'Evaluation Projet à salé', 'Evaluation immobilière d\'une maison ayant le T.F N° 9871/20 de superficie 102 m²sis TABRIKET Salé', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(46, 'DV-0046-2024', 1, 1, '2024-03-06', NULL, 'Mr JABRI ISSAM   ', '', '', 'Evaluation Terrain à Fes', 'Evaluation de 06 lots de terrains (R+3) et (R+4) situés au lotissement AL ANBRA, sis Fes ', 0.00, 0.00, 0.00, '', 0.00, 1000.00, 0.00, 200.00, 7200.00, 7200.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(47, 'DV-0047-2024', 1, 1, '2024-03-06', NULL, 'Sté SO CAPITAL', '', '', 'Evaluation Projet Ouasisi CasaBlanca', 'Evaluation Immobilière d’un projet immobilier de type « Immeuble en SS R+3 », sis OUASIS, Casablanca - Maroc. Objet des TF 100.392/C\n\n-/Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 9500.00, 0.15, 1900.00, 11400.00, 11400.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(48, 'DV-0048-2024', 1, 1, '2024-03-06', NULL, 'Mme HAJAR SOALI', '', '', 'Evaluation Villa Bouznika', 'Evaluation immobilière d\'une Villa ayant le T.F N° 25.137/25 de superficie 486 m²sis Bouznika-Provaince Ben Slimane', 0.00, 0.00, 0.00, '', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(49, 'DV-0049-2024', 1, 1, '2024-03-07', NULL, 'Sté AFRHA DREAM HOUSE', '', '', 'Evaluation Projet Bouskoura', 'Evaluation Immobilière d’un projet immobilier, sis Bouskoura, Casablanca - Maroc. Objet des TF 62,542/63\n\n-/Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 9500.00, 0.15, 1900.00, 11400.00, 11400.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(50, 'DV-0050-2024', 1, 1, '2023-03-07', NULL, 'Sté EVEIL ASSETS SCI ', '', '', 'Evaluation Projet Bouskoura', 'Evaluation Immobilière du foncie robjet du TF 1.354/20, sis Sala Al Jadida - Maroc.', 0.00, 0.00, 0.00, '', 0.00, 3500.00, 0.00, 700.00, 4200.00, 4200.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(51, 'DV-0051-2024', 1, 1, '2024-03-11', NULL, 'M MABROUK HICHAM ', '', '', 'Evaluation Terrain à Mohammedia', 'Evaluation d\'un lot de terrain ayant le TF N° 137.743/26 de superficie de 100 m², sis Mohammedia', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(52, 'DV-0052-2024', 1, 1, '2024-03-11', NULL, 'MR JABER MUSTAPHA ', '', '', 'Evaluation Terrain à Mohammedia', 'Evaluation d\'un lot de terrain ayant le TF N° 76140/53  de superficie de 7.627 m², sis Commune LAKHYAYTA-Casablanca', 0.00, 0.00, 0.00, '', 0.00, 3500.00, 0.00, 700.00, 4200.00, 4200.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(53, 'DV-0053-2024', 1, 1, '2024-03-12', NULL, 'Mme BOULANT VILLAGRASA CAROLINE', '', '', 'Evaluation VillaTanger', 'Evaluation d\'une villa ayant le TF N°108.470/06 de superficie de 119m², sis Tanger', 0.00, 0.00, 0.00, '', 0.00, 2800.00, 0.00, 560.00, 3360.00, 3360.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(54, 'DV-0054-2024', 1, 1, '2024-03-15', NULL, 'sté IMMOBILIERE RAWD AL JANOUB', '', '', 'Evaluation Projet Marrakech Menara', 'Evaluation Immobilière d’un projet immobilier, sis Tamesslouht - Maroc. Objet de TF 57.834/04 de superficie de 48.789 m²\n\n-/Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 9000.00, 0.15, 1800.00, 10800.00, 11400.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(55, 'DV-0055-2024', 1, 1, '2024-03-18', NULL, 'Mr BENCHRKOUN  ', '', '', 'Evaluation bureau_Avenue des FAR', 'Evaluation immobilière d\'un Bureau ayant le T.F N° 77.842/45 de superficie 53 m²sis Roche Noires-Casablanca', 0.00, 0.00, 0.00, '', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(56, 'DV-0056-2024', 1, 1, '2024-03-19', NULL, 'Sté DIVA AAKAR', '', '', 'Evaluation terrain Marrakech', 'Evaluation immobilière d\'un Terrain ayant le T.F N° 96.869/45 de superficie 45.727 m²sis Marrakech', 0.00, 0.00, 0.00, '', 0.00, 3500.00, 0.00, 700.00, 4200.00, 4800.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(57, 'DV-0057-2024', 1, 1, '2024-03-20', NULL, 'STE INSTITUT PRIVE SUMER', '', '', 'Evaluation Ecole à casablanca', 'Evaluation d\'un établissement scolaire ayant le TF N°4.550/C de superficie 1.204m²', 0.00, 0.00, 0.00, '', 0.00, 6000.00, 0.00, 1200.00, 7200.00, 7200.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(58, 'DV-0058-2024', 1, 1, '2024-03-20', NULL, 'Sté Galaxie Equipement SARL', '', '', 'Evalauation Deux magasins Casablanca', 'Evaluation de deux commerces ayant les TF N°73.581/01 et 73.580/01 de superficie 145 m² et 172m²', 0.00, 0.00, 0.00, '', 0.00, 2200.00, 0.00, 440.00, 5280.00, 5280.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(59, 'DV-0059-2024', 1, 1, '2024-03-21', NULL, 'Sté CATBER SARL', '', '', 'Evaluation Unité Had Soualem', 'Evaluation d\'une unité ayant le TF N° 71.914/53 de superficie 184.460m² sis Had Soualem - Casablanca', 0.00, 0.00, 0.00, '', 0.00, 6500.00, 0.00, 1300.00, 7800.00, 7800.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(60, 'DV-0060-2024', 1, 1, '2024-03-21', NULL, 'Sté CATBER SARL', '', '', 'Evalaution Immeuble Sidi Moumen', 'Evaluation d\'un immeuble  ayant le TF N° 11.298/45 de superficie 131m² sis Sidi Moumen - Casablanca', 0.00, 0.00, 0.00, '', 0.00, 4500.00, 0.00, 900.00, 5400.00, 5400.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(61, 'DV-0061-2024', 1, 1, '2024-03-25', NULL, 'Mr Moussia Abdelkebir', '', '', 'Evaluation Villa à Souiria', 'Evaluation d\'une villa ayant le TF N° 66.538/23 de supeficie 119m² sis Souiria', 0.00, 0.00, 0.00, '', 0.00, 3166.67, 0.00, 633.33, 3800.00, 3800.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(62, 'DV-0062-2024', 1, 1, '2024-03-26', NULL, 'Ste mojazine', '', '', 'Evaluation terrain Marrakech', 'Evaluation d\'un terrain abritant une villa, ayant le TF N° 100.853/04 de superficie 432m² sis Marrakech', 0.00, 0.00, 0.00, '', 0.00, 4500.00, 0.00, 900.00, 5400.00, 5400.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(63, 'DV-0063-2024', 1, 1, '2024-03-27', NULL, 'M.Karim ', '', '', 'Evaluation Magasin Tanger', 'Evaluation d\'un magasin ayant le T.F N°152,149/05 de superficie de 985m² sis tanger', 0.00, 0.00, 0.00, '', 0.00, 3500.00, 0.00, 700.00, 4200.00, 4800.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(64, 'DV-0064-2024', 1, 1, '2024-03-27', NULL, 'SOCIETE STE IKHLAS PROJECT', '', '', 'Evaluation Projet à Kenitra', 'Evaluation Immobilière d’un projet immobilier de type « Immeuble en SS R+3 », sis , Kénitra - Maroc. Objet du TF N° 13974/13 \n\n-/Expertise du Foncier\n-/Etat D\'avancement\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 9500.00, 0.00, 1900.00, 11400.00, 11400.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(65, 'DV-0065-2024', 1, 1, '2024-03-27', NULL, 'Mr SENTISSI MOHAMED JALIL', '', '', 'Evaluation Salle de sport ', 'Expertise immobilière d\'un complexe sportif faisant l\'objet des T.F N° TF68125/C; TF120567/C et TF126155/C de superficie globale de 5107.50 m², sis quartier LA GIRONDE - Casablanca\n-/Expertise du Foncier\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 6500.00, 0.00, 1300.00, 7800.00, 7800.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(66, 'DV-0066-2024', 1, 1, '2024-03-29', NULL, 'MR LAMSSARAH ALI ET MME BOUTLANE SIHAM', '', '', 'Evaluation Lot_Terrain nouaceur', 'Evalaution Immobilière du lot terrain ayant le TF N°54.601/63de superficie 131m²,  sis Nouaceur.', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(67, 'DV-0067-2024', 1, 1, '2024-04-01', NULL, 'Sté NEOM TOWN', '', '', 'Evaluation Projet Maarif', 'Evaluation Immobilière d’un projet immobilier de type « Immeuble en SS R+3 », sis , Casablanca - Maroc. Objet du TF N° 21.416/C de Superficie 511m²\n\n-/Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 9000.00, 0.00, 1800.00, 10800.00, 10800.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(68, 'DV-0068-2024', 1, 1, '2024-04-03', NULL, 'Mr Ennaciri', '', '', 'Evaluation Villa à El Jadida', 'Evaluation Immobilière d’un bien immobilier de type « villa », sis , El Jadida- Maroc. Objet du TF N° 110.277/08 de Superficie 190m²', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(69, 'DV-0069-2024', 1, 1, '2024-03-27', NULL, 'Mr AFIFY', '', '', 'Evaluation Maison à Témara', 'Evaluation Immobilière d’un bien immobilier de type « maison », sis , Temara- Maroc. Objet du TF N° 24,659/38 de Superficie 63m²', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(70, 'DV-0070-2024', 1, 1, '2024-04-04', NULL, 'SOCIETE BOYOUT EL MNIAA', '', '', 'Evaluation Projet à Berrechid', 'Evaluation Immobilière d’un projet immobilier, sis Berrechid, Casablanca - Maroc. Objet des TF 146.033/53 (197m²); 146.034/53 (203m²);146.036/53(202m²) et 146.035/53 (197m²)\n\n-/Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 8500.00, 0.00, 1700.00, 10200.00, 10200.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(71, 'DV-0071-2024', 1, 1, '2024-04-04', NULL, 'SOCIETE BOYOUT EL MNIAA', '', '', 'Evaluation Projet à Berrechid', 'Evaluation d\'un état d\'avancement du projet porté par  la Sté Boyout EL MINIAA', 0.00, 0.00, 0.00, '', 0.00, 3500.00, 0.00, 700.00, 4200.00, 4200.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(72, 'DV-0072-2024', 1, 1, '2024-04-05', NULL, 'Sté PTM', '', '', 'Evaluation Terain Ouled Azzouz', 'Evalaution Terrain ayant le TF N°16704/D de superficie 11940m² sis commune Ouled Azzouz', 0.00, 0.00, 0.00, '', 0.00, 3500.00, 0.00, 700.00, 4200.00, 4200.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(73, 'DV-0073-2024', 1, 1, '2024-04-08', NULL, 'Mme. EL ALOUANI LAILA', '', '', 'Evaluation Terrain Commune Ouled Saleh Nouaceur', 'Evalaution Terrain ayant le TF N°128471/63 de superficie 271m² sis commune OULED SALEH NOUACEUR', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(74, 'DV-0074-2024', 1, 1, '2024-04-09', NULL, 'M. Jihad El Misbahi', '', '', 'Evaluation villa à Marrakech', 'Evaluation Terrain ayant TF N° 192/65 de superficie de 3300m² sis Marrakech', 0.00, 0.00, 0.00, '', 0.00, 5000.00, 0.20, 1000.00, 6000.00, 6000.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(75, 'DV-0075-2024', 1, 1, '2024-04-09', NULL, 'Bank Al Yousr', '', '', 'Evaluation Projet à Tiznit', 'Evaluation immobilière du projet sis Tiznit \n\n-/Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 9500.00, 0.30, 1900.00, 11400.00, 11400.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(76, 'DV-0076-2024', 1, 1, '2024-04-09', NULL, 'Bank Al Yousr', '', '', 'Evaluation Etat d\'avancement à Agadir Drarga', 'Evaluation d\'un état d\'avancement d\'un projet sis Agadir Drarga', 0.00, 0.00, 0.00, '', 0.00, 3500.00, 0.00, 700.00, 4200.00, 5100.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(77, 'DV-0077-2024', 1, 1, '2024-04-09', NULL, 'WARDAPROMO', '', '', 'Evaluation Projet Safi', 'Evaluation Immobilière du Projet en (R+4) faisant l\'objet du  TF N° 19.712/J,  sis SAFI :\n\n-/Expertise du Foncier\n-/Evaluation C.A\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 9500.00, 0.20, 1900.00, 11400.00, 11400.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(78, 'DV-0078-2024', 1, 1, '2024-04-09', NULL, 'WARDAPROMO', '', '', 'Evaluation Projet Safi', 'Evaluation Immobilière du Projet en (R+5) faisant l\'objet du  TF N° 31.05/23,  sis SAFI :\n\n-/Expertise du Foncier\n-/Evaluation C.A\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 9500.00, 0.20, 1900.00, 11400.00, 12000.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(79, 'DV-0079-2024', 1, 1, '2024-04-16', NULL, 'CADIPLAST', '', '', 'Evaluation Projet Mediouna', 'Evaluation Immobilière d’un projet immobilier , sis , SIDI Othmane Baladiyat Lahraouiyine OULAD MOULOUK . Objet du TF N° 187.098/12 de Superficie 10094m²\n\n-/Expertise du Foncier\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 6500.00, 0.00, 1300.00, 7800.00, 7800.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(80, 'DV-0080-2024', 1, 1, '2024-04-16', NULL, 'SOMASTEEL', '', '', 'Evaluation Terrain Had Soualem', 'Evalaution de 04 Terrains Sis Had Soualem ayant les T.F :\n- N°105.845/53 de superficie 632m² \n- N° 105.837/53 de superficie 564m²\n- N° 105.862/53 de superficie 876m²\n- N° 105.846/53 de superficie 618m²', 0.00, 0.00, 0.00, '', 0.00, 3500.00, 0.00, 700.00, 4200.00, 4200.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(81, 'DV-0081-2024', 1, 1, '2024-04-17', NULL, 'SOCIETE GLASSAUTO EXPRESS', '', '', 'Evaluation Terrain Had Soualem', 'Expertise Immobilière de commerce ayant le TF N°134.408/13 de superfcie global de  : 93 m² RDC et 46 m²de mezzanine sis Kenitra', 0.00, 0.00, 0.00, '', 0.00, 2200.00, 0.00, 440.00, 2640.00, 2640.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(82, 'DV-0082-2024', 1, 1, '2024-04-17', NULL, 'MR ET MME IBN TALEB ', '', '', 'Evaluation maison R+2 Rabat', 'Evaluation d\'un actif immobilier de type maison ayant le TF N°4089/R de superficie de 182m² sis Rabat Hassane.', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(83, 'DV-0083-2024', 1, 1, '2024-04-24', NULL, 'Bank Al Yousr', '', '', 'Evaluation Terrain Mediouna', 'Evaluation Terrain ayant TF N° 12250/85 de superficie de 163m² sis Sidi Hajjaj', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(84, 'DV-0084-2024', 1, 1, '2024-04-29', NULL, 'LOUDA LOGISTICS', '', '', 'Evaluation Terrain Nouaceur', 'Evaluation Immobilière d’unTerrain , sis , Zone Industrielle de SAPINO NOUACER . Objet du TF N° 8884/63  de Superficie 14110m²\n-/Expertise du Foncier\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 6500.00, 0.00, 1300.00, 7800.00, 7800.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(85, 'DV-0085-2024', 1, 1, '2024-04-30', NULL, 'Mr JIHAD EL IBRAHIMI ', '', '', 'Evaluation Trois Terrains', 'Evaluation des commerces ayant  :\n-/ TF N° 1411/ 33de superficie  1.252m² \n-/TF N°811/T superficie 8.039m² \n-/TF N° 62.586/C de superficie 1.056m²', 0.00, 0.00, 0.00, '', 0.00, 3500.00, 0.00, 700.00, 12600.00, 12600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(86, 'DV-0086-2024', 1, 1, '2024-04-30', NULL, 'Bank AL Yousr', '', '', 'Evalaution Duplexe', 'Evaluation d\'un actif immobilier de type Duplexe ayant le TF N°231764/06 de superficie de 182m² sis TAGHAZOUTE-AGADIR', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 4500.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(87, 'DV-0087-2024', 1, 1, '2024-05-06', NULL, 'BOUFERRA ET HIYANE', '', '', 'Evaluation Terrain', 'Evaluation Terrain ayant TF N° 125034/53 de superficie de 244m² sis Berrechid', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(88, 'DV-0088-2024', 1, 1, '2024-05-07', NULL, 'Mme Manal KALAI', '', '', 'Evaluation Terrain industriel à berrechid', 'Evalaution d\'un terrain ayant le TF N°18.093/53 sis Berrechid  de superficie de 32.160m²', 0.00, 0.00, 0.00, '', 0.00, 6000.00, 0.00, 1200.00, 7200.00, 7200.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(89, 'DV-0089-2024', 1, 1, '2024-05-08', NULL, 'MNHF INVEST SARL', '', '', 'Evaluation Projet à sidi maarouf', 'Evaluation Immobilière du Projet en (R+5) faisant l\'objet du  TF N° 93.197/47 de superficie 1.155,  sis Casablanca :\n\n-/Expertise du Foncier\n-/Validation du C.A\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 9500.00, 0.15, 1900.00, 11400.00, 11400.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(90, 'DV-0090-2024', 1, 1, '2024-05-09', NULL, 'M. Ghorbi Youness', '', '', 'Evaluation  Villa à Hay mohammadi', 'Evaluation Villa ayant TF N° 126.832/C de superficie de 200m² sis Hay Mohammadi', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(91, 'DV-0091-2024', 1, 1, '2024-05-09', NULL, 'M.Jalil LAHLOU', '', '', 'Evaluation Terrain à Had Soualem', 'Evaluation du Terrain ayant  le T.F N° 51.265/53 de superficie de 26.684m² sis Had Soualem', 0.00, 0.00, 0.00, '', 0.00, 5000.00, 0.00, 1000.00, 6000.00, 6000.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(92, 'DV-0092-2024', 1, 1, '2024-05-09', NULL, 'Sté CADUCO ', '', '', 'Evalaution Projet à Had Soulaem', 'Evaluation du projet objet des deux Terrain ayant  le T.F N° 9215/15 et 9216/15 de superficie respectivement de 1ha 10 a et 1ha 5a sis Had Soualem :\n-/ Evaluation du Foncier,\n-/ Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 6500.00, 0.00, 1300.00, 7800.00, 7800.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(93, 'DV-0093-2024', 1, 1, '2024-05-09', NULL, 'Sté TAIB IMO 4', '', '', 'Evalaution Projet à Marrakech', 'Evaluation Immobilière du Projet en (R+5) faisant l\'objet du  TF N° 73.778/04 de superficie 3ha 18a 65ca,  sis Marrakech :\n\n-/Expertise du Foncier\n-/Validation du C.A\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 9500.00, 0.00, 1900.00, 11400.00, 12000.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(94, 'DV-0094-2024', 1, 1, '2024-05-10', NULL, '0', '', '', 'Evaluation Villa a Rabat', 'Evaluation d\'une villa ayant le TF N°105.800/03 de superficie de 1.623m² sis Rabat', 0.00, 0.00, 0.00, '', 0.00, 2200.00, 0.00, 440.00, 2640.00, 2640.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(95, 'DV-0095-2024', 1, 1, '2024-05-11', NULL, 'BANK AL YOUSR', '', '', 'Evaluation Maison à Meknes', 'Evaluation immobilière d\'une maison ayant le TF N° 15821/K de superficie de 173m² sis Meknes', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 4200.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(96, 'DV-0096-2024', 1, 1, '2024-05-14', NULL, 'Mr KANDILA ABDELHAMID', '', '', 'Evaluation Terrain nu Dar Bouazza', 'Evaluation Immobilière d\'un terrain ayant le T.F N° 191.365/63 de superficie 455 m²sis Dar Bouazza Casablanca', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(97, 'DV-0097-2024', 1, 1, '2024-05-14', NULL, 'Mr BOUJADI YOUSSEF', '', '', 'Evaluation Terrain nu Sidi Abderrahmane', 'Evaluation Immobilière d\'un terrain ayant le T.F N° 121.221/01 de superficie 768 m²sis Quartier sidi Abderrahmane Casablanca', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(98, 'DV-0098-2024', 1, 1, '2024-05-15', NULL, 'Sté ZADRI INTERNACIONAL', '', 'LOT AL AMIRA AV ALLAL BEN ABDELLAH N°102 , Fnideq', 'Evalaution Projet Fnideq', 'Evaluation Immobilière du Projet  porté par la Sté ZADRI INTERNATIONAL sis Martil:\n\n-/Expertise du Foncier\n-/Validation du C.A\n-/Etat d\'avancement\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 11500.00, 0.00, 2300.00, 13800.00, 14580.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(99, 'DV-0099-2024', 1, 3, '2024-05-15', NULL, 'BP REM', '', '', 'Action de Formation', 'Action de Formation \n-/ Evaluation immobilière (2J)\n-/ Fondamentaux de Financement Immobilier (1J)', 0.00, 0.00, 0.00, '', 0.00, 3800.00, 0.00, 760.00, 13680.00, 13680.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(100, 'DV-0100-2024', 1, 1, '2024-05-16', NULL, 'Ste TAZI ISKAN', '', '', 'Evaluation Projet Kenitra', 'Evaluation Immobilière du Projet en (R+4) faisant l\'objet du  TF N° 169.904/13 de superficie 267m²,  sis Kenitra :\n\n-/Expertise du Foncier\n-/Validation du C.A\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 9500.00, 0.15, 1900.00, 11400.00, 11400.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(101, 'DV-0101-2024', 1, 1, '2024-05-16', NULL, 'STE LMN (GP DOUBI KADMIRI)', '', '', 'Evaluation Duplex Casablanca', 'Evaluation d\'un duplex faisant l\'objet du TF N° 53.029/01 de superficie 216m², sis Maarif Casablanca', 0.00, 0.00, 0.00, '', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(102, 'DV-0102-2024', 1, 1, '2024-05-16', NULL, 'M. SALAH EDDINE BEN BYA', '', '', 'Evalaution Appartement ', 'Evaluation d\'un appartement faisant l\'objet du TF N° 179.873/63 de superficie 108m², sis  DAR BOUAZZA, Province de NOUACEUR', 0.00, 0.00, 0.00, '', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(103, 'DV-0103-2024', 1, 1, '2024-05-20', NULL, 'Mme ESSALID HANANE', '', '', 'Evaluation Villa à Berrechid', 'Evaluation d\'une villa faisant l\'objet du TF N° 40.018/53 de superficie 189m², sis  BERRECHID', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(104, 'DV-0104-2024', 1, 1, '2024-05-21', NULL, 'STE LIBRAIRIE IQRAE SARL AU', '', '', 'Evalaution du Fond de commerce', 'Evalaution du Fond de commerce de la librairie sis, 21 BERD EL BEKRI EL MELLAH MEKNES', 0.00, 0.00, 0.00, '', 0.00, 4000.00, 0.00, 800.00, 4800.00, 4800.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(105, 'DV-0105-2024', 1, 1, '2024-05-22', NULL, 'STE TKLH', '', '', 'Evaluation terrain sis Mohammedia', 'Evaluation d\'un terrain faisant l\'objet du TF N° 95.539/26 de superficie 518m², sis  Mohammedia', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(106, 'DV-0106-2024', 1, 1, '2024-05-23', NULL, 'Ste BEL ENDROIT', '', '', 'Evaluation Projet Marrakech', 'Evaluation Immobilière du Projet  porté par la Sté BEL ENDROIT sis Marrakech:\n\n-/Expertise du Foncier\n-/Validation du C.A\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 9500.00, 0.15, 1900.00, 11400.00, 12000.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(107, 'DV-0107-2024', 1, 1, '2024-05-24', NULL, '	Mr BARHOUTI ADIL  ', '', '', 'Evaluation terrain Casablanca', 'Evaluation immobilière d\'un terrain faisant l\'objet de RTF N° 22.579/C de superficie de 866m², sis Maarif Casablanca:\n-/Expertise du Foncier\n-/Validation du C.A\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 9500.00, 0.00, 1900.00, 11400.00, 11400.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(108, 'DV-0108-2024', 1, 1, '2024-05-24', NULL, 'sté LOUISIANE DE PROMOTION IMMOBILIERE', '', '', 'Evaluation projet Inzeguan', 'Evaluation Immobilière du Projet faisant l\'objet des  TF N° 6523/S et 45.686/09 de superficie de 1Ha1030m² et 1Ha1790m²,  sis Inzegan Ait Melloul :\n\n-/Expertise du Foncier\n-/Validation du C.A\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 9500.00, 0.00, 1900.00, 11400.00, 12300.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(109, 'DV-0109-2024', 1, 1, '2024-05-24', NULL, 'Mr KADDI YOUSSEF', '', '', 'Evaluation terrain Casablanca', 'Evaluation immobilière d\'un terrain faisant l\'objet de TF N° 191.362/63 de superficie de 438m², sis Dar Bouazza Casablanca', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(110, 'DV-0110-2024', 1, 1, '2024-05-24', NULL, 'M. AGHAGHAY LAHCEN', '', '', 'Evaluation Terrain Temara', 'Evaluation immobilière d\'un terrain faisant l\'objet de TF N° 106.620/38 de superficie de 84m², sis Temara', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(111, 'DV-0111-2024', 1, 1, '2024-05-24', NULL, 'M. NAIM', '', '', 'Evaluation Villa EL JADIDA', 'Evaluation immobilière d\'une villa  ayant le TF N° 71.574/08 de superficie de 402m² sis EL JADIDA', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(112, 'DV-0112-2024', 1, 1, '2024-05-27', NULL, 'Bank Al YOusr', '', '', 'Evaluation villa a TIZNIT Yousr', 'Evaluation d\'une villa faisant l\'objet du TF N° 44.432/31 de superficie 159m², sis  Tiznit', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 4500.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(113, 'DV-0113-2024', 1, 1, '2024-05-28', NULL, 'MM.OMAR BENJELLUN & KHALID BENJELLOUN', '', '', 'Evalaution Immeuble R+3 yousr', 'Evaluation d\'un immeuble en (R+3) ayant le TF N°2799/49 sis sidi bernoussi de superficie de 985m².', 0.00, 0.00, 0.00, '', 0.00, 3500.00, 0.00, 700.00, 4200.00, 4200.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(114, 'DV-0114-2024', 1, 1, '2024-05-30', NULL, 'Ste IZEM', '', '', 'Evaluation 02 terrains sis Marrakech', 'Evaluation Immobilière de terrain ayant le TF N° 258.260/04 de superficie 869m² sis Marrakech\n\nEvaluation Immobilière de terrain ayant le TF N° 261.441/04 de superficie 85m² sis Marrakech', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 7200.00, 7800.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(115, 'DV-0115-2024', 1, 1, '2024-05-31', NULL, 'STE FAMO IMMO SARL', '', '', 'Evaluation du projet sis Tiznit', 'Evaluation du projet faisant l\'objet du TF N° 6145/31 de superficie 44.763m², sis  Tiznit\n-/Expertise du Foncier\n-/Validation du C.A\n-/Validation du programme d\'investissement.', 0.00, 0.00, 0.00, '', 0.00, 9500.00, 0.00, 1900.00, 11400.00, 12300.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(116, 'DV-0116-2024', 1, 1, '2024-05-31', NULL, 'CDM', '', '', 'Evaluation Immeuble derb Omar', 'Evaluation immobilière d\'un immeuble, faisant l\'objet du TF N° 4392/C de superficie de 252m², sis Derb Omar Casablanca', 0.00, 0.00, 0.00, '', 0.00, 2200.00, 0.00, 440.00, 2640.00, 2640.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(117, 'DV-0117-2024', 1, 1, '2024-05-31', NULL, 'Sté BABIL AMENAGEMENT', '', '', 'Evaluation Projet Nouaceur Yousr', 'Evaluation Immobilière du Projet faisant l\'objet des  TF N° 7309/C de superficie de 44.010m²sis Casablanca :\n\n-/La validation de la finalisation des travaux de lotissement sur le projet (BABIL AMENAGEMENT), \n-/Le montant investi par le client, \n-/Une explication par rapport  aux dépenses supplémentaires sur le PI telles que l’impôt de la TPI, la construction d’un bassin de retenue d’eau pluviale et une station de relevage…', 0.00, 0.00, 0.00, '', 0.00, 9000.00, 0.00, 1800.00, 10800.00, 10800.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(118, 'DV-0118-2024', 1, 1, '2024-06-03', NULL, 'Ste ERRAFII CAPITAL INVEST', '', '', 'Evaluation Projet sis Casablanca', 'Evaluation du projet faisant l\'objet du TF N° 31337/C de superficie 205m², sis  Oasis Casablanca\n-/Expertise du Foncier\n-/Validation du C.A\n-/Validation du programme d\'investissement.\n-/Etat d\'Avancement', 0.00, 0.00, 0.00, '', 0.00, 9500.00, 0.00, 1900.00, 11400.00, 11400.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(119, 'DV-0119-2024', 1, 1, '2024-06-03', NULL, 'SLMW', '', '', 'Evaluation Appartement sis Casablanca', 'Evaluation d\'un appartement faisant l\'objet du TF N° 79.764/64 de superficie 215m², sis  DAR BOUAZZA, Province de NOUACEUR', 0.00, 0.00, 0.00, '', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(120, 'DV-0120-2024', 1, 1, '2024-06-04', NULL, 'BERRADA BADR ', '', '', 'Evaluation Projet sis Fes route sidi Hrazem', 'Evaluation  du Projet ayant  le T.F 29.819/F de superficie 5.522m² sis Fes :\n\n-/Expertise du Foncier\n-/Validation du C.A\n-/Validation du programme d\'investissement.\n-/Etat d\'avancement\n', 0.00, 0.00, 0.00, '', 0.00, 12000.00, 0.00, 2400.00, 14400.00, 14400.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(121, 'DV-0121-2024', 1, 1, '2024-06-04', NULL, 'BERRADA BADR ', '', '', 'Evaluation Projet Sis Sefrou', 'Evaluation du Projet ayant  le T.F N° 8.216/41  de superficie 1.751m² sis BHALILI -Sefrou:\n\n-/Expertise du Foncier\n-/Validation du C.A\n-/Validation du programme d\'investissement.\n-/Etat d\'avancement', 0.00, 0.00, 0.00, '', 0.00, 12000.00, 0.00, 2400.00, 14400.00, 14400.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(122, 'DV-0122-2024', 1, 1, '2024-06-04', NULL, 'BERRADA BADR ', '', '', 'Evaluation Projet Sis Imouzzer Kandar', 'Evaluation  du Projet ayant  le T.F N° 8.216/41  de superficie 750m² sis Imouzzar Kandar\n-/Expertise du Foncier\n-/Validation du C.A\n-/Validation du programme d\'investissement.\n-/Etat d\'avancement', 0.00, 0.00, 0.00, '', 0.00, 12000.00, 0.00, 2400.00, 14400.00, 14400.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(123, 'DV-0123-2024', 1, 1, '2024-06-04', NULL, 'Ste Little Ma', '', '', 'Evaluation unité Industrielle sis Benslimane', '-/Evaluation d\'une unité industrielle, ayant le TF N° 31.119/25 de superficie de 599m², sis Zone Industrielle de Benslimane\n\n-/Evaluation des équipements, ', 0.00, 0.00, 0.00, '', 0.00, 8500.00, 0.00, 1700.00, 10200.00, 10200.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(124, 'DV-0124-2024', 1, 1, '2024-06-06', NULL, 'M. MANI EL HASSAN', '', '', 'Evaluation Terrain Agricole sis Oujda', 'Evaluation d\'une terrain agricole ayant le T.F N° 97.391/02 de superficie 21.870 m², sis Oujda', 0.00, 0.00, 0.00, '', 0.00, 5000.00, 0.00, 1000.00, 6000.00, 7200.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(125, 'DV-0125-2024', 1, 1, '2024-06-06', NULL, 'Ste COMPLEXE MULTI SERVICES BENISNASSEN', '', '', 'Evaluation Terrain  sis Berkane', 'Evaluation d\'une terrain agricole ayant le T.F N° 7.455/40 de superficie 188 m², sis Berkane', 0.00, 0.00, 0.00, '', 0.00, 3500.00, 0.00, 700.00, 4200.00, 5400.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(126, 'DV-0126-2024', 1, 1, '2024-06-06', NULL, 'M.Sadik OULAM', '', '', 'Evaluation Maison à Youssoufia Yousr', 'Evaluation d\'une maison ayant de TF N° 25.987 de superificie 87m² sis youssoufia', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 4200.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(127, 'DV-0127-2024', 1, 1, '2024-06-07', NULL, 'M.Abdeljalil Jellouni', '', '', 'Evaluation Maison à Youssoufia Yousr', 'Evalaution maison ayant le TF N°17.899  de superficei de 72 m² sisTAMANSOURTE TRANCHE 01 LOT V-63.', 0.00, 0.00, 0.00, '', 0.00, 3000.00, 0.00, 600.00, 3600.00, 4200.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(128, 'DV-0128-2024', 1, 1, '2024-06-07', NULL, 'Ste SAWLI  BATIMENTS', '', '', 'Evaluation Projet', 'Evaluation du projet:\n-/Expertise du Foncier\n-/Validation du C.A\n-/Validation du programme d\'investissement.\n', 0.00, 0.00, 0.00, '', 0.00, 9500.00, 0.00, 1900.00, 11400.00, 12000.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(129, 'DV-0129-2024', 1, 1, '2024-06-07', NULL, 'Ste JWALA DEVELEPPEMENT', '', '', 'Evaluation Projet sis COMMUNE SAHEL OULED HRIZ PROVINCE DE BERRECHID', 'Evaluation du projet faisant l\'objet du TF N° 40500/53 de superficie 12088m², sis  COMMUNE SAHEL OULED HRIZ PROVINCE DE BERRECHID\n\n-/Expertise du Foncier\n-/Validation du C.A\n-/Validation du programme d\'investissement.\n', 0.00, 0.00, 0.00, '', 0.00, 9500.00, 0.00, 1900.00, 11400.00, 11400.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', NULL),
(130, 'DV-0130-2024', 1, 1, '2024-06-07', NULL, 'BERRADA BADR ', '', '', 'Evaluation Projet sis Fes à Jnane EL Ouard', 'Evaluation  du Projet ayant  le T.F N° 226.488/07 de superficie  de 1.744m² sis Fes :\n\n-/Expertise du Foncier\n-/Validation du C.A\n-/Validation du programme d\'investissement.\n-/Etat d\'avancement\n', 0.00, 0.00, 0.00, '', 0.00, 12000.00, 0.00, 2400.00, 14400.00, 14400.00, '', NULL, NULL, NULL, '2024-06-08 15:05:28', '2024-06-08 15:10:22');

-- --------------------------------------------------------

--
-- Structure de la table `estimates_fees`
--

CREATE TABLE `estimates_fees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `estimate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `estimates_fees`
--

INSERT INTO `estimates_fees` (`id`, `description`, `amount`, `estimate_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Frais Déplacement', 500.00, 7, NULL, '2024-06-08 15:05:41', NULL),
(2, 'Frais Déplacement', 750.00, 8, NULL, '2024-06-08 15:05:41', NULL),
(3, 'Frais Déplacement', 500.00, 13, NULL, '2024-06-08 15:05:41', NULL),
(4, 'Frais Déplacement', 500.00, 15, NULL, '2024-06-08 15:05:41', NULL),
(5, 'Frais Déplacement', 650.00, 17, NULL, '2024-06-08 15:05:41', NULL),
(6, 'Frais Déplacement', 500.00, 21, NULL, '2024-06-08 15:05:41', NULL),
(7, 'Frais Déplacement', 500.00, 29, NULL, '2024-06-08 15:05:41', NULL),
(8, 'Frais Déplacement', 500.00, 32, NULL, '2024-06-08 15:05:41', NULL),
(9, 'Frais Déplacement', 500.00, 33, NULL, '2024-06-08 15:05:41', NULL),
(10, 'Frais Déplacement', 500.00, 40, NULL, '2024-06-08 15:05:41', NULL),
(11, 'Frais Déplacement', 650.00, 42, NULL, '2024-06-08 15:05:41', NULL),
(12, 'Frais Déplacement', 650.00, 43, NULL, '2024-06-08 15:05:41', NULL),
(13, 'Frais Déplacement', 500.00, 54, NULL, '2024-06-08 15:05:41', NULL),
(14, 'Frais Déplacement', 500.00, 56, NULL, '2024-06-08 15:05:41', NULL),
(15, 'Frais Déplacement', 500.00, 63, NULL, '2024-06-08 15:05:41', NULL),
(16, 'Frais Déplacement', 750.00, 76, NULL, '2024-06-08 15:05:41', NULL),
(17, 'Frais Déplacement', 500.00, 78, NULL, '2024-06-08 15:05:41', NULL),
(18, 'Frais Déplacement', 750.00, 86, NULL, '2024-06-08 15:05:41', NULL),
(19, 'Frais Déplacement', 500.00, 93, NULL, '2024-06-08 15:05:41', NULL),
(20, 'Frais Déplacement', 500.00, 95, NULL, '2024-06-08 15:05:41', NULL),
(21, 'Frais Déplacement', 650.00, 98, NULL, '2024-06-08 15:05:41', NULL),
(22, 'Frais Déplacement', 500.00, 106, NULL, '2024-06-08 15:05:41', NULL),
(23, 'Frais Déplacement', 750.00, 108, NULL, '2024-06-08 15:05:41', NULL),
(24, 'Frais Déplacement', 750.00, 112, NULL, '2024-06-08 15:05:41', NULL),
(25, 'Frais Déplacement', 500.00, 114, NULL, '2024-06-08 15:05:41', NULL),
(26, 'Frais Déplacement', 750.00, 115, NULL, '2024-06-08 15:05:41', NULL),
(27, 'Frais Déplacement', 1000.00, 124, NULL, '2024-06-08 15:05:41', NULL),
(28, 'Frais Déplacement', 1000.00, 125, NULL, '2024-06-08 15:05:41', NULL),
(29, 'Frais Déplacement', 500.00, 126, NULL, '2024-06-08 15:05:41', NULL),
(30, 'Frais Déplacement', 500.00, 127, NULL, '2024-06-08 15:05:41', NULL),
(31, 'Frais Déplacement', 500.00, 128, NULL, '2024-06-08 15:05:41', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `estimates_prestations`
--

CREATE TABLE `estimates_prestations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `VAT` decimal(8,2) NOT NULL,
  `estimate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `estimates_prestations`
--

INSERT INTO `estimates_prestations` (`id`, `description`, `quantity`, `amount`, `VAT`, `estimate_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Evaluation immobilière  d\'un projet Construction d\'un projet en SS + 4 Etages de TF 74,677/78 d’une superficie de 480m², Sis Skhirat\n\n\'-/Expertise du Foncier\n\'-/Evaluation du Chiffre d\'affaires du projet\n\'-/Validation du programme d\'investissement.', 1, 7500.00, 0.20, 1, NULL, '2024-06-08 15:07:11', NULL),
(2, 'Evaluation immobilière relatif au terrain ayant le TF N° 123.671/63 d’une superficie de 1.246m², Sis Bouskoura', 1, 3000.00, 0.20, 2, NULL, '2024-06-08 15:07:11', NULL),
(3, 'Evaluation immobilière relatif aux terrain ayant lex TF N° 124.655/01 et 124.656/01 d’une superficie global de de 1.226m², Sis Médiouna Casablanca', 1, 3000.00, 0.20, 3, NULL, '2024-06-08 15:07:11', NULL),
(4, 'Animation de formation en BIM 360', 4, 11000.00, 0.20, 4, NULL, '2024-06-08 15:07:11', NULL),
(5, 'Evaluation immobilière relatif au terrain ayant le TF 99.799/78 d’une superficie de de 1.526m², Sis Skhirat TEMARA', 1, 3000.00, 0.20, 5, NULL, '2024-06-08 15:07:11', NULL),
(6, 'Evaluation immobilière relatif au terrain ayant le TF N° 74.205/47 d’une superficie de 207m², Sis Casablanca', 1, 3000.00, 0.20, 6, NULL, '2024-06-08 15:07:11', NULL),
(7, 'Evaluation immobilière du projet ayant le T.F N° 215.301/04 sis Marrakech \n\n-/ Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 1, 9500.00, 0.20, 7, NULL, '2024-06-08 15:07:11', NULL),
(8, 'Evaluation immobilière du projet ayant le T.F N° 79.364/31 de superficie 23.656 m²sis Tiznit \n\n-/Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 1, 9500.00, 0.20, 8, NULL, '2024-06-08 15:07:11', NULL),
(9, 'Evaluation immobilière du projet ayant le T.F N° 3.767/34 de superficie 611 m²sis Quartier des Princesses \n\n-/Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 1, 9500.00, 0.20, 9, NULL, '2024-06-08 15:07:11', NULL),
(10, 'Evaluation immobilière du projet ayant le T.F N° 68.482/R de superficie 7.040m²sis Témara\n\n-/Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 1, 9500.00, 0.20, 10, NULL, '2024-06-08 15:07:11', NULL),
(11, 'Evaluation immobilière du projet ayant le T.F N° 78.707/64 de superficie 225m²sis Hay Hassani\n\n-/Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 1, 9500.00, 0.20, 11, NULL, '2024-06-08 15:07:11', NULL),
(12, 'Evaluation immobilière d\'un bureau ayant le T.F N° 59.128/01 de superficie 125 m² sis Casablanca ANFA', 1, 3000.00, 0.20, 12, NULL, '2024-06-08 15:07:11', NULL),
(13, 'Evaluation immobilière du projet ayant le T.F N° 27.438/10 de superficie 1.073m²sis Beni Mellal\n\n-/Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 1, 9500.00, 0.20, 13, NULL, '2024-06-08 15:07:11', NULL),
(14, 'Evaluation Immobilière d\'un local Commercial ayant le T.F N° 36.902/01, de superficie 119 m², sis Casablanca ANFA', 1, 3000.00, 0.20, 14, NULL, '2024-06-08 15:07:11', NULL),
(15, 'Evaluation immobilière du Foncier ayant le T.F N° 42.527/10 de superficie 9.722m²sis Beni Mellal.', 1, 3500.00, 0.20, 15, NULL, '2024-06-08 15:07:11', NULL),
(16, 'Evaluation immobilière d\'une maison ayant le T.F N° 70.885/C de superficie 80 m²sis HAY MABROUKA RUE 23 N 34 CASABLANCA', 1, 3000.00, 0.20, 16, NULL, '2024-06-08 15:07:11', NULL),
(17, 'Evaluation immobilière d\'un appartement ayant le T.F N° 20.843/61 de superficie 84 m²sis Tanger', 1, 2500.00, 0.20, 17, NULL, '2024-06-08 15:07:11', NULL),
(18, 'Evaluation immobilière du Foncier ayant le T.F N° 23.606/65 de superficie 401m²sis Commune AGHOUATEM', 1, 3000.00, 0.20, 18, NULL, '2024-06-08 15:07:11', NULL),
(19, 'Evaluation immobilière de l\'établissement scolaire faisant\nl\'objet du TF N° 10.944/32 sis ', 1, 6500.00, 0.20, 19, NULL, '2024-06-08 15:07:11', NULL),
(20, 'Evaluation d\'une villa ayant le TF N° 3954/34 de superficie de 394 m²', 1, 3000.00, 0.20, 20, NULL, '2024-06-08 15:07:11', NULL),
(21, 'Evaluation du projet en cours de construction  objet de TF N° 2023/K sis MEKNES EL MENZAH :\n\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.\n-/Etat d\'avancement du projet', 1, 9500.00, 0.20, 21, NULL, '2024-06-08 15:07:11', NULL),
(22, 'Evaluation du projet en cours de construction  objet de TF : 74030/58 – 74031/58 sis Salé :\n\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.\n-/Etat d\'avancement du projet', 1, 9500.00, 0.20, 22, NULL, '2024-06-08 15:07:11', NULL),
(23, 'Evaluation du projet en cours de construction  objet de TF 74052/58, sis Salé :\n\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.\n-/Etat d\'avancement du projet', 1, 9500.00, 0.20, 23, NULL, '2024-06-08 15:07:11', NULL),
(24, 'Evaluation immobilière d\'un appartement ayant le T.F N° 57.579/64 de superficie 127 m²sis Casablanca', 1, 2500.00, 0.20, 24, NULL, '2024-06-08 15:07:11', NULL),
(25, 'Evaluation immobilière d\'un appartement ayant le T.F N° 67.209/64 de superficie 76 m²sis Casablanca', 1, 2500.00, 0.20, 25, NULL, '2024-06-08 15:07:11', NULL),
(26, 'Evaluation d\'un lot de  d\'immeuble en (R+2) ayant le TF N° 73.310/13 de superficie de 108 m²', 1, 3000.00, 0.20, 26, NULL, '2024-06-08 15:07:11', NULL),
(27, 'Evaluation du projet   objet de TF 55289/R, sis Ain Aouda :\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.\n-/Etat d\'avancement du projet', 1, 9500.00, 0.20, 27, NULL, '2024-06-08 15:07:11', NULL),
(28, 'Evaluation immobilière portant sur le TF n° 67.403/23 relatif à un projet d’un lotissement et de construction d’un groupement d’habitation des logements sociaux,  sis Safi quartier LJENNANE LAADIR . Route HAD HRARA', 1, 11500.00, 0.20, 28, NULL, '2024-06-08 15:07:11', NULL),
(29, 'Evaluation du projet   objet de TF 19.980/10, sis Beni Mellal:\n-/Validation du programme d\'investissement.\n-/Validation des coûts d\'aménagement', 1, 6500.00, 0.20, 29, NULL, '2024-06-08 15:07:11', NULL),
(30, 'Evaluation d\'un lot de terrain ayant le TF N° 78.972/47 de superficie de 604 m², sis Californie-Casablanca.', 1, 3000.00, 0.20, 30, NULL, '2024-06-08 15:07:11', NULL),
(31, 'Evaluation d\'un lot de terrain ayant le TF N° 101.236/25 de superficie de 200 m², sis AL Mansouria', 1, 3000.00, 0.20, 31, NULL, '2024-06-08 15:07:11', NULL),
(32, 'Evaluation Immobilière du Projet ayant le TF N°131.430/04  de superficie de  86.140 m², sis PREFECTURE DE MARRAKECH COMMUNE TASSOULTANT.\n-/Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 1, 9500.00, 0.20, 32, NULL, '2024-06-08 15:07:11', NULL),
(33, 'Evaluation immobilière d\'un appartement ayant le T.F N° 81.941/30 de superficie 114 m²sis Sidi Kacem', 1, 2500.00, 0.20, 33, NULL, '2024-06-08 15:07:11', NULL),
(34, 'Evaluation immobilière d\'un appartement ayant le T.F N° 57.579/64  de superficie 127 m²sis Casablanca', 1, 2500.00, 0.20, 34, NULL, '2024-06-08 15:07:11', NULL),
(35, 'Evaluation immobilière d\'un appartement ayant le T.F N° 17.560/53 de superficie 124 m²sis Berrechid', 1, 2500.00, 0.20, 35, NULL, '2024-06-08 15:07:11', NULL),
(36, 'Evaluation d\'une villa à Dar Bouazza', 1, 3000.00, 0.20, 36, NULL, '2024-06-08 15:07:11', NULL),
(37, 'Evaluation d\'un lot de terrain ayant le TF N° 44.769/09 de superficie de 1099 m², sis Ait Melloul', 1, 4500.00, 0.20, 37, NULL, '2024-06-08 15:07:11', NULL),
(38, 'Evaluation d\'un lot de terrain ayant le TF N° 52.451/63 de superficie de 500 m², sis Casablanca', 1, 3000.00, 0.20, 38, NULL, '2024-06-08 15:07:11', NULL),
(39, 'Evaluation Immobilière du Projet ayant le TF N° 185200/13 de superficie de  400 m², sis Kenitra :\n\n-/Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 1, 9500.00, 0.20, 39, NULL, '2024-06-08 15:07:11', NULL),
(40, 'Evaluation Immobilière du Projet  BORJ NADOR ayant le TF N° 93.807/23; 9.801/23, 93.803/23, 93.804/23, 93.805/23 et 93.806/23,  sis SAFI :\n\n-/Expertise du Foncier\n-/Validation du programme d\'investissement.', 1, 6000.00, 0.20, 40, NULL, '2024-06-08 15:07:11', NULL),
(41, 'Evaluation Immobilière du Projet HAY MOHAMMADI   ayant le TF N° 137.469/23, 137.470/23, 137.471/23, 137.472/23 et 137.471/23, sis SAFI :\n\n-/Expertise du Foncier\n-/Validation du programme d\'investissement.', 1, 6000.00, 0.20, 41, NULL, '2024-06-08 15:07:11', NULL),
(42, 'Evaluation d\'un état d\'avancement d\'un projet sis Tanger', 1, 3500.00, 0.20, 42, NULL, '2024-06-08 15:07:11', NULL),
(43, 'Evaluation Immobilière du Projet ayant le TF N° 78.713/06 de superficie de  51.746 m², sis ASSILA :\n\n-/Expertise du Foncier\n-/ Etat d\'avancement\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 1, 12500.00, 0.20, 43, NULL, '2024-06-08 15:07:11', NULL),
(44, 'Evaluation Immobilière d’un projet immobilier de type « Immeuble en SS R+4 », sis Route de Mehdia, Kénitra - Maroc. Objet des TF 109.623/13 & 109.625/13.\n\n-/Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 1, 9500.00, 0.20, 44, NULL, '2024-06-08 15:07:11', NULL),
(45, 'Evaluation immobilière d\'une maison ayant le T.F N° 9871/20 de superficie 102 m²sis TABRIKET Salé', 1, 3000.00, 0.20, 45, NULL, '2024-06-08 15:07:11', NULL),
(46, 'Evaluation de 06 lots de terrains (R+3) et (R+4) situés au lotissement AL ANBRA, sis Fes ', 6, 1000.00, 0.20, 46, NULL, '2024-06-08 15:07:11', NULL),
(47, 'Evaluation Immobilière d’un projet immobilier de type « Immeuble en SS R+3 », sis OUASIS, Casablanca - Maroc. Objet des TF 100.392/C\n\n-/Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 1, 9500.00, 0.20, 47, NULL, '2024-06-08 15:07:11', NULL),
(48, 'Evaluation immobilière d\'une Villa ayant le T.F N° 25.137/25 de superficie 486 m²sis Bouznika-Provaince Ben Slimane', 1, 2500.00, 0.20, 48, NULL, '2024-06-08 15:07:11', NULL),
(49, 'Evaluation Immobilière d’un projet immobilier, sis Bouskoura, Casablanca - Maroc. Objet des TF 62,542/63\n\n-/Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 1, 9500.00, 0.20, 49, NULL, '2024-06-08 15:07:11', NULL),
(50, 'Evaluation Immobilière du foncie robjet du TF 1.354/20, sis Sala Al Jadida - Maroc.', 1, 3500.00, 0.20, 50, NULL, '2024-06-08 15:07:11', NULL),
(51, 'Evaluation d\'un lot de terrain ayant le TF N° 137.743/26 de superficie de 100 m², sis Mohammedia', 1, 3000.00, 0.20, 51, NULL, '2024-06-08 15:07:11', NULL),
(52, 'Evaluation d\'un lot de terrain ayant le TF N° 76140/53  de superficie de 7.627 m², sis Commune LAKHYAYTA-Casablanca', 1, 3500.00, 0.20, 52, NULL, '2024-06-08 15:07:11', NULL),
(53, 'Evaluation d\'une villa ayant le TF N°108.470/06 de superficie de 119m², sis Tanger', 1, 2800.00, 0.20, 53, NULL, '2024-06-08 15:07:11', NULL),
(54, 'Evaluation Immobilière d’un projet immobilier, sis Tamesslouht - Maroc. Objet de TF 57.834/04 de superficie de 48.789 m²\n\n-/Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 1, 9000.00, 0.20, 54, NULL, '2024-06-08 15:07:11', NULL),
(55, 'Evaluation immobilière d\'un Bureau ayant le T.F N° 77.842/45 de superficie 53 m²sis Roche Noires-Casablanca', 1, 2500.00, 0.20, 55, NULL, '2024-06-08 15:07:11', NULL),
(56, 'Evaluation immobilière d\'un Terrain ayant le T.F N° 96.869/45 de superficie 45.727 m²sis Marrakech', 1, 3500.00, 0.20, 56, NULL, '2024-06-08 15:07:11', NULL),
(57, 'Evaluation d\'un établissement scolaire ayant le TF N°4.550/C de superficie 1.204m²', 1, 6000.00, 0.20, 57, NULL, '2024-06-08 15:07:11', NULL),
(58, 'Evaluation de deux commerces ayant les TF N°73.581/01 et 73.580/01 de superficie 145 m² et 172m²', 2, 2200.00, 0.20, 58, NULL, '2024-06-08 15:07:11', NULL),
(59, 'Evaluation d\'une unité ayant le TF N° 71.914/53 de superficie 184.460m² sis Had Soualem - Casablanca', 1, 6500.00, 0.20, 59, NULL, '2024-06-08 15:07:11', NULL),
(60, 'Evaluation d\'un immeuble  ayant le TF N° 11.298/45 de superficie 131m² sis Sidi Moumen - Casablanca', 1, 4500.00, 0.20, 60, NULL, '2024-06-08 15:07:11', NULL),
(61, 'Evaluation d\'une villa ayant le TF N° 66.538/23 de supeficie 119m² sis Souiria', 1, 3166.67, 0.20, 61, NULL, '2024-06-08 15:07:11', NULL),
(62, 'Evaluation d\'un terrain abritant une villa, ayant le TF N° 100.853/04 de superficie 432m² sis Marrakech', 1, 4500.00, 0.20, 62, NULL, '2024-06-08 15:07:11', NULL),
(63, 'Evaluation d\'un magasin ayant le T.F N°152,149/05 de superficie de 985m² sis tanger', 1, 3500.00, 0.20, 63, NULL, '2024-06-08 15:07:11', NULL),
(64, 'Evaluation Immobilière d’un projet immobilier de type « Immeuble en SS R+3 », sis , Kénitra - Maroc. Objet du TF N° 13974/13 \n\n-/Expertise du Foncier\n-/Etat D\'avancement\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 1, 9500.00, 0.20, 64, NULL, '2024-06-08 15:07:11', NULL),
(65, 'Expertise immobilière d\'un complexe sportif faisant l\'objet des T.F N° TF68125/C; TF120567/C et TF126155/C de superficie globale de 5107.50 m², sis quartier LA GIRONDE - Casablanca\n-/Expertise du Foncier\n-/Validation du programme d\'investissement.', 1, 6500.00, 0.20, 65, NULL, '2024-06-08 15:07:11', NULL),
(66, 'Evalaution Immobilière du lot terrain ayant le TF N°54.601/63de superficie 131m²,  sis Nouaceur.', 1, 3000.00, 0.20, 66, NULL, '2024-06-08 15:07:11', NULL),
(67, 'Evaluation Immobilière d’un projet immobilier de type « Immeuble en SS R+3 », sis , Casablanca - Maroc. Objet du TF N° 21.416/C de Superficie 511m²\n\n-/Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 1, 9000.00, 0.20, 67, NULL, '2024-06-08 15:07:11', NULL),
(68, 'Evaluation Immobilière d’un bien immobilier de type « villa », sis , El Jadida- Maroc. Objet du TF N° 110.277/08 de Superficie 190m²', 1, 3000.00, 0.20, 68, NULL, '2024-06-08 15:07:11', NULL),
(69, 'Evaluation Immobilière d’un bien immobilier de type « maison », sis , Temara- Maroc. Objet du TF N° 24,659/38 de Superficie 63m²', 1, 3000.00, 0.20, 69, NULL, '2024-06-08 15:07:11', NULL),
(70, 'Evaluation Immobilière d’un projet immobilier, sis Berrechid, Casablanca - Maroc. Objet des TF 146.033/53 (197m²); 146.034/53 (203m²);146.036/53(202m²) et 146.035/53 (197m²)\n\n-/Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 1, 8500.00, 0.20, 70, NULL, '2024-06-08 15:07:11', NULL),
(71, 'Evaluation d\'un état d\'avancement du projet porté par  la Sté Boyout EL MINIAA', 1, 3500.00, 0.20, 71, NULL, '2024-06-08 15:07:11', NULL),
(72, 'Evalaution Terrain ayant le TF N°16704/D de superficie 11940m² sis commune Ouled Azzouz', 1, 3500.00, 0.20, 72, NULL, '2024-06-08 15:07:11', NULL),
(73, 'Evalaution Terrain ayant le TF N°128471/63 de superficie 271m² sis commune OULED SALEH NOUACEUR', 1, 3000.00, 0.20, 73, NULL, '2024-06-08 15:07:11', NULL),
(74, 'Evaluation Terrain ayant TF N° 192/65 de superficie de 3300m² sis Marrakech', 1, 5000.00, 0.20, 74, NULL, '2024-06-08 15:07:11', NULL),
(75, 'Evaluation immobilière du projet sis Tiznit \n\n-/Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.', 1, 9500.00, 0.20, 75, NULL, '2024-06-08 15:07:11', NULL),
(76, 'Evaluation d\'un état d\'avancement d\'un projet sis Agadir Drarga', 1, 3500.00, 0.20, 76, NULL, '2024-06-08 15:07:11', NULL),
(77, 'Evaluation Immobilière du Projet en (R+4) faisant l\'objet du  TF N° 19.712/J,  sis SAFI :\n\n-/Expertise du Foncier\n-/Evaluation C.A\n-/Validation du programme d\'investissement.', 1, 9500.00, 0.20, 77, NULL, '2024-06-08 15:07:11', NULL),
(78, 'Evaluation Immobilière du Projet en (R+5) faisant l\'objet du  TF N° 31.05/23,  sis SAFI :\n\n-/Expertise du Foncier\n-/Evaluation C.A\n-/Validation du programme d\'investissement.', 1, 9500.00, 0.20, 78, NULL, '2024-06-08 15:07:11', NULL),
(79, 'Evaluation Immobilière d’un projet immobilier , sis , SIDI Othmane Baladiyat Lahraouiyine OULAD MOULOUK . Objet du TF N° 187.098/12 de Superficie 10094m²\n\n-/Expertise du Foncier\n-/Validation du programme d\'investissement.', 1, 6500.00, 0.20, 79, NULL, '2024-06-08 15:07:11', NULL),
(80, 'Evalaution de 04 Terrains Sis Had Soualem ayant les T.F :\n- N°105.845/53 de superficie 632m² \n- N° 105.837/53 de superficie 564m²\n- N° 105.862/53 de superficie 876m²\n- N° 105.846/53 de superficie 618m²', 1, 3500.00, 0.20, 80, NULL, '2024-06-08 15:07:11', NULL),
(81, 'Expertise Immobilière de commerce ayant le TF N°134.408/13 de superfcie global de  : 93 m² RDC et 46 m²de mezzanine sis Kenitra', 1, 2200.00, 0.20, 81, NULL, '2024-06-08 15:07:11', NULL),
(82, 'Evaluation d\'un actif immobilier de type maison ayant le TF N°4089/R de superficie de 182m² sis Rabat Hassane.', 1, 3000.00, 0.20, 82, NULL, '2024-06-08 15:07:11', NULL),
(83, 'Evaluation Terrain ayant TF N° 12250/85 de superficie de 163m² sis Sidi Hajjaj', 1, 3000.00, 0.20, 83, NULL, '2024-06-08 15:07:11', NULL),
(84, 'Evaluation Immobilière d’unTerrain , sis , Zone Industrielle de SAPINO NOUACER . Objet du TF N° 8884/63  de Superficie 14110m²\n-/Expertise du Foncier\n-/Validation du programme d\'investissement.', 1, 6500.00, 0.20, 84, NULL, '2024-06-08 15:07:11', NULL),
(85, 'Evaluation des commerces ayant  :\n-/ TF N° 1411/ 33de superficie  1.252m² \n-/TF N°811/T superficie 8.039m² \n-/TF N° 62.586/C de superficie 1.056m²', 3, 3500.00, 0.20, 85, NULL, '2024-06-08 15:07:11', NULL),
(86, 'Evaluation d\'un actif immobilier de type Duplexe ayant le TF N°231764/06 de superficie de 182m² sis TAGHAZOUTE-AGADIR', 1, 3000.00, 0.20, 86, NULL, '2024-06-08 15:07:11', NULL),
(87, 'Evaluation Terrain ayant TF N° 125034/53 de superficie de 244m² sis Berrechid', 1, 3000.00, 0.20, 87, NULL, '2024-06-08 15:07:11', NULL),
(88, 'Evalaution d\'un terrain ayant le TF N°18.093/53 sis Berrechid  de superficie de 32.160m²', 1, 6000.00, 0.20, 88, NULL, '2024-06-08 15:07:11', NULL),
(89, 'Evaluation Immobilière du Projet en (R+5) faisant l\'objet du  TF N° 93.197/47 de superficie 1.155,  sis Casablanca :\n\n-/Expertise du Foncier\n-/Validation du C.A\n-/Validation du programme d\'investissement.', 1, 9500.00, 0.20, 89, NULL, '2024-06-08 15:07:11', NULL),
(90, 'Evaluation Villa ayant TF N° 126.832/C de superficie de 200m² sis Hay Mohammadi', 1, 3000.00, 0.20, 90, NULL, '2024-06-08 15:07:11', NULL),
(91, 'Evaluation du Terrain ayant  le T.F N° 51.265/53 de superficie de 26.684m² sis Had Soualem', 1, 5000.00, 0.20, 91, NULL, '2024-06-08 15:07:11', NULL),
(92, 'Evaluation du projet objet des deux Terrain ayant  le T.F N° 9215/15 et 9216/15 de superficie respectivement de 1ha 10 a et 1ha 5a sis Had Soualem :\n-/ Evaluation du Foncier,\n-/ Validation du programme d\'investissement.', 1, 6500.00, 0.20, 92, NULL, '2024-06-08 15:07:11', NULL),
(93, 'Evaluation Immobilière du Projet en (R+5) faisant l\'objet du  TF N° 73.778/04 de superficie 3ha 18a 65ca,  sis Marrakech :\n\n-/Expertise du Foncier\n-/Validation du C.A\n-/Validation du programme d\'investissement.', 1, 9500.00, 0.20, 93, NULL, '2024-06-08 15:07:11', NULL),
(94, 'Evaluation d\'une villa ayant le TF N°105.800/03 de superficie de 1.623m² sis Rabat', 1, 2200.00, 0.20, 94, NULL, '2024-06-08 15:07:11', NULL),
(95, 'Evaluation immobilière d\'une maison ayant le TF N° 15821/K de superficie de 173m² sis Meknes', 1, 3000.00, 0.20, 95, NULL, '2024-06-08 15:07:11', NULL),
(96, 'Evaluation Immobilière d\'un terrain ayant le T.F N° 191.365/63 de superficie 455 m²sis Dar Bouazza Casablanca', 1, 3000.00, 0.20, 96, NULL, '2024-06-08 15:07:11', NULL),
(97, 'Evaluation Immobilière d\'un terrain ayant le T.F N° 121.221/01 de superficie 768 m²sis Quartier sidi Abderrahmane Casablanca', 1, 3000.00, 0.20, 97, NULL, '2024-06-08 15:07:11', NULL),
(98, 'Evaluation Immobilière du Projet  porté par la Sté ZADRI INTERNATIONAL sis Martil:\n\n-/Expertise du Foncier\n-/Validation du C.A\n-/Etat d\'avancement\n-/Validation du programme d\'investissement.', 1, 11500.00, 0.20, 98, NULL, '2024-06-08 15:07:11', NULL),
(99, 'Action de Formation \n\n-/ Evaluation immobilière (2J)\n-/ Fondamentaux de Financement Immobilier (1J)', 3, 3800.00, 0.20, 99, NULL, '2024-06-08 15:07:11', NULL),
(100, 'Evaluation Immobilière du Projet en (R+4) faisant l\'objet du  TF N° 169.904/13 de superficie 267m²,  sis Kenitra :\n\n-/Expertise du Foncier\n-/Validation du C.A\n-/Validation du programme d\'investissement.', 1, 9500.00, 0.20, 100, NULL, '2024-06-08 15:07:11', NULL),
(101, 'Evaluation d\'un duplex faisant l\'objet du TF N° 53.029/01 de superficie 216m², sis Maarif Casablanca', 1, 2500.00, 0.20, 101, NULL, '2024-06-08 15:07:11', NULL),
(102, 'Evaluation d\'un appartement faisant l\'objet du TF N° 179.873/63 de superficie 108m², sis  DAR BOUAZZA, Province de NOUACEUR', 1, 2500.00, 0.20, 102, NULL, '2024-06-08 15:07:11', NULL),
(103, 'Evaluation d\'une villa faisant l\'objet du TF N° 40.018/53 de superficie 189m², sis  BERRECHID', 1, 3000.00, 0.20, 103, NULL, '2024-06-08 15:07:11', NULL),
(104, 'Evalaution du Fond de commerce de la librairie sis, 21 BERD EL BEKRI EL MELLAH MEKNES', 1, 4000.00, 0.20, 104, NULL, '2024-06-08 15:07:11', NULL),
(105, 'Evaluation d\'un terrain faisant l\'objet du TF N° 95.539/26 de superficie 518m², sis  Mohammedia', 1, 3000.00, 0.20, 105, NULL, '2024-06-08 15:07:11', NULL),
(106, 'Evaluation Immobilière du Projet  porté par la Sté BEL ENDROIT sis Marrakech:\n\n-/Expertise du Foncier\n-/Validation du C.A\n-/Validation du programme d\'investissement.', 1, 9500.00, 0.20, 106, NULL, '2024-06-08 15:07:11', NULL),
(107, 'Evaluation immobilière d\'un terrain faisant l\'objet de RTF N° 22.579/C de superficie de 866m², sis Maarif Casablanca:\n-/Expertise du Foncier\n-/Validation du C.A\n-/Validation du programme d\'investissement.', 1, 9500.00, 0.20, 107, NULL, '2024-06-08 15:07:11', NULL),
(108, 'Evaluation Immobilière du Projet faisant l\'objet des  TF N° 6523/S et 45.686/09 de superficie de 1Ha1030m² et 1Ha1790m²,  sis Inzegan Ait Melloul :\n\n-/Expertise du Foncier\n-/Validation du C.A\n-/Validation du programme d\'investissement.', 1, 9500.00, 0.20, 108, NULL, '2024-06-08 15:07:11', NULL),
(109, 'Evaluation immobilière d\'un terrain faisant l\'objet de TF N° 191.362/63 de superficie de 438m², sis Dar Bouazza Casablanca', 1, 3000.00, 0.20, 109, NULL, '2024-06-08 15:07:11', NULL),
(110, 'Evaluation immobilière d\'un terrain faisant l\'objet de TF N° 106.620/38 de superficie de 84m², sis Temara', 1, 3000.00, 0.20, 110, NULL, '2024-06-08 15:07:11', NULL),
(111, 'Evaluation immobilière d\'une villa  ayant le TF N° 71.574/08 de superficie de 402m² sis EL JADIDA', 1, 3000.00, 0.20, 111, NULL, '2024-06-08 15:07:11', NULL),
(112, 'Evaluation d\'une villa faisant l\'objet du TF N° 44.432/31 de superficie 159m², sis  Tiznit', 1, 3000.00, 0.20, 112, NULL, '2024-06-08 15:07:11', NULL),
(113, 'Evaluation d\'un immeuble en (R+3) ayant le TF N°2799/49 sis sidi bernoussi de superficie de 985m².', 1, 3500.00, 0.20, 113, NULL, '2024-06-08 15:07:11', NULL),
(114, 'Evaluation Immobilière de terrain ayant le TF N° 258.260/04 de superficie 869m² sis Marrakech\n\nEvaluation Immobilière de terrain ayant le TF N° 261.441/04 de superficie 85m² sis Marrakech', 2, 3000.00, 0.20, 114, NULL, '2024-06-08 15:07:11', NULL),
(115, 'Evaluation du projet faisant l\'objet du TF N° 6145/31 de superficie 44.763m², sis  Tiznit\n-/Expertise du Foncier\n-/Validation du C.A\n-/Validation du programme d\'investissement.', 1, 9500.00, 0.20, 115, NULL, '2024-06-08 15:07:11', NULL),
(116, 'Evaluation immobilière d\'un immeuble, faisant l\'objet du TF N° 4392/C de superficie de 252m², sis Derb Omar Casablanca', 1, 2200.00, 0.20, 116, NULL, '2024-06-08 15:07:11', NULL),
(117, 'Evaluation Immobilière du Projet faisant l\'objet des  TF N° 7309/C de superficie de 44.010m²sis Casablanca :\n\n-/La validation de la finalisation des travaux de lotissement sur le projet (BABIL AMENAGEMENT), \n-/Le montant investi par le client, \n-/Une explication par rapport  aux dépenses supplémentaires sur le PI telles que l’impôt de la TPI, la construction d’un bassin de retenue d’eau pluviale et une station de relevage…', 1, 9000.00, 0.20, 117, NULL, '2024-06-08 15:07:11', NULL),
(118, 'Evaluation du projet faisant l\'objet du TF N° 31337/C de superficie 205m², sis  Oasis Casablanca\n-/Expertise du Foncier\n-/Validation du C.A\n-/Validation du programme d\'investissement.\n-/Etat d\'Avancement', 1, 9500.00, 0.20, 118, NULL, '2024-06-08 15:07:11', NULL),
(119, 'Evaluation d\'un appartement faisant l\'objet du TF N° 79.764/64 de superficie 215m², sis  DAR BOUAZZA, Province de NOUACEUR', 1, 2500.00, 0.20, 119, NULL, '2024-06-08 15:07:11', NULL),
(120, 'Evaluation  du Projet ayant  le T.F 29.819/F de superficie 5.522m² sis Fes :\n-/Expertise du Foncier\n-/Validation du C.A\n-/Validation du programme d\'investissement.\n-/Etat d\'avancement\n', 1, 12000.00, 0.20, 120, NULL, '2024-06-08 15:07:11', NULL),
(121, 'Evaluation du Projet ayant  le T.F N° 8.216/41  de superficie 1.751m² sis BHALILI -Sefrou:\n-/Expertise du Foncier\n-/Validation du C.A\n-/Validation du programme d\'investissement.\n-/Etat d\'avancement', 1, 12000.00, 0.20, 121, NULL, '2024-06-08 15:07:11', NULL),
(122, 'Evaluation  du Projet ayant  le T.F N° 8.216/41  de superficie 750m² sis Imouzzar Kandar\n-/Expertise du Foncier\n-/Validation du C.A\n-/Validation du programme d\'investissement.\n-/Etat d\'avancement', 1, 12000.00, 0.20, 122, NULL, '2024-06-08 15:07:11', NULL),
(123, '-/Evaluation d\'une unité industrielle, ayant le TF N° 31.119/25 de superficie de 599m², sis Zone Industrielle de Benslimane\n\n-/Evaluation des équipements, ', 1, 8500.00, 0.20, 123, NULL, '2024-06-08 15:07:11', NULL),
(124, 'Evaluation d\'une terrain agricole ayant le T.F N° 97.391/02 de superficie 21.870 m², sis Oujda', 1, 5000.00, 0.20, 124, NULL, '2024-06-08 15:07:11', NULL),
(125, 'Evaluation d\'une terrain agricole ayant le T.F N° 7.455/40 de superficie 188 m², sis Berkane', 1, 3500.00, 0.20, 125, NULL, '2024-06-08 15:07:11', NULL),
(126, 'Evaluation d\'une maison ayant de TF N° 25.987 de superificie 87m² sis youssoufia', 1, 3000.00, 0.20, 126, NULL, '2024-06-08 15:07:11', NULL),
(127, 'Evalaution maison ayant le TF N°17.899  de superficei de 72 m² sisTAMANSOURTE TRANCHE 01 LOT V-63.', 1, 3000.00, 0.20, 127, NULL, '2024-06-08 15:07:11', NULL),
(128, 'Evaluation du projet:\n-/Expertise du Foncier\n-/Validation du C.A\n-/Validation du programme d\'investissement.\n', 1, 9500.00, 0.20, 128, NULL, '2024-06-08 15:07:11', NULL),
(129, 'Evaluation du projet faisant l\'objet du TF N° 40500/53 de superficie 12088m², sis  COMMUNE SAHEL OULED HRIZ PROVINCE DE BERRECHID\n-/Expertise du Foncier\n-/Validation du C.A\n-/Validation du programme d\'investissement.\n', 1, 9500.00, 0.20, 129, NULL, '2024-06-08 15:07:11', NULL),
(130, 'Evaluation  du Projet ayant  le T.F N° 226.488/07 de superficie  de 1.744m² sis Fes :\n-/Expertise du Foncier\n-/Validation du C.A\n-/Validation du programme d\'investissement.\n-/Etat d\'avancement\n', 1, 12000.00, 0.20, 130, NULL, '2024-06-08 15:07:11', '2024-06-08 15:10:22');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fees`
--

CREATE TABLE `fees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `invoice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fees`
--

INSERT INTO `fees` (`id`, `description`, `amount`, `invoice_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Demande Plan Cadastral', 100.00, 31, '2024-06-02 18:51:36', '2024-06-02 18:51:36', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(50) NOT NULL,
  `societe_id` bigint(20) UNSIGNED NOT NULL,
  `mission_type_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_date` date NOT NULL,
  `prestation_date` date DEFAULT NULL,
  `client_name` varchar(100) DEFAULT NULL,
  `ice` varchar(200) DEFAULT NULL,
  `client_adress` text DEFAULT NULL,
  `object` varchar(100) DEFAULT NULL,
  `detail` text NOT NULL,
  `advance` decimal(11,2) DEFAULT NULL,
  `discount` decimal(11,2) DEFAULT NULL,
  `commission` decimal(11,2) DEFAULT NULL,
  `payment_mode` varchar(80) NOT NULL,
  `remainder` decimal(11,2) NOT NULL,
  `totalHT` decimal(11,2) NOT NULL,
  `totalHTRem` decimal(11,2) NOT NULL,
  `montantTVA` decimal(11,2) NOT NULL,
  `totalTTC` decimal(11,2) NOT NULL,
  `totalTTC2` decimal(11,2) NOT NULL,
  `status` varchar(50) NOT NULL,
  `value_status` int(11) NOT NULL,
  `payment_date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ref_bc` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_number`, `societe_id`, `mission_type_id`, `invoice_date`, `prestation_date`, `client_name`, `ice`, `client_adress`, `object`, `detail`, `advance`, `discount`, `commission`, `payment_mode`, `remainder`, `totalHT`, `totalHTRem`, `montantTVA`, `totalTTC`, `totalTTC2`, `status`, `value_status`, `payment_date`, `deleted_at`, `created_at`, `updated_at`, `ref_bc`) VALUES
(1, 'FA-0001-2024', 1, 1, '2024-01-02', NULL, 'Société  Lyslaw SARLU', '003297379000083', '265 Bd Zerktounui Etage 09 N 92 - 20150 - Casablanca - Maroc', 'Expertise_Bureau_Palmeir_Hajar', 'Evaluation Immobilière', 2500.00, 0.00, 0.00, 'Virement', 0.00, 2083.33, 0.00, 416.66, 2500.00, 2500.00, 'Payée', 3, '2024-01-01', NULL, '2024-06-01 23:57:36', NULL, NULL),
(2, 'FA-0002-2024', 1, 1, '2024-01-03', '2024-03-08', 'Sté SOFT INTEGRATION', '002034845000082', '43, BD D\'anfa', 'Expertise_Entrepôt_Ain Sebaa', 'Evaluation de la valeur vénale\nd’un « Bien » immobilier, de type « Entrepôts », sis Boulevard SB 24, Zone Industrielle Sidi Bernoussi,\nCasablanca - Maroc. Objet des TF N°211/C & 107.929/49.', 7800.00, 0.00, 0.00, 'Chèque', 0.00, 6500.00, 0.00, 1300.00, 7800.00, 7800.00, 'Payée', 3, '2024-03-08', NULL, '2024-06-01 23:57:36', NULL, NULL),
(3, 'FA-0003-2024', 1, 1, '2024-01-03', '2024-04-01', 'Sté Shelters Sarl', '000046983000025', 'Centre D\'affaire Rue Arroz Secteur Ii Bureau N 26 Hay Riad - Rabat', 'Expertise_Projet_Tamesna_Anass', 'Evaluation immobilière  d\'un projet Construction d\'un projet en SS + 4 Etages de TF 74,677/78 d’une superficie de 480m², Sis Skhirate\n- Expertise du Foncier\n- Evaluation du Chiffre d\'affaires du projet\n- Validation du programme d\'investissement.', 8850.00, 0.00, 0.00, 'Virement', 0.00, 7375.00, 0.00, 1475.00, 8850.00, 8850.00, 'Payée', 3, '2024-04-01', NULL, '2024-06-01 23:57:36', NULL, NULL),
(4, 'FA-0004-2024', 1, 1, '2024-01-22', NULL, 'Sté HAYRAE', '003425206000014', '', 'Expertise_Projet_TEMARA_Yousr', 'Evaluation immobilière du projet ayant le T.F N° 68.482/R de superficie 7.040m²sis Temara\n\n- Expertise du Foncier\n- Evaluation du Chiffre d\'affaires du projet\n- Validation du programme d\'investissement.', 0.00, 0.00, 0.00, 'Virement', 0.00, 9500.00, 0.00, 1900.00, 11400.00, 11400.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(5, 'FA-0005-2024', 1, 1, '2024-01-24', '2024-04-01', 'Sté SOUR AL BAIDA SARL', '003043674000075', '13 BD Med V Lotissement EL YOUSSER Etage 3 Gauche BerrechiD', 'Expertise_Projet_ Almaz_Yousr', 'Evaluation immobilière du projet ayant le T.F N° 78.707/64 de superficei 225m²sis Hay Hassani\n\n- Expertise du Foncier\n- Evaluation du Chiffre d\'affaires du projet\n- Validation du programme d\'investissement.', 9690.00, 0.00, 0.00, 'Virement', 0.00, 8075.00, 0.00, 1615.00, 9690.00, 9690.00, 'Payée', 3, '2024-04-01', NULL, '2024-06-01 23:57:36', NULL, NULL),
(6, 'FA-0006-2024', 1, 1, '2024-01-24', '2024-02-12', 'Sté Olympe INDUSTRIES', '000013188000011', '13 Rue Rocroix Belvedere - Casablanca', 'Expertise_Immeuble_Sidi Marrouf', 'Expertise Immobilière de l’estimation de la valeur vénale d’un « Bien » immobilier, de type « Immeuble », Lotissement « SOUKAINA », Lot N°34, Zone Industrielle Sidi Maarouf, Casablanca Maroc, objet du T.F N°16.029/63.', 6600.00, 0.00, 0.00, 'Chèque', 0.00, 5500.00, 0.00, 1100.00, 6600.00, 6600.00, 'Payée', 3, '2024-02-12', NULL, '2024-06-01 23:57:36', NULL, NULL),
(7, 'FA-0007-2024', 1, 1, '2024-01-24', '2024-02-07', 'Sté AKMS TECH', '000080053000020', '10 Rue Ibnou Ayoub Bourgoune - Casablanca', 'Expertise_Magasin _Bourgonne_mme benkirane', 'Evaluation Immobilière d\'un local Commercial ayant le T.F N° 36.902/01, de superficie 119 m², sis Casablanca ANFA', 3366.00, 0.00, 0.00, 'Chèque', 0.00, 2805.00, 0.00, 561.00, 3366.00, 3366.00, 'Payée', 3, '2024-02-07', NULL, '2024-06-01 23:57:36', NULL, NULL),
(8, 'FA-0008-2024', 1, 1, '2024-01-24', '2024-03-14', 'CIE SUCRIERE MAROCAINE ET DE RAFFINAGE (COSUMAR)', '001555060000024', '8, Rue El Mouatamid Ibnou Abbad Ex Vuillanier, Roches Noires. - Bp 3098 - Assoukhour', 'Expertise_Terrain_Cosumar', 'Expertise de la valeur locative d’un actif immobilier, de type\'sis Rue ABOU ZAID BAAKILI, Roches Noires, Préfecture d\'Aïn Sebaâ-Hay Mohammadi, Casablanca- Maroc, objet des TF N°39.623/C & 31.336/C & 31.931/C.', 12000.00, 0.00, 0.00, 'Virement', 0.00, 10000.00, 0.00, 2000.00, 12000.00, 12000.00, 'Payée', 3, '2024-03-14', NULL, '2024-06-01 23:57:36', NULL, NULL),
(9, 'FA-0009-2024', 1, 1, '2024-01-26', '2024-03-05', 'Sté MAROCAINE INDUSTRIELLE DE CONTROLE ET D\'EQUIPEMENT', '001532744000089', '5, Bd Abdellatif Ben Kaddour Anfa Racine 6 Eme Etage - Casablanca', 'Expertise_Bureau_Abdellatif_Ben Keddour', 'Evaluation immobilière d\'un bureau ayant le T.F N° 59.128/01 de superficie 125 m² sis Casablanca ANFA', 3600.00, 0.00, 0.00, 'Chèque', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Payée', 3, '2024-03-05', NULL, '2024-06-01 23:57:36', NULL, NULL),
(10, 'FA-0010-2024', 1, 1, '2024-01-29', NULL, 'Sté QUALITE CONTROLE MESURE', '001536767000011', 'Avenue Med V Résidence Essalam Centre Imm A N°11 - Kénitra', 'Expertise_Villa_Kenitra_KAMAL SAHAIMI', 'Evaluation Immobilière', 0.00, 0.00, 0.00, 'Virement', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(11, 'FA-0011-2024', 1, 1, '2024-01-29', '2024-02-12', 'Sté VIGIPLUS', '001533057000077', '', 'Expertise_Appat_Yacoub EL Mansour_ Appt', 'Expertise Immobilière', 2500.00, 0.00, 0.00, 'Chèque', 0.00, 2083.33, 0.00, 416.66, 2500.00, 2500.00, 'Payée', 3, '2024-02-12', NULL, '2024-06-01 23:57:36', NULL, NULL),
(12, 'FA-0012-2024', 1, 1, '2024-01-29', NULL, 'CREDIT DU MAROC', '000102564000025', '201 Boulevard D\'anfa - Anfa', 'Expertise Immeuble_Gauthier', 'Expertise Immobilière  concernant la détermination d’une fourchette de prix de la zone où sont situés les « 03 Immeubles », sis Impasse Galilée, Immeuble A, B & C, Quartier Gauthier, Casablanca- Maroc. Objet du T.F Mère N° 21.160/D.', 0.00, 0.00, 0.00, 'Viement', 0.00, 2200.00, 0.00, 440.00, 2640.00, 2640.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(13, 'FA-0013-2024', 1, 1, '2024-02-06', NULL, 'Mme CHIADMI ZAHRA', '-----------------------------', '-----------------------------', 'Expertise_APPAT_Chiadmi_CFC_CASABLANCA', 'Evaluation immobilière d\'un appartement ayant le T.F N° 67.209/64 de superficie 76 m²sis Casablanca', 0.00, 0.00, 0.00, 'Viement', 0.00, 2500.00, 0.00, 300.00, 3000.00, 3000.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(14, 'FA-0014-2024', 1, 1, '2024-02-08', '2024-02-22', 'Sté TRANSIGEL', '000203883000006', '25 Rue Abou Majid Al Bahar Appt 15 Étage 1 - Casablanc', 'Expertise_Appartement_Pamier _M-Ragui', 'Expertise Immobilière', 3000.00, 0.00, 0.00, 'Chèque', 0.00, 2500.00, 0.00, 600.00, 3000.00, 3000.00, 'Payée', 3, '2024-02-22', NULL, '2024-06-01 23:57:36', NULL, NULL),
(15, 'FA-0015-2024', 1, 1, '2024-02-08', '2024-02-22', 'Me SALIMA BENCHEKROUN KARIMI', '002454545000013', 'BD Oued Melouia Lotissement SALWANE IMM Office 51 2ème étage N°10 Oulfa Casablanca', 'Expertise _Bureau_Oulfa', 'Expertise Immobilière d’un « Bien » immobilier, de type « Plateau Bureau », sis Boulevard Oued Melouia, Lotissement « Selouane»,\nImmeuble Office 51, 2ème étage, Bureau n°9, Quartier Oulfa, Arrondissement Hay Hassani Casablanca –\nMaroc, objet du T.F N°63.086/64.', 1800.00, 0.00, 0.00, 'Chèque', 0.00, 1500.00, 0.00, 1300.00, 1800.00, 1800.00, 'Payée', 3, '2024-02-22', NULL, '2024-06-01 23:57:36', NULL, NULL),
(16, 'FA-0016-2024', 1, 1, '2024-02-12', NULL, 'M.NAMATE MOHAMED', '-----------------------------', '-----------------------------', 'Expertise_Lot_Terrain_Kenitra_Yousr', 'Evaluation d\'un lot de  d\'immeuble en (R+2) ayant le TF N° 73.310/13 de superficie de 108 m²', 0.00, 0.00, 0.00, 'Virement', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(17, 'FA-0017-2024', 1, 1, '2024-02-12', NULL, 'Sté EDUCATIONAL ASSET MANAGEMENT', '003339381000056', '37; Rue DAOUD DAHIRI 3ème Etage MAARIF-Casablanca', 'Expertise_Ecole_Hay_El_Kods_Casablanca', 'Evaluation Immobilière d’un actif immobilier, de type « Ecole », pour le compte de la BANK AL YOUSR, sis Quartier El Qods, Arrondissement Sidi Bernoussi, Casablanca - Maroc, objet du TF N°10.944/32.', 0.00, 0.00, 0.00, 'Virement', 0.00, 6500.00, 0.00, 1300.00, 7800.00, 7800.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(18, 'FA-0018-2024', 1, 3, '2024-02-12', '2024-02-26', 'Sté DYFFERENCE GESTION', '003314415000085', 'Rés EL KHATTABI IMM B 1er Etg N°3 MARRAKECH', 'Action de Formation', 'Action de Formation : Séminaire en Inititation en Immobilier .', 2400.00, 0.00, 0.00, 'Virement', 0.00, 2000.00, 0.00, 400.00, 2400.00, 2400.00, 'Payée', 3, '2024-02-26', NULL, '2024-06-01 23:57:36', NULL, NULL),
(19, 'FA-0019-2024', 1, 1, '2024-02-19', '2024-04-03', 'Sté HADDA', '002034845000082', '43, BD D\'anfa', 'Expertise_Entrepôt_Ain Sebaa', 'Evaluation de la valeur vénale, d’un actif immobilier, de type « Entrepôts » , sis Zone industrielle « OULAD HADDA », Commune Sidi Hajjaj Oued Hassar, Province de Médiouna, Casablanca - Maroc. Objet du TF N°210.388/12.', 7800.00, 0.00, 0.00, 'Chèque', 0.00, 6500.00, 0.00, 1300.00, 7800.00, 7800.00, 'Payée', 3, '2024-04-03', NULL, '2024-06-01 23:57:36', NULL, NULL),
(20, 'FA-0020-2024', 1, 1, '2024-02-19', '2024-04-03', 'Ste ZHOR IMMOBILIER', '001769674000032', '43, BD D\'anfa', 'Expertise_Entrepôt_Ain Sebaa', 'Evaluation de la valeur vénale d’un « Bien » immobilier, de type « Immeuble », sis 43, Angle Boulevard d’Anfa & Rue Abdellah Guennoun, Préfecture d’Anfa, Casablanca- Maroc. Objet des TF N°110/D & 47.522/C.', 7800.00, 0.00, 0.00, 'Chèque', 0.00, 6500.00, 0.00, 1300.00, 7800.00, 7800.00, 'Payée', 3, '2024-04-03', NULL, '2024-06-01 23:57:36', NULL, NULL),
(21, 'FA-0021-2024', 1, 1, '2024-02-19', '2024-04-03', 'Sté HISTOIRE D ANFA', '001906941000096', '43, BD D\'anfa', 'Expertise_Entrepôt_Ain Sebaa', 'Evaluation dela valeur vénale d’un « Bien » immobilier, de type « Immeuble », sis Rue Corniche d’Anfa, Préfecture d’Anfa, Casablanca- Maroc. Objet des TF N° 108.775/01, 108.776/01, 108.777/01, 108.778/01, 108.779/01, 108.780/01, 108.781/01 & 108.782/01.', 7800.00, 0.00, 0.00, 'Chèque', 0.00, 6500.00, 0.00, 1300.00, 7800.00, 7800.00, 'Payée', 3, '2024-04-03', NULL, '2024-06-01 23:57:36', NULL, NULL),
(22, 'FA-0022-2024', 1, 3, '2024-02-26', '2024-03-14', 'BANK AL MAGHRIB\nDirection des Achats', '001590140000069', '\n\'Avenue Annakhil, Hay Riad – Rabat', 'Animation de formation en BIM 360', 'Animation de formation en BIM 360', 52800.00, 0.00, 0.00, 'Virement', 0.00, 44000.00, 0.00, 8800.00, 52800.00, 52800.00, 'Payée', 3, '2024-03-14', NULL, '2024-06-01 23:57:36', NULL, NULL),
(23, 'FA-0023-2024', 1, 1, '2024-02-28', NULL, 'Mme Lamhamedi Cherradi Monia', '-----------------------------', '-----------------------------', 'Expertise_Appartement_Casablanca', 'Evaluation immobilière d\'un appartement ayant le T.F N° 28.894/64 de superficie 126 m²sis Bd Yacoub El Mansour, Quartier Beauséjour, Casablanca', 2000.00, 0.00, 0.00, 'Espèce', 0.00, 1666.67, 0.00, 333.33, 2000.00, 2000.00, 'Payée', 3, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(24, 'FA-0024-2024', 1, 1, '2024-02-28', '2024-04-01', 'M.ZOUGARI BELKHAYAT Ali ', '-----------------------------', '-----------------------------', 'Expertise Villa Dar Bouazza ', 'Expertise Immobilière d’un « Bien » immobilier, de type « Villa », sis Résidence Salima, Villa n°1, Rue Oued El Malih, Commune deDar Bouazza, Province de Nouaceur, Casablanca – Maroc. Objet du : TF N°7.278/63.', 3600.00, 0.00, 0.00, 'Virement', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Payée', 3, '2024-04-01', NULL, '2024-06-01 23:57:36', NULL, NULL),
(25, 'FA-0025-2024', 1, 1, '2024-02-28', '2024-03-06', 'Fisatex  SARL', '001623898000015', 'Zone industrielle Eljadida', 'Expertise unite_ EL JADIDA', 'Expertise immobilière d’un bien immobilier de type « Unité industrielle », sis Zone Industrielle d’El Jadida, El Jadida-Maroc, objet des T.F N°63.354/08, 63.356/08 & 63.358/08.', 6000.00, 0.00, 0.00, 'Chèque', 0.00, 5000.00, 0.00, 1000.00, 6000.00, 6000.00, 'Payée', 3, '2024-03-06', NULL, '2024-06-01 23:57:36', NULL, NULL),
(26, 'FA-0026-2024', 1, 1, '2024-02-28', '2024-04-01', 'MACHROUHI FATIMA EZZAHRA', '-----------------------------', '-----------------------------', 'Expertise_Appat_Berrechid', 'Evaluation immobilière d\'un appartement ayant le T.F N° 17.560/53 de superficie 124 m²sis Berrechid', 3000.00, 0.00, 0.00, 'Virement', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, 'Payée', 3, '2024-04-01', NULL, '2024-06-01 23:57:36', NULL, NULL),
(27, 'FA-0027-2024', 1, 1, '2024-02-28', NULL, 'M. HABI ALI', '-----------------------------', '-----------------------------', 'Expertise_Villa_Dar_Bouazza', 'Evaluation d\'un lot de terrain ayant le TF N° 52.451/63 de superficie de 500 m², sis Casablanca', 0.00, 0.00, 0.00, 'Virement', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(28, 'FA-0028-2024', 1, 1, '2024-02-28', NULL, 'Monsieur AIT OUSSARAH Mohamed Yassine STE AIT CAPITAL', '-----------------------------', '-----------------------------', 'Evalaution Projet Marrakech Yousr', 'Evaluation Immobilière du Projet ayant le TF N°131.430/04  de superficie de  86.140 m², sis PREFECTURE DE MARRAKECH COMMUNE TASSOULTANT.', 0.00, 0.00, 0.00, 'Virement', 11400.00, 9500.00, 0.00, 1900.00, 11400.00, 11400.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(29, 'FA-0029-2024', 1, 1, '2024-02-28', '2024-04-01', 'MADAME EL HARRAS MAHASSINE', '-----------------------------', '-----------------------------', 'Evaluation Appartement Casablanca Yousr', 'Evaluation immobilière d\'un appartement ayant le T.F N° 57.579/64  de superficie 127 m²sis Casablanca', 3000.00, 0.00, 0.00, 'Virement', 3000.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, 'Payée', 3, '2024-04-01', NULL, '2024-06-01 23:57:36', NULL, NULL),
(30, 'FA-0030-2024', 1, 1, '2024-02-28', NULL, 'M. AYOUB BERROU', '-----------------------------', '-----------------------------', 'Evaluation_Terrain_Fes_Yousr', 'Evaluation immobilière d’un « Bien » immobilier, de type « Lot de Terrain pour immeuble », sis Avenue Naoual, Lotissement « RIAD», Lot N°28, Arrondissement Saiss, Fès - Maroc, objet du T.F N° 144.187/07.', 0.00, 0.00, 0.00, 'Virement', 4200.00, 3500.00, 0.00, 700.00, 4200.00, 4200.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(31, 'FA-0031-2024', 1, 1, '2024-03-13', '2024-04-15', 'Mme BRICHA LOUBNA', '001931649000049', '165 Bd Abdelmoumen, appt 2 6ème étage', 'Evaluation_Bureau_Casabanca', 'Evaluation immobilière d\'un bureau ayant le TF N° 11760/71, sis Bd Abdlmoumen, Casablanca', 1800.00, 0.00, 0.00, 'Chèque', 100.00, 1500.00, 0.00, 300.00, 1800.00, 1900.00, 'Partiellement payée', 2, '2024-04-15', NULL, '2024-06-01 23:57:36', '2024-06-02 18:51:36', NULL),
(32, 'FA-0032-2024', 1, 1, '2024-03-13', '2024-03-14', 'Visite Technique Sidi Smail', '001974110000510', 'boîte postal 5897 essaada \nville  el jadida', 'Evaluation_Centre_Visite_Technique_Sidi Smail', 'Evaluation immobilière d\'un centre de visite Technique à Sidi Smail, Douar Lahmouchat, El Jadida, ayant le TF N°11.338/75 de superficie de 5.106m²', 4500.00, 0.00, 0.00, 'Virement', 4500.00, 3750.00, 0.00, 750.00, 4500.00, 4500.00, 'Payée', 3, '2024-03-14', NULL, '2024-06-01 23:57:36', NULL, NULL),
(33, 'FA-0033-2024', 1, 1, '2024-03-13', '2024-04-01', 'SOCIETE BENKIRANE IMMOBILIER-SARL', '001655728000025', 'Lot 165 Avenue Imam Ali B N 1 - Kénitra (M)', 'Evaluation Projet Kenitra', 'Evaluation Immobilière du Projet ayant le TF N° 185200/13 de superficie de  400 m², sis Kenitra :\n\n- Expertise du Foncier\n- Evaluation du Chiffre d\'affaires du projet\n- Validation du programme d\'investissement.', 9120.00, 0.00, 0.00, 'Virement', 9120.00, 7600.00, 0.00, 1520.00, 9120.00, 9120.00, 'Payée', 3, '2024-04-01', NULL, '2024-06-01 23:57:36', NULL, NULL),
(34, 'FA-0034-2024', 1, 1, '2024-02-13', NULL, 'Sté SO CAPITAL', '0', '', 'Evaluation Projet Ouasisi CasaBlanca', 'Evaluation Immobilière du  Projet de T.F N° 100.392/C  de superficie de 449 m², sis Angle Rue des Courlis & Rue des Eperviers, Quartier Riviera, -Casablanca', 0.00, 0.00, 0.00, 'Virement', 9690.00, 8075.00, 0.00, 1615.00, 9690.00, 9690.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(35, 'FA-0035-2024', 1, 1, '2024-03-13', '2024-04-01', 'SOCIETE MWY HOME Sarl', '-----------------------------', '-----------------------------', 'Evaluation Projet Kenitra', 'Evaluation Immobilière d’un projet immobilier de type « Immeuble en SS R+4 », sis Route de Mehdia, Kénitra - Maroc. Objet des TF 109.623/13 & 109.625/13.\n\n- Expertise du Foncier\n- Evaluation du Chiffre d\'affaires du projet\n- Validation du programme d\'investissement.', 11400.00, 0.00, 0.00, 'Virement', 11400.00, 9500.00, 0.00, 1900.00, 11400.00, 11400.00, 'Payée', 3, '2024-04-01', NULL, '2024-06-01 23:57:36', NULL, NULL),
(36, 'FA-0036-2024', 1, 1, '2024-03-13', NULL, 'Sté PROMANA', '000017116000073', 'MAGHRIB ARABI ZONE B2 IMM18 APP12 OULADOUJIH KENITRA (M) - Maroc', 'Evaluation Commerce Kenitra', 'Expertise Immobilière d’un « Bien » immobilier, de type « Commerce », situé au Lotissement « Le Vallon », Lot N°1443, Kenitra -Maroc, objet du T.F N°189.019/13.', 0.00, 0.00, 0.00, 'Virement', 4200.00, 3500.00, 0.00, 700.00, 4200.00, 4200.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(37, 'FA-0037-2024', 1, 1, '2024-03-13', NULL, 'M. ELALAOUI ABDELKARIM.', '-----------------------------', '-----------------------------', 'Evaluation Actif Salé', 'Expertise Immobilière  d’un « Bien » immobilier, de type « Maison », sis 3, Rue El Harcha, Lotissement « Jnane Ben Rahal », Arrondissement de Tabriquet, Salé - Maroc, objet du T.F N° 9.871/20.', 0.00, 0.00, 0.00, 'Chèque', 3600.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(38, 'FA-0038-2024', 1, 1, '2024-03-14', NULL, 'Mr JABRI ISSAM   ', '-----------------------------', '-----------------------------', 'Evaluation Lots terrains Fès', 'Evaluation de 06 lots de terrains (R+3) et (R+4) situés au lotissement AL ANBRA, sis Fes ', 0.00, 0.00, 0.00, 'Virement', 7200.00, 6000.00, 0.00, 1200.00, 7200.00, 7200.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(39, 'FA-0039-2024', 1, 1, '2024-03-14', NULL, 'Sté T. T GHRIS', '001677371000089', 'Rue Abou Daoud Dahiri Résidence Hadika N 8 - Tanger-Médina', 'Evaluation Lots terrains Fès', 'Evaluation du projet en cours de construction  objet de TF N° 2023/K sis MEKNES EL MENZAH :\r\n\r\n- Evaluation du Chiffre d\'affaires du projet\r\n- Validation du programme d\'investissement.\r\n- Etat d\'avancement du projet\r\n+ Forfait Déplacement (500dh)', 0.00, 0.00, 0.00, 'Virement', 12000.00, 10000.00, 0.00, 2000.00, 12000.00, 12000.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', '2024-06-02 12:20:38', NULL),
(40, 'FA-0040-2024', 1, 1, '2024-03-14', '2024-04-15', 'Mme. HAJALI Mouna ', '-----------------------------', '-----------------------------', 'Evaluation Villa Bouznika', 'Evaluation immobilière d\'une Villa ayant le T.F N° 25.137/25 de superficie 486 m²sis Bouznika-Provaince Ben Slimane', 3000.00, 0.00, 0.00, 'Chèque', 3000.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, 'Payée', 3, '2024-04-15', NULL, '2024-06-01 23:57:36', NULL, NULL),
(41, 'FA-0041-2024', 1, 1, '2024-03-15', NULL, 'M.Adnan MERABET', '-----------------------------', '-----------------------------', 'Evaluation Show room Tetoaun', 'Evaluation immobilière d’un « Bien » immobilier, de type « SHOWROOM », pour le compte de Bank Al Yousr, sis Route de Martil-Chabrit, Résidence « AVIATION », Commune urbaine de Tétouan, Tétouan - Maroc, objet du T.F N°68.720/19.', 0.00, 0.00, 0.00, 'Virement', 4200.00, 3500.00, 0.00, 700.00, 4200.00, 4200.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(42, 'FA-0042-2024', 1, 1, '2024-03-15', NULL, 'STE PROMO GOLDEN VIEW', '0', 'Avenue Des Far Résidence Dar Essalam Entre-étage Bureau Dar Essalam- E-3 Objet Du Titre Foncier 113.083/19 - Tetouan', 'Evaluation Etat d\'avancement à Tanger', 'Evaluation d\'un état d\'avancement du projet immobilier, de type « Immeuble en 2SS R+5+1 retrait », sis Lotissement « MALABATA HILLS », Lot N°93 & 94, Tanger - Maroc, objet des T.F N°240.674/06 & 240.675/06.', 0.00, 0.00, 0.00, 'Virement', 4200.00, 3500.00, 0.00, 700.00, 4200.00, 4200.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(43, 'FA-0043-2024', 1, 1, '2024-03-16', NULL, 'MR JABER MUSTAPHA ', '-----------------------------', '-----------------------------', 'Evaluation terrain ouled slimane', 'Expertise d’un « Bien » immobilier, de type « Terrain », sis Douar Oulad Slimane, Commune rurale Lakhyayta, Province de Settat, Grand Casablanca - Maroc. Objet du TF N°76.140/53.', 0.00, 0.00, 0.00, 'Virement', 4200.00, 3500.00, 0.00, 700.00, 4200.00, 4200.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(44, 'FA-0044-2024', 1, 3, '2024-03-16', NULL, 'Sté DYFFERENCE GESTION', '003314415000085', 'Rés EL KHATTABI IMM B 1er Etg N°3 MARRAKECH', 'Action de Formation', 'Action de Formation : Séminaire en Evaluatio Immobilière .', 0.00, 0.00, 0.00, 'Chèque', 2400.00, 2000.00, 0.00, 400.00, 2400.00, 2400.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(45, 'FA-0045-2024', 1, 1, '2024-03-18', NULL, 'Sté AFRAH DREAM HOUSE', '0', '', 'Evaluation Projet Bouskoura (Yousr)', 'Evaluation Immobilière d’un projet immobilier, sis Bouskoura, Casablanca - Maroc. Objet des TF 62,542/63', 0.00, 0.00, 0.00, 'Virement', 9690.00, 8075.00, 0.00, 1615.00, 9690.00, 9690.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(46, 'FA-0046-2024', 1, 1, '2024-03-20', '2024-04-01', 'Mr BENCHRKOUN', '0', '-----------------------------', 'Evaluation bureau_Avenue des FAR', 'Evaluation immobilière d\'un Bureau ayant le T.F N° 77.842/45 de superficie 53 m²sis Roche Noires-Casablanca', 3000.00, 0.00, 0.00, 'Virement', 3000.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, 'Payée', 3, '2024-04-01', NULL, '2024-06-01 23:57:36', NULL, NULL),
(47, 'FA-0047-2024', 1, 1, '2024-03-20', '2024-04-26', 'ASMAHANE IMMOBILIERE (SCI)', '001816589000050', 'Route 110 Km 11 Q.industrielCasablanca - Maroc', 'Evalautaion projet Anafee villa a casablanca', 'Expertise d’un projet immobilier, de type « Villas en Villégiature », sis Avenue des Héritiers, Quartier Californie, Arrondissement Ain Chock, Casablanca – Maroc. Objet du T.F.M N° 44.083/C,', 7800.00, 0.00, 0.00, 'Chèque', 7800.00, 6500.00, 0.00, 1300.00, 7800.00, 7800.00, 'Payée', 3, '2024-04-26', NULL, '2024-06-01 23:57:36', NULL, NULL),
(48, 'FA-0048-2024', 1, 1, '2024-03-20', '2024-04-26', 'Sté ROOSEVELT SCI,', '002036684000093', '', 'Evalautaion d\'une villa à usage commerce casablanca', 'Expertise d’un l’estimation de la valeur vénale, d’un « Bien » immobilier, de type « Villa » à usage Bureaux », sis Boulevard Franklin Roosevelt, Arrondissement Anfa, Casablanca – Maroc. Objet du T.F N° 50.983/C.', 7800.00, 0.00, 0.00, 'Chèque', 7800.00, 6500.00, 0.00, 1300.00, 7800.00, 7800.00, 'Payée', 3, '2024-04-26', NULL, '2024-06-01 23:57:36', NULL, NULL),
(49, 'FA-0049-2024', 1, 1, '2024-03-20', NULL, 'Sté EVEIL ASSETS SCI ', '0', '', 'Evaluation Terrain Sidi Bouknadel (Yousr)', 'Evaluation Immobilière l’estimation de la valeur vénale Evaluation d\'un Bien immobilier, de type « Terrain », sis Commune de Bouknadel, Préfecture de Rabat-Salé, Sidi Bouknadel - Maroc. Objet du TF N°1.354/20.', 0.00, 0.00, 0.00, 'Virement', 4200.00, 3500.00, 0.00, 700.00, 4200.00, 4200.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(50, 'FA-0050-2024', 1, 1, '2024-03-20', '2024-02-27', 'THAMER KAILA', '-----------------------------', '-----------------------------', 'Evaluation Appartement_Mly Ismail', 'Expertise Immobilière', 1800.00, 0.00, 0.00, 'Virement', 1800.00, 1500.00, 0.00, 300.00, 1800.00, 1800.00, 'Payée', 3, '2024-02-27', NULL, '2024-06-01 23:57:36', NULL, NULL),
(51, 'FA-0051-2024', 1, 1, '2024-03-20', '2024-02-27', 'Mme Kaouther DGADEG', '-----------------------------', '-----------------------------', 'Evaluation Bureau_Bourgonne', 'Expertise Immobilière', 1800.00, 0.00, 0.00, 'Virement', 1800.00, 1500.00, 0.00, 300.00, 1800.00, 1800.00, 'Payée', 3, '2024-02-27', NULL, '2024-06-01 23:57:36', NULL, NULL),
(52, 'FA-0052-2024', 1, 1, '2024-03-20', NULL, 'STE AKKAR ESSALAM', '001655601000059', 'RES BAB DOUKALA APT13 BLOC A ETAG 3 MARRAKECH - Maroc', 'Evaluation Projet à Safi (yousr)', 'Evaluation Immobilière du Projet HAY MOHAMMADI   ayant le TF N° 137.469/23, 137.470/23, 137.471/23, 137.472/23 et 137.471/23, sis SAFI.', 0.00, 0.00, 0.00, 'Virement', 7800.00, 6500.00, 0.00, 1300.00, 7800.00, 7800.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(53, 'FA-0053-2024', 1, 1, '2024-03-20', NULL, 'STE AKKAR ESSALAM', '001655601000059', 'RES BAB DOUKALA APT13 BLOC A ETAG 3 MARRAKECH - Maroc', 'Evaluation Projet à Safi (yousr)', 'Evaluation Immobilière du Projet  BORJ NADOR ayant le TF N° 93.807/23; 9.801/23, 93.803/23, 93.804/23, 93.805/23 et 93.806/23,  sis SAFI.', 0.00, 0.00, 0.00, 'Virement', 7200.00, 6000.00, 0.00, 1200.00, 7200.00, 7200.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(54, 'FA-0054-2024', 1, 1, '2024-03-20', NULL, 'Mr Kartoubi Aissam', '-----------------------------', '-----------------------------', 'Evaluation Terrain_Mansouria (Yousr)', 'Evaluation d\'un lot de terrain ayant le TF N° 101.236/25 de superficie de 200 m², sis AL Mansouria', 0.00, 0.00, 0.00, 'Virement', 3600.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(55, 'FA-0055-2024', 1, 1, '2024-03-22', '2024-03-27', 'CAMEPHIA SARL', '002564675000038', 'Rue Ahmed Touki Res Ourok Etg 3 N 13 - Casablanca', 'Evaluation villa Ibnou sina M.AMMARI', 'Expertise Immobilière', 3000.00, 0.00, 0.00, 'Virement', 3000.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, 'Payée', 3, '2024-03-27', NULL, '2024-06-01 23:57:36', NULL, NULL),
(56, 'FA-0056-2024', 1, 1, '2024-03-29', '2024-04-03', 'Sté CATBER SARL', '001816622000032', 'Haddada - Haddada, Berrechid', 'Evaluation Unité Had Soualem', 'Evaluation d\'une unité ayant le TF N° 71.914/53 de superficie 184.460m² sis Had Soualem - Casablanca', 7800.00, 0.00, 0.00, 'Chèque', 7800.00, 6500.00, 0.00, 1300.00, 7800.00, 7800.00, 'Payée', 3, '2024-04-03', NULL, '2024-06-01 23:57:36', NULL, NULL),
(57, 'FA-0057-2024', 1, 1, '2024-03-29', '2024-04-03', 'Sté CATBER SARL', '001816622000032', 'Haddada - Haddada, Berrechid', 'Evalaution Immeuble Sidi Moumen', 'Evaluation d\'un immeuble  ayant le TF N° 11.298/45 de superficie 131m² sis Sidi Moumen - Casablanca', 5400.00, 0.00, 0.00, 'Chèque', 5400.00, 4500.00, 0.00, 900.00, 5400.00, 5400.00, 'Payée', 3, '2024-04-03', NULL, '2024-06-01 23:57:36', NULL, NULL),
(58, 'FA-0058-2024', 1, 1, '2024-04-01', NULL, 'Sté IMMOBILIERE RAWD AL JANOUB', '001730469000006', '465 Avenue Ambassadeur Ben Aicha, Roches Noires - Casablanca', 'Evalaution Projet Marrakech Yousr', 'Evaluation Immobilière d’un projet immobilier, sis TAHANAOUTE - Maroc. Objet de TF 57.834/04 de superficie de 48.789 m²', 0.00, 0.00, 0.00, 'Virement', 9780.00, 8150.00, 0.00, 1630.00, 9780.00, 9780.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(59, 'FA-0059-2024', 1, 1, '2024-04-03', NULL, 'Sté DIVA AAKKAR', '002274939000054', 'Lot Al Massar Bellemajad N°95 2éme Etage Bureau 10 Route De Safi Km5 - Marrakech-Médina', 'EvaluationTerrain Marrakech', 'Evaluation immobilière d\'un Terrain ayant le T.F N° 96.869/45 de superficie 45.727 m²sis Marrakech', 0.00, 0.00, 0.00, 'Virement', 4800.00, 4000.00, 0.00, 800.00, 4800.00, 4800.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(60, 'FA-0060-2024', 1, 1, '2024-04-03', NULL, 'INSTITUT PRIVE SUMER', '002200933000016', '4 Rue Mabillon, Quartier Val Fleuri - Casablanca', 'Evalaution Ecole Casablanca', 'Evaluation d\'un établissement scolaire ayant le TF N°4.550/C de superficie 1.204m²', 0.00, 0.00, 0.00, 'Virement', 7200.00, 6000.00, 0.00, 1200.00, 7200.00, 7200.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(61, 'FA-0061-2024', 1, 1, '2024-04-04', '2024-04-05', 'STE GROUPE MOJAZINE SA', '001428745000009', 'Sidi Maarouf Lot La Colline Lot N°11 3eme Etage - Casablanca', 'Evaluation Villa Marrakech', 'Evaluation d\'un terrain abritant une villa, ayant le TF N° 100.853/04 de superficie 432m² sis Marrakech', 4200.00, 0.00, 0.00, 'Virement', 4200.00, 3500.00, 0.00, 700.00, 4200.00, 4200.00, 'Payée', 3, '2024-04-05', NULL, '2024-06-01 23:57:36', NULL, NULL),
(62, 'FA-0062-2024', 1, 1, '2024-04-04', NULL, 'M. MABROUK HICHAM ', '-----------------------------', '-----------------------------', 'Evaluation Lot terrain à Mohammedia', 'Evaluation d\'un lot de terrain ayant le TF N° 137.743/26 de superficie de 100 m², sis Mohammedia', 0.00, 0.00, 0.00, 'Virement', 3600.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(63, 'FA-0063-2024', 1, 1, '2024-04-05', '2024-04-26', 'Sté BELLAMAR', '001860223000094', '43, Bd Anfa - Casablanca', 'Evaluation projet sis route d\'azzemour Soft Groupe', 'Expertise Immobilière  de la valeur vénale d’un ensemble de « Villas », appartenant à deux projets, de nombre total de 32 villas, sis Boulevard Abdelhadi Boutaleb, Résidence « ANAFEE » et « ARGANIER », Arrondissement Hay Hassani, Casablanca – Maroc. Objet du T.F mère N°424/C', 7800.00, 0.00, 0.00, 'Chèque', 7800.00, 6500.00, 0.00, 1300.00, 7800.00, 7800.00, 'Payée', 3, '2024-04-26', NULL, '2024-06-01 23:57:36', NULL, NULL),
(64, 'FA-0064-2024', 1, 1, '2024-04-05', '2024-04-16', 'Sté WITRANS', '001552509000031', 'Km. 5 route Sebt Gzoula 46000 Safi - Maroc', 'Evaluation d\'un Terrain sis Safi M .ghandour', 'Expertise Immobilière de type « Terrain », sis Avenue Al Massira Al Khadra, Quartier Jerifat, Safi – Maroc. Objet du TF N°3.073/Z.', 4000.00, 0.00, 0.00, 'Chèque', 4000.00, 3333.33, 0.00, 666.66, 4000.00, 4000.00, 'Payée', 3, '2024-04-16', NULL, '2024-06-01 23:57:36', NULL, NULL),
(65, 'FA-0065-2024', 1, 1, '2024-04-05', '2024-04-19', 'Galaxie Equipement', '000027628000071', '1 Rue De Breuil Qu Des Hopiteaux - Casablanca', 'Evalaution 02 commerces', 'Evaluation de deux commerces ayant les TF N°73.581/01 et 73.580/01 de superficie 145 m² et 172m²', 4800.00, 0.00, 0.00, 'Chèque', 4800.00, 4000.00, 0.00, 800.00, 4800.00, 4800.00, 'Payée', 3, '2024-04-19', NULL, '2024-06-01 23:57:36', NULL, NULL),
(66, 'FA-0066-2024', 1, 1, '2024-04-05', '2024-04-26', 'J.H  & HORIZON SARL', '002668663000027', '3 Rue Ait Ourir Bd My Youssef 2ème Etage - Casablanca', 'Evlauation Terrain Hay Hassani_Karim Hanafi', 'Evaluation Immobilière  d\'un « Bien » immobilier, de type « Terrain », sis Quartier Zoubair, Préfecture Hay Hassani, Casablanca - Maroc. Objet du TF N°10.941/33.', 4000.00, 0.00, 0.00, 'Espèce', 4000.00, 3333.33, 0.00, 666.66, 4000.00, 4000.00, 'Payée', 3, '2024-04-26', NULL, '2024-06-01 23:57:36', NULL, NULL),
(67, 'FA-0067-2024', 1, 1, '2024-04-15', NULL, 'MR LAMSSARAH ALI ET MME BOUTLANE SIHAM', '-----------------------------', '-----------------------------', 'Evaluation Lot_Terrain nouaceur', 'Evalaution Immobilière du lot terrain ayant le TF N°54.601/63de superficie 131m²,  sis Nouaceur.', 0.00, 0.00, 0.00, 'Virement', 3600.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(68, 'FA-0068-2024', 1, 1, '2024-04-15', NULL, 'M.Youssef AFIFY', '-----------------------------', '-----------------------------', 'Evaluation Maison Temara', 'Evaluation Immobilière d’un bien immobilier de type « maison », sis , Temara- Maroc. Objet du TF N° 24,659/38 de Superficie 63m²', 0.00, 0.00, 0.00, 'Virement', 3600.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(69, 'FA-0069-2024', 1, 1, '2024-04-15', NULL, 'Sté BOYOUT EL MNIAI SARL', '003215085000042', '20 LOT AL KOUNA 2EME ETAGE, BERRECHID, Maroc', 'Evaluation Etat d\'Avancement', 'Evaluation d\'un état d\'avancement du projet porté par  la Sté Boyout EL MINIAA, Objet des TF N° 154.777/53 & 154.778/53.', 0.00, 0.00, 0.00, 'Virement', 4200.00, 3500.00, 0.00, 700.00, 4200.00, 4200.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(70, 'FA-0070-2024', 1, 1, '2024-04-15', NULL, 'Sté PREFERENCE TRANS MAROC', '002752638000077', '8 Rue Nichakra Rahal Ex Tour 2eme Etg N 4 - Casablanca', 'Evaluation centrale de Beton Berrechid', 'Evalaution du Projet ayant le T.F N°16704/D de superficie 11.940m² sis commune Ouled Azzouz:\n-  Evalaution du Foncier\n-  Evaluation du Programme d\'investissment.', 0.00, 0.00, 0.00, 'Virement', 8400.00, 7000.00, 0.00, 1400.00, 8400.00, 8400.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(71, 'FA-0071-2024', 1, 1, '2024-04-17', NULL, 'M.ENNACIRI Anas ', '-----------------------------', '-----------------------------', 'Evalaution Villa El Jadida', 'Evaluation Immobilière d’un bien immobilier de type « villa », sis , El Jadida- Maroc. Objet du TF N° 110.277/08 de Superficie 190m²', 0.00, 0.00, 0.00, 'Virement', 3600.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(72, 'FA-0072-2024', 1, 1, '2024-04-17', NULL, 'Sté BOYOUT EL MNIAI SARL', '003215085000042', '20 LOT AL KOUNA 2EME ETAGE, BERRECHID, Maroc', 'Evalaution Projet Berrechid 04 lots', 'Evaluation Immobilière d’un projet immobilier, sis Berrechid, Casablanca - Maroc. Objet des TF 146.033/53 (197m²); 146.034/53 (203m²);146.036/53(202m²) et 146.035/53 (197m²)\n\n- Expertise du Foncier\n- Evaluation du Chiffre d\'affaires du projet\n- Validation du programme d\'investissement.', 0.00, 0.00, 0.00, 'Virement', 10200.00, 8500.00, 0.00, 1700.00, 10200.00, 10200.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(73, 'FA-0073-2024', 1, 1, '2024-04-19', NULL, 'Mr SENTISSI MOHAMED JALIL', '-----------------------------', '-----------------------------', 'Evaluation Projet Complexe sportif gironde', 'Expertise immobilière d\'un complexe sportif faisant l\'objet des T.F N° TF68125/C; TF120567/C et TF126155/C de superficie globale de 5107.50 m², sis quartier LA GIRONDE - Casablanca\n- Expertise du Foncier\n- Validation du programme d\'investissement.', 0.00, 0.00, 0.00, 'Virement', 7800.00, 6500.00, 0.00, 1300.00, 7800.00, 7800.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(74, 'FA-0074-2024', 1, 1, '2024-04-19', NULL, 'Sté SOMASTEEL SARL', '001526210000064', 'Km 16, route d\'El Jadida, Ouled Azzouz 20000 Casablanca - Maroc', 'Evlauation 04 lots de terrains', 'Evaluation de 04 Terrains Sis Had Soualem ayant les T.F :\n- N°105.845/53 de superficie 632m² \n- N° 105.837/53 de superficie 564m²\n- N° 105.862/53 de superficie 876m²\n- N° 105.846/53 de superficie 618m²', 0.00, 0.00, 0.00, 'Virement', 4200.00, 3500.00, 0.00, 700.00, 4200.00, 4200.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(75, 'FA-0075-2024', 1, 3, '2024-04-20', '2024-04-22', 'M.ASSAKOUR ZAKARIA ', '000074381000001', '24 RUE 10 ETG RDC SIDI BERNOUSSI , Casablanca', 'Action de Formation', 'Action de formation : Introduction à l\'immobilier le 08 et 10 Mai 2024', 2000.00, 0.00, 0.00, 'Virement', 2000.00, 1666.66, 0.00, 333.33, 2000.00, 2000.00, 'Payée', 3, '2024-04-22', NULL, '2024-06-01 23:57:36', NULL, NULL),
(76, 'FA-0076-2024', 1, 1, '2024-04-24', NULL, 'Sté BKAPROMO', '003386253000071', 'Rue Moulay Rachid Imm N22, Appt N1 Hassan - Hassan (AR)', 'Evalaution Terrain', 'Evaluation Immobilière d’un « Bien » immobilier, de type « Lot de terrain pour villa », pour le compte de Banque AL Yousr, sis Lot N°1345, Lotissement « AL WIFAQ », Rue Arrachad, Préfecture de Skhirate-Témara, Casablanca - Maroc, objet du T.F N° 57.107/38.', 0.00, 0.00, 0.00, 'Chèque', 3600.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(77, 'FA-0077-2024', 1, 1, '2024-04-25', NULL, 'M.IBNTALEB Bachir', '-----------------------------', '-----------------------------', 'Evaluation Maison Rabat', 'Evaluation d\'un actif immobilier de type maison ayant le TF N°4089/R de superficie de 182m² sis Rabat Hassane.', 0.00, 0.00, 0.00, 'Virement', 3600.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(78, 'FA-0078-2024', 1, 1, '2024-04-25', NULL, 'Sté CADIPLAST', '000218731000011', 'Route 1033 Douar Ouled Mellouk Lahraouiyne - Tit Mellil', 'Evaluation Terrain EL Hraouine', 'Evaluation Immobilière d’un projet immobilier , sis , SIDI Othmane Baladiyat Lahraouiyine OULAD MOULOUK . Objet du TF N° 187.098/12 de Superficie 10094m²\n\n- Expertise du Foncier\n- Validation du programme d\'investissement.', 0.00, 0.00, 0.00, 'Virement', 7800.00, 6500.00, 0.00, 1300.00, 7800.00, 7800.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(79, 'FA-0079-2024', 1, 1, '2024-04-25', NULL, 'Mme EL ALOUANI Laila ', '-----------------------------', '-----------------------------', 'Evalaution lot terrain Ouled Saleh', 'Evalaution Terrain ayant le TF N°128471/63 de superficie 271m² sis commune OULED SALEH NOUACEUR', 0.00, 0.00, 0.00, 'Virement', 3600.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(80, 'FA-0080-2024', 1, 1, '2024-04-29', NULL, 'STE BERALMAR', '001526557000007', 'Avenue Moulay Ismail Residence Volubilis Bloc C 1er Etage N° 53 - Tanger-Médina', 'Evaluation Projet à ASIILAH', 'Evaluation Immobilière du Projet ayant le TF N° 78.713/06 de superficie de  51.746 m², sis ASSILA :\n\n- Expertise du Foncier\n-  Etat d\'avancement\n- Evaluation du Chiffre d\'affaires du projet\n- Validation du programme d\'investissement.', 0.00, 0.00, 0.00, 'Virement', 15000.00, 12500.00, 0.00, 2500.00, 15000.00, 15000.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(81, 'FA-0081-2024', 1, 1, '2024-05-06', '2024-04-01', 'Ste les Collines des Zaers', '002292087000039', 'Ain Aouda, Propriété Dite Blad El Hebchi, T.f: 55289/r, Préfecture De Skhirat, Témara - Rabat', 'Evaluation Projet Temara', 'Evaluation du projet   objet de TF 55289/R, sis Ain Aouda :\n- Evaluation du Chiffre d\'affaires du projet\n- Validation du programme d\'investissement.\n- Etat d\'avancement du projet', 11400.00, 0.00, 0.00, 'Virement', 11400.00, 9500.00, 0.00, 1900.00, 11400.00, 11400.00, 'Payée', 3, '2024-04-01', NULL, '2024-06-01 23:57:36', NULL, NULL),
(82, 'FA-0082-2024', 1, 1, '2024-05-06', '2024-04-01', 'M. HEDDA YOUSSEF', '-----------------------------', '-----------------------------', 'Expertise_Terrain_Skhirate', 'Evaluation immobilière relatif au terrain ayant le TF 99.799/78 d’une superficie de de 1.526m², Sis Skhirat TEMARA', 3600.00, 0.00, 0.00, 'Virement', 3600.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Payée', 3, '2024-04-01', NULL, '2024-06-01 23:57:36', NULL, NULL),
(83, 'FA-0083-2024', 1, 1, '2024-05-06', '2024-04-01', 'MM. HICHAM EL HIYANI & SALAH EDDINE EL HIYANI ', '-----------------------------', '-----------------------------', 'Evaluation Projet Salé', 'Evaluation du projet en cours de construction  objet de TF : 74030/58 – 74031/58 sis Salé :\n\n- Evaluation du Chiffre d\'affaires du projet\n- Validation du programme d\'investissement.\n- Etat d\'avancement du projet', 9690.00, 0.00, 0.00, 'Virement', 9690.00, 8075.00, 0.00, 1615.00, 9690.00, 9690.00, 'Payée', 3, '2024-04-01', NULL, '2024-06-01 23:57:36', NULL, NULL),
(84, 'FA-0084-2024', 1, 1, '2024-05-06', '2024-04-01', 'M. ZAKARIA JEDDAOUI & Mme. HIND RAMID', '-----------------------------', '-----------------------------', 'Expertise_Terrain_Bouskoura', 'Evaluation immobilière relatif au terrain ayant le TF N° 123.671/63 d’une superficie de 1.246m², Sis Bouskoura', 3600.00, 0.00, 0.00, 'Virement', 3600.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Payée', 3, '2024-04-01', NULL, '2024-06-01 23:57:36', NULL, NULL),
(85, 'FA-0085-2024', 1, 1, '2024-05-06', '2024-04-01', 'M. Yassine CHAHID', '-----------------------------', '-----------------------------', 'Expertise_Terrain_casablanca', 'Evaluation immobilière relatif au terrain ayant le TF N° 74.205/47 d’une superficie de 207m², Sis Casablanca', 3600.00, 0.00, 0.00, 'Virement', 3600.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Payée', 3, '2024-04-01', NULL, '2024-06-01 23:57:36', NULL, NULL),
(86, 'FA-0086-2024', 1, 1, '2024-05-07', NULL, 'Sté WARDAPROMO', '-----------------------------', '-----------------------------', 'Evaluation Projet Safi', 'Evaluation Immobilière du Projet en (R+5) faisant l\'objet du  TF N° 31.05/23,  sis SAFI :\n\n- Expertise du Foncier\n- Evaluation C.A\n- Validation du programme d\'investissement.', 0.00, 0.00, 0.00, 'Virement', 9720.00, 8100.00, 0.00, 1620.00, 9720.00, 9720.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(87, 'FA-0087-2024', 1, 1, '2024-05-07', NULL, 'Sté WARDAPROMO', '-----------------------------', '-----------------------------', 'Evaluation Projet Safi', 'Evaluation Immobilière du Projet en (R+4) faisant l\'objet du  TF N° 19.712/J,  sis SAFI :', 0.00, 0.00, 0.00, 'Virement', 9120.00, 7600.00, 0.00, 1520.00, 9120.00, 9120.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(88, 'FA-0088-2024', 1, 1, '2024-05-07', NULL, 'STE LOUDA LOGISTICS', '003431921000002', '30 Bd Rahal Elmaskini Etg 2 Apt 5 - Casablanca', 'Evalaution Projet Industriel SAPINO', 'Evaluation Immobilière d’unTerrain , sis , Zone Industrielle de SAPINO NOUACER . Objet du TF N° 8884/63  de Superficie 14110m²\n- Expertise du Foncier\n- Validation du programme d\'investissement.', 0.00, 0.00, 0.00, 'Virement', 7800.00, 6500.00, 0.00, 1300.00, 7800.00, 7800.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(89, 'FA-0089-2024', 1, 1, '2024-05-08', NULL, 'Sté Mercure Internationnal Of Morocco', '000229757000002', 'Mercure International of Morocco SARL\n197 Boulevard Zerktouni, Casablanca', 'Expertise_MERCURE_Fond_Commerce', 'Evaluation des Fonds de Commerce', 0.00, 0.00, 0.00, 'Virement', 30000.00, 25000.00, 0.00, 5000.00, 30000.00, 30000.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(90, 'FA-0090-2024', 1, 1, '2024-05-13', NULL, 'Mr JIHAD EL IBRAHIMI', '-----------------------------', '-----------------------------', 'Expertise_Terrains_Casablanca et Berrechid', 'Evaluation des terrains ayant  :\n-  TF N° 1411/ 33de superficie  1.252m² \n- TF N°811/T superficie 8.039m² \n- TF N° 62.586/C de superficie 1.056m²', 0.00, 0.00, 0.00, 'Virement', 12600.00, 10500.00, 0.00, 2100.00, 12600.00, 12600.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(91, 'FA-0091-2024', 1, 1, '2024-05-14', NULL, 'M. BOUFERRA Yassine', '-----------------------------', '-----------------------------', 'Expertise_Lot_Terrain_Berrechid', 'Evaluation Terrain ayant TF N° 125034/53 de superficie de 244m² sis Berrechid', 0.00, 0.00, 0.00, 'Virement', 3600.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(92, 'FA-0092-2024', 1, 1, '2024-05-15', NULL, 'Ste Noussah Consulting', '002055645000015', '59, Bd Zerktouni 3ème Étage N°8 - Casablanca', 'Expertise_Bureau_Bd_Ibn_Tachfine', 'Evaluation Immobilère d\'un bureau ayant le TF N° 51,525/45 de superficie 120m² sis Casablanca ', 0.00, 0.00, 0.00, '0', 2400.00, 2000.00, 0.00, 400.00, 2400.00, 2400.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(93, 'FA-0093-2024', 1, 1, '2024-05-15', NULL, 'STE DIBRI METAL', '003228672000047', 'Antaria 1 Rue 7 N°168 Et 172 Hay Mohammadi - Casablanca', 'Expertise 03 Commerces à Ain Borja', 'Evaluation Immobilère de « 03 Biens » immobiliers, de type « Commerce », sis N 168, Antaria 1 Rue 7, Préfecture d\'Aïn Sebaâ-Hay Mohammadi, Casablanca - Maroc, objets des T.F N°21.267/32, 21.268/32 & 21.269/32.', 0.00, 0.00, 0.00, 'Chèque', 2500.00, 2083.33, 0.00, 416.66, 2500.00, 2500.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(94, 'FA-0094-2024', 1, 3, '2024-05-15', NULL, 'Banque populaire Real Estate Management (BP REM)', '000800303000024', '9 - 9bis, Rue D\'oran - Rez - De - Chaussée - Casablanca', 'Action de FORMATION', 'Action de formation : Introduction à l\'immobilier le 08 et 10 Mai 2024', 0.00, 0.00, 0.00, 'Virement', 2000.00, 1666.67, 0.00, 333.33, 2000.00, 2000.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(95, 'FA-0095-2024', 1, 1, '2024-05-15', NULL, 'Sté BATMEL SARL', '001539216000042', 'N° 48 Rue Calavon Qu Des Hopitaux - Casablanca', 'Evaluation Appartement Taghazout', 'Evaluation d\'un actif immobilier de type Duplexe ayant le TF N°231763/06 de superficie de 181m² sis TAGHAZOUTE-AGADIR,', 0.00, 0.00, 0.00, 'Virement', 4500.00, 3750.00, 0.00, 750.00, 4500.00, 4500.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(96, 'FA-0096-2024', 1, 1, '2024-05-16', NULL, 'M.BOUJADI YOUSSEF', '-----------------------------', '-----------------------------', 'Evalaution Terrain à Ain Diab', 'Evaluation Immobilière d\'un terrain ayant le T.F N° 121.221/01 de superficie 768 m²sis Quartier sidi Abderrahmane Casablanca', 0.00, 0.00, 0.00, 'Virement', 3600.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(97, 'FA-0097-2024', 1, 1, '2024-05-16', NULL, 'Sté MNHF INVEST SARL', '-----------------------------', '201 Rue Mustapha El Maani 4ème Etage Apt N°19 - Casablanca', 'Evaluation projet Bureau à Bd Al Qods', 'Evaluation Immobilière du Projet en (R+5) faisant l\'objet du  TF N° 93.197/47 de superficie 1.155,  sis Casablanca :\n\n- Expertise du Foncier\n- Validation du C.A\n- Validation du programme d\'investissement.', 0.00, 0.00, 0.00, 'Virement', 9690.00, 8075.00, 0.00, 1615.00, 9690.00, 9690.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(98, 'FA-0098-2024', 1, 1, '2024-05-16', NULL, 'Sté CABO AZUL SARL', '002088685000044', 'Zone Industrielle Commune Urbaine Lissasfa 2, Chemin Tertiaire 1077,cp 20190 - Casablanca', 'Evaluation Terrain à Had Soualem', 'Evaluation du Terrain ayant  le T.F N° 51.265/53 de superficie de 26.684m² sis Had Soualem', 0.00, 0.00, 0.00, 'Chèque', 6000.00, 5000.00, 0.00, 1000.00, 6000.00, 6000.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(99, 'FA-0099-2024', 1, 1, '2024-05-20', NULL, 'M.KANDILA Abdelhamid', '-----------------------------', '-----------------------------', 'Evaluation Terrain à bouskoura', 'Evaluation Immobilière d\'un terrain ayant le T.F N° 191.365/63 de superficie 455 m²sis Dar Bouazza Casablanca', 0.00, 0.00, 0.00, 'Virement', 3600.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(100, 'FA-0100-2024', 1, 1, '2024-05-20', NULL, 'STE LIBRAIRIE IQRAE', '000221680000025', '20 DERB EL BAKRI, RIAD, MEKNES-Maroc', 'Evaluation Maison à Meknes', 'Evaluation immobilière d\'une maison ayant le TF N° 15821/K de superficie de 173m² sis Meknes', 0.00, 0.00, 0.00, 'Virement', 4200.00, 3500.00, 0.00, 700.00, 4200.00, 4200.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(101, 'FA-0101-2024', 1, 1, '2024-05-23', NULL, 'STE LIBRAIRIE IQRAE', '000221680000025', '21 DERB EL BAKRI, RIAD, MEKNES-Maroc', 'Evaluation Fond de commerce', 'Evaluation du Fond de commerce de la Sté Librairie IQRAE', 0.00, 0.00, 0.00, 'Virement', 4800.00, 4000.00, 0.00, 800.00, 4800.00, 4800.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(102, 'FA-0102-2024', 1, 1, '2024-05-25', NULL, 'Sté BEAU LIVING PREMIUM', '003451274000010', 'N 63 Route De Rabat Lots Al Firdaous Central Office I Etg 1 Bur N 7 - Casablanca', 'Evaluation Projet Ben slimane Yousr', 'Evaluation Immobilière du Projet de lotissement  sis Commune BEN SLIMANE, BEN SLIMANE - Maroc. Objet du TF N°11.257/C.\n\n- Expertise du Foncier\n- Validation du C.A\n- Validation du programme d\'investissement.', 0.00, 0.00, 0.00, 'Virement', 11400.00, 9500.00, 0.00, 1900.00, 11400.00, 11400.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(103, 'FA-0103-2024', 1, 1, '2024-05-25', NULL, 'Sté EDUCATIONAL ASSET MANAGEMENT', '003339381000056', '37; Rue DAOUD DAHIRI 3ème Etage MAARIF-Casablanca', 'Expertise_Ecole_Hay_El_Kods_Casablanca', 'Evaluation Immobilière des travaux d\'aménagement pour le projet immobilier, de type « Ecole », pour le compte de la BANK AL YOUSR, sis Quartier El Qods, Arrondissement Sidi Bernoussi, Casablanca - Maroc, objet du TF N°10.944/32.', 0.00, 0.00, 0.00, 'Virement', 3600.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(104, 'FA-0104-2024', 1, 1, '2024-05-27', NULL, 'Me  ESSALID HANANE', '-----------------------------', '-----------------------------', 'Expertise Villa à Berrechid Yousr', 'Evaluation d\'une villa faisant l\'objet du TF N° 40.018/53 de superficie 189m², sis  BERRECHID', 0.00, 0.00, 0.00, 'Virement', 3600.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(105, 'FA-0105-2024', 1, 1, '2024-05-28', NULL, 'M. SALAH EDDINE BEN BYA', '-----------------------------', '-----------------------------', 'Expertise_Appartement à Alamz yousr', 'Evaluation  d’un « Bien » immobilier, de type « Appartement », sis Résidence Sun Square, Immeuble 15, 2ème étage, Appt N°13, Quartier Almaz, Commune de Ouled Azzouz, Province de Nouaceur, Casablanca - Maroc. Objet du T.F N° 179.873/63.', 0.00, 0.00, 0.00, 'Virement', 3000.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL);
INSERT INTO `invoices` (`id`, `invoice_number`, `societe_id`, `mission_type_id`, `invoice_date`, `prestation_date`, `client_name`, `ice`, `client_adress`, `object`, `detail`, `advance`, `discount`, `commission`, `payment_mode`, `remainder`, `totalHT`, `totalHTRem`, `montantTVA`, `totalTTC`, `totalTTC2`, `status`, `value_status`, `payment_date`, `deleted_at`, `created_at`, `updated_at`, `ref_bc`) VALUES
(106, 'FA-0106-2024', 1, 1, '2024-05-28', NULL, 'Sté ZADRI INTERNACIONAL', '002684364000087', 'LOT AL AMIRA AV ALLAL BEN ABDELLAH N°102 , Fnideq', 'Evaluation d\'un Projet à martil Yousr', 'Evaluation Immobilière du Projet  porté par la Sté ZADRI INTERNATIONAL sis Martil.', 0.00, 0.00, 0.00, 'Virement', 14580.00, 12150.00, 0.00, 2430.00, 14580.00, 14580.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(107, 'FA-0107-2024', 1, 1, '2024-05-29', NULL, 'Sta TAZI ISKAN IMMOBILIER SARL AU', '0', '264 BLOC F 2EME ETAGE HAOUZIA 1', 'Evaluation projet à Abdelmoumen  Al Yousr', 'Evaluation Immobilière du Projet en (ss R+3 & R+5) faisant l\'objet du  TF N° 22.579/C de superficie 866 m²,  sis Casablanca :\n\n- Expertise du Foncier\n- Validation du C.A\n- Validation du programme d\'investissement.', 0.00, 0.00, 0.00, 'Virement', 9690.00, 8075.00, 0.00, 1615.00, 9690.00, 9690.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(108, 'FA-0108-2024', 1, 1, '2024-05-29', NULL, 'SKYHIGH MARINA IMMOBILIER', '-----------------------------', '77 Rue Mohamed Smiha Etg 10 Apt 57 - Casablanca', 'Evaluation projet à Kenitra Al Yousr', 'Evaluation Immobilière du Projet en (ss R+4) faisant l\'objet du  TF N° 169.904/13 de superficie 267m²,  sis Kenitra :\n\n- Expertise du Foncier\n- Validation du C.A\n- Validation du programme d\'investissement.', 0.00, 0.00, 0.00, 'Virement', 11400.00, 9500.00, 0.00, 1900.00, 11400.00, 11400.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(109, 'FA-0109-2024', 1, 1, '2024-05-29', NULL, 'Mr KADDI YOUSSEF', '-----------------------------', '-----------------------------', 'Evaluation terrain Casablanca', 'Evaluation immobilière d\'un terrain faisant l\'objet de TF N° 191.362/63 de superficie de 438m², sis Dar Bouazza Casablanca', 0.00, 0.00, 0.00, 'Virement', 3600.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(110, 'FA-0110-2024', 1, 1, '2024-05-30', NULL, 'Sté BEL ENDROIT', '000004474000064', 'Rue Abou Abdallah Nafii Res Ben Omar N° 7 Maarif - El Maarif (AR)', 'Evaluation terrain Marrakech', 'Evaluation Immobilière du Projet  porté par la Sté BEL ENDROIT sis Marrakech:\n\n- Expertise du Foncier\n- Validation du C.A\n- Validation du programme d\'investissement.', 0.00, 0.00, 0.00, 'Virement', 12000.00, 10000.00, 0.00, 2000.00, 12000.00, 12000.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(111, 'FA-0111-2024', 1, 1, '2024-05-30', NULL, 'STE TKLH', '-----------------------------', '-----------------------------', 'Evaluation terrain Manisman yousr', 'Evaluation d\'un terrain faisant l\'objet du TF N° 95.539/26 de superficie 518m², sis  Mohammedia', 0.00, 0.00, 0.00, 'Virement', 3600.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', NULL, NULL),
(112, 'FA-0112-2024', 1, 1, '2024-05-30', NULL, 'M.Lahcen AGHAGHAY ', '-----------------------------', '-----------------------------', 'Evaluation terrain Ain Aiouda Yousr', 'Evaluation immobilière d’un « Bien » immobilier, de type « Lot de Terrain pour villa », sis Lot N°529, Lotissement « Al Firdaous », Commune Urbaine Ain Aouda, Préfecture de Skhirat-Témara, Témara - Maroc., objet du T.F N° 106.620/38.\n', 0.00, 0.00, 0.00, 'Virement', 3600.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Non payée', 1, NULL, NULL, '2024-06-01 23:57:36', '2024-06-01 23:52:22', NULL),
(113, 'FA-0113-2024', 1, 1, '2024-05-31', NULL, 'M. NAIM Noureddine', NULL, NULL, 'Evaluation  Villa à EL Jadida', 'Evaluation immobilière d’un « Bien » immobilier, de type « Villa », sis Avenue Ben Badis, Lotissement « AL QODS », Lot N°172, El Jadida – Maroc. Objet du T.F N°71.574/08.', 0.00, 0.00, 0.00, 'Virement', 3600.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Non payée', 1, NULL, NULL, '2024-06-02 18:02:08', '2024-06-08 17:45:23', NULL),
(114, 'FA-0001-2023', 1, 1, '2023-01-23', '2023-01-30', 'Société  ELECBEN', '000203696000011', 'Zone indust Oulad Salah - 14, rue Mazagan, lot. El Kheir 27182 Casablanca - Maroc', 'Expertise_DAVALEC_Fond_De_Commerce', 'Evaluation Immobilière', 2400.00, 0.00, 0.00, 'Chèque', 0.00, 2000.00, 0.00, 400.00, 2400.00, 2400.00, 'Payée', 3, '2023-01-30', NULL, '2024-06-08 15:04:24', '2024-06-08 15:20:03', NULL),
(115, 'FA-0002-2023', 1, 3, '2023-01-26', '2023-02-27', 'BMCE BANK', '001512572000078', '140, Boulevard Hassan II, 20320, Casablanca', 'Formation \"Evaluation Immobilière\"', 'Action de la formation sur la thématique \"Evaluation Immobilière\"', 3600.00, 0.00, 0.00, 'Virement', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Payée', 3, '2023-02-27', NULL, '2024-06-08 15:04:24', NULL, NULL),
(116, 'FA-0003-2023', 1, 3, '2023-02-03', '2023-03-06', 'Société Koutbi Immo', '00272247000007', '147, Bd de la Résistance, Rés Afa, étage 2, Apt n°22, Casablanca', 'Formation \"Evaluation Immobilière\"', 'Action de la formation sur la thématique \"Evaluation Immobilière\"', 3000.00, 0.00, 0.00, 'Chèque', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, 'Payée', 3, '2023-03-06', NULL, '2024-06-08 15:04:24', NULL, NULL),
(117, 'FA-0004-2023', 1, 3, '2023-02-03', NULL, 'Ste Gexei', '001575829000018', 'Boulevard El Qods Résidence El Qods Gh1 1 Etage N 16 Ain Chock - Aîn-Chock (AR)', 'Formation \"Evaluation Immobilière\"', 'Action de la formation sur la thématique\n\"Evaluation\nImmobilière\"\n(Le 31 Janvier à l\'Hôtel Palace d\'ANFA)', 3600.00, 0.00, 0.00, 'Chèque', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Payée', 3, '2023-02-03', NULL, '2024-06-08 15:04:24', NULL, NULL),
(118, 'FA-0005-2023', 1, 1, '2023-02-03', '2023-06-01', 'Banque CIH', '001542240000068', '187, Boulevard Hassan II, Casablanca', 'Expertise_CIH_Terrain_Ocean_Pacifique', 'l’estimation de la valeur vénale, d’un « Bien » immobilier, de type « Lot de terrain pour villa », sis Lotissement « ANNASR », Lot N° S7-RV5-15, Commune Ouled Saleh, Casablanca - Maroc. Objet du T.F N° 136.203/63.', 3000.00, 0.00, 0.00, 'Virement', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, 'Payée', 3, '2023-06-01', NULL, '2024-06-08 15:04:24', NULL, NULL),
(119, 'FA-0006-2023', 1, 1, '2023-02-03', '2023-01-27', 'Mme. HANAFI Sofia', '------------', '------------', 'Expertise_Sofia_Califorine_Appt', 'Expertise Immobilière', 1800.00, 0.00, 0.00, 'Espèce', 0.00, 1500.00, 0.00, 300.00, 1800.00, 1800.00, 'Payée', 3, '2023-01-27', NULL, '2024-06-08 15:04:24', NULL, NULL),
(120, 'FA-0007-2023', 1, 1, '2023-02-03', '2023-01-27', 'M.Sabir Hatim', '------------', '------------', 'Expertise_Sabir_Terrain_Berrechid', 'Expertise Immobilière', 1500.00, 0.00, 0.00, 'Espèce', 0.00, 1250.00, 0.00, 250.00, 1500.00, 1500.00, 'Payée', 3, '2023-01-27', NULL, '2024-06-08 15:04:24', NULL, NULL),
(121, 'FA-0008-2023', 1, 1, '2023-02-03', '2023-01-27', 'M.BELOUADIA Soufiane', '------------', '------------', 'Expertise_Soufiane_Safi', 'Expertise Immobilière', 1500.00, 0.00, 0.00, 'Espèce', 0.00, 1250.00, 0.00, 250.00, 1500.00, 1500.00, 'Payée', 3, '2023-01-27', NULL, '2024-06-08 15:04:24', NULL, NULL),
(122, 'FA-0009-2023', 1, 1, '2023-02-03', '2023-01-27', 'M.Jérôme Alassane Querrien', '------------', '------------', 'Expertise_Jerome_Tanger_Terrain', 'Expertise Immobilière', 2400.00, 0.00, 0.00, 'Espèce', 0.00, 2000.00, 0.00, 400.00, 2400.00, 2400.00, 'Payée', 3, '2023-01-27', NULL, '2024-06-08 15:04:24', NULL, NULL),
(123, 'FA-0010-2023', 1, 1, '2023-02-03', '2023-01-27', 'Mme CHERTI HASNA', '------------', '------------', 'Expertise_Hasna_Villa_Rabat', 'Expertise Immobilière', 2400.00, 0.00, 0.00, 'Espèce', 0.00, 2000.00, 0.00, 400.00, 2400.00, 2400.00, 'Payée', 3, '2023-01-27', NULL, '2024-06-08 15:04:24', NULL, NULL),
(124, 'FA-0011-2023', 1, 1, '2023-02-03', '2023-01-27', 'M.OUSSAMA ARAB MIMI LAHLOU', '------------', '------------', 'Expertise_Oussama_villa_Dar_Bouazza', 'Expertise Immobilière', 1800.00, 0.00, 0.00, 'Espèce', 0.00, 1500.00, 0.00, 300.00, 1800.00, 1800.00, 'Payée', 3, '2023-01-27', NULL, '2024-06-08 15:04:24', NULL, NULL),
(125, 'FA-0012-2023', 1, 1, '2023-02-03', '2023-01-27', 'M.BENJELLOUN Rachid', '------------', '------------', 'Expertise_Benjelloun_CFC_Anfa', 'Expertise Immobilière', 3600.00, 0.00, 0.00, 'Espèce', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Payée', 3, '2023-01-27', NULL, '2024-06-08 15:04:24', NULL, NULL),
(126, 'FA-0013-2023', 1, 1, '2023-02-05', '2023-02-28', 'M.AMJOUD Hicham', '------------', '------------', 'Expertise_Amjoud_Dar_Bouazza', 'Expertise Immobilière', 1500.00, 0.00, 0.00, 'Espèce', 0.00, 1250.00, 0.00, 250.00, 1500.00, 1500.00, 'Payée', 3, '2023-02-28', NULL, '2024-06-08 15:04:24', NULL, NULL),
(127, 'FA-0014-2023', 1, 1, '2023-02-06', '2023-02-28', 'M.BENITTO Adnane', '------------', '------------', 'Expertise_Adnane_Villa_Krimate', 'Expertise Immobilière', 1800.00, 0.00, 0.00, 'Espèce', 0.00, 1500.00, 0.00, 300.00, 1800.00, 1800.00, 'Payée', 3, '2023-02-28', NULL, '2024-06-08 15:04:24', NULL, NULL),
(128, 'FA-0015-2023', 1, 1, '2023-02-07', '2023-02-28', 'M.BARZALY Larbi', '------------', '------------', 'Expertise_Laarbi_Appt_Sidi_Maarouf', 'Expertise Immobilière', 1600.00, 0.00, 0.00, 'Espèce', 0.00, 1333.33, 0.00, 266.67, 1600.00, 1600.00, 'Payée', 3, '2023-02-28', NULL, '2024-06-08 15:04:24', NULL, NULL),
(129, 'FA-0016-2023', 1, 1, '2023-02-08', '2023-02-28', 'M.ELFALI ILIASS', '------------', '------------', 'Expertise_El_Fali_Appt_Avenue_FAR', 'Expertise Immobilière', 1800.00, 0.00, 0.00, 'Espèce', 0.00, 1500.00, 0.00, 300.00, 1800.00, 1800.00, 'Payée', 3, '2023-02-28', NULL, '2024-06-08 15:04:24', NULL, NULL),
(130, 'FA-0017-2023', 1, 1, '2023-02-09', '2023-02-28', 'M.Karim HADRAOUI', '------------', '------------', 'Expertise_HADRAOUI_Appt_Ain_Sebaa', 'Expertise Immobilière', 1500.00, 0.00, 0.00, 'Espèce', 0.00, 1250.00, 0.00, 250.00, 1500.00, 1500.00, 'Payée', 3, '2023-02-28', NULL, '2024-06-08 15:04:24', NULL, NULL),
(131, 'FA-0018-2023', 1, 1, '2023-02-10', '2023-02-28', 'Mme.RAOUF Zahira', '------------', '------------', 'Expertise_Zahra_Appt_Zoubir', 'Expertise Immobilière', 1500.00, 0.00, 0.00, 'Espèce', 0.00, 1250.00, 0.00, 250.00, 1500.00, 1500.00, 'Payée', 3, '2023-02-28', NULL, '2024-06-08 15:04:24', NULL, NULL),
(132, 'FA-0019-2023', 1, 1, '2023-02-11', '2023-02-28', 'M.MEKKAOUI ALAOUI Yassine', '------------', '------------', 'Expertise_Mekkaoui_appt_Almaz', 'Expertise Immobilière', 1500.00, 0.00, 0.00, 'Espèce', 0.00, 1250.00, 0.00, 250.00, 1500.00, 1500.00, 'Payée', 3, '2023-02-28', NULL, '2024-06-08 15:04:24', NULL, NULL),
(133, 'FA-0020-2023', 1, 1, '2023-02-11', '2023-02-28', 'M.SEHAQUI Mohamed Yassine', '------------', '------------', 'Expertise_SEHAQUI_Appt_Dar_Bouaaza', 'Expertise Immobilière', 1500.00, 0.00, 0.00, 'Espèce', 0.00, 1250.00, 0.00, 250.00, 1500.00, 1500.00, 'Payée', 3, '2023-02-28', NULL, '2024-06-08 15:04:24', NULL, NULL),
(134, 'FA-0021-2023', 1, 1, '2023-02-11', '2023-02-28', 'Mme.NACER Imane', '------------', '------------', 'Expertise_Imane_Appt_Roche_Noires', 'Expertise Immobilière', 1500.00, 0.00, 0.00, 'Espèce', 0.00, 1250.00, 0.00, 250.00, 1500.00, 1500.00, 'Payée', 3, '2023-02-28', NULL, '2024-06-08 15:04:24', NULL, NULL),
(135, 'FA-0022-2023', 1, 1, '2023-02-11', '2023-02-28', 'M.EL KHATIB Said', '------------', '------------', 'Expertise_Said_Immeuble_Tit_Mellil', 'Expertise Immobilière', 1800.00, 0.00, 0.00, 'Espèce', 0.00, 1500.00, 0.00, 300.00, 1800.00, 1800.00, 'Payée', 3, '2023-02-28', NULL, '2024-06-08 15:04:24', NULL, NULL),
(136, 'FA-0023-2023', 1, 1, '2023-02-11', '2023-02-28', 'Mme.EL BOUKHARI Hasnae', '------------', '------------', 'Expertise_Hasna_Appt_Hermitage', 'Expertise Immobilière', 1800.00, 0.00, 0.00, 'Espèce', 0.00, 1500.00, 0.00, 300.00, 1800.00, 1800.00, 'Payée', 3, '2023-02-28', NULL, '2024-06-08 15:04:24', NULL, NULL),
(137, 'FA-0024-2023', 1, 1, '2023-02-11', '2023-02-28', 'M.BENKHARBOUCH Idriss', '------------', '------------', 'Expertise_Idriss_Imeuble_Berrechid', 'Expertise Immobilière', 1500.00, 0.00, 0.00, 'Espèce', 0.00, 1250.00, 0.00, 250.00, 1500.00, 1500.00, 'Payée', 3, '2023-02-28', NULL, '2024-06-08 15:04:24', NULL, NULL),
(138, 'FA-0025-2023', 1, 1, '2023-02-11', '2023-02-28', 'M.Mohamed Braitit', '------------', '------------', 'Expertise_Braitit_Villa_Oued Zem', 'Expertise Immobilière', 1800.00, 0.00, 0.00, 'Espèce', 0.00, 1500.00, 0.00, 300.00, 1800.00, 1800.00, 'Payée', 3, '2023-02-28', NULL, '2024-06-08 15:04:24', NULL, NULL),
(139, 'FA-0026-2023', 1, 1, '2023-02-11', '2023-02-28', 'M.LHIMER ICHRAK', '------------', '------------', 'Expertise_Ichrak_Appt_Noauceur', 'Expertise Immobilière', 1500.00, 0.00, 0.00, 'Espèce', 0.00, 1250.00, 0.00, 250.00, 1500.00, 1500.00, 'Payée', 3, '2023-02-28', NULL, '2024-06-08 15:04:24', NULL, NULL),
(140, 'FA-0027-2023', 1, 1, '2023-02-12', '2023-02-28', 'M.ALAMI Alaa', '------------', '------------', 'Expertise_Alami_Almaz', 'Expertise Immobilière', 1500.00, 0.00, 0.00, 'Espèce', 0.00, 1250.00, 0.00, 250.00, 1500.00, 1500.00, 'Payée', 3, '2023-02-28', NULL, '2024-06-08 15:04:24', NULL, NULL),
(141, 'FA-0028-2023', 1, 1, '2023-02-13', '2023-02-28', 'M.RAIS Amine', '------------', '------------', 'Expertise_Rais_Appt_Almaz', 'Expertise Immobilière', 1500.00, 0.00, 0.00, 'Espèce', 0.00, 1250.00, 0.00, 250.00, 1500.00, 1500.00, 'Payée', 3, '2023-02-28', NULL, '2024-06-08 15:04:24', NULL, NULL),
(142, 'FA-0029-2023', 1, 1, '2023-02-14', '2023-02-28', 'M.WARID Hicham', '------------', '------------', 'Expertise_Hicham_Ain_Sebaa', 'Expertise Immobilière', 1500.00, 0.00, 0.00, 'Espèce', 0.00, 1250.00, 0.00, 250.00, 1500.00, 1500.00, 'Payée', 3, '2023-02-28', NULL, '2024-06-08 15:04:24', NULL, NULL),
(143, 'FA-0030-2023', 1, 3, '2023-02-15', '2023-02-01', 'M.MOHAMMED OBEID ', '------------', '------------', 'Formation \"Evaluation Immobilière\"', 'Action de la formation sur la thématique \"Evaluation Immobilière\"', 3600.00, 0.00, 0.00, 'Virement', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Payée', 3, '2023-02-01', NULL, '2024-06-08 15:04:24', NULL, NULL),
(144, 'FA-0031-2023', 1, 1, '2023-02-15', '2023-02-20', 'Mme Meryem BARICH', '------------', '------------', 'Expertise_Meriem_Barich', 'Expertise Immobilière', 2000.00, 0.00, 0.00, 'Chèque', 0.00, 1666.67, 0.00, 333.33, 2000.00, 2000.00, 'Payée', 3, '2023-02-20', NULL, '2024-06-08 15:04:24', NULL, NULL),
(145, 'FA-0032-2023', 1, 1, '2023-02-15', '2023-03-29', 'M.MOHAMED ABDERRAHIM', '------------', '------------', 'Expertise_Mohamed_Villa_Dar_Bouazza', 'Expertise Immobilière', 1500.00, 0.00, 0.00, 'Espèce', 0.00, 1250.00, 0.00, 250.00, 1500.00, 1500.00, 'Payée', 3, '2023-03-29', NULL, '2024-06-08 15:04:24', NULL, NULL),
(146, 'FA-0033-2023', 1, 1, '2023-02-15', '2023-03-29', 'M.EL YASMINI', '------------', '------------', 'Expertise_EL_Yassmini_Mosquée_Hermitage', 'Expertise Immobilière', 1800.00, 0.00, 0.00, 'Espèce', 0.00, 1500.00, 0.00, 300.00, 1800.00, 1800.00, 'Payée', 3, '2023-03-29', NULL, '2024-06-08 15:04:24', NULL, NULL),
(147, 'FA-0034-2023', 1, 1, '2023-02-15', '2023-03-29', 'M. EL FOULANI KABIL ', '------------', '------------', 'Expertise_Kabil_appt_Almaz', 'Expertise Immobilière', 1500.00, 0.00, 0.00, 'Espèce', 0.00, 1250.00, 0.00, 250.00, 1500.00, 1500.00, 'Payée', 3, '2023-03-29', NULL, '2024-06-08 15:04:24', NULL, NULL),
(148, 'FA-0035-2023', 1, 1, '2023-02-15', '2023-03-29', 'M.LOURIGUI SALAH EDDINE', '------------', '------------', 'Expertise_LOURIGUI_Appt_Mers_Sultan', 'Expertise Immobilière', 1500.00, 0.00, 0.00, 'Espèce', 0.00, 1250.00, 0.00, 250.00, 1500.00, 1500.00, 'Payée', 3, '2023-03-29', NULL, '2024-06-08 15:04:24', NULL, NULL),
(149, 'FA-0036-2023', 1, 1, '2023-02-15', '2023-03-29', 'Mme.ILLOUL Lamiaa', '------------', '------------', 'Expertise_Lamia_Hay_Hassani', 'Expertise Immobilière', 1500.00, 0.00, 0.00, 'Espèce', 0.00, 1250.00, 0.00, 250.00, 1500.00, 1500.00, 'Payée', 3, '2023-03-29', NULL, '2024-06-08 15:04:24', NULL, NULL),
(150, 'FA-0037-2023', 1, 1, '2023-02-15', '2023-03-29', 'M.ABDELKABIR KARIM', '------------', '------------', 'Expertise_Abdelkbir_Immeuble_Marrakech', 'Expertise Immobilière', 2400.00, 0.00, 0.00, 'Espèce', 0.00, 2000.00, 0.00, 400.00, 2400.00, 2400.00, 'Payée', 3, '2023-03-29', NULL, '2024-06-08 15:04:24', NULL, NULL),
(151, 'FA-0038-2023', 1, 1, '2023-02-15', '2023-03-06', 'CATBER SARL', '001816622000032', 'Bureau N°27 Etg 7, Quartier du Parc Jalal Park. Mohammedia', 'Expertise_Nabil_Chakir_Unité_Rabat', 'Expertise Immobilière', 5400.00, 0.00, 0.00, 'Virement', 0.00, 4500.00, 0.00, 900.00, 5400.00, 5400.00, 'Payée', 3, '2023-03-06', NULL, '2024-06-08 15:04:24', NULL, NULL),
(152, 'FA-0039-2023', 1, 1, '2023-02-21', '2023-02-20', 'Mme. ANNAZIRI BOUCHRA', '001597985000005', 'Bd Abdelmoumen, résidence Ennakhil 3, Appt N°2, 1er étage. Mohammedia', 'Expertise_Maîte_Annaziri_Plateau_Bureau_Casa', 'Expertise Immobilière', 2400.00, 0.00, 0.00, 'Chèque', 0.00, 2000.00, 0.00, 400.00, 2400.00, 2400.00, 'Payée', 3, '2023-02-20', NULL, '2024-06-08 15:04:24', NULL, NULL),
(153, 'FA-0040-2023', 1, 1, '2023-02-23', '2023-03-07', 'Société Maroc Systèmes Santé ', '000205016000067', '------------', 'Expertise_Lajhlou_Ali_Villa_Krimate', 'Expertise immobilière d’un Bien immobilier, de type « Villa », sis Rue 31, N°29, Quartier KRIMATE, Arrondissement Ain Chock,\nCasablanca - Maroc, objet du T.F N°41.486/C.', 4000.00, 0.00, 0.00, 'Chèque', 0.00, 3333.33, 0.00, 666.67, 4000.00, 4000.00, 'Payée', 3, '2023-03-07', NULL, '2024-06-08 15:04:24', NULL, NULL),
(154, 'FA-0041-2023', 1, 1, '2023-02-28', '2023-03-23', 'Société MAGHREB COLOR SARL', '000084740000056', '54, Rue ABOU RAKRAK Casablanca', 'Expertise_Ziani_Unité_Sidi_Maarouf', 'Expertise Immobilière , sis Lot N°317,\nLotissement LINA, Route 1029, Zone Industrielle Sidi Maarouf, Casablanca Maroc, objet du T.F N°1544/47.', 5400.00, 0.00, 0.00, 'Chèque', 0.00, 4500.00, 0.00, 900.00, 5400.00, 5400.00, 'Payée', 3, '2023-03-23', NULL, '2024-06-08 15:04:24', NULL, NULL),
(155, 'FA-0042-2023', 1, 1, '2023-02-28', '2023-03-10', 'Société  DAVELEC', '000094036000003', '14 Rue Ben Ghazala Ex Rue Dertrandand La Villette - Casablanca', 'Expertise_DAVALEC_Fond_De_Commerce', 'Evaluatio immobilière, sis sis Rue Idriss Al Mohammedi, Lot N°06, Arrondissement Anfa,\nCasablanca - Maroc, objet du TF N° 44.749/01.', 5400.00, 0.00, 0.00, 'Chèque', 0.00, 4500.00, 0.00, 900.00, 5400.00, 5400.00, 'Payée', 3, '2023-03-10', NULL, '2024-06-08 15:04:24', NULL, NULL),
(156, 'FA-0043-2023', 1, 1, '2023-02-28', '2023-03-13', 'Société AGH Groupe', '000011575000009', '14, rue yatrib, quartier Mers sultan', 'Expertise_Guessous_02_Commerces', 'Expertise immobilière de deux commerces sis 14, Rue Yatrib, Mers Sultan, Commune Sidi Belyout, Casablanca - Maroc, objet du T.F N°2.841/46. et T.F N°2.842/46', 4200.00, 0.00, 0.00, 'Chèque', 0.00, 3500.00, 0.00, 700.00, 4200.00, 4200.00, 'Payée', 3, '2023-03-13', NULL, '2024-06-08 15:04:24', NULL, NULL),
(157, 'FA-0044-2023', 1, 1, '2023-02-28', '2023-03-13', 'Société AGH Groupe', '000011575000009', '14, rue yatrib, quartier Mers sultan', 'Expertise_Guessous_unité_Ouled Saleh', 'Expertise  de la valeur vénale\ndes constructions d’un « Bien » immobilier, de type « Unité industrielle », sis PARC INDUSTRIEL D’OULED\nSALEH, Lot N°84, Province de Nouaceur, Commune d’Ouled Saleh, Casablanca-Maroc, objet du T.F.M\nN°4.678/63.', 3600.00, 0.00, 0.00, 'Chèque', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Payée', 3, '2023-03-13', NULL, '2024-06-08 15:04:24', NULL, NULL),
(158, 'FA-0045-2023', 1, 1, '2023-03-03', '2023-03-10', 'Me .Sabiri Hicham', '001714200000053', '120 Bd Moulay Idriss I, Casablanca 20250', 'Expertise_Me_Sabiri_Terrain_Route_Azzemour', 'Expertise Immobilière sis Boulevard Abdelhadi Boutaleb, Lot N°02, Arrondissement Hay Hassani, Casablanca- Maroc. Objet du TF N°19.063/64.', 2400.00, 0.00, 0.00, 'Chèque', 0.00, 2000.00, 0.00, 400.00, 2400.00, 2400.00, 'Payée', 3, '2023-03-10', NULL, '2024-06-08 15:04:24', NULL, NULL),
(159, 'FA-0046-2023', 1, 1, '2023-03-06', '2023-03-10', 'NEZAMED', '001870647000043', '52, Lotissement HAMZA, Sidi Maarouf, Casablanca', 'Expertise_Mr_Hachimi_Appt_sancy51_Almaz', 'Expertise Immobilière', 1800.00, 0.00, 0.00, 'Chèque', 0.00, 1500.00, 0.00, 300.00, 1800.00, 1800.00, 'Payée', 3, '2023-03-10', NULL, '2024-06-08 15:04:24', NULL, NULL),
(160, 'FA-0047-2023', 1, 1, '2023-03-08', '2023-03-17', 'Société  HAMAG PROJECT & FORWARDING', '000032519000031', '355 BD MED V ESPACE YOUSRA ETG 9 BUREAU 108 CASABLANCA - Maroc', 'Expertise_Bureau_Bd_Mohamed_V', 'Expertise Immobilière de la valeur vénale, de trois  «Bien» immobilier, de type « Plateau bureau\n», sis Boulevard Mohamed V, Immeuble N°355, 10ème étage, Préfecture d\'Aïn Sebaâ-Hay Mohammadi,\nCasablanca - Maroc. Objet du T.F N°28.837/32, T. N° 28.838/32 et T.F N°28.839/32', 9000.00, 0.00, 0.00, 'Chèque', 0.00, 7500.00, 0.00, 1500.00, 9000.00, 9000.00, 'Payée', 3, '2023-03-17', NULL, '2024-06-08 15:04:24', NULL, NULL),
(161, 'FA-0048-2023', 1, 1, '2023-03-08', '2023-04-17', 'Société  WIFAK DE TRANSPORT DE SAFI (WITRANS)', '001552509000031', 'Route Sebt Gzoula Km 5 - Safi (M)', 'Expertise_Terrain_Ghandour_Safi', 'Expertise  immobilizer de la valeur vénale, d’un bien immobilier de type « Unité industrielle », sis RS N°120, Route Sebt Gzoula, Km 5, Safi- Maroc, objet du T.F N°24.497/23.', 4200.00, 0.00, 0.00, 'Virement', 0.00, 3500.00, 0.00, 700.00, 4200.00, 4200.00, 'Payée', 3, '2023-04-17', NULL, '2024-06-08 15:04:24', NULL, NULL),
(162, 'FA-0049-2023', 1, 1, '2023-03-17', '2023-03-22', 'Achraf KAANAN', '------------', '------------', 'Expertise_Achraf_terrain_Almaz', 'Expertise immobilière de la valeur vénale, d’un «Bien» immobilier, de type « Lot de terrain pour villa », sis Lotissement « Almaz II », Lot N°39, Rocade Sud-Ouest, Province de Nouaceur, Commune Oulad Azzouz, Casablanca - Maroc. Objet du T.F N° 184.858/63.', 1800.00, 0.00, 0.00, 'Virement', 0.00, 1500.00, 0.00, 300.00, 1800.00, 1800.00, 'Payée', 3, '2023-03-22', NULL, '2024-06-08 15:04:24', NULL, NULL),
(163, 'FA-0050-2023', 1, 1, '2023-03-17', '2023-03-29', 'M.EZ-ZOUINE EL MOSTAFA', '------------', '------------', 'Expertise_Mostafa_Appt_Ain_Sebaa', 'Expertise Immobilière', 1500.00, 0.00, 0.00, 'Espèce', 0.00, 1250.00, 0.00, 250.00, 1500.00, 1500.00, 'Payée', 3, '2023-03-29', NULL, '2024-06-08 15:04:24', NULL, NULL),
(164, 'FA-0051-2023', 1, 1, '2023-03-17', '2023-03-29', 'M.GOUMRI Mohamed', '------------', '------------', 'Expertise_Gourmi_Bureau_Sidi_Maarouf', 'Expertise Immobilière', 1500.00, 0.00, 0.00, 'Espèce', 0.00, 1250.00, 0.00, 250.00, 1500.00, 1500.00, 'Payée', 3, '2023-03-29', NULL, '2024-06-08 15:04:24', NULL, NULL),
(165, 'FA-0052-2023', 1, 1, '2023-03-30', '2023-04-14', 'Société CHOUJAA', '0000 8463 3600 051', '1069 Bd Mohammed VI, Casablanca 20450', 'Expertise_SADEK_Magasin_BD_Mohamed_VI', 'Expertise Immobilière de deux comemrces sis, Boulevard Mohamed VI, Résidence « Fath Zhar », Immeuble N°16,\nRoute de Mediouna, Casablanca - Maroc, objet du T.F N°692/48 et T.F N°693/48', 3000.00, 0.00, 0.00, 'Chèque', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, 'Payée', 3, '2023-04-14', NULL, '2024-06-08 15:04:24', NULL, NULL),
(166, 'FA-0053-2023', 1, 1, '2023-04-07', '2023-06-07', 'Banque CIH', '001542240000068', '187, Boulevard Hassan II, Casablanca', 'Expertise_CIH_Bureau', 'Expertise Immoblière sis, de type « Plateau bureau », sis 20, Rue n°11, Résidence « Smail » Bureau N°7, Rez-De-Chaussée, Quartier de L’Hermitage, Préfecture Derb Sultan Al Fida, Casablanca – Maroc, objet du T.F N°14.807/34.', 2400.00, 0.00, 0.00, 'Virement', -100.00, 2000.00, 0.00, 400.00, 2400.00, 2400.00, 'Payée', 3, '2023-06-07', NULL, '2024-06-08 15:04:24', NULL, NULL),
(167, 'FA-0054-2023', 1, 1, '2023-04-11', '2023-04-14', 'Mme .MORJANE SAFAA', '------------', '------------', 'Expertise_Morjane_Villa_Rabat', 'Expertise Immobilière  d’un « Bien » immobilier, de type « Villa », sis Angle Rue Oulad Fares & Rue Taghjijt, Villa N°01, Quartier Souissi, Arrondissement Agdal-Ryad, Rabat – Maroc. Objet du T.F N° 23.890/R.', 3600.00, 0.00, 0.00, 'Virement', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Payée', 3, '2023-04-14', NULL, '2024-06-08 15:04:24', NULL, NULL),
(168, 'FA-0055-2023', 1, 1, '2023-04-11', '2023-04-20', 'Société MED AFRICA LOGISTICS SARL', '000230731000088', '195 BD EMILE ZOLA 7EME ETAGE NO.21\nCASABLANCA', 'Expertise_Appt_Al_Mansouria', 'Expertise Immobilière  d’un « Bien » immobilier, de type « Appt », sis Kalaat Al Mansouria, \nImmeuble Laayoune 1, \nRDC,\nProvince de Benslimane\nEl Mansouria\nMaroc.. Objet du T.F N° 19.722/25', 3000.00, 0.00, 0.00, 'Chèque', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, 'Payée', 3, '2023-04-20', NULL, '2024-06-08 15:04:24', NULL, NULL),
(169, 'FA-0056-2023', 1, 1, '2023-04-14', '2023-07-10', 'Banque CIH', '001542240000068', '187, Boulevard Hassan II, Casablanca', 'Expertise_CIH_Riad', 'Expertise Immobilière pour la valeur vénale, d’un « Bien » immobilier, de type « Riad »  sis\nRue Dar Alglaoui, Derb Alkafta N°03, Quartier Bab Dokala, Marrakech - Maroc. Objet du T.F N° 35.179/M.\n\nEvalaution des travaux de rénovation du Riad objet du T.F N°35.179/M.', 10552.00, 0.00, 0.00, 'Virement', 0.00, 8793.33, 0.00, 1758.67, 10552.00, 10552.00, 'Payée', 3, '2023-07-10', NULL, '2024-06-08 15:04:24', NULL, NULL),
(170, 'FA-0057-2023', 1, 1, '2023-04-19', '2023-04-20', 'Société SOSAMAC', '001527446000060', 'Km 14 Route De Safi, Douar Ait Toumart - Harbil', 'Expertise_Terrain_Mohamed_Achhour_Marakech', 'Expertise d’un « Bien » immobilier, de type « Terrain », sis Douar Oulad Ahmed Benbrahim, Province El Kelaa des Sraghna, Marrakech- Maroc. Objet du TF N°1.123/72', 7800.00, 0.00, 0.00, 'Chèque', 0.00, 6500.00, 0.00, 1300.00, 7800.00, 7800.00, 'Payée', 3, '2023-04-20', NULL, '2024-06-08 15:04:24', NULL, NULL),
(171, 'FA-0058-2023', 1, 1, '2023-04-25', '2023-04-27', 'Société SOMADER', '001572585000015', '7 Bis Rue Nassih Eddine Quartier Maarif Extension. Casablanca', 'Expertise_Bureau_Bd D\'ANFA_Casablanca', 'Expertise Immoblière sis, de type «Bureau », sis 131, Bd d\'Anfa, Appt N°5B, 5ème étage, Arrondissement Sidi Belyout, Prefecture d\'Anfa, Casablanca – Maroc, objet du T.F N°44.327/01.', 3000.00, 0.00, 0.00, 'Espèce', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, 'Payée', 3, '2023-04-27', NULL, '2024-06-08 15:04:24', NULL, NULL),
(172, 'FA-0059-2023', 1, 1, '2023-04-26', '2023-06-12', 'Banque CIH', '001542240000068', '187, Boulevard Hassan II, Casablanca', 'Expertise_CIH_Villa', 'Expertise de la valeur vénale, d’un «\nBien » immobilier, de type « Villa », sis Rue N°05, Lot Saloma 2, N°113, Préfecture d\'Aïn Sebaâ-Hay  Mohammadi, Casablanca – Maroc. Objet du T.F N° 134.046/12.', 3600.00, 0.00, 0.00, 'Virement', -150.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Payée', 3, '2023-06-12', NULL, '2024-06-08 15:04:24', NULL, NULL),
(173, 'FA-0060-2023', 1, 1, '2023-04-26', '2023-06-12', 'Banque CIH', '001542240000068', '187, Boulevard Hassan II, Casablanca', 'Expertise_CIH_Unité', 'Expertise Immioblière de la valeur vénale, d’un actif immobilier, de type « Unité », sis Commune de Had Soualem,\nProvince de Settat, Douar Lakhlaif, Région de Casablanca-Settat- Maroc, objet du TF N°38.902/53.', 6000.00, 0.00, 0.00, 'Virement', -250.00, 5000.00, 0.00, 1000.00, 6000.00, 6000.00, 'Payée', 3, '2023-06-12', NULL, '2024-06-08 15:04:24', NULL, NULL),
(174, 'FA-0061-2023', 1, 1, '2023-04-26', '2023-05-12', 'Société Maroc Systèmes Santé ', '000205016000067', '------------', 'Expertise_Lahlou_Ali_Villa_Californie', 'Expertise Immobilière', 4000.00, 0.00, 0.00, 'Chèque', 0.00, 3333.33, 0.00, 666.67, 4000.00, 4000.00, 'Payée', 3, '2023-05-12', NULL, '2024-06-08 15:04:24', NULL, NULL),
(175, 'FA-0062-2023', 1, 1, '2023-05-09', '2023-05-23', 'Mme. ANNAZIRI BOUCHRA', '001597985000005', 'Bd Abdelmoumen, résidence Ennakhil 3, Appt N°2, 1er étage. Mohammedia', 'Expertise_Maîte_Annaziri_Appartement', 'Expertise Immobilière', 2400.00, 0.00, 0.00, 'Virement', 0.00, 2000.00, 0.00, 400.00, 2400.00, 2400.00, 'Payée', 3, '2023-05-23', NULL, '2024-06-08 15:04:24', NULL, NULL),
(176, 'FA-0063-2023', 1, 1, '2023-05-09', '2023-05-17', ' Sté LE MONDE PREFA', '000230472000097', 'Angle Boulevard Zerktouni Et Boulevard Mohamed Ben Abdellah, Résidence Marina Center 1, 4ème Étage, N°27 - Casablanca', 'Expertise_Sté _Le_Monde de PREFA_Unité_Settat', 'Expertise Immobilière d’un actif immobilier, de type « Unité Industrielle », sis Parc Industriel et Technologique « LOGINTEK », Commune Sidi El Aidi, Settat- Maroc, objet du T.F.M N°1.400/T.', 8400.00, 0.00, 0.00, 'Chèque', 0.00, 7000.00, 0.00, 1400.00, 8400.00, 8400.00, 'Payée', 3, '2023-05-17', NULL, '2024-06-08 15:04:24', NULL, NULL),
(177, 'FA-0064-2023', 1, 1, '2023-05-09', '2023-05-10', 'Mr BENSALAH Abdelhak', '------------', '------------', 'Expertise_BENSALAH_Appt_Belevéder', 'Expertise Immobilière', 1600.00, 0.00, 0.00, 'Espèce', 0.00, 1333.33, 0.00, 266.67, 1600.00, 1600.00, 'Payée', 3, '2023-05-10', NULL, '2024-06-08 15:04:24', NULL, NULL),
(178, 'FA-0065-2023', 1, 1, '2023-05-09', '2023-05-10', 'Mr ESSAKET Mohamed', '------------', '------------', 'Expertise_ESSAKET_Immeuble_Hay_SALAMA', 'Expertise Immobilière', 1600.00, 0.00, 0.00, 'Espèce', 0.00, 1333.33, 0.00, 266.67, 1600.00, 1600.00, 'Payée', 3, '2023-05-10', NULL, '2024-06-08 15:04:24', NULL, NULL),
(179, 'FA-0066-2023', 1, 1, '2023-05-09', '2023-05-10', 'Mr  ELKHADIRI ABDELBARI', '------------', '------------', 'Expertise_EL8KHADIRI_Appt_Maarif_Romandi', 'Expertise Immobilière', 1600.00, 0.00, 0.00, 'Espèce', 0.00, 1333.33, 0.00, 266.67, 1600.00, 1600.00, 'Payée', 3, '2023-05-10', NULL, '2024-06-08 15:04:24', NULL, NULL),
(180, 'FA-0067-2023', 1, 1, '2023-05-09', '2023-05-10', 'Mr Bennis Amine', '------------', '------------', 'Expertise_Bennis_Commerce_Hopitaux', 'Expertise Immobilière', 1500.00, 0.00, 0.00, 'Espèce', 0.00, 1250.00, 0.00, 250.00, 1500.00, 1500.00, 'Payée', 3, '2023-05-10', NULL, '2024-06-08 15:04:24', NULL, NULL),
(181, 'FA-0068-2023', 1, 1, '2023-05-09', '2023-05-10', 'Mme Lahdab Hafida', '------------', '------------', 'Expertise_LAHDAB_Appt_Tit Mellil', 'Expertise Immobilière', 1200.00, 0.00, 0.00, 'Espèce', 0.00, 1000.00, 0.00, 200.00, 1200.00, 1200.00, 'Payée', 3, '2023-05-10', NULL, '2024-06-08 15:04:24', NULL, NULL),
(182, 'FA-0069-2023', 1, 1, '2023-05-09', '2023-05-10', 'Mr EL FALI ILYASS', '------------', '------------', 'Expertise_El_Fali_Appt_Maarif', 'Expertise Immobilière', 1200.00, 0.00, 0.00, 'Espèce', 0.00, 1000.00, 0.00, 200.00, 1200.00, 1200.00, 'Payée', 3, '2023-05-10', NULL, '2024-06-08 15:04:24', NULL, NULL),
(183, 'FA-0070-2023', 1, 1, '2023-05-09', '2023-05-10', 'Mr AZNAG MUSTAPHA', '------------', '------------', 'Expertise_AZNAG_Appt_Oulfa', 'Expertise Immobilière', 1500.00, 0.00, 0.00, 'Espèce', 0.00, 1250.00, 0.00, 250.00, 1500.00, 1500.00, 'Payée', 3, '2023-05-10', NULL, '2024-06-08 15:04:24', NULL, NULL),
(184, 'FA-0071-2023', 1, 1, '2023-05-09', '2023-05-10', 'Mme Mina BENOUAMA', '------------', '------------', 'Expertise_Mine_Appt_Sidi_maarouf', 'Expertise Immobilière', 1500.00, 0.00, 0.00, 'Espèce', 0.00, 1250.00, 0.00, 250.00, 1500.00, 1500.00, 'Payée', 3, '2023-05-10', NULL, '2024-06-08 15:04:24', NULL, NULL),
(185, 'FA-0072-2023', 1, 1, '2023-05-09', '2023-05-10', 'Mr HAMID CHAABA', '------------', '------------', 'Expertise_Hamid_Ecole_Tit Mellil', 'Expertise Immobilière', 1600.00, 0.00, 0.00, 'Espèce', 0.00, 1333.33, 0.00, 266.67, 1600.00, 1600.00, 'Payée', 3, '2023-05-10', NULL, '2024-06-08 15:04:24', NULL, NULL),
(186, 'FA-0073-2023', 1, 1, '2023-05-09', '2023-05-10', 'Mme Nadia OUAZZANI', '------------', '------------', 'Expertise_Nadia_Terrain_Alalymoun', 'Expertise Immobilière', 1400.00, 0.00, 0.00, 'Espèce', 0.00, 1166.67, 0.00, 233.33, 1400.00, 1400.00, 'Payée', 3, '2023-05-10', NULL, '2024-06-08 15:04:24', NULL, NULL),
(187, 'FA-0074-2023', 1, 1, '2023-05-09', '2023-05-10', 'Mr Mohamed Jabbour', '------------', '------------', 'Expertise_Jabbour_Terrain_Bouskoura', 'Expertise Immobilière', 1600.00, 0.00, 0.00, 'Espèce', 0.00, 1333.33, 0.00, 266.67, 1600.00, 1600.00, 'Payée', 3, '2023-05-10', NULL, '2024-06-08 15:04:24', NULL, NULL),
(188, 'FA-0075-2023', 1, 1, '2023-05-09', '2023-05-10', 'Mr Abdelkarim Jabbour', '------------', '------------', 'Expertise_Jaboour_Terain_Bouskura', 'Expertise Immobilière', 1600.00, 0.00, 0.00, 'Espèce', 0.00, 1333.33, 0.00, 266.67, 1600.00, 1600.00, 'Payée', 3, '2023-05-10', NULL, '2024-06-08 15:04:24', NULL, NULL),
(189, 'FA-0076-2023', 1, 1, '2023-05-09', '2023-05-10', 'Mme Aicha BAYAD', '------------', '------------', 'Expertise_Aicha_µappt_Mansouria', 'Expertise Immobilière', 1800.00, 0.00, 0.00, 'Espèce', 0.00, 1500.00, 0.00, 300.00, 1800.00, 1800.00, 'Payée', 3, '2023-05-10', NULL, '2024-06-08 15:04:24', NULL, NULL),
(190, 'FA-0077-2023', 1, 1, '2023-05-09', '2023-05-10', 'Mme Soukaina taik', '------------', '------------', 'Expertise_Soukaina_appt_Ain Sebaa', 'Expertise Immobilière', 1600.00, 0.00, 0.00, 'Espèce', 0.00, 1333.33, 0.00, 266.67, 1600.00, 1600.00, 'Payée', 3, '2023-05-10', NULL, '2024-06-08 15:04:24', NULL, NULL),
(191, 'FA-0078-2023', 1, 1, '2023-05-09', '2023-05-10', 'Mr Najib Chah', '------------', '------------', 'Expertise_Najib_Bureau_califorine', 'Expertise Immobilière', 1600.00, 0.00, 0.00, 'Espèce', 0.00, 1333.33, 0.00, 266.67, 1600.00, 1600.00, 'Payée', 3, '2023-05-10', NULL, '2024-06-08 15:04:24', NULL, NULL),
(192, 'FA-0079-2023', 1, 1, '2023-05-09', '2023-05-10', 'Mme Watik Asmaa', '------------', '------------', 'Expertise_Watik_villa_Dar Bouazza', 'Expertise Immobilière', 1200.00, 0.00, 0.00, 'Espèce', 0.00, 1000.00, 0.00, 200.00, 1200.00, 1200.00, 'Payée', 3, '2023-05-10', NULL, '2024-06-08 15:04:24', NULL, NULL),
(193, 'FA-0080-2023', 1, 1, '2023-05-09', '2023-05-10', 'Mr ICHAACH Mohamed ', '------------', '------------', 'Expertise_ICHAACH_Appt_tanger', 'Expertise Immobilière', 1200.00, 0.00, 0.00, 'Espèce', 0.00, 1000.00, 0.00, 200.00, 1200.00, 1200.00, 'Payée', 3, '2023-05-10', NULL, '2024-06-08 15:04:24', NULL, NULL),
(194, 'FA-0081-2023', 1, 1, '2023-05-09', '2023-05-10', 'Mme Faraj SOUAD', '------------', '------------', 'Expertise_Faraj_Villa_Bouskoura', 'Expertise Immobilière', 1600.00, 0.00, 0.00, 'Espèce', 0.00, 1333.33, 0.00, 266.67, 1600.00, 1600.00, 'Payée', 3, '2023-05-10', NULL, '2024-06-08 15:04:24', NULL, NULL),
(195, 'FA-0082-2023', 1, 3, '2023-05-12', '2023-05-11', 'Société Jil Khibrate', '002824022000002', 'Centre Riad 61, angle avenue lalla yacout et mustapha maani, n° 69, 2ème étage, Casablanca', 'Formation \"Evaluation Immobilière\"', 'Action de formation sur la thématique \"Evaluation Immobilière\" le 11 Mai 2023', 1800.00, 0.00, 0.00, 'Virement', 0.00, 1500.00, 0.00, 300.00, 1800.00, 1800.00, 'Payée', 3, '2023-05-11', NULL, '2024-06-08 15:04:24', NULL, NULL),
(196, 'FA-0083-2023', 1, 3, '2023-05-12', '2023-05-11', 'Mme Wafaa BENTALEB', '------------', '------------', 'Formation \"Evaluation Immobilière\"', 'Action de formation sur la thématique \"Evaluation Immobilière\" le 11 Mai 2023', 1800.00, 0.00, 0.00, 'Virement', 0.00, 1500.00, 0.00, 300.00, 1800.00, 1800.00, 'Payée', 3, '2023-05-11', NULL, '2024-06-08 15:04:24', NULL, NULL),
(197, 'FA-0084-2023', 1, 3, '2023-05-12', '2023-05-11', 'Sté ARITHMETIC COMPTA', '000039963000027', '------------', 'Formation \"Evaluation Immobilière\"', 'Action de formation sur la thématique \"Evaluation Immobilière\" le 11 Mai 2023', 1800.00, 0.00, 0.00, 'Virement', 0.00, 1500.00, 0.00, 300.00, 1800.00, 1800.00, 'Payée', 3, '2023-05-11', NULL, '2024-06-08 15:04:24', NULL, NULL),
(198, 'FA-0085-2023', 1, 3, '2023-05-12', '2023-05-11', 'M.Marouane EL ASSAL', '------------', '------------', 'Formation \"Evaluation Immobilière\"', 'Action de formation sur la thématique \"Evaluation Immobilière\" le 11 Mai 2023', 1800.00, 0.00, 0.00, 'Virement', 0.00, 1500.00, 0.00, 300.00, 1800.00, 1800.00, 'Payée', 3, '2023-05-11', NULL, '2024-06-08 15:04:24', NULL, NULL),
(199, 'FA-0086-2023', 1, 1, '2023-05-15', '2023-05-24', 'Sté EL MAN GROUPE', '001512251000015', 'Route Côtière 111, F 25/26 Ain Sebaa - Aîn-Sebaâ (AR)', 'Expertise_Sté _EL_Man__Entrepôt_ain_Sebaa', 'Expertise Immiobilière sis Boulevard Sfax, Zone industrielle Bernoussi, Casablanca-\nMaroc. Objet du T.F. N°103.176/C.', 7800.00, 0.00, 0.00, 'Chèque', 0.00, 6500.00, 0.00, 1300.00, 7800.00, 7800.00, 'Payée', 3, '2023-05-24', NULL, '2024-06-08 15:04:24', NULL, NULL),
(200, 'FA-0087-2023', 1, 1, '2023-05-15', '2023-05-19', 'Sté Mercure Internationnal Of Morocco', '000229757000002', '197 Bd Zerktouni 20000 - Casablanca', 'Expertise _Magasins_Sté Mercure', 'Evaluation Immobilière, sis Angle rue Tata et rue Mâarakat Ohoud, Place 16 Novembre, Arrondissement Anfa, Casablanca - Maroc, objet des T.F N°53.540/01 & 53.541/01.\n\nEvalaution Immobilière, sis 197, Boulevard Zerktouni, Quartier Maârif, Arrondissement Anfa, Casablanca - Maroc, objet du T.F N°75.944/01.', 6720.00, 0.00, 0.00, 'Virement', 0.00, 5600.00, 0.00, 1120.00, 6720.00, 6720.00, 'Payée', 3, '2023-05-19', NULL, '2024-06-08 15:04:24', NULL, NULL),
(201, 'FA-0088-2023', 1, 1, '2023-05-15', '2023-07-10', 'Banque CIH', '001542240000068', '187, Boulevard Hassan II, Casablanca', 'Expertise_CIH_Bureau', 'Expertise Immobilière d’un « Bien » immobilier, de type « Appartement », sis Rue Idriss I, Résidence « HOUDA »,\n3ème étage, Appartement N°06, Quartier Hamria, Meknès - Maroc, objet du T.F N° 123.779/05.', 2400.00, 0.00, 0.00, 'Virement', -100.00, 2000.00, 0.00, 400.00, 2400.00, 2400.00, 'Payée', 3, '2023-07-10', NULL, '2024-06-08 15:04:24', NULL, NULL),
(202, 'FA-0089-2023', 1, 1, '2023-05-18', '2023-05-30', 'M. ALLAL NAJM', '------------', '------------', 'Expertise_M.Najm_Villa_Bouskoura', 'Expertise  immobilière sis Villa N°102, Ville verte de Bouskoura, Province de Nouaceur, Casablanca –\nMaroc. Objet du T.F N° 40.251/63.\nimmobilier, de type « Villa », sis Villa', 3000.00, 0.00, 0.00, 'Virement', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, 'Payée', 3, '2023-05-30', NULL, '2024-06-08 15:04:24', NULL, NULL),
(203, 'FA-0090-2023', 1, 1, '2023-05-26', '2023-06-19', 'Sté FAOZ INVEST', '001755750000008', '410, Boulevard Zerktouni, Residence  HAMAD, Appt N°1-Casablanca', 'Expertise_Youssef_Appt_Sidi_Maarouf', 'Expertise Immobilière', 1800.00, 0.00, 0.00, 'Espèce', 0.00, 1500.00, 0.00, 300.00, 1800.00, 1800.00, 'Payée', 3, '2023-06-19', NULL, '2024-06-08 15:04:24', NULL, NULL),
(204, 'FA-0091-2023', 1, 1, '2023-05-26', '2023-06-12', 'Sté ANK Systems', '001526085000044', 'Lot Sofiane Rue 100 (ex One) N° 84, Sidi Maarouf - Casablanca', 'Expertise_NACIR_Magasin_Sidi_Maarouf', 'Expertise Immobilière ,situé à Rue 100 (exONE), Lotissement « Soufiane », N°84, Quartier Sidi\nMaârouf, Arrondissement Ain Chock, Casablanca - Maroc, objet du T.F N°61.087/47.', 3000.00, 0.00, 0.00, 'chèque', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, 'Payée', 3, '2023-06-12', NULL, '2024-06-08 15:04:24', NULL, NULL),
(205, 'FA-0092-2023', 1, 1, '2023-06-07', '2023-06-12', 'Sté IMMAXO MAROC', '001510945000066', 'Angle Rue   Ait BA AMRANE et Boulevard Mohaamed V, Immeuble (B) 7ème étage Appt 701/AMAROC', 'Expertise_Sqali_Villa_Tit_mellil', 'Evaluation Immobilière', 16500.00, 0.00, 0.00, 'Virement', 0.00, 13750.00, 0.00, 2750.00, 16500.00, 16500.00, 'Payée', 3, '2023-06-12', NULL, '2024-06-08 15:04:24', NULL, NULL),
(206, 'FA-0093-2023', 1, 1, '2023-06-08', '2023-08-11', 'Sté CHOOP\'S', '003281284000088', '249, Boulevard Ziraoui, Casablanca', 'Expertise_CHAMCHAM_Commerce_Ziraoui', 'Expertise Immobilière d’un bien immobilier de type « Commerce », situé à 249, Boulevard Ziraoui, Arrondissement Anfa, Casablanca - Maroc, objet du T.F N°122.529/01.', 3000.00, 0.00, 0.00, 'Espèce', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, 'Payée', 3, '2023-08-11', NULL, '2024-06-08 15:04:24', NULL, NULL),
(207, 'FA-0094-2023', 1, 1, '2023-06-15', '2023-06-15', 'Mme LAHRECH SIHAM.', '------------', '------------', 'Expertise_SIHAM_Villa_Mohammedia_Yousr', 'Expertise Immobilière d’un « Bien » immobilier, de type « Villa », sis Lotissement « YASMINA », Villa N°211, Mohammedia – Maroc. Objet du T.F\nN° 668/26.', 3000.00, 0.00, 0.00, 'Virement', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, 'Payée', 3, '2023-06-15', NULL, '2024-06-08 15:04:24', NULL, NULL),
(208, 'FA-0095-2023', 1, 1, '2023-06-15', '2023-06-20', 'Sté MOSONI DEVELOPPEMENT', '001518538000016', 'PARC PLAZA 1 IMM D2 ETG 2 MOHAMMEDIA', 'Expertise_MOSONI_03_Immeubles_Yousr', 'Expertise Immobilière', 9000.00, 0.00, 0.00, 'Chèque', 0.00, 7500.00, 0.00, 1500.00, 9000.00, 9000.00, 'Payée', 3, '2023-06-20', NULL, '2024-06-08 15:04:24', NULL, NULL),
(209, 'FA-0096-2023', 1, 1, '2023-06-15', '2023-06-20', 'Sté MONTREAL ACADEMY  SARL', '003207843000024', '36, Lotissement ANFA II Mohammedia', 'Expertise_Lot_Terrain _Sté _Montreal_Mohammedia_Yousr', 'Estimation de la valeur vénale\nd’un « Bien » immobilier, de type « Lot de Terrain pour Crèche et Maternelle », sis Lotissement « Anfa\nMohammedia II », Lot N°36, Hay El Alia, Mohammedia - Maroc, objet du T.F N° 76.218/26.', 3000.00, 0.00, 0.00, 'Espèce', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, 'Payée', 3, '2023-06-20', NULL, '2024-06-08 15:04:24', NULL, NULL),
(210, 'FA-0097-2023', 1, 1, '2023-06-16', '2023-06-19', 'Sté TOPOMATIC', '000049713000035', 'Lot Assawab N°6 Bd Fouarat - H. M - Hay Mohammadi (AR)', 'Expertise_Bureau_Hay_Mohammadi_Fouad', 'Expertise Immobilière', 1800.00, 0.00, 0.00, 'Virement', 0.00, 1500.00, 0.00, 300.00, 1800.00, 1800.00, 'Payée', 3, '2023-06-19', NULL, '2024-06-08 15:04:24', NULL, NULL),
(211, 'FA-0098-2023', 1, 1, '2023-06-20', '2023-06-23', 'Sté ARTE SABA & DECORAZIONE', '002893719000080', '64 RUE ABDELLAH EL MEDIOUNI ETG 1 APPT2', 'Expertise_Maroaune_Appt_Roches_Noires', 'Expertise Immobilière', 2000.00, 0.00, 0.00, 'Virement', 0.00, 1666.67, 0.00, 333.33, 2000.00, 2000.00, 'Payée', 3, '2023-06-23', NULL, '2024-06-08 15:04:24', NULL, NULL),
(212, 'FA-0099-2023', 1, 1, '2023-06-20', '2023-11-20', 'Sté ELEGANCE PLACE SARL', '002955389000092', 'Magasin BLOC D LOT N1 MAGHREB', 'Expertise_Immeuble_Kenitra_EL_JIRARI_Yousr', 'Expertise Immobilière pour estimation de la valeur vénale d’un « Bien » immobilier, de type « Terrain », et validation du montage de l’opération immobilière, sis Lot n° 142 Angle Avenue Mohamed Diouri & Rue Mohamed El Aamraoui -Kenitra – Maroc, Objet du TF N°30.861/R.', 11400.00, 0.00, 0.00, 'Virement', 0.00, 9500.00, 0.00, 1900.00, 11400.00, 11400.00, 'Payée', 3, '2023-11-20', NULL, '2024-06-08 15:04:24', NULL, NULL),
(213, 'FA-0100-2023', 1, 1, '2023-06-20', '2023-06-24', 'Mr FENNAS Hamza', '------------', '------------', 'Expertise_Mr FENNAS Hamza', 'Expertise Immobilière', 1600.00, 0.00, 0.00, 'Espèce', 0.00, 1333.33, 0.00, 266.67, 1600.00, 1600.00, 'Payée', 3, '2023-06-24', NULL, '2024-06-08 15:04:24', NULL, NULL),
(214, 'FA-0101-2023', 1, 1, '2023-06-20', '2023-06-24', 'Mme Zineb Chahine', '------------', '------------', 'Expertise_Mme Zineb Chahine', 'Expertise Immobilière', 1600.00, 0.00, 0.00, 'Espèce', 0.00, 1333.33, 0.00, 266.67, 1600.00, 1600.00, 'Payée', 3, '2023-06-24', NULL, '2024-06-08 15:04:24', NULL, NULL),
(215, 'FA-0102-2023', 1, 1, '2023-06-20', '2023-06-24', 'Mme Zineb Hamroud', '------------', '------------', 'Expertise_Mme Zineb Hamroud', 'Expertise Immobilière', 1600.00, 0.00, 0.00, 'Espèce', 0.00, 1333.33, 0.00, 266.67, 1600.00, 1600.00, 'Payée', 3, '2023-06-24', NULL, '2024-06-08 15:04:24', NULL, NULL),
(216, 'FA-0103-2023', 1, 1, '2023-06-20', '2023-06-24', 'Mr Mehdi Hanoun', '------------', '------------', 'Expertise_Mr Mehdi Hanoun', 'Expertise Immobilière', 1200.00, 0.00, 0.00, 'Espèce', 0.00, 1000.00, 0.00, 200.00, 1200.00, 1200.00, 'Payée', 3, '2023-06-24', NULL, '2024-06-08 15:04:24', NULL, NULL),
(217, 'FA-0104-2023', 1, 1, '2023-06-20', '2023-06-24', 'Mme NANE Imane', '------------', '------------', 'Expertise_Mme NANE Imane', 'Expertise Immobilière', 1200.00, 0.00, 0.00, 'Espèce', 0.00, 1000.00, 0.00, 200.00, 1200.00, 1200.00, 'Payée', 3, '2023-06-24', NULL, '2024-06-08 15:04:24', NULL, NULL),
(218, 'FA-0105-2023', 1, 1, '2023-06-20', '2023-06-24', 'Mr NAHID ElHassan', '------------', '------------', 'Expertise_Mr NAHID ElHassan', 'Expertise Immobilière', 2000.00, 0.00, 0.00, 'Espèce', 0.00, 1666.67, 0.00, 333.33, 2000.00, 2000.00, 'Payée', 3, '2023-06-24', NULL, '2024-06-08 15:04:24', NULL, NULL),
(219, 'FA-0106-2023', 1, 1, '2023-06-21', '2023-06-24', 'Mme EDDOULBI Ezzouhra', '------------', '------------', 'Expertise_Mme EDDOULBI Ezzouhra', 'Expertise Immobilière', 2400.00, 0.00, 0.00, 'Espèce', 0.00, 2000.00, 0.00, 400.00, 2400.00, 2400.00, 'Payée', 3, '2023-06-24', NULL, '2024-06-08 15:04:24', NULL, NULL),
(220, 'FA-0107-2023', 1, 1, '2023-06-21', '2023-06-24', 'M.EL MANNI Ahmed', '------------', '------------', 'Expertise_M.EL MANNI Ahmed', 'Expertise Immobilière', 2000.00, 0.00, 0.00, 'Espèce', 0.00, 1666.67, 0.00, 333.33, 2000.00, 2000.00, 'Payée', 3, '2023-06-24', NULL, '2024-06-08 15:04:24', NULL, NULL),
(221, 'FA-0108-2023', 1, 1, '2023-06-21', '2023-06-24', 'Mme Kaoutar Bouqadem', '------------', '------------', 'Expertise_Mme Kaoutar Bouqadem', 'Expertise Immobilière', 1200.00, 0.00, 0.00, 'Espèce', 0.00, 1000.00, 0.00, 200.00, 1200.00, 1200.00, 'Payée', 3, '2023-06-24', NULL, '2024-06-08 15:04:24', NULL, NULL),
(222, 'FA-0109-2023', 1, 1, '2023-06-21', '2023-06-24', 'Mme JBILOU', '------------', '------------', 'Expertise_Mme JBILOU', 'Expertise Immobilière', 2800.00, 0.00, 0.00, 'Espèce', 0.00, 2333.33, 0.00, 466.67, 2800.00, 2800.00, 'Payée', 3, '2023-06-24', NULL, '2024-06-08 15:04:24', NULL, NULL),
(223, 'FA-0110-2023', 1, 1, '2023-06-21', '2023-06-24', 'Mr Hicham ENNYA', '------------', '------------', 'Expertise_Mr Hicham ENNYA', 'Expertise Immobilière', 960.00, 0.00, 0.00, 'Espèce', 0.00, 800.00, 0.00, 160.00, 960.00, 960.00, 'Payée', 3, '2023-06-24', NULL, '2024-06-08 15:04:24', NULL, NULL),
(224, 'FA-0111-2023', 1, 1, '2023-06-21', '2023-06-24', 'Mr Alami/ Mme Nawal Abdellaoui Maane', '------------', '------------', 'Expertise_Mr Alami/ Mme Nawal Abdellaoui Maane', 'Expertise Immobilière', 1600.00, 0.00, 0.00, 'Espèce', 0.00, 1333.33, 0.00, 266.67, 1600.00, 1600.00, 'Payée', 3, '2023-06-24', NULL, '2024-06-08 15:04:24', NULL, NULL),
(225, 'FA-0112-2023', 1, 1, '2023-06-21', '2023-06-24', 'Mme Talhaoui Amina', '------------', '------------', 'Expertise_Mme Talhaoui Amina', 'Expertise Immobilière', 1440.00, 0.00, 0.00, 'Espèce', 0.00, 1200.00, 0.00, 240.00, 1440.00, 1440.00, 'Payée', 3, '2023-06-24', NULL, '2024-06-08 15:04:24', NULL, NULL),
(226, 'FA-0113-2023', 1, 1, '2023-06-21', '2023-06-24', 'Mr Tayeb ABDERRAHIM', '------------', '------------', 'Expertise_Mr Tayeb ABDERRAHIM', 'Expertise Immobilière', 1600.00, 0.00, 0.00, 'Espèce', 0.00, 1333.33, 0.00, 266.67, 1600.00, 1600.00, 'Payée', 3, '2023-06-24', NULL, '2024-06-08 15:04:24', NULL, NULL),
(227, 'FA-0114-2023', 1, 1, '2023-06-21', '2023-06-24', 'Mr ERRAMI RACHID', '------------', '------------', 'Expertise_Mr ERRAMI RACHID', 'Expertise Immobilière', 1200.00, 0.00, 0.00, 'Espèce', 0.00, 1000.00, 0.00, 200.00, 1200.00, 1200.00, 'Payée', 3, '2023-06-24', NULL, '2024-06-08 15:04:24', NULL, NULL),
(228, 'FA-0115-2023', 1, 1, '2023-06-22', '2023-06-24', 'Mme Ait Lhachmi Nadia', '------------', '------------', 'Expertise_Mme Ait Lhachmi Nadia', 'Expertise Immobilière', 1600.00, 0.00, 0.00, 'Espèce', 0.00, 1333.33, 0.00, 266.67, 1600.00, 1600.00, 'Payée', 3, '2023-06-24', NULL, '2024-06-08 15:04:24', NULL, NULL),
(229, 'FA-0116-2023', 1, 1, '2023-06-22', '2023-06-24', 'Mr Tahiri Alaoui Mouhcine', '------------', '------------', 'Expertise_Mr Tahiri Alaoui Mouhcine', 'Expertise Immobilière', 1200.00, 0.00, 0.00, 'Espèce', 0.00, 1000.00, 0.00, 200.00, 1200.00, 1200.00, 'Payée', 3, '2023-06-24', NULL, '2024-06-08 15:04:24', NULL, NULL),
(230, 'FA-0117-2023', 1, 1, '2023-06-22', '2023-06-24', 'Mr ELHASNAOUI Youness', '------------', '------------', 'Expertise_Mr ELHASNAOUI Youness', 'Expertise Immobilière', 1440.00, 0.00, 0.00, 'Espèce', 0.00, 1200.00, 0.00, 240.00, 1440.00, 1440.00, 'Payée', 3, '2023-06-24', NULL, '2024-06-08 15:04:24', NULL, NULL),
(231, 'FA-0118-2023', 1, 1, '2023-06-22', '2023-06-24', 'Mr Bouwakdh Youssef', '------------', '------------', 'Expertise_Mr Bouwakdh Youssef', 'Expertise Immobilière', 1760.00, 0.00, 0.00, 'Espèce', 0.00, 1466.67, 0.00, 293.33, 1760.00, 1760.00, 'Payée', 3, '2023-06-24', NULL, '2024-06-08 15:04:24', NULL, NULL),
(232, 'FA-0119-2023', 1, 1, '2023-06-22', '2023-06-24', 'Mr Chayoub Smail', '------------', '------------', 'Expertise_Mr Chayoub Smail', 'Expertise Immobilière', 1200.00, 0.00, 0.00, 'Espèce', 0.00, 1000.00, 0.00, 200.00, 1200.00, 1200.00, 'Payée', 3, '2023-06-24', NULL, '2024-06-08 15:04:24', NULL, NULL),
(233, 'FA-0120-2023', 1, 1, '2023-06-23', '2023-06-24', 'Mme Charkani El Hassani Fatiha', '------------', '------------', 'Expertise_Mme Charkani El Hassani Fatiha', 'Expertise Immobilière', 1600.00, 0.00, 0.00, 'Espèce', 0.00, 1333.33, 0.00, 266.67, 1600.00, 1600.00, 'Payée', 3, '2023-06-24', NULL, '2024-06-08 15:04:24', NULL, NULL),
(234, 'FA-0121-2023', 1, 1, '2023-06-23', '2023-06-24', 'Mr Alami Hamza/Mme Khallouki Majdouline', '------------', '------------', 'Expertise_Mr Alami Hamza/Mme Khallouki Majdouline', 'Expertise Immobilière', 1600.00, 0.00, 0.00, 'Espèce', 0.00, 1333.33, 0.00, 266.67, 1600.00, 1600.00, 'Payée', 3, '2023-06-24', NULL, '2024-06-08 15:04:24', NULL, NULL);
INSERT INTO `invoices` (`id`, `invoice_number`, `societe_id`, `mission_type_id`, `invoice_date`, `prestation_date`, `client_name`, `ice`, `client_adress`, `object`, `detail`, `advance`, `discount`, `commission`, `payment_mode`, `remainder`, `totalHT`, `totalHTRem`, `montantTVA`, `totalTTC`, `totalTTC2`, `status`, `value_status`, `payment_date`, `deleted_at`, `created_at`, `updated_at`, `ref_bc`) VALUES
(235, 'FA-0122-2023', 1, 1, '2023-06-23', '2023-06-24', 'Mr Kdider Issam', '------------', '------------', 'Expertise_Mr Kdider Issam', 'Expertise Immobilière', 1200.00, 0.00, 0.00, 'Espèce', 0.00, 1000.00, 0.00, 200.00, 1200.00, 1200.00, 'Payée', 3, '2023-06-24', NULL, '2024-06-08 15:04:24', NULL, NULL),
(236, 'FA-0123-2023', 1, 1, '2023-06-23', '2023-06-24', 'Mr Redouane Ghaddane', '------------', '------------', 'Expertise_Mr Redouane Ghaddane', 'Expertise Immobilière', 1600.00, 0.00, 0.00, 'Espèce', 0.00, 1333.33, 0.00, 266.67, 1600.00, 1600.00, 'Payée', 3, '2023-06-24', NULL, '2024-06-08 15:04:24', NULL, NULL),
(237, 'FA-0124-2023', 1, 1, '2023-06-23', '2023-06-24', 'M Fahd Derkaoui', '------------', '------------', 'Expertise_M Fahd Derkaoui', 'Expertise Immobilière', 2000.00, 0.00, 0.00, 'Espèce', 0.00, 1666.67, 0.00, 333.33, 2000.00, 2000.00, 'Payée', 3, '2023-06-24', NULL, '2024-06-08 15:04:24', NULL, NULL),
(238, 'FA-0125-2023', 1, 1, '2023-06-23', '2023-06-24', 'Mr EL Kadiri', '------------', '------------', 'Expertise_Mr EL Kadiri', 'Expertise Immobilière', 1600.00, 0.00, 0.00, 'Espèce', 0.00, 1333.33, 0.00, 266.67, 1600.00, 1600.00, 'Payée', 3, '2023-06-24', NULL, '2024-06-08 15:04:24', NULL, NULL),
(239, 'FA-0126-2023', 1, 1, '2023-06-23', '2023-06-24', 'Mme Soukaina', '------------', '------------', 'Expertise_Mme Soukaina', 'Expertise Immobilière', 2000.00, 0.00, 0.00, 'Espèce', 0.00, 1666.67, 0.00, 333.33, 2000.00, 2000.00, 'Payée', 3, '2023-06-24', NULL, '2024-06-08 15:04:24', NULL, NULL),
(240, 'FA-0127-2023', 1, 1, '2023-06-23', '2023-06-24', 'Mr Houri Mohamed', '------------', '------------', 'Expertise_Mr Houri Mohamed', 'Expertise Immobilière', 3040.00, 0.00, 0.00, 'Espèce', 0.00, 2533.33, 0.00, 506.67, 3040.00, 3040.00, 'Payée', 3, '2023-06-24', NULL, '2024-06-08 15:04:24', NULL, NULL),
(241, 'FA-0128-2023', 1, 1, '2023-07-13', '2023-08-01', 'Ste Le Catelet SARL', '001538051000069', '22, Rue le Catelet Casablanca 20300', 'Expertise _Entrepôt-Ste-Le Catelet_Belvedere', 'Expertise Immobilière', 3000.00, 0.00, 0.00, '0', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, 'Payée', 3, '2023-08-01', NULL, '2024-06-08 15:04:24', NULL, NULL),
(242, 'FA-0129-2023', 1, 3, '2023-07-13', '2023-08-04', 'H.E.M Campus Casablanca (institut des hautes études de management)', '001614919000045', 'Avenue AL Qods - Quartier Californie - Casablanca', 'Action de Formation', 'Formation : Ingénierie Financière pour FIN \nFormation : Stratégie Financière\nFormation : Stratégie Financière - CCA', 28800.00, 0.00, 0.00, 'Chèque', 0.00, 24000.00, 0.00, 4800.00, 28800.00, 28800.00, 'Payée', 3, '2023-08-04', NULL, '2024-06-08 15:04:24', NULL, NULL),
(243, 'FA-0130-2023', 1, 1, '2023-07-13', '2023-08-01', 'Sté IPSEN LOGISTICS', '000084715000052', '6, Allé des Cypés, Ain Sebnaa- Casablanca', 'Expertise_Antoine_Villa_Ouasis', 'Expertise Immobilière', 3000.00, 0.00, 0.00, 'Chèque', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, 'Payée', 3, '2023-08-01', NULL, '2024-06-08 15:04:24', NULL, NULL),
(244, 'FA-0131-2023', 1, 1, '2023-07-15', '2023-08-30', 'Banque CIH', '001542240000068', '187, Boulevard Hassan II, Casablanca', 'Expertise_CIH_Appartement', 'Expertise Immoblière  d’un « Bien » immobilier, de type « Appartement », sis Al Miaraj Garden, Immeuble C, RDC, Appartement N°3002, Californie, Arrondissement Ain Chock, Casablanca - Maroc, objet du T.F N° 81.530/47.', 2400.00, 0.00, 0.00, 'Virement', -100.00, 2000.00, 0.00, 400.00, 2400.00, 2400.00, 'Payée', 3, '2023-08-30', NULL, '2024-06-08 15:04:24', NULL, NULL),
(245, 'FA-0132-2023', 1, 1, '2023-07-16', '2023-07-18', 'La société Geocart Ingenierie ', '000041887000071', 'Rue Moulouya, Imm. 54, Appt. N° 9 Agdal - Agdal Riyad (AR)', 'Expertise_Villa_Rabat_HAY_RIAD_Fliss', 'Expertise Immobilière', 2500.00, 0.00, 0.00, 'Chèque', 0.00, 2083.33, 0.00, 416.67, 2500.00, 2500.00, 'Payée', 3, '2023-07-18', NULL, '2024-06-08 15:04:24', NULL, NULL),
(246, 'FA-0133-2023', 1, 1, '2023-07-17', '2023-06-28', 'M.Samadi Mohamed Karim', '------------', '------------', 'Expertise_Samadi_Villa_Californie_Yousr', 'Expertise Immobilière', 3000.00, 0.00, 0.00, 'Chèque', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, 'Payée', 3, '2023-06-28', NULL, '2024-06-08 15:04:24', NULL, NULL),
(247, 'FA-0134-2023', 1, 1, '2023-07-17', '2023-06-12', 'M.BOUASSSEM KARIM', '------------', '------------', 'Expertise_villa_Temara_Bouassem_Karim', 'Expertise Immobilière', 3000.00, 0.00, 0.00, 'Chèque', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, 'Payée', 3, '2023-06-12', NULL, '2024-06-08 15:04:24', NULL, NULL),
(248, 'FA-0135-2023', 1, 1, '2023-07-17', '2023-07-21', 'La Sté CALIENTE BUILDING', '002925607000076', 'Lotissement Al Bassatine Imm 29 Magasin 04 - Sale', 'Expertise_Etat_avancement_Projet_Salé_Yousr', 'Evaluation et Analyse du Programme d’Investissement du Projet et son Chiffres d\'affaires objet des TF N° : 61.194/58 & 61.195/58', 5400.00, 0.00, 0.00, 'Virement', 0.00, 4500.00, 0.00, 900.00, 5400.00, 5400.00, 'Payée', 3, '2023-07-21', NULL, '2024-06-08 15:04:24', NULL, NULL),
(249, 'FA-0136-2023', 1, 1, '2023-07-18', '2023-08-04', 'STE DE DISTRIBUTION POLYVALENTE (SODIPOL)', '001532785000049', 'Lot Sam N10 Rue Jabal Toubkal (ex Rue 2) Hay Antaria Quartier Industriel Hay Mohammadi -', 'Expertise_Terrain_Benguerir', 'Expertise du bien ayant le T.F N° 72/40953 consistant en un\nTerrain Agricole de Superficie de 4,86 Hectares sis Benguerir\nrelatif au dossier de financement de la société SODIPOL.', 6960.00, 0.00, 0.00, 'Chèque', 0.00, 5800.00, 0.00, 1160.00, 6960.00, 6960.00, 'Payée', 3, '2023-08-04', NULL, '2024-06-08 15:04:24', NULL, NULL),
(250, 'FA-0137-2023', 1, 1, '2023-07-24', '2023-08-07', 'Sté KORALUX', '000036392000026', '------------', 'Expertise_Bureau_Iraqi_Mohamed V', 'Expertise Immobilière  d’un « Bien » immobilier, de type « Plateau bureau », sis Mohammed 5 Offices Center, Immeuble « B », Bureau N° 408, 4ème étage, Préfecture d\'Aïn Sebaâ-Hay Mohammadi, Casablanca - Maroc. Objet du T.F N°77.783/45.', 3000.00, 0.00, 0.00, 'Chèque', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, 'Payée', 3, '2023-08-07', NULL, '2024-06-08 15:04:24', NULL, NULL),
(251, 'FA-0138-2023', 1, 3, '2023-07-25', '2023-10-02', 'H.E.M Campus Casablanca (institut des hautes études de management)', '001614919000045', 'Avenue AL Qods - Quartier Californie - Casablanca', 'Action de Formation', 'Simulations d\'entretiens d\'embauche des étudiants de MASTER 2 FINANCE et CCA', 3600.00, 0.00, 0.00, 'Chèque', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Payée', 3, '2023-10-02', NULL, '2024-06-08 15:04:24', NULL, NULL),
(252, 'FA-0139-2023', 1, 1, '2023-07-27', '2023-08-15', 'Sté ORO-MECANICA', '001537210000078', 'Chemin Tertiaire 1029, Quartier Industriel, Sidi Maârouf - Casablanca', 'Expertise_Villa_Mme Tadlaoui_Califorine', 'Expertise Immobilière', 3000.00, 0.00, 0.00, 'Chèque', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, 'Payée', 3, '2023-08-15', NULL, '2024-06-08 15:04:24', NULL, NULL),
(253, 'FA-0140-2023', 1, 1, '2023-07-28', '2023-08-08', 'M.TAOUI ABDELKADER ', '01767195000035', '------------', 'Expertise_Appartements_ValFleurie_Taoui', 'Expertise Immolière l’estimation de la valeur vénale, de « 07 Biens »\nimmobiliers, de type « Appartement », sis Rue Ahmed El Kadmiri, Résidence « JACINTH », Appartement\nN°A14 & N°A16, 1er étage, Appartement N°A28, 2ème étage, Appartement N°A31 & N°A37, 3ème étage,\nAppartement N°A44 & N°A47, 4ème étage, Quartier Val Fleuri, Casablanca - Maroc, objets des T.F N°\n20.502/71, N° 20.504/71, N° 20.516/71, N° 20.519/71, N° 20.525/71, N° 20.532/71 & N° 20.535/71.', 10080.00, 0.00, 0.00, 'Chèque', 0.00, 8400.00, 0.00, 1680.00, 10080.00, 10080.00, 'Payée', 3, '2023-08-08', NULL, '2024-06-08 15:04:24', NULL, NULL),
(254, 'FA-0141-2023', 1, 1, '2023-08-04', '2023-08-08', 'Société  ABRAR PATRIMOINE', '001909393000046', 'Lotissement La Coline N°11, Sidi Maarouf - Casablanca', 'Expertise_Brahim MOJAHID', 'Expertise Immobilière', 3600.00, 0.00, 0.00, 'Espèce', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Payée', 3, '2023-08-08', NULL, '2024-06-08 15:04:24', NULL, NULL),
(255, 'FA-0142-2023', 1, 1, '2023-08-04', '2023-08-04', 'Mouhssin Bouddihaj', '------------', '------------', 'Expertise_ Appartement _Résidence Les Collines Extension', 'Expertise Immobilière', 1800.00, 0.00, 0.00, 'Virement', 0.00, 1500.00, 0.00, 300.00, 1800.00, 1800.00, 'Payée', 3, '2023-08-04', NULL, '2024-06-08 15:04:24', NULL, NULL),
(256, 'FA-0143-2023', 1, 1, '2023-08-04', '2023-08-18', 'Sté SMART FRUITS SARLAU', '001519972000001', 'ROUTE DES ABATTOIRS , RESIDENCE MONOPOLIO B , ETAGE 5 APPT 78', 'Expertise_Lot terrain_Bouskoura _Rabie_Nadir', 'Expertise Immobilière de type « Lot de Terrain pour villa », sis Propriété « FEDDANE KHADEM », Commune Bouskoura Douar Ouled Malek Hamri, Province de Nouaceur, Casablanca - Maroc., objet du T.F N° 36.325/63.', 3000.00, 0.00, 0.00, 'Chèque', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, 'Payée', 3, '2023-08-18', NULL, '2024-06-08 15:04:24', NULL, NULL),
(257, 'FA-0144-2023', 1, 1, '2023-08-07', '2023-08-18', 'Sté SMART FRUITS SARLAU', '001519972000001', 'ROUTE DES ABATTOIRS , RESIDENCE MONOPOLIO B , ETAGE 5 APPT 78', 'Expertise_Lot terrain_Marrakech _Rabie_Nadir', 'Expertise immobilière des « Biens » immobiliers, de type « Lots de terrains pour villa », sis Lotissement « Atlas Golf Resort », Tranche 06, Lot N°97 & N°98, Arrondissement Annakhil, Marrakech - Maroc. Objets des T.F N° 54.844/43 & N° 54.845/43.', 5760.00, 0.00, 0.00, 'Virement', 0.00, 4800.00, 0.00, 960.00, 5760.00, 5760.00, 'Payée', 3, '2023-08-18', NULL, '2024-06-08 15:04:24', NULL, NULL),
(258, 'FA-0145-2023', 1, 1, '2023-08-15', '2023-09-07', 'Sté DKBM', '003296660000096', '38 Rue Soufiane At-touri Maarif - El Maarif (AR)', 'Expertise_Projet_Had_soualem_Said_Rafki', 'Expertise de la valeur vénale du foncier objet du TF N°10.675/D2\n\nAnalyse et Validation du Programme d’Investissement du Projet et son Chiffres d\'affaires objet du TF N°10.675/D2', 11400.00, 0.00, 0.00, 'Virement', 0.00, 9500.00, 0.00, 1900.00, 11400.00, 11400.00, 'Payée', 3, '2023-09-07', NULL, '2024-06-08 15:04:24', NULL, NULL),
(259, 'FA-0146-2023', 1, 1, '2023-08-15', '2023-09-07', 'Sté Les Matériaux Nouveaux (LMN)', '000230516000073', '38 Rue Soufiane At-touri Maarif - El Maarif (AR)', 'Expertise_Terarain_Had_soualem_Said_Rafki', 'Expertise de la valeur vénale de l\'unité objet du TF N°26133/33', 7200.00, 0.00, 0.00, 'Virement', 0.00, 6000.00, 0.00, 1200.00, 7200.00, 7200.00, 'Payée', 3, '2023-09-07', NULL, '2024-06-08 15:04:24', NULL, NULL),
(260, 'FA-0147-2023', 1, 1, '2023-08-15', '2023-08-28', 'Mme Salouh Leila', '------------', '------------', 'Expertise_Appartement_Roches_Noires', 'Expertise Immobilière', 2000.00, 0.00, 0.00, 'Virement', 0.00, 1666.67, 0.00, 333.33, 2000.00, 2000.00, 'Payée', 3, '2023-08-28', NULL, '2024-06-08 15:04:24', NULL, NULL),
(261, 'FA-0148-2023', 1, 1, '2023-08-30', '2023-10-03', 'Paradis Ascenseur', '000014661000010', '167 Lot Zoubir Lissasfa', 'Expertise_Commerce_jnane_louz', 'Expertise Immobilière de type \"commerce\" , objet du TF: 69.048/64', 2500.00, 0.00, 0.00, 'Chèque', 0.00, 2083.33, 0.00, 416.67, 2500.00, 2500.00, 'Payée', 3, '2023-10-03', NULL, '2024-06-08 15:04:24', NULL, NULL),
(262, 'FA-0149-2023', 1, 1, '2023-08-31', '2023-09-07', 'Sté SMART FRUITS SARLAU', '001519972000001', 'ROUTE DES ABATTOIRS , RESIDENCE MONOPOLIO B , ETAGE 5 APPT 78', 'Expertise_Lot terrain_Marrakech _Rabie_Nadir', 'Expertise Immobilière de la valeur vénale\nd’un « Bien » immobilier, de type « Terrain », Sis Accès Mediouna Achakkar, Tanger - Maroc. Objet du TF\nN°161.621/06.', 7800.00, 0.00, 0.00, 'Virement', 0.00, 6500.00, 0.00, 1300.00, 7800.00, 7800.00, 'Payée', 3, '2023-09-07', NULL, '2024-06-08 15:04:24', NULL, NULL),
(263, 'FA-0150-2023', 1, 1, '2023-09-01', '2023-09-08', 'Sté GEC Invest', '003286066000081', '------------', 'Expertise_Commerce_Ferme Breton_Youssef', 'Expertise_ Immobilière de la valeur vénale, d’un bien immobilier de type « Commerce », sis Angle Rue Tadarouj & Rue Abou Zarik, Quartier l’Oasis, Arrondissement Hay Hassani, Casablanca - Maroc, objet du T.F N° 37.302/64.', 2500.00, 0.00, 0.00, 'Virement', 0.00, 2083.33, 0.00, 416.67, 2500.00, 2500.00, 'Payée', 3, '2023-09-08', NULL, '2024-06-08 15:04:24', NULL, NULL),
(264, 'FA-0151-2023', 1, 1, '2023-09-08', '2023-09-14', 'Mme Aouinati Yousra', '002737593000056', '117 angle Avenue 2 Mars et, Rue de Rome, Casablanca 20250', 'Expertise_Appartement_2_Mars', 'Expertise_Immobilière de la valeur vénale d\'un \"Bien\" immobilier, de type \"Appartement\", 548, Angle Avenue 2 mars &Boulevard Modibo Keita,\nRésidence « Sounna »,\nAppartement N°18, 4èmeétage,', 2000.00, 0.00, 0.00, 'Chèque', 0.00, 1666.67, 0.00, 333.33, 2000.00, 2000.00, 'Payée', 3, '2023-09-14', NULL, '2024-06-08 15:04:24', NULL, NULL),
(265, 'FA-0152-2023', 1, 1, '2023-09-08', '2023-11-27', 'Mme Labiad Hafida', '------------', '------------', 'Expertise_Appartement_Lissasfa', 'Expertise Immobilière', 1500.00, 0.00, 0.00, 'Virement', 0.00, 1250.00, 0.00, 250.00, 1500.00, 1500.00, 'Payée', 3, '2023-11-27', NULL, '2024-06-08 15:04:24', NULL, NULL),
(266, 'FA-0153-2023', 1, 1, '2023-09-09', '2023-09-18', 'Société  ABRAR PATRIMOINE', '001909393000046', 'Lotissement La Coline N°11, Sidi Maarouf - Casablanca', 'Expertise_Brahim MOJAHID', 'Expertise immobilière sis à Commune de Had Soualem, Province de Settat, Douar\nOuled Jamaa, Région du Grand Casablanca - Maroc. Objet du TF N°16.855/53', 3600.00, 0.00, 0.00, 'Espèce', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Payée', 3, '2023-09-18', NULL, '2024-06-08 15:04:24', NULL, NULL),
(267, 'FA-0154-2023', 1, 1, '2023-09-09', '2023-10-03', 'Sté SONAJIB DE MATERIAUX DE CONSTRUCTION  (Sonajib)', '001534791000013', '149 RUE 300 HAY MOULAY ABDELLAH CASABLANCA - Maroc', 'Expertise_Sonajib_unité_Benchekroun', 'Expertise d\'une unité du TF N° 4157/47, sis Bouskoura, Prefecture de Casablanca .', 6600.00, 0.00, 0.00, 'Chèque', 0.00, 5500.00, 0.00, 1100.00, 6600.00, 6600.00, 'Payée', 3, '2023-10-03', NULL, '2024-06-08 15:04:24', NULL, NULL),
(268, 'FA-0155-2023', 1, 1, '2023-09-14', NULL, 'Société COMPUCOM', '000084601000026', '119 Bd Emile Zola Angle Rue Laon - Casablanca', 'Expertise_Villa_Résidence \"Al Boustane\"', 'Expertise immobilière de la valeur vénele d\'une villa sis, Résidence Al Boustane, à la Commune de Dar Bouazza, Province de Nouaceur, Casablanca - Maroc. Objet du TF N°1.996/63', 2000.00, 0.00, 0.00, 'Espèce', 0.00, 1666.67, 0.00, 333.33, 2000.00, 2000.00, 'Payée', 3, '2023-09-14', NULL, '2024-06-08 15:04:24', NULL, NULL),
(269, 'FA-0156-2023', 1, 1, '2023-09-14', '2023-10-31', 'SOCIETE MAROCAINE DE JEUX ET LOISIRS (SMJL)', '002014829000030', 'Rdc Quartier Palmier Angle Rue De Neuf Avril Maidani Et Boulverard Brahim Roudani (ex Claude Perault) Residence Palmier - Casablanca', 'Expertise_magasin_FAHIM ABDERREZAK_Derb_Omar', 'Expertise Immobilière de deux actifs immobiliers aynt les T,F N° 4709/46 et 4708/46 sis Casablanca.', 6000.00, 0.00, 0.00, 'Chèque', 0.00, 5000.00, 0.00, 1000.00, 6000.00, 6000.00, 'Payée', 3, '2023-10-31', NULL, '2024-06-08 15:04:24', NULL, NULL),
(270, 'FA-0157-2023', 1, 1, '2023-09-14', '2023-08-22', 'M.BENYAHYA CHARIF', '------------', '------------', ' Expertise_Larache_BENYAHYA', 'Expertise des Bien de type appartement, sis LARACHE,  ayant les T.F  :\nN°37.164/36,\nN° 37.165/36,\nN°37.166/36,\nN°37.167/36,\nN°37.168/36,\nN°37.169/36,\nN°37.170/36,\nN°37.171/36,\nN°37.172/36,\nN°37.173/36', 9000.00, 0.00, 0.00, 'Virement', 0.00, 7500.00, 0.00, 1500.00, 9000.00, 9000.00, 'Payée', 3, '2023-08-22', NULL, '2024-06-08 15:04:24', NULL, NULL),
(271, 'FA-0158-2023', 1, 1, '2023-09-14', '2023-09-15', 'Mr Hicham LAOUAFI & Mme Khallouk sabah', '------------', '------------', 'Expertise', 'Expertise Immobilière', 3000.00, 0.00, 0.00, 'Espèce', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, 'Payée', 3, '2023-09-15', NULL, '2024-06-08 15:04:24', NULL, NULL),
(272, 'FA-0159-2023', 1, 1, '2023-09-14', '2023-08-10', ' M.kadiri Youssef', '------------', '------------', 'Expertise_Kadiri_Villa', 'Expertise Immobilière', 3600.00, 0.00, 0.00, 'Espèce', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Payée', 3, '2023-08-10', NULL, '2024-06-08 15:04:24', NULL, NULL),
(273, 'FA-0160-2023', 1, 1, '2023-09-14', '2023-09-15', 'Mr Belahlou Mohamed & Mme Kabbaj Amal', '------------', '------------', 'Expertise', 'Expertise Immobilière', 3000.00, 0.00, 0.00, 'Espèce', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, 'Payée', 3, '2023-09-15', NULL, '2024-06-08 15:04:24', NULL, NULL),
(274, 'FA-0161-2023', 1, 1, '2023-09-14', '2023-08-30', 'M Arif Abdelkader', '------------', '------------', 'Expertise_Appartement_Ferme Breton_Arif', 'Expertise Immobilière', 1500.00, 0.00, 0.00, 'Espèce', 0.00, 1250.00, 0.00, 250.00, 1500.00, 1500.00, 'Payée', 3, '2023-08-30', NULL, '2024-06-08 15:04:24', NULL, NULL),
(275, 'FA-0162-2023', 1, 1, '2023-09-14', '2023-09-15', 'Mr Najm Allal & Mme El Masnaoui Sanae', '------------', '------------', 'Expertise', 'Expertise Immobilière', 3300.00, 0.00, 0.00, 'Espèce', 0.00, 2750.00, 0.00, 550.00, 3300.00, 3300.00, 'Payée', 3, '2023-09-15', NULL, '2024-06-08 15:04:24', NULL, NULL),
(276, 'FA-0163-2023', 1, 1, '2023-09-14', '2023-09-15', 'Mme Fatiha Cherkani (FES)', '------------', '------------', 'Expertise', 'Expertise Immobilière', 1500.00, 0.00, 0.00, 'Espèce', 0.00, 1250.00, 0.00, 250.00, 1500.00, 1500.00, 'Payée', 3, '2023-09-15', NULL, '2024-06-08 15:04:24', NULL, NULL),
(277, 'FA-0164-2023', 1, 1, '2023-09-14', '2023-09-15', 'Mr Dahbi rachid', '------------', '------------', 'Expertise', 'Expertise Immobilière', 2160.00, 0.00, 0.00, 'Espèce', 0.00, 1800.00, 0.00, 360.00, 2160.00, 2160.00, 'Payée', 3, '2023-09-15', NULL, '2024-06-08 15:04:24', NULL, NULL),
(278, 'FA-0165-2023', 1, 1, '2023-09-14', '2023-09-15', 'Mr HACHMI Amri', '------------', '------------', 'Expertise', 'Expertise Immobilière', 2160.00, 0.00, 0.00, 'Espèce', 0.00, 1800.00, 0.00, 360.00, 2160.00, 2160.00, 'Payée', 3, '2023-09-15', NULL, '2024-06-08 15:04:24', NULL, NULL),
(279, 'FA-0166-2023', 1, 1, '2023-09-14', '2023-09-15', 'Mr Jabrane Ali', '------------', '------------', 'Expertise', 'Expertise Immobilière', 1500.00, 0.00, 0.00, 'Espèce', 0.00, 1250.00, 0.00, 250.00, 1500.00, 1500.00, 'Payée', 3, '2023-09-15', NULL, '2024-06-08 15:04:24', NULL, NULL),
(280, 'FA-0167-2023', 1, 1, '2023-09-14', '2023-09-15', 'Mr Youssfi Jamal Eddine', '------------', '------------', 'Expertise', 'Expertise Immobilière', 1800.00, 0.00, 0.00, 'Espèce', 0.00, 1500.00, 0.00, 300.00, 1800.00, 1800.00, 'Payée', 3, '2023-09-15', NULL, '2024-06-08 15:04:24', NULL, NULL),
(281, 'FA-0168-2023', 1, 1, '2023-09-14', '2023-09-15', 'Mme Khadija Samad', '------------', '------------', 'Expertise', 'Expertise Immobilière', 1440.00, 0.00, 0.00, 'Espèce', 0.00, 1200.00, 0.00, 240.00, 1440.00, 1440.00, 'Payée', 3, '2023-09-15', NULL, '2024-06-08 15:04:24', NULL, NULL),
(282, 'FA-0169-2023', 1, 1, '2023-09-14', '2023-09-15', 'Mme Abalil Hanane', '------------', '------------', 'Expertise', 'Expertise Immobilière', 1500.00, 0.00, 0.00, 'Espèce', 0.00, 1250.00, 0.00, 250.00, 1500.00, 1500.00, 'Payée', 3, '2023-09-15', NULL, '2024-06-08 15:04:24', NULL, NULL),
(283, 'FA-0170-2023', 1, 1, '2023-09-14', '2023-09-15', 'Mme Zaki Samya', '------------', '------------', 'Expertise', 'Expertise Immobilière', 1440.00, 0.00, 0.00, 'Espèce', 0.00, 1200.00, 0.00, 240.00, 1440.00, 1440.00, 'Payée', 3, '2023-09-15', NULL, '2024-06-08 15:04:24', NULL, NULL),
(284, 'FA-0171-2023', 1, 1, '2023-09-14', '2023-09-15', 'Mr Hassan Bouzekri', '------------', '------------', 'Expertise', 'Expertise Immobilière', 1800.00, 0.00, 0.00, 'Espèce', 0.00, 1500.00, 0.00, 300.00, 1800.00, 1800.00, 'Payée', 3, '2023-09-15', NULL, '2024-06-08 15:04:24', NULL, NULL),
(285, 'FA-0172-2023', 1, 1, '2023-09-14', '2023-09-15', 'Mr Hassan Bouzekri', '------------', '------------', 'Expertise', 'Expertise Immobilière', 1800.00, 0.00, 0.00, 'Espèce', 0.00, 1500.00, 0.00, 300.00, 1800.00, 1800.00, 'Payée', 3, '2023-09-15', NULL, '2024-06-08 15:04:24', NULL, NULL),
(286, 'FA-0173-2023', 1, 1, '2023-09-14', '2023-09-15', 'Mr Ettassi', '------------', '------------', 'Expertise', 'Expertise Immobilière', 1800.00, 0.00, 0.00, 'Espèce', 0.00, 1500.00, 0.00, 300.00, 1800.00, 1800.00, 'Payée', 3, '2023-09-15', NULL, '2024-06-08 15:04:24', NULL, NULL),
(287, 'FA-0174-2023', 1, 1, '2023-09-14', '2023-09-15', 'Mme Ghita AFAILAL', '------------', '------------', 'Expertise', 'Expertise Immobilière', 2160.00, 0.00, 0.00, 'Espèce', 0.00, 1800.00, 0.00, 360.00, 2160.00, 2160.00, 'Payée', 3, '2023-09-15', NULL, '2024-06-08 15:04:24', NULL, NULL),
(288, 'FA-0175-2023', 1, 1, '2023-09-14', '2023-09-15', 'AL Oufir Mohamed', '------------', '------------', 'Expertise', 'Expertise Immobilière', 2160.00, 0.00, 0.00, 'Espèce', 0.00, 1800.00, 0.00, 360.00, 2160.00, 2160.00, 'Payée', 3, '2023-09-15', NULL, '2024-06-08 15:04:24', NULL, NULL),
(289, 'FA-0176-2023', 1, 1, '2023-09-14', '2023-09-15', 'Mr Anass Lakhnigue', '------------', '------------', 'Expertise', 'Expertise Immobilière', 2160.00, 0.00, 0.00, 'Espèce', 0.00, 1800.00, 0.00, 360.00, 2160.00, 2160.00, 'Payée', 3, '2023-09-15', NULL, '2024-06-08 15:04:24', NULL, NULL),
(290, 'FA-0177-2023', 1, 1, '2023-09-14', '2023-09-15', 'Mr Kadiri Aziz', '------------', '------------', 'Expertise', 'Expertise Immobilière', 1800.00, 0.00, 0.00, 'Espèce', 0.00, 1500.00, 0.00, 300.00, 1800.00, 1800.00, 'Payée', 3, '2023-09-15', NULL, '2024-06-08 15:04:24', NULL, NULL),
(291, 'FA-0178-2023', 1, 1, '2023-09-14', '2023-09-15', 'Mme Jamila Skouri & M. IDRISSI', '------------', '------------', 'Expertise', 'Expertise Immobilière', 3240.00, 0.00, 0.00, 'Espèce', 0.00, 2700.00, 0.00, 540.00, 3240.00, 3240.00, 'Payée', 3, '2023-09-15', NULL, '2024-06-08 15:04:24', NULL, NULL),
(292, 'FA-0179-2023', 1, 1, '2023-09-14', '2023-09-20', 'M.HAMMOUCHE AHMED', '------------', '------------', 'Expertise', 'Expertise Immobilière', 2300.00, 0.00, 0.00, 'Espèce', 0.00, 1916.67, 0.00, 383.33, 2300.00, 2300.00, 'Payée', 3, '2023-09-20', NULL, '2024-06-08 15:04:24', NULL, NULL),
(293, 'FA-0180-2023', 1, 1, '2023-09-15', '2023-09-18', 'Sté CONCEPTCHIRINGUITO', '002700580000016', 'Commerce N°2, Lot N°9, Lotissement Nakhil Av Allal Ben Abdellah 30000 Secteur 0103 - Fès-', 'Expertise_Projet_Yousr_Tanger', 'Evaluation d’un projet immobilier, de\ntype « 3SS R+9 », sis 14, Rue al Farabi, Tanger - Maroc, objet de TF N°549/G.', 5700.00, 0.00, 0.00, 'Virement', 0.00, 4750.00, 0.00, 950.00, 5700.00, 5700.00, 'Payée', 3, '2023-09-18', NULL, '2024-06-08 15:04:24', NULL, NULL),
(294, 'FA-0181-2023', 1, 1, '2023-09-15', '2023-09-18', 'Sté ISTITMAR ANNAJAH', '001797502000038', 'Av Des Far Imm Saidi Bureau Fath 2ème Etage Appt 7 - Fès-Médina (AR)', 'Expertise_Projet_Yousr_Tanger', 'Evaluation d’un projet immobilier, de\ntype « 3SS R+9 », sis 14, Rue al Farabi, Tanger - Maroc, objet de TF N°549/G.', 2850.00, 0.00, 0.00, 'Espèce', 0.00, 2375.00, 0.00, 475.00, 2850.00, 2850.00, 'Payée', 3, '2023-09-18', NULL, '2024-06-08 15:04:24', NULL, NULL),
(295, 'FA-0182-2023', 1, 1, '2023-09-15', '2023-09-18', 'Sté MBL IMMOBILIER', '001862171000072', '36 Avenue Des Far Residence Espace 2000 3eme Etage Bureau N°13 - Fès-Médina (AR)', 'Expertise_Projet_Yousr_Tanger', 'Evaluation d’un projet immobilier, de\ntype « 3SS R+9 », sis 14, Rue al Farabi, Tanger - Maroc, objet de TF N°549/G.', 2850.00, 0.00, 0.00, 'Espèce', 0.00, 2375.00, 0.00, 475.00, 2850.00, 2850.00, 'Payée', 3, '2023-09-18', NULL, '2024-06-08 15:04:24', NULL, NULL),
(296, 'FA-0183-2023', 1, 1, '2023-09-18', '2023-09-25', 'Sté TRENAL', '0015392170000185', '12 Rue Argana (ex Seguin) - Casablanca', 'Expertise_Entrepôt_Belveder_David', 'Expertise Immobilière d’un bien immobilier de type « Commerce », sis Boulevard de Bordeaux, Rue Argana, Résidence « ARGANA », N°12, Arrondissement Anfa, Casablanca - Maroc, objet du T.F N°6.937/46.', 3000.00, 0.00, 0.00, 'Chèque', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, 'Payée', 3, '2023-09-25', NULL, '2024-06-08 15:04:24', NULL, NULL),
(297, 'FA-0184-2023', 1, 1, '2023-09-18', '2023-09-25', 'Sté FROMAGERIE NOOR SARL', '001970246000001', 'Centre dcheira Laayoune', 'Expertise_Terrain _Laayoune_Ahmed', 'Expertise de la valeur vénale, d’un actif immobilier, de type « Terrain », sis Boulevard Mohamed Al Khallouqi, Avenue Catalunia, Laâyoune - Maroc, Objet de TF N°8.678/17.', 9000.00, 0.00, 0.00, 'Chèque', 0.00, 7500.00, 0.00, 1500.00, 9000.00, 9000.00, 'Payée', 3, '2023-09-25', NULL, '2024-06-08 15:04:24', NULL, NULL),
(298, 'FA-0185-2023', 1, 1, '2023-09-18', '2023-09-26', 'M.Vincent Pietsch ', '------------', '------------', 'Expertise_Appartement_Mers_Sultant_Vincent', 'Expertise immobilièrede la valeur vénale, d’un «Bien» immobilier, de type « Appartement », sis 16 Bis, Rue Oued Tensift, Appartement N°07, 4ème étage, Arrondissement Anfa, Casablanca – Maroc. Objet du T.F N° 47.396/C.', 3000.00, 0.00, 0.00, 'Virement', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, 'Payée', 3, '2023-09-26', NULL, '2024-06-08 15:04:24', NULL, NULL),
(299, 'FA-0186-2023', 1, 1, '2023-09-18', '2023-09-19', 'Sté MLY INVEST', '003026068000040', '911 rue Ibnou Khairane Mers Sultan  Casablanca', 'Expertise_Projet _ain_ sebaa_Projet_Yousr', '-/Expertsie de la valeur venale de l\'actif immobilier objet du T.F N° 6228/C\n-/Analyse et Validation du Programme d’Investissement du Projet et son Cciffres d\'affaires objet du T.F N°6228/C\n', 11400.00, 0.00, 0.00, 'Virement', 0.00, 9500.00, 0.00, 1900.00, 11400.00, 11400.00, 'Payée', 3, '2023-09-19', NULL, '2024-06-08 15:04:24', NULL, NULL),
(300, 'FA-0187-2023', 1, 1, '2023-09-18', '2023-10-03', 'Sté BM IMMO', '001967073000021', 'Centre 2000, Avenue Moulay Abderrahmane, N° 7 - Kénitra', 'Expertise_Projet_Kenitra_Maroaune _Mouassadak', 'Evaluation d’un projet immobilier, de type immeuble en « SS R+5 », sis Rue N°118, Val Fleury, Kenitra - Maroc, objet de TF N°3.398/H & N°5.991/R.', 9600.00, 0.00, 0.00, 'Virement', 0.00, 8000.00, 0.00, 1600.00, 9600.00, 9600.00, 'Payée', 3, '2023-10-03', NULL, '2024-06-08 15:04:24', NULL, NULL),
(301, 'FA-0188-2023', 1, 1, '2023-09-25', '2023-10-12', 'Sté ABBADI MAROC BOIS', '000043044000066', '459 Av Hassan Ii Route De Casablanca Agdal. - Agdal Riyad (AR)', 'Expertise_Unité_Salé_Abbadi', 'Expertise Immobilière de la valeur vénale\nd’un « Bien » immobilier, de type « Unité industrielle », sis Route Rabat-Kenitra, Arrondissement de Bab\nLamrissa, Salé - Maroc. Objet du TF N°1.626/20.', 4800.00, 0.00, 0.00, 'Virement', 0.00, 4000.00, 0.00, 800.00, 4800.00, 4800.00, 'Payée', 3, '2023-10-12', NULL, '2024-06-08 15:04:24', NULL, NULL),
(302, 'FA-0189-2023', 1, 1, '2023-09-29', '2023-10-06', 'Sté DIHYA SARL', '000086021000001', 'N°370 Hayoued Eddahab - Ouarzazate (M)', 'Expertise_Appartement _Agadir_Brahim', 'Expertise immobilière', 6000.00, 0.00, 0.00, 'Virement', 0.00, 5000.00, 0.00, 1000.00, 6000.00, 6000.00, 'Payée', 3, '2023-10-06', NULL, '2024-06-08 15:04:24', NULL, NULL),
(303, 'FA-0190-2023', 1, 1, '2023-09-29', NULL, 'SEFAMAR (SEFAMAR)', '001529444000046', 'Rue F Lot 25-26 Route Des Zenatas R.s 111 (cotiere) Nouveau Secteur Industriel Ain Sebaa -', 'Expertise_Entrepot_Ain sebaa_SEFAMAR', 'Expertise de la valeur vénale d’un « Bien » immobilier, de type « Unité industrielle », sis Boulevard Sfax, Zone Industrielle Sidi Bernoussi, Casablanca - Maroc. Objet du TF N°251/49.', 0.00, 0.00, 0.00, 'Chèque', 3600.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Non payée', 1, NULL, NULL, '2024-06-08 15:04:24', NULL, NULL),
(304, 'FA-0191-2023', 1, 1, '2023-09-30', NULL, 'SEFAMAR (SEFAMAR)', '001529444000046', 'Rue F Lot 25-26 Route Des Zenatas R.s 111 (cotiere) Nouveau Secteur Industriel Ain Sebaa -', 'Expertise_Entrepot_Ain sebaa_SEFAMAR', 'Expertise Immobilière de la valeur vénale d’un « Bien » immobilier, de type « Unité industrielle », sis Route de Zenata, Zone Industrielle Sidi Bernoussi, Casablanca - Maroc. Objet du TF N°35.105/49.', 0.00, 0.00, 0.00, 'Chèque', 3600.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Non payée', 1, NULL, NULL, '2024-06-08 15:04:24', NULL, NULL),
(305, 'FA-0192-2023', 1, 1, '2023-10-05', '2023-10-10', 'MM. Hicham Mansouri  & Yassine Azami Idrissi', '------------', '------------', 'Expertise_Lot_terrain_Dar_Bouazza', 'Expertise immobilière de la valeur vénale, d’un « Bien » immobilier, de type « Lot de terrain pour villa », sis Lotissement « NAKHLA », Lot N°97, Commune de Dar Bouazza, Province de Nouaceur, Casablanca - Maroc. Objet du T.F N° 183.976/63.', 3600.00, 0.00, 0.00, 'Chèque', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Payée', 3, '2023-10-10', NULL, '2024-06-08 15:04:24', NULL, NULL),
(306, 'FA-0193-2023', 1, 1, '2023-10-13', '2023-11-20', 'Mme Daoud Latifa', '------------', '------------', 'Expertise_Appartement_ Daoud_Latifa_Bouznika_Yousr', 'Expertise Immobilière de la valeur vénale, d’un « Bien » immobilier, de type « Appartement », sis Résidence du Golf, Immeuble B1, Appartement N°04, RDC, Province de Benslimane, Bouznika - Maroc. Objet du T.F N°24.099/25 & 24.175/25.', 3000.00, 0.00, 0.00, 'Virement', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, 'Payée', 3, '2023-11-20', NULL, '2024-06-08 15:04:24', NULL, NULL),
(307, 'FA-0194-2023', 1, 1, '2023-10-17', '2023-10-23', 'Sté BRANDED', '00051196 00000 65', '------------', 'Expertise_Triplex_Hjouji_Anfa', 'Expertise Immobilière', 2640.00, 0.00, 0.00, 'Virement', 0.00, 2200.00, 0.00, 440.00, 2640.00, 2640.00, 'Payée', 3, '2023-10-23', NULL, '2024-06-08 15:04:24', NULL, NULL),
(308, 'FA-0195-2023', 1, 1, '2023-10-17', '2023-10-25', 'Sté PRO\' VALUES CONSULTING', '002360074000018', '------------', 'Expertise_Appartement_Lissasfa_Mariam', 'Expertise Immobilière', 2000.00, 0.00, 0.00, 'Virement', 0.00, 1666.67, 0.00, 333.33, 2000.00, 2000.00, 'Payée', 3, '2023-10-25', NULL, '2024-06-08 15:04:24', NULL, NULL),
(309, 'FA-0196-2023', 1, 1, '2023-10-19', '2023-10-23', 'Sté GEC MAROC', '000009290000012', 'Angle Rue Abou Al Hanaâ & Rue Tanane Khadiri, Ferme Bretonne Quartier Oasis, Arrondissement Hay Hassani, Casablanca - Maroc.', 'Expertise_Commerce_Ferme breton_Youssef', 'Expertise immobilière d’un « Bien » immobilier, de type « Commerce », sis Angle Rue Abou Al Hanaâ & Rue Tanane Khadiri, Ferme Bretonne, Quartier Oasis, Arrondissement Hay Hassani, Casablanca - Maroc, objet du T.F N°50.213/64.', 2500.00, 0.00, 0.00, 'Virement', 0.00, 2083.33, 0.00, 416.67, 2500.00, 2500.00, 'Payée', 3, '2023-10-23', NULL, '2024-06-08 15:04:24', NULL, NULL),
(310, 'FA-0197-2023', 1, 1, '2023-10-20', '2023-11-01', 'M. MOUKL  MOHAMED', '------------', '------------', 'Expertise_Etat_avancement_villa_MOUK', 'Expertise Immobilière', 2000.00, 0.00, 0.00, 'Chèque', 0.00, 1666.67, 0.00, 333.33, 2000.00, 2000.00, 'Payée', 3, '2023-11-01', NULL, '2024-06-08 15:04:24', NULL, NULL),
(311, 'FA-0198-2023', 1, 1, '2023-10-27', '2023-11-16', 'kanouni sefraoui architectes et associés', '002272669000040', '------------', 'Expertise_Bureau et Commerce_KS_Studio', 'Evaluation immobilière des Bureau ayant les TF N° 25.539/71, 25.538/71, 25.537/71 sis Casablanca\n\nEvaluation immobilière des Commerces ayant les TF N° 25.536/71; 25.535/71 sis Casablanca', 7920.00, 0.00, 0.00, 'Chèque', 0.00, 6600.00, 0.00, 1320.00, 7920.00, 7920.00, 'Payée', 3, '2023-11-16', NULL, '2024-06-08 15:04:24', NULL, NULL),
(312, 'FA-0199-2023', 1, 1, '2023-10-28', '2024-01-19', 'SOCIETE MAROCAINE DE JEUX ET LOISIRS (SMJL)', '002014829000030', 'Rdc Quartier Palmier Angle Rue De Neuf Avril Maidani Et Boulverard Brahim Roudani (ex Claude Perault) Residence Palmier - Casablanca', 'Expertise_magasin_FAHIM ABDERREZAK_Oulidia_Yousr', 'Evaluation immobilière de deux terrains ayant les T.F N° 57.563/23 & 53.717/23 sis Zaouiate Sidi RADI Province De Oualidia.', 9180.00, 0.00, 0.00, 'Virement', 0.00, 7650.00, 0.00, 1530.00, 9180.00, 9180.00, 'Payée', 3, '2024-01-19', NULL, '2024-06-08 15:04:24', NULL, NULL),
(313, 'FA-0200-2023', 1, 1, '2023-10-29', '2023-12-25', 'Sté Les Matériaux Nouveaux (LMN)', '\'000230516000073', '38 Rue Soufiane At-touri Maarif - El Maarif (AR)', 'Expertise_Terarain_Had_soualem_Said_Rafki_Tiot Mellil', 'Expertise immobilière du terrain sis Préfecture de Ben Msik Sidi Othman, Commune Lahraouiyine, Casablanca- Maroc, objet de TF N°169.910/12.', 5000.00, 0.00, 0.00, 'Chèque', 0.00, 4166.67, 0.00, 833.33, 5000.00, 5000.00, 'Payée', 3, '2023-12-25', NULL, '2024-06-08 15:04:24', NULL, NULL),
(314, 'FA-0201-2023', 1, 1, '2023-11-20', '2023-11-29', 'Mr. Miri Mohamed', '001717952000017', 'Bd Bir Anzarane. Maarif', 'Expertise_Bureau_Dr_Miri', 'Expertise Immobilière d\'un \"Bien immobilier\" de type appartement, sis Bd Stendhal & Georges Sand, Résidence Benber, Immeuble C,3ème étage appt n° 109. Maarif, Casablanca, Maroc, objet du TF N° 77.394/01', 2640.00, 0.00, 0.00, 'Chèque', 0.00, 2200.00, 0.00, 440.00, 2640.00, 2640.00, 'Payée', 3, '2023-11-29', NULL, '2024-06-08 15:04:24', NULL, NULL),
(315, 'FA-0202-2023', 1, 1, '2023-11-23', '2023-12-01', 'M.Mehdi Hosni', '------------', '------------', 'Expertise _Appartement_Hosni_Bd _Paris', 'Expertise Immobilière pour la valeur vénale d’un « Bien » immobilier, de type « Appartement », sis 37, Rue Abderrahmane Sahraoui, Appartement N°17, 2ème étage, Arrondissement Anfa, Casablanca - Maroc, objet du T.F N° 55.864/01.', 2500.00, 0.00, 0.00, 'Virement', 0.00, 2083.33, 0.00, 416.67, 2500.00, 2500.00, 'Payée', 3, '2023-12-01', NULL, '2024-06-08 15:04:24', NULL, NULL),
(316, 'FA-0203-2023', 1, 1, '2023-11-23', '2023-12-13', 'Madame  Samia EL ATRASSI ', '------------', '------------', 'Expertise_Etat _Avancement_Harhoura', 'Expertise Immobilière de la valeur vénale, d’un « Bien » immobilier, de type « Villa » en cours de finition sur 01 étage, sis Lotissement Dar El Aarass, Lot N°37, Commune de Harhoura, Préfecture de Skhirat-Témara, Témara - Maroc, objet du TF N° 63.991/78.', 2500.00, 0.00, 0.00, 'Virement', 0.00, 2083.33, 0.00, 416.67, 2500.00, 2500.00, 'Payée', 3, '2023-12-13', NULL, '2024-06-08 15:04:24', NULL, NULL),
(317, 'FA-0204-2023', 1, 1, '2023-11-23', '2023-11-20', 'Sté MWY HOME', '', '------------', 'Expertise_Projet_Kenitra_Maroaune _Mouassadak', 'Evaluation immobilière de la valeur vénale du terrain objet de l’opération immobilière de type « Immeuble (SS R+4) » et la validation du montage de l’opération immobilière et son Chiffre d’affaires, sis Lot N°2159, Lotissement « Haddada », Route de Mehdia Kénitra - Maroc, objet du TF N° 109.620/13.', 7200.00, 0.00, 0.00, 'Virement', 0.00, 6000.00, 0.00, 1200.00, 7200.00, 7200.00, 'Payée', 3, '2023-11-20', NULL, '2024-06-08 15:04:24', NULL, NULL),
(318, 'FA-0205-2023', 1, 1, '2023-11-23', '2023-11-20', 'Sté BENKIRANE IMMOBILIER', '001655728000025', 'Lot 165 Avenue Imam Ali B N 1 - Kénitra (M)', 'Expertise_Projet_Benkirane_Kenitra', 'Expertise Immobilière  de la valeur vénale d’un « Bien » immobilier, de type « Immeuble (R+4) », sis Lot N°1314, Lotissement « Le Vallon », Kénitra - Maroc. Objet du TF N° 165.472/13.', 7200.00, 0.00, 0.00, 'Virement', 0.00, 6000.00, 0.00, 1200.00, 7200.00, 7200.00, 'Payée', 3, '2023-11-20', NULL, '2024-06-08 15:04:24', NULL, NULL),
(319, 'FA-0206-2023', 1, 1, '2023-11-23', '2023-11-20', 'Sté ELECSOF SARL', '002069112000059', 'Gr Attakaddoum Gh2-17 2ème Étage Sidi Bernoussi - Sidi Bernoussi - Casablanca', 'Expertise_Mourad_02Commerce_Ain_Sebaa', 'Expertise Immobilière de la valeur vénale de « 02 Biens » immobiliers, de type « Commerce », sis P3002, Lotissement « ASSAFA », Mohammedia - Maroc, objet du T.F N°133.037/26 & N°133.038/26.', 5000.00, 0.00, 0.00, 'Virement', 0.00, 4166.67, 0.00, 833.33, 5000.00, 5000.00, 'Payée', 3, '2023-11-20', NULL, '2024-06-08 15:04:24', NULL, NULL),
(320, 'FA-0207-2023', 1, 1, '2023-11-23', '2023-11-20', 'Sté SPOLETO IMMO', '002176146000062', 'Lot Layali 2 Lot 8 3eme Etage - Berrechid (M)', 'Expertise_Projet Berrechid_02 lot (R+4)', 'Expertise Immobilière de la valeur vénale d’un « Bien » immobilier, de type « Terrain », sis Route de Khouribga, Lotissement « BERKOR II » Lot N°16 & N°17, Berrechid - Maroc. Objet du TF N°152.587/53 & N°152.588/53.', 9600.00, 0.00, 0.00, 'Virement', 0.00, 8000.00, 0.00, 1600.00, 9600.00, 9600.00, 'Payée', 3, '2023-11-20', NULL, '2024-06-08 15:04:24', NULL, NULL),
(321, 'FA-0208-2023', 1, 1, '2023-11-24', '2023-12-28', 'Sté DADA IMMOBILIER', '000532233000065', '68 Av Ramallah Rte Sefrou - Fès-Médina (AR)', 'Expetise_Projet_Al_AIssaoui_Tiznit', 'Expertise Immobilière de la valeur vénale d’un « Bien » immobilier, de type « Terrain », sis Tiznit - Maroc. Objet du TF N°29.332/31.', 11070.00, 0.00, 0.00, 'Virement', 0.00, 9225.00, 0.00, 1845.00, 11070.00, 11070.00, 'Payée', 3, '2023-12-28', NULL, '2024-06-08 15:04:24', NULL, NULL),
(322, 'FA-0209-2023', 1, 1, '2023-11-24', NULL, 'STE BAGGARBATI', '000093258000057', 'Residence Al Amane Gr. 18 Imm. 146 N° 1 - Aîn-Sebaâ (AR)', 'Expertise BAGGAR_04 Appartements', 'Expertsie Immobilière de la valeur vénale de « 04 Biens » immobiliers, de type « Appartement » sis Rue N°24, Lotissement « AL FADL »,', 0.00, 0.00, 0.00, 'Virement', 12000.00, 10000.00, 0.00, 2000.00, 12000.00, 12000.00, 'Non payée', 1, NULL, NULL, '2024-06-08 15:04:24', NULL, NULL),
(323, 'FA-0210-2023', 1, 1, '2023-11-28', '2024-04-01', 'MAITRE MOHAMMED BENABDEJLIL', 'ICE 001592294000014', '------------', 'Expertise Me Benabdeljalil', 'Expertise Immobilière d\'état d\'avancement  d’un « Bien » immobilier, de type « Villa » sur trois niveau, objet du TF N° 201.081/07 sis Lotissement la Rose, Lot N°10, Fès - Maroc.', 7200.00, 0.00, 0.00, 'Virement', 0.00, 6000.00, 0.00, 1200.00, 7200.00, 7200.00, 'Payée', 3, '2024-04-01', NULL, '2024-06-08 15:04:24', NULL, NULL),
(324, 'FA-0211-2023', 1, 1, '2023-11-28', '2023-12-28', ' Sté DIALYA TRAV', '001952442000074', 'Lot N 36 Lot Sidi Lahsen 2 1er Etage - Berrechid (M)', 'Expertise DIALYA', 'Evaluation immobilière de la valeur vénale d’un « Bien » immobilier, de type « Terrain », sis Lotissement « BERKOR », Lot N°96, Berrechid - Maroc. Objet du TF N°94.864/53.', 9600.00, 0.00, 0.00, 'Virement', 0.00, 8000.00, 0.00, 1600.00, 9600.00, 9600.00, 'Payée', 3, '2023-12-28', NULL, '2024-06-08 15:04:24', NULL, NULL),
(325, 'FA-0212-2023', 1, 1, '2023-11-29', NULL, 'Sté HAFSA IMMOBILIER', '001896970000041', '0 Rue Liberté Etage 3 Appartement 6 Sidi Belyoute - Sidi Belyout (AR)', 'Expertise_HAFSA IMMOBILIER', 'Expertise Immolière d\'état d’avancement de la tranche 2 du projet objet du T.FN° 4.158/53, sis « Marina Sidi Rahal », Commune urbaine Sidi Rahal, Province de Berrechid, Casablanca - Maroc.', 14400.00, 0.00, 0.00, 'Virement', 0.00, 12000.00, 0.00, 2400.00, 14400.00, 14400.00, 'Payée', 3, '2023-11-29', NULL, '2024-06-08 15:04:24', NULL, NULL),
(326, 'FA-0213-2023', 1, 1, '2023-11-29', NULL, 'STE BAGGARBATI', '000093258000057', 'Residence Al Amane Gr. 18 Imm. 146 N° 1 - Aîn-Sebaâ (AR)', 'Expertise BAGGAR_04 Commerces', 'Expertsie Immobilière de la valeur vénale de « 04 Biens » immobiliers, de type « Commerce » sis Rue N°24, Lotissement « AL FADL »', 0.00, 0.00, 0.00, 'Virement', 16800.00, 14000.00, 0.00, 2400.00, 16800.00, 16800.00, 'Non payée', 1, NULL, NULL, '2024-06-08 15:04:24', NULL, NULL),
(327, 'FA-0214-2023', 1, 1, '2023-11-29', '2024-01-19', 'Sté ATLAS GAMING', '002194367000079', 'N°267, Boulvard Zerktouni, Quartier Racine - Casablanca', 'Expertise 02 Commerces_ Mly Idriss 1er_Regragui', 'Expertise Immobilière de la valeur vénale de « 02 Biens » immobiliers, de type « Commerce », sis Boulevard Moulay Idriss I, Arrondissement Maârif, Casablanca - Maroc, objet du T.F N°2.416/71 & N° 2.417/71.', 8400.00, 0.00, 0.00, 'Virement', 0.00, 7000.00, 0.00, 1400.00, 8400.00, 8400.00, 'Payée', 3, '2024-01-19', NULL, '2024-06-08 15:04:24', NULL, NULL),
(328, 'FA-0215-2023', 1, 1, '2023-11-30', '2024-01-04', 'M. EL HASSINI Mohamed', '001307215000003', 'PROJET MARINA SIDI RAHAL', 'Expertise_Projet_sidi_Rehal_EL_HASSINI_', 'Expertise d\'un etat d\'avanceent du projet objet du TF N°4.158/53 sis sidi Rehal', 14400.00, 0.00, 0.00, 'Virement', 0.00, 12000.00, 0.00, 2400.00, 14400.00, 14400.00, 'Payée', 3, '2024-01-04', NULL, '2024-06-08 15:04:24', NULL, NULL),
(329, 'FA-0216-2023', 1, 1, '2023-12-04', '2024-04-01', 'STE COUTOT-ROEHRIG PARIS', 'SIREN 392672796\nSIRET (siège) 39267279600019\nNuméro TVA Intracommunautaire FR57392672796\nNuméro RCS Paris B 392 672 796', '21 boulevard Saint Germain\n75005 PARIS', 'Expertise_Terrain_Sidi_Moumen_Taoui (TAoui Sofia)', 'Expertise immobilière d\'un terrain ayant le TF N° 14383/C de Superficie 2.052m² sis Sidi Moumen.', 4200.00, 0.00, 0.00, 'Chèque', 0.00, 3500.00, 0.00, 700.00, 4200.00, 4200.00, 'Payée', 3, '2024-04-01', NULL, '2024-06-08 15:04:24', NULL, NULL),
(330, 'FA-0217-2023', 1, 1, '2023-12-04', '2024-01-04', 'Sté Les Collines de ZAERS Immobilier', '002292087000039', 'Ain Aouda Préfecture De Skhirat, Témara - Rabat', 'Expertise_Projet_Karakchou_Ain Aouda', 'Evaluation Immobilière d’un projet de type Lotissement Industrielle , à Ain El Aouda - Maroc, objet de TF N°24.081/R.', 11400.00, 0.00, 0.00, 'Virement', 0.00, 9500.00, 0.00, 1900.00, 11400.00, 11400.00, 'Payée', 3, '2024-01-04', NULL, '2024-06-08 15:04:24', NULL, NULL),
(331, 'FA-0218-2023', 1, 1, '2023-12-05', '2023-12-28', 'Sté Alpha 55', '001669313000084', 'Angle Rue du Prince Moulay\nAbdellah & Avenue Mers Sultan, Quartier de la Liberté, Préfecture d’Anfa, Casablanca- Maroc,', 'Expertise_Immeubl_Alpha-55', 'Experise Immobilière de la valeur vénale d’un actif immobilier, de type « Immeuble », sis Angle Rue du Prince Moulay Abdellah & Avenue Mers Sultan, Quartier de la Liberté, Préfecture d’Anfa, Casablanca- Maroc, objet de TF N°1.153/C.', 6000.00, 0.00, 0.00, 'Chèque', 0.00, 5000.00, 0.00, 1000.00, 6000.00, 6000.00, 'Payée', 3, '2023-12-28', NULL, '2024-06-08 15:04:24', NULL, NULL),
(332, 'FA-0219-2023', 1, 1, '2023-12-06', '2023-12-25', 'SPHINX ELECTRIC', '001551283000056', '36, Lot Soukaina Ii, Sidi Maarouf - Casablanca', 'Expertise_Plataeau Bureau_Khalid', 'Expertise Immobilière de l’estimation de la valeur vénale d’un « Bien » immobilier, de type « Immeuble », sis Lotissement « SOUKAINA », Lot N°36, Zone Industrielle Sidi Maarouf, Casablanca Maroc, objet du T.F N°16.031/63.', 6600.00, 0.00, 0.00, 'Chèque', 0.00, 5500.00, 0.00, 1100.00, 6600.00, 6600.00, 'Payée', 3, '2023-12-25', NULL, '2024-06-08 15:04:24', NULL, NULL),
(333, 'FA-0220-2023', 1, 1, '2023-12-06', '2023-12-29', 'KOSMO PHARM (KPH)', '000094349000088', 'Lotissement Lina Lot 272 Quartier Sidi Maarouf Rue 5 Z.i. Sidi Maârouf - Casablanca', 'Expertise_Entrpôt_sidi_Maarouf_Jirari', 'Expertise Immobilière', 6600.00, 0.00, 0.00, 'Chèque', 0.00, 5500.00, 0.00, 1100.00, 6600.00, 6600.00, 'Payée', 3, '2023-12-29', NULL, '2024-06-08 15:04:24', NULL, NULL),
(334, 'FA-0221-2023', 1, 1, '2023-12-06', NULL, 'M. BOUKMIJ SALAH', '------------', '------------', 'Expertise_appartement_Mohammedia', 'Expertise Immobilière d’un « Bien » immobilier, de type « Appartement », sis Résidence « les Collines », Tranche « l’ACACIA », Immeuble 06, 2ème étage, Appartement N°06, Arrondissement Ain Chock, Casablanca - Maroc, objet du T.F N° 90.453/47', 0.00, 0.00, 0.00, 'Virement', 3000.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, 'Non payée', 1, NULL, NULL, '2024-06-08 15:04:24', NULL, NULL),
(335, 'FA-0222-2023', 1, 1, '2023-12-25', '2024-01-08', 'STE ECOLE DAHA JAWHAR MARRAKECH', '001584953000050', 'IMM 1 APP 7 AKIOD MABROUKA - LOUDAYA-AIT IMOUR', 'Expertise_Ecole_ Marrakech', 'Expertise Immobilière de la valeur vénale d’un « Bien » immobilier, de type « Groupe Scolaire Privé en SS R+3 », sis Avenue Al Mouquaouama, Lotissement « La Belle Vue », Lot N°12, Marrakech - Maroc, objet du T.F N° 118.282/04. (1ère Avance)', 4800.00, 0.00, 0.00, 'Espèce', 0.00, 4000.00, 0.00, 800.00, 4800.00, 4800.00, 'Payée', 3, '2024-01-08', NULL, '2024-06-08 15:04:24', NULL, NULL),
(336, 'FA-0223-2023', 1, 1, '2023-12-25', '2024-01-08', 'STE ECOLE DAHA JAWHAR MARRAKECH', '001584953000050', 'IMM 1 APP 7 AKIOD MABROUKA - LOUDAYA-AIT IMOUR', 'Expertise_Ecole_ Marrakech', 'Expertise Immobilière de la valeur vénale d’un « Bien » immobilier, de type « Groupe Scolaire Privé en SS R+3 », sis Avenue Al Mouquaouama, Lotissement « La Belle Vue », Lot N°12, Marrakech - Maroc, objet du T.F N° 118.282/04. (2ème avance)', 4800.00, 0.00, 0.00, 'Espèce', 0.00, 4000.00, 0.00, 800.00, 4800.00, 4800.00, 'Payée', 3, '2024-01-08', NULL, '2024-06-08 15:04:24', NULL, NULL),
(337, 'FA-0224-2023', 1, 1, '2023-12-25', '2024-01-08', 'STE ECOLE DAHA JAWHAR MARRAKECH', '001584953000050', 'IMM 1 APP 7 AKIOD MABROUKA - LOUDAYA-AIT IMOUR', 'Expertise_Ecole_ Marrakech', 'Expertise Immobilière de la valeur vénale d’un « Bien » immobilier, de type « Groupe Scolaire Privé en SS R+3 », sis Avenue Al Mouquaouama, Lotissement « La Belle Vue », Lot N°12, Marrakech - Maroc, objet du T.F N° 118.282/04. (3ème avance)', 2800.00, 0.00, 0.00, 'Espèce', 0.00, 2333.33, 0.00, 466.67, 2800.00, 2800.00, 'Payée', 3, '2024-01-08', NULL, '2024-06-08 15:04:24', NULL, NULL),
(338, 'FA-0225-2023', 1, 1, '2023-12-25', NULL, 'Sté MEDASS IMO-2', '002876403000072', 'Résidence Azzarka, 117, Rue Ibnou Mounir 1er Etage Appat N°2 Maarif - El Maarif ', 'Expertise_Projet_Marrakech_EL BAAMRANI MOUHCINE', 'Evaluation immobilière du projet ayant le T.F N° 96.940/04 sis Marrakech :\n-/ Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.\n', 0.00, 0.00, 0.00, 'Virement', 10260.00, 8550.00, 0.00, 1710.00, 10260.00, 10260.00, 'Non payée', 1, NULL, NULL, '2024-06-08 15:04:24', NULL, NULL),
(339, 'FA-0226-2023', 1, 1, '2023-12-25', NULL, 'Sté MEDASS IMO-2', '002876403000072', 'Résidence Azzarka, 117, Rue Ibnou Mounir 1er Etage Appat N°2 Maarif - El Maarif ', 'Expertise_Projet_Marrakech_EL BAAMRANI MOUHCINE', 'Evaluation du Chiffre d\'affaires PROJET TAGANA sis Marrakech\n', 0.00, 0.00, 0.00, 'Virement', 3780.00, 3150.00, 0.00, 630.00, 3780.00, 3780.00, 'Non payée', 1, NULL, NULL, '2024-06-08 15:04:24', NULL, NULL),
(340, 'FA-0227-2023', 1, 1, '2023-12-25', '2024-02-02', 'M.BERRADA KARIM', '------------', '------------', 'Expertise_Villa_Casablanca', 'Expertise Immobilière d’un « Bien » immobilier, de type « Villa », sis Bd Fes, californie,  Arrondissement Ain Chock, Casablanca - Maroc, objet du T.F N° 64.331/47', 3500.00, 0.00, 0.00, 'Virement', 0.00, 2916.67, 0.00, 583.33, 3500.00, 3500.00, 'Payée', 3, '2024-02-02', NULL, '2024-06-08 15:04:24', NULL, NULL),
(341, 'FA-0228-2023', 1, 1, '2023-12-25', NULL, 'M. MONKARI SALAH EDDINE', '------------', '------------', 'Expertise_ Appartement_Casablanca', 'Expertise Immobilière d’un « Bien » immobilier, de type « Appartement », sis 108, Lotissement « ENNAHDA » GH FB3, Appartement N°05, 1er étage, Arrondissement de Sidi Moumen, Préfecture de Sidi Bernoussi, Casablanca – Maroc. Objet du T.F N° 58.421/49.', 0.00, 0.00, 0.00, 'Virement', 600.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Non payée', 1, NULL, NULL, '2024-06-08 15:04:24', NULL, NULL),
(342, 'FA-0229-2023', 1, 1, '2023-12-25', '2023-12-28', 'Ste CHAML FER SARL ET TRASDOHA SARL', '', '', 'Expertise_Terrain Agricole_ Mediouna', 'Expertise Immobilière d’un « Bien » immobilier, de type « Terrain », sis Préfecture de Ben Msik Médiouna, Commune Mejjattia Ouled Taleb, Casablanca- Maroc. Objet du TF N°161.206/12.', 7200.00, 0.00, 0.00, 'Virement', 0.00, 6000.00, 0.00, 1200.00, 7200.00, 7200.00, 'Payée', 3, '2023-12-28', NULL, '2024-06-08 15:04:24', NULL, NULL),
(343, 'FA-0230-2023', 1, 1, '2023-12-25', '2024-02-02', 'AMICALE EL JIZA VERT ', '', '', 'Expertise_ projet de villa_ Bouskoura Ville verte', 'Expertise d’un projet immobilier de type de villa en villégiature, sis Douar Drabna, Commune de Bouskoura, Casablanca - Maroc. Objet du TF N°262/33.', 11400.00, 0.00, 0.00, 'Virement', 0.00, 9500.00, 0.00, 1900.00, 11400.00, 11400.00, 'Payée', 3, '2024-02-02', NULL, '2024-06-08 15:04:24', NULL, NULL),
(344, 'FA-0231-2023', 1, 1, '2023-12-25', '2024-02-02', 'M.FAJRI SALAH', '', '------------', 'Expertise_ Villa_El Jadida', 'Expertise d’un « Bien » immobilier, de type « Villa », sis Résidence « California-Bay », Lot N°32, El Jadida – Maroc. Casablanca – Maroc. Objet du : TF N°116.599/08.', 3600.00, 0.00, 0.00, 'Virement', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Payée', 3, '2024-02-02', NULL, '2024-06-08 15:04:24', NULL, NULL),
(345, 'FA-0232-2023', 1, 1, '2023-12-25', '2024-02-02', 'M. BENCHEKROUN YOUNESS', '', '------------', 'Expertise_Bureau_Casablanca', 'Expertise d’un « Bien » immobilier, de type « Plateau bureau », sis Mohammed 5 Offices Center, Immeuble « B », Bureau N° 506, 5ème étage, Préfecture d\'Aïn Sebaâ-Hay Mohammadi, Casablanca - Maroc, objet du T.F N°77.817/45', 3000.00, 0.00, 0.00, 'Virement', 0.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, 'Payée', 3, '2024-02-02', NULL, '2024-06-08 15:04:24', NULL, NULL),
(346, 'FA-0233-2023', 1, 1, '2023-12-25', '2024-02-02', 'M.BENCHBABA TAOUFIQ ', '------------', '------------', 'Expertise_Villa_Casablanca', 'Expertise d’un « Bien » immobilier, de type « Villa », sis Bouskoura Golf City, TR 53, Villa N°125, Bouskoura, Province de Nouaceur, Casablanca – Maroc. Objet du T.F N° 46.560/63.', 3600.00, 0.00, 0.00, 'Virement', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Payée', 3, '2024-02-02', NULL, '2024-06-08 15:04:24', NULL, NULL);
INSERT INTO `invoices` (`id`, `invoice_number`, `societe_id`, `mission_type_id`, `invoice_date`, `prestation_date`, `client_name`, `ice`, `client_adress`, `object`, `detail`, `advance`, `discount`, `commission`, `payment_mode`, `remainder`, `totalHT`, `totalHTRem`, `montantTVA`, `totalTTC`, `totalTTC2`, `status`, `value_status`, `payment_date`, `deleted_at`, `created_at`, `updated_at`, `ref_bc`) VALUES
(347, 'FA-0234-2023', 1, 1, '2023-12-25', '2024-02-02', 'Ste ERRAFII CAPITAL INVEST', '', '6 Rue Thann Bd Rahal El Meskini 5éme Etage N°18 - Casablanca', 'Evaluation Projet et Montage Financier d\'un projet à Casablanca', 'Evaluation d’un projet immobilier de type « Immeuble en SS R+5 », sis Route d’El Jadida, Arrondissement Maârif, Casablanca - Maroc. Objet du TF N°31.337/C.', 11400.00, 0.00, 0.00, 'Virement', 0.00, 9500.00, 0.00, 1900.00, 11400.00, 11400.00, 'Payée', 3, '2024-02-02', NULL, '2024-06-08 15:04:24', NULL, NULL),
(348, 'FA-0235-2023', 1, 1, '2023-12-27', '2024-02-02', 'STE TAIB IMMO', '', '', 'Evaluation Projet et Montage Financier d\'un projet à Marrakech', 'Evaluation d’un projet immobilier de type « Lotissement », sis Angle Avenue des Palmiers & Route du Barrage, Municipalité Mechouar Es-Said, Marrakech - Maroc. Objet des TF N°152.830/04, 152.831/04, 152.832 & 152.833/04', 10800.00, 0.00, 0.00, 'Virement', 0.00, 9000.00, 0.00, 1800.00, 10800.00, 10800.00, 'Payée', 3, '2024-02-02', NULL, '2024-06-08 15:04:24', NULL, NULL),
(349, 'FA-0236-2023', 1, 1, '2023-12-27', '2024-04-01', 'Sté VALENCIA DISTRIBUTION', '', '', 'Expertise_Immeuble_Casablanca', 'Expertise d’un « Bien » immobilier, de type « Immeuble », sis Lotissement « Wifak », Lot N°10, Quartier Oulfa, Arrondissement Hay Hassani, Casablanca- Maroc., objet du T.F N° 66.158/64.', 3600.00, 0.00, 0.00, 'Virement', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Payée', 3, '2024-04-01', NULL, '2024-06-08 15:04:24', NULL, NULL),
(350, 'FA-0237-2023', 1, 1, '2023-12-27', '2024-02-02', 'M. REDA MAAZOUZI', '------------', '------------', 'Expertise_Terrain_Mohammedia', 'Expertise d’un «Bien» immobilier, de type « Lot de terrain pour Immeuble », sis Lotissement « Manzah Fedala », Lot N°328, Commune Rurale de Ben Yakhlef, Mohammedia - Maroc. Objet du T.F N° 138.027/26.', 3600.00, 0.00, 0.00, 'Virement', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Payée', 3, '2024-02-02', NULL, '2024-06-08 15:04:24', NULL, NULL),
(351, 'FA-0238-2023', 1, 1, '2023-12-27', '2023-12-25', 'STE B Living', '001936406000038', '7, Rue Sebta Res. Rami, 2ème Etage Bureau 8 - Casablanca', 'Expertise_Commerce_Casablanca', 'Expertise d’un « Bien » immobilier, de type « Commerce », sis 26, Rue Ibnou Khalikane, Arrondissement Maârif, Quartier Palmier, Casablanca - Maroc, objet du T.F N°27.584/71.', 4200.00, 0.00, 0.00, 'Virement', 0.00, 3500.00, 0.00, 700.00, 4200.00, 4200.00, 'Payée', 3, '2023-12-25', NULL, '2024-06-08 15:04:24', NULL, NULL),
(352, 'FA-0239-2023', 1, 1, '2023-12-27', NULL, 'Sté FREE BIRD INSTITUT', '', '', 'Expertise_Projet SPA_Casablanca', 'Expertise d’un « Bien » immobilier, de type « Centre de Bien être », sis Commune de Bouskoura, Province de Nouaceur, Casablanca - Maroc, objet du TF N° 167.428/63.', 0.00, 0.00, 0.00, 'Virement', 7200.00, 6000.00, 0.00, 1200.00, 7200.00, 7200.00, 'Non payée', 1, NULL, NULL, '2024-06-08 15:04:24', NULL, NULL),
(353, 'FA-0240-2023', 1, 1, '2023-12-27', '2024-04-01', 'M. LAKHMIRI AMINE', '------------', '------------', 'Expertise_Terrain_Agrciole_Taroudant', 'Expertise d’un « Bien » immobilier, de type « Terrain », sis Douar Ait Bihi, Commune Rurale Lagfifat, Taroudant - Maroc. Objet du TF N°9.079/S.', 8910.00, 0.00, 0.00, 'Virement', 0.00, 7425.00, 0.00, 1485.00, 8910.00, 8910.00, 'Payée', 3, '2024-04-01', NULL, '2024-06-08 15:04:24', NULL, NULL),
(354, 'FA-0241-2023', 1, 1, '2023-12-27', NULL, 'Ste TWA LUX IMMO SARL', '002637661000068', 'Hassan, Rue Moulay Ahmed Loukili, Immeuble 30, Appartement 8 - Hassan (AR)', 'Evaluation Projet et Montage Financier d\'un projet à Salé', 'Evaluation d’un projet immobilier de type « Groupement d’habitation en SS R+4 », sis Avenue 6 Novembre, Arrondissement Tabriquet, Salé - Maroc. Objet du TF N°23.058/R.', 0.00, 0.00, 0.00, 'Virement', 12980.00, 10816.67, 0.00, 2163.33, 12980.00, 12980.00, 'Non payée', 1, NULL, NULL, '2024-06-08 15:04:24', NULL, NULL),
(355, 'FA-0242-2023', 1, 1, '2023-12-27', '2024-01-19', 'Ste SIHOZ BUILDING', '003276169000065', 'Res Tadamon 2 Imm 20 Apt N° 290 Bensergo - Agadir (M)', 'Evaluation_Projet et Montage Financier_Projet_ Mirelift', 'Evaluation, d’un projet immobilier, de type « Lotissement », pour le compte de Banque AL YOUSR, sis Rue Malabata, Province de Sidi Ifni, Mirleft - Maroc, objet de TF N°26.379/31.', 13800.00, 0.00, 0.00, 'Virement', 0.00, 11500.00, 0.00, 2300.00, 13800.00, 13800.00, 'Payée', 3, '2024-01-19', NULL, '2024-06-08 15:04:24', NULL, NULL),
(356, 'FA-0243-2023', 1, 1, '2023-12-27', NULL, 'Ste LAGRAIN IMMO', '000187375000007', '10 Rue Liberté, Étage 3, Apt 6. - Casablanca', 'Evaluation_Projet et Montage Financiert_Projet _ Marrakech', 'Evaluation, d’un projet immobilier, de type « de terrain », pour le compte de Banque AL YOUSR, sis commune de Tassoultante- Marrakech, Maroc, objet de TF N°121.786/04.', 0.00, 0.00, 0.00, 'Virement', 10800.00, 9000.00, 0.00, 1800.00, 10800.00, 10800.00, 'Non payée', 1, NULL, NULL, '2024-06-08 15:04:24', NULL, NULL),
(357, 'FA-0244-2023', 1, 1, '2023-12-27', '2024-02-02', 'M. JAWHARI ISMAIL', '', '------------', 'Expertise_Terrain_Berrechid', 'Expertise d’un « Bien » immobilier, de type « Terrain », sis Commune Lahsasna, Douar Ouled M’hamed, Berrechid - Maroc. Objet du TF N°137.611/53', 3600.00, 0.00, 0.00, 'Virement', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Payée', 3, '2024-02-02', NULL, '2024-06-08 15:04:24', NULL, NULL),
(358, 'FA-0245-2023', 1, 1, '2023-12-27', '2024-04-01', 'Ste BAB MDIQ LAND', '002616716000073', 'Wilaya Center, Bloc 4 Imm B, Etage 1 Bur N° 10 Ain Melloul - Tetouan', 'Evaluation Immobilière_ CA_  projet BAB MDIQ_  Martil', 'Evaluation du chiffre d’affaires d’un projet immobilier de type « lots de terrain pour immeuble » ainsi que l’état d’avancement, objet du T.F N° 10.500/19, sis Lotissement « KENZA », Province de Tétouan, ville de Martil - Maroc. ', 3600.00, 0.00, 0.00, 'Virement', 0.00, 3000.00, 0.00, 600.00, 3600.00, 3600.00, 'Payée', 3, '2024-04-01', NULL, '2024-06-08 15:04:24', NULL, NULL),
(359, 'FA-0246-2023', 1, 1, '2023-12-27', '2024-04-01', 'Ste BAB MDIQ LAND', '002616716000073', 'Wilaya Center, Bloc 4 Imm B, Etage 1 Bur N° 10 Ain Melloul - Tetouan', 'Evaluation_Projet_ Montage Financier_Projet_ Martil', 'Evaluation d’un projet immobilier pour le compte de Bank Al Yousr, de type « Complexe résidentiel », sis Avenue Miramar, Province de Tetouan, Martil - Maroc. Objet du TF N°13.359/19', 10353.00, 0.00, 0.00, 'Virement', 0.00, 8627.50, 0.00, 1725.50, 10353.00, 10353.00, 'Payée', 3, '2024-04-01', NULL, '2024-06-08 15:04:24', NULL, NULL),
(360, 'FA-0247-2023', 1, 1, '2023-12-27', NULL, 'M. Anas Ahmed ELSAYED AHMED', '', '', 'Evaluation_Bureau_Casablanca', 'Expertise d’un « Bien » immobilier, de type « Plateau Bureau », sis Lotissement « Assakane Al Mounawar », Bureau N°01, 1er étage, Arrondissement Ain Chock, Casablanca – Maroc, objet du T.F N°91.944/47.', 0.00, 0.00, 0.00, 'Virement', 3000.00, 2500.00, 0.00, 500.00, 3000.00, 3000.00, 'Non payée', 1, NULL, NULL, '2024-06-08 15:04:24', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_04_14_065444_create_societes_table', 1),
(5, '2024_04_14_065520_create_mission_types_table', 1),
(6, '2024_04_17_123349_create_mode_payments_table', 1),
(7, '2024_04_18_065666_create_invoices_table', 1),
(8, '2024_04_18_065770_create_fees_table', 1),
(9, '2024_04_18_065780_create_prestation_table', 1),
(10, '2024_05_11_191742_add_soft_delete_societes', 1),
(11, '2024_05_11_191906_add_soft_delete_prestation', 1),
(12, '2024_05_11_191957_add_soft_delete_fees', 1),
(13, '2024_05_11_192102_add_soft_delete_mission_types', 1),
(14, '2024_05_11_192215_add_soft_delete_mode_payments', 1),
(15, '2024_05_15_121054_create_permission_tables', 1),
(16, '2024_05_16_181517_create_estimates_table', 1),
(17, '2024_05_16_182408_create_estimates_prestations_table', 1),
(18, '2024_05_16_182422_create_estimates_fees_table', 1),
(19, '2024_06_04_180732_add_ref_bc_to_invoices', 2),
(20, '2024_06_04_174433_add_societe_id_to_mission_types', 3);

-- --------------------------------------------------------

--
-- Structure de la table `mission_types`
--

CREATE TABLE `mission_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mission_type_name` varchar(999) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `societe_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `mission_types`
--

INSERT INTO `mission_types` (`id`, `mission_type_name`, `created_at`, `updated_at`, `deleted_at`, `societe_id`) VALUES
(1, 'Evaluation', '2024-06-07 18:27:23', NULL, NULL, 1),
(2, 'Conseil', '2024-06-07 18:27:23', NULL, NULL, 1),
(3, 'Formation', '2024-06-07 18:27:23', NULL, NULL, 1),
(4, 'Intérmediation', '2024-06-07 18:27:23', NULL, NULL, 1),
(5, 'Développement informatique ', '2024-06-07 18:27:23', NULL, NULL, 2),
(6, 'Audit ', '2024-06-07 18:27:23', NULL, NULL, 2),
(7, 'Maintenance', '2024-06-07 18:27:23', NULL, NULL, 2),
(8, 'Mise à disposition des ressources', '2024-06-07 18:27:23', NULL, NULL, 2),
(9, 'Mise à disposition des locaux', '2024-06-07 18:27:23', NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Structure de la table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Structure de la table `mode_payments`
--

CREATE TABLE `mode_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mode_payment_name` varchar(999) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `mode_payments`
--

INSERT INTO `mode_payments` (`id`, `mode_payment_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Chèque', NULL, NULL, NULL),
(2, 'Espèce', NULL, NULL, NULL),
(3, 'Virement', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('BO@sagidev.com', '$2y$12$/NKBPlVlySDZQrGvBN2xVOhSj1O8qMVWutS/fdyKW2sGpwxbv/Gtu', '2024-05-20 12:43:02'),
('marouane.dehbi@gmail.com', '$2y$12$vPIDNIhgAV2n0bsbzOmMJuaR1445E9GBOY86O5HSxNh7q.o82j93K', '2024-05-20 15:52:41');

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role', 'web', '2024-05-19 12:29:29', '2024-05-19 12:29:29'),
(2, 'role-list', 'web', '2024-05-19 12:29:29', '2024-05-19 12:29:29'),
(3, 'role-create', 'web', '2024-05-19 12:29:29', '2024-05-19 12:29:29'),
(4, 'role-edit', 'web', '2024-05-19 12:29:29', '2024-05-19 12:29:29'),
(5, 'role-delete', 'web', '2024-05-19 12:29:29', '2024-05-19 12:29:29'),
(6, 'invoices', 'web', '2024-05-19 12:29:29', '2024-05-19 12:29:29'),
(7, 'invoices-list', 'web', '2024-05-19 12:29:29', '2024-05-19 12:29:29'),
(8, 'invoices-create', 'web', '2024-05-19 12:29:29', '2024-05-19 12:29:29'),
(9, 'invoices-edit', 'web', '2024-05-19 12:29:29', '2024-05-19 12:29:29'),
(10, 'invoices-delete', 'web', '2024-05-19 12:29:29', '2024-05-19 12:29:29'),
(11, 'estimates', 'web', '2024-05-19 12:29:29', '2024-05-19 12:29:29'),
(12, 'estimates-list', 'web', '2024-05-19 12:29:29', '2024-05-19 12:29:29'),
(13, 'estimates-create', 'web', '2024-05-19 12:29:29', '2024-05-19 12:29:29'),
(14, 'estimates-edit', 'web', '2024-05-19 12:29:29', '2024-05-19 12:29:29'),
(15, 'estimates-delete', 'web', '2024-05-19 12:29:29', '2024-05-19 12:29:29'),
(16, 'dashboard', 'web', '2024-05-19 12:29:29', '2024-05-19 12:29:29'),
(17, 'invoices-research', 'web', '2024-05-19 12:29:29', '2024-05-19 12:29:29');

-- --------------------------------------------------------

--
-- Structure de la table `prestations`
--

CREATE TABLE `prestations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `VAT` decimal(8,2) NOT NULL,
  `invoice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `prestations`
--

INSERT INTO `prestations` (`id`, `description`, `quantity`, `amount`, `VAT`, `invoice_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Evaluation Immobilière', 1, 2083.33, 0.20, 1, '2024-06-01 23:56:45', NULL, NULL),
(2, 'Evaluation de la valeur vénale\nd’un « Bien » immobilier, de type « Entrepôts », sis Boulevard SB 24, Zone Industrielle Sidi Bernoussi,\nCasablanca - Maroc. Objet des TF N°211/C & 107.929/49.', 1, 6500.00, 0.20, 2, '2024-06-01 23:56:45', NULL, NULL),
(3, 'Evaluation immobilière  d\'un projet Construction d\'un projet en SS + 4 Etages de TF 74,677/78 d’une superficie de 480m², Sis Skhirate\n- Expertise du Foncier\n- Evaluation du Chiffre d\'affaires du projet\n- Validation du programme d\'investissement.', 1, 7375.00, 0.20, 3, '2024-06-01 23:56:45', NULL, NULL),
(4, 'Evaluation immobilière du projet ayant le T.F N° 68.482/R de superficie 7.040m²sis Temara\n\n- Expertise du Foncier\n- Evaluation du Chiffre d\'affaires du projet\n- Validation du programme d\'investissement.', 1, 9500.00, 0.20, 4, '2024-06-01 23:56:45', NULL, NULL),
(5, 'Evaluation immobilière du projet ayant le T.F N° 78.707/64 de superficei 225m²sis Hay Hassani\n\n- Expertise du Foncier\n- Evaluation du Chiffre d\'affaires du projet\n- Validation du programme d\'investissement.', 1, 8075.00, 0.20, 5, '2024-06-01 23:56:45', NULL, NULL),
(6, 'Expertise Immobilière de l’estimation de la valeur vénale d’un « Bien » immobilier, de type « Immeuble », Lotissement « SOUKAINA », Lot N°34, Zone Industrielle Sidi Maarouf, Casablanca Maroc, objet du T.F N°16.029/63.', 1, 5500.00, 0.20, 6, '2024-06-01 23:56:45', NULL, NULL),
(7, 'Evaluation Immobilière d\'un local Commercial ayant le T.F N° 36.902/01, de superficie 119 m², sis Casablanca ANFA', 1, 2805.00, 0.20, 7, '2024-06-01 23:56:45', NULL, NULL),
(8, 'Expertise de la valeur locative d’un actif immobilier, de type\'sis Rue ABOU ZAID BAAKILI, Roches Noires, Préfecture d\'Aïn Sebaâ-Hay Mohammadi, Casablanca- Maroc, objet des TF N°39.623/C & 31.336/C & 31.931/C.', 1, 10000.00, 0.20, 8, '2024-06-01 23:56:45', NULL, NULL),
(9, 'Evaluation immobilière d\'un bureau ayant le T.F N° 59.128/01 de superficie 125 m² sis Casablanca ANFA', 1, 3000.00, 0.20, 9, '2024-06-01 23:56:45', NULL, NULL),
(10, 'Evaluation Immobilière', 1, 3000.00, 0.20, 10, '2024-06-01 23:56:45', NULL, NULL),
(11, 'Expertise Immobilière', 1, 2083.33, 0.20, 11, '2024-06-01 23:56:45', NULL, NULL),
(12, 'Expertise Immobilière  concernant la détermination d’une fourchette de prix de la zone où sont situés les « 03 Immeubles », sis Impasse Galilée, Immeuble A, B & C, Quartier Gauthier, Casablanca- Maroc. Objet du T.F Mère N° 21.160/D.', 1, 2200.00, 0.20, 12, '2024-06-01 23:56:45', NULL, NULL),
(13, 'Evaluation immobilière d\'un appartement ayant le T.F N° 67.209/64 de superficie 76 m²sis Casablanca', 1, 2500.00, 0.20, 13, '2024-06-01 23:56:45', NULL, NULL),
(14, 'Expertise Immobilière', 1, 2500.00, 0.20, 14, '2024-06-01 23:56:45', NULL, NULL),
(15, 'Expertise Immobilière d’un « Bien » immobilier, de type « Plateau Bureau », sis Boulevard Oued Melouia, Lotissement « Selouane»,\nImmeuble Office 51, 2ème étage, Bureau n°9, Quartier Oulfa, Arrondissement Hay Hassani Casablanca –\nMaroc, objet du T.F N°63.086/64.', 1, 1500.00, 0.20, 15, '2024-06-01 23:56:45', NULL, NULL),
(16, 'Evaluation d\'un lot de  d\'immeuble en (R+2) ayant le TF N° 73.310/13 de superficie de 108 m²', 1, 3000.00, 0.20, 16, '2024-06-01 23:56:45', NULL, NULL),
(17, 'Evaluation Immobilière d’un actif immobilier, de type « Ecole », pour le compte de la BANK AL YOUSR, sis Quartier El Qods, Arrondissement Sidi Bernoussi, Casablanca - Maroc, objet du TF N°10.944/32.', 1, 6500.00, 0.20, 17, '2024-06-01 23:56:45', NULL, NULL),
(18, 'Action de Formation : Séminaire en Inititation en Immobilier .', 1, 2000.00, 0.20, 18, '2024-06-01 23:56:45', NULL, NULL),
(19, 'Evaluation de la valeur vénale, d’un actif immobilier, de type « Entrepôts » , sis Zone industrielle « OULAD HADDA », Commune Sidi Hajjaj Oued Hassar, Province de Médiouna, Casablanca - Maroc. Objet du TF N°210.388/12.', 1, 6500.00, 0.20, 19, '2024-06-01 23:56:45', NULL, NULL),
(20, 'Evaluation de la valeur vénale d’un « Bien » immobilier, de type « Immeuble », sis 43, Angle Boulevard d’Anfa & Rue Abdellah Guennoun, Préfecture d’Anfa, Casablanca- Maroc. Objet des TF N°110/D & 47.522/C.', 1, 6500.00, 0.20, 20, '2024-06-01 23:56:45', NULL, NULL),
(21, 'Evaluation dela valeur vénale d’un « Bien » immobilier, de type « Immeuble », sis Rue Corniche d’Anfa, Préfecture d’Anfa, Casablanca- Maroc. Objet des TF N° 108.775/01, 108.776/01, 108.777/01, 108.778/01, 108.779/01, 108.780/01, 108.781/01 & 108.782/01.', 1, 6500.00, 0.20, 21, '2024-06-01 23:56:45', NULL, NULL),
(22, 'Animation de formation en BIM 360', 4, 11000.00, 0.20, 22, '2024-06-01 23:56:45', NULL, NULL),
(23, 'Evaluation immobilière d\'un appartement ayant le T.F N° 28.894/64 de superficie 126 m²sis Bd Yacoub El Mansour, Quartier Beauséjour, Casablanca', 1, 1666.67, 0.20, 23, '2024-06-01 23:56:45', NULL, NULL),
(24, 'Expertise Immobilière d’un « Bien » immobilier, de type « Villa », sis Résidence Salima, Villa n°1, Rue Oued El Malih, Commune deDar Bouazza, Province de Nouaceur, Casablanca – Maroc. Objet du : TF N°7.278/63.', 1, 3000.00, 0.20, 24, '2024-06-01 23:56:45', NULL, NULL),
(25, 'Expertise immobilière d’un bien immobilier de type « Unité industrielle », sis Zone Industrielle d’El Jadida, El Jadida-Maroc, objet des T.F N°63.354/08, 63.356/08 & 63.358/08.', 1, 5000.00, 0.20, 25, '2024-06-01 23:56:45', NULL, NULL),
(26, 'Evaluation immobilière d\'un appartement ayant le T.F N° 17.560/53 de superficie 124 m²sis Berrechid', 1, 2500.00, 0.20, 26, '2024-06-01 23:56:45', NULL, NULL),
(27, 'Evaluation d\'un lot de terrain ayant le TF N° 52.451/63 de superficie de 500 m², sis Casablanca', 1, 3000.00, 0.20, 27, '2024-06-01 23:56:45', NULL, NULL),
(28, 'Evaluation Immobilière du Projet ayant le TF N°131.430/04  de superficie de  86.140 m², sis PREFECTURE DE MARRAKECH COMMUNE TASSOULTANT.', 1, 9500.00, 0.20, 28, '2024-06-01 23:56:45', NULL, NULL),
(29, 'Evaluation immobilière d\'un appartement ayant le T.F N° 57.579/64  de superficie 127 m²sis Casablanca', 1, 2500.00, 0.20, 29, '2024-06-01 23:56:45', NULL, NULL),
(30, 'Evaluation immobilière d’un « Bien » immobilier, de type « Lot de Terrain pour immeuble », sis Avenue Naoual, Lotissement « RIAD», Lot N°28, Arrondissement Saiss, Fès - Maroc, objet du T.F N° 144.187/07.', 1, 3500.00, 0.20, 30, '2024-06-01 23:56:45', NULL, NULL),
(32, 'Evaluation immobilière d\'un centre de visite Technique à Sidi Smail, Douar Lahmouchat, El Jadida, ayant le TF N°11.338/75 de superficie de 5.106m²', 1, 3750.00, 0.20, 32, '2024-06-01 23:56:45', NULL, NULL),
(33, 'Evaluation Immobilière du Projet ayant le TF N° 185200/13 de superficie de  400 m², sis Kenitra :\n\n- Expertise du Foncier\n- Evaluation du Chiffre d\'affaires du projet\n- Validation du programme d\'investissement.', 1, 7600.00, 0.20, 33, '2024-06-01 23:56:45', NULL, NULL),
(34, 'Evaluation Immobilière du  Projet de T.F N° 100.392/C  de superficie de 449 m², sis Angle Rue des Courlis & Rue des Eperviers, Quartier Riviera, -Casablanca', 1, 8075.00, 0.20, 34, '2024-06-01 23:56:45', NULL, NULL),
(35, 'Evaluation Immobilière d’un projet immobilier de type « Immeuble en SS R+4 », sis Route de Mehdia, Kénitra - Maroc. Objet des TF 109.623/13 & 109.625/13.\n\n- Expertise du Foncier\n- Evaluation du Chiffre d\'affaires du projet\n- Validation du programme d\'investissement.', 1, 9500.00, 0.20, 35, '2024-06-01 23:56:45', NULL, NULL),
(36, 'Expertise Immobilière d’un « Bien » immobilier, de type « Commerce », situé au Lotissement « Le Vallon », Lot N°1443, Kenitra -Maroc, objet du T.F N°189.019/13.', 1, 3500.00, 0.20, 36, '2024-06-01 23:56:45', NULL, NULL),
(37, 'Expertise Immobilière  d’un « Bien » immobilier, de type « Maison », sis 3, Rue El Harcha, Lotissement « Jnane Ben Rahal », Arrondissement de Tabriquet, Salé - Maroc, objet du T.F N° 9.871/20.', 1, 3000.00, 0.20, 37, '2024-06-01 23:56:45', NULL, NULL),
(38, 'Evaluation de 06 lots de terrains (R+3) et (R+4) situés au lotissement AL ANBRA, sis Fes ', 6, 1000.00, 0.20, 38, '2024-06-01 23:56:45', NULL, NULL),
(40, 'Evaluation immobilière d\'une Villa ayant le T.F N° 25.137/25 de superficie 486 m²sis Bouznika-Provaince Ben Slimane', 1, 2500.00, 0.20, 40, '2024-06-01 23:56:45', NULL, NULL),
(41, 'Evaluation immobilière d’un « Bien » immobilier, de type « SHOWROOM », pour le compte de Bank Al Yousr, sis Route de Martil-Chabrit, Résidence « AVIATION », Commune urbaine de Tétouan, Tétouan - Maroc, objet du T.F N°68.720/19.', 1, 3500.00, 0.20, 41, '2024-06-01 23:56:45', NULL, NULL),
(42, 'Evaluation d\'un état d\'avancement du projet immobilier, de type « Immeuble en 2SS R+5+1 retrait », sis Lotissement « MALABATA HILLS », Lot N°93 & 94, Tanger - Maroc, objet des T.F N°240.674/06 & 240.675/06.', 1, 3500.00, 0.20, 42, '2024-06-01 23:56:45', NULL, NULL),
(43, 'Expertise d’un « Bien » immobilier, de type « Terrain », sis Douar Oulad Slimane, Commune rurale Lakhyayta, Province de Settat, Grand Casablanca - Maroc. Objet du TF N°76.140/53.', 1, 3500.00, 0.20, 43, '2024-06-01 23:56:45', NULL, NULL),
(44, 'Action de Formation : Séminaire en Evaluatio Immobilière .', 1, 2000.00, 0.20, 44, '2024-06-01 23:56:45', NULL, NULL),
(45, 'Evaluation Immobilière d’un projet immobilier, sis Bouskoura, Casablanca - Maroc. Objet des TF 62,542/63', 1, 8075.00, 0.20, 45, '2024-06-01 23:56:45', NULL, NULL),
(46, 'Evaluation immobilière d\'un Bureau ayant le T.F N° 77.842/45 de superficie 53 m²sis Roche Noires-Casablanca', 1, 2500.00, 0.20, 46, '2024-06-01 23:56:45', NULL, NULL),
(47, 'Expertise d’un projet immobilier, de type « Villas en Villégiature », sis Avenue des Héritiers, Quartier Californie, Arrondissement Ain Chock, Casablanca – Maroc. Objet du T.F.M N° 44.083/C,', 1, 6500.00, 0.20, 47, '2024-06-01 23:56:45', NULL, NULL),
(48, 'Expertise d’un l’estimation de la valeur vénale, d’un « Bien » immobilier, de type « Villa » à usage Bureaux », sis Boulevard Franklin Roosevelt, Arrondissement Anfa, Casablanca – Maroc. Objet du T.F N° 50.983/C.', 1, 6500.00, 0.20, 48, '2024-06-01 23:56:45', NULL, NULL),
(49, 'Evaluation Immobilière l’estimation de la valeur vénale Evaluation d\'un Bien immobilier, de type « Terrain », sis Commune de Bouknadel, Préfecture de Rabat-Salé, Sidi Bouknadel - Maroc. Objet du TF N°1.354/20.', 1, 3500.00, 0.20, 49, '2024-06-01 23:56:45', NULL, NULL),
(50, 'Expertise Immobilière', 1, 1500.00, 0.20, 50, '2024-06-01 23:56:45', NULL, NULL),
(51, 'Expertise Immobilière', 1, 1500.00, 0.20, 51, '2024-06-01 23:56:45', NULL, NULL),
(52, 'Evaluation Immobilière du Projet HAY MOHAMMADI   ayant le TF N° 137.469/23, 137.470/23, 137.471/23, 137.472/23 et 137.471/23, sis SAFI.', 1, 6500.00, 0.20, 52, '2024-06-01 23:56:45', NULL, NULL),
(53, 'Evaluation Immobilière du Projet  BORJ NADOR ayant le TF N° 93.807/23; 9.801/23, 93.803/23, 93.804/23, 93.805/23 et 93.806/23,  sis SAFI.', 1, 6000.00, 0.20, 53, '2024-06-01 23:56:45', NULL, NULL),
(54, 'Evaluation d\'un lot de terrain ayant le TF N° 101.236/25 de superficie de 200 m², sis AL Mansouria', 1, 3000.00, 0.20, 54, '2024-06-01 23:56:45', NULL, NULL),
(55, 'Expertise Immobilière', 1, 2500.00, 0.20, 55, '2024-06-01 23:56:45', NULL, NULL),
(56, 'Evaluation d\'une unité ayant le TF N° 71.914/53 de superficie 184.460m² sis Had Soualem - Casablanca', 1, 6500.00, 0.20, 56, '2024-06-01 23:56:45', NULL, NULL),
(57, 'Evaluation d\'un immeuble  ayant le TF N° 11.298/45 de superficie 131m² sis Sidi Moumen - Casablanca', 1, 4500.00, 0.20, 57, '2024-06-01 23:56:45', NULL, NULL),
(58, 'Evaluation Immobilière d’un projet immobilier, sis TAHANAOUTE - Maroc. Objet de TF 57.834/04 de superficie de 48.789 m²', 1, 8150.00, 0.20, 58, '2024-06-01 23:56:45', NULL, NULL),
(59, 'Evaluation immobilière d\'un Terrain ayant le T.F N° 96.869/45 de superficie 45.727 m²sis Marrakech', 1, 4000.00, 0.20, 59, '2024-06-01 23:56:45', NULL, NULL),
(60, 'Evaluation d\'un établissement scolaire ayant le TF N°4.550/C de superficie 1.204m²', 1, 6000.00, 0.20, 60, '2024-06-01 23:56:45', NULL, NULL),
(61, 'Evaluation d\'un terrain abritant une villa, ayant le TF N° 100.853/04 de superficie 432m² sis Marrakech', 1, 3500.00, 0.20, 61, '2024-06-01 23:56:45', NULL, NULL),
(62, 'Evaluation d\'un lot de terrain ayant le TF N° 137.743/26 de superficie de 100 m², sis Mohammedia', 1, 3000.00, 0.20, 62, '2024-06-01 23:56:45', NULL, NULL),
(63, 'Expertise Immobilière  de la valeur vénale d’un ensemble de « Villas », appartenant à deux projets, de nombre total de 32 villas, sis Boulevard Abdelhadi Boutaleb, Résidence « ANAFEE » et « ARGANIER », Arrondissement Hay Hassani, Casablanca – Maroc. Objet du T.F mère N°424/C', 1, 6500.00, 0.20, 63, '2024-06-01 23:56:45', NULL, NULL),
(64, 'Expertise Immobilière de type « Terrain », sis Avenue Al Massira Al Khadra, Quartier Jerifat, Safi – Maroc. Objet du TF N°3.073/Z.', 1, 3333.33, 0.20, 64, '2024-06-01 23:56:45', NULL, NULL),
(65, 'Evaluation de deux commerces ayant les TF N°73.581/01 et 73.580/01 de superficie 145 m² et 172m²', 2, 2000.00, 0.20, 65, '2024-06-01 23:56:45', NULL, NULL),
(66, 'Evaluation Immobilière  d\'un « Bien » immobilier, de type « Terrain », sis Quartier Zoubair, Préfecture Hay Hassani, Casablanca - Maroc. Objet du TF N°10.941/33.', 1, 3333.33, 0.20, 66, '2024-06-01 23:56:45', NULL, NULL),
(67, 'Evalaution Immobilière du lot terrain ayant le TF N°54.601/63de superficie 131m²,  sis Nouaceur.', 1, 3000.00, 0.20, 67, '2024-06-01 23:56:45', NULL, NULL),
(68, 'Evaluation Immobilière d’un bien immobilier de type « maison », sis , Temara- Maroc. Objet du TF N° 24,659/38 de Superficie 63m²', 1, 3000.00, 0.20, 68, '2024-06-01 23:56:45', NULL, NULL),
(69, 'Evaluation d\'un état d\'avancement du projet porté par  la Sté Boyout EL MINIAA, Objet des TF N° 154.777/53 & 154.778/53.', 1, 3500.00, 0.20, 69, '2024-06-01 23:56:45', NULL, NULL),
(70, 'Evalaution du Projet ayant le T.F N°16704/D de superficie 11.940m² sis commune Ouled Azzouz:\n- Evalaution du Foncier\n- Evaluation du Programme d\'investissment.', 1, 7000.00, 0.20, 70, '2024-06-01 23:56:45', NULL, NULL),
(71, 'Evaluation Immobilière d’un bien immobilier de type « villa », sis , El Jadida- Maroc. Objet du TF N° 110.277/08 de Superficie 190m²', 1, 3000.00, 0.20, 71, '2024-06-01 23:56:45', NULL, NULL),
(72, 'Evaluation Immobilière d’un projet immobilier, sis Berrechid, Casablanca - Maroc. Objet des TF 146.033/53 (197m²); 146.034/53 (203m²);146.036/53(202m²) et 146.035/53 (197m²)\n\n- Expertise du Foncier\n- Evaluation du Chiffre d\'affaires du projet\n- Validation du programme d\'investissement.', 1, 8500.00, 0.20, 72, '2024-06-01 23:56:45', NULL, NULL),
(73, 'Expertise immobilière d\'un complexe sportif faisant l\'objet des T.F N° TF68125/C; TF120567/C et TF126155/C de superficie globale de 5107.50 m², sis quartier LA GIRONDE - Casablanca\n- Expertise du Foncier\n- Validation du programme d\'investissement.', 1, 6500.00, 0.20, 73, '2024-06-01 23:56:45', NULL, NULL),
(74, 'Evaluation de 04 Terrains Sis Had Soualem ayant les T.F :\n- N°105.845/53 de superficie 632m² \n- N° 105.837/53 de superficie 564m²\n- N° 105.862/53 de superficie 876m²\n- N° 105.846/53 de superficie 618m²', 1, 3500.00, 0.20, 74, '2024-06-01 23:56:45', NULL, NULL),
(75, 'Action de formation : Introduction à l\'immobilier le 08 et 10 Mai 2024', 1, 1666.67, 0.20, 75, '2024-06-01 23:56:45', NULL, NULL),
(76, 'Evaluation Immobilière d’un « Bien » immobilier, de type « Lot de terrain pour villa », pour le compte de Banque AL Yousr, sis Lot N°1345, Lotissement « AL WIFAQ », Rue Arrachad, Préfecture de Skhirate-Témara, Casablanca - Maroc, objet du T.F N° 57.107/38.', 1, 3000.00, 0.20, 76, '2024-06-01 23:56:45', NULL, NULL),
(77, 'Evaluation d\'un actif immobilier de type maison ayant le TF N°4089/R de superficie de 182m² sis Rabat Hassane.', 1, 3000.00, 0.20, 77, '2024-06-01 23:56:45', NULL, NULL),
(78, 'Evaluation Immobilière d’un projet immobilier , sis , SIDI Othmane Baladiyat Lahraouiyine OULAD MOULOUK . Objet du TF N° 187.098/12 de Superficie 10094m²\n\n- Expertise du Foncier\n- Validation du programme d\'investissement.', 1, 6500.00, 0.20, 78, '2024-06-01 23:56:45', NULL, NULL),
(79, 'Evalaution Terrain ayant le TF N°128471/63 de superficie 271m² sis commune OULED SALEH NOUACEUR', 1, 3000.00, 0.20, 79, '2024-06-01 23:56:45', NULL, NULL),
(80, 'Evaluation Immobilière du Projet ayant le TF N° 78.713/06 de superficie de  51.746 m², sis ASSILA :\n\n- Expertise du Foncier\n- Etat d\'avancement\n- Evaluation du Chiffre d\'affaires du projet\n- Validation du programme d\'investissement.', 1, 12500.00, 0.20, 80, '2024-06-01 23:56:45', NULL, NULL),
(81, 'Evaluation du projet   objet de TF 55289/R, sis Ain Aouda :\n- Evaluation du Chiffre d\'affaires du projet\n- Validation du programme d\'investissement.\n- Etat d\'avancement du projet', 1, 9500.00, 0.20, 81, '2024-06-01 23:56:45', NULL, NULL),
(82, 'Evaluation immobilière relatif au terrain ayant le TF 99.799/78 d’une superficie de de 1.526m², Sis Skhirat TEMARA', 1, 3000.00, 0.20, 82, '2024-06-01 23:56:45', NULL, NULL),
(83, 'Evaluation du projet en cours de construction  objet de TF : 74030/58 – 74031/58 sis Salé :\n\n- Evaluation du Chiffre d\'affaires du projet\n- Validation du programme d\'investissement.\n- Etat d\'avancement du projet', 1, 8075.00, 0.20, 83, '2024-06-01 23:56:45', NULL, NULL),
(84, 'Evaluation immobilière relatif au terrain ayant le TF N° 123.671/63 d’une superficie de 1.246m², Sis Bouskoura', 1, 3000.00, 0.20, 84, '2024-06-01 23:56:45', NULL, NULL),
(85, 'Evaluation immobilière relatif au terrain ayant le TF N° 74.205/47 d’une superficie de 207m², Sis Casablanca', 1, 3000.00, 0.20, 85, '2024-06-01 23:56:45', NULL, NULL),
(86, 'Evaluation Immobilière du Projet en (R+5) faisant l\'objet du  TF N° 31.05/23,  sis SAFI :\n\n- Expertise du Foncier\n- Evaluation C.A\n- Validation du programme d\'investissement.', 1, 8100.00, 0.20, 86, '2024-06-01 23:56:45', NULL, NULL),
(87, 'Evaluation Immobilière du Projet en (R+4) faisant l\'objet du  TF N° 19.712/J,  sis SAFI :', 1, 7600.00, 0.20, 87, '2024-06-01 23:56:45', NULL, NULL),
(88, 'Evaluation Immobilière d’unTerrain , sis , Zone Industrielle de SAPINO NOUACER . Objet du TF N° 8884/63  de Superficie 14110m²\n- Expertise du Foncier\n- Validation du programme d\'investissement.', 1, 6500.00, 0.20, 88, '2024-06-01 23:56:45', NULL, NULL),
(89, 'Evaluation des Fonds de Commerce', 5, 5000.00, 0.20, 89, '2024-06-01 23:56:45', NULL, NULL),
(90, 'Evaluation des terrains ayant  :\n-  TF N° 1411/ 33de superficie  1.252m² \n- TF N°811/T superficie 8.039m² \n- TF N° 62.586/C de superficie 1.056m²', 3, 3500.00, 0.20, 90, '2024-06-01 23:56:45', NULL, NULL),
(91, 'Evaluation Terrain ayant TF N° 125034/53 de superficie de 244m² sis Berrechid', 1, 3000.00, 0.20, 91, '2024-06-01 23:56:45', NULL, NULL),
(92, 'Evaluation Immobilère d\'un bureau ayant le TF N° 51,525/45 de superficie 120m² sis Casablanca ', 1, 2000.00, 0.20, 92, '2024-06-01 23:56:45', NULL, NULL),
(93, 'Evaluation Immobilère de « 03 Biens » immobiliers, de type « Commerce », sis N 168, Antaria 1 Rue 7, Préfecture d\'Aïn Sebaâ-Hay Mohammadi, Casablanca - Maroc, objets des T.F N°21.267/32, 21.268/32 & 21.269/32.', 1, 2083.33, 0.20, 93, '2024-06-01 23:56:45', NULL, NULL),
(94, 'Action de formation : Introduction à l\'immobilier le 08 et 10 Mai 2024', 1, 1666.67, 0.20, 94, '2024-06-01 23:56:45', NULL, NULL),
(95, 'Evaluation d\'un actif immobilier de type Duplexe ayant le TF N°231763/06 de superficie de 181m² sis TAGHAZOUTE-AGADIR,', 1, 3750.00, 0.20, 95, '2024-06-01 23:56:45', NULL, NULL),
(96, 'Evaluation Immobilière d\'un terrain ayant le T.F N° 121.221/01 de superficie 768 m²sis Quartier sidi Abderrahmane Casablanca', 1, 3000.00, 0.20, 96, '2024-06-01 23:56:45', NULL, NULL),
(97, 'Evaluation Immobilière du Projet en (R+5) faisant l\'objet du  TF N° 93.197/47 de superficie 1.155,  sis Casablanca :\n\n- Expertise du Foncier\n- Validation du C.A\n- Validation du programme d\'investissement.', 1, 8075.00, 0.20, 97, '2024-06-01 23:56:45', NULL, NULL),
(98, 'Evaluation du Terrain ayant  le T.F N° 51.265/53 de superficie de 26.684m² sis Had Soualem', 1, 5000.00, 0.20, 98, '2024-06-01 23:56:45', NULL, NULL),
(99, 'Evaluation Immobilière d\'un terrain ayant le T.F N° 191.365/63 de superficie 455 m²sis Dar Bouazza Casablanca', 1, 3000.00, 0.20, 99, '2024-06-01 23:56:45', NULL, NULL),
(100, 'Evaluation immobilière d\'une maison ayant le TF N° 15821/K de superficie de 173m² sis Meknes', 1, 3500.00, 0.20, 100, '2024-06-01 23:56:45', NULL, NULL),
(101, 'Evaluation du Fond de commerce de la Sté Librairie IQRAE', 1, 4000.00, 0.20, 101, '2024-06-01 23:56:45', NULL, NULL),
(102, 'Evaluation Immobilière du Projet de lotissement  sis Commune BEN SLIMANE, BEN SLIMANE - Maroc. Objet du TF N°11.257/C.\n\n- Expertise du Foncier\n- Validation du C.A\n- Validation du programme d\'investissement.', 1, 9500.00, 0.20, 102, '2024-06-01 23:56:45', NULL, NULL),
(103, 'Evaluation Immobilière des travaux d\'aménagement pour le projet immobilier, de type « Ecole », pour le compte de la BANK AL YOUSR, sis Quartier El Qods, Arrondissement Sidi Bernoussi, Casablanca - Maroc, objet du TF N°10.944/32.', 1, 3000.00, 0.20, 103, '2024-06-01 23:56:45', NULL, NULL),
(104, 'Evaluation d\'une villa faisant l\'objet du TF N° 40.018/53 de superficie 189m², sis  BERRECHID', 1, 3000.00, 0.20, 104, '2024-06-01 23:56:45', NULL, NULL),
(105, 'Evaluation  d’un « Bien » immobilier, de type « Appartement », sis Résidence Sun Square, Immeuble 15, 2ème étage, Appt N°13, Quartier Almaz, Commune de Ouled Azzouz, Province de Nouaceur, Casablanca - Maroc. Objet du T.F N° 179.873/63.', 1, 2500.00, 0.20, 105, '2024-06-01 23:56:45', NULL, NULL),
(106, 'Evaluation Immobilière du Projet  porté par la Sté ZADRI INTERNATIONAL sis Martil.', 1, 12150.00, 0.20, 106, '2024-06-01 23:56:45', NULL, NULL),
(107, 'Evaluation Immobilière du Projet en (ss R+3 & R+5) faisant l\'objet du  TF N° 22.579/C de superficie 866 m²,  sis Casablanca :\n\n- Expertise du Foncier\n- Validation du C.A\n- Validation du programme d\'investissement.', 1, 8075.00, 0.20, 107, '2024-06-01 23:56:45', NULL, NULL),
(108, 'Evaluation Immobilière du Projet en (ss R+4) faisant l\'objet du  TF N° 169.904/13 de superficie 267m²,  sis Kenitra :\n\n- Expertise du Foncier\n- Validation du C.A\n- Validation du programme d\'investissement.', 1, 9500.00, 0.20, 108, '2024-06-01 23:56:45', NULL, NULL),
(109, 'Evaluation immobilière d\'un terrain faisant l\'objet de TF N° 191.362/63 de superficie de 438m², sis Dar Bouazza Casablanca', 1, 3000.00, 0.20, 109, '2024-06-01 23:56:45', NULL, NULL),
(110, 'Evaluation Immobilière du Projet  porté par la Sté BEL ENDROIT sis Marrakech:\n\n- Expertise du Foncier\n- Validation du C.A\n- Validation du programme d\'investissement.', 1, 10000.00, 0.20, 110, '2024-06-01 23:56:45', NULL, NULL),
(111, 'Evaluation d\'un terrain faisant l\'objet du TF N° 95.539/26 de superficie 518m², sis  Mohammedia', 1, 3000.00, 0.20, 111, '2024-06-01 23:56:45', NULL, NULL),
(112, 'Evaluation immobilière d’un « Bien » immobilier, de type « Lot de Terrain pour villa », sis Lot N°529, Lotissement « Al Firdaous », Commune Urbaine Ain Aouda, Préfecture de Skhirat-Témara, Témara - Maroc., objet du T.F N° 106.620/38.\n', 1, 3000.00, 0.20, 112, '2024-06-01 23:56:45', NULL, NULL),
(113, 'Evaluation du projet en cours de construction  objet de TF N° 2023/K sis MEKNES EL MENZAH :\n\n-Evaluation du Chiffre d\'affaires du projet\n- Validation du programme d\'investissement.\n- Etat d\'avancement du projet\n+ Forfait Déplacement (500dh)', 1, 10000.00, 0.20, 39, '2024-06-02 12:20:38', '2024-06-02 12:20:38', NULL),
(118, 'Evaluation immobilière d\'un bureau ayant le TF N° 11760/71, sis Bd Abdlmoumen, Casablanca', 1, 1500.00, 0.20, 31, '2024-06-02 18:51:36', '2024-06-02 18:51:36', NULL),
(129, 'Evaluation immobilière d’un « Bien » immobilier, de type « Villa », sis Avenue Ben Badis, Lotissement « AL QODS », Lot N°172, El Jadida – Maroc. Objet du T.F N°71.574/08.', 1, 3000.00, 0.20, 113, '2024-06-07 18:50:56', '2024-06-08 17:45:23', NULL),
(130, 'Evaluation Immobilière', 1, 2000.00, 0.20, 114, '2024-06-08 15:04:52', '2024-06-08 15:20:03', NULL),
(131, 'Action de la formation sur la thématique \"Evaluation Immobilière\"', 1, 3000.00, 0.20, 115, '2024-06-08 15:04:52', NULL, NULL),
(132, 'Action de la formation sur la thématique \"Evaluation Immobilière\"', 1, 2500.00, 0.20, 116, '2024-06-08 15:04:52', NULL, NULL),
(133, 'Action de la formation sur la thématique\n\"Evaluation\nImmobilière\"\n(Le 31 Janvier à l\'Hôtel Palace d\'ANFA)', 1, 3000.00, 0.20, 117, '2024-06-08 15:04:52', NULL, NULL),
(134, 'l’estimation de la valeur vénale, d’un « Bien » immobilier, de type « Lot de terrain pour villa », sis Lotissement « ANNASR », Lot N° S7-RV5-15, Commune Ouled Saleh, Casablanca - Maroc. Objet du T.F N° 136.203/63.', 1, 2500.00, 0.20, 118, '2024-06-08 15:04:52', NULL, NULL),
(135, 'Expertise Immobilière', 1, 1500.00, 0.20, 119, '2024-06-08 15:04:52', NULL, NULL),
(136, 'Expertise Immobilière', 1, 1250.00, 0.20, 120, '2024-06-08 15:04:52', NULL, NULL),
(137, 'Expertise Immobilière', 1, 1250.00, 0.20, 121, '2024-06-08 15:04:52', NULL, NULL),
(138, 'Expertise Immobilière', 1, 2000.00, 0.20, 122, '2024-06-08 15:04:52', NULL, NULL),
(139, 'Expertise Immobilière', 1, 2000.00, 0.20, 123, '2024-06-08 15:04:52', NULL, NULL),
(140, 'Expertise Immobilière', 1, 1500.00, 0.20, 124, '2024-06-08 15:04:52', NULL, NULL),
(141, 'Expertise Immobilière', 3, 1000.00, 0.20, 125, '2024-06-08 15:04:52', NULL, NULL),
(142, 'Expertise Immobilière', 1, 1250.00, 0.20, 126, '2024-06-08 15:04:52', NULL, NULL),
(143, 'Expertise Immobilière', 1, 1500.00, 0.20, 127, '2024-06-08 15:04:52', NULL, NULL),
(144, 'Expertise Immobilière', 1, 1333.33, 0.20, 128, '2024-06-08 15:04:52', NULL, NULL),
(145, 'Expertise Immobilière', 1, 1500.00, 0.20, 129, '2024-06-08 15:04:52', NULL, NULL),
(146, 'Expertise Immobilière', 1, 1250.00, 0.20, 130, '2024-06-08 15:04:52', NULL, NULL),
(147, 'Expertise Immobilière', 1, 1250.00, 0.20, 131, '2024-06-08 15:04:52', NULL, NULL),
(148, 'Expertise Immobilière', 1, 1250.00, 0.20, 132, '2024-06-08 15:04:52', NULL, NULL),
(149, 'Expertise Immobilière', 1, 1250.00, 0.20, 133, '2024-06-08 15:04:52', NULL, NULL),
(150, 'Expertise Immobilière', 1, 1250.00, 0.20, 134, '2024-06-08 15:04:52', NULL, NULL),
(151, 'Expertise Immobilière', 1, 1500.00, 0.20, 135, '2024-06-08 15:04:52', NULL, NULL),
(152, 'Expertise Immobilière', 1, 1500.00, 0.20, 136, '2024-06-08 15:04:52', NULL, NULL),
(153, 'Expertise Immobilière', 1, 1250.00, 0.20, 137, '2024-06-08 15:04:52', NULL, NULL),
(154, 'Expertise Immobilière', 1, 1500.00, 0.20, 138, '2024-06-08 15:04:52', NULL, NULL),
(155, 'Expertise Immobilière', 1, 1250.00, 0.20, 139, '2024-06-08 15:04:52', NULL, NULL),
(156, 'Expertise Immobilière', 1, 1250.00, 0.20, 140, '2024-06-08 15:04:52', NULL, NULL),
(157, 'Expertise Immobilière', 1, 1250.00, 0.20, 141, '2024-06-08 15:04:52', NULL, NULL),
(158, 'Expertise Immobilière', 1, 1250.00, 0.20, 142, '2024-06-08 15:04:52', NULL, NULL),
(159, 'Action de la formation sur la thématique \"Evaluation Immobilière\"', 1, 3000.00, 0.20, 143, '2024-06-08 15:04:52', NULL, NULL),
(160, 'Expertise Immobilière', 1, 1666.67, 0.20, 144, '2024-06-08 15:04:52', NULL, NULL),
(161, 'Expertise Immobilière', 1, 1250.00, 0.20, 145, '2024-06-08 15:04:52', NULL, NULL),
(162, 'Expertise Immobilière', 1, 1500.00, 0.20, 146, '2024-06-08 15:04:52', NULL, NULL),
(163, 'Expertise Immobilière', 1, 1250.00, 0.20, 147, '2024-06-08 15:04:52', NULL, NULL),
(164, 'Expertise Immobilière', 1, 1250.00, 0.20, 148, '2024-06-08 15:04:52', NULL, NULL),
(165, 'Expertise Immobilière', 1, 1250.00, 0.20, 149, '2024-06-08 15:04:52', NULL, NULL),
(166, 'Expertise Immobilière', 1, 2000.00, 0.20, 150, '2024-06-08 15:04:52', NULL, NULL),
(167, 'Expertise Immobilière', 1, 4500.00, 0.20, 151, '2024-06-08 15:04:52', NULL, NULL),
(168, 'Expertise Immobilière', 1, 2000.00, 0.20, 152, '2024-06-08 15:04:52', NULL, NULL),
(169, 'Expertise immobilière d’un Bien immobilier, de type « Villa », sis Rue 31, N°29, Quartier KRIMATE, Arrondissement Ain Chock,\nCasablanca - Maroc, objet du T.F N°41.486/C.', 1, 3333.33, 0.20, 153, '2024-06-08 15:04:52', NULL, NULL),
(170, 'Expertise Immobilière , sis Lot N°317,\nLotissement LINA, Route 1029, Zone Industrielle Sidi Maarouf, Casablanca Maroc, objet du T.F N°1544/47.', 1, 4500.00, 0.20, 154, '2024-06-08 15:04:52', NULL, NULL),
(171, 'Evaluatio immobilière, sis sis Rue Idriss Al Mohammedi, Lot N°06, Arrondissement Anfa,\nCasablanca - Maroc, objet du TF N° 44.749/01.', 1, 4500.00, 0.20, 155, '2024-06-08 15:04:52', NULL, NULL),
(172, 'Expertise immobilière de deux commerces sis 14, Rue Yatrib, Mers Sultan, Commune Sidi Belyout, Casablanca - Maroc, objet du T.F N°2.841/46. et T.F N°2.842/46', 2, 1750.00, 0.20, 156, '2024-06-08 15:04:52', NULL, NULL),
(173, 'Expertise  de la valeur vénale\ndes constructions d’un « Bien » immobilier, de type « Unité industrielle », sis PARC INDUSTRIEL D’OULED\nSALEH, Lot N°84, Province de Nouaceur, Commune d’Ouled Saleh, Casablanca-Maroc, objet du T.F.M\nN°4.678/63.', 1, 3000.00, 0.20, 157, '2024-06-08 15:04:52', NULL, NULL),
(174, 'Expertise Immobilière sis Boulevard Abdelhadi Boutaleb, Lot N°02, Arrondissement Hay Hassani, Casablanca- Maroc. Objet du TF N°19.063/64.', 1, 2000.00, 0.20, 158, '2024-06-08 15:04:52', NULL, NULL),
(175, 'Expertise Immobilière', 1, 1500.00, 0.20, 159, '2024-06-08 15:04:52', NULL, NULL),
(176, 'Expertise Immobilière de la valeur vénale, de trois  «Bien» immobilier, de type « Plateau bureau\n», sis Boulevard Mohamed V, Immeuble N°355, 10ème étage, Préfecture d\'Aïn Sebaâ-Hay Mohammadi,\nCasablanca - Maroc. Objet du T.F N°28.837/32, T. N° 28.838/32 et T.F N°28.839/32', 3, 2500.00, 0.20, 160, '2024-06-08 15:04:52', NULL, NULL),
(177, 'Expertise  immobilizer de la valeur vénale, d’un bien immobilier de type « Unité industrielle », sis RS N°120, Route Sebt Gzoula, Km 5, Safi- Maroc, objet du T.F N°24.497/23.', 1, 3500.00, 0.20, 161, '2024-06-08 15:04:52', NULL, NULL),
(178, 'Expertise immobilière de la valeur vénale, d’un «Bien» immobilier, de type « Lot de terrain pour villa », sis Lotissement « Almaz II », Lot N°39, Rocade Sud-Ouest, Province de Nouaceur, Commune Oulad Azzouz, Casablanca - Maroc. Objet du T.F N° 184.858/63.', 1, 1500.00, 0.20, 162, '2024-06-08 15:04:52', NULL, NULL),
(179, 'Expertise Immobilière', 1, 1250.00, 0.20, 163, '2024-06-08 15:04:52', NULL, NULL),
(180, 'Expertise Immobilière', 1, 1250.00, 0.20, 164, '2024-06-08 15:04:52', NULL, NULL),
(181, 'Expertise Immobilière de deux comemrces sis, Boulevard Mohamed VI, Résidence « Fath Zhar », Immeuble N°16,\nRoute de Mediouna, Casablanca - Maroc, objet du T.F N°692/48 et T.F N°693/48', 2, 1250.00, 0.20, 165, '2024-06-08 15:04:52', NULL, NULL),
(182, 'Expertise Immoblière sis, de type « Plateau bureau », sis 20, Rue n°11, Résidence « Smail » Bureau N°7, Rez-De-Chaussée, Quartier de L’Hermitage, Préfecture Derb Sultan Al Fida, Casablanca – Maroc, objet du T.F N°14.807/34.', 1, 2000.00, 0.20, 166, '2024-06-08 15:04:52', NULL, NULL),
(183, 'Expertise Immobilière  d’un « Bien » immobilier, de type « Villa », sis Angle Rue Oulad Fares & Rue Taghjijt, Villa N°01, Quartier Souissi, Arrondissement Agdal-Ryad, Rabat – Maroc. Objet du T.F N° 23.890/R.', 1, 3000.00, 0.20, 167, '2024-06-08 15:04:52', NULL, NULL),
(184, 'Expertise Immobilière  d’un « Bien » immobilier, de type « Appt », sis Kalaat Al Mansouria, \nImmeuble Laayoune 1, \nRDC,\nProvince de Benslimane\nEl Mansouria\nMaroc.. Objet du T.F N° 19.722/25', 1, 2500.00, 0.20, 168, '2024-06-08 15:04:52', NULL, NULL),
(185, 'Expertise Immobilière pour la valeur vénale, d’un « Bien » immobilier, de type « Riad »  sis\nRue Dar Alglaoui, Derb Alkafta N°03, Quartier Bab Dokala, Marrakech - Maroc. Objet du T.F N° 35.179/M.\n\nEvalaution des travaux de rénovation du Riad objet du T.F N°35.179/M.', 1, 8793.33, 0.20, 169, '2024-06-08 15:04:52', NULL, NULL),
(186, 'Expertise d’un « Bien » immobilier, de type « Terrain », sis Douar Oulad Ahmed Benbrahim, Province El Kelaa des Sraghna, Marrakech- Maroc. Objet du TF N°1.123/72', 1, 6500.00, 0.20, 170, '2024-06-08 15:04:52', NULL, NULL),
(187, 'Expertise Immoblière sis, de type «Bureau », sis 131, Bd d\'Anfa, Appt N°5B, 5ème étage, Arrondissement Sidi Belyout, Prefecture d\'Anfa, Casablanca – Maroc, objet du T.F N°44.327/01.', 1, 2500.00, 0.20, 171, '2024-06-08 15:04:52', NULL, NULL),
(188, 'Expertise de la valeur vénale, d’un «\nBien » immobilier, de type « Villa », sis Rue N°05, Lot Saloma 2, N°113, Préfecture d\'Aïn Sebaâ-Hay  Mohammadi, Casablanca – Maroc. Objet du T.F N° 134.046/12.', 1, 3000.00, 0.20, 172, '2024-06-08 15:04:52', NULL, NULL),
(189, 'Expertise Immioblière de la valeur vénale, d’un actif immobilier, de type « Unité », sis Commune de Had Soualem,\nProvince de Settat, Douar Lakhlaif, Région de Casablanca-Settat- Maroc, objet du TF N°38.902/53.', 1, 5000.00, 0.20, 173, '2024-06-08 15:04:52', NULL, NULL),
(190, 'Expertise Immobilière', 1, 3333.33, 0.20, 174, '2024-06-08 15:04:52', NULL, NULL),
(191, 'Expertise Immobilière', 1, 2000.00, 0.20, 175, '2024-06-08 15:04:52', NULL, NULL),
(192, 'Expertise Immobilière d’un actif immobilier, de type « Unité Industrielle », sis Parc Industriel et Technologique « LOGINTEK », Commune Sidi El Aidi, Settat- Maroc, objet du T.F.M N°1.400/T.', 1, 7000.00, 0.20, 176, '2024-06-08 15:04:52', NULL, NULL),
(193, 'Expertise Immobilière', 1, 1333.33, 0.20, 177, '2024-06-08 15:04:52', NULL, NULL),
(194, 'Expertise Immobilière', 1, 1333.33, 0.20, 178, '2024-06-08 15:04:52', NULL, NULL),
(195, 'Expertise Immobilière', 1, 1333.33, 0.20, 179, '2024-06-08 15:04:52', NULL, NULL),
(196, 'Expertise Immobilière', 1, 1250.00, 0.20, 180, '2024-06-08 15:04:52', NULL, NULL),
(197, 'Expertise Immobilière', 1, 1000.00, 0.20, 181, '2024-06-08 15:04:52', NULL, NULL),
(198, 'Expertise Immobilière', 1, 1000.00, 0.20, 182, '2024-06-08 15:04:52', NULL, NULL),
(199, 'Expertise Immobilière', 1, 1250.00, 0.20, 183, '2024-06-08 15:04:52', NULL, NULL),
(200, 'Expertise Immobilière', 1, 1250.00, 0.20, 184, '2024-06-08 15:04:52', NULL, NULL),
(201, 'Expertise Immobilière', 1, 1333.33, 0.20, 185, '2024-06-08 15:04:52', NULL, NULL),
(202, 'Expertise Immobilière', 1, 1166.67, 0.20, 186, '2024-06-08 15:04:52', NULL, NULL),
(203, 'Expertise Immobilière', 1, 1333.33, 0.20, 187, '2024-06-08 15:04:52', NULL, NULL),
(204, 'Expertise Immobilière', 1, 1333.33, 0.20, 188, '2024-06-08 15:04:52', NULL, NULL),
(205, 'Expertise Immobilière', 1, 1500.00, 0.20, 189, '2024-06-08 15:04:52', NULL, NULL),
(206, 'Expertise Immobilière', 1, 1333.33, 0.20, 190, '2024-06-08 15:04:52', NULL, NULL),
(207, 'Expertise Immobilière', 1, 1333.33, 0.20, 191, '2024-06-08 15:04:52', NULL, NULL),
(208, 'Expertise Immobilière', 1, 1000.00, 0.20, 192, '2024-06-08 15:04:52', NULL, NULL),
(209, 'Expertise Immobilière', 1, 1000.00, 0.20, 193, '2024-06-08 15:04:52', NULL, NULL),
(210, 'Expertise Immobilière', 1, 1333.33, 0.20, 194, '2024-06-08 15:04:52', NULL, NULL),
(211, 'Action de formation sur la thématique \"Evaluation Immobilière\" le 11 Mai 2023', 1, 1500.00, 0.20, 195, '2024-06-08 15:04:52', NULL, NULL),
(212, 'Action de formation sur la thématique \"Evaluation Immobilière\" le 11 Mai 2023', 1, 1500.00, 0.20, 196, '2024-06-08 15:04:52', NULL, NULL),
(213, 'Action de formation sur la thématique \"Evaluation Immobilière\" le 11 Mai 2023', 1, 1500.00, 0.20, 197, '2024-06-08 15:04:52', NULL, NULL),
(214, 'Action de formation sur la thématique \"Evaluation Immobilière\" le 11 Mai 2023', 1, 1500.00, 0.20, 198, '2024-06-08 15:04:52', NULL, NULL),
(215, 'Expertise Immiobilière sis Boulevard Sfax, Zone industrielle Bernoussi, Casablanca-\nMaroc. Objet du T.F. N°103.176/C.', 1, 6500.00, 0.20, 199, '2024-06-08 15:04:52', NULL, NULL),
(216, 'Evaluation Immobilière, sis Angle rue Tata et rue Mâarakat Ohoud, Place 16 Novembre, Arrondissement Anfa, Casablanca - Maroc, objet des T.F N°53.540/01 & 53.541/01.\n\nEvalaution Immobilière, sis 197, Boulevard Zerktouni, Quartier Maârif, Arrondissement Anfa, Casablanca - Maroc, objet du T.F N°75.944/01.', 2, 2800.00, 0.20, 200, '2024-06-08 15:04:52', NULL, NULL),
(217, 'Expertise Immobilière d’un « Bien » immobilier, de type « Appartement », sis Rue Idriss I, Résidence « HOUDA »,\n3ème étage, Appartement N°06, Quartier Hamria, Meknès - Maroc, objet du T.F N° 123.779/05.', 1, 2000.00, 0.20, 201, '2024-06-08 15:04:52', NULL, NULL),
(218, 'Expertise  immobilière sis Villa N°102, Ville verte de Bouskoura, Province de Nouaceur, Casablanca –\nMaroc. Objet du T.F N° 40.251/63.\nimmobilier, de type « Villa », sis Villa', 1, 2500.00, 0.20, 202, '2024-06-08 15:04:52', NULL, NULL),
(219, 'Expertise Immobilière', 1, 1500.00, 0.20, 203, '2024-06-08 15:04:52', NULL, NULL),
(220, 'Expertise Immobilière ,situé à Rue 100 (exONE), Lotissement « Soufiane », N°84, Quartier Sidi\nMaârouf, Arrondissement Ain Chock, Casablanca - Maroc, objet du T.F N°61.087/47.', 1, 2500.00, 0.20, 204, '2024-06-08 15:04:52', NULL, NULL),
(221, 'Evaluation Immobilière', 1, 13750.00, 0.20, 205, '2024-06-08 15:04:52', NULL, NULL),
(222, 'Expertise Immobilière d’un bien immobilier de type « Commerce », situé à 249, Boulevard Ziraoui, Arrondissement Anfa, Casablanca - Maroc, objet du T.F N°122.529/01.', 1, 2500.00, 0.20, 206, '2024-06-08 15:04:52', NULL, NULL),
(223, 'Expertise Immobilière d’un « Bien » immobilier, de type « Villa », sis Lotissement « YASMINA », Villa N°211, Mohammedia – Maroc. Objet du T.F\nN° 668/26.', 1, 2500.00, 0.20, 207, '2024-06-08 15:04:52', NULL, NULL),
(224, 'Expertise Immobilière', 3, 2500.00, 0.20, 208, '2024-06-08 15:04:52', NULL, NULL),
(225, 'Estimation de la valeur vénale\nd’un « Bien » immobilier, de type « Lot de Terrain pour Crèche et Maternelle », sis Lotissement « Anfa\nMohammedia II », Lot N°36, Hay El Alia, Mohammedia - Maroc, objet du T.F N° 76.218/26.', 1, 2500.00, 0.20, 209, '2024-06-08 15:04:52', NULL, NULL),
(226, 'Expertise Immobilière', 1, 1500.00, 0.20, 210, '2024-06-08 15:04:52', NULL, NULL),
(227, 'Expertise Immobilière', 1, 1666.67, 0.20, 211, '2024-06-08 15:04:52', NULL, NULL),
(228, 'Expertise Immobilière pour estimation de la valeur vénale d’un « Bien » immobilier, de type « Terrain », et validation du montage de l’opération immobilière, sis Lot n° 142 Angle Avenue Mohamed Diouri & Rue Mohamed El Aamraoui -Kenitra – Maroc, Objet du TF N°30.861/R.', 1, 9500.00, 0.20, 212, '2024-06-08 15:04:52', NULL, NULL),
(229, 'Expertise Immobilière', 1, 1333.33, 0.20, 213, '2024-06-08 15:04:52', NULL, NULL),
(230, 'Expertise Immobilière', 1, 1333.33, 0.20, 214, '2024-06-08 15:04:52', NULL, NULL),
(231, 'Expertise Immobilière', 1, 1333.33, 0.20, 215, '2024-06-08 15:04:52', NULL, NULL),
(232, 'Expertise Immobilière', 1, 1000.00, 0.20, 216, '2024-06-08 15:04:52', NULL, NULL),
(233, 'Expertise Immobilière', 1, 1000.00, 0.20, 217, '2024-06-08 15:04:52', NULL, NULL),
(234, 'Expertise Immobilière', 1, 1666.67, 0.20, 218, '2024-06-08 15:04:52', NULL, NULL),
(235, 'Expertise Immobilière', 1, 2000.00, 0.20, 219, '2024-06-08 15:04:52', NULL, NULL),
(236, 'Expertise Immobilière', 1, 1666.67, 0.20, 220, '2024-06-08 15:04:52', NULL, NULL),
(237, 'Expertise Immobilière', 1, 1000.00, 0.20, 221, '2024-06-08 15:04:52', NULL, NULL),
(238, 'Expertise Immobilière', 1, 2333.33, 0.20, 222, '2024-06-08 15:04:52', NULL, NULL),
(239, 'Expertise Immobilière', 1, 800.00, 0.20, 223, '2024-06-08 15:04:52', NULL, NULL),
(240, 'Expertise Immobilière', 1, 1333.33, 0.20, 224, '2024-06-08 15:04:52', NULL, NULL),
(241, 'Expertise Immobilière', 1, 1200.00, 0.20, 225, '2024-06-08 15:04:52', NULL, NULL),
(242, 'Expertise Immobilière', 1, 1333.33, 0.20, 226, '2024-06-08 15:04:52', NULL, NULL),
(243, 'Expertise Immobilière', 1, 1000.00, 0.20, 227, '2024-06-08 15:04:52', NULL, NULL),
(244, 'Expertise Immobilière', 1, 1333.33, 0.20, 228, '2024-06-08 15:04:52', NULL, NULL),
(245, 'Expertise Immobilière', 1, 1000.00, 0.20, 229, '2024-06-08 15:04:52', NULL, NULL),
(246, 'Expertise Immobilière', 1, 1200.00, 0.20, 230, '2024-06-08 15:04:52', NULL, NULL),
(247, 'Expertise Immobilière', 1, 1466.67, 0.20, 231, '2024-06-08 15:04:52', NULL, NULL),
(248, 'Expertise Immobilière', 1, 1000.00, 0.20, 232, '2024-06-08 15:04:52', NULL, NULL),
(249, 'Expertise Immobilière', 1, 1333.33, 0.20, 233, '2024-06-08 15:04:52', NULL, NULL),
(250, 'Expertise Immobilière', 1, 1333.33, 0.20, 234, '2024-06-08 15:04:52', NULL, NULL),
(251, 'Expertise Immobilière', 1, 1000.00, 0.20, 235, '2024-06-08 15:04:52', NULL, NULL),
(252, 'Expertise Immobilière', 1, 1333.33, 0.20, 236, '2024-06-08 15:04:52', NULL, NULL),
(253, 'Expertise Immobilière', 1, 1666.67, 0.20, 237, '2024-06-08 15:04:52', NULL, NULL),
(254, 'Expertise Immobilière', 1, 1333.33, 0.20, 238, '2024-06-08 15:04:52', NULL, NULL),
(255, 'Expertise Immobilière', 1, 1666.67, 0.20, 239, '2024-06-08 15:04:52', NULL, NULL),
(256, 'Expertise Immobilière', 1, 2533.33, 0.20, 240, '2024-06-08 15:04:52', NULL, NULL),
(257, 'Expertise Immobilière', 1, 2500.00, 0.20, 241, '2024-06-08 15:04:52', NULL, NULL),
(258, 'Formation : Ingénierie Financière pour FIN \nFormation : Stratégie Financière\nFormation : Stratégie Financière - CCA', 1, 24000.00, 0.20, 242, '2024-06-08 15:04:52', NULL, NULL),
(259, 'Expertise Immobilière', 1, 2500.00, 0.20, 243, '2024-06-08 15:04:52', NULL, NULL),
(260, 'Expertise Immoblière  d’un « Bien » immobilier, de type « Appartement », sis Al Miaraj Garden, Immeuble C, RDC, Appartement N°3002, Californie, Arrondissement Ain Chock, Casablanca - Maroc, objet du T.F N° 81.530/47.', 1, 2000.00, 0.20, 244, '2024-06-08 15:04:52', NULL, NULL),
(261, 'Expertise Immobilière', 1, 2083.33, 0.20, 245, '2024-06-08 15:04:52', NULL, NULL),
(262, 'Expertise Immobilière', 1, 2500.00, 0.20, 246, '2024-06-08 15:04:52', NULL, NULL),
(263, 'Expertise Immobilière', 1, 2500.00, 0.20, 247, '2024-06-08 15:04:52', NULL, NULL),
(264, 'Evaluation et Analyse du Programme d’Investissement du Projet et son Chiffres d\'affaires objet des TF N° : 61.194/58 & 61.195/58', 1, 4500.00, 0.20, 248, '2024-06-08 15:04:52', NULL, NULL),
(265, 'Expertise du bien ayant le T.F N° 72/40953 consistant en un\nTerrain Agricole de Superficie de 4,86 Hectares sis Benguerir\nrelatif au dossier de financement de la société SODIPOL.', 1, 5800.00, 0.20, 249, '2024-06-08 15:04:52', NULL, NULL),
(266, 'Expertise Immobilière  d’un « Bien » immobilier, de type « Plateau bureau », sis Mohammed 5 Offices Center, Immeuble « B », Bureau N° 408, 4ème étage, Préfecture d\'Aïn Sebaâ-Hay Mohammadi, Casablanca - Maroc. Objet du T.F N°77.783/45.', 1, 2500.00, 0.20, 250, '2024-06-08 15:04:52', NULL, NULL),
(267, 'Simulations d\'entretiens d\'embauche des étudiants de MASTER 2 FINANCE et CCA', 6, 500.00, 0.20, 251, '2024-06-08 15:04:52', NULL, NULL),
(268, 'Expertise Immobilière', 1, 2500.00, 0.20, 252, '2024-06-08 15:04:52', NULL, NULL),
(269, 'Expertise Immolière l’estimation de la valeur vénale, de « 07 Biens »\nimmobiliers, de type « Appartement », sis Rue Ahmed El Kadmiri, Résidence « JACINTH », Appartement\nN°A14 & N°A16, 1er étage, Appartement N°A28, 2ème étage, Appartement N°A31 & N°A37, 3ème étage,\nAppartement N°A44 & N°A47, 4ème étage, Quartier Val Fleuri, Casablanca - Maroc, objets des T.F N°\n20.502/71, N° 20.504/71, N° 20.516/71, N° 20.519/71, N° 20.525/71, N° 20.532/71 & N° 20.535/71.', 7, 1200.00, 0.20, 253, '2024-06-08 15:04:52', NULL, NULL),
(270, 'Expertise Immobilière', 1, 3000.00, 0.20, 254, '2024-06-08 15:04:52', NULL, NULL),
(271, 'Expertise Immobilière', 1, 1500.00, 0.20, 255, '2024-06-08 15:04:52', NULL, NULL),
(272, 'Expertise Immobilière de type « Lot de Terrain pour villa », sis Propriété « FEDDANE KHADEM », Commune Bouskoura Douar Ouled Malek Hamri, Province de Nouaceur, Casablanca - Maroc., objet du T.F N° 36.325/63.', 1, 2500.00, 0.20, 256, '2024-06-08 15:04:52', NULL, NULL),
(273, 'Expertise immobilière des « Biens » immobiliers, de type « Lots de terrains pour villa », sis Lotissement « Atlas Golf Resort », Tranche 06, Lot N°97 & N°98, Arrondissement Annakhil, Marrakech - Maroc. Objets des T.F N° 54.844/43 & N° 54.845/43.', 1, 4800.00, 0.20, 257, '2024-06-08 15:04:52', NULL, NULL),
(274, 'Expertise de la valeur vénale du foncier objet du TF N°10.675/D2\n\nAnalyse et Validation du Programme d’Investissement du Projet et son Chiffres d\'affaires objet du TF N°10.675/D2', 1, 9500.00, 0.20, 258, '2024-06-08 15:04:52', NULL, NULL),
(275, 'Expertise de la valeur vénale de l\'unité objet du TF N°26133/33', 1, 6000.00, 0.20, 259, '2024-06-08 15:04:52', NULL, NULL),
(276, 'Expertise Immobilière', 1, 1666.67, 0.20, 260, '2024-06-08 15:04:52', NULL, NULL),
(277, 'Expertise Immobilière de type \"commerce\" , objet du TF: 69.048/64', 1, 2083.33, 0.20, 261, '2024-06-08 15:04:52', NULL, NULL),
(278, 'Expertise Immobilière de la valeur vénale\nd’un « Bien » immobilier, de type « Terrain », Sis Accès Mediouna Achakkar, Tanger - Maroc. Objet du TF\nN°161.621/06.', 1, 6500.00, 0.20, 262, '2024-06-08 15:04:52', NULL, NULL),
(279, 'Expertise_ Immobilière de la valeur vénale, d’un bien immobilier de type « Commerce », sis Angle Rue Tadarouj & Rue Abou Zarik, Quartier l’Oasis, Arrondissement Hay Hassani, Casablanca - Maroc, objet du T.F N° 37.302/64.', 1, 2083.33, 0.20, 263, '2024-06-08 15:04:52', NULL, NULL),
(280, 'Expertise_Immobilière de la valeur vénale d\'un \"Bien\" immobilier, de type \"Appartement\", 548, Angle Avenue 2 mars &Boulevard Modibo Keita,\nRésidence « Sounna »,\nAppartement N°18, 4èmeétage,', 1, 1666.67, 0.20, 264, '2024-06-08 15:04:52', NULL, NULL),
(281, 'Expertise Immobilière', 1, 1250.00, 0.20, 265, '2024-06-08 15:04:52', NULL, NULL),
(282, 'Expertise immobilière sis à Commune de Had Soualem, Province de Settat, Douar\nOuled Jamaa, Région du Grand Casablanca - Maroc. Objet du TF N°16.855/53', 1, 3000.00, 0.20, 266, '2024-06-08 15:04:52', NULL, NULL),
(283, 'Expertise d\'une unité du TF N° 4157/47, sis Bouskoura, Prefecture de Casablanca .', 1, 5500.00, 0.20, 267, '2024-06-08 15:04:52', NULL, NULL),
(284, 'Expertise immobilière de la valeur vénele d\'une villa sis, Résidence Al Boustane, à la Commune de Dar Bouazza, Province de Nouaceur, Casablanca - Maroc. Objet du TF N°1.996/63', 1, 1666.67, 0.20, 268, '2024-06-08 15:04:52', NULL, NULL),
(285, 'Expertise Immobilière de deux actifs immobiliers aynt les T,F N° 4709/46 et 4708/46 sis Casablanca.', 1, 5000.00, 0.20, 269, '2024-06-08 15:04:52', NULL, NULL),
(286, 'Expertise des Bien de type appartement, sis LARACHE,  ayant les T.F  :\nN°37.164/36,\nN° 37.165/36,\nN°37.166/36,\nN°37.167/36,\nN°37.168/36,\nN°37.169/36,\nN°37.170/36,\nN°37.171/36,\nN°37.172/36,\nN°37.173/36', 1, 7500.00, 0.20, 270, '2024-06-08 15:04:52', NULL, NULL),
(287, 'Expertise Immobilière', 1, 2500.00, 0.20, 271, '2024-06-08 15:04:52', NULL, NULL),
(288, 'Expertise Immobilière', 1, 3000.00, 0.20, 272, '2024-06-08 15:04:52', NULL, NULL),
(289, 'Expertise Immobilière', 1, 2500.00, 0.20, 273, '2024-06-08 15:04:52', NULL, NULL),
(290, 'Expertise Immobilière', 1, 1250.00, 0.20, 274, '2024-06-08 15:04:52', NULL, NULL),
(291, 'Expertise Immobilière', 1, 2750.00, 0.20, 275, '2024-06-08 15:04:52', NULL, NULL),
(292, 'Expertise Immobilière', 1, 1250.00, 0.20, 276, '2024-06-08 15:04:52', NULL, NULL),
(293, 'Expertise Immobilière', 1, 1800.00, 0.20, 277, '2024-06-08 15:04:52', NULL, NULL),
(294, 'Expertise Immobilière', 1, 1800.00, 0.20, 278, '2024-06-08 15:04:52', NULL, NULL),
(295, 'Expertise Immobilière', 1, 1250.00, 0.20, 279, '2024-06-08 15:04:52', NULL, NULL),
(296, 'Expertise Immobilière', 1, 1500.00, 0.20, 280, '2024-06-08 15:04:52', NULL, NULL),
(297, 'Expertise Immobilière', 1, 1200.00, 0.20, 281, '2024-06-08 15:04:52', NULL, NULL),
(298, 'Expertise Immobilière', 1, 1250.00, 0.20, 282, '2024-06-08 15:04:52', NULL, NULL),
(299, 'Expertise Immobilière', 1, 1200.00, 0.20, 283, '2024-06-08 15:04:52', NULL, NULL),
(300, 'Expertise Immobilière', 1, 1500.00, 0.20, 284, '2024-06-08 15:04:52', NULL, NULL),
(301, 'Expertise Immobilière', 1, 1500.00, 0.20, 285, '2024-06-08 15:04:52', NULL, NULL),
(302, 'Expertise Immobilière', 1, 1500.00, 0.20, 286, '2024-06-08 15:04:52', NULL, NULL),
(303, 'Expertise Immobilière', 1, 1800.00, 0.20, 287, '2024-06-08 15:04:52', NULL, NULL),
(304, 'Expertise Immobilière', 1, 1800.00, 0.20, 288, '2024-06-08 15:04:52', NULL, NULL),
(305, 'Expertise Immobilière', 1, 1800.00, 0.20, 289, '2024-06-08 15:04:52', NULL, NULL),
(306, 'Expertise Immobilière', 1, 1500.00, 0.20, 290, '2024-06-08 15:04:52', NULL, NULL),
(307, 'Expertise Immobilière', 1, 2700.00, 0.20, 291, '2024-06-08 15:04:52', NULL, NULL),
(308, 'Expertise Immobilière', 1, 1916.67, 0.20, 292, '2024-06-08 15:04:52', NULL, NULL),
(309, 'Evaluation d’un projet immobilier, de\ntype « 3SS R+9 », sis 14, Rue al Farabi, Tanger - Maroc, objet de TF N°549/G.', 1, 4750.00, 0.20, 293, '2024-06-08 15:04:52', NULL, NULL),
(310, 'Evaluation d’un projet immobilier, de\ntype « 3SS R+9 », sis 14, Rue al Farabi, Tanger - Maroc, objet de TF N°549/G.', 1, 2375.00, 0.20, 294, '2024-06-08 15:04:52', NULL, NULL),
(311, 'Evaluation d’un projet immobilier, de\ntype « 3SS R+9 », sis 14, Rue al Farabi, Tanger - Maroc, objet de TF N°549/G.', 1, 2375.00, 0.20, 295, '2024-06-08 15:04:52', NULL, NULL),
(312, 'Expertise Immobilière d’un bien immobilier de type « Commerce », sis Boulevard de Bordeaux, Rue Argana, Résidence « ARGANA », N°12, Arrondissement Anfa, Casablanca - Maroc, objet du T.F N°6.937/46.', 1, 2500.00, 0.20, 296, '2024-06-08 15:04:52', NULL, NULL),
(313, 'Expertise de la valeur vénale, d’un actif immobilier, de type « Terrain », sis Boulevard Mohamed Al Khallouqi, Avenue Catalunia, Laâyoune - Maroc, Objet de TF N°8.678/17.', 1, 7500.00, 0.20, 297, '2024-06-08 15:04:52', NULL, NULL),
(314, 'Expertise immobilièrede la valeur vénale, d’un «Bien» immobilier, de type « Appartement », sis 16 Bis, Rue Oued Tensift, Appartement N°07, 4ème étage, Arrondissement Anfa, Casablanca – Maroc. Objet du T.F N° 47.396/C.', 1, 2500.00, 0.20, 298, '2024-06-08 15:04:52', NULL, NULL);
INSERT INTO `prestations` (`id`, `description`, `quantity`, `amount`, `VAT`, `invoice_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(315, '-/Expertsie de la valeur venale de l\'actif immobilier objet du T.F N° 6228/C\n-/Analyse et Validation du Programme d’Investissement du Projet et son Cciffres d\'affaires objet du T.F N°6228/C\n', 1, 9500.00, 0.20, 299, '2024-06-08 15:04:52', NULL, NULL),
(316, 'Evaluation d’un projet immobilier, de type immeuble en « SS R+5 », sis Rue N°118, Val Fleury, Kenitra - Maroc, objet de TF N°3.398/H & N°5.991/R.', 1, 8000.00, 0.20, 300, '2024-06-08 15:04:52', NULL, NULL),
(317, 'Expertise Immobilière de la valeur vénale\nd’un « Bien » immobilier, de type « Unité industrielle », sis Route Rabat-Kenitra, Arrondissement de Bab\nLamrissa, Salé - Maroc. Objet du TF N°1.626/20.', 1, 4000.00, 0.20, 301, '2024-06-08 15:04:52', NULL, NULL),
(318, 'Expertise immobilière', 1, 5000.00, 0.20, 302, '2024-06-08 15:04:52', NULL, NULL),
(319, 'Expertise de la valeur vénale d’un « Bien » immobilier, de type « Unité industrielle », sis Boulevard Sfax, Zone Industrielle Sidi Bernoussi, Casablanca - Maroc. Objet du TF N°251/49.', 1, 3000.00, 0.20, 303, '2024-06-08 15:04:52', NULL, NULL),
(320, 'Expertise Immobilière de la valeur vénale d’un « Bien » immobilier, de type « Unité industrielle », sis Route de Zenata, Zone Industrielle Sidi Bernoussi, Casablanca - Maroc. Objet du TF N°35.105/49.', 1, 3000.00, 0.20, 304, '2024-06-08 15:04:52', NULL, NULL),
(321, 'Expertise immobilière de la valeur vénale, d’un « Bien » immobilier, de type « Lot de terrain pour villa », sis Lotissement « NAKHLA », Lot N°97, Commune de Dar Bouazza, Province de Nouaceur, Casablanca - Maroc. Objet du T.F N° 183.976/63.', 1, 3000.00, 0.20, 305, '2024-06-08 15:04:52', NULL, NULL),
(322, 'Expertise Immobilière de la valeur vénale, d’un « Bien » immobilier, de type « Appartement », sis Résidence du Golf, Immeuble B1, Appartement N°04, RDC, Province de Benslimane, Bouznika - Maroc. Objet du T.F N°24.099/25 & 24.175/25.', 1, 2500.00, 0.20, 306, '2024-06-08 15:04:52', NULL, NULL),
(323, 'Expertise Immobilière', 1, 2200.00, 0.20, 307, '2024-06-08 15:04:52', NULL, NULL),
(324, 'Expertise Immobilière', 1, 1666.67, 0.20, 308, '2024-06-08 15:04:52', NULL, NULL),
(325, 'Expertise immobilière d’un « Bien » immobilier, de type « Commerce », sis Angle Rue Abou Al Hanaâ & Rue Tanane Khadiri, Ferme Bretonne, Quartier Oasis, Arrondissement Hay Hassani, Casablanca - Maroc, objet du T.F N°50.213/64.', 1, 2083.33, 0.20, 309, '2024-06-08 15:04:52', NULL, NULL),
(326, 'Expertise Immobilière', 1, 1666.67, 0.20, 310, '2024-06-08 15:04:52', NULL, NULL),
(327, 'Evaluation immobilière des Bureau ayant les TF N° 25.539/71, 25.538/71, 25.537/71 sis Casablanca\n\nEvaluation immobilière des Commerces ayant les TF N° 25.536/71; 25.535/71 sis Casablanca', 1, 6600.00, 0.20, 311, '2024-06-08 15:04:52', NULL, NULL),
(328, 'Evaluation immobilière de deux terrains ayant les T.F N° 57.563/23 & 53.717/23 sis Zaouiate Sidi RADI Province De Oualidia.', 1, 7650.00, 0.20, 312, '2024-06-08 15:04:52', NULL, NULL),
(329, 'Expertise immobilière du terrain sis Préfecture de Ben Msik Sidi Othman, Commune Lahraouiyine, Casablanca- Maroc, objet de TF N°169.910/12.', 1, 4166.67, 0.20, 313, '2024-06-08 15:04:52', NULL, NULL),
(330, 'Expertise Immobilière d\'un \"Bien immobilier\" de type appartement, sis Bd Stendhal & Georges Sand, Résidence Benber, Immeuble C,3ème étage appt n° 109. Maarif, Casablanca, Maroc, objet du TF N° 77.394/01', 1, 2200.00, 0.20, 314, '2024-06-08 15:04:52', NULL, NULL),
(331, 'Expertise Immobilière pour la valeur vénale d’un « Bien » immobilier, de type « Appartement », sis 37, Rue Abderrahmane Sahraoui, Appartement N°17, 2ème étage, Arrondissement Anfa, Casablanca - Maroc, objet du T.F N° 55.864/01.', 1, 2083.33, 0.20, 315, '2024-06-08 15:04:52', NULL, NULL),
(332, 'Expertise Immobilière de la valeur vénale, d’un « Bien » immobilier, de type « Villa » en cours de finition sur 01 étage, sis Lotissement Dar El Aarass, Lot N°37, Commune de Harhoura, Préfecture de Skhirat-Témara, Témara - Maroc, objet du TF N° 63.991/78.', 1, 2083.33, 0.20, 316, '2024-06-08 15:04:52', NULL, NULL),
(333, 'Evaluation immobilière de la valeur vénale du terrain objet de l’opération immobilière de type « Immeuble (SS R+4) » et la validation du montage de l’opération immobilière et son Chiffre d’affaires, sis Lot N°2159, Lotissement « Haddada », Route de Mehdia Kénitra - Maroc, objet du TF N° 109.620/13.', 1, 6000.00, 0.20, 317, '2024-06-08 15:04:52', NULL, NULL),
(334, 'Expertise Immobilière  de la valeur vénale d’un « Bien » immobilier, de type « Immeuble (R+4) », sis Lot N°1314, Lotissement « Le Vallon », Kénitra - Maroc. Objet du TF N° 165.472/13.', 1, 6000.00, 0.20, 318, '2024-06-08 15:04:52', NULL, NULL),
(335, 'Expertise Immobilière de la valeur vénale de « 02 Biens » immobiliers, de type « Commerce », sis P3002, Lotissement « ASSAFA », Mohammedia - Maroc, objet du T.F N°133.037/26 & N°133.038/26.', 1, 4166.67, 0.20, 319, '2024-06-08 15:04:52', NULL, NULL),
(336, 'Expertise Immobilière de la valeur vénale d’un « Bien » immobilier, de type « Terrain », sis Route de Khouribga, Lotissement « BERKOR II » Lot N°16 & N°17, Berrechid - Maroc. Objet du TF N°152.587/53 & N°152.588/53.', 1, 8000.00, 0.20, 320, '2024-06-08 15:04:52', NULL, NULL),
(337, 'Expertise Immobilière de la valeur vénale d’un « Bien » immobilier, de type « Terrain », sis Tiznit - Maroc. Objet du TF N°29.332/31.', 1, 9225.00, 0.20, 321, '2024-06-08 15:04:52', NULL, NULL),
(338, 'Expertsie Immobilière de la valeur vénale de « 04 Biens » immobiliers, de type « Appartement » sis Rue N°24, Lotissement « AL FADL »,', 1, 10000.00, 0.20, 322, '2024-06-08 15:04:52', NULL, NULL),
(339, 'Expertise Immobilière d\'état d\'avancement  d’un « Bien » immobilier, de type « Villa » sur trois niveau, objet du TF N° 201.081/07 sis Lotissement la Rose, Lot N°10, Fès - Maroc.', 1, 6000.00, 0.20, 323, '2024-06-08 15:04:52', NULL, NULL),
(340, 'Evaluation immobilière de la valeur vénale d’un « Bien » immobilier, de type « Terrain », sis Lotissement « BERKOR », Lot N°96, Berrechid - Maroc. Objet du TF N°94.864/53.', 1, 8000.00, 0.20, 324, '2024-06-08 15:04:52', NULL, NULL),
(341, 'Expertise Immolière d\'état d’avancement de la tranche 2 du projet objet du T.FN° 4.158/53, sis « Marina Sidi Rahal », Commune urbaine Sidi Rahal, Province de Berrechid, Casablanca - Maroc.', 1, 12000.00, 0.20, 325, '2024-06-08 15:04:52', NULL, NULL),
(342, 'Expertsie Immobilière de la valeur vénale de « 04 Biens » immobiliers, de type « Commerce » sis Rue N°24, Lotissement « AL FADL »', 1, 14000.00, 0.20, 326, '2024-06-08 15:04:52', NULL, NULL),
(343, 'Expertise Immobilière de la valeur vénale de « 02 Biens » immobiliers, de type « Commerce », sis Boulevard Moulay Idriss I, Arrondissement Maârif, Casablanca - Maroc, objet du T.F N°2.416/71 & N° 2.417/71.', 1, 7000.00, 0.20, 327, '2024-06-08 15:04:52', NULL, NULL),
(344, 'Expertise d\'un etat d\'avanceent du projet objet du TF N°4.158/53 sis sidi Rehal', 12, 1000.00, 0.20, 328, '2024-06-08 15:04:52', NULL, NULL),
(345, 'Expertise immobilière d\'un terrain ayant le TF N° 14383/C de Superficie 2.052m² sis Sidi Moumen.', 1, 3500.00, 0.20, 329, '2024-06-08 15:04:52', NULL, NULL),
(346, 'Evaluation Immobilière d’un projet de type Lotissement Industrielle , à Ain El Aouda - Maroc, objet de TF N°24.081/R.', 1, 9500.00, 0.20, 330, '2024-06-08 15:04:52', NULL, NULL),
(347, 'Experise Immobilière de la valeur vénale d’un actif immobilier, de type « Immeuble », sis Angle Rue du Prince Moulay Abdellah & Avenue Mers Sultan, Quartier de la Liberté, Préfecture d’Anfa, Casablanca- Maroc, objet de TF N°1.153/C.', 1, 5000.00, 0.20, 331, '2024-06-08 15:04:52', NULL, NULL),
(348, 'Expertise Immobilière de l’estimation de la valeur vénale d’un « Bien » immobilier, de type « Immeuble », sis Lotissement « SOUKAINA », Lot N°36, Zone Industrielle Sidi Maarouf, Casablanca Maroc, objet du T.F N°16.031/63.', 1, 5500.00, 0.20, 332, '2024-06-08 15:04:52', NULL, NULL),
(349, 'Expertise Immobilière', 1, 5500.00, 0.20, 333, '2024-06-08 15:04:52', NULL, NULL),
(350, 'Expertise Immobilière d’un « Bien » immobilier, de type « Appartement », sis Résidence « les Collines », Tranche « l’ACACIA », Immeuble 06, 2ème étage, Appartement N°06, Arrondissement Ain Chock, Casablanca - Maroc, objet du T.F N° 90.453/47', 1, 2500.00, 0.20, 334, '2024-06-08 15:04:52', NULL, NULL),
(351, 'Expertise Immobilière de la valeur vénale d’un « Bien » immobilier, de type « Groupe Scolaire Privé en SS R+3 », sis Avenue Al Mouquaouama, Lotissement « La Belle Vue », Lot N°12, Marrakech - Maroc, objet du T.F N° 118.282/04. (1ère Avance)', 1, 4000.00, 0.20, 335, '2024-06-08 15:04:52', NULL, NULL),
(352, 'Expertise Immobilière de la valeur vénale d’un « Bien » immobilier, de type « Groupe Scolaire Privé en SS R+3 », sis Avenue Al Mouquaouama, Lotissement « La Belle Vue », Lot N°12, Marrakech - Maroc, objet du T.F N° 118.282/04. (2ème avance)', 1, 4000.00, 0.20, 336, '2024-06-08 15:04:52', NULL, NULL),
(353, 'Expertise Immobilière de la valeur vénale d’un « Bien » immobilier, de type « Groupe Scolaire Privé en SS R+3 », sis Avenue Al Mouquaouama, Lotissement « La Belle Vue », Lot N°12, Marrakech - Maroc, objet du T.F N° 118.282/04. (3ème avance)', 1, 2333.33, 0.20, 337, '2024-06-08 15:04:52', NULL, NULL),
(354, 'Evaluation immobilière du projet ayant le T.F N° 96.940/04 sis Marrakech :\n-/ Expertise du Foncier\n-/Evaluation du Chiffre d\'affaires du projet\n-/Validation du programme d\'investissement.\n', 1, 8550.00, 0.20, 338, '2024-06-08 15:04:52', NULL, NULL),
(355, 'Evaluation du Chiffre d\'affaires PROJET TAGANA sis Marrakech\n', 1, 3150.00, 0.20, 339, '2024-06-08 15:04:52', NULL, NULL),
(356, 'Expertise Immobilière d’un « Bien » immobilier, de type « Villa », sis Bd Fes, californie,  Arrondissement Ain Chock, Casablanca - Maroc, objet du T.F N° 64.331/47', 1, 2916.67, 0.20, 340, '2024-06-08 15:04:52', NULL, NULL),
(357, 'Expertise Immobilière d’un « Bien » immobilier, de type « Appartement », sis 108, Lotissement « ENNAHDA » GH FB3, Appartement N°05, 1er étage, Arrondissement de Sidi Moumen, Préfecture de Sidi Bernoussi, Casablanca – Maroc. Objet du T.F N° 58.421/49.', 1, 3000.00, 0.20, 341, '2024-06-08 15:04:52', NULL, NULL),
(358, 'Expertise Immobilière d’un « Bien » immobilier, de type « Terrain », sis Préfecture de Ben Msik Médiouna, Commune Mejjattia Ouled Taleb, Casablanca- Maroc. Objet du TF N°161.206/12.', 1, 6000.00, 0.20, 342, '2024-06-08 15:04:52', NULL, NULL),
(359, 'Expertise d’un projet immobilier de type de villa en villégiature, sis Douar Drabna, Commune de Bouskoura, Casablanca - Maroc. Objet du TF N°262/33.', 1, 9500.00, 0.20, 343, '2024-06-08 15:04:52', NULL, NULL),
(360, 'Expertise d’un « Bien » immobilier, de type « Villa », sis Résidence « California-Bay », Lot N°32, El Jadida – Maroc. Casablanca – Maroc. Objet du : TF N°116.599/08.', 1, 3000.00, 0.20, 344, '2024-06-08 15:04:52', NULL, NULL),
(361, 'Expertise d’un « Bien » immobilier, de type « Plateau bureau », sis Mohammed 5 Offices Center, Immeuble « B », Bureau N° 506, 5ème étage, Préfecture d\'Aïn Sebaâ-Hay Mohammadi, Casablanca - Maroc, objet du T.F N°77.817/45', 1, 2500.00, 0.20, 345, '2024-06-08 15:04:52', NULL, NULL),
(362, 'Expertise d’un « Bien » immobilier, de type « Villa », sis Bouskoura Golf City, TR 53, Villa N°125, Bouskoura, Province de Nouaceur, Casablanca – Maroc. Objet du T.F N° 46.560/63.', 1, 3000.00, 0.20, 346, '2024-06-08 15:04:52', NULL, NULL),
(363, 'Evaluation d’un projet immobilier de type « Immeuble en SS R+5 », sis Route d’El Jadida, Arrondissement Maârif, Casablanca - Maroc. Objet du TF N°31.337/C.', 1, 9500.00, 0.20, 347, '2024-06-08 15:04:52', NULL, NULL),
(364, 'Evaluation d’un projet immobilier de type « Lotissement », sis Angle Avenue des Palmiers & Route du Barrage, Municipalité Mechouar Es-Said, Marrakech - Maroc. Objet des TF N°152.830/04, 152.831/04, 152.832 & 152.833/04', 1, 9000.00, 0.20, 348, '2024-06-08 15:04:52', NULL, NULL),
(365, 'Expertise d’un « Bien » immobilier, de type « Immeuble », sis Lotissement « Wifak », Lot N°10, Quartier Oulfa, Arrondissement Hay Hassani, Casablanca- Maroc., objet du T.F N° 66.158/64.', 1, 3000.00, 0.20, 349, '2024-06-08 15:04:52', NULL, NULL),
(366, 'Expertise d’un «Bien» immobilier, de type « Lot de terrain pour Immeuble », sis Lotissement « Manzah Fedala », Lot N°328, Commune Rurale de Ben Yakhlef, Mohammedia - Maroc. Objet du T.F N° 138.027/26.', 1, 3000.00, 0.20, 350, '2024-06-08 15:04:52', NULL, NULL),
(367, 'Expertise d’un « Bien » immobilier, de type « Commerce », sis 26, Rue Ibnou Khalikane, Arrondissement Maârif, Quartier Palmier, Casablanca - Maroc, objet du T.F N°27.584/71.', 1, 3500.00, 0.20, 351, '2024-06-08 15:04:52', NULL, NULL),
(368, 'Expertise d’un « Bien » immobilier, de type « Centre de Bien être », sis Commune de Bouskoura, Province de Nouaceur, Casablanca - Maroc, objet du TF N° 167.428/63.', 1, 6000.00, 0.20, 352, '2024-06-08 15:04:52', NULL, NULL),
(369, 'Expertise d’un « Bien » immobilier, de type « Terrain », sis Douar Ait Bihi, Commune Rurale Lagfifat, Taroudant - Maroc. Objet du TF N°9.079/S.', 1, 7425.00, 0.20, 353, '2024-06-08 15:04:52', NULL, NULL),
(370, 'Evaluation d’un projet immobilier de type « Groupement d’habitation en SS R+4 », sis Avenue 6 Novembre, Arrondissement Tabriquet, Salé - Maroc. Objet du TF N°23.058/R.', 1, 10816.67, 0.20, 354, '2024-06-08 15:04:52', NULL, NULL),
(371, 'Evaluation, d’un projet immobilier, de type « Lotissement », pour le compte de Banque AL YOUSR, sis Rue Malabata, Province de Sidi Ifni, Mirleft - Maroc, objet de TF N°26.379/31.', 1, 11500.00, 0.20, 355, '2024-06-08 15:04:52', NULL, NULL),
(372, 'Evaluation, d’un projet immobilier, de type « de terrain », pour le compte de Banque AL YOUSR, sis commune de Tassoultante- Marrakech, Maroc, objet de TF N°121.786/04.', 1, 9000.00, 0.20, 356, '2024-06-08 15:04:52', NULL, NULL),
(373, 'Expertise d’un « Bien » immobilier, de type « Terrain », sis Commune Lahsasna, Douar Ouled M’hamed, Berrechid - Maroc. Objet du TF N°137.611/53', 1, 3000.00, 0.20, 357, '2024-06-08 15:04:52', NULL, NULL),
(374, 'Evaluation du chiffre d’affaires d’un projet immobilier de type « lots de terrain pour immeuble » ainsi que l’état d’avancement, objet du T.F N° 10.500/19, sis Lotissement « KENZA », Province de Tétouan, ville de Martil - Maroc. ', 1, 3000.00, 0.20, 358, '2024-06-08 15:04:52', NULL, NULL),
(375, 'Evaluation d’un projet immobilier pour le compte de Bank Al Yousr, de type « Complexe résidentiel », sis Avenue Miramar, Province de Tetouan, Martil - Maroc. Objet du TF N°13.359/19', 1, 8627.50, 0.20, 359, '2024-06-08 15:04:52', NULL, NULL),
(376, 'Expertise d’un « Bien » immobilier, de type « Plateau Bureau », sis Lotissement « Assakane Al Mounawar », Bureau N°01, 1er étage, Arrondissement Ain Chock, Casablanca – Maroc, objet du T.F N°91.944/47.', 1, 2500.00, 0.20, 360, '2024-06-08 15:04:52', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2024-05-19 12:30:44', '2024-05-19 12:30:44'),
(2, 'DIRECTION', 'web', '2024-05-19 21:23:03', '2024-05-19 21:23:03'),
(3, 'BO', 'web', '2024-05-19 21:23:21', '2024-05-19 21:23:21');

-- --------------------------------------------------------

--
-- Structure de la table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(11, 3),
(12, 1),
(12, 2),
(12, 3),
(13, 1),
(13, 2),
(13, 3),
(14, 1),
(14, 2),
(14, 3),
(15, 1),
(15, 2),
(15, 3),
(16, 1),
(16, 2),
(17, 1),
(17, 2);

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('08AJCgDZpjYYtts409WNGfBWBe7L8CGTUjnZR84U', NULL, '89.156.29.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWmRkcG80VWZhbmhXZW5mdU1mbTVVWWtTM29FdGV3SkNRTDBETXBGViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vZmFjdHVyZS5pZmlzb2Z0LmNvbSI7fX0=', 1717927949),
('0ikd2gpeouujcLR8xVjPnG2dVWpEVg6JLBiKf5P5', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWF0UnV3UmdzNHZ1ZVJUWldQeElpNURPODRFRkdPM2t5WEVjVzgxYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717916211),
('2z9Ay9flRgxp11QcAtLG4ZanZektI5PYg7SzAAjG', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTkg5VEh6R0FoVHp1N1hnemVCeGVYRHJOWUg5SDMyNnVoaUl6THpGVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717903607),
('3k3felfgvy13z2pygnRxs5DO31TNqeWXGclf68CJ', NULL, '213.44.27.141', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaDF4NFc5eWo3eWpoTnJ1VjlwekwxSnk1SWtWZzJPV2ZaT3FITEdpTyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MzoiaHR0cHM6Ly9mYWN0dXJlLmlmaXNvZnQuY29tL2ludm9pY2VfcGFydGlhbCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMzOiJodHRwczovL2ZhY3R1cmUuaWZpc29mdC5jb20vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1717883590),
('3MxrdDcVbypUmHLId1FMqcL4UKwqd5RuHbmcrLzd', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRHhzbXVpM3hGY21vVTZWaTd5eHU0QmFNUm56ZXU2N2lzV2dhNEJaeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717923415),
('6W6ReBH26Oa32hPjgdDDl4UKPNS9XkFangWRzp62', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTVlLWlI1RzcxbjFSNDVucDQzWGdCVm5ZRXBmNWFNQnlGVlk0cVhUcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717930615),
('7paMoETnrF73880EGo9hhGdPuAn6l6MupwKR6I9O', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidDg0VjdoREthR3B6RVRlbHg4ekF6QkxSYnRzdERubTNadXNxNWRFNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717943215),
('9Fqyl2MQ3MhZoCiGnHUlzJft4vjykmlPwhnpiRam', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTFNIaWZpd21ZMXhuc05GSVl2ejBSZTdrZllTbVdubUV5d3JUWnJQSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717918009),
('a6RQEo0FDtuhoZTh5fDLdfX1oeMdCmjvdEfjxck3', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoialdUY2h5VE1QZ2VRZVdLSjVCQzA3Q0tObmRVUTZsemNuUW9jVk1EYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717889207),
('AAFNkMpqX3kxK6o79yO9J4xSE2oNImiXMsi1Hx35', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTXBnY1RFOGtHMlN0SU81M1NjUEFiSE9nRGRIVWNnazZIVVpGdTZvZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717880210),
('AnQ5POMcRG2Xgxv3wP4K6KpISK3cZt0PGHcpUlt1', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieVYzNmEzekxJcTNCUWFLd2N5TkNsM3g3TE1DVFR2WFBIWE15VkZWQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717901808),
('bexOVDcvZJCvHhKuhJCRq7xrDyGXDBdFwV5PFs92', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMUNYYkxoa3lSbHFqMnFPQUFWSWNsVUwzUm9oVDgyUUt2S2E3SUltRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717921611),
('CPx72yYHgrHMVILfhzYd7LtoK0lO4khH7y5CXwbD', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidk9wWnVOV1VsdTJldDRkdUZlQnNZcExadUpEejQ0c1NsZ0R6MVRyQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717954019),
('dLB7rrHlrg7cR3HSABdRhDFImKvTILxJVa6uQmhq', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamdTbE9EUEtabUhsSEN1cUFZUk1TZGNlbXZ6NTlrQW50eWJQck81biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717883810),
('DNlf0BTwfsUtgXoqpYw7dHk4rScAZrUyVEjLBlgO', NULL, '89.156.29.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicTJZam9zMk1LRjNKVEJXYVBwb0w1NXlFQk5IT3NYUVdZbW5zQXRaWSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vZmFjdHVyZS5pZmlzb2Z0LmNvbSI7fX0=', 1717883936),
('dnXirA6H6PVlIUw74XZ5Z0stQ22m2DjiObauRcay', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRFN6QVRRUXlKY09PVkpwanlVaGFoWVBCQkE1YXZYVU1QT0hmemNsayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717914410),
('FIdceZpeTEq1NaZERdDwdN7OWprxKfnCwayWMDJ5', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS1lBOFU2WnZtR1pqYnRNallDd1JxbHV5N25vbUdCdkd0WjBYT3JoUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717919814),
('FkAZJXni0CtN2ewjwmP4OIQXfzBnxW7IeCTVetiZ', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTjZoSTFzbTN6NnhTUlFsZ21aUHBaVXJ1VURkbnBuM2tURkxhUkV3NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717909009),
('GQ7ksKP5tVvhx2KFQ1qxK9pvOgJNy9BZHS1pKodf', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTlhJcjJVTjR1eVVub0hDZUxkNmxGQ2FQejM5YjlJbkU1eldHajNtNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717876608),
('H4HfFbOooICUENvdPCpgLiUyeaYtA5tMVenKLtp8', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUkNCMkFRT2tYb2JzTWJXNFNVQ05kbVNOS1dFd040dDhuUVNlOTdubCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717900007),
('HhSAomSNXZwUZd4QLU0czUqDv60UUJtMBcu6sOEL', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmpkYTBjUGVmSUFBblBTdUh4M1BEb1RldlRKelVoTlFIQkJTV2l5MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717950416),
('iFXBNbN20nI65qUmxyPxIIOP1iMaaaZqyJufTKJC', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSkZ2YnpZYzlydlIzbGk2VW5aOFVPSDhNclZUNERhaGU2Y1hlc0pXWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717955817),
('ig8989MZRe7tjBhcurmJ6fgJ1IKDVLiat2ypgban', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRmJtejJ3MnpjMHlwYWFpanZtUlF4bEZLR01JUDNtTWNSdUIxeWF4ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717891008),
('IUE3MuJvQlBPwWWPQfeAoJJ25b1vdidlRqAQD4sh', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieWE5VndCYzdCQW16Q3pPajFuZ3pINkwwT05WZVdxYmMxZ1JOVmJndiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717910812),
('jWI2n8kyUBocx3B7vE3qwQ4PU1FYkELPxDxokGUY', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS3RQV21KSXNXT2tVM0JlaGJsYndtb2tZYU1kWENTQjg5YVM2dExIeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717939616),
('kslzp7xxDJcCb5PM9pUubmFeu9SwilRWGZM1u1dW', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUG9sQUsxbDJsNFZQQWlEU1NaM0NLTW9DSFNHY1JVakphcmpYNHdKNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717934213),
('LeG7kGIrha3EquX4p7OYMMbTvf2dwApTgPCddpy4', 2, '93.22.151.56', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiTXQ3TGRLTDRKSHk2dnVHZW0xejFHcXNUYVNUWUs3d2JvOEM5c1hBVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3MTc5NTI3NzU7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM2OiJodHRwczovL2ZhY3R1cmUuaWZpc29mdC5jb20vaW52b2ljZXMiO319', 1717952865),
('lgB1fEoXlmMrPhmHdl6YzJd7AlNsEvgOUbeeMyw9', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOXUwbEZmdHdZcjRQZmhwZVdZQW1FdldSYmFzdmg4UmkzbXBEN3FIdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717927014),
('mALuSlSnBm0TwhwgYIk37z4R74XwURERO22V7RYE', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN2l4VGRtbU9jNEJqbGc2VllPakdTdmJkNzd0bEZJVDFyYmNKQ05NbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717878404),
('Mbl4qOaFRiesVufa1YNMtEHjPaD1XYRSZGMNdoAP', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN04wdG9WbXNXdFdtWnM0MVRHcHV0SFRaQkdod05ZaFhyT2pGbDJacSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717898212),
('Mu2VbJRktG6w7AoD3VBqSJksdxPJD8gSMGQLUKk3', NULL, '213.44.27.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM2tNNHlKb0oyY2cwb1dKQ3ptTE91Y0xRSkxMUkZwNEEyM042d0pzRiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNjoiaHR0cHM6Ly9mYWN0dXJlLmlmaXNvZnQuY29tL2ludm9pY2VzIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vZmFjdHVyZS5pZmlzb2Z0LmNvbS9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717883572),
('mwkRJWtCo5kZWRSMgufMo6YQS46j0yRBtlNaJrPr', NULL, '213.44.27.202', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3l5YUxNZTZvd3JLVmpuZXN2bUlaRzU1OUNhRnU2Y2dpZWllNHo1ciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vZmFjdHVyZS5pZmlzb2Z0LmNvbS9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717883566),
('mwRKAMnOforvS7XZxUaIvtHF8jtEOLc2xBhZ9Wvu', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWVNwUDdCQzdZcVIxbFN0d1VNQVN6dkJ1bWJEcDVvQTdvZmlKMzdqbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717925212),
('njEKvygWd4xwX344fMPERNReCSguRYCAVtO2peDO', NULL, '213.44.27.137', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWkluN0dPOFZxdklIMUQ3bFRWcmdWdXpUMURHQlhwQU44ckxlVEp5VyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MjoiaHR0cHM6Ly9mYWN0dXJlLmlmaXNvZnQuY29tL2ludm9pY2VfdW5wYWlkIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vZmFjdHVyZS5pZmlzb2Z0LmNvbS9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717883586),
('okjkNWTj08GLjFRqDNUZ6qNUOAZOi1x8a7BQcsLP', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiME1YczhKNDJPRDduZlRaQlFhZGtQSDJJMTBKMHdSdkpWQldyd0JTZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717932412),
('PE8WMzvUSgScpHefn9pOw1AtpD68SSqOQnWuj7J9', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGFTaGZrWHcwU2wzclU0M3hlYjJnTDlMVWg2dEtaVjFaUnNLNHNuSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717905407),
('pgKs8sQIbaxDmLZbuTLHPZ3dpONlOEwtZXayfl10', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieHlydzBGQzM5djRNVGZ2dU1UbERseDdpMDVZV2J5QVQ4bUpmU2ZibSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717936012),
('piamWU55kxWkhkcnik4HIJ8mVa2zMRbOVJsOk2JD', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieDhlS3VralVvSTRUNUpvM3hMRzJLSDR2WjJkOEZwV1pST3dmSGp5OSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717896410),
('PZyqR0g7OgeZioEmEMcjseXrJOsCZREN1BWf2TrG', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicVVZSGQzYlJ2bEJNaGJGVjFBeUpWMnoxeUwzSDBsY2lIVnlxd2p5aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717885607),
('qahAUVd0zDIGNgxUpgoe0AweI5XMDrv6W2kUfF4d', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWjcxemJGRldiVTlMVXV3a09UaVhxb2E0WUplN1dVc2lLa2JEeVlSTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717887410),
('qdLrVd7yO9O1P3BnfbLOaabBUh42PADguOHNPHqU', NULL, '213.44.27.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicms1N1lHaDNlalVzaDRkcER6enBrWmxzTWRYZWdlQUNVNE5xcFdOUCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MzoiaHR0cHM6Ly9mYWN0dXJlLmlmaXNvZnQuY29tL2ludm9pY2VfYXJjaGl2ZSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMzOiJodHRwczovL2ZhY3R1cmUuaWZpc29mdC5jb20vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1717883596),
('qxaNUkLRqPqy1a9Yy3TzQy8BosEHoPF73x48kwbd', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTFViSDRPU1lYVzJNNGdXOXJjOFl2eEl3MEVVSFAxQ3ZEakVCRDh6WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717957619),
('rNLg0A6Zn6O4dmonjsltO5FReoIwiEwL2pKE0c2d', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRDFyZ0xKYW94UEkyUmtkN2wxcnBRV3BqOFQ4ODBxcDcwRG5CeFdCRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717945015),
('RuIfl84Xkt9OFJqdA7FYZG272SJfBWMK7BNsTE5E', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMlRSMXhaN3c3WnY0YnBQVjUxN2JKMDVwOFNBU2kybk9yaW1QYndHdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717948615),
('T4bpc8YuXHEy2byt5XN7T7C6HYfQ7cLxuSboQGcQ', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSHRoY0Z5RlZvSU91eHkzV2E5N01NYWtSQklWb0JnNmE3YjR1cEI5QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717937813),
('TD9yixPohoIwTdLYcsgT9KvNb1ye78PHSQ1Rai0t', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkFKTkJGWldPV1oxcU00bWpzajY1UzNBbEEwdHZKd2RzSG9FOW8waCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717941415),
('TN2VsEvkX78tDRJO09Ia3iO6TX61uQDsEss1Z9Zb', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWkRYSlpkaEpIU0tsZVFxdlBhRXhBUlVmZnFyelJ3MHgwUEFiR2poUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717912612),
('uutEcHdSnkULoNJJxdqCNgnzQcWdG7MVlsJFLmGL', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM20wVU80Skg5Rk9MTXEzUmZ2T1VpajVOeUJGSHdHRDdCMGgzbW1jOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717952215),
('VmU693nwhqdsGxcaMuhgT719N26jdo6OIJuCD1t1', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYjlaVTd3Wm5rSERJT3hnY0ZCSTR2WWRLUjNkMUlUM2EwYVBtUHAzbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717894606),
('vW5pEn0c4CfrwwMYNVsUOSZx5vFfi7qZTZF4x4lj', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWlhWV01sQ2JlTnBYanZvUGlHa0FTQ1dJMnFFdWxoYjZSVTVTQUpybyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717882009),
('XJMoTu9y53j9yn43bAnsR5SuyxcKsWajrKX7ZQYs', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiek9FZDQ5WE05ZTlHczNpeUk4cjRkNGJnU29zWm5XWWl3ZEVsS1g0aCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717946817),
('xYRfHZYNN3StPxBqPLYEksG8TlAUJ46w8cYDqqAz', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUF5eWxMSnBRU1lzaEY0cTVjVWJjVm05UUcxRWtHUU9FQVU3cG1MYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717892812),
('y8k1rAKhgsyklkwVOs69qIkNduZDkiqwj441avjp', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMklvSmVZWVNnTEZ6TDJ2U2QydjJZUmhzSmlWZzVYbW80Y0tqN0hHSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717928810),
('YsCd0YHXnE1pwFZWt1xwTWjCmW1S8vDtdXF9lZIr', NULL, '51.91.68.39', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieXVtbEJqb080NDJIaHNURTVLOWkwdk1WRnVYM0xIaTVZcTRVMW5nNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9mYWN0dXJlLmlmaXNvZnQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717907211);

-- --------------------------------------------------------

--
-- Structure de la table `societes`
--

CREATE TABLE `societes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `societe_name` varchar(999) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `societes`
--

INSERT INTO `societes` (`id`, `societe_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ABY FINANCE', '2024-06-07 18:27:53', NULL, NULL),
(2, 'SAGIDEV', '2024-06-07 18:27:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'marouane.dehbi@gmail.com', NULL, '$2y$12$MHtdmOCBwEljGHwFJqh1YuYU5Ml.rkQ2NSL9K14cKS7eZ2v7ZVxIe', NULL, '2024-05-19 12:30:44', '2024-05-19 21:20:47'),
(2, 'DIRECTION', 'direction@sagidev.com', NULL, '$2y$12$ngz6YqdWGuxllMN7TlDhOeXdKcw7.Cy9KvIbLuifSLqiZjcqwoSqy', 'LUshRsQJ41AHCztAywWhrO6G1vLAKp7t9OvKxbvYbhNMjq3LCh3LouG5AmPa', '2024-05-19 21:24:30', '2024-05-19 21:24:30'),
(3, 'BO', 'BO@sagidev.com', NULL, '$2y$12$LKHS7kTAkZCwT.Y9L6jczuW.YURTQV7JhYk9sgQSy7oJdsWvrl0ry', NULL, '2024-05-19 21:24:52', '2024-05-19 21:24:52');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `estimates`
--
ALTER TABLE `estimates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estimates_societe_id_foreign` (`societe_id`),
  ADD KEY `estimates_mission_type_id_foreign` (`mission_type_id`);

--
-- Index pour la table `estimates_fees`
--
ALTER TABLE `estimates_fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estimates_fees_estimate_id_foreign` (`estimate_id`);

--
-- Index pour la table `estimates_prestations`
--
ALTER TABLE `estimates_prestations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estimates_prestations_estimate_id_foreign` (`estimate_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fees_invoice_id_foreign` (`invoice_id`);

--
-- Index pour la table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_societe_id_foreign` (`societe_id`),
  ADD KEY `invoices_mission_type_id_foreign` (`mission_type_id`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Index pour la table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mission_types`
--
ALTER TABLE `mission_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mission_types_societe_id_foreign` (`societe_id`);

--
-- Index pour la table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Index pour la table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Index pour la table `mode_payments`
--
ALTER TABLE `mode_payments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Index pour la table `prestations`
--
ALTER TABLE `prestations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prestations_invoice_id_foreign` (`invoice_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Index pour la table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `societes`
--
ALTER TABLE `societes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `estimates`
--
ALTER TABLE `estimates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT pour la table `estimates_fees`
--
ALTER TABLE `estimates_fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `estimates_prestations`
--
ALTER TABLE `estimates_prestations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=361;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `mission_types`
--
ALTER TABLE `mission_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `mode_payments`
--
ALTER TABLE `mode_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `prestations`
--
ALTER TABLE `prestations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=377;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `societes`
--
ALTER TABLE `societes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `estimates`
--
ALTER TABLE `estimates`
  ADD CONSTRAINT `estimates_mission_type_id_foreign` FOREIGN KEY (`mission_type_id`) REFERENCES `mission_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `estimates_societe_id_foreign` FOREIGN KEY (`societe_id`) REFERENCES `societes` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `estimates_fees`
--
ALTER TABLE `estimates_fees`
  ADD CONSTRAINT `estimates_fees_estimate_id_foreign` FOREIGN KEY (`estimate_id`) REFERENCES `estimates` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `estimates_prestations`
--
ALTER TABLE `estimates_prestations`
  ADD CONSTRAINT `estimates_prestations_estimate_id_foreign` FOREIGN KEY (`estimate_id`) REFERENCES `estimates` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `fees`
--
ALTER TABLE `fees`
  ADD CONSTRAINT `fees_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_mission_type_id_foreign` FOREIGN KEY (`mission_type_id`) REFERENCES `mission_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoices_societe_id_foreign` FOREIGN KEY (`societe_id`) REFERENCES `societes` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `mission_types`
--
ALTER TABLE `mission_types`
  ADD CONSTRAINT `mission_types_societe_id_foreign` FOREIGN KEY (`societe_id`) REFERENCES `societes` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `prestations`
--
ALTER TABLE `prestations`
  ADD CONSTRAINT `prestations_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

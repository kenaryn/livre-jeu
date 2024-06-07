-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jun 07, 2024 at 02:04 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hero_book_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternative`
--

CREATE TABLE `alternative` (
  `id` int NOT NULL,
  `etape_precedente_id` int DEFAULT NULL,
  `etape_suivante_id` int NOT NULL,
  `texte_ambiance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avatar`
--

CREATE TABLE `avatar` (
  `id` int NOT NULL,
  `nom_fichier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `avatar`
--

INSERT INTO `avatar` (`id`, `nom_fichier`) VALUES
(1, '1.png'),
(2, '2.png'),
(3, '3.png'),
(4, '4.png'),
(5, '5.png'),
(6, '6.png'),
(7, '7.png'),
(8, '8.png'),
(9, '9.png'),
(10, '10.png'),
(11, '11.png'),
(12, '12.png'),
(13, '13.png'),
(14, '14.png'),
(15, '15.png'),
(16, '16.png'),
(17, '17.png'),
(18, '18.png'),
(19, '19.png'),
(20, '20.png'),
(21, '21.png'),
(22, '22.png'),
(23, '23.png'),
(24, '24.png'),
(25, '25.png'),
(26, '26.png'),
(27, '27.png'),
(28, '28.png'),
(29, '29.png'),
(30, '30.png'),
(31, '31.png'),
(32, '32.png'),
(33, '33.png'),
(34, '34.png'),
(35, '35.png'),
(36, '36.png'),
(37, '37.png'),
(38, '38.png'),
(39, '39.png'),
(40, '40.png'),
(41, '41.png'),
(42, '42.png'),
(43, '43.png'),
(44, '44.png'),
(45, '45.png'),
(46, '46.png'),
(47, '47.png'),
(48, '48.png');

-- --------------------------------------------------------

--
-- Table structure for table `aventure`
--

CREATE TABLE `aventure` (
  `id` int NOT NULL,
  `premiere_etape_id` int DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20240603144032', '2024-06-06 11:23:53', 696),
('DoctrineMigrations\\Version20240606112557', '2024-06-06 11:26:05', 137);

-- --------------------------------------------------------

--
-- Table structure for table `etape`
--

CREATE TABLE `etape` (
  `id` int NOT NULL,
  `aventure_id` int DEFAULT NULL,
  `fin_aventure_id` int DEFAULT NULL,
  `texte_ambiance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partie`
--

CREATE TABLE `partie` (
  `id` int NOT NULL,
  `aventurier_id` int NOT NULL,
  `aventure_id` int NOT NULL,
  `date_partie` datetime NOT NULL,
  `etape_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personnage`
--

CREATE TABLE `personnage` (
  `id` int NOT NULL,
  `avatar_id` int NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personnage`
--

INSERT INTO `personnage` (`id`, `avatar_id`, `prenom`, `nom`) VALUES
(2, 19, 'Kena', 'Aerynth'),
(3, 23, 'Menelvagor', 'Pleiades'),
(4, 11, 'Aurèle', 'Broceliande'),
(5, 1, 'smdlk', 'IShallRule');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternative`
--
ALTER TABLE `alternative`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EFF5DFA3F94EAC8` (`etape_precedente_id`),
  ADD KEY `IDX_EFF5DFA62A0957E` (`etape_suivante_id`);

--
-- Indexes for table `avatar`
--
ALTER TABLE `avatar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aventure`
--
ALTER TABLE `aventure`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1E56DE4B9551B165` (`premiere_etape_id`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `etape`
--
ALTER TABLE `etape`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_285F75DD873DBB5F` (`aventure_id`),
  ADD KEY `IDX_285F75DDC3DCFBBF` (`fin_aventure_id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Indexes for table `partie`
--
ALTER TABLE `partie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_59B1F3DEDDC7141` (`aventurier_id`),
  ADD KEY `IDX_59B1F3D873DBB5F` (`aventure_id`),
  ADD KEY `IDX_59B1F3D4A8CA2AD` (`etape_id`);

--
-- Indexes for table `personnage`
--
ALTER TABLE `personnage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6AEA486D86383B10` (`avatar_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternative`
--
ALTER TABLE `alternative`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `avatar`
--
ALTER TABLE `avatar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `aventure`
--
ALTER TABLE `aventure`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `etape`
--
ALTER TABLE `etape`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partie`
--
ALTER TABLE `partie`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personnage`
--
ALTER TABLE `personnage`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alternative`
--
ALTER TABLE `alternative`
  ADD CONSTRAINT `FK_EFF5DFA3F94EAC8` FOREIGN KEY (`etape_precedente_id`) REFERENCES `etape` (`id`),
  ADD CONSTRAINT `FK_EFF5DFA62A0957E` FOREIGN KEY (`etape_suivante_id`) REFERENCES `etape` (`id`);

--
-- Constraints for table `aventure`
--
ALTER TABLE `aventure`
  ADD CONSTRAINT `FK_1E56DE4B9551B165` FOREIGN KEY (`premiere_etape_id`) REFERENCES `etape` (`id`);

--
-- Constraints for table `etape`
--
ALTER TABLE `etape`
  ADD CONSTRAINT `FK_285F75DD873DBB5F` FOREIGN KEY (`aventure_id`) REFERENCES `aventure` (`id`),
  ADD CONSTRAINT `FK_285F75DDC3DCFBBF` FOREIGN KEY (`fin_aventure_id`) REFERENCES `aventure` (`id`);

--
-- Constraints for table `partie`
--
ALTER TABLE `partie`
  ADD CONSTRAINT `FK_59B1F3D4A8CA2AD` FOREIGN KEY (`etape_id`) REFERENCES `etape` (`id`),
  ADD CONSTRAINT `FK_59B1F3D873DBB5F` FOREIGN KEY (`aventure_id`) REFERENCES `aventure` (`id`),
  ADD CONSTRAINT `FK_59B1F3DEDDC7141` FOREIGN KEY (`aventurier_id`) REFERENCES `personnage` (`id`);

--
-- Constraints for table `personnage`
--
ALTER TABLE `personnage`
  ADD CONSTRAINT `FK_6AEA486D86383B10` FOREIGN KEY (`avatar_id`) REFERENCES `avatar` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

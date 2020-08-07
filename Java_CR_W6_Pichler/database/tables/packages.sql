-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 08. Aug 2020 um 01:20
-- Server-Version: 10.4.13-MariaDB
-- PHP-Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `test`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `packages`
--

CREATE TABLE `packages` (
  `package_id` int(11) NOT NULL,
  `package_size` varchar(55) DEFAULT NULL,
  `package_weight` int(11) DEFAULT NULL,
  `sender_address` text DEFAULT NULL,
  `receiver_address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `packages`
--

INSERT INTO `packages` (`package_id`, `package_size`, `package_weight`, `sender_address`, `receiver_address`) VALUES
(1, 'medium', 5, '088 Clyde Gallagher Plaza', '28131 Luster Point'),
(2, 'large', 15, '021 Ryan Way', '970 West Junction'),
(3, 'small', 1, '9 Bartelt Place', '51 Packers Hill'),
(4, 'medium', 6, '341 Kennedy Hill', '83931 Anzinger Parkway'),
(5, 'medium', 9, '342 Kennedy Hill', '9 Hoffman Place');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`package_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

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
-- Tabellenstruktur für Tabelle `processingsystem`
--

CREATE TABLE `processingsystem` (
  `package_id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `time_received` time DEFAULT NULL,
  `time_delivered` time DEFAULT NULL,
  `date_received` date DEFAULT NULL,
  `date_delivered` date DEFAULT NULL,
  `delivered` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `processingsystem`
--

INSERT INTO `processingsystem` (`package_id`, `location_id`, `time_received`, `time_delivered`, `date_received`, `date_delivered`, `delivered`) VALUES
(1, 1, '01:30:55', '03:25:12', '2015-03-15', '2015-03-17', 'yes'),
(2, 1, '15:35:12', NULL, '2017-04-25', NULL, 'no'),
(3, 2, '20:00:22', '12:30:42', '2017-10-25', '2017-10-26', 'yes'),
(4, 2, '12:30:12', '15:10:42', '2018-12-12', '2018-12-14', 'yes'),
(5, 3, '01:22:22', NULL, '2018-12-12', NULL, 'no');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `processingsystem`
--
ALTER TABLE `processingsystem`
  ADD PRIMARY KEY (`package_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `processingsystem`
--
ALTER TABLE `processingsystem`
  ADD CONSTRAINT `processingsystem_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  ADD CONSTRAINT `processingsystem_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `packages` (`package_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

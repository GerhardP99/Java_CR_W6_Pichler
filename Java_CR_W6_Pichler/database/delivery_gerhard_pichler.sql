-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 08. Aug 2020 um 01:22
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
-- Datenbank: `delivery_gerhard_pichler`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `first_name` varchar(55) DEFAULT NULL,
  `last_name` varchar(55) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `employees`
--

INSERT INTO `employees` (`employee_id`, `first_name`, `last_name`, `telephone`, `address`) VALUES
(1, 'Jesse', 'Gowan', 882917421, '4395 Brickson Park Way'),
(2, 'Wallis', 'Renzo', 887463353, '14794 Lotheville Center'),
(3, 'Arv', 'Kinset', 880934509, '42 Stuart Place');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `location`
--

CREATE TABLE `location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `type` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `location`
--

INSERT INTO `location` (`location_id`, `name`, `address`, `type`) VALUES
(1, 'Hartel Station', '2 Lindbergh Terrace', 'drop-off'),
(2, 'Orelia Station', '5 Lindbergh Terrace', 'pick-up'),
(3, 'Helter Station', '34 Jenifer Trail', 'drop-off'),
(4, 'Pearl Station', '36 Jenifer Trail', 'pick-up');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `packageassignment`
--

CREATE TABLE `packageassignment` (
  `package_id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `packageassignment`
--

INSERT INTO `packageassignment` (`package_id`, `employee_id`) VALUES
(1, 1),
(3, 2),
(2, 3);

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

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roster`
--

CREATE TABLE `roster` (
  `fk_employee_id` int(11) NOT NULL,
  `fk_location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `roster`
--

INSERT INTO `roster` (`fk_employee_id`, `fk_location_id`) VALUES
(1, 1),
(3, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `salary`
--

CREATE TABLE `salary` (
  `fk_employee_id` int(11) NOT NULL,
  `salary` double(16,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `salary`
--

INSERT INTO `salary` (`fk_employee_id`, `salary`) VALUES
(1, 1235.44),
(2, 550.12),
(3, 2469.99);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indizes für die Tabelle `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indizes für die Tabelle `packageassignment`
--
ALTER TABLE `packageassignment`
  ADD PRIMARY KEY (`package_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indizes für die Tabelle `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`package_id`);

--
-- Indizes für die Tabelle `processingsystem`
--
ALTER TABLE `processingsystem`
  ADD PRIMARY KEY (`package_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indizes für die Tabelle `roster`
--
ALTER TABLE `roster`
  ADD PRIMARY KEY (`fk_employee_id`),
  ADD KEY `fk_location_id` (`fk_location_id`);

--
-- Indizes für die Tabelle `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`fk_employee_id`);

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `packageassignment`
--
ALTER TABLE `packageassignment`
  ADD CONSTRAINT `packageassignment_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`);

--
-- Constraints der Tabelle `processingsystem`
--
ALTER TABLE `processingsystem`
  ADD CONSTRAINT `processingsystem_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  ADD CONSTRAINT `processingsystem_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `packages` (`package_id`);

--
-- Constraints der Tabelle `roster`
--
ALTER TABLE `roster`
  ADD CONSTRAINT `roster_ibfk_1` FOREIGN KEY (`fk_location_id`) REFERENCES `location` (`location_id`),
  ADD CONSTRAINT `roster_ibfk_2` FOREIGN KEY (`fk_employee_id`) REFERENCES `employees` (`employee_id`);

--
-- Constraints der Tabelle `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`fk_employee_id`) REFERENCES `employees` (`employee_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 22 jan 2024 om 11:44
-- Serverversie: 10.4.28-MariaDB
-- PHP-versie: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jaman`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gebruikerdata`
--

CREATE TABLE `gebruikerdata` (
  `id` int(11) NOT NULL,
  `Voornaam` varchar(255) DEFAULT NULL,
  `Achternaam` varchar(255) DEFAULT NULL,
  `Emailadres` varchar(255) DEFAULT NULL,
  `Rol` varchar(255) DEFAULT NULL,
  `Opleiding` varchar(255) DEFAULT NULL,
  `StraatnaamHuisnummer` varchar(255) DEFAULT NULL,
  `Stad` varchar(255) DEFAULT NULL,
  `Leeftijd` int(11) DEFAULT NULL,
  `mood` varchar(250) DEFAULT NULL,
  `last_inserted` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `gebruikerdata`
--

INSERT INTO `gebruikerdata` (`id`, `Voornaam`, `Achternaam`, `Emailadres`, `Rol`, `Opleiding`, `StraatnaamHuisnummer`, `Stad`, `Leeftijd`, `mood`, `last_inserted`) VALUES
(1, 'Farhan', 'MOhammed', 'Mohammed5049@protonmail.com', 'Ouders', NULL, 'Puccinistraat 90', 'Tilburg', 18, 'matig', '2024-01-17 09:25:37'),
(2, 'spongeobo', 'aojsndk', 'Mohammed5049@protonmail.com', 'Bezoeker', NULL, 'Puccinistraat 90', 'Tilburg', 22, 'slecht', '2024-01-17 09:29:19'),
(3, 'spongeobo', 'aojsndk', 'Mohammed5049@protonmail.com', 'Bezoeker', NULL, 'Puccinistraat 90', 'Tilburg', 22, 'slecht', '2024-01-17 09:38:06'),
(4, 'farhan', 'Mohammed', 'Mohammed5049@protonmail.com', 'Student', NULL, 'Puccinistraat 90', 'Tilburg', 18, 'slecht', '2024-01-17 10:16:16'),
(5, 'Farhan', 'you', 'Mohammed5049@protonmail.com', 'Overig', NULL, 'bartokstraat 1312', 'tilburg', 23, 'goed', '2024-01-17 10:26:35'),
(6, 'ljpo23jrwelk', 'qejlqefj', 'wesfphqpwiej@gmail.com', 'Student', NULL, 'piuasdfhoauhw', 'qeifrhio', 24, NULL, '2024-01-17 10:31:05'),
(7, 'ljpo23jrwelk', 'qejlqefj', 'wesfphqpwiej@gmail.com', 'Student', NULL, 'piuasdfhoauhw', 'qeifrhio', 24, 'slecht', '2024-01-17 10:34:45'),
(8, 'Farhan', 'Mohammed', 'hoihoi@gmail.com', 'Student', NULL, 'Almeretijd 21', 'Almere', 59, 'slecht', '2024-01-17 10:46:27'),
(9, 'Wesly', 'Omari', 'Omari2001@gmail.com', 'Student', NULL, 'Powerlaan 90', '\'s-Hertogenbosch', 22, 'goed', '2024-01-17 11:34:02'),
(10, NULL, NULL, NULL, NULL, 'Allrounder ICT', NULL, NULL, 0, NULL, '2024-01-17 11:39:47'),
(11, 'farhan', 'Mohammed', 'Mohammed5049@protonmail.com', 'Student', NULL, 'Puccinistraat 90', 'tilburg', 811, 'slecht', '2024-01-17 11:42:46'),
(12, 'farhan', 'Mohammed', 'Mohammed5049@protonmail.com', 'Student', NULL, 'Puccinistraat 90', 'eindhoven', 14, 'slecht', '2024-01-17 12:26:37'),
(13, 'farhan', 'Mohammed', 'drake@gmail.com', 'Student', NULL, 'drake231', 'stuggart', 35, 'matig', '2024-01-17 12:28:46'),
(14, 'farhan', 'rjtjr', 'jgfjhgfjf@gmail.con', 'Overig', NULL, 'hgjfh', 'mgmjmg', 198, 'matig', '2024-01-17 12:35:35'),
(15, 'Farhan', 'Mohammed', 'Mohammed5049@protonmail.com', 'Ouders', NULL, 'Puccinistraat 90', 'tilburg', 14, 'slecht', '2024-01-17 12:38:26'),
(16, 'Fara', 'moo', 'drake@gmail.com', 'Ouders', NULL, 'fasd', 'qwe', 22, 'matig', '2024-01-17 12:39:33'),
(17, 'fara', 'welnfrk', 'lneqnflkqmwl@gmail.com', 'Overig', NULL, 'oaojnjo', 'nqofnejnj', 21, 'slecht', '2024-01-17 12:40:54'),
(18, 'dusi', 'oknkn', 'Mohammed5049@protonmail.com', 'Ouders', NULL, 'Puccinistraat 90', 'tilburg', 20, 'slecht', '2024-01-17 12:42:35'),
(19, 'doni', 'tolivier', 'Mohammed5049@protonmail.com', 'Bezoeker', NULL, 'Puccinistraat 90', 'tilburg', 22, NULL, '2024-01-17 12:49:27'),
(20, 'qeokfnok', 'nqewofnewfjon', 'geek@gmail.com', 'Student', NULL, 'piuasdiuahsiudj', 'oqenfoujqo', 21, NULL, '2024-01-17 12:50:27'),
(21, 'pestoo', 'oo', 'Mohammed5049@protonmail.com', 'Student', 'DefaultOpleiding', 'knfkk', 'tilburg', 21, NULL, '2024-01-17 12:52:21'),
(22, 'Farhan', 'Mohammed', 'Mohammed5049@protonmail.com', 'Student', 'DefaultOpleiding', 'Puccinistraat 90', 'tilburg', 22, NULL, '2024-01-17 12:54:25'),
(23, 'bkmaoq', 'qojnefn', 'blaa@gmail.com', 'Student', 'DefaultOpleiding', 'Puccinistraat 90', 'tilburgf', 21, NULL, '2024-01-17 13:00:11'),
(24, 'lil', 'baby', 'Mohammed5049@protonmail.com', 'Student', 'DefaultOpleiding', 'ahfsj', 'jnskdfnk', 22, NULL, '2024-01-17 13:00:56'),
(25, 'ljpo23jrwelk', 'wefqwe', 'Mohammed5049@protonmail.com', 'Student', '', 'ljenjfjknij1k', 'n', 22, NULL, '2024-01-17 13:01:35'),
(26, 'farhan', 'Mohammed', 'Mohammed5049@protonmail.com', 'Ouders', '', 'Puccinistraat 90', 'tilburg', 21, 'slecht', '2024-01-17 13:02:06'),
(27, 'koqnefjqnjew', 'onefjnoqno', 'hoi@gmail.com', 'Ouders', '', 'Puccinistraat 90', 'mfom', 22, NULL, '2024-01-17 13:05:25'),
(28, 'hoi', 'hoi', 'hoi@gmial.com', 'Bezoeker', '', 'paowsdoqj', 'pwjiojwo', 21, 'goed', '2024-01-17 13:08:34'),
(29, 'farhan', 'Mohammed', 'ekafoqoiw@gmail.com', 'Bezoeker', '', 'pekfmapm', 'mfoemo', 22, NULL, '2024-01-17 13:12:12'),
(30, 'ejnfkojqnwon', 'oqnfojenjnn', 'onoejnfoqwnoe@gmail.com', 'Student', '', 'wnfewiongionqioj', 'oneornqownron', 21, NULL, '2024-01-17 13:12:42'),
(31, 'Farhan', 'Mohammed', 'Mohammed5049@protonmail.com', 'Bezoeker', '', 'Puccinistraat 90', 'Tilburg', 22, NULL, '2024-01-17 15:11:37'),
(32, 'qwpkeno', 'njonwfjon', 'ojnefj@gmail.com', 'Student', '', 'kendsfono', 'qoenowqn', 22, NULL, '2024-01-17 15:12:43'),
(33, 'qlwkrnl', 'nqornfoienoi', 'onwro@gmail.com', 'Student', '', 'nqioe', 'enfono', 22, NULL, '2024-01-17 15:14:14'),
(34, 'qwlem[', 'mqpkmfpeqmwfwp', 'Mohammed5049@protonmail.com', 'Student', '', 'keofkmpkm', 'tilburg', 21, NULL, '2024-01-17 15:15:53'),
(35, 'qkwnkn', 'qkpnfoeqnfip', 'Mohammed5049@protonmail.com', 'Student', '', 'lmfekm', 'tilburg', 18, NULL, '2024-01-17 15:16:23'),
(36, 'qwknpnqwp', 'oenwfonqown', 'Mohammed5049@protonmail.com', 'Bezoeker', '', 'meokfp', 'pqmepkmepfkm', 22, NULL, '2024-01-17 15:20:11'),
(37, 'travis', 'scott', 'Mohammed5049@protonmail.com', 'Student', '', 'Puccinistraat 90', 'tilburg', 18, NULL, '2024-01-17 15:25:39'),
(38, 'hoi', 'hoi', 'Mohammed5049@protonmail.com', 'Ouders', '', 'Puccinistraat 90', 'tilburg', 22, NULL, '2024-01-17 15:31:45'),
(39, 'Farhan', 'mO', 'Mohammed5049@protonmail.com', 'Student', '', 'mpqwkrmp', 'pkmpkepk', 102, NULL, '2024-01-17 15:32:21'),
(40, 'pqwmepm', 'kwkofnrnko', 'kjfnqownro@gmail.com', 'Bezoeker', '', 'Tilburg', 'oampm', 23, NULL, '2024-01-17 15:33:40'),
(41, 'farhan', 'mo', 'farhan2005231@gmail.com', 'Bezoeker', '', 'sibelliustraat 90', 'almere', 17, NULL, '2024-01-17 15:36:45'),
(42, 'Elisabeth', 'Maria', 'Elstar90@gmail.com', 'Overig', '', 'Tilburg', 'Beethovenlaan 21', 74, NULL, '2024-01-17 20:39:29'),
(43, 'farhan', 'mohammed', 'mohammed5049@protonmail.com', 'Ouder', '', 'tilburg', 'tilburg', 23, NULL, '2024-01-18 18:39:51'),
(44, 'kjkjb', 'asdqw', 'qwe@gmail.com', 'Ouder', '', 'weqwe', 'qkwmek', 23, NULL, '2024-01-18 19:34:03'),
(45, 'farhan', 'mohammed', 'mohammed5049@protonmail.com', 'Student', '', 'puccinistraat 90', 'tilburg', 18, NULL, '2024-01-21 22:43:08'),
(46, 'hoi', 'hoi', 'mohammed@gmail.com', 'Student', '', 'bartokstraat 131', 'tilburg', 18, NULL, '2024-01-21 22:44:57'),
(47, 'Ahmed', 'Yallah', 'Yallah@gmail.com', 'Student', '', 'Sint nickelodeonstraat 132', 'Arnhem', 23, 'slecht', '2024-01-21 22:50:17'),
(48, 'qwe;lm', 'qkmklfenn', 'Mohammed5049@protonmail.com', 'Student', 'DefaultOpleiding', '90 Puccinistraat', 'Tilburg', 23, 'goed', '2024-01-21 22:54:48'),
(49, 'farbawjn', 'onnfjn', 'ojnwjrnj@gmail.com', 'Ouders', 'DefaultOpleiding', 'qnwekjnerkjn', 'kjnqkjn', 23, 'matig', '2024-01-21 22:56:40'),
(50, 'ye', 'ye', 'Mohammed5049@protonmail.com', 'Bezoeker', 'DefaultOpleiding', '90 Puccinistraat', 'Tilburg', 36, 'slecht', '2024-01-21 22:57:50'),
(51, 'kanye', 'hoi', 'Mohammed5049@protonmail.com', 'Bezoeker', 'DefaultOpleiding', '90 Puccinistraat', 'Tilburg', 23, 'matig', '2024-01-21 22:59:20'),
(52, 'farhan', 'Mohammed', 'boom@gmail.com', 'Bezoeker', NULL, 'boom 12', 'boom', 23, 'slecht', '2024-01-21 23:01:05'),
(53, 'hoi', 'hoi', 'Mohammed5049@protonmail.com', 'Student', 'DefaultOpleiding', '90 Puccinistraat', 'Tilburg', 23, 'slecht', '2024-01-21 23:03:57'),
(54, 'pkqweokn', 'qonojn', 'Mohammed5049@protonmail.com', 'Ouders', 'DefaultOpleiding', '90 Puccinistraat', 'Tilburg', 198, NULL, '2024-01-21 23:05:37'),
(55, 'pkqweokn', 'qonojn', 'Mohammed5049@protonmail.com', 'Ouders', 'DefaultOpleiding', '90 Puccinistraat', 'Tilburg', 198, NULL, '2024-01-21 23:10:48'),
(56, 'data', 'base', 'spiderman@gmail.com', 'Student', 'DefaultOpleiding', 'imspooderman', 'tilburg', 23, 'matig', '2024-01-21 23:11:27'),
(57, 'wow', 'wow', 'Mohammed5049@protonmail.com', 'Overig', 'DefaultOpleiding', '90 Puccinistraat', 'Tilburg', 23, 'matig', '2024-01-21 23:16:30'),
(58, 'again', 'again', 'wow@gmail.com', 'Ouders', 'DefaultOpleiding', 'batman', 'tilburg', 23, 'matig', '2024-01-21 23:17:22'),
(59, 'farhan', 'Mohammed', 'Mohammed5049@protonmail.com', 'Bezoeker', 'DefaultOpleiding', '90 Puccinistraat', 'Tilburg', 23, NULL, '2024-01-21 23:18:43'),
(60, 'farhan', 'Mohammed', 'Mohammed5049@protonmail.com', 'Bezoeker', 'DefaultOpleiding', '90 Puccinistraat', 'Tilburg', 23, 'matig', '2024-01-21 23:18:54'),
(61, 'farhan', 'Mohammed', 'Mohammed5049@protonmail.com', 'Bezoeker', 'DefaultOpleiding', '90 Puccinistraat', 'Tilburg', 23, NULL, '2024-01-21 23:20:25'),
(62, 'regelen', 'hoi', 'hoi@gmail.com', 'Ouders', 'DefaultOpleiding', 'Puccinistraat 90', 'Tilburg', 18, 'matig', '2024-01-21 23:20:43'),
(63, 'Farhan', 'Mohammed', 'Mohammed5049@protonmail.com', 'Bezoeker', 'DefaultOpleiding', '90 Puccinistraat', 'Tilburg', 18, 'goed', '2024-01-21 23:21:49'),
(64, 'farhan', 'van broekhoven', 'Farhanm0155@gmail.com', 'Overig', 'DefaultOpleiding', 'Puccinistraat 90', 'Tilburg', 14, 'goed', '2024-01-22 10:32:14');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `gebruikerdata`
--
ALTER TABLE `gebruikerdata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `gebruikerdata`
--
ALTER TABLE `gebruikerdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

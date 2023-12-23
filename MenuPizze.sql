-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Dic 23, 2023 alle 09:39
-- Versione del server: 8.0.30
-- Versione PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_mtnvlr`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `MenuPizze`
--

CREATE TABLE `MenuPizze` (
  `Id` int NOT NULL,
  `Pizza` varchar(50) NOT NULL,
  `Bibita` varchar(50) NOT NULL,
  `Prezzo` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `MenuPizze`
--

INSERT INTO `MenuPizze` (`Id`, `Pizza`, `Bibita`, `Prezzo`) VALUES
(1, 'Margherita', 'Birra alla spina', 20),
(2, 'Diavola', 'Birra alla spina', 15),
(3, 'Estate', 'Cocacola', 18),
(4, 'Capricciosa', 'Birra alla spina', 16),
(5, 'Quattro Stagioni', 'Birra alla spina', 17),
(6, 'Boscaiola', 'Birra alla spina', 15),
(7, 'Speck e Provola', 'Birra alla spina', 18),
(8, 'Patate lesse e Funghi porcini', 'Birra alla spina', 20);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `MenuPizze`
--
ALTER TABLE `MenuPizze`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `MenuPizze`
--
ALTER TABLE `MenuPizze`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Dic 23, 2023 alle 09:38
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
-- Struttura della tabella `Menu`
--

CREATE TABLE `Menu` (
  `Id` int NOT NULL,
  `Primo` varchar(50) NOT NULL,
  `Secondo` varchar(50) NOT NULL,
  `Bibita` varchar(50) NOT NULL,
  `Dolce` varchar(50) NOT NULL,
  `Prezzo` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `Menu`
--

INSERT INTO `Menu` (`Id`, `Primo`, `Secondo`, `Bibita`, `Dolce`, `Prezzo`) VALUES
(1, 'Risotto alla Pescatora', 'Filetto di Manzo', 'Vino', 'Cheesecake', 40),
(2, 'Carbonara', 'Arrosticini', 'Vino', 'Tiramisu\'', 35),
(3, 'Lasagna', 'Roast Beef', 'Vino', 'Gelato', 45),
(4, 'Orecchiette con salsiccia e broccoli', 'Patate Fritte', 'Vino', 'Panettone Artigianale', 37),
(5, 'Risotto ai funghi Porcini con scaglie di Tartufo', 'Branzino in crosta di sale con erbe aromatiche', 'Vino', 'Panna cotta', 50);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `Menu`
--
ALTER TABLE `Menu`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `Menu`
--
ALTER TABLE `Menu`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

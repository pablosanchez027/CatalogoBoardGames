-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 17, 2019 at 07:39 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `catalogo_boardgames`
--

-- --------------------------------------------------------

--
-- Table structure for table `list_games`
--

CREATE TABLE `list_games` (
  `id` int(12) NOT NULL,
  `id_style` int(12) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `precio` int(25) NOT NULL,
  `lanzamiento` date NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `style_games`
--

CREATE TABLE `style_games` (
  `id` int(12) NOT NULL,
  `style` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `style_games`
--

INSERT INTO `style_games` (`id`, `style`) VALUES
(1, 'Aventura'),
(2, 'Euro-Style'),
(3, 'Party'),
(4, 'Area Control'),
(5, 'Wargame'),
(6, 'Coop');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `list_games`
--
ALTER TABLE `list_games`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_style` (`id_style`);

--
-- Indexes for table `style_games`
--
ALTER TABLE `style_games`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `list_games`
--
ALTER TABLE `list_games`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `style_games`
--
ALTER TABLE `style_games`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `list_games`
--
ALTER TABLE `list_games`
  ADD CONSTRAINT `list_games_ibfk_1` FOREIGN KEY (`id_style`) REFERENCES `style_games` (`id`);

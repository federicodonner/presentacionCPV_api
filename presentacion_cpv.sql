-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 05, 2020 at 10:46 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `presentacion_cpv`
--
CREATE DATABASE IF NOT EXISTS `presentacion_cpv` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `presentacion_cpv`;

-- --------------------------------------------------------

--
-- Table structure for table `actividad`
--

DROP TABLE IF EXISTS `actividad`;
CREATE TABLE `actividad` (
  `id` int(11) NOT NULL,
  `actividad_numero` int(11) NOT NULL,
  `guion_jugador_uno` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `guion_jugador_dos` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pregunta` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `opcion_uno` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `opcion_dos` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `opcion_tres` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `opcion_cuatro` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `respuesta_correcta` int(11) NOT NULL,
  `explicacion_respuesta` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `participante`
--

DROP TABLE IF EXISTS `participante`;
CREATE TABLE `participante` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `participa` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `participante`
--
ALTER TABLE `participante`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actividad`
--
ALTER TABLE `actividad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `participante`
--
ALTER TABLE `participante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

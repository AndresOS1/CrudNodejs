-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-05-2022 a las 18:37:30
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `farmingweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agricultor`
--

CREATE TABLE `agricultor` (
  `cond_numero` int(11) NOT NULL,
  `cond_documento` varchar(25) COLLATE utf8_bin NOT NULL,
  `cond_nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `cond_fecha_nacimiento` varchar(200) COLLATE utf8_bin NOT NULL,
  `cond_sexo` varchar(11) COLLATE utf8_bin NOT NULL,
  `cond_direccion` varchar(40) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `cond_numero` int(11) NOT NULL,
  `cond_documento` varchar(25) COLLATE utf8_bin NOT NULL,
  `cond_nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `cond_fecha_nacimiento` varchar(200) COLLATE utf8_bin NOT NULL,
  `cond_sexo` varchar(11) COLLATE utf8_bin NOT NULL,
  `cond_direccion` varchar(40) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `cond_numero` int(11) NOT NULL,
  `cond_nombre` varchar(25) COLLATE utf8_bin NOT NULL,
  `cond_tipo` varchar(200) COLLATE utf8_bin NOT NULL,
  `cond_descripcion` varchar(200) COLLATE utf8_bin NOT NULL,
  `cond_cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_agricultor`
--

CREATE TABLE `producto_agricultor` (
  `idAgroPro` varchar(45) COLLATE utf8_bin NOT NULL,
  `agricultor_cond_numero` int(11) NOT NULL,
  `producto_cond_numero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agricultor`
--
ALTER TABLE `agricultor`
  ADD PRIMARY KEY (`cond_numero`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cond_numero`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`cond_numero`);

--
-- Indices de la tabla `producto_agricultor`
--
ALTER TABLE `producto_agricultor`
  ADD PRIMARY KEY (`idAgroPro`,`agricultor_cond_numero`,`producto_cond_numero`),
  ADD KEY `agricultor_cond_numero` (`agricultor_cond_numero`),
  ADD KEY `producto_cond_numero` (`producto_cond_numero`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agricultor`
--
ALTER TABLE `agricultor`
  MODIFY `cond_numero` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cond_numero` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `cond_numero` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto_agricultor`
--
ALTER TABLE `producto_agricultor`
  ADD CONSTRAINT `producto_agricultor_ibfk_1` FOREIGN KEY (`agricultor_cond_numero`) REFERENCES `agricultor` (`cond_numero`),
  ADD CONSTRAINT `producto_agricultor_ibfk_2` FOREIGN KEY (`producto_cond_numero`) REFERENCES `producto` (`cond_numero`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

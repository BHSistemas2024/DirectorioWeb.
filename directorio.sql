-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-02-2024 a las 13:57:55
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `directorio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `id` int(11) NOT NULL,
  `region` varchar(255) NOT NULL,
  `storeName` varchar(255) NOT NULL,
  `administrator` varchar(255) NOT NULL,
  `cellphone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asesoresventasexternas`
--

CREATE TABLE `asesoresventasexternas` (
  `id` int(11) NOT NULL,
  `region` varchar(255) NOT NULL,
  `storeName` varchar(255) NOT NULL,
  `administrator` varchar(255) NOT NULL,
  `cellphone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `franquiciasbikehouse`
--

CREATE TABLE `franquiciasbikehouse` (
  `id` int(11) NOT NULL,
  `region` varchar(255) NOT NULL,
  `storeName` varchar(255) NOT NULL,
  `administrator` varchar(255) NOT NULL,
  `cellphone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiendasbikehouse`
--

CREATE TABLE `tiendasbikehouse` (
  `id` int(11) NOT NULL,
  `region` varchar(255) NOT NULL,
  `storeName` varchar(255) NOT NULL,
  `administrator` varchar(255) NOT NULL,
  `cellphone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `provider` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiendascliff`
--

CREATE TABLE `tiendascliff` (
  `id` int(11) NOT NULL,
  `region` varchar(255) DEFAULT NULL,
  `storeName` varchar(255) DEFAULT NULL,
  `administrator` varchar(255) DEFAULT NULL,
  `cellphone` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventasonline`
--

CREATE TABLE `ventasonline` (
  `id` int(11) NOT NULL,
  `region` varchar(255) NOT NULL,
  `storeName` varchar(255) NOT NULL,
  `administrator` varchar(255) NOT NULL,
  `cellphone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventasonline`
--

INSERT INTO `ventasonline` (`id`, `region`, `storeName`, `administrator`, `cellphone`, `email`, `message`) VALUES
(2, 'medellin', 's', 's', 'ss@gmailcom', 'camilovasquezrivas@gmail.com', 's');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `asesoresventasexternas`
--
ALTER TABLE `asesoresventasexternas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `franquiciasbikehouse`
--
ALTER TABLE `franquiciasbikehouse`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tiendasbikehouse`
--
ALTER TABLE `tiendasbikehouse`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tiendascliff`
--
ALTER TABLE `tiendascliff`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventasonline`
--
ALTER TABLE `ventasonline`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `asesoresventasexternas`
--
ALTER TABLE `asesoresventasexternas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `franquiciasbikehouse`
--
ALTER TABLE `franquiciasbikehouse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tiendasbikehouse`
--
ALTER TABLE `tiendasbikehouse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `tiendascliff`
--
ALTER TABLE `tiendascliff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `ventasonline`
--
ALTER TABLE `ventasonline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

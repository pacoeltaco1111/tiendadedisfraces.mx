-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-11-2024 a las 17:37:42
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `disfraces`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `nombre_completo` varchar(255) NOT NULL,
  `tipo_pago` varchar(50) NOT NULL,
  `disfraz_deseado` varchar(255) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `direccion` text NOT NULL,
  `sugerencia` text DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `nombre_completo`, `tipo_pago`, `disfraz_deseado`, `telefono`, `direccion`, `sugerencia`, `fecha_creacion`) VALUES
(1, 'marcos', 'efectivo', 'peniweys', '7227668998', 'no', 'no', '2024-11-11 16:14:10'),
(2, 'marcos', 'efectivo', 'peniweys', '7227668998', 'no', 'no', '2024-11-11 16:14:42'),
(3, 'marcos', 'tarjeta', 'peniweys', '7227668998', 'lopez mateos', '', '2024-11-11 16:20:01'),
(4, 'marcos', 'tarjeta', 'peniweys', '7227668998', 'lopez mateos', '', '2024-11-11 16:21:22'),
(5, 'marcos', 'tarjeta', 'peniweys', '7227668998', 'lopez mateos', '', '2024-11-11 16:21:58'),
(6, 'marcos', 'tarjeta', 'peniweys', '7227668998', 'lopez mateos', '', '2024-11-11 16:22:17');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

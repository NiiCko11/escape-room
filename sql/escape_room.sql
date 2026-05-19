-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-05-2026 a las 19:58:48
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
-- Base de datos: `escape_room`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pistas`
--

CREATE TABLE `pistas` (
  `id` int(11) NOT NULL,
  `nivel` int(11) NOT NULL,
  `pregunta` varchar(255) NOT NULL,
  `respuesta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pistas`
--

INSERT INTO `pistas` (`id`, `nivel`, `pregunta`, `respuesta`) VALUES
(1, 1, '¿Qué protocolo se usa para navegar por internet?', 'http'),
(2, 2, '¿Qué lenguaje se usa para estilos web?', 'css'),
(3, 3, '¿Qué lenguaje usamos en el servidor?', 'php'),
(4, 4, '¿Qué gestor de base de datos estamos usando?', 'mysql'),
(5, 1, 'Soy la estructura principal de una página web. Sin mí, no hay etiquetas ni contenido ordenado. ¿Quién soy?', 'html'),
(6, 2, 'Soy el lenguaje que da color, forma y estilo a una página web. ¿Quién soy?', 'css'),
(7, 3, 'Trabajo del lado del cliente y puedo validar formularios, mostrar alertas o cambiar elementos de la página. ¿Quién soy?', 'javascript'),
(8, 4, 'Vivo en el servidor, proceso formularios y puedo conectarme a una base de datos. ¿Quién soy?', 'php');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pistas`
--
ALTER TABLE `pistas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pistas`
--
ALTER TABLE `pistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

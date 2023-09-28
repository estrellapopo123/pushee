-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-09-2023 a las 18:20:22
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pushee cofee`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` varchar(50) NOT NULL,
  `tamaño` varchar(20) NOT NULL,
  `cantidad` varchar(50) NOT NULL,
  `idproducto` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `postres` varchar(50) NOT NULL,
  `bebidas` varchar(50) NOT NULL,
  `precio` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `tamaño`, `cantidad`, `idproducto`, `descripcion`, `postres`, `bebidas`, `precio`) VALUES
('', '', '', '', '', '', '', ''),
('pastel', 'grande', '6', '1001', 'postre de chocolate ', 'si', 'no', '50.00'),
('dona', 'mediana', '3', '1002', 'dona glaseada', 'si', 'no', '40.00'),
('hotcake', 'grande', '6', '1003', 'hotcakes de gato', 'si', 'no', '50.00'),
('cheesecake', 'mediano', '3', '1004', 'pastel de quesocrema', 'si', 'no', '48.00'),
('cupcake', 'medianos', '6', '1005', 'cup cake chocolate', 'si', 'no', '90.00'),
('yougur', 'mediana', '3', '1006', 'yogur con fruta ', 'si', 'no', '47.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `edad` varchar(2) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `contacto` varchar(50) NOT NULL,
  `numero` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idcliente`, `nombre`, `genero`, `edad`, `direccion`, `correo`, `contacto`, `numero`) VALUES
('001', 'vivian', 'mujer', '17', 'pedrera de los cisnes', 'vivitajiji123@gmail.com', 'Vivian torres Facebook', '6566549874'),
('002', 'Alcántara', 'hombre', '17', 'fraccionamiento las palomas', 'alcantarillajaja435@gmail.com', 'alcantara the besto Facebook', '6564789632'),
('003', 'Estrella', 'mujer', '18', 'privata recidencias salamanca 1744', 'jestar@gmail.com', 'esterlla Salas Facebook', '6566453288'),
('004', 'Ramiro', 'hombre', '19', 'san jose 1344', 'thewarrior1@gmail.com', 'Ramiro sanchez Facebook', ''),
('005', 'Gregorio', 'hombre', '17', 'San maria', 'gregoryroblox123@gmail.com', 'Gregorio Mata facebook', '6566545487');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `idempleado` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `salario` varchar(50) NOT NULL,
  `domicilio` varchar(50) NOT NULL,
  `edad` varchar(2) NOT NULL,
  `registro` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`idempleado`, `nombre`, `apellidos`, `numero`, `salario`, `domicilio`, `edad`, `registro`) VALUES
('1', 'Vivian', 'uribe mendoza', '6566549874', '2000 a la semana', 'san manuel', '15', 'repartidora'),
('2', 'christian', 'alcantara gomez', '6564789258', '1000', 'san pedro', '25', 'cajero'),
('3', 'Gregorio', 'Mata lechuga', '6566453147', '2000 a la semana', 'san manuel', '19', 'mesero'),
('4', 'santiaga', 'manuela torreon', '6564782558', '1000 a lla semana', 'san mariana', '18', 'conserje'),
('5', 'gustavo', 'salas piedrabuena', '6564785968', '10000', 'privata ', '23', 'administrador de la empresa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idproducto` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `cantidad` varchar(50) NOT NULL,
  `precio` varchar(5) NOT NULL,
  `descripcion` varchar(5) NOT NULL,
  `tamaño` varchar(50) NOT NULL,
  `idcategoria` varchar(50) NOT NULL,
  `proveedor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provedor`
--

CREATE TABLE `provedor` (
  `idprovedor` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `puntodeentrega` varchar(50) NOT NULL,
  `formadeenterga` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`idempleado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

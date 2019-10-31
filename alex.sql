-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2015 a las 00:22:24
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `practica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docencia`
--

CREATE TABLE IF NOT EXISTS `docencia` (
  `id_docencia` int(11) NOT NULL,
  `tipo` text NOT NULL,
  `institucion` text NOT NULL,
  `cod_modalidad` int(11) NOT NULL,
  `cod_lideres` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emprendimientoempresarial`
--

CREATE TABLE IF NOT EXISTS `emprendimientoempresarial` (
  `id_empresarial` int(11) NOT NULL,
  `nombre_empresarial` text NOT NULL,
  `cod_modalidad` int(11) NOT NULL,
  `cod_lideres` int(11) NOT NULL,
  `cod_empresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emprendimientosocial`
--

CREATE TABLE IF NOT EXISTS `emprendimientosocial` (
  `id_emprendimientosocial` int(11) NOT NULL,
  `nombre_emprendimiento` text NOT NULL,
  `institucion_emprendimiento` text NOT NULL,
  `tipo_emprendimiento` text NOT NULL,
  `id_lideres` int(11) NOT NULL,
  `cod_modalidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
  `id_empresa` int(11) NOT NULL,
  `razonsocial` text NOT NULL,
  `nit` text NOT NULL,
  `barrio` text NOT NULL,
  `direccion` text NOT NULL,
  `ciudad` text NOT NULL,
  `jefe_inmediato` text NOT NULL,
  `cargo_jefe` text NOT NULL,
  `telefono_jefe` int(12) NOT NULL,
  `correo_jefe` text NOT NULL,
  `codigo_proyecto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE IF NOT EXISTS `estudiante` (
  `id_estudiante` int(11) NOT NULL,
  `id` text NOT NULL,
  `nombre_estudiante` varchar(25) NOT NULL,
  `apellidos_estudiante` varchar(25) NOT NULL,
  `doc_identidad` text NOT NULL,
  `correo` text NOT NULL,
  `tel_fijo` int(12) NOT NULL,
  `celular` int(12) NOT NULL,
  `notadefinitiva` text NOT NULL,
  `semestre` int(5) NOT NULL,
  `jornada` text NOT NULL,
  `cod_programas` int(11) NOT NULL,
  `cod_modalidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lideres`
--

CREATE TABLE IF NOT EXISTS `lideres` (
  `id_lideres` int(11) NOT NULL,
  `nombre_lider` text NOT NULL,
  `apellido_lider` text NOT NULL,
  `doc_identidad` text NOT NULL,
  `correo_lider` text NOT NULL,
  `profesion_lider` text NOT NULL,
  `cod_proyecto` int(11) NOT NULL,
  `cod_profesion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modalidad`
--

CREATE TABLE IF NOT EXISTS `modalidad` (
  `cod_modalidad` int(11) NOT NULL,
  `nombre_modalidad` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE IF NOT EXISTS `programa` (
  `id_programa` int(11) NOT NULL,
  `nombre_programa` text NOT NULL,
  `perfil` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE IF NOT EXISTS `proyecto` (
  `id_proyecto` int(11) NOT NULL,
  `nombre_proyecto` text NOT NULL,
  `cod_modalidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE IF NOT EXISTS `registro` (
  `id_registro` int(11) NOT NULL,
  `fecha_registro` date NOT NULL,
  `num_registro` int(8) NOT NULL,
  `cod_proyecto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguimiento`
--

CREATE TABLE IF NOT EXISTS `seguimiento` (
  `id_seguimiento` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_terminacion` date NOT NULL,
  `observaciones` text NOT NULL,
  `numero_horas` int(11) NOT NULL,
  `desem_personal` text NOT NULL,
  `desem_profesional` text NOT NULL,
  `asistencia` text NOT NULL,
  `cod_estudiante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `semillero`
--

CREATE TABLE IF NOT EXISTS `semillero` (
  `id_semillero` int(11) NOT NULL,
  `nombre_semillero` text NOT NULL,
  `objetivo_semillero` text NOT NULL,
  `objetivos_especificossemillero` text NOT NULL,
  `cod_modalidad` int(11) NOT NULL,
  `cod_lideres` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `docencia`
--
ALTER TABLE `docencia`
  ADD PRIMARY KEY (`id_docencia`),
  ADD KEY `cod_modalidad` (`cod_modalidad`),
  ADD KEY `cod_lideres` (`cod_lideres`);

--
-- Indices de la tabla `emprendimientoempresarial`
--
ALTER TABLE `emprendimientoempresarial`
  ADD PRIMARY KEY (`id_empresarial`),
  ADD KEY `cod_modalidad` (`cod_modalidad`),
  ADD KEY `cod_lideres` (`cod_lideres`),
  ADD KEY `cod_empresa` (`cod_empresa`);

--
-- Indices de la tabla `emprendimientosocial`
--
ALTER TABLE `emprendimientosocial`
  ADD PRIMARY KEY (`id_emprendimientosocial`),
  ADD KEY `cod_lideres` (`id_lideres`),
  ADD KEY `cod_modalidad` (`cod_modalidad`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id_empresa`),
  ADD KEY `codigo_proyecto` (`codigo_proyecto`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id_estudiante`),
  ADD KEY `cod_programas` (`cod_programas`),
  ADD KEY `cod_modalidad` (`cod_modalidad`);

--
-- Indices de la tabla `lideres`
--
ALTER TABLE `lideres`
  ADD PRIMARY KEY (`id_lideres`),
  ADD KEY `cod_proyectos` (`cod_proyecto`),
  ADD KEY `cod_profesion` (`cod_profesion`);

--
-- Indices de la tabla `modalidad`
--
ALTER TABLE `modalidad`
  ADD PRIMARY KEY (`cod_modalidad`);

--
-- Indices de la tabla `programa`
--
ALTER TABLE `programa`
  ADD PRIMARY KEY (`id_programa`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`id_proyecto`),
  ADD KEY `cod_modalidad` (`cod_modalidad`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id_registro`),
  ADD KEY `cod_proyecto` (`cod_proyecto`);

--
-- Indices de la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  ADD PRIMARY KEY (`id_seguimiento`),
  ADD KEY `cod_estudiante` (`cod_estudiante`);

--
-- Indices de la tabla `semillero`
--
ALTER TABLE `semillero`
  ADD PRIMARY KEY (`id_semillero`),
  ADD KEY `cod_modalidad` (`cod_modalidad`),
  ADD KEY `cod_lideres` (`cod_lideres`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `docencia`
--
ALTER TABLE `docencia`
  ADD CONSTRAINT `docencia_ibfk_1` FOREIGN KEY (`cod_lideres`) REFERENCES `lideres` (`id_lideres`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `docencia_ibfk_2` FOREIGN KEY (`cod_modalidad`) REFERENCES `modalidad` (`cod_modalidad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `emprendimientoempresarial`
--
ALTER TABLE `emprendimientoempresarial`
  ADD CONSTRAINT `emprendimientoempresarial_ibfk_1` FOREIGN KEY (`cod_modalidad`) REFERENCES `modalidad` (`cod_modalidad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `emprendimientoempresarial_ibfk_2` FOREIGN KEY (`cod_lideres`) REFERENCES `lideres` (`id_lideres`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `emprendimientoempresarial_ibfk_3` FOREIGN KEY (`cod_empresa`) REFERENCES `empresa` (`id_empresa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `emprendimientosocial`
--
ALTER TABLE `emprendimientosocial`
  ADD CONSTRAINT `emprendimientosocial_ibfk_1` FOREIGN KEY (`id_lideres`) REFERENCES `lideres` (`id_lideres`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `emprendimientosocial_ibfk_2` FOREIGN KEY (`cod_modalidad`) REFERENCES `modalidad` (`cod_modalidad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD CONSTRAINT `empresa_ibfk_1` FOREIGN KEY (`codigo_proyecto`) REFERENCES `proyecto` (`id_proyecto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `estudiante_ibfk_1` FOREIGN KEY (`cod_programas`) REFERENCES `programa` (`id_programa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `estudiante_ibfk_2` FOREIGN KEY (`cod_modalidad`) REFERENCES `modalidad` (`cod_modalidad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lideres`
--
ALTER TABLE `lideres`
  ADD CONSTRAINT `lideres_ibfk_1` FOREIGN KEY (`cod_proyecto`) REFERENCES `proyecto` (`id_proyecto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD CONSTRAINT `proyecto_ibfk_1` FOREIGN KEY (`cod_modalidad`) REFERENCES `modalidad` (`cod_modalidad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `registro`
--
ALTER TABLE `registro`
  ADD CONSTRAINT `registro_ibfk_1` FOREIGN KEY (`cod_proyecto`) REFERENCES `proyecto` (`id_proyecto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  ADD CONSTRAINT `seguimiento_ibfk_1` FOREIGN KEY (`cod_estudiante`) REFERENCES `estudiante` (`id_estudiante`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `semillero`
--
ALTER TABLE `semillero`
  ADD CONSTRAINT `semillero_ibfk_1` FOREIGN KEY (`cod_modalidad`) REFERENCES `modalidad` (`cod_modalidad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `semillero_ibfk_2` FOREIGN KEY (`cod_lideres`) REFERENCES `lideres` (`id_lideres`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

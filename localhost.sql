-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 16-03-2022 a las 11:32:35
-- Versión del servidor: 5.7.37
-- Versión de PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `iccpuc_crisunap`
--
CREATE DATABASE IF NOT EXISTS `iccpuc_escala` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `iccpuc_escala`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admusers`
--

CREATE TABLE `admusers` (
  `id` int(11) NOT NULL,
  `IdTypeUser` int(11) NOT NULL,
  `DNI` varchar(8) NOT NULL,
  `pwadmin` varchar(120) NOT NULL,
  `lastnameadmin` varchar(25) NOT NULL,
  `firstnameadmin` varchar(25) NOT NULL,
  `responsable` varchar(200) NOT NULL,
  `level` tinyint(2) NOT NULL COMMENT '1 super admin| 2 admin',
  `status` tinyint(2) NOT NULL COMMENT '0 desactivo | 1 activo',
  `Datereg` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DateMod` datetime NOT NULL,
  `IdUserMod` int(11) NOT NULL,
  `obs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admusers`
--

INSERT INTO `admusers` (`id`, `IdTypeUser`, `DNI`, `pwadmin`, `lastnameadmin`, `firstnameadmin`, `responsable`, `level`, `status`, `Datereg`, `DateMod`, `IdUserMod`, `obs`) VALUES
(1, 7, '11111111', 'a642a77abd7d4f51bf9226ceaf891fcbb5b299b8', 'Super', 'Admin', 'All', 1, 1, '2022-02-25 11:17:55', '0000-00-00 00:00:00', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicacademiclevel`
--

CREATE TABLE `dicacademiclevel` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(500) NOT NULL,
  `Status` int(11) NOT NULL,
  `DateReg` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dicacademiclevel`
--

INSERT INTO `dicacademiclevel` (`Id`, `Nombre`, `Status`, `DateReg`) VALUES
(1, 'Estudiante', 1, '2022-01-20 23:48:20'),
(2, 'Estudios Concluidos', 1, '2022-01-20 23:48:27'),
(3, 'Con Grado Académico', 1, '2022-01-20 23:48:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicacademictype`
--

CREATE TABLE `dicacademictype` (
  `Id` int(11) NOT NULL,
  `Name` varchar(300) NOT NULL,
  `Status` int(11) NOT NULL,
  `ModifDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dicacademictype`
--

INSERT INTO `dicacademictype` (`Id`, `Name`, `Status`, `ModifDate`) VALUES
(1, 'Bachiller', 1, '2022-01-20 23:11:24'),
(2, 'Título Profesional', 1, '2022-01-20 23:11:24'),
(3, 'Maestría', 1, '2022-01-20 23:11:24'),
(4, 'Doctorado', 1, '2022-01-20 23:11:24'),
(5, 'Post - Doctorado', 1, '2022-01-20 23:11:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicafiliations`
--

CREATE TABLE `dicafiliations` (
  `Id` int(11) NOT NULL,
  `Type` int(11) NOT NULL COMMENT '1. Universidades 2. Institucion Publica 3. Institución Privada',
  `Name` varchar(150) NOT NULL,
  `Status` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dicafiliations`
--

INSERT INTO `dicafiliations` (`Id`, `Type`, `Name`, `Status`, `Date`) VALUES
(1, 1, 'Universidad Nacional del Altiplano Puno', 1, '2022-01-24 20:20:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicauthortype`
--

CREATE TABLE `dicauthortype` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Status` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dicauthortype`
--

INSERT INTO `dicauthortype` (`Id`, `Name`, `Status`, `Date`) VALUES
(1, 'Autor Principal', 1, '2022-01-21 04:20:25'),
(2, 'Co-Autor', 1, '2022-01-21 04:20:25'),
(3, 'Editor', 1, '2022-01-21 04:20:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diccarreras`
--

CREATE TABLE `diccarreras` (
  `Id` int(11) NOT NULL,
  `IdFacultad` int(11) NOT NULL,
  `Nombre` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Nombre2` varchar(255) NOT NULL,
  `Titulo` varchar(90) CHARACTER SET utf8 NOT NULL,
  `Logo` varchar(300) NOT NULL,
  `Descripcion` varchar(300) NOT NULL,
  `Web` varchar(300) NOT NULL,
  `IdResponsable` varchar(300) NOT NULL,
  `Postal` varchar(255) NOT NULL,
  `Id_area` int(11) NOT NULL,
  `Id_areaU` int(11) NOT NULL,
  `Id_lineas` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `Id_facultad` int(11) NOT NULL,
  `dateReg` datetime NOT NULL,
  `dateMod` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `diccarreras`
--

INSERT INTO `diccarreras` (`Id`, `IdFacultad`, `Nombre`, `Nombre2`, `Titulo`, `Logo`, `Descripcion`, `Web`, `IdResponsable`, `Postal`, `Id_area`, `Id_areaU`, `Id_lineas`, `idUser`, `Id_facultad`, `dateReg`, `dateMod`) VALUES
(1, 1, 'Ingeniería Agronómica', 'Ingeniería Agronómica', 'INGENIERO AGRÓNOMO', '', '', 'https://portal.unap.edu.pe/malla-curicular-plan-de-estudios-2', '95', '', 1, 1, 0, 95, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 'Ingeniería Agroindustrial', 'Ingeniería Agroindustrial', 'INGENIERO AGROINDUSTRIAL', '', '', 'https://portal.unap.edu.pe/pagina-en-construccion', '6', '', 1, 1, 0, 6, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, 'Ingeniería Topográfica y Agrimensura', 'Ingeniería Topográfica y Agrimensura', 'INGENIERO TOPÓGRAFO Y AGRIMENSOR', '', '', 'https://portal.unap.edu.pe/pagina-en-construccion', '95', '', 1, 1, 0, 6, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 2, 'Medicina Veterinaria y Zootecnia', 'Medicina Veterinaria y Zootecnia', 'MÉDICO VETERINARIO Y ZOOTECNISTA', '', '', '', '5', '', 2, 2, 0, 6, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 3, 'Ingeniería Económica', 'Ingeniería Económica', 'INGENIERO ECONOMISTA', '', '', '', '95', '', 3, 3, 0, 6, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 4, 'Administración', 'Administración', 'LICENCIADO EN ADMINISTRACIÓN', '', '', 'https://portal.unap.edu.pe/', '95', '', 3, 3, 0, 6, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 4, 'Ciencias Contables', 'Ciencias Contables', 'CONTADOR PÚBLICO', '', '', 'https://portal.unap.edu.pe/', '95', '', 3, 3, 0, 6, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 5, 'Trabajo Social', 'Trabajo Social', 'LICENCIADA(O)  EN TRABAJO SOCIAL', '', '', '', '95', '', 4, 4, 0, 6, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 6, 'Enfermería', 'Enfermería', 'LICENCIADO EN ENFERMERIA', 'https://ep.unap.edu.pe/enfermeria/wp-content/themes/TemaPrincipal%202.0/img/EP_Enfermeria_295x390.png', 'Al empezar nuestra jornada académica, tenemos la gran esperanza de seguir con los planes y el crecimiento de nuestra Escuela Profesional, para lo cual contamos con la ayuda de Dios, el esfuerzo, la dedicación y compromiso de directivos, docentes y estudiantes, con el propósito de cumplir con nuestra', 'https://ep.unap.edu.pe/enfermeria/', '1', '', 2, 2, 0, 6, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 7, 'Antropología', 'Antropología', 'LICENCIADO EN ANTROPOLOGÍA', '', '', 'https://portal.unap.edu.pe/', '95', '', 4, 4, 0, 6, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 7, 'Arte', 'Arte', 'LICENCIADO EN ARTE', '', '', 'https://portal.unap.edu.pe/', '6', '', 4, 4, 0, 6, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 7, 'Ciencias de la Comunicación Social', 'Ciencias de la Comunicación Social', 'LICENCIADO EN CIENCIAS DE LA COMUNICACIÓN SOCIAL', '', '', '', '6', '', 4, 4, 0, 6, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 7, 'Sociología', 'Sociología', 'LICENCIADO EN SOCIOLOGÌA', '', '', '', '6', '', 4, 4, 0, 6, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 7, 'Turismo', 'Turismo', 'LICENCIADO EN TURISMO', '', '', '', '95', '', 4, 3, 0, 6, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 8, 'Ingeniería de Minas', 'Ingeniería de Minas', 'INGENIERO DE MINAS', '', '', '', '6', '', 1, 1, 0, 6, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 9, 'Biología', 'Biología', 'LICENCIADO EN BIOLOGÍA', '', '', 'https://portal.unap.edu.pe/', '95', '', 2, 2, 0, 6, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 10, 'Educación Física', 'Educación Física', 'LICENCIADO EN EDUCACIÓN FÍSICA', '', '', '', '6', '', 4, 4, 0, 6, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 10, 'Educación Inicial', 'Educación Inicial', 'LICENCIADO EN EDUCACIÓN INICIAL', '', '', '', '95', '', 4, 4, 0, 6, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 10, 'Educación Primaria', 'Educación Primaria', 'LICENCIADO EN EDUCACIÓN PRIMARIA', '', '', '', '6', '', 4, 4, 0, 6, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 10, 'Educación Secundaria', 'Educación Secundaria', 'LICENCIADO EN EDUCACIÓN SECUNDARIA', '', '', '', '6', '', 4, 4, 0, 6, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 11, 'Ingeniería Estadística e Informática', 'Ingeniería Estadística e Informática', 'INGENIERO ESTADÍSTICO E INFORMÁTICO', '', 'Profundizar en los temas de investigación en los que Acuicultura y nutrición de organismos acuáticos está activo. Estas etiquetas de temas provienen de las obras de los integrantes de esta organización. Juntos, forma una huella digital única.', 'x', '95', '', 1, 1, 0, 95, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 12, 'Derecho', 'Derecho', 'ABOGADO', '', '', '', '6', '', 4, 4, 0, 6, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 13, 'Ingeniería Química', 'Ingeniería Química', 'INGENIERO QUÍMICO', '', '', '', '6', '', 1, 1, 0, 6, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 14, 'Nutrición Humana', 'Nutrición Humana', 'LICENCIADO(A) EN NUTRICIÓN', '', '', '', '95', '', 2, 2, 0, 6, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 14, 'Odontología', 'Odontología', 'CIRUJANO DENTISTA', '', '', '', '95', '', 2, 2, 0, 6, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 15, 'Ingeniería Geológica', 'Ingeniería Geológica', 'INGENIERO GEÓLOGO', '', '', '', '95', '', 1, 1, 0, 95, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 15, 'Ingeniería Metalúrgica', 'Ingeniería Metalúrgica', 'INGENIERO METALURGÍSTA', '', '', '', '95', '', 1, 1, 0, 95, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 16, 'Arquitectura y Urbanismo', 'Arquitectura y Urbanismo', 'ARQUITECTO', '', '', 'https://portal.unap.edu.pe/', '95', '', 1, 1, 0, 95, 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 16, 'Ciencias Físico Matemáticas', 'Ciencias Físico Matemáticas', 'LICENCIADO EN FÍSICO MATEMATICAS', '', '', '', '95', '', 1, 1, 0, 95, 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 16, 'Ingeniería Civil', 'Ingeniería Civil', 'INGENIERO CIVIL', '', '', '', '95', '', 1, 1, 0, 6, 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 17, 'Ingeniería Agrícola', 'Ingeniería Agrícola', 'INGENIERO AGRICOLA', '', '', 'https://portal.unap.edu.pe/pagina-en-construccion', '95', '', 1, 1, 0, 95, 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 18, 'Medicina Humana', 'Medicina Humana', 'MEDICO CIRUJANO', '', '', '', '95', '', 2, 2, 0, 95, 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 19, 'Ingeniería Electrónica', 'Ingeniería Electrónica', 'INGENIERO ELECTRÓNICO', '', '', '', '95', '', 1, 1, 0, 95, 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 19, 'Ingeniería Mecánica Eléctrica', 'Ingeniería Mecánica Eléctrica', 'INGENIERO MECÁNICO ELÉCTRICISTA', '', '', '', '95', '', 1, 1, 0, 95, 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 19, 'Ingeniería de Sistemas', 'Ingeniería de Sistemas', 'INGENIERO DE SISTEMAS', '', '', '', '95', '', 1, 1, 0, 95, 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 7, 'Ciencias Sociales: Departamento de Humanidades', 'Ciencias Sociales: Departamento de Humanidades', '', '', '', '', '95', '', 4, 4, 0, 95, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 0, 'Alimentos y salud', '', '', 'alimento.jpg', 'El Grupo de Investigación Alimentación y Salud está conformado por profesionales de las especialidades de salud como químicos farmacéuticos, médicos, nutricionistas y destacados investigadores. En este grupo también participan estudiantes de pre y posgrado para ir formando escuela en el tema. b. El', 'https://vriunap.pe/', '95', 'Av. Floral Nº 1153, Ciudad de Puno - Perú', 2, 1, 21, 95, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diccategoriainvestigacion`
--

CREATE TABLE `diccategoriainvestigacion` (
  `Id_categoria` int(11) NOT NULL,
  `Nombre_categoria` varchar(255) NOT NULL,
  `Estado` int(11) NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `diccategoriainvestigacion`
--

INSERT INTO `diccategoriainvestigacion` (`Id_categoria`, `Nombre_categoria`, `Estado`, `Fecha`) VALUES
(1, 'Categoría A', 1, '2022-01-24'),
(2, 'Categoría B', 1, '2022-01-24'),
(3, 'Categoría C', 1, '2022-01-24'),
(4, 'Categoría D', 1, '2022-01-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diccategoryteacher`
--

CREATE TABLE `diccategoryteacher` (
  `Id` int(11) NOT NULL,
  `Tipo` varchar(2) NOT NULL,
  `Name` varchar(26) NOT NULL,
  `Abrev` varchar(15) NOT NULL,
  `DateReg` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Estado` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `diccategoryteacher`
--

INSERT INTO `diccategoryteacher` (`Id`, `Tipo`, `Name`, `Abrev`, `DateReg`, `Estado`) VALUES
(1, 'N', 'DOCENTE PRINCIPAL D.E.', 'PRINC.D.E', '2022-02-04 22:47:53', 1),
(2, 'N', 'DOCENTE PRINCIPAL T.C.', 'PRINC.T.C', '2022-02-04 22:47:53', 1),
(3, 'N', 'DOCENTE PRINCIPAL T.P.', 'PRINC.T.P', '2022-02-04 22:47:53', 1),
(4, 'N', 'DOCENTE ASOCIADO D.E.', 'ASOC.D.E.', '2022-02-04 22:47:53', 1),
(5, 'N', 'DOCENTE ASOCIADO T.C.', 'ASOC.T.C.', '2022-02-04 22:47:53', 1),
(6, 'N', 'DOCENTE ASOCIADO T.P.', 'ASOC.T.P.', '2022-02-04 22:47:53', 1),
(7, 'N', 'DOCENTE AUXILIAR D.E.', 'AUX.D.E.', '2022-02-04 22:47:53', 1),
(8, 'N', 'DOCENTE AUXILIAR T.C.', 'AUX.T.C.', '2022-02-04 22:47:53', 1),
(9, 'N', 'DOCENTE AUXILIAR T.P.', 'AUX.T.P.', '2022-02-04 22:47:53', 1),
(10, 'N', 'DOCENTE J.P.D.E.', 'J.P.D.E.', '2022-02-04 22:47:53', 1),
(11, 'N', 'DOCENTE J.P.T.C.', 'J.P.T.C.', '2022-02-04 22:47:53', 1),
(12, 'N', 'DOCENTE J.P.T.P.', 'J.P.T.P.', '2022-02-04 22:47:53', 1),
(13, 'C', 'CONTRATADO ASOCIADO T.C.', 'ASOC.T.C.', '2022-02-04 22:47:53', 1),
(14, 'C', 'CONTRATADO ASOCIADO T.P.', 'ASOC.T.P.', '2022-02-04 22:47:53', 1),
(15, 'C', 'CONTRATADO AUXILIAR T.C.', 'AUX.T.C.', '2022-02-04 22:47:53', 1),
(16, 'C', 'CONTRATADO AUXILIAR T.P.', 'AUX.T.P.', '2022-02-04 22:47:53', 1),
(17, 'C', 'CONTRATADO J.P.T.C.', 'J.P.T.C.', '2022-02-04 22:47:53', 1),
(18, 'C', 'CONTRATADO J.P.T.P.', 'J.P.T.P.', '2022-02-04 22:47:53', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicconceptosinvestigacion`
--

CREATE TABLE `dicconceptosinvestigacion` (
  `Id_conceptos` int(11) NOT NULL,
  `Nombre_conceptos` varchar(255) NOT NULL,
  `Estado` int(11) NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dicconceptosinvestigacion`
--

INSERT INTO `dicconceptosinvestigacion` (`Id_conceptos`, `Nombre_conceptos`, `Estado`, `Fecha`) VALUES
(1, 'Perú', 0, '0000-00-00'),
(2, 'Población', 0, '0000-00-00'),
(3, 'Genes', 0, '0000-00-00'),
(4, 'Niño', 0, '0000-00-00'),
(5, 'Estudios Transversales', 0, '0000-00-00'),
(6, 'ser humano', 0, '0000-00-00'),
(7, 'Estudiantes', 0, '0000-00-00'),
(8, 'ansiedad', 0, '0000-00-00'),
(9, 'Intervalos de confianza', 0, '0000-00-00'),
(10, 'Salud', 0, '0000-00-00'),
(11, 'industria', 0, '0000-00-00'),
(12, 'periódico', 0, '0000-00-00'),
(13, 'Reacción en cadena de la polimerasa', 0, '0000-00-00'),
(14, 'estudiante', 0, '0000-00-00'),
(15, 'Estudiantes', 0, '0000-00-00'),
(16, 'Alelos', 0, '0000-00-00'),
(17, 'análisis', 0, '0000-00-00'),
(18, 'Sangre', 0, '0000-00-00'),
(19, 'estudio transversal', 0, '0000-00-00'),
(20, 'Experimentos', 0, '0000-00-00'),
(21, 'Genotipo', 0, '0000-00-00'),
(22, 'America latina', 0, '0000-00-00'),
(23, 'Hígado', 0, '0000-00-00'),
(24, 'material', 0, '0000-00-00'),
(25, 'Problemas médicos', 0, '0000-00-00'),
(26, 'Repeticiones de microsatélites', 0, '0000-00-00'),
(27, 'Neoplasias', 0, '0000-00-00'),
(28, 'Razón de probabilidades', 0, '0000-00-00'),
(29, 'Pandemias', 0, '0000-00-00'),
(30, 'Ciencias', 0, '0000-00-00'),
(31, 'Suero', 0, '0000-00-00'),
(32, 'sitio arqueológico', 0, '0000-00-00'),
(33, 'Biotecnología', 0, '0000-00-00'),
(34, 'Vacas', 0, '0000-00-00'),
(35, 'Clase', 0, '0000-00-00'),
(36, 'Filtros Kalman extendidos', 0, '0000-00-00'),
(37, 'Metales pesados', 0, '0000-00-00'),
(38, 'Identificaciónde control)', 0, '0000-00-00'),
(39, 'Métodos de Lyapunov', 0, '0000-00-00'),
(40, 'micronutrientes', 0, '0000-00-00'),
(41, 'Sistema nervioso', 0, '0000-00-00'),
(42, 'polacos', 0, '0000-00-00'),
(43, 'cuarzo', 0, '0000-00-00'),
(44, 'Tasa de convergencia', 0, '0000-00-00'),
(45, 'Supervivencia', 0, '0000-00-00'),
(46, 'control de velocidad', 0, '0000-00-00'),
(47, 'Ruedas', 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diccountrys`
--

CREATE TABLE `diccountrys` (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Status` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `diccountrys`
--

INSERT INTO `diccountrys` (`Id`, `Name`, `Status`, `Date`) VALUES
(1, 'PERU', 1, '0000-00-00 00:00:00'),
(2, 'AFGANISTAN', 1, '0000-00-00 00:00:00'),
(3, 'ALBANIA', 1, '0000-00-00 00:00:00'),
(4, 'ALEMANIA', 1, '0000-00-00 00:00:00'),
(5, 'ANDORRA', 1, '0000-00-00 00:00:00'),
(6, 'ANGOLA', 1, '0000-00-00 00:00:00'),
(7, 'ANGUILLA', 1, '0000-00-00 00:00:00'),
(8, 'ANTIGUA Y BARBUDA', 1, '0000-00-00 00:00:00'),
(9, 'ANTILLAS HOLANDESAS', 1, '0000-00-00 00:00:00'),
(10, 'ARABIA SAUDI', 1, '0000-00-00 00:00:00'),
(11, 'ARGELIA', 1, '0000-00-00 00:00:00'),
(12, 'ARGENTINA', 1, '0000-00-00 00:00:00'),
(13, 'ARMENIA', 1, '0000-00-00 00:00:00'),
(14, 'ARUBA', 1, '0000-00-00 00:00:00'),
(15, 'AUSTRALIA', 1, '0000-00-00 00:00:00'),
(16, 'AUSTRIA', 1, '0000-00-00 00:00:00'),
(17, 'AZERBAIYAN', 1, '0000-00-00 00:00:00'),
(18, 'BAHAMAS', 1, '0000-00-00 00:00:00'),
(19, 'BAHREIN', 1, '0000-00-00 00:00:00'),
(20, 'BANGLADESH', 1, '0000-00-00 00:00:00'),
(21, 'BARBADOS', 1, '0000-00-00 00:00:00'),
(22, 'BELARUS', 1, '0000-00-00 00:00:00'),
(23, 'BELGICA', 1, '0000-00-00 00:00:00'),
(24, 'BELICE', 1, '0000-00-00 00:00:00'),
(25, 'BENIN', 1, '0000-00-00 00:00:00'),
(26, 'BERMUDAS', 1, '0000-00-00 00:00:00'),
(27, 'BHUTÁN', 1, '0000-00-00 00:00:00'),
(28, 'BOLIVIA', 1, '0000-00-00 00:00:00'),
(29, 'BOSNIA Y HERZEGOVINA', 1, '0000-00-00 00:00:00'),
(30, 'BOTSWANA', 1, '0000-00-00 00:00:00'),
(31, 'BRASIL', 1, '0000-00-00 00:00:00'),
(32, 'BRUNEI', 1, '0000-00-00 00:00:00'),
(33, 'BULGARIA', 1, '0000-00-00 00:00:00'),
(34, 'BURKINA FASO', 1, '0000-00-00 00:00:00'),
(35, 'BURUNDI', 1, '0000-00-00 00:00:00'),
(36, 'CABO VERDE', 1, '0000-00-00 00:00:00'),
(37, 'CAMBOYA', 1, '0000-00-00 00:00:00'),
(38, 'CAMERUN', 1, '0000-00-00 00:00:00'),
(39, 'CANADA', 1, '0000-00-00 00:00:00'),
(40, 'CHAD', 1, '0000-00-00 00:00:00'),
(41, 'CHILE', 1, '0000-00-00 00:00:00'),
(42, 'CHINA', 1, '0000-00-00 00:00:00'),
(43, 'CHIPRE', 1, '0000-00-00 00:00:00'),
(44, 'COLOMBIA', 1, '0000-00-00 00:00:00'),
(45, 'COMORES', 1, '0000-00-00 00:00:00'),
(46, 'CONGO', 1, '0000-00-00 00:00:00'),
(47, 'COREA', 1, '0000-00-00 00:00:00'),
(48, 'COREA DEL NORTE ', 1, '0000-00-00 00:00:00'),
(49, 'COSTA DE MARFIL', 1, '0000-00-00 00:00:00'),
(50, 'COSTA RICA', 1, '0000-00-00 00:00:00'),
(51, 'CROACIA', 1, '0000-00-00 00:00:00'),
(52, 'CUBA', 1, '0000-00-00 00:00:00'),
(53, 'DINAMARCA', 1, '0000-00-00 00:00:00'),
(54, 'DJIBOUTI', 1, '0000-00-00 00:00:00'),
(55, 'DOMINICA', 1, '0000-00-00 00:00:00'),
(56, 'ECUADOR', 1, '0000-00-00 00:00:00'),
(57, 'EGIPTO', 1, '0000-00-00 00:00:00'),
(58, 'EL SALVADOR', 1, '0000-00-00 00:00:00'),
(59, 'EMIRATOS ARABES UNIDOS', 1, '0000-00-00 00:00:00'),
(60, 'ERITREA', 1, '0000-00-00 00:00:00'),
(61, 'ESLOVENIA', 1, '0000-00-00 00:00:00'),
(62, 'ESPAÑA', 1, '0000-00-00 00:00:00'),
(63, 'ESTADOS UNIDOS DE AMERICA', 1, '0000-00-00 00:00:00'),
(64, 'ESTONIA', 1, '0000-00-00 00:00:00'),
(65, 'ETIOPIA', 1, '0000-00-00 00:00:00'),
(66, 'FIJI', 1, '0000-00-00 00:00:00'),
(67, 'FILIPINAS', 1, '0000-00-00 00:00:00'),
(68, 'FINLANDIA', 1, '0000-00-00 00:00:00'),
(69, 'FRANCIA', 1, '0000-00-00 00:00:00'),
(70, 'GABON', 1, '0000-00-00 00:00:00'),
(71, 'GAMBIA', 1, '0000-00-00 00:00:00'),
(72, 'GEORGIA', 1, '0000-00-00 00:00:00'),
(73, 'GHANA', 1, '0000-00-00 00:00:00'),
(74, 'GIBRALTAR', 1, '0000-00-00 00:00:00'),
(75, 'GRANADA', 1, '0000-00-00 00:00:00'),
(76, 'GRECIA', 1, '0000-00-00 00:00:00'),
(77, 'GROENLANDIA', 1, '0000-00-00 00:00:00'),
(78, 'GUADALUPE', 1, '0000-00-00 00:00:00'),
(79, 'GUAM', 1, '0000-00-00 00:00:00'),
(80, 'GUATEMALA', 1, '0000-00-00 00:00:00'),
(81, 'GUAYANA FRANCESA', 1, '0000-00-00 00:00:00'),
(82, 'GUERNESEY', 1, '0000-00-00 00:00:00'),
(83, 'GUINEA', 1, '0000-00-00 00:00:00'),
(84, 'GUINEA ECUATORIAL', 1, '0000-00-00 00:00:00'),
(85, 'GUINEA-BISSAU', 1, '0000-00-00 00:00:00'),
(86, 'GUYANA', 1, '0000-00-00 00:00:00'),
(87, 'HAITI', 1, '0000-00-00 00:00:00'),
(88, 'HONDURAS', 1, '0000-00-00 00:00:00'),
(89, 'HONG KONG', 1, '0000-00-00 00:00:00'),
(90, 'HUNGRIA', 1, '0000-00-00 00:00:00'),
(91, 'INDIA', 1, '0000-00-00 00:00:00'),
(92, 'INDONESIA', 1, '0000-00-00 00:00:00'),
(93, 'IRAN', 1, '0000-00-00 00:00:00'),
(94, 'IRAQ', 1, '0000-00-00 00:00:00'),
(95, 'IRLANDA', 1, '0000-00-00 00:00:00'),
(96, 'ISLA DE MAN', 1, '0000-00-00 00:00:00'),
(97, 'ISLA NORFOLK', 1, '0000-00-00 00:00:00'),
(98, 'ISLANDIA', 1, '0000-00-00 00:00:00'),
(99, 'ISLAS ALAND', 1, '0000-00-00 00:00:00'),
(100, 'ISLAS CAIMÁN', 1, '0000-00-00 00:00:00'),
(101, 'ISLAS COOK', 1, '0000-00-00 00:00:00'),
(102, 'ISLAS DEL CANAL', 1, '0000-00-00 00:00:00'),
(103, 'ISLAS FEROE', 1, '0000-00-00 00:00:00'),
(104, 'ISLAS MALVINAS', 1, '0000-00-00 00:00:00'),
(105, 'ISLAS MARIANAS DEL NORTE', 1, '0000-00-00 00:00:00'),
(106, 'ISLAS MARSHALL', 1, '0000-00-00 00:00:00'),
(107, 'ISLAS PITCAIRN', 1, '0000-00-00 00:00:00'),
(108, 'ISLAS SALOMON', 1, '0000-00-00 00:00:00'),
(109, 'ISLAS TURCAS Y CAICOS', 1, '0000-00-00 00:00:00'),
(110, 'ISLAS VIRGENES BRITANICAS', 1, '0000-00-00 00:00:00'),
(111, 'ISLAS VÍRGENES DE LOS ESTADOS UNIDOS', 1, '0000-00-00 00:00:00'),
(112, 'ISRAEL', 1, '0000-00-00 00:00:00'),
(113, 'ITALIA', 1, '0000-00-00 00:00:00'),
(114, 'JAMAICA', 1, '0000-00-00 00:00:00'),
(115, 'JAPON', 1, '0000-00-00 00:00:00'),
(116, 'JERSEY', 1, '0000-00-00 00:00:00'),
(117, 'JORDANIA', 1, '0000-00-00 00:00:00'),
(118, 'KAZAJSTAN', 1, '0000-00-00 00:00:00'),
(119, 'KENIA', 1, '0000-00-00 00:00:00'),
(120, 'KIRGUISTAN', 1, '0000-00-00 00:00:00'),
(121, 'KIRIBATI', 1, '0000-00-00 00:00:00'),
(122, 'KUWAIT', 1, '0000-00-00 00:00:00'),
(123, 'LAOS', 1, '0000-00-00 00:00:00'),
(124, 'LESOTHO', 1, '0000-00-00 00:00:00'),
(125, 'LETONIA', 1, '0000-00-00 00:00:00'),
(126, 'LIBANO', 1, '0000-00-00 00:00:00'),
(127, 'LIBERIA', 1, '0000-00-00 00:00:00'),
(128, 'LIBIA', 1, '0000-00-00 00:00:00'),
(129, 'LIECHTENSTEIN', 1, '0000-00-00 00:00:00'),
(130, 'LITUANIA', 1, '0000-00-00 00:00:00'),
(131, 'LUXEMBURGO', 1, '0000-00-00 00:00:00'),
(132, 'MACAO', 1, '0000-00-00 00:00:00'),
(133, 'MACEDONIA ', 1, '0000-00-00 00:00:00'),
(134, 'MADAGASCAR', 1, '0000-00-00 00:00:00'),
(135, 'MALASIA', 1, '0000-00-00 00:00:00'),
(136, 'MALAWI', 1, '0000-00-00 00:00:00'),
(137, 'MALDIVAS', 1, '0000-00-00 00:00:00'),
(138, 'MALI', 1, '0000-00-00 00:00:00'),
(139, 'MALTA', 1, '0000-00-00 00:00:00'),
(140, 'MARRUECOS', 1, '0000-00-00 00:00:00'),
(141, 'MARTINICA', 1, '0000-00-00 00:00:00'),
(142, 'MAURICIO', 1, '0000-00-00 00:00:00'),
(143, 'MAURITANIA', 1, '0000-00-00 00:00:00'),
(144, 'MAYOTTE', 1, '0000-00-00 00:00:00'),
(145, 'MEXICO', 1, '0000-00-00 00:00:00'),
(146, 'MICRONESIA', 1, '0000-00-00 00:00:00'),
(147, 'MOLDAVIA', 1, '0000-00-00 00:00:00'),
(148, 'MONACO', 1, '0000-00-00 00:00:00'),
(149, 'MONGOLIA', 1, '0000-00-00 00:00:00'),
(150, 'MONTENEGRO', 1, '0000-00-00 00:00:00'),
(151, 'MONTSERRAT', 1, '0000-00-00 00:00:00'),
(152, 'MOZAMBIQUE', 1, '0000-00-00 00:00:00'),
(153, 'MYANMAR', 1, '0000-00-00 00:00:00'),
(154, 'NAMIBIA', 1, '0000-00-00 00:00:00'),
(155, 'NAURU', 1, '0000-00-00 00:00:00'),
(156, 'NEPAL', 1, '0000-00-00 00:00:00'),
(157, 'NICARAGUA', 1, '0000-00-00 00:00:00'),
(158, 'NIGER', 1, '0000-00-00 00:00:00'),
(159, 'NIGERIA', 1, '0000-00-00 00:00:00'),
(160, 'NIUE', 1, '0000-00-00 00:00:00'),
(161, 'NORUEGA', 1, '0000-00-00 00:00:00'),
(162, 'NUEVA CALEDONIA', 1, '0000-00-00 00:00:00'),
(163, 'NUEVA ZELANDA', 1, '0000-00-00 00:00:00'),
(164, 'OMAN', 1, '0000-00-00 00:00:00'),
(165, 'PAISES BAJOS', 1, '0000-00-00 00:00:00'),
(166, 'PAKISTAN', 1, '0000-00-00 00:00:00'),
(167, 'PALAOS', 1, '0000-00-00 00:00:00'),
(168, 'PALESTINA', 1, '0000-00-00 00:00:00'),
(169, 'PANAMA', 1, '0000-00-00 00:00:00'),
(170, 'PAPUA NUEVA GUINEA', 1, '0000-00-00 00:00:00'),
(171, 'PARAGUAY', 1, '0000-00-00 00:00:00'),
(172, 'POLINESIA FRANCESA', 1, '0000-00-00 00:00:00'),
(173, 'POLONIA', 1, '0000-00-00 00:00:00'),
(174, 'PORTUGAL', 1, '0000-00-00 00:00:00'),
(175, 'PUERTO RICO', 1, '0000-00-00 00:00:00'),
(176, 'QATAR', 1, '0000-00-00 00:00:00'),
(177, 'REINO UNIDO', 1, '0000-00-00 00:00:00'),
(178, 'REP.DEMOCRATICA DEL CONGO', 1, '0000-00-00 00:00:00'),
(179, 'REPUBLICA CENTROAFRICANA', 1, '0000-00-00 00:00:00'),
(180, 'REPUBLICA CHECA', 1, '0000-00-00 00:00:00'),
(181, 'REPUBLICA DOMINICANA', 1, '0000-00-00 00:00:00'),
(182, 'REPUBLICA ESLOVACA', 1, '0000-00-00 00:00:00'),
(183, 'REUNION', 1, '0000-00-00 00:00:00'),
(184, 'RUANDA', 1, '0000-00-00 00:00:00'),
(185, 'RUMANIA', 1, '0000-00-00 00:00:00'),
(186, 'RUSIA', 1, '0000-00-00 00:00:00'),
(187, 'SAHARA OCCIDENTAL', 1, '0000-00-00 00:00:00'),
(188, 'SAMOA', 1, '0000-00-00 00:00:00'),
(189, 'SAMOA AMERICANA', 1, '0000-00-00 00:00:00'),
(190, 'SAN BARTOLOME', 1, '0000-00-00 00:00:00'),
(191, 'SAN CRISTOBAL Y NIEVES', 1, '0000-00-00 00:00:00'),
(192, 'SAN MARINO', 1, '0000-00-00 00:00:00'),
(193, 'SAN MARTIN (PARTE FRANCESA)', 1, '0000-00-00 00:00:00'),
(194, 'SAN PEDRO Y MIQUELON ', 1, '0000-00-00 00:00:00'),
(195, 'SAN VICENTE Y LAS GRANADINAS', 1, '0000-00-00 00:00:00'),
(196, 'SANTA HELENA', 1, '0000-00-00 00:00:00'),
(197, 'SANTA LUCIA', 1, '0000-00-00 00:00:00'),
(198, 'SANTA SEDE', 1, '0000-00-00 00:00:00'),
(199, 'SANTO TOME Y PRINCIPE', 1, '0000-00-00 00:00:00'),
(200, 'SENEGAL', 1, '0000-00-00 00:00:00'),
(201, 'SERBIA', 1, '0000-00-00 00:00:00'),
(202, 'SEYCHELLES', 1, '0000-00-00 00:00:00'),
(203, 'SIERRA LEONA', 1, '0000-00-00 00:00:00'),
(204, 'SINGAPUR', 1, '0000-00-00 00:00:00'),
(205, 'SIRIA', 1, '0000-00-00 00:00:00'),
(206, 'SOMALIA', 1, '0000-00-00 00:00:00'),
(207, 'SRI LANKA', 1, '0000-00-00 00:00:00'),
(208, 'SUDAFRICA', 1, '0000-00-00 00:00:00'),
(209, 'SUDAN', 1, '0000-00-00 00:00:00'),
(210, 'SUECIA', 1, '0000-00-00 00:00:00'),
(211, 'SUIZA', 1, '0000-00-00 00:00:00'),
(212, 'SURINAM', 1, '0000-00-00 00:00:00'),
(213, 'SVALBARD Y JAN MAYEN', 1, '0000-00-00 00:00:00'),
(214, 'SWAZILANDIA', 1, '0000-00-00 00:00:00'),
(215, 'TADYIKISTAN', 1, '0000-00-00 00:00:00'),
(216, 'TAILANDIA', 1, '0000-00-00 00:00:00'),
(217, 'TANZANIA', 1, '0000-00-00 00:00:00'),
(218, 'TIMOR ORIENTAL', 1, '0000-00-00 00:00:00'),
(219, 'TOGO', 1, '0000-00-00 00:00:00'),
(220, 'TOKELAU', 1, '0000-00-00 00:00:00'),
(221, 'TONGA', 1, '0000-00-00 00:00:00'),
(222, 'TRINIDAD Y TOBAGO', 1, '0000-00-00 00:00:00'),
(223, 'TUNEZ', 1, '0000-00-00 00:00:00'),
(224, 'TURKMENISTAN', 1, '0000-00-00 00:00:00'),
(225, 'TURQUIA', 1, '0000-00-00 00:00:00'),
(226, 'TUVALU', 1, '0000-00-00 00:00:00'),
(227, 'UCRANIA', 1, '0000-00-00 00:00:00'),
(228, 'UGANDA', 1, '0000-00-00 00:00:00'),
(229, 'URUGUAY', 1, '0000-00-00 00:00:00'),
(230, 'UZBEKISTAN', 1, '0000-00-00 00:00:00'),
(231, 'VANUATU', 1, '0000-00-00 00:00:00'),
(232, 'VENEZUELA', 1, '0000-00-00 00:00:00'),
(233, 'VIETNAM', 1, '0000-00-00 00:00:00'),
(234, 'WALLIS Y FORTUNA', 1, '0000-00-00 00:00:00'),
(235, 'YEMEN', 1, '0000-00-00 00:00:00'),
(236, 'ZAMBIA', 1, '0000-00-00 00:00:00'),
(237, 'ZIMBABWE', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicfacultades`
--

CREATE TABLE `dicfacultades` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Abrev` varchar(20) CHARACTER SET utf8 NOT NULL,
  `IdArea` int(11) NOT NULL COMMENT '1: Ingenierìas 2 : Biomèdicas 3: Economico Empresariasles 4 : Sociales'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dicfacultades`
--

INSERT INTO `dicfacultades` (`Id`, `Nombre`, `Abrev`, `IdArea`) VALUES
(1, 'CIENCIAS AGRARIAS', 'FCA', 1),
(2, 'MEDICINA VETERINARIA Y ZOOTECNIA', 'FMVZ', 2),
(3, 'INGENIERÍA ECONÓMICA', 'FIE', 3),
(4, 'CIENCIAS CONTABLES Y ADMINISTRATIVAS', 'FCCA', 3),
(5, 'TRABAJO SOCIAL', 'FTS', 4),
(6, 'ENFERMERÍA', 'FE', 2),
(7, 'CIENCIAS SOCIALES', 'FCS', 4),
(8, 'INGENIERÍA DE MINAS', 'FIM', 1),
(9, 'CIENCIAS BIOLÓGICAS', 'FCCBB', 2),
(10, 'CIENCIAS DE LA EDUCACIÓN', 'FCEDUC', 4),
(11, 'INGENIERÍA ESTADÍSTICA E INFORMÁTICA', 'FINESI', 1),
(12, 'CIENCIAS JURÍDICAS Y POLÍTICAS', 'FCJP', 4),
(13, 'INGENIERÍA QUÍMICA', 'FIQ', 1),
(14, 'CIENCIAS DE LA SALUD', 'FCDS', 2),
(15, 'INGENIERÍA GEOLÓGICA Y METALÚRGICA', 'FIGIM', 1),
(16, 'INGENIERÍA CIVIL Y ARQUITECTURA', 'FICA', 1),
(17, 'INGENIERÍA AGRÍCOLA', 'FIA', 1),
(18, 'MEDICINA HUMANA', 'FMH', 2),
(19, 'Ingeniería Mecánica Eléctrica, Electrónica y Sistemas', 'FIMEES', 1),
(20, 'ESCUELA DE POSGRADO', 'EPG', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diclanguajes`
--

CREATE TABLE `diclanguajes` (
  `Id` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Status` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `diclanguajes`
--

INSERT INTO `diclanguajes` (`Id`, `Name`, `Status`, `Date`) VALUES
(1, 'INGLES', 1, '2022-01-25 16:35:54'),
(2, 'PORTUGUES', 1, '2022-01-25 16:35:54'),
(3, 'ESPAÑOL', 1, '2022-02-09 19:45:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diclicencestype`
--

CREATE TABLE `diclicencestype` (
  `Id` int(11) NOT NULL,
  `Name` varchar(500) NOT NULL,
  `Status` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `diclicencestype`
--

INSERT INTO `diclicencestype` (`Id`, `Name`, `Status`, `Date`) VALUES
(1, 'Open Access', 1, '2022-01-27 15:52:55'),
(2, 'Suscription Access', 1, '2022-01-27 15:52:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diclineas`
--

CREATE TABLE `diclineas` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(800) NOT NULL,
  `Estado` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `diclineas`
--

INSERT INTO `diclineas` (`Id`, `Nombre`, `Estado`) VALUES
(1, 'ADMINISTRACIÓN Y MARKETING', 1),
(2, 'ALIMENTACIÓN Y NUTRICIÓN HUMANA', 1),
(3, 'ARQUITECTURA Y URBANISMO', 1),
(4, 'ARTE Y MÚSICA', 1),
(5, 'AUDITORÍA, COSTOS Y FINANZAS', 1),
(6, 'CIENCIA Y PRODUCCIÓN ANIMAL', 1),
(7, 'CIENCIAS DE LA SALUD ', 1),
(8, 'CIENCIAS DEL DEPORTE Y EDUCACIÓN FÍSICA', 1),
(9, 'DERECHO', 1),
(10, 'ECONOMÍA Y DESARROLLO', 1),
(11, 'EDUCACIÓN Y DINÁMICA EDUCATIVA', 1),
(12, 'ESTADÍSTICA E INVESTIGACIÓN', 1),
(13, 'FÍSICA Y MATEMÁTICA', 1),
(14, 'GEOLOGÍA, MINAS Y METALURGIA', 1),
(15, 'GESTIÓN Y RESPONSABILIDAD SOCIAL', 1),
(16, 'INFRAESTRUCTURA Y CONSTRUCCIONES', 1),
(17, 'INGENIERÍA DE PROCESOS', 1),
(18, 'MANEJO AGRONÓMICO DE CULTIVOS', 1),
(19, 'MECÁNICA - ELÉCTRICA', 1),
(20, 'RECURSOS NATURALES Y MEDIO AMBIENTE', 1),
(21, 'SALUD PÚBLICA', 1),
(22, 'SISTEMAS DE INFORMACIÓN GEOGRÁFICA', 1),
(23, 'SISTEMAS, COMPUTACIÓN E INFORMÁTICA', 1),
(24, 'SOCIEDAD, CULTURA Y COMUNICACIÓN', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diclineassub`
--

CREATE TABLE `diclineassub` (
  `Id` int(5) NOT NULL,
  `Estado` int(11) NOT NULL,
  `id_lineaV` int(11) NOT NULL,
  `Nombre` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `IdArea` int(1) NOT NULL,
  `IdSubArea` int(2) NOT NULL,
  `IdDiscip` int(3) NOT NULL,
  `IdFacultad` int(2) NOT NULL,
  `IdCarrera` int(2) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `diclineassub`
--

INSERT INTO `diclineassub` (`Id`, `Estado`, `id_lineaV`, `Nombre`, `IdArea`, `IdSubArea`, `IdDiscip`, `IdFacultad`, `IdCarrera`, `fecha`) VALUES
(1, 0, 0, 'DESARROLLO RURAL', 4, 21, 130, 2, 4, '2017-04-18 17:20:15'),
(2, 0, 0, 'BIOTECNOLOGIA', 6, 35, 190, 13, 23, '2017-04-18 17:20:15'),
(3, 1, 2, 'ATENCIÓN NUTRICIONAL A  PERSONAS SANAS Y ENFERMAS EN LAS DIFERENTES ETAPAS DE LA VIDA', 2, 8, 56, 14, 24, '2018-05-24 09:24:21'),
(4, 1, 2, 'PROMOCION DE LA SALUD DE LAS PERSONAS', 2, 8, 57, 14, 24, '2018-05-24 09:24:44'),
(5, 0, 0, 'INTERACCION FARMACO NUTRIENTE', 2, 8, 57, 14, 24, '2017-04-18 17:20:15'),
(6, 0, 0, 'BIOMATERIALES ODONTOLOGICOS E INNOVACION TEGNOLOGICA', 2, 7, 37, 14, 25, '2017-04-18 17:20:15'),
(7, 0, 0, 'TECNOLOGIA DEL GAS NATURAL Y PETROLEO', 6, 35, 190, 13, 23, '2017-04-18 17:20:15'),
(8, 0, 0, 'INTERVENCIONES NUTRICIONALES EN ACTIVIDAD FISICA Y DEPORTE', 2, 8, 54, 14, 24, '2017-04-18 17:20:15'),
(9, 0, 10, 'COMERCIO EXTERIOR Y NEGOCIOS INTERNACIONALES', 4, 21, 133, 4, 6, '2018-05-24 10:56:56'),
(10, 1, 1, 'ADMINISTRACION DE FINANZAS', 4, 21, 133, 4, 6, '2017-05-26 12:21:37'),
(11, 1, 0, 'ADMINISTRACION DE PROCESOS ORGANIZACIONALES', 4, 21, 133, 4, 6, '2018-04-23 09:28:21'),
(12, 1, 1, 'ADMINISTRACION DE EMPRENDIMIENTOS', 4, 21, 133, 4, 6, '2017-05-26 12:21:37'),
(13, 0, 15, 'GESTION PUBLICA', 4, 21, 133, 4, 6, '2018-05-24 10:55:09'),
(14, 1, 1, 'ADMINISTRACION GENERAL', 4, 21, 133, 4, 6, '2017-05-26 12:21:37'),
(15, 1, 1, 'ADMINISTRACION DE RECURSOS HUMANOS', 4, 21, 133, 4, 6, '2017-05-26 12:21:37'),
(16, 1, 1, 'ADMINISTRACION DE MARKETING Y NEGOCIOS INTERNACIONALES', 4, 21, 133, 4, 6, '2018-05-24 10:57:08'),
(17, 1, 20, 'SEGURIDAD Y MEDIO AMBIENTE', 6, 38, 199, 15, 26, '2017-05-26 12:21:37'),
(18, 1, 11, 'INTERDISCIPLINARIDAD EN LA DINÁMICA EDUCATIVA : CIENCIAS SOCIALES ', 4, 18, 123, 10, 20, '2017-05-26 12:21:37'),
(19, 1, 14, 'INGENIERÍA GEOTÉCNICA', 6, 42, 215, 15, 26, '2017-05-26 12:21:37'),
(20, 0, 0, 'ECONOMETRÍA DEL TURISMO', 4, 21, 131, 7, 14, '2017-04-18 17:20:15'),
(21, 1, 15, 'GESTIÓN DE EMPRENDIMIENTOS Y NEGOCIOS TURÍSTICOS', 4, 21, 133, 7, 14, '2017-05-26 12:21:37'),
(22, 1, 1, 'ADMINISTRACIÓN DE EMPRESAS TURÍSTICAS', 4, 21, 133, 7, 14, '2017-05-26 12:21:37'),
(23, 1, 15, 'GESTIÓN DE DESTINOS TURÍSTICOS', 4, 19, 126, 7, 14, '2017-05-26 12:21:37'),
(24, 1, 10, 'DESARROLLO TURÍSTICO REGIONAL', 4, 23, 139, 7, 14, '2017-05-26 12:21:37'),
(25, 1, 7, 'DIAGNOSTICO Y EPIDEMIOLOGIA', 2, 8, 61, 9, 16, '2017-05-26 12:21:37'),
(26, 0, 0, 'HIDROBIOLOGIA', 3, 15, 105, 9, 16, '2017-04-18 17:20:15'),
(27, 0, 0, 'PESCA', 6, 42, 216, 9, 16, '2017-04-18 17:20:15'),
(28, 1, 6, 'ACUICULTURA', 6, 42, 216, 9, 16, '2017-05-26 12:21:37'),
(29, 0, 0, 'TRANSFORMACIÓN PESQUERA', 6, 42, 216, 9, 16, '2017-04-18 17:20:15'),
(30, 1, 20, 'CONSERVACION Y APROVECHAMIENTO DE RECURSOS NATURALES', 3, 15, 102, 9, 16, '2017-05-26 12:21:37'),
(31, 1, 20, 'CALIDAD AMBIENTAL', 3, 15, 102, 9, 16, '2017-05-26 12:21:37'),
(32, 1, 15, 'GESTIÓN AMBIENTAL', 3, 15, 102, 9, 16, '2017-05-26 12:21:37'),
(33, 0, 0, 'DESARROLLO SUSTENTABLE Y SOSTENIBLE DE LA INDUSTRIA MINERA', 6, 42, 215, 8, 15, '2017-04-18 17:20:15'),
(34, 1, 5, 'ANÁLISIS DE COSTOS MINEROS Y COMERCIALIZACIÓN DE MINERALES', 6, 42, 215, 8, 15, '2017-05-26 12:21:37'),
(35, 1, 14, 'METALURGIA EXTRACTIVA', 6, 42, 215, 15, 27, '2017-05-26 12:21:37'),
(36, 1, 14, 'MECÁNICA DE ROCAS, GEOMECÁNICA Y GEOTECNIA', 6, 42, 215, 8, 15, '2017-05-26 12:21:37'),
(37, 1, 14, 'METALURGIA TRANSFORMATIVA', 6, 42, 215, 15, 27, '2017-05-26 12:21:37'),
(38, 1, 20, 'MONITOREO Y EVALUACIÓN DEL IMPACTO AMBIENTAL EN MINERÍA', 6, 42, 215, 8, 15, '2017-05-26 12:21:37'),
(39, 1, 14, 'MEDIO AMBIENTE Y SEGURIDAD EN PROCESOS METALURGICOS', 6, 42, 215, 15, 27, '2017-05-26 12:21:37'),
(40, 0, 0, 'CIENCIA DE LOS MATERIALES', 6, 42, 215, 15, 27, '2017-04-18 17:20:15'),
(41, 1, 14, 'PROYECTOS Y DISEÑO DE PLANTAS METALURGICAS', 6, 42, 215, 15, 27, '2017-05-26 12:21:37'),
(42, 1, 21, 'GERENCIA Y GESTIÓN EN SALUD', 2, 8, 53, 6, 9, '2017-05-26 12:21:37'),
(43, 1, 3, 'ARQUITECTURA, COMFORT AMBIENTAL Y EFICIENCIA ENERGÉTICA', 5, 27, 153, 16, 28, '2017-05-26 12:21:37'),
(44, 1, 16, 'TECNOLOGIAS DE MATERIALES', 6, 35, 189, 13, 23, '2017-05-26 12:21:37'),
(45, 1, 6, 'SALUD ANIMAL', 1, 3, 10, 2, 4, '2017-05-26 12:21:37'),
(46, 1, 20, 'TECNOLOGIAS AMBIENTALES Y RECURSOS NATURALES', 6, 35, 189, 13, 23, '2017-05-26 12:21:37'),
(47, 1, 3, 'GESTIÓN Y REHABILITACIÓN DEL PATRIMONIO ARQUITECTÓNICO Y URBANO', 5, 27, 157, 16, 28, '2017-05-26 12:21:37'),
(48, 1, 3, 'PROYECTO URBANO Y AMBIENTE, ENTORNO CULTURAL Y PAISAJE', 5, 27, 157, 16, 28, '2017-05-26 12:21:37'),
(49, 1, 3, 'PROYECTO DE INTERVENCIÓN URBANA', 5, 27, 157, 16, 28, '2017-05-26 12:21:37'),
(50, 0, 0, 'DISEÑO INDUSTRIAL APLICADO A LOS PROCESOS CONSTRUCTIVOS Y ARQUITECTURA', 5, 27, 158, 16, 28, '2017-04-18 17:20:15'),
(51, 1, 22, 'ORDENAMIENTO, PLANEACIÓN ESTRATÉGICA Y DESARROLLO TERRITORIAL', 4, 22, 136, 16, 28, '2017-05-26 12:21:37'),
(52, 1, 3, 'ARQUITECTURA SOCIAL, TEORÍA Y CRÍTICA', 5, 27, 153, 16, 28, '2017-05-26 12:21:37'),
(53, 0, 0, 'PLANIFICACIÓN SOCIAL Y GESTIÓN DEL TERRITORIO', 4, 26, 146, 7, 13, '2017-04-18 17:20:15'),
(54, 1, 24, 'ORGANIZACIÓNES, LIDERAZGO Y GESTIÓN ORGANIZACIONAL', 4, 26, 146, 7, 13, '2018-05-28 11:49:26'),
(55, 1, 10, 'GOBERNABILIDAD CIUDADANIA Y DESARROLLO SOCIAL', 4, 26, 146, 7, 13, '2018-05-28 11:49:47'),
(56, 0, 0, 'SOCIEDAD Y DESARROLLO TECNOLOGICO', 4, 26, 146, 7, 13, '2017-04-18 17:20:15'),
(57, 0, 20, 'SOCIOLOGÍA Y GESTIÓN AMBIENTAL ', 4, 26, 146, 7, 13, '2018-05-28 11:43:47'),
(58, 1, 24, 'SOCIOLINGUISTICA  E INTERCULTURALIDAD', 4, 26, 146, 7, 13, '2018-05-28 11:44:22'),
(59, 1, 15, 'POLÍTICA,  GESTIÓN PUBLICA Y PLANIFICACIÓN', 4, 26, 146, 7, 13, '2018-05-28 11:45:16'),
(60, 0, 15, 'POLITICAS, PROGRAMAS Y PROYECTOS SOCIALES', 4, 26, 146, 7, 13, '2018-05-28 11:45:13'),
(61, 0, 0, 'POBLACIÓN  Y DINAMICA DEMOGRAFICA', 4, 26, 146, 7, 13, '2017-04-18 17:20:15'),
(62, 1, 15, 'INSTITUCIONALIDAD, CONFLICTOS Y GESTIÓN AMBIENTAL', 4, 26, 146, 7, 13, '2018-05-28 11:49:34'),
(63, 0, 10, 'DESARROLLO RURAL Y ECONOMÍA CAMPESINA', 4, 26, 146, 7, 13, '2018-05-28 11:43:58'),
(64, 1, 0, 'FORMULACIÓN, EVALUACIÓN Y GESTIÓN DE PROYECTOS Y EMPRESAS EN ALIMENTOS, NUTRICIÓN Y SALUD', 2, 8, 56, 14, 24, '2018-05-24 09:26:31'),
(65, 0, 0, 'PLAN DE TRATAMIENTO NUTRICIONAL, DIETOTERAPÉUTICO, ENTERAL Y PARENTAL DE PERSONAS Y PACIENTES', 2, 8, 56, 14, 24, '2017-04-18 17:20:15'),
(66, 0, 0, 'TECNOLOGÍAS DE LA INFORMACIÓN Y COMUNICACIONES', 3, 12, 78, 11, 21, '2017-04-18 17:20:15'),
(67, 0, 0, 'REDES DE COMPUTADORAS', 3, 12, 78, 11, 21, '2017-04-18 17:20:15'),
(68, 1, 23, 'BASE DE DATOS  Y SISTEMAS DE INFORMACIÓN', 3, 12, 79, 11, 21, '2017-05-26 12:21:37'),
(69, 1, 2, 'TRANSOFORMACIÓN E INNOVACIÓN DE RECURSOS ALIMENTARIOS CON FINES NUTRICIONALES Y DE SALUD', 2, 9, 67, 14, 24, '2018-05-24 09:25:33'),
(70, 1, 23, 'INGENIERÍA DE SOFTWARE E INTELIGENCIA ARTIFICIAL', 3, 12, 78, 11, 21, '2017-05-26 12:21:37'),
(71, 0, 0, 'ALGORITMOS, SISTEMAS OPERATIVOS Y BIOCOMPUTACIÓN', 3, 12, 78, 11, 21, '2017-04-18 17:20:15'),
(72, 0, 0, 'CONTROL ESTADÍSTICO DE PROCESOS INDUSTRIALES Y DE SERVICIOS', 3, 11, 77, 11, 21, '2017-04-18 17:20:15'),
(73, 1, 12, 'INVESTIGACIÓN DESCRIPTIVA CUASI EXPERIMENTAL Y EXPERIMENTAL', 3, 11, 77, 11, 21, '2017-05-26 12:21:37'),
(74, 1, 12, 'MODELOS PREDICTIVOS UNI Y  MULTIVARIANTES', 3, 11, 77, 11, 21, '2017-05-26 12:21:37'),
(75, 1, 1, 'ANÁLISIS MULTIVARIADO, BIG DATA, MINERÍA DE DATOS E INVESTIGACIÓN DE MERCADOS ', 3, 11, 77, 11, 21, '2017-05-26 12:21:37'),
(76, 1, 12, 'PRODUCCIÓN, MODELADO Y GENERACIÓN DE METODOLOGÍAS ESTADÍSTICAS PARA LA INVESTIGACIÓN EN CIENCIAS SOCIALES, INGENIERÍAS Y CIENCIAS DE LA SALUD ', 3, 11, 77, 11, 21, '2017-05-26 12:21:37'),
(77, 1, 9, 'DERECHO PENAL', 4, 20, 128, 12, 22, '2017-05-26 12:21:37'),
(78, 0, 9, 'DERECHO PROCESAL ', 4, 20, 128, 12, 22, '2018-05-28 10:17:51'),
(79, 1, 24, 'PERIODISMO', 4, 24, 140, 7, 12, '2017-05-26 12:21:37'),
(80, 0, 0, 'CIENCIA E INFORMÁTICA EN LA INGENIERÍA', 3, 12, 78, 16, 30, '2017-04-18 17:20:15'),
(81, 1, 10, 'CONSTRUCCIONES Y GERENCIA', 6, 32, 174, 16, 30, '2017-05-26 12:21:37'),
(82, 1, 14, 'GEOTECNIA', 6, 38, 200, 16, 30, '2017-05-26 12:21:37'),
(83, 1, 20, 'HIDRÁULICA Y MEDIO AMBIENTE', 3, 15, 105, 16, 30, '2017-05-26 12:21:37'),
(84, 1, 16, 'ANÁLISIS Y DISEÑO ESTRUCTURAL', 6, 32, 175, 16, 30, '2017-05-26 12:21:37'),
(85, 1, 16, 'TRANSPORTES Y GESTIÓN VIAL', 6, 32, 176, 16, 30, '2017-05-26 12:21:37'),
(86, 1, 13, 'MATEMATICA PURA', 3, 11, 75, 16, 29, '2017-05-26 12:21:37'),
(87, 1, 13, 'MATEMATICA APLICADA', 3, 11, 76, 16, 29, '2017-05-26 12:21:37'),
(88, 0, 0, 'FISICA TEORICA', 3, 13, 81, 16, 29, '2017-04-18 17:20:15'),
(89, 0, 0, 'FISICA EXPERIMENTAL', 3, 13, 82, 16, 29, '2017-04-18 17:20:15'),
(90, 0, 0, 'FISICA DE LA ATMOSFERA', 3, 13, 84, 16, 29, '2017-04-18 17:20:15'),
(91, 1, 20, 'RECURSOS ENERGETICOS SOLARES Y EOLICA', 3, 15, 102, 16, 29, '2017-05-26 12:21:37'),
(92, 1, 13, 'FISICA APLICADA', 3, 13, 85, 16, 29, '2017-05-26 12:21:37'),
(93, 0, 0, 'EMISIONES DE CONTAMINACIÓN ATMOSFERICA', 3, 13, 81, 16, 29, '2017-04-18 17:20:15'),
(94, 0, 0, 'MODELIZACION DE LA ATMOSFERA Y RADIACION SOLAR', 3, 15, 103, 16, 29, '2017-04-18 17:20:15'),
(95, 0, 0, 'TRANSFERENCIA DE DE CALOR Y PROCESOS TERMODINAMICOS', 3, 13, 83, 16, 29, '2017-04-18 17:20:15'),
(96, 0, 0, 'ÓPTICA', 3, 13, 85, 16, 29, '2017-04-18 17:20:15'),
(97, 0, 0, 'ACÚSTICA', 3, 13, 86, 16, 29, '2017-04-18 17:20:15'),
(98, 0, 0, 'FISICA NUCLEAR', 3, 13, 83, 16, 29, '2017-04-18 17:20:15'),
(99, 0, 0, 'ASTRONOMIA', 3, 13, 87, 16, 29, '2017-04-18 17:20:15'),
(100, 0, 0, 'PATRONES DE CONSUMO Y TRANSTORNOS DE LA CONDUCTA ALIMENTARIA', 2, 8, 56, 14, 24, '2017-04-18 17:20:15'),
(101, 1, 23, 'COMPUTACIÓN GRÁFICA Y VISIÓN COMPUTACIONAL', 3, 12, 78, 11, 21, '2017-05-26 12:21:37'),
(102, 1, 4, 'DANZA: APLICACIÓN E INNOVACIÓN DE TÉCNICAS Y MÉTODOS DE ENSEÑANZA EN LOS DISTINTOS GÉNEROS DE DANZA. ', 5, 27, 151, 7, 11, '2018-05-24 08:31:09'),
(103, 1, 4, 'DANZA: REVALORACIÓN DE LAS DANZAS ÉTNICAS DE NUESTRO CONTEXTO PARA LA GENERACIÓN DE CONOCIMIENTO, CULTURA Y MEMORIA HISTÓRICA.', 5, 27, 151, 7, 11, '2018-05-24 08:31:06'),
(104, 1, 2, 'TECNOLOGIA DE ALIMENTOS', 6, 35, 189, 13, 23, '2017-05-26 12:21:37'),
(105, 1, 21, 'SALUD PÚBLICA', 1, 3, 10, 2, 4, '2017-05-26 12:21:37'),
(106, 1, 17, 'DESARROLLO DE PROCESOS Y PRODUCTOS AGROINDUSTRIALES SOSTENIBLES Y EFICIENTES', 6, 42, 214, 1, 2, '2017-05-26 12:21:37'),
(107, 1, 15, 'SEGURIDAD, GESTIÓN Y CONTROL EN AGROINDUSTRIAS', 6, 42, 215, 1, 2, '2017-05-26 12:21:37'),
(108, 1, 16, 'PROPIEDADES FISICAS Y ESTRUCTURALES', 6, 42, 215, 1, 2, '2017-05-26 12:21:37'),
(109, 1, 24, 'DESARROLLO HUMANO Y CALIDAD DE VIDA', 4, 23, 139, 5, 8, '2017-05-26 12:21:37'),
(110, 1, 9, 'DERECHOS HUMANOS Y FORTALECIMIENTO DEMOCRÁTICO', 4, 23, 139, 5, 8, '2017-05-26 12:21:37'),
(111, 1, 24, 'FAMILIAS: REALIDADES, CAMBIO Y DINÁMICAS DE INTERVENCION', 4, 23, 139, 5, 8, '2017-05-26 12:21:37'),
(112, 0, 0, 'CONSTRUCCIÓN DISCIPLINAR', 4, 23, 139, 5, 8, '2017-04-18 17:20:15'),
(113, 0, 0, 'DESARROLLO CURRICULAR', 4, 23, 139, 5, 8, '2017-04-18 17:20:15'),
(114, 1, 4, 'ARTES PLÁSTICAS: GESTIÓN Y ADMINISTRACIÓN DE LA LABOR ARTÍSTICA ENFATIZANDO LOS NUEVOS ESCENARIOS PLÁSTICOS.', 5, 27, 151, 7, 11, '2017-05-26 12:21:37'),
(115, 1, 4, 'MÚSICA: ANÁLISIS E INTERPRETACIÓN DE LA PRODUCCIÓN MUSICAL.', 5, 27, 151, 7, 11, '2017-05-26 12:21:37'),
(116, 1, 4, 'MÚSICA: INNOVACIONES Y APLICACIÓN DE TECNOLOGÍAS EN LA PRODUCCIÓN  MUSICAL.', 5, 27, 151, 7, 11, '2017-05-26 12:21:37'),
(117, 1, 4, 'ARTES PLÁSTICAS: CREACIÓN PLÁSTICA EN BASE A LAS TÉCNICAS TRADICIONALES Y TECNOLOGÍAS ACTUALES, CONSIDERANDO ASPECTOS FILOSÓFICOS Y TEÓRICOS.', 5, 27, 151, 7, 11, '2017-05-26 12:21:37'),
(118, 0, 0, 'TRATAMIENTO Y RECUPERACIÓN DE MINERALES PRECIOSOS', 6, 42, 215, 8, 15, '2017-04-18 17:20:15'),
(119, 1, 14, 'SERVICIOS AUXILIARES REQUERIDOS EN OPERACIONES MINERAS', 6, 42, 215, 8, 15, '2017-05-26 12:21:37'),
(120, 1, 15, 'SISTEMA DE GESTIÓN DE CALIDAD, MEDIO AMBIENTE Y RESPONSABILIDAD SOCIAL', 6, 42, 215, 8, 15, '2017-05-26 12:21:37'),
(121, 0, 2, 'EVALUACION NUTRICIONAL', 2, 8, 57, 14, 24, '2018-05-24 09:26:16'),
(122, 1, 21, 'SEGURIDAD Y SALUD OCUPACIONAL EN MINERÍA', 6, 42, 216, 8, 15, '2017-05-26 12:21:37'),
(123, 1, 14, 'CIERRE DE MINAS', 6, 42, 215, 8, 15, '2017-05-26 12:21:37'),
(124, 1, 14, 'MÉTODOS DE EXTRACCIÓN DE YACIMIENTOS MINERALES METÁLICOS Y NO METÁLICOS', 6, 42, 215, 8, 15, '2017-05-26 12:21:37'),
(125, 0, 0, 'ADMINISTRACIÓN DE MINAS', 6, 42, 215, 8, 15, '2017-04-18 17:20:15'),
(126, 1, 14, 'DISEÑO Y PLANEAMIENTO EN MINERÍA', 6, 42, 215, 8, 15, '2017-05-26 12:21:37'),
(127, 1, 14, 'FORMULACIÓN Y EJECUCIÓN DE PROYECTOS MINEROS', 6, 42, 216, 8, 15, '2017-05-26 12:21:37'),
(128, 1, 14, 'DESARROLLO DE LABORES MINERAS Y OTRAS EXCAVACIONES', 6, 42, 215, 8, 15, '2017-05-26 12:21:37'),
(129, 1, 14, 'GEOLOGÍA REGIONAL', 3, 15, 100, 15, 26, '2017-05-26 12:21:37'),
(130, 1, 11, 'INTERDISCIPLINARIDAD EN LA DINÁMICA EDUCATIVA : LENGUA, LITERATURA, PSICOLOGÍA Y FILOSOFÍA', 4, 18, 123, 10, 20, '2017-05-26 12:21:37'),
(131, 0, 12, 'INVESTIGACIÓN CUALITATIVA Y CUANTITATIVA', 4, 21, 130, 4, 7, '2018-07-09 11:53:33'),
(132, 1, 5, 'ANÁLISIS ECONÓMICO Y FINANCIERO', 4, 21, 130, 4, 7, '2017-05-26 12:21:37'),
(133, 1, 5, 'FINANZAS PUBLICAS Y PRIVADAS', 4, 21, 130, 4, 7, '2017-05-26 12:21:37'),
(134, 1, 5, 'SISTEMA TRIBUTARIO NACIONAL', 4, 21, 130, 4, 7, '2017-05-26 12:21:37'),
(135, 1, 15, 'GESTIÓN PUBLICA Y PRIVADA', 4, 21, 130, 4, 7, '2017-05-26 12:21:37'),
(136, 1, 5, 'COSTOS DE PRODUCCIÓN Y SERVICIOS', 4, 21, 130, 4, 7, '2017-05-26 12:21:37'),
(137, 1, 5, 'AUDITORIA PUBLICA Y PRIVADA', 4, 21, 130, 4, 7, '2017-05-26 12:21:37'),
(138, 1, 9, 'DERECHO CONSTITUCIONAL', 4, 20, 128, 12, 22, '2017-05-26 12:21:37'),
(139, 1, 9, 'DERECHO ADMINISTRATIVO', 4, 20, 128, 12, 22, '2017-05-26 12:21:37'),
(140, 0, 0, 'CIENCIA POLITICA', 4, 20, 128, 12, 22, '2017-04-18 17:20:15'),
(141, 1, 9, 'TEORÍA DEL DERECHO ', 4, 20, 128, 12, 22, '2017-05-26 12:21:37'),
(142, 0, 21, 'SALUD PUBLICA, EDUCACIÓN EN SALUD, GESTIÓN Y SERVICIO EN ODONTOLOGIA', 2, 7, 37, 14, 25, '2018-05-11 11:17:25'),
(143, 1, 9, 'DERECHO CIVIL', 4, 20, 128, 12, 22, '2017-05-26 12:21:37'),
(144, 0, 0, 'DERECHO COMERCIAL', 4, 20, 128, 12, 22, '2017-04-18 17:20:15'),
(145, 1, 9, 'DERECHO LABORAL', 4, 20, 128, 12, 22, '2017-05-26 12:21:37'),
(146, 1, 6, 'FISIOLOGÍA ANIMAL DE ALTURA', 1, 3, 10, 2, 4, '2017-05-26 12:21:37'),
(147, 1, 20, 'TECNOLOGÍA DE ENERGÍAS RENOVABLES', 6, 35, 190, 13, 23, '2017-05-26 12:21:37'),
(148, 0, 0, 'DERECHO DE DAÑOS', 4, 20, 128, 12, 22, '2017-04-18 17:20:15'),
(149, 0, 7, 'BIOLOGIA DEL CRECIMIENTO Y DESARROLLO CRANEOFACIAL', 2, 7, 37, 14, 25, '2018-05-11 11:17:23'),
(150, 0, 0, 'AUTOMATIZACIÓN Y CONTROL DE PROCESOS INDUSTRIALES', 6, 35, 189, 13, 23, '2017-04-18 17:20:15'),
(151, 1, 17, 'INGENIERÍA DE PROCESOS', 6, 35, 190, 13, 23, '2017-05-26 12:21:37'),
(152, 0, 0, 'TECNOLOGÍA DE PRODUCCIÓN INDUSTRIAL', 6, 35, 189, 13, 23, '2017-05-26 12:21:11'),
(153, 0, 7, 'ODONTOLOGÍA Y SALUD OCUPACIONAL', 2, 8, 62, 14, 25, '2018-05-11 11:17:21'),
(154, 0, 7, 'MEDICINA Y PATOLOGÍA ESTOMATOLOGICA', 2, 7, 37, 14, 25, '2018-05-11 11:17:19'),
(155, 0, 7, 'REHABILITACION DEL SISTEMA ESTOMATOGNATICO', 2, 7, 37, 14, 25, '2018-05-11 11:17:16'),
(156, 0, 7, 'PERIODONCIA E IMPLANTOLOGIA', 2, 7, 37, 14, 25, '2018-05-11 11:17:14'),
(157, 0, 7, 'ENDODONCIA, CARIOLOGIA Y BIOLOGIA PULPAR', 2, 7, 37, 14, 25, '2018-05-11 11:17:12'),
(158, 0, 7, 'CIRUGÍA BUCAL Y MAXILOFACIAL', 2, 7, 37, 14, 25, '2018-05-11 11:17:09'),
(159, 1, 23, 'TEORÍA DE SISTEMAS Y ADMINISTRACIÓN DE SISTEMAS', 6, 33, 180, 19, 35, '2017-05-26 12:21:37'),
(160, 0, 0, 'OPTIMIZACIÓN DE PROCESOS CONSTRUCTIVOS Y TECNOLOGÍAS DE LA CONSTRUCCIÓN', 6, 32, 173, 16, 28, '2017-04-18 17:20:15'),
(161, 1, 6, 'NUTRICIÓN ANIMAL', 1, 3, 10, 2, 4, '2017-05-26 12:21:37'),
(162, 0, 0, 'EFICIENCIA EN GESTIÓN DE LA CONTRUCCIÓN', 6, 32, 174, 16, 28, '2017-05-26 12:21:11'),
(163, 1, 6, 'REPRODUCCIÓN ANIMAL', 1, 3, 10, 2, 4, '2017-05-26 12:21:37'),
(164, 0, 0, 'TRANSFORMACIÓN DE PRODUCTOS PECUARIOS', 1, 3, 10, 2, 4, '2017-04-18 17:20:15'),
(165, 0, 0, 'TERMODINÁMICA Y PROCESOS', 6, 35, 190, 13, 23, '2017-04-18 17:20:15'),
(166, 1, 6, 'GENÉTICA Y MEJORAMIENTO ANIMAL', 1, 3, 10, 2, 4, '2017-05-26 12:21:37'),
(167, 1, 6, 'SISTEMAS DE PRODUCCIÓN ANIMAL', 1, 3, 10, 2, 4, '2017-05-26 12:21:37'),
(168, 1, 15, 'GESTIÓN, ECONOMÍA Y POLÍTICAS AGRARIAS', 4, 21, 130, 2, 4, '2017-05-26 12:21:37'),
(169, 1, 6, 'PRODUCCIÓN DE CAMÉLIDOS SUDAMERICANOS', 1, 3, 10, 2, 4, '2017-05-26 12:21:37'),
(170, 0, 0, 'PRODUCCIÓN ORGÁNICA Y SOSTENIBLE DE ALIMENTOS DE ORIGEN ANIMAL', 1, 3, 10, 2, 4, '2017-04-18 17:20:15'),
(171, 0, 0, 'CARACTERIZACIÓN Y EVALUACIÓN DE PLANTAS PARA LA ALIMENTACIÓN Y FARMACOTERAPIA', 1, 1, 7, 2, 4, '2017-04-18 17:20:15'),
(172, 1, 6, 'MORFOLOGÍA ANIMAL', 1, 3, 10, 2, 4, '2017-05-26 12:21:37'),
(173, 1, 11, 'INTERDISCIPLINARIDAD EN LA DINÁMICA EDUCATIVA : TEORÍA Y MÉTODOS DE INVESTIGACIÓN DE LA DIDÁCTICA DE LA MATEMÁTICA', 4, 18, 123, 10, 20, '2017-05-26 12:21:37'),
(174, 1, 14, 'GEOLOGÍA DE MINAS', 6, 42, 215, 15, 26, '2017-05-26 12:21:37'),
(175, 0, 0, 'GEOLOGÍA DE HIDROCARBUROS', 3, 15, 100, 15, 26, '2017-04-18 17:20:15'),
(176, 1, 6, 'PRODUCCIÓN ANIMAL', 1, 2, 8, 1, 1, '2017-05-26 12:21:37'),
(177, 1, 10, 'ECONOMÍA, INNOVACIÓN Y EXTENSIÓN AGRARIA', 1, 5, 14, 1, 1, '2017-05-26 12:21:37'),
(178, 1, 18, 'MANEJO DE PASTIZALES Y CULTIVOS FORRAJEROS', 1, 2, 8, 1, 1, '2017-05-26 12:21:37'),
(179, 1, 20, 'CAMBIO CLIMÁTICO y AGRICULTURA', 1, 1, 4, 1, 1, '2018-06-08 11:08:32'),
(180, 1, 18, 'MANEJO Y CONSERVACIÓN DE RECURSOS DE AGUA Y SUELO ', 1, 1, 4, 1, 1, '2018-06-08 11:08:18'),
(181, 0, 0, 'MANEJO AGRONÓMICO Y CONSERVACIÓN DE ESPECIES FORESTALES ANDINAS Y TROPICALES', 1, 1, 2, 1, 1, '2017-04-18 17:20:15'),
(182, 1, 18, 'MANEJO AGRONÓMICO DE CULTIVOS ', 1, 1, 6, 1, 1, '2017-05-26 12:21:37'),
(183, 0, 0, 'RECURSOS, FISIOLOGÍA Y MEJORAMIENTO GENÉTICO EN CULTIVOS ANDINOS', 1, 1, 5, 1, 1, '2017-04-18 17:20:15'),
(184, 1, 18, 'MANEJO AGRONÓMICO DE HORTALIZAS, FORESTALES PLANTAS ORNAMENTALES, AROMÁTICAS Y MEDICINALES ', 1, 1, 5, 1, 1, '2017-05-26 12:21:37'),
(185, 1, 18, 'MANEJO INTEGRADO DE PLAGAS Y ENFERMEDADES EN CULTIVOS ANDINOS, TROPICALES, FORESTALES Y PASTURAS', 1, 1, 7, 1, 1, '2017-05-26 12:21:37'),
(186, 1, 24, 'CULTURA, SOCIEDAD Y MEDIOAMBIENTE', 4, 26, 148, 7, 10, '2017-05-26 12:21:37'),
(187, 1, 24, 'CULTURA ANDINA, IDENTIDAD Y DESARROLLO', 4, 26, 148, 7, 10, '2017-05-26 12:21:37'),
(188, 0, 0, 'GESTIÓN CULTURAL Y PATRIMONIO', 4, 26, 148, 7, 10, '2017-04-18 17:20:15'),
(189, 0, 0, 'BIOANTROPOLOGIA Y ANTROPOLOGIA FORENSE', 4, 26, 148, 7, 10, '2017-04-18 17:20:15'),
(190, 0, 0, 'ESTADO, NACIÓN E INTERCULTURALIDAD', 4, 26, 148, 7, 10, '2017-04-18 17:20:15'),
(191, 1, 11, 'PERSPECTIVAS TEÓRICAS DE LA  EDUCACIÓN', 4, 18, 123, 10, 18, '2017-05-26 12:21:37'),
(192, 1, 15, 'GESTIÓN CURRICULAR', 4, 18, 123, 10, 18, '2017-05-26 12:21:37'),
(193, 1, 15, 'GESTIÓN Y ADMINISTRACIÓN DE LA EDUCACIÓN', 4, 18, 123, 10, 18, '2017-05-26 12:21:37'),
(194, 1, 15, 'GESTIÓN SOCIAL DE LA EDUCACIÓN', 4, 18, 123, 10, 18, '2017-05-26 12:21:37'),
(195, 1, 15, 'RESPONSABILIDAD SOCIAL DE LA EDUCACIÓN ', 4, 18, 123, 10, 18, '2017-05-26 12:21:37'),
(196, 1, 22, 'TOPOGRAFÍA, GEODESIA, CARTOGRAFÍA Y CATASTRO', 3, 15, 99, 1, 3, '2017-05-26 12:21:37'),
(197, 1, 22, 'SISTEMAS DE INFORMACIÓN GEOGRÁFICA', 3, 15, 99, 1, 3, '2017-05-26 12:21:37'),
(198, 1, 12, 'APLICACIÓN DE LOS MÉTODOS GEOESTADÍSTICOS AL TRATAMIENTO DE INFORMACIÓN MEDIOAMBIENTAL Y TOPOCARTOGRÁFICOS', 3, 15, 99, 1, 3, '2017-05-26 12:21:37'),
(199, 1, 16, 'PLANIFICACIÓN DE TRANSPORTE Y TERRITORIO', 3, 22, 137, 1, 3, '2018-06-08 11:10:27'),
(200, 1, 16, 'DISEÑO DE VÍAS Y GERENCIA DE VÍAS', 4, 22, 137, 1, 3, '2018-06-08 11:10:17'),
(201, 0, 0, 'GESTIÓN Y GERENCIA DE VÍAS', 4, 22, 137, 1, 3, '2017-04-18 17:20:15'),
(202, 1, 19, 'MICROELECTRONICA', 6, 33, 177, 19, 33, '2017-05-26 12:21:37'),
(203, 1, 17, 'AUTOMATIZACION E INSTRUMENTACION', 6, 33, 177, 19, 33, '2017-05-26 12:21:37'),
(204, 1, 20, 'APLICACIONES ENERGETICAS', 6, 33, 177, 19, 33, '2017-05-26 12:21:37'),
(205, 1, 23, 'TELECOMUNICACIONES Y REDES DE DATOS', 6, 33, 177, 19, 33, '2017-05-26 12:21:37'),
(206, 1, 19, 'ROBOTICA', 6, 33, 177, 19, 33, '2017-05-26 12:21:37'),
(207, 1, 7, 'MEDICINA DE LA ALTURA', 2, 7, 30, 18, 32, '2017-05-26 12:21:37'),
(208, 0, 24, 'ETICA', 2, 8, 65, 6, 9, '2018-05-22 09:49:03'),
(209, 1, 21, 'SALUD DE LA MUJER Y RECIEN NACIDO', 2, 7, 25, 6, 9, '2018-05-21 08:50:20'),
(210, 1, 11, 'INTERDISCIPLINARIDAD EN LA DINÁMICA EDUCATIVA : CIENCIA TECNOLOGÍA Y AMBIENTE', 4, 18, 123, 10, 20, '2017-05-26 12:21:37'),
(211, 1, 21, 'SALUD DEL NIÑO, ESCOLAR Y ADOLESCENTE', 2, 8, 55, 6, 9, '2018-05-21 08:49:50'),
(212, 1, 23, 'SISTEMAS DISTRIBUIDOS, REDES Y TELEMATICA', 6, 33, 180, 19, 35, '2017-05-26 12:21:37'),
(213, 1, 21, 'SALUD DEL ADULTO', 2, 8, 53, 6, 9, '2017-05-26 12:21:37'),
(214, 1, 23, 'INTELIGENCIA ARTIFICIAL Y SISTEMAS BIO-INSPIRADOS ', 6, 33, 180, 19, 35, '2017-05-26 12:21:37'),
(215, 1, 23, 'INGENIERÍA COMPUTACIONAL Y SISTEMAS', 6, 33, 180, 19, 35, '2017-05-26 12:21:37'),
(216, 1, 23, 'INGENIERÍA DE SOFTWARE, BASES DE DATOS E INTELIGENCIA DE NEGOCIOS', 6, 33, 180, 19, 35, '2017-05-26 12:21:37'),
(217, 1, 5, 'DESARROLLO, GESTIÓN, SEGURIDAD Y AUDITORIA DE SISTEMAS DE INFORMACION', 6, 33, 180, 19, 35, '2017-05-26 12:21:37'),
(218, 1, 23, 'NUEVAS TECNOLOGIAS - INFORMÁTICA, EDUCACIÓN Y SOCIEDAD', 6, 33, 180, 19, 35, '2017-05-26 12:21:37'),
(219, 1, 7, 'CIENCIAS MEDICAS BASICAS', 2, 6, 22, 18, 32, '2017-05-26 12:21:37'),
(220, 1, 7, 'CIENCIAS MEDICAS CLINICAS', 2, 7, 50, 18, 32, '2017-05-26 12:21:37'),
(221, 0, 0, 'MECANIZACIÓN AGRÍCOLA Y ENERGIA', 6, 42, 215, 17, 31, '2017-04-18 17:20:15'),
(222, 1, 20, 'RECURSOS HIDRICOS', 6, 42, 215, 17, 31, '2017-05-26 12:21:37'),
(223, 1, 16, 'INGENIERÍA DE INFRAESTRUCTURA RURAL', 6, 42, 215, 17, 31, '2017-05-26 12:21:37'),
(224, 1, 22, 'ORDENAMIENTO TERRITORIAL Y MEDIO AMBIENTE', 6, 42, 215, 17, 31, '2017-05-26 12:21:37'),
(225, 0, 0, 'GESTIÓN, LIDERAZGO Y COMPETITIVIDAD EN LA INGENIERÍA', 6, 32, 172, 16, 30, '2017-04-18 17:20:15'),
(226, 1, 1, 'MARKETING Y PUBLICIDAD', 4, 24, 143, 7, 12, '2017-05-26 12:21:37'),
(255, 0, 0, 'SEGURIDAD INDUSTRIAL Y AMBIENTAL', 6, 35, 190, 13, 23, '2016-05-10 18:33:23'),
(228, 1, 24, 'MEDIOS DE COMUNICACIÓN SOCIAL', 4, 24, 143, 7, 12, '2017-05-26 12:21:37'),
(229, 1, 24, 'COMUNICACIÓN PARA EL DESARROLLO', 4, 24, 143, 7, 12, '2017-05-26 12:21:37'),
(230, 0, 0, 'EPIDEMIOLOGÍA NUTRICIONAL', 2, 8, 61, 14, 24, '2017-04-18 17:20:15'),
(231, 0, 2, 'MICRONUTRIENTES, MACRONUTRIENTES Y ANTIOXIDANTES Y ERGOGÉNICOS NUTRICIONALES', 2, 8, 56, 14, 24, '2018-05-24 09:26:21'),
(232, 1, 10, 'ECONOMÍA REGIONAL Y LOCAL', 4, 21, 130, 3, 5, '2017-05-26 12:21:37'),
(233, 1, 15, 'POLÍTICAS PÚBLICAS ', 4, 21, 130, 3, 5, '2018-05-21 11:48:38'),
(234, 1, 10, 'ECONOMÍA DE LA EMPRESA', 4, 21, 130, 3, 5, '2018-05-21 11:48:43'),
(235, 0, 10, 'ECONOMÍA DE RECURSOS NATURALES Y DEL MEDIO AMBIENTE', 4, 21, 130, 3, 5, '2018-05-21 11:48:16'),
(236, 1, 24, 'RELACIONES PUBLICAS', 4, 24, 143, 7, 12, '2017-05-26 12:21:37'),
(237, 0, 0, 'FISIOLOGÍA DEL ESFUERZO Y DEPORTE EN ALTURA', 2, 8, 63, 10, 17, '2017-04-18 17:20:15'),
(238, 1, 8, 'PSICOMOTRICIDAD', 4, 18, 123, 10, 17, '2017-05-26 12:21:37'),
(239, 0, 0, 'GESTIÓN DEPORTIVA', 4, 18, 123, 10, 17, '2017-04-18 17:20:15'),
(240, 1, 8, 'EDUCACIÓN FÍSICA', 4, 18, 123, 10, 17, '2017-05-26 12:21:37'),
(241, 1, 8, 'DEPORTE Y RECREACIÓN', 4, 18, 123, 10, 17, '2017-05-26 12:21:37'),
(242, 1, 8, 'CIENCIAS DEL DEPORTE', 2, 8, 63, 10, 17, '2017-05-26 12:21:37'),
(243, 1, 21, 'PROMOCIÓN DE LA SALUD', 2, 8, 63, 10, 17, '2017-05-26 12:21:37'),
(244, 1, 21, 'SALUD FAMILIAR Y COMUNITARIA', 2, 8, 57, 6, 9, '2017-05-26 12:21:37'),
(245, 0, 0, 'TECNOLOGIA DE LABORATORIO MEDICO', 2, 9, 67, 18, 32, '2017-04-18 17:20:15'),
(246, 0, 0, 'BIOTECNOLOGIA MEDICA', 2, 9, 70, 18, 32, '2017-04-18 17:20:15'),
(247, 1, 17, 'CONTROL DE PROCESOS', 6, 33, 177, 19, 34, '2017-05-26 12:21:37'),
(248, 1, 20, 'ENERGIAS RENOVABLES', 6, 33, 177, 19, 34, '2017-05-26 12:21:37'),
(249, 1, 19, 'INGENIERÍA ELÉCTRICA', 6, 33, 177, 19, 34, '2017-05-26 12:21:37'),
(250, 1, 19, 'INGENIERÍA MECÁNICA', 6, 34, 183, 19, 34, '2017-05-26 12:21:37'),
(251, 0, 0, 'EPISTEMOLOGÍA', 1, 1, 1, 7, 13, '2016-04-18 14:17:45'),
(252, 0, 0, 'HISTORIA', 1, 1, 1, 7, 13, '2017-05-26 12:21:11'),
(253, 0, 0, 'LINGÜISTICA', 1, 1, 1, 7, 13, '2016-04-18 14:18:04'),
(254, 1, 24, 'ANÁLISIS DE PROCESOS SOCIALES', 1, 1, 1, 7, 13, '2018-05-28 11:44:58'),
(256, 1, 0, 'SALUD PÚBLICA Y OCUPACIONAL', 2, 7, 37, 14, 25, '2018-05-11 11:18:42'),
(257, 1, 0, 'BIOLOGÍA, CRECIMIENTO Y DESARROLLO CRANEOFACIAL', 2, 7, 37, 14, 25, '2018-05-11 11:18:40'),
(258, 1, 0, 'DIAGNÓSTICO, TRATAMIENTO Y REHABILITACIÓN DEL SISTEMA ESTOMATOFNÁTICO', 2, 7, 37, 14, 25, '2018-05-31 12:32:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicocdeareas`
--

CREATE TABLE `dicocdeareas` (
  `Id` int(1) NOT NULL,
  `Nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Web` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dicocdeareas`
--

INSERT INTO `dicocdeareas` (`Id`, `Nombre`, `Web`) VALUES
(1, 'Ciencias Agrícolas', 'https://portal.unap.edu.pe/'),
(2, 'Ciencias Médicas y de la Salud', 'https://portal.unap.edu.pe/'),
(3, 'Ciencias Naturales', 'https://portal.unap.edu.pe/'),
(4, 'Ciencias Sociales', 'https://portal.unap.edu.pe/'),
(5, 'Humanidades', 'https://portal.unap.edu.pe/'),
(6, 'Ingeniería y Tecnología', 'https://portal.unap.edu.pe/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicocdedisciplinas`
--

CREATE TABLE `dicocdedisciplinas` (
  `Id` int(3) NOT NULL,
  `Nombre` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `IdArea` int(2) NOT NULL,
  `IdSubArea` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dicocdedisciplinas`
--

INSERT INTO `dicocdedisciplinas` (`Id`, `Nombre`, `IdArea`, `IdSubArea`) VALUES
(1, 'AGRICULTURA', 1, 1),
(2, 'FORESTAL', 1, 1),
(3, 'PESCA', 1, 1),
(4, 'CIENCIAS DEL SUELO', 1, 1),
(5, 'HORTICULTURA Y VITICULTURA', 1, 1),
(6, 'AGRONOMÍA', 1, 1),
(7, 'PROTECCIÓN Y NUTRICIÓN DE LAS PLANTAS', 1, 1),
(8, 'CIENCIAS ANIMALES Y LECHERÍA', 1, 2),
(9, 'CRÍAS Y MASCOTAS', 1, 2),
(10, 'CIENCIAS VETERINARIAS', 1, 3),
(11, 'BIOTECNOLOGÍA AGRÍCOLA Y DE ALIMENTOS ', 1, 4),
(12, 'TECNOLOGÍA MG (SEMBRADÍOS Y GANADO), CLONAMIENTO DE GANADO, SELECCIÓN ASISTIDA, DIGNÓSTICO (CON CHIPS ADN, BIOSENSORES) ', 1, 4),
(13, 'ÉTICA RELACIONADA A BIOTECNOLOGÍA AGRÍCOLA', 1, 4),
(14, 'OTRAS CIENCIAS AGRÍCOLAS', 1, 5),
(15, 'ANATOMÍA Y MORFOLOGÍA', 2, 6),
(16, 'GENÉTICA HUMANA', 2, 6),
(17, 'INMUNOLOGÍA', 2, 6),
(18, 'NEUROCIENCIAS', 2, 6),
(19, 'FARMACOLOGÍA Y FARMACIA', 2, 6),
(20, 'MEDICINA QUÍMICA', 2, 6),
(21, 'TOXICOLOGÍA', 2, 6),
(22, 'FISIOLOGÍA (INCLUYE CITOLOGÍA)', 2, 6),
(23, 'PATOLOGÍA', 2, 6),
(24, 'ANDROLOGÍA', 2, 7),
(25, 'OBSTETRICIA Y GINECOLOGÍA', 2, 7),
(26, 'PEDIATRÍA', 2, 7),
(27, 'CARDIOVASCULAR', 2, 7),
(28, 'VASCULAR PERIFÉRICO', 2, 7),
(29, 'HEMATOLOGÍA', 2, 7),
(30, 'RESPIRATORIA', 2, 7),
(31, 'CUIDADO CRÍTICO Y DE EMERGENCIA', 2, 7),
(32, 'ANESTESIOLOGÍA', 2, 7),
(33, 'ORTOPÉDICA', 2, 7),
(34, 'CIRUGÍA', 2, 7),
(35, 'RADIOLOGÍA, MEDICINA NUCLEAR Y DE IMÁGENES', 2, 7),
(36, 'TRANSPLANTES', 2, 7),
(37, 'ODONTOLOGÍA, CIRUGÍA ORAL Y MEDICINA ORAL', 2, 7),
(38, 'DERMATOLOGÍA Y ENFERMEDADES VENÉREAS', 2, 7),
(39, 'ALERGIAS', 2, 7),
(40, 'REUMATOLOGÍA', 2, 7),
(41, 'ENDOCRINOLOGÍA Y METABOLISMO (INCLUYE DIABETES Y TRANSTORNOS HORMONALES)', 2, 7),
(42, 'GASTROENTEROLOGÍA Y HEPATOLOGÍA', 2, 7),
(43, 'UROLOGÍA Y NEFROLOGÍA', 2, 7),
(44, 'ONCOLOGÍA', 2, 7),
(45, 'OFTALMOLOGÍA', 2, 7),
(46, 'OTORRINONARINGOLOGÍA', 2, 7),
(47, 'PSIQUIATRÍA', 2, 7),
(48, 'NEUROLOGÍA CLÍNICA', 2, 7),
(49, 'GERIATRÍA', 2, 7),
(50, 'MEDICINA GENERAL E INTERNA', 2, 7),
(51, 'OTRO TEMAS DE MEDICINA CLÍNICA', 2, 7),
(52, 'MEDICINA COMPLEMENTARIA (SISTEMAS ALTERNATIVOS)', 2, 7),
(53, 'CIENCIAS DEL CUIDADO DE LA SALUD Y SERVICIOS (ADMINISTRACIÓN DE HOSPITALES, FINANCIAMIENTO)', 2, 8),
(54, 'POLÍTICAS DE SALUD Y SERVICIOS', 2, 8),
(55, 'ENFERMERÍA', 2, 8),
(56, 'NUTRICIÓN Y DIETAS', 2, 8),
(57, 'SALUD PÚBLICA', 2, 8),
(58, 'MEDICINA TROPICAL', 2, 8),
(59, 'PARASITOLOGÍA', 2, 8),
(60, 'ENFERMEDADES INFECCIOSAS', 2, 8),
(61, 'EPIDEMIOLOGÍA', 2, 8),
(62, 'SALUD OCUPACIONAL', 2, 8),
(63, 'CIENCIAS DEL DEPORTE', 2, 8),
(64, 'CIENCIAS SOCIO BIOMÉDICAS (PLANIFICACIÓN FAMILIAR, SALUD SEXUAL, EFECTOS POLÍTICOS Y SOCIALES DE LA INVESTIGACIÓN BIOMÉDICA)', 2, 8),
(65, 'ÉTICA', 2, 8),
(66, 'ABUSO DE SUBSTANCIAS', 2, 8),
(67, 'BIOTECNOLOGÍA RELACIONADA CON LA SALUD', 2, 9),
(68, 'TECNOLOGÍAS PARA LA MANIPULACIÓN DE CÉLULAS, TEJIDOS, ÓRGANOS O EL ORGANISMO (REPRODUCCIÓN ASISTIDA)', 2, 9),
(69, 'TECNOLOGÍA PARA LA IDENTIFICACIÓN Y FUNCIONAMIENTO DEL ADN, PROTEÍNAS Y ENCIMAS Y COMO INFLUENCIAN LA ENFERMEDAD', 2, 9),
(70, 'BIOMATERIALES (RELACIONADOS CON IMPLANTES, DISPOSITIVOS, SENSORES)', 2, 9),
(71, 'ÉTICA RELACIONADA CON LA BIOMEDICINA', 2, 9),
(72, ' FORÉNSICAS', 2, 10),
(73, 'OTRAS CIENCIAS MÉDICAS', 2, 10),
(74, 'FONOAUDIOLOGÍA', 2, 10),
(75, 'MATEMÁTICAS PURAS', 3, 11),
(76, 'MATEMÁTICAS APLICADAS', 3, 11),
(77, 'ESTADÍSTICAS Y PROBABILIDADES (INVESTIGACIÓN EN METODOLOGÍAS)', 3, 11),
(78, 'CIENCIAS DE LA COMPUTACIÓN', 3, 12),
(79, 'CIENCIAS DE LA INFORMACIÓN Y BIOINFORMÁTICA', 3, 12),
(80, 'FÍSICA ATÓMICA, MOLECULAR Y QUÍMICA', 3, 13),
(81, 'FÍSICA DE LA MATERIA', 3, 13),
(82, 'FÍSICA DE PARTÍCULAS Y CAMPOS', 3, 13),
(83, 'FÍSICA NUCLEAR', 3, 13),
(84, 'FÍSICA DE PLASMAS Y FLUÍDOS', 3, 13),
(85, 'ÓPTICA', 3, 13),
(86, 'ACÚSTICA', 3, 13),
(87, 'ASTRONOMÍA', 3, 13),
(88, 'QUÍMICA ORGÁNICA', 3, 14),
(89, 'QUÍMICA INORGÁNICA Y NUCLEAR', 3, 14),
(90, 'QUÍMICA FÍSICA', 3, 14),
(91, 'CIENCIAS DE LOS POLÍMEROS', 3, 14),
(92, 'ELECTROQUÍMICA', 3, 14),
(93, 'QUÍMICA DE LOS COLOIDES', 3, 14),
(94, 'QUÍMICA ANALÍTICA', 3, 14),
(95, 'GEOCIENCIAS (MULTIDISCIPLINARIO)', 3, 15),
(96, 'MINERALOGÍA', 3, 15),
(97, 'PALEONTOLOGÍA', 3, 15),
(98, 'GEOQUÍMICA Y GEOFÍSICA', 3, 15),
(99, 'GEOGRAFÍA FÍSICA', 3, 15),
(100, 'GEOLOGÍA', 3, 15),
(101, 'VULCANOLOGÍA', 3, 15),
(102, 'CIENCIAS DEL MEDIO AMBIENTE', 3, 15),
(103, 'METEOROLOGÍA Y CIENCIAS ATMOSFÉRICAS', 3, 15),
(104, 'INVESTIGACIÓN DEL CLIMA', 3, 15),
(105, 'OCEANOGRAFÍA, HIDROLOGÍA Y RECURSOS DEL AGUA', 3, 15),
(106, 'BIOLOGÍA CELULAR Y MICROBIOLOGÍA', 3, 16),
(107, 'VIROLOGÍA', 3, 16),
(108, 'BIOQUÍMICA Y BIOLOGÍA MOLECULAR', 3, 16),
(109, 'MÉTODOS DE INVESTIGACIÓN EN BIOQUÍMICA', 3, 16),
(110, 'MICOLOGÍA', 3, 16),
(111, 'BIOFÍSICA', 3, 16),
(112, 'GENÉTICA Y HERENCIA', 3, 16),
(113, 'BIOLOGÍA REPRODUCTIVA', 3, 16),
(114, 'BIOLOGÍA DEL DESARROLLO', 3, 16),
(115, 'BOTÁNICA Y CIENCIAS DE LAS PLANTAS', 3, 16),
(116, 'ZOOLOGÍA, ORNITOLOGÍA, ENTOMOLOGÍA, CIENCIAS BIOLÓGICAS DEL COMPORTAMIENTO', 3, 16),
(117, 'BIOLOGÍA MARINA Y DEL AGUA', 3, 16),
(118, 'ECOLOGÍA', 3, 16),
(119, 'CONSERVACIÓN DE LA BIODIVERSIDAD', 3, 16),
(120, 'BIOLOGÍA (TEÓRICA, MATEMÁTICA, CRIOBIOLOGÍA, EVOLUTIVA)', 3, 16),
(121, 'OTRAS BIOLOGÍAS', 3, 16),
(122, ' OTRAS CIENCIAS NATURALES', 3, 17),
(123, 'EDUCACIÓN GENERAL (INCLUYE CAPACITACIÓN, PEDAGOGÍA)', 4, 18),
(124, 'EDUCACIÓN ESPECIAL (PARA ESTUDIANTES DOTADOS Y AQUELLOS CON DIFICULTADES DE APRENDIZAJE)', 4, 18),
(125, 'CIENCIAS POLÍTICAS', 4, 19),
(126, 'ADMINISTRACIÓN PÚBLICA', 4, 19),
(127, 'TEORÍA ORGANIZACIONAL', 4, 19),
(128, 'DERECHO', 4, 20),
(129, 'PENAL', 4, 20),
(130, 'ECONOMÍA', 4, 21),
(131, 'ECONOMETRÍA', 4, 21),
(132, 'RELACIONES INDUSTRIALES', 4, 21),
(133, 'NEGOCIOS Y MANAGEMENT', 4, 21),
(134, 'CIENCIAS AMBIENTALES (ASPECTOS SOCIALES)', 4, 22),
(135, 'GEOGRAFÍA ECONÓMICA Y CULTURAL', 4, 22),
(136, 'ESTUDIOS URBANOS (PLANIFICACIÓN Y DESARROLLO)', 4, 22),
(137, 'PLANIFICACIÓN DEL TRANSPORTE Y ASPECTOS SOCIALES DEL TRANSPORTE', 4, 22),
(138, 'CIENCIAS SOCIALES, INTERDISCIPLINARIA', 4, 23),
(139, 'OTRAS CIENCIAS SOCIALES', 4, 23),
(140, 'PERIODISMO', 4, 24),
(141, 'CIENCIAS DE LA INFORMACIÓN (ASPECTOS SOCIALES)', 4, 24),
(142, 'BIBLIOTECOLOGÍA', 4, 24),
(143, 'MEDIOS Y COMUNICACIÓN SOCIAL', 4, 24),
(144, 'PSICOLOGÍA (INCLUYE RELACIONES HOMBRE-MÁQUINA)', 4, 25),
(145, 'PSICOLOGÍA (INCLUYE TERAPIAS DE APRENDIZAJE, HABLA, VISUAL Y OTRAS DISCAPACIDADES FÍSICAS Y MENTALES)', 4, 25),
(146, 'SOCIOLOGIA', 4, 26),
(147, 'DEMOGRAFÍA', 4, 26),
(148, 'ANTROPOLOGÍA', 4, 26),
(149, 'ETNOLOGÍA', 4, 26),
(150, 'TEMAS ESPECIALES (ESTUDIO DE GÉNERO, TEMAS SOCIALES, ESTUDIOS DE LA FAMILIA, TRABAJO SOCIAL)', 4, 26),
(151, 'ARTE', 5, 27),
(152, 'HISTORIA DEL ARTE', 5, 27),
(153, 'DISEÑO ARQUITECTÓNICO', 5, 27),
(154, 'ARTES DE LA REPRESENTACIÓN (MUSICOLOGÍA, CIENCIAS DEL TEATRO, DRAMATURGIA)', 5, 27),
(155, 'ESTUDIOS DEL FOLCLOR', 5, 27),
(156, 'ESTUDIOS DE CINE, RADIO Y TELEVISIÓN', 5, 27),
(157, 'ARQUITECTURA Y URBANISMO', 5, 27),
(158, 'DISEÑO INDUSTRIAL Y OTROS DISEÑOS', 5, 27),
(159, 'HISTORIA', 5, 28),
(160, 'ARQUEOLOGÍA', 5, 28),
(161, 'ESTUDIOS GENERALES DEL LENGUAJE', 5, 29),
(162, 'IDIOMAS ESPECÍFICOS', 5, 29),
(163, 'ESTUDIOS LITERARIOS', 5, 29),
(164, 'TEORÍA LITERARIA', 5, 29),
(165, 'LITERATURA ESPECÍFICA', 5, 29),
(166, 'LINGÜÍSTICA', 5, 29),
(167, 'HISTORIA DE LA CIENCIA Y TECNOLOGÍA', 5, 30),
(168, 'OTRAS HISTORIAS ESPECIALIZADAS', 5, 30),
(169, 'OTRAS HUMANIDADES', 5, 31),
(170, 'FILOSOFÍA', 5, 31),
(171, 'TEOLOGÍA', 5, 31),
(172, 'INGENIERÍA CIVIL ', 6, 32),
(173, 'INGENIERÍA ARQUITECTÓNICA ', 6, 32),
(174, 'INGENIERÍA DE LA CONSTRUCCIÓN ', 6, 32),
(175, 'INGENIERÍA ESTRUCTURAL Y MUNICIPAL ', 6, 32),
(176, 'INGENIERÍA DEL TRANSPORTE', 6, 32),
(177, 'INGENIERÍA ELÉCTRICA Y ELECTRÓNICA ', 6, 33),
(178, 'ROBÓTICA Y CONTROL AUTOMÁTICO ', 6, 33),
(179, 'AUTOMATIZACIÓN Y SISTEMAS DE CONTROL ', 6, 33),
(180, 'INGENIERÍA DE SISTEMAS Y COMUNICACIONES ', 6, 33),
(181, 'TELECOMUNICACIONES ', 6, 33),
(182, 'HARDWARE Y ARQUITECTURA DE COMPUTADORES', 6, 33),
(183, 'INGENIERÍA MECÁNICA ', 6, 34),
(184, 'MECÁNICA APLICADA ', 6, 34),
(185, 'TERMODINÁMICA ', 6, 34),
(186, 'INGENIERÍA AEROESPACIAL ', 6, 34),
(187, 'INGENIERÍA NUCLEAR ', 6, 34),
(188, 'INGENIERÍA DEL AUDIO', 6, 34),
(189, 'INGENIERÍA QUÍMICA (PLANTAS Y PRODUCTOS) ', 6, 35),
(190, 'INGENIERÍA DE PROCESOS', 6, 35),
(191, 'INGENIERÍA MECÁNICA ', 6, 36),
(192, 'CERÁMICOS ', 6, 36),
(193, 'RECUBRIMIENTOS Y PELÍCULAS ', 6, 36),
(194, 'COMPUESTOS (LAMINADOS, PLÁSTICOS REFORZADOS, FIBRAS SINTÉTICAS Y NATURALES, ETC.) ', 6, 36),
(195, 'PAPEL Y MADERA ', 6, 36),
(196, 'TEXTILES', 6, 36),
(197, 'INGENIERÍA MÉDICA ', 6, 37),
(198, 'TECNOLOGÍA MÉDICA DE LABORATORIO (ANÁLISIS DE MUESTRAS, TECNOLOGÍAS PARA EL DIAGNÓSTICO)', 6, 37),
(199, 'INGENIERÍA AMBIENTAL Y GEOLÓGICA E', 6, 38),
(200, 'GEOTÉCNICAS ', 6, 38),
(201, 'INGENIERÍA DEL PETRÓLEO (COMBUSTIBLES, ACEITES), ENERGÍA Y COMBUSTIBLES ', 6, 38),
(202, 'SENSORES REMOTOS ', 6, 38),
(203, 'MINERÍA Y PROCESAMIENTO DE MINERALES ', 6, 38),
(204, 'INGENIERÍA MARINA, NAVES ', 6, 38),
(205, 'INGENIERÍA OCEANOGRÁFICA', 6, 38),
(206, 'BIOTECNOLOGÍA MEDIOAMBIENTAL ', 6, 39),
(207, 'BIOREMEDIACIÓN, BIOTECNOLOGÍA PARA EL DIAGNÓSTICO (CHIPS ADN Y BIOSENSORES) EN MANEJO AMBIENTAL ', 6, 39),
(208, 'ÉTICA RELACIONADA CON BIOTECNOLOGÍA MEDIOAMBIENTAL', 6, 39),
(209, 'BIOTECNOLOGÍA INDUSTRIAL', 6, 40),
(210, 'TECNOLOGÍAS DE BIOPROCESAMIENTO, BIOCATÁLISIS, FERMENTACIÓN', 6, 40),
(211, 'BIOPRODUCTOS (PRODUCTOS QUE SE MANUFACTURAN USANDO BIOTECNOLOGÍA), BIOMATERIALES, BIOPLÁSTICOS, BIOCOMBUSTIBLES, MATERIALES NUEVOS BIODERIVADOS, QUÍMICOS FINOS BIODERIVADOS', 6, 40),
(212, 'NANOMATERIALES (PRODUCCIÓN Y PROPIEDADES)', 6, 41),
(213, 'NANOPROCESOS (APLICACIONES A NANOESCALA)', 6, 41),
(214, 'ALIMENTOS Y BEBIDAS', 6, 42),
(215, 'OTRAS INGENIERÍAS Y TECNOLOGÍAS', 6, 42),
(216, 'INGENIERÍA DE PRODUCCIÓN', 6, 42),
(217, 'INGENIERÍA INDUSTRIAL', 6, 42);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicocdesubareas`
--

CREATE TABLE `dicocdesubareas` (
  `Id` int(2) NOT NULL,
  `Nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `IdArea` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `dicocdesubareas`
--

INSERT INTO `dicocdesubareas` (`Id`, `Nombre`, `IdArea`) VALUES
(1, 'AGRICULTURA, SILVICULTURA Y PESCA', 1),
(2, 'CIENCIAS ANIMALES Y LECHERÍA', 1),
(3, 'CIENCIAS VETERINARIAS', 1),
(4, 'BIOTECNOLOGÍA AGRÍCOLA', 1),
(5, 'OTRAS CIENCIAS AGRÍCOLAS', 1),
(6, 'MEDICINA BÁSICA', 2),
(7, 'MEDICINA CLÍNICA', 2),
(8, 'CIENCIAS DE LA SALUD', 2),
(9, 'BIOTECNOLOGÍA EN SALUD', 2),
(10, 'OTRAS CIENCIAS MÉDICAS', 2),
(11, 'MATEMÁTICAS', 3),
(12, 'COMPUTACIÓN Y CIENCIAS DE LA INFORMACIÓN  ', 3),
(13, 'CIENCIAS FÍSICAS', 3),
(14, 'CIENCIAS QUÍMICAS', 3),
(15, 'CIENCIAS DE LA TIERRA Y MEDIOAMBIENTALES', 3),
(16, 'CIENCIAS BIOLÓGICAS', 3),
(17, 'OTRAS CIENCIAS NATURALES', 3),
(18, 'CIENCIAS DE LA EDUCACIÓN', 4),
(19, 'CIENCIAS POLÍTICAS', 4),
(20, 'DERECHO', 4),
(21, 'ECONOMÍA Y NEGOCIOS', 4),
(22, 'GEOGRAFÍA SOCIAL Y ECONÓMICA', 4),
(23, 'OTRAS CIENCIAS SOCIALES', 4),
(24, 'PERIODISMO Y COMUNICACIONES', 4),
(25, 'PSICOLOGÍA ', 4),
(26, 'SOCIOLOGÍA', 4),
(27, 'ARTE ', 5),
(28, 'HISTORIA Y ARQUEOLOGÍA  ', 5),
(29, 'IDIOMAS Y LITERATURA', 5),
(30, 'OTRAS HISTORIAS', 5),
(31, 'OTRAS HUMANIDADES', 5),
(32, 'INGENIERÍA CIVIL', 6),
(33, 'INGENIERÍA ELÉCTRICA, ELECTRÓNICA E INFORMÁTICA  ', 6),
(34, 'INGENIERÍA MECÁNICA', 6),
(35, 'INGENIERÍA QUÍMICA', 6),
(36, 'INGENIERÍA DE LOS MATERIALES', 6),
(37, 'INGENIERÍA MÉDICA', 6),
(38, 'INGENIERÍA AMBIENTAL', 6),
(39, 'BIOTECNOLOGÍA MEDIOAMBIENTAL', 6),
(40, 'BIOTECNOLOGÍA INDUSTRIAL', 6),
(41, 'NANOTECNOLOGÍA', 6),
(42, 'OTRAS INGENIERÍAS Y TECNOLOGÍAS', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diconu`
--

CREATE TABLE `diconu` (
  `Id` int(11) NOT NULL,
  `NameE` varchar(80) NOT NULL,
  `NameS` varchar(80) NOT NULL,
  `FileName` varchar(150) NOT NULL,
  `Status` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `diconu`
--

INSERT INTO `diconu` (`Id`, `NameE`, `NameS`, `FileName`, `Status`, `Date`) VALUES
(1, 'No poverty', 'Fin de la pobreza', '1_no_poverty.svg', 1, '2022-01-24 23:39:21'),
(2, 'Zero hunger', 'Hambre Cero', '2_zero_hunger.svg', 1, '2022-01-24 23:42:00'),
(3, 'Good health and well being', 'Salud y bienestar', '3_good_health_and_well_being.svg', 1, '2022-01-24 23:42:00'),
(4, 'Quality education', 'Educación de calidad', '4_quality_education.svg', 1, '2022-01-24 23:42:00'),
(5, 'Gender equality', 'Igualdad de género', '5_gender_equality.svg', 1, '2022-01-24 23:42:00'),
(6, 'Clean water and sanitation-', 'Agua limpia y saneamiento-', '6_clean_water_and_sanitation-.svg', 1, '2022-01-24 23:42:00'),
(7, 'Affordable and clean energy', 'Energía asequible y limpia', '7_affordable_and_clean_energy.svg', 1, '2022-01-24 23:42:00'),
(8, 'Decent work and economic growth', 'Trabajo decente y crecimiento económico', '8_decent_work_and_economic_growth.svg', 1, '2022-01-24 23:42:00'),
(9, 'Industry innovation and infrastructure', 'Innovación e infraestructura de la industria', '9_industry_innovation_and_infrastructure.svg', 1, '2022-01-24 23:42:00'),
(10, 'Reduced inequalities', 'Desigualdades reducidas', '10_reduced_inequalities.svg', 1, '2022-01-24 23:42:00'),
(11, 'Sustainable cities and communities', 'Ciudades y comunidades sostenibles', '11_sustainable_cities_and_communities.svg', 1, '2022-01-24 23:42:00'),
(12, 'Responsible consumption and production', 'Consumo y producción responsables', '12_responsible_consumption_and_production.svg', 1, '2022-01-24 23:42:00'),
(13, 'Climate action', 'Acción climática', '13_climate_action.svg', 1, '2022-01-24 23:42:00'),
(14, 'Life below water-ab', 'Vida debajo del agua-ab', '14_life_below_water-ab.svg', 1, '2022-01-24 23:42:00'),
(15, 'Life on land', 'La vida en la tierra', '15_life_on_land.svg', 1, '2022-01-24 23:42:00'),
(16, 'Peace justice and strong institutions', 'Paz justicia e instituciones fuertes', '16_peace_justice_and_strong_institutions.svg', 1, '2022-01-24 23:42:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicstudycenter`
--

CREATE TABLE `dicstudycenter` (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `State` int(2) NOT NULL,
  `Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dicstudycenter`
--

INSERT INTO `dicstudycenter` (`Id`, `Name`, `State`, `Date`) VALUES
(1, 'Universidad Nacional del Altiplano', 1, '2022-01-24 15:36:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dictipoinvestigacion`
--

CREATE TABLE `dictipoinvestigacion` (
  `Id_tipo` int(11) NOT NULL,
  `Nombre_tipo` varchar(255) NOT NULL,
  `Estado` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `IdUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dictipoinvestigacion`
--

INSERT INTO `dictipoinvestigacion` (`Id_tipo`, `Nombre_tipo`, `Estado`, `Fecha`, `IdUser`) VALUES
(1, 'Universidad', 1, '0000-00-00', 0),
(2, 'Facultad', 1, '0000-00-00', 6),
(3, 'Departamento', 1, '0000-00-00', 6),
(4, 'Instituto', 1, '0000-00-00', 0),
(5, 'Grupo de Investigación', 1, '0000-00-00', 6),
(6, 'Centro', 1, '0000-00-00', 6),
(7, 'Museo', 1, '0000-00-00', 0),
(8, 'Unidad', 1, '0000-00-00', 0),
(9, 'Vicerrectoría', 1, '0000-00-00', 0),
(10, 'Área', 1, '0000-00-00', 6),
(11, 'Programa Académico', 1, '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dictypepublication`
--

CREATE TABLE `dictypepublication` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `State` int(2) NOT NULL,
  `DateReg` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dictypepublication`
--

INSERT INTO `dictypepublication` (`Id`, `Name`, `State`, `DateReg`) VALUES
(1, 'Artículo en revista científica', 1, '2022-02-04 22:53:19'),
(2, 'Artículo boletín', 1, '2022-02-04 22:53:19'),
(3, 'Artículo magazine', 1, '2022-02-04 22:53:37'),
(4, 'Artículo periódico', 1, '2022-02-04 22:53:37'),
(5, 'Capítulo de libro', 1, '2022-02-04 22:53:49'),
(6, 'Dissertación', 1, '2022-02-04 22:53:49'),
(7, 'Documento de trabajo', 1, '2022-02-04 22:54:02'),
(8, 'Entrada de diccionario', 1, '2022-02-04 22:54:02'),
(9, 'Entrada Enciclopedia/Enciclopedia', 1, '2022-02-04 22:54:14'),
(10, 'Fascículo', 1, '2022-02-04 22:54:14'),
(11, 'Herramienta de investigación', 1, '2022-02-04 22:54:32'),
(12, 'Libro', 1, '2022-02-04 22:54:32'),
(13, 'Libro editado', 1, '2022-02-04 22:54:44'),
(14, 'Manual', 1, '2022-02-04 22:54:44'),
(15, 'Prefacio, Epilogo', 1, '2022-02-04 22:55:00'),
(16, 'Publicación estudiantil supervisada', 1, '2022-02-04 22:55:00'),
(17, 'Recurso en línea', 1, '2022-02-04 22:55:10'),
(18, 'Reporte', 1, '2022-02-04 22:55:10'),
(19, 'Reseña de libro', 1, '2022-02-04 22:55:23'),
(20, 'Test', 1, '2022-02-04 22:55:23'),
(21, 'Traducción', 1, '2022-02-04 22:55:34'),
(22, 'Website', 1, '2022-02-04 22:55:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dictypepublishedin`
--

CREATE TABLE `dictypepublishedin` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `State` int(2) NOT NULL,
  `DateReg` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dictypepublishedin`
--

INSERT INTO `dictypepublishedin` (`Id`, `Name`, `State`, `DateReg`) VALUES
(1, 'SCOPUS', 1, '2022-02-04 22:53:19'),
(2, 'Web of Science\r\n', 1, '2022-02-04 22:53:19'),
(3, 'Bentham Science\r\n', 1, '2022-02-04 22:53:37'),
(4, 'DOAJ', 1, '2022-02-04 22:53:37'),
(5, 'EconLit', 1, '2022-02-04 22:53:49'),
(6, 'IEEE Xplore\r\n', 1, '2022-02-04 22:53:49'),
(7, 'Latindex catálogo 2.0\r\n', 1, '2022-02-04 22:54:02'),
(8, 'Mathematical Reviewers\r\n', 1, '2022-02-04 22:54:02'),
(9, 'McGraw-Hill\r\n', 1, '2022-02-04 22:54:14'),
(10, 'ProQuest', 1, '2022-02-04 22:54:14'),
(11, 'Redalyc', 1, '2022-02-04 22:54:32'),
(12, 'SciELO', 1, '2022-02-04 22:54:32'),
(13, 'SPIE digital Library', 1, '2022-02-04 22:54:44'),
(14, 'Springer\r\n', 1, '2022-02-04 22:54:44'),
(15, 'Taylor &amp; Francis Group', 1, '2022-02-04 22:55:00'),
(16, 'Publicación estudiantil supervisada', 1, '2022-02-04 22:55:00'),
(17, 'Web of Science', 1, '2022-02-04 22:55:10'),
(18, 'Wiley', 1, '2022-02-04 22:55:10'),
(19, 'ERIH Plus', 1, '2022-02-04 22:55:23'),
(20, 'Otros', 1, '2022-02-04 22:55:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dictypesubvencion`
--

CREATE TABLE `dictypesubvencion` (
  `Id` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `State` int(2) NOT NULL,
  `Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dictypesubvencion`
--

INSERT INTO `dictypesubvencion` (`Id`, `Name`, `State`, `Date`) VALUES
(1, 'Article Processing Charge', 1, '2022-02-04 21:35:33'),
(2, 'Bolsa de Viaje', 1, '2022-02-04 21:35:33'),
(3, 'Subvenciòn Econòmica', 1, '2022-02-04 21:35:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dictypetraining`
--

CREATE TABLE `dictypetraining` (
  `Id` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `State` int(2) NOT NULL,
  `Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dictypetraining`
--

INSERT INTO `dictypetraining` (`Id`, `Name`, `State`, `Date`) VALUES
(1, 'Congreso', 1, '2022-01-24 22:25:09'),
(2, 'Taller', 1, '2022-01-24 22:25:09'),
(3, 'Seminario', 1, '2022-01-24 22:25:28'),
(4, 'Feria', 1, '2022-01-24 22:25:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dictypeusers`
--

CREATE TABLE `dictypeusers` (
  `Id` int(11) NOT NULL,
  `Nivel` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Estado` int(11) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dictypeusers`
--

INSERT INTO `dictypeusers` (`Id`, `Nivel`, `Nombre`, `Estado`, `RegDate`, `ModDate`) VALUES
(1, 1, 'Docente', 1, '2022-01-21 03:36:53', '0000-00-00 00:00:00'),
(2, 1, 'Administrativo', 1, '2022-01-21 03:36:53', '0000-00-00 00:00:00'),
(3, 1, 'Estudiante', 1, '2022-01-21 03:36:53', '0000-00-00 00:00:00'),
(4, 2, 'Director', 1, '2022-01-21 03:36:53', '0000-00-00 00:00:00'),
(5, 2, 'SubDirector', 1, '2022-01-21 03:36:53', '0000-00-00 00:00:00'),
(6, 2, 'Secretaría', 1, '2022-01-21 03:36:53', '0000-00-00 00:00:00'),
(7, 3, 'Administrador', 1, '2022-01-21 03:38:45', '0000-00-00 00:00:00'),
(8, 3, 'Autoridad', 1, '2022-01-21 03:39:35', '0000-00-00 00:00:00'),
(9, 3, 'Director de Oficina', 1, '2022-01-21 03:39:35', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicuniversidades`
--

CREATE TABLE `dicuniversidades` (
  `Id` int(11) NOT NULL,
  `CRI` varchar(20) NOT NULL,
  `Nombre` varchar(70) NOT NULL,
  `Gestion` varchar(20) NOT NULL,
  `Situacion` varchar(30) NOT NULL,
  `Region` varchar(30) NOT NULL,
  `Direccion` varchar(70) NOT NULL,
  `Telefono` varchar(25) NOT NULL,
  `Web` varchar(70) NOT NULL,
  `idTypeInstitute` int(2) NOT NULL DEFAULT '1' COMMENT '1 Universidad   2.Otros',
  `IdUserMod` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dicuniversidades`
--

INSERT INTO `dicuniversidades` (`Id`, `CRI`, `Nombre`, `Gestion`, `Situacion`, `Region`, `Direccion`, `Telefono`, `Web`, `idTypeInstitute`, `IdUserMod`) VALUES
(1, 'LIMA', 'UNIVERSIDAD NACIONAL MAYOR DE SAN MARCOS', 'Pública', 'Institucionalizada', 'Lima', 'Av. Venezuela s/n, cdra. 34. Lima', '01?6197000', 'www.unmsm.edu.pe', 1, 0),
(2, '', 'UNIVERSIDAD NACIONAL DE INGENIERÍA', 'Pública', 'Institucionalizada', 'Lima', 'Av. Túpac Amaru N° 210, Rímac. Lima', '01?4811035 / 01?3813825', 'www.uni.edu.pe', 1, 0),
(3, '', 'UNIVERSIDAD NACIONAL AGRARIA LA MOLINA', 'Pública', 'Institucionalizada', 'Lima', 'Av. La Molina s/n, La Molina. Lima', '01?6147111 / 01?3495648', 'www.lamolina.edu.pe', 1, 0),
(4, '', 'UNIVERSIDAD NACIONAL FEDERICO VILLARREAL', 'Pública', 'Institucionalizada', 'Lima', 'Calle Carlos Gonzales N° 285, San Miguel. Lima', '748?0888', 'www.unfv.edu.pe', 1, 0),
(5, '', 'UNIVERSIDAD NACIONAL DEL CALLAO', 'Pública', 'Institucionalizada', 'Lima', 'Av. Sáenz Peña N° 1060. Callao', '01?4296607', 'www.unac.edu.pe', 1, 0),
(6, '', 'UNIVERSIDAD NACIONAL DE EDUCACIÓN ENRIQUE GUZMÁN Y VALLE', 'Pública', 'Institucionalizada', 'Lima', 'Av. Enrique Guzmán y Valle s/n, La Cantuta, Chosica. Lima', '01?3133700', 'www.une.edu.pe', 1, 0),
(7, '', 'UNIVERSIDAD NACIONAL JOSÉ FAUSTINO SÁNCHEZ CARRIÓN', 'Pública', 'Institucionalizada', 'Lima', 'Av. Mercedes Indacochea s/n. Huacho', '01?232 6097 / 01?2322918', 'www.unjfsc.edu.pe', 1, 0),
(8, '', 'PONTIFICIA UNIVERSIDAD CATÓLICA DEL PERÚ', 'Privada', 'Institucionalizada', 'Lima', 'Av. Universitaria N° 1801, San Miguel. Lima', '01?6262000', 'www.pucp.edu.pe', 1, 0),
(9, '', 'UNIVERSIDAD PERUANA CAYETANO HEREDIA', 'Privada', 'Institucionalizada', 'Lima', 'Av. Honorio Delgado N° 430, Urb. Ingeniería, San Martín de Porres. Lim', '01?4824045 / 01?4821130', 'www.upch.edu.pe', 1, 0),
(10, '', 'UNIVERSIDAD DEL PACÍFICO', 'Privada', 'Institucionalizada', 'Lima', 'Av. Salaverry N° 2020, Jesús María. Lima', '01?2190100', 'www.up.edu.pe', 1, 0),
(11, '', 'UNIVERSIDAD DE LIMA', 'Privada', 'Institucionalizada', 'Lima', 'Av. Javier Prado Este s/n, cdra. 46, Monterrico, Surco. Lima', '01?4351689 / 01?4376767', 'www.ulima.edu.pe', 1, 0),
(12, '', 'UNIVERSIDAD DE SAN MARTÍN DE PORRES', 'Privada', 'Institucionalizada', 'Lima', 'Jr. Calandrias N° 151/291, Santa Anita. Lima', '01?4780498 / 01?3620064', 'www.usmp.edu.pe', 1, 0),
(13, '', 'UNIVERSIDAD FEMENINA DEL SAGRADO CORAZÓN', 'Privada', 'Institucionalizada', 'LIma', 'Av. Los Frutales N° 954, Urb. Santa Magdalena Sofía, La Molina. Lima', '01?4341885 / 01?4364641', 'www.unife.edu.pe', 1, 0),
(14, '', 'UNIVERSIDAD INCA GARCILASO DE LA VEGA', 'Privada', 'Institucionalizada', 'Lima', 'Av. Arequipa N° 1841, Lince. Lima', '01?4724916 / 01?4711421', 'www.uigv.edu.pe', 1, 0),
(15, '', 'UNIVERSIDAD RICARDO PALMA', 'Privada', 'Institucionalizada', 'Lima', 'Av. Benavides N° 5440, Urb. Las Gardenias, Surco. Lima', '01?7080000 / 01?7080309', 'www.urp.edu.pe', 1, 0),
(16, '', 'UNIVERSIDAD PERUANA UNIÓN', 'Privada', 'Institucionalizada', 'Lima', 'Carretera Central km 19, Ñaña. Lima', '01?6186300', 'www.upeu.edu.pe', 1, 0),
(17, '', 'UNIVERSIDAD MARCELINO CHAMPAGNAT', 'Privada', 'Institucionalizada', 'Lima', 'Av. Mariscal Castilla N° 1270, Surco. Lima', '01?4490449', 'www.umch.edu.pe', 1, 0),
(18, '', 'UNIVERSIDAD PERUANA DE CIENCIAS APLICADAS', 'Privada', 'Institucionalizada', 'Lima', 'Av. Prolongación Primavera N° 2390, Monterrico, Surco. Lima', '01?3133333', 'www.upc.edu.pe', 1, 0),
(19, '', 'UNIVERSIDAD SAN IGNACIO DE LOYOLA', 'Privada', 'Institucionalizada', 'Lima', 'Av. La Fontana N° 550, La Molina. Lima', '01?3171000', 'www.usil.edu.pe', 1, 0),
(20, '', 'UNIVERSIDAD ALAS PERUANAS', 'Privada', 'Institucionalizada', 'Lima', 'Jr. Cayetano Heredia N° 1138, Jesús María. Lima', '01?2652992 / 01?2660195', 'www.uap.edu.pe', 1, 0),
(21, '', 'UNIVERSIDAD NORBERT WIENER', 'Privada', 'Institucionalizada', 'Lima', 'Jr. Larrabure y Unanue N° 110 Urb, Santa Beatriz, Lince. Lima', '01?7065100', 'www.uwiener.edu.pe', 1, 0),
(22, '', 'ASOCIACIÓN UNIVERSIDAD PRIVADA SAN JUAN BAUTISTA', 'Privada', 'Institucionalizada', 'Lima', 'Av. José Antonio Lavalle s/n, ex Hacienda Villa, Chorrillos. Lima', '01?2142505 / 01?2142500', 'www.upsjb.edu.pe', 1, 0),
(23, '', 'UNIVERSIDAD TECNOLÓGICA DEL PERÚ', 'Privada', 'Institucionalizada', 'Lima', 'Av. Petit Thouars cruce con Av. 28 de Julio. Lima', '01?3159614 / 01?3159600', 'www.utp.edu.pe', 1, 0),
(24, '', 'UNIVERSIDAD CATÓLICA SEDES SAPIENTIAE', 'Privada', 'Institucionalizada', 'Lima', 'Esq. Constelaciones y Sol de Oro s/n, Urbanización Sol de Oro, Los Oli', '01?5330008', 'www.ucss.edu.pe', 1, 0),
(25, '', 'UNIVERSIDAD CIENTÍFICA DEL SUR', 'Privada', 'Institucionalizada', 'Lima', 'Calle Cantuarias N° 385, Miraflores. Lima', '01?6106400', 'www.ucsur.edu.pe', 1, 0),
(26, '', 'UNIVERSIDAD PERUANA DE CIENCIA E INFORMÁTICA', 'Privada', 'Institucionalizada', 'Lima', 'Jr. Talara N° 752, Jesús María. Lima', '330?7087', 'www.upci.edu.pe', 1, 0),
(27, '', 'UNIVERSIDAD ANTONIO RUIZ DE MONTOYA', 'Privada', 'Institucionalizada', 'Lima', 'Av. Paso de los Andes 970, Pueblo Libre. Lima', '01?7195990', 'www.uarm.edu.pe', 1, 0),
(28, '', 'UNIVERSIDAD ESAN', 'Privada', 'Institucionalizada', 'Lima', 'Alonso de Molina N° 1652, Monterrico Chico, Surco. Lima', '01?3177200', 'www.esan.edu.pe', 1, 0),
(29, '', 'UNIVERSIDAD LAS AMÉRICAS', 'Privada', 'Institucionalizada', 'Lima', 'Av. Garcilaso de la Vega N° 1880. Lima', '01?4171415 / 01?4171422', 'www.ulasamericas.edu.pe', 1, 0),
(30, '', 'UNIVERSIDAD PRIVADA TELESUP', 'Privada', 'Institucionalizada', 'Lima', 'Av. 28 de Julio N° 1056. Lima', '01?4331510', 'www.utelesup.com', 1, 0),
(31, '', 'FACULTAD DE TEOLOGÍA PONTIFICIA Y CIVIL DE LIMA', 'Privada', 'Institucionalizada', 'Lima', 'Jirón Carlos Bondy N° 700, Pueblo Libre. Lima', '01?4610013', 'www.ftpcl.edu.pe', 1, 0),
(32, '', 'UNIVERSIDAD NACIONAL TECNOLÓGICA DEL CONO SUR DE LIMA', 'Pública', 'A. Func. Provisional', 'Lima', 'Campus Universitario. Av. Bolivar s/n, Sector N° 3, Grupo N° 1 ,Mz. “A', '01?719 5693 / 01?7195694', 'www.untecs.edu.pe', 1, 0),
(33, '', 'UNIVERSIDAD NACIONAL DE CAÑETE', 'Pública', 'A. Func. Provisional', 'Lima', 'Jr. Mariscal Castilla N° 162, Urb. Las Casuarinas, Distrito de San Vic', '01?3399373', 'www.undc.edu.pe', 1, 0),
(34, '', 'UNIVERSIDAD NACIONAL DE BARRANCA', 'Pública', 'A. Func. Provisional', 'Lima', 'Av. Toribio de Luzuriaga, cdra. 3 s/n, Urb. La Florida. Barranca', '01?2355815', 'www.unab.edu.pe', 1, 0),
(35, '', 'UNIVERSIDAD PRIVADA SERGIO BERNALES', 'Privada', 'A. Func. Provisional', 'Lima', 'Urb. Los Libertadores s/n, San Vicente de Cañete. Cañete', '01?5811374 / 01?5811438', 'www.upsb.edu.pe', 1, 0),
(36, '', 'UNIVERSIDAD PERUANA SIMÓN BOLÍVAR', 'Privada', 'A. Func. Provisional', 'Lima', 'Calle Colombia N° 137, Pueblo Libre. Lima', '01?4230188 / 01?4232068', 'www.usb.edu.pe', 1, 0),
(37, '', 'UNIVERSIDAD DE CIENCIAS Y HUMANIDADES', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Universitaria N° 5175, Urb. Molitalia, Los Olivos. Lima', '01?5280948', 'www.uch.edu.pe', 1, 0),
(38, '', 'UNIVERSIDAD PERUANA DE INTEGRACIÓN GLOBAL', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Circunvalación N° 653, Monterrico, Surco. Lima', '01?2750500', 'www.upig.edu.pe', 1, 0),
(39, '', 'UNIVERSIDAD AUTÓNOMA DEL PERÚ', 'Privada', 'A. Func. Provisional', 'LIma', 'Panamericana Sur km 16.3, Villa El Salvador. Lima', '01?7153335', 'www.autonoma.edu.pe', 1, 0),
(40, '', 'UNIVERSIDAD PRIVADA ARZOBISPO LOAYZA', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Arequipa N°979, Sta. Beatriz, Lince. Lima', '01?4338746', 'www.ual.edu.pe', 1, 0),
(41, '', 'UNIVERSIDAD LE CORDON BLEU', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Vasco Núñez de Balboa N° 530, Miraflores. Lima', '01?6178300', 'www.cordonbleuperu.edu.pe', 1, 0),
(42, '', 'UNIVERSIDAD JAIME BAUSATE Y MEZA', 'Privada', 'A. Func. Provisional', 'Lima', 'Jr. Río de Janeiro N° 600, Jesús María. Lima', '01?3193500', 'www.bausate.edu.pe', 1, 0),
(43, '', 'UNIVERSIDAD DE CIENCIAS Y ARTES DE AMÉRICA LATINA', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Primavera N° 970, Urb. Chacarilla, Surco. Lima', '01?6222222', 'www.ucal.edu.pe', 1, 0),
(44, '', 'UNIVERSIDAD PERUANA DE ARTE ORVAL', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Primavera N° 207, Urb. Chacarilla del Estanque, San Borja. Lima', '01?7192318', 'www.orval.edu.pe', 1, 0),
(45, '', 'UNIVERSIDAD PERUANA DE INVESTIGACIÓN Y NEGOCIOS', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Salaverry N° 1810, Jesus María. Lima', '01?2655351 / 01?2654826', 'www.upein.edu.pe', 1, 0),
(46, '', 'UNIVERSIDAD SAN ANDRÉS', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Industrial N° 3701, San Martín de Porres. Lima', '01?5224702 / 01?5216505', 'www.usan.edu.pe', 1, 0),
(47, '', 'UNIVERSIDAD INTERAMERICANA PARA EL DESARROLLO', 'Privada', 'A. Func. Provisional', 'LIma', 'Av. Bolivia N°624, Breña. Lima', '01?4285274 / 01?7197799', 'www.unid.edu.pe', 1, 0),
(48, '', 'UNIVERSIDAD JUAN PABLO II', 'Privada', 'A. Func. Provisional', 'Lima', 'Calle Domingo Martínez N° 1255, Surquillo. Lima', '01?4456555 / 01?4456111', 'www.ujpii.edu.pe', 1, 0),
(49, '', 'UNIVERSIDAD DE INGENIERÍA Y TECNOLOGÍA', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Prolongación San Martín N° 207, Barranco. Lima', '01?3731000', 'www.utec.edu.pe', 1, 0),
(50, '', 'UNIVERSIDAD MARÍA AUXILIADORA', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Canto Bello N° 431, San Juan de Lurigancho. Lima', '01?3891212', 'www.umaperu.edu.pe', 1, 0),
(51, '', 'UNIVERSIDAD SANTO DOMINGO DE GUZMÁN', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Miguel Grau, Mz. CD, Lote 4?7, Jicamarca, San Juan de Lurigancho. ', '01?7374587', 'No registra', 1, 0),
(52, '', 'UNIVERSIDAD MARÍTIMA DEL PERÚ', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Sáenz Peña N°111. Callao', '01?4296697', 'www.ump.edu.pe', 1, 0),
(53, '', 'UNIVERSIDAD PRIVADA SISE', 'Privada', 'A. Func. Provisional', 'Lima', 'Calle Cantuarias N° 385, Miraflores. Lima', '01?6347474', 'www.universidadsise.edu.pe', 1, 0),
(54, '', 'UNIVERSIDAD PRIVADA PERUANO ALEMANA', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Uruguay N° 514. Lima', '01?4115888', 'www.ipal.edu.pe', 1, 0),
(55, 'NORTE', 'UNIVERSIDAD NACIONAL SANTIAGO ANTÚNEZ DE MAYOLO', 'Pública', 'Institucionalizada', 'Áncash', 'Av. Centenario N° 200, Independencia. Huaraz', '043?421393 / 043?421452', 'www.unasam.edu.pe', 1, 0),
(56, '', 'UNIVERSIDAD NACIONAL DEL SANTA', 'Pública', 'Institucionalizada', 'Áncash', 'Av. Pacífico N° 508, Buenos Aires, Nuevo Chimbote', '043?310445', 'www.uns.edu.pe', 1, 0),
(57, '', 'UNIVERSIDAD CATÓLICA LOS ÁNGELES DE CHIMBOTE', 'Privada', 'Institucionalizada', 'Áncash', 'Francisco Bolognesi N° 835. Chimbote', '043?343444', 'www.uladech.edu.pe', 1, 0),
(58, '', 'UNIVERSIDAD SAN PEDRO', 'Privada', 'Institucionalizada', 'Áncash', 'Laderas del Norte Mz. “H” lote 11. Chimbote', '043?341078 / 043?345899', 'www.usanpedro.edu.pe', 1, 0),
(59, '', 'UNIVERSIDAD NACIONAL DE CAJAMARCA', 'Pública', 'Institucionalizada', 'Cajamarca', 'Av. Atahualpa N° 1005, Carretera Baños del Inca. Cajamarca', '076?362796 / 076?362559', 'www.unc.edu.pe', 1, 0),
(60, '', 'UNIVERSIDAD PRIVADA ANTONIO GUILLERMO URRELO', 'Privada', 'Institucionalizada', 'Cajamarca', 'Jirón José Sabogal N° 913. Cajamarca', '01?076365819', 'www.upagu.edu.pe', 1, 0),
(61, '', 'UNIVERSIDAD NACIONAL DE JAÉN', 'Pública', 'A. Func. Provisional', 'Cajamarca', 'Calle Mariscal Castilla N° 115. Jaén', '076?432429', 'www.unj.edu.pe', 1, 0),
(62, '', 'UNIVERSIDAD NACIONAL AUTÓNOMA DE CHOTA', 'Pública', 'A. Func. Provisional', 'Cajamarca', 'Jr. Gregorio Malca N° 875. Chota', '076?351144', 'www.unach.edu.pe', 1, 0),
(63, '', 'UNIVERSIDAD NACIONAL DE TRUJILLO', 'Pública', 'Institucionalizada', 'La Libertad', 'Diego de Almagro N° 344. Trujillo', '044?205513 / 044?232528', 'www.unitru.edu.pe', 1, 0),
(64, '', 'UNIVERSIDAD PRIVADA ANTENOR ORREGO', 'Privada', 'Institucionalizada', 'La Libertad', 'Av. América del Sur N° 3145, Urb. Monserrate. Trujillo', '044?604444', 'www.upao.edu.pe', 1, 0),
(65, '', 'UNIVERSIDAD CÉSAR VALLEJO', 'Privada', 'Institucionalizada', 'La Libertad', 'Av. Larco cdra. 17. Trujillo', '044?485000', 'www.ucv.edu.pe', 1, 0),
(66, '', 'UNIVERSIDAD PRIVADA DEL NORTE', 'Privada', 'Institucionalizada', 'La Libertad', 'Av. El Ejército N° 920. Trujillo', '044?606222', 'www.upnorte.edu.pe', 1, 0),
(67, '', 'UNIVERSIDAD CATÓLICA DE TRUJILLO BENEDICTO XVI', 'Privada', 'Institucionalizada', 'La Libertad', 'Carretera Panamericana Norte km 555, Moche. Trujillo', '044?607430', 'www.uct.edu.pe', 1, 0),
(68, '', 'UNIVERSIDAD PRIVADA DE TRUJILLO', 'Privada', 'A. Func. Provisional', 'La Libertad', 'Carretera Industrial km 4, Semi Rústica El Bosque. Trujillo', '044?211557', 'www.uptrujillo.edu.pe', 1, 0),
(69, '', 'UNIVERSIDAD PRIVADA LEONARDO DA VINCI', 'Privada', 'A. Func. Provisional', 'La Libertad', 'Av. España N° 2715, Urb. El Recreo. Trujillo', '044-260026 / 044-230003', 'www.upd.edu.pe', 1, 0),
(70, '', 'UNIVERSIDAD NACIONAL PEDRO RUIZ GALLO', 'Pública', 'Institucionalizada', 'Lambayeque', 'Ciudad Universitaria Juan XXIII N° 391. Lambayeque', '074?283146', 'www.unprg.edu.pe', 1, 0),
(71, '', 'UNIVERSIDAD PARTICULAR DE CHICLAYO', 'Privada', 'Institucionalizada', 'Lambayeque', 'Av. Salaverry N° 232?B. Chiclayo', '074?265370 / 074?265889', 'www.udch.edu.pe', 1, 0),
(72, '', 'UNIVERSIDAD CATÓLICA SANTO TORIBIO DE MOGROVEJO', 'Privada', 'Institucionalizada', 'Lambayeque', 'Av. Panamericana Norte N° 855. Chiclayo', '074?606200', 'www.usat.edu.pe', 1, 0),
(73, '', 'UNIVERSIDAD SEÑOR DE SIPÁN', 'Privada', 'Institucionalizada', 'Lambayeque', 'Campus Universitario, km 5, Carretera Pimentel. Lambayeque', '074?203861 / 074?481610', 'www.uss.edu.pe', 1, 0),
(74, '', 'UNIVERSIDAD PRIVADA JUAN MEJÍA BACA', 'Privada', 'A. Func. Provisional', 'Lambayeque', 'Av. Quiñones N° 640, Urb. San Martín. Chiclayo', '074?225763', 'www.umb.edu.pe', 1, 0),
(75, '', 'UNIVERSIDAD DE LAMBAYEQUE', 'Privada', 'A. Func. Provisional', 'Lambayeque', 'Calle Tacna N° 065. Chiclayo', '074?208836', 'www.udl.edu.pe', 1, 0),
(76, '', 'UNIVERSIDAD NACIONAL DE PIURA', 'Pública', 'Institucionalizada', 'Piura', 'Campus Universitario, Urb. Miraflores s/n. Piura', '073?343349', 'www.unp.edu.pe', 1, 0),
(77, '', 'UNIVERSIDAD DE PIURA', 'Privada', 'Institucionalizada', 'Piura', 'Av. Ramón Mugica N° 131, Urb. San Eduardo. Piura', '073?284515 / 073?284500', 'www.udep.edu.pe', 1, 0),
(78, '', 'UNIVERSIDAD NACIONAL DE FRONTERA', 'Pública', 'A. Func. Provisional', 'Piura', 'Urb. Villa Perúl Canadá s/n Campus, Sullana. Piura', '073?631206', 'www.unfs.edu.pe', 1, 0),
(79, '', 'UNIVERSIDAD NACIONAL DE TUMBES', 'Pública', 'Institucionalizada', 'Tumbes', 'Av. Universitaria s/n, C. U., Pampa Grande. Tumbes', '072?786189', 'www.untumbes.edu.pe', 1, 0),
(80, 'SUR', 'UNIVERSIDAD NACIONAL MICAELA BASTIDAS DE APURÍMAC', 'Pública', 'Institucionalizada', 'Apurímac', 'Av. Arenas N° 121. Abancay', '083?322577', 'www.unamba.edu.pe', 1, 0),
(81, '', 'UNIVERSIDAD TECNOLÓGICA DE LOS ANDES', 'Privada', 'Institucionalizada', 'Apurímac', 'Av. Perú N° 700. Abancay', '083?321559 / 083?321559', 'www.utea.edu.pe', 1, 0),
(82, '', 'UNIVERSIDAD NACIONAL JOSÉ MARÍA ARGUEDAS', 'Pública', 'A. Func. Provisional', 'Apurímac', 'Jr. Constitución N° 409, 3er piso, Plaza de Armas. Andahuaylas', '083?422176', 'www.unajma.edu.pe', 1, 0),
(83, '', 'UNIVERSIDAD NACIONAL DE SAN AGUSTÍN', 'Pública', 'Institucionalizada', 'Arequipa', 'Calle Santa Catalina N° 117. Arequipa', '054?237808', 'www.unsa.edu.pe', 1, 0),
(84, '', 'UNIVERSIDAD CATÓLICA DE SANTA MARÍA', 'Privada', 'Institucionalizada', 'Arequipa', 'Samuel Velarde N° 320, Umacollo. Arequipa', '054?251112 / 054?251210', 'www.ucsm.edu.pe', 1, 0),
(85, '', 'UNIVERSIDAD CATÓLICA SAN PABLO', 'Privada', 'Institucionalizada', 'Arequipa', 'Campus Campiña Paisajista s/n, Quinta Vivanco, San Lázaro. Arequipa', '054?605630', 'www.ucsp.edu.pe', 1, 0),
(86, '', 'UNIVERSIDAD CIENCIAS DE LA SALUD', 'Privada', 'A. Func. Provisional', 'Arequipa', 'Calle San Camilo N° 510, Cercado. Arequipa', '054?232086', 'www.ucs.edu.pe', 1, 0),
(87, '', 'UNIVERSIDAD AUTÓNOMA SAN FRANCISCO', 'Privada', 'A. Func. Provisional', 'Arequipa', 'Calle Consuelo N° 313 Cercado. Arequipa', '054?225918 / 054?226901', 'www.uasf.edu.pe', 1, 0),
(88, '', 'UNIVERSIDAD LA SALLE', 'Privada', 'A. Func. Provisional', 'Arequipa', 'Av. Alfonso Ugarte s/n, Cercado. Arequipa', '054?607555 / 054?627554', 'www.ulasalle.edu.pe', 1, 0),
(89, '', 'UNIVERSIDAD PRIVADA AUTÓNOMA DEL SUR', 'Privada', 'A. Func. Provisional', 'Arequipa', 'Sebastián Barranca N° 208, Urb. Sta. Isabel Cercado. Arequipa', '054?226115', 'www.upads.edu.pe', 1, 0),
(90, '', 'UNIVERSIDAD NACIONAL DE SAN CRISTÓBAL DE HUAMANGA', 'Pública', 'Institucionalizada', 'Ayacucho', 'Portal Independencia N° 57. Ayacuhco', '066?313434 / 066?312230', 'www.unsch.edu.pe', 1, 0),
(91, '', 'UNIVERSIDAD DE AYACUCHO FEDERICO FROEBEL', 'Privada', 'A. Func. Provisional', 'Ayacucho', 'Av. Miguel Mariscal Llerena y Av. 26 de Enero. Ayacucho', '064?219604', 'www.udaff.edu.pe', 1, 0),
(92, '', 'UNIVERSIDAD NACIONAL DE SAN ANTONIO ABAD DEL CUSCO', 'Pública', 'Institucionalizada', 'Cusco', 'Calle Tigre N° 127. Cusco', '084?238156 / 084?224181', 'www.unsaac.edu.pe', 1, 0),
(93, '', 'UNIVERSIDAD ANDINA DEL CUSCO', 'Privada', 'Institucionalizada', 'Cusco', 'Urb. Ingeniería A?5, Larapa Grande, Distrito de San Gerónimo. Cusco', '084?273885 / 084?270874', 'www.uandina.edu.pe', 1, 0),
(94, '', 'UNIVERSIDAD PERUANA AUSTRAL DEL CUSCO', 'Privada', 'A. Func. Provisional', 'Cusco', 'Av. La Cultura N° 1907, Magisterio I Etapa. Cusco', '074?208836', 'www.uaustral.edu.pe', 1, 0),
(95, '', 'UNIVERSIDAD PRIVADA LÍDER PERUANA', 'Privada', 'A. Func. Provisional', 'Cusco', 'Jirón Quillabamba N° 110, Santa Ana, La Convención, Quillabamba. Cusco', '084?281326', 'www.universidadliderperuana.com', 1, 0),
(96, '', 'UNIVERSIDAD GLOBAL DEL CUSCO', 'Privada', 'A. Func. Provisional', 'Cusco', 'Av. Manantiales N° 164. Cusco', '084?240905', 'www.uglobalcusco.edu.pe', 1, 0),
(97, '', 'UNIVERSIDAD JOSÉ CARLOS MARIÁTEGUI', 'Privada', 'Institucionalizada', 'Moquegua', 'Calle Ayacucho N° 393, Cercado. Moquegua', '053?461535 / 053?461110', 'www.ujcm.edu.pe', 1, 0),
(98, '', 'UNIVERSIDAD NACIONAL DE MOQUEGUA', 'Pública', 'A. Func. Provisional', 'Moquegua', 'Prolongación Calle Áncash s/n. Moquegua', '053?463559', 'www.unam.edu.pe', 1, 0),
(99, '', 'UNIVERSIDAD NACIONAL DEL ALTIPLANO', 'Pública', 'Institucionalizada', 'Puno', 'Av. El Ejército N° 329. Puno', '051?352206 / 051?368590', 'www.unap.edu.pe', 1, 0),
(100, '', 'UNIVERSIDAD ANDINA NÉSTOR CÁCERES VELÁSQUEZ', 'Privada', 'Institucionalizada', 'Puno', 'Ed. El Campín 3er piso, Pasaje de la Cultura, Plaza de Armas. Juliaca', '051?321142 / 051?322213', 'www.uancv.edu.pe', 1, 0),
(101, '', 'UNIVERSIDAD NACIONAL DE JULIACA', 'Pública', 'A. Func. Provisional', 'Puno', 'Av. Nueva Zelandia s/n, Urb. La Capilla. Juliaca', '051?323200 / 051?328722', 'www.unaj.edu.pe', 1, 0),
(102, '', 'UNIVERSIDAD PRIVADA SAN CARLOS', 'Privada', 'A. Func. Provisional', 'Puno', 'Jr. Conde de Lemos N° 128. Puno', '051?352884', 'www.upsc.edu.pe', 1, 0),
(103, '', 'UNIVERSIDAD NACIONAL JORGE BASADRE GROHMANN', 'Pública', 'Institucionalizada', 'Tacna', 'Ciudad Universitaria, Av. Miraflores s/n. Tacna', '052?583000', 'www.unjbg.edu.pe', 1, 0),
(104, '', 'UNIVERSIDAD PRIVADA DE TACNA', 'Privada', 'Institucionalizada', 'Tacna', 'Av. Bolognesi N° 1177. Tacna', '052?427212', 'www.upt.edu.pe', 1, 0),
(105, '', 'UNIVERSIDAD LATINOAMERICANA CIMA', 'Privada', 'A. Func. Provisional', 'Tacna', 'Av. Gregorio Albarracín N° 500. Tacna', '052?412257', 'www.ulc.edu.pe', 1, 0),
(106, 'CENTRO', 'UNIVERSIDAD NACIONAL DE HUANCAVELICA', 'Pública', 'Institucionalizada', 'Huancavelica', 'Ciudad Universitaria de Paturpampa. Huancavelica', '067?451551 / 943072222/', 'www.unh.edu.pe', 1, 0),
(107, '', 'UNIVERSIDAD PARA EL DESARROLLO ANDINO', 'Privada', 'A. Func. Provisional', 'Huancavelica', 'Av. Ricardo Fernández N° 103, Pueblo Nuevo, Lircay. Huancavelica', '067?458193', 'www.udea.edu.pe', 1, 0),
(108, '', 'UNIVERSIDAD NACIONAL HERMILIO VALDIZÁN', 'Pública', 'Institucionalizada', 'Huánuco', 'Av. Universitaria N° 601, Cayhuayna. Huánuco', '062?591064 / 062?591060', 'www.unheval.edu.pe', 1, 0),
(109, '', 'UNIVERSIDAD DE HUÁNUCO', 'Privada', 'Institucionalizada', 'Huánuco', 'Jirón Hermilio Valdizán N° 871. Huánuco', '062?513154 / 062?519173', 'www.udh.edu.pe', 1, 0),
(110, '', 'UNIVERSIDAD NACIONAL SAN LUIS GONZAGA DE ICA', 'Pública', 'Institucionalizada', 'Ica', 'Prolongación Ayabaca cdra. 9, Urb. San José. Ica', '056?228406', 'www.unica.edu.pe', 1, 0),
(111, '', 'UNIVERSIDAD PRIVADA DE ICA', 'Privada', 'A. Func. Provisional', 'Ica', 'Av. Túpac Amaru N° 336. Ica', '056?218369', 'www.upica.edu.pe', 1, 0),
(112, '', 'UNIVERSIDAD PRIVADA ADA A. BYRON', 'Privada', 'A. Func. Provisional', 'Ica', 'Av. Abelardo Alva Maúrtua N° 489, Chincha Alta. Chincha', '056?262439', 'www.upab.edu.pe', 1, 0),
(113, '', 'UNIVERSIDAD NACIONAL DEL CENTRO DEL PERÚ', 'Pública', 'Institucionalizada', 'Junín', 'Av. Mariscal Ramón Castilla km 5, N° 3809, El Tambo. Huancayo', '064?481078 / 064?481076', 'www.uncp.edu.pe', 1, 0),
(114, '', 'UNIVERSIDAD PERUANA LOS ANDES', 'Privada', 'Institucionalizada', 'Junín', 'Av. Giraldes N° 230. Huancayo', '064?224479 / 064?217373', 'www.upla.edu.pe', 1, 0),
(115, '', 'UNIVERSIDAD CONTINENTAL', 'Privada', 'Institucionalizada', 'Junín', 'Av. San Carlos N° 1980. Huancayo', '064?481430', 'www.continental.edu.pe', 1, 0),
(116, '', 'UNIVERSIDAD PERUANA DEL CENTRO', 'Privada', 'A. Func. Provisional', 'Junín', 'Jirón Moquegua N° 474. Huancayo', '064?202005', 'www.upecen.edu.pe', 1, 0),
(117, '', 'UNIVERSIDAD PRIVADA DE HUANCAYO FRANKLIN ROOSEVELT', 'Privada', 'A. Func. Provisional', 'Junín', 'Av. Giráldez N° 542. Huancayo', '064?219604', 'www.ufr.edu.pe', 1, 0),
(118, '', 'UNIVERSIDAD SANTO TOMÁS DE AQUINO DE CIENCIA E INTEGRACIÓN', 'Privada', 'A. Func. Provisional', 'Junín', 'Av. Huancavelica N° 462. Huancayo', '064?227050', 'http://www.ust.edu.pe/', 1, 0),
(119, '', 'UNIVERSIDAD NACIONAL DANIEL ALCIDES CARRIÓN', 'Pública', 'Institucionalizada', 'Pasco', 'Edificio Estatal N° 4, San Juan Pampa, Apartado 77. Cerro de Pasco', '063?422197 / 063?421350', 'www.undac.edu.pe', 1, 0),
(120, 'AMAZÓNICO', 'UNIVERSIDAD NACIONAL TORIBIO RODRÍGUEZ DE MENDOZA DE AMAZONAS', 'Pública', 'Institucionalizada', 'Amazonas', 'Ciudad Universitaria, Barrio Higos Urco, El Franco. Chachapoyas', '041?477694', 'www.untrm.edu.pe', 1, 0),
(121, '', 'UNIVERSIDAD DE LA AMAZONIA MARIO PELÁEZ BAZÁN', 'Privada', 'A. Func. Provisional', 'Amazonas', 'Jr. Santa Rosa N° 47. Bagua Grande', '041?475111', 'www.upb.edu.pe', 1, 0),
(122, '', 'UNIVERSIDAD NACIONAL DE LA AMAZONIA PERUANA', 'Pública', 'Institucionalizada', 'Loreto', 'Jr. Sargento Lores N° 385, Urb. Cercado. Iquitos', '051?965995495 / 065?23218', 'www.unapiquitos.edu.pe', 1, 0),
(123, '', 'UNIVERSIDAD CIENTÍFICA DEL PERÚ', 'Privada', 'Institucionalizada', 'Loreto', 'Av. Abelardo Quiñones N° 2500, San Juan. Iquitos', '065?261088 / 065?262086', 'www.ucp.edu.pe', 1, 0),
(124, '', 'UNIVERSIDAD PERUANA DEL ORIENTE', 'Privada', 'A. Func. Provisional', 'Loreto', 'Av. Abelardo Quiñones N° 2575, San Juan Bautista, Maynas. Loreto', '065?261104', 'www.upo.edu.pe', 1, 0),
(125, '', 'UNIVERSIDAD PRIVADA DE LA SELVA PERUANA', 'Privada', 'A. Func. Provisional', 'Loreto', 'Calle San Martín N° 230. Iquitos', '065?241590', 'www.upsep.edu.pe', 1, 0),
(126, '', 'UNIVERSIDAD NACIONAL AMAZÓNICA DE MADRE DE DIOS', 'Pública', 'Institucionalizada', 'Madre de Dios', 'Av. 2 de Mayo N° 960. Puerto Maldonado', '082?573186 / 978 8400698', 'www.unamad.edu.pe', 1, 0),
(127, '', 'UNIVERSIDAD NACIONAL AGRARIA DE LA SELVA', 'Pública', 'Institucionalizada', 'San Martín', 'Av. Universitaria km 1.5. Tingo María', '062?562702 / 062?561986', 'www.unas.edu.pe', 1, 0),
(128, '', 'UNIVERSIDAD NACIONAL DE SAN MARTÍN', 'Pública', 'Institucionalizada', 'San Martín', 'Jirón Maynas N° 177. Tarapoto', '042?524253', 'www.unsm.edu.pe', 1, 0),
(129, '', 'UNIVERSIDAD NACIONAL DE UCAYALI', 'Pública', 'Institucionalizada', 'Ucayali', 'Carretera Federico Basadre s/n, km 6. Pucalpa', '061?592236', 'www.unu.edu.pe', 1, 0),
(130, '', 'UNIVERSIDAD NACIONAL INTERCULTURAL DE LA AMAZONIA', 'Pública', 'A. Func. Provisional', 'Ucayali', 'Carretera San José km 0.5, ex ILV. Yarinacocha', '061?596301 / 061?596912', 'www.unia.edu.pe', 1, 0),
(131, '', 'UNIVERSIDAD PRIVADA DE PUCALLPA', 'Privada', 'A. Func. Provisional', 'Ucayali', 'Coronel Portillo Nº 782. Pucallpa', '061?570670', 'www.uppucallpa.org', 1, 0),
(132, '', 'Jose Antonio Encinas Puno', 'Pública', '', 'Puno', 'Av. Don Bosco S/N', '098765544321', '', 2, 6),
(133, '', 'Instituo de Informatica de la Una Puno', 'Pública', '', 'Puno', 'Jr Acora 354', '0907987987', '', 2, 6),
(134, '', 'JOSE DOMINGO CHOQUEHUANCA', 'Pública', '', 'PUNO', 'AV SALIDA A CUSCO S/N', '987654321', '', 2, 6),
(135, '', 'Centro de Idiomas de la Universidad Nacional del altiplano', 'Pública', '', 'puno', 'Jr lima 123', '3535353', '', 2, 6),
(136, '', 'ISCTE-IUL', 'Pública', '', 'Portugal', 'Av. das For¸cas Armadas', '', '', 2, 6),
(137, '', 'Instituto de Telecomunicaciones', 'Pública', '', 'Portugal', 'Av. Rovisco Pais', '', '', 2, 6),
(138, '', 'University of Murcia', 'Pública', '', 'España', '', '', '', 2, 6),
(140, '', 'A', 'Privada', '', 'A', '', '', '', 2, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `histaccess`
--

CREATE TABLE `histaccess` (
  `Id` int(11) NOT NULL,
  `IdUsers` int(11) NOT NULL,
  `IdTypeUsuario` int(11) NOT NULL,
  `Action` varchar(50) NOT NULL COMMENT '0:error| 1:ingreso| 2:salida|',
  `ip` varchar(16) NOT NULL,
  `navegador` varchar(50) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModDate` datetime NOT NULL,
  `Obs` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `histaccess`
--

INSERT INTO `histaccess` (`Id`, `IdUsers`, `IdTypeUsuario`, `Action`, `ip`, `navegador`, `RegDate`, `ModDate`, `Obs`) VALUES
(15, 96, 6, '1', '179.7.225.19', 'Google Chrome', '2022-03-01 15:07:53', '0000-00-00 00:00:00', ''),
(16, 95, 2, '1', '181.176.163.130', 'Google Chrome', '2022-03-01 17:04:29', '0000-00-00 00:00:00', ''),
(17, 95, 2, '1', '181.176.163.130', 'Google Chrome', '2022-03-02 16:24:28', '0000-00-00 00:00:00', ''),
(18, 96, 6, '1', '179.7.225.19', 'Google Chrome', '2022-03-02 22:17:48', '0000-00-00 00:00:00', ''),
(19, 6, 1, '1', '179.7.225.19', 'Google Chrome', '2022-03-02 23:03:18', '0000-00-00 00:00:00', ''),
(20, 96, 6, '1', '179.7.225.19', 'Google Chrome', '2022-03-03 01:54:47', '0000-00-00 00:00:00', ''),
(21, 0, 2, '1', '181.176.163.130', 'Google Chrome', '2022-03-03 16:30:49', '0000-00-00 00:00:00', ''),
(22, 0, 2, '1', '181.176.163.130', 'Google Chrome', '2022-03-03 16:38:46', '0000-00-00 00:00:00', ''),
(23, 0, 2, '1', '181.176.163.130', 'Google Chrome', '2022-03-03 16:38:53', '0000-00-00 00:00:00', ''),
(24, 0, 2, '1', '181.176.163.130', 'Google Chrome', '2022-03-03 16:39:56', '0000-00-00 00:00:00', ''),
(25, 0, 2, '1', '181.176.163.130', 'Google Chrome', '2022-03-03 16:41:09', '0000-00-00 00:00:00', ''),
(26, 95, 2, '1', '181.176.163.130', 'Google Chrome', '2022-03-03 16:48:40', '0000-00-00 00:00:00', ''),
(27, 95, 2, '1', '181.176.163.130', 'Google Chrome', '2022-03-03 16:51:12', '0000-00-00 00:00:00', ''),
(28, 0, 2, '1', '181.176.163.130', 'Google Chrome', '2022-03-03 17:22:11', '0000-00-00 00:00:00', ''),
(29, 1, 2, '1', '181.176.163.130', 'Google Chrome', '2022-03-03 17:22:45', '0000-00-00 00:00:00', ''),
(30, 1, 2, '1', '181.176.163.130', 'Google Chrome', '2022-03-03 17:22:54', '0000-00-00 00:00:00', ''),
(31, 1, 2, '1', '181.176.163.130', 'Google Chrome', '2022-03-03 17:23:07', '0000-00-00 00:00:00', ''),
(32, 95, 2, '2', '181.176.163.130', 'Google Chrome', '2022-03-03 17:32:21', '0000-00-00 00:00:00', ''),
(33, 1, 2, '1', '181.176.163.130', 'Google Chrome', '2022-03-03 17:33:05', '0000-00-00 00:00:00', ''),
(34, 6, 1, '1', '181.176.163.130', 'Google Chrome', '2022-03-03 17:33:51', '0000-00-00 00:00:00', ''),
(35, 6, 1, '2', '181.176.163.130', 'Google Chrome', '2022-03-03 17:33:57', '0000-00-00 00:00:00', ''),
(36, 1, 2, '1', '181.176.163.130', 'Google Chrome', '2022-03-03 17:34:32', '0000-00-00 00:00:00', ''),
(37, 1, 2, '1', '181.176.163.130', 'Google Chrome', '2022-03-03 17:44:42', '0000-00-00 00:00:00', ''),
(38, 6, 1, '1', '179.7.224.223', 'Google Chrome', '2022-03-08 14:53:49', '0000-00-00 00:00:00', ''),
(39, 6, 1, '2', '179.7.224.223', 'Google Chrome', '2022-03-08 14:58:20', '0000-00-00 00:00:00', ''),
(40, 95, 2, '1', '179.7.224.223', 'Google Chrome', '2022-03-08 14:59:12', '0000-00-00 00:00:00', ''),
(41, 1, 7, '1', '179.7.224.223', 'Google Chrome', '2022-03-08 15:01:30', '0000-00-00 00:00:00', ''),
(42, 1, 7, '2', '179.7.224.223', 'Google Chrome', '2022-03-08 15:12:30', '0000-00-00 00:00:00', ''),
(43, 6, 1, '1', '179.7.224.223', 'Google Chrome', '2022-03-09 03:02:09', '0000-00-00 00:00:00', ''),
(44, 6, 1, '2', '179.7.224.223', 'Google Chrome', '2022-03-09 03:10:37', '0000-00-00 00:00:00', ''),
(45, 1, 7, '1', '179.7.224.223', 'Google Chrome', '2022-03-09 03:10:53', '0000-00-00 00:00:00', ''),
(46, 1, 7, '2', '179.7.224.223', 'Google Chrome', '2022-03-09 03:11:40', '0000-00-00 00:00:00', ''),
(47, 95, 2, '1', '179.7.224.223', 'Google Chrome', '2022-03-09 03:11:54', '0000-00-00 00:00:00', ''),
(48, 96, 6, '1', '179.7.224.223', 'Google Chrome', '2022-03-09 03:13:20', '0000-00-00 00:00:00', ''),
(49, 96, 6, '1', '179.7.224.223', 'Google Chrome', '2022-03-09 14:50:23', '0000-00-00 00:00:00', ''),
(50, 96, 6, '2', '179.7.224.223', 'Google Chrome', '2022-03-09 17:26:56', '0000-00-00 00:00:00', ''),
(51, 96, 6, '1', '179.7.224.223', 'Google Chrome', '2022-03-09 17:27:08', '0000-00-00 00:00:00', ''),
(52, 6, 1, '1', '179.7.224.223', 'Google Chrome', '2022-03-10 03:30:48', '0000-00-00 00:00:00', ''),
(53, 96, 6, '1', '179.7.224.223', 'Google Chrome', '2022-03-10 16:21:32', '0000-00-00 00:00:00', ''),
(54, 1, 7, '1', '179.7.224.223', 'Google Chrome', '2022-03-10 16:41:03', '0000-00-00 00:00:00', ''),
(55, 1, 7, '2', '179.7.224.223', 'Google Chrome', '2022-03-10 17:03:11', '0000-00-00 00:00:00', ''),
(56, 1, 7, '1', '179.7.224.223', 'Google Chrome', '2022-03-10 17:24:49', '0000-00-00 00:00:00', ''),
(57, 96, 6, '2', '179.7.224.223', 'Google Chrome', '2022-03-10 19:20:00', '0000-00-00 00:00:00', ''),
(58, 97, 1, '1', '179.7.224.223', 'Google Chrome', '2022-03-10 19:21:45', '0000-00-00 00:00:00', ''),
(59, 97, 1, '2', '179.7.224.223', 'Google Chrome', '2022-03-10 19:24:13', '0000-00-00 00:00:00', ''),
(60, 6, 1, '1', '179.6.146.161', 'Google Chrome', '2022-03-10 19:24:58', '0000-00-00 00:00:00', ''),
(61, 95, 2, '1', '179.7.224.223', 'Google Chrome', '2022-03-10 19:27:33', '0000-00-00 00:00:00', ''),
(62, 96, 6, '1', '179.7.224.223', 'Google Chrome', '2022-03-11 12:22:39', '0000-00-00 00:00:00', ''),
(63, 96, 6, '1', '179.7.224.223', 'Google Chrome', '2022-03-11 14:50:58', '0000-00-00 00:00:00', ''),
(64, 6, 1, '1', '179.7.224.223', 'Google Chrome', '2022-03-15 14:50:25', '0000-00-00 00:00:00', ''),
(65, 6, 1, '2', '179.7.224.223', 'Google Chrome', '2022-03-15 17:01:33', '0000-00-00 00:00:00', ''),
(66, 96, 6, '1', '179.7.224.223', 'Google Chrome', '2022-03-15 17:01:59', '0000-00-00 00:00:00', ''),
(67, 6, 1, '1', '45.191.96.38', 'Google Chrome', '2022-03-16 16:14:17', '0000-00-00 00:00:00', ''),
(68, 6, 1, '1', '179.7.225.192', 'Google Chrome', '2022-03-16 16:26:19', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `histoperaciones`
--

CREATE TABLE `histoperaciones` (
  `Id` int(11) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `Operacion` int(11) NOT NULL COMMENT '0:error | 1:insert| 2:update| 3:delete|',
  `ip` varchar(20) NOT NULL,
  `navegador` varchar(25) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `histoperaciones`
--

INSERT INTO `histoperaciones` (`Id`, `IdUser`, `Operacion`, `ip`, `navegador`, `Date`) VALUES
(7, 6, 2, '179.7.225.19', 'Google Chrome', '2022-03-02 23:03:41'),
(8, 6, 2, '179.7.224.223', 'Google Chrome', '2022-03-08 14:54:06'),
(9, 96, 2, '179.7.224.223', 'Google Chrome', '2022-03-11 15:18:53'),
(10, 6, 2, '179.7.224.223', 'Google Chrome', '2022-03-15 15:18:39'),
(11, 6, 2, '179.7.224.223', 'Google Chrome', '2022-03-15 15:20:07'),
(12, 6, 2, '179.7.224.223', 'Google Chrome', '2022-03-15 15:21:05'),
(13, 6, 2, '179.7.224.223', 'Google Chrome', '2022-03-15 15:38:36'),
(14, 6, 2, '179.7.224.223', 'Google Chrome', '2022-03-15 15:39:03'),
(15, 6, 2, '179.7.224.223', 'Google Chrome', '2022-03-15 15:39:09'),
(16, 6, 1, '45.191.96.38', 'Google Chrome', '2022-03-16 16:19:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblacademic`
--

CREATE TABLE `tblacademic` (
  `Id` int(11) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `Status` int(11) NOT NULL,
  `IdType` int(11) NOT NULL,
  `IdLevel` int(11) NOT NULL,
  `Country` int(11) NOT NULL,
  `StudyCenter` int(11) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `FileName` varchar(300) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModDate` datetime NOT NULL,
  `IdUserMod` int(11) NOT NULL DEFAULT '0',
  `Obs` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblacademic`
--

INSERT INTO `tblacademic` (`Id`, `IdUser`, `Status`, `IdType`, `IdLevel`, `Country`, `StudyCenter`, `Name`, `FileName`, `RegDate`, `ModDate`, `IdUserMod`, `Obs`) VALUES
(15, 6, 1, 3, 3, 1, 99, 'INFORMÁTICA', '4b1.pdf', '2022-01-25 03:13:34', '2022-03-09 10:31:30', 96, ''),
(17, 6, 1, 4, 2, 1, 99, 'CIENCIAS DE LA COMPUTACIÓN', 'T10.pdf', '2022-02-05 01:49:09', '2022-03-09 12:22:40', 96, ''),
(19, 69, 1, 2, 3, 1, 99, 'LICENCADO EN EDUCACION INICIAL', 'prueba1.pdf', '2022-02-17 01:25:06', '0000-00-00 00:00:00', 0, ''),
(20, 6, 1, 1, 3, 1, 99, 'BACHILLER EN CIENCIAS DE LA ESTADÍSTICA E INFORMÁTICA', 'prueba2.pdf', '2022-02-21 15:42:53', '2022-03-09 12:30:36', 96, ''),
(21, 6, 0, 2, 3, 1, 99, 'INGENIERO ESTADÍSTICO E INFORMÁTICO', 'prueba3.pdf', '2022-02-21 15:43:52', '2022-03-09 12:30:29', 96, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblauthors`
--

CREATE TABLE `tblauthors` (
  `Id` int(11) NOT NULL,
  `IdPublication` int(11) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `IdAfiliation` int(11) NOT NULL,
  `IdCountry` int(11) NOT NULL,
  `IdType` int(11) NOT NULL COMMENT '1. principal 2 coauthor',
  `Possition` int(11) NOT NULL,
  `Unap` int(2) NOT NULL COMMENT 'PERTENECE A LA UNAP 1.Si   2.NO',
  `RegDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModDate` datetime NOT NULL,
  `Obs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblauthors`
--

INSERT INTO `tblauthors` (`Id`, `IdPublication`, `IdUser`, `IdAfiliation`, `IdCountry`, `IdType`, `Possition`, `Unap`, `RegDate`, `ModDate`, `Obs`) VALUES
(35, 28, 50, 138, 62, 1, 1, 0, '2022-02-07 10:24:45', '0000-00-00 00:00:00', ''),
(38, 28, 6, 99, 1, 2, 3, 1, '2022-02-07 10:26:41', '0000-00-00 00:00:00', ''),
(39, 28, 55, 138, 62, 2, 2, 0, '2022-02-07 10:34:58', '0000-00-00 00:00:00', ''),
(40, 29, 6, 99, 1, 1, 1, 1, '2022-02-07 16:39:33', '0000-00-00 00:00:00', ''),
(41, 29, 56, 2, 1, 2, 2, 0, '2022-02-07 16:40:46', '0000-00-00 00:00:00', ''),
(42, 30, 6, 99, 1, 1, 1, 1, '2022-02-07 16:45:09', '0000-00-00 00:00:00', ''),
(43, 31, 6, 99, 1, 1, 1, 1, '2022-02-07 16:49:24', '0000-00-00 00:00:00', ''),
(44, 31, 57, 3, 1, 2, 2, 0, '2022-02-07 16:51:45', '0000-00-00 00:00:00', ''),
(50, 33, 6, 99, 1, 1, 1, 1, '2022-02-07 17:09:15', '0000-00-00 00:00:00', ''),
(51, 33, 58, 4, 1, 2, 2, 0, '2022-02-07 17:09:54', '0000-00-00 00:00:00', ''),
(52, 33, 59, 109, 1, 2, 3, 0, '2022-02-07 17:10:18', '0000-00-00 00:00:00', ''),
(53, 34, 6, 99, 1, 1, 1, 1, '2022-02-07 17:13:02', '0000-00-00 00:00:00', ''),
(54, 34, 60, 14, 1, 2, 2, 0, '2022-02-07 17:15:39', '0000-00-00 00:00:00', ''),
(55, 34, 61, 15, 1, 2, 3, 0, '2022-02-07 17:16:02', '0000-00-00 00:00:00', ''),
(56, 35, 6, 99, 1, 1, 1, 1, '2022-02-07 17:19:29', '0000-00-00 00:00:00', ''),
(57, 35, 63, 3, 1, 2, 2, 0, '2022-02-07 17:20:50', '0000-00-00 00:00:00', ''),
(58, 35, 64, 5, 1, 2, 3, 0, '2022-02-07 17:21:10', '0000-00-00 00:00:00', ''),
(59, 36, 6, 99, 1, 1, 1, 1, '2022-02-07 17:23:50', '0000-00-00 00:00:00', ''),
(60, 36, 65, 12, 1, 2, 2, 0, '2022-02-07 17:24:55', '0000-00-00 00:00:00', ''),
(61, 36, 66, 52, 1, 2, 3, 0, '2022-02-07 17:25:15', '0000-00-00 00:00:00', ''),
(63, 37, 6, 99, 1, 1, 1, 1, '2022-02-07 17:29:00', '0000-00-00 00:00:00', ''),
(64, 37, 67, 4, 1, 2, 2, 0, '2022-02-07 17:29:17', '0000-00-00 00:00:00', ''),
(73, 40, 82, 99, 1, 1, 1, 1, '2022-02-17 12:22:58', '0000-00-00 00:00:00', ''),
(74, 40, 83, 2, 1, 2, 2, 0, '2022-02-17 12:24:07', '0000-00-00 00:00:00', ''),
(75, 41, 81, 99, 1, 1, 1, 1, '2022-02-17 12:32:37', '0000-00-00 00:00:00', ''),
(76, 41, 84, 1, 1, 2, 2, 0, '2022-02-17 12:33:27', '0000-00-00 00:00:00', ''),
(77, 42, 80, 99, 1, 1, 1, 1, '2022-02-17 12:37:12', '0000-00-00 00:00:00', ''),
(78, 42, 85, 5, 1, 2, 2, 0, '2022-02-17 12:38:23', '0000-00-00 00:00:00', ''),
(79, 43, 79, 99, 1, 1, 1, 1, '2022-02-17 12:41:29', '0000-00-00 00:00:00', ''),
(80, 43, 86, 4, 1, 2, 2, 0, '2022-02-17 12:42:14', '0000-00-00 00:00:00', ''),
(81, 44, 78, 99, 1, 1, 1, 1, '2022-02-17 12:49:57', '0000-00-00 00:00:00', ''),
(82, 44, 87, 2, 1, 2, 2, 0, '2022-02-17 12:50:45', '0000-00-00 00:00:00', ''),
(83, 45, 77, 99, 1, 1, 1, 1, '2022-02-17 12:53:50', '0000-00-00 00:00:00', ''),
(84, 45, 88, 6, 1, 2, 2, 0, '2022-02-17 12:54:35', '0000-00-00 00:00:00', ''),
(85, 46, 76, 99, 1, 1, 1, 1, '2022-02-17 12:57:57', '0000-00-00 00:00:00', ''),
(86, 46, 83, 4, 1, 2, 2, 0, '2022-02-17 12:58:33', '0000-00-00 00:00:00', ''),
(87, 47, 75, 99, 1, 1, 1, 1, '2022-02-17 13:02:33', '0000-00-00 00:00:00', ''),
(88, 47, 90, 25, 1, 2, 2, 0, '2022-02-17 13:03:30', '0000-00-00 00:00:00', ''),
(89, 48, 74, 99, 1, 1, 1, 1, '2022-02-17 13:07:03', '0000-00-00 00:00:00', ''),
(90, 48, 91, 3, 1, 2, 2, 0, '2022-02-17 13:08:10', '0000-00-00 00:00:00', ''),
(91, 49, 73, 99, 1, 1, 1, 1, '2022-02-17 13:12:39', '0000-00-00 00:00:00', ''),
(92, 49, 70, 6, 1, 2, 2, 0, '2022-02-17 13:13:31', '0000-00-00 00:00:00', ''),
(98, 50, 71, 1, 1, 1, 1, 0, '2022-02-17 18:18:56', '0000-00-00 00:00:00', ''),
(103, 50, 69, 99, 1, 2, 2, 1, '2022-02-17 19:16:05', '0000-00-00 00:00:00', ''),
(104, 50, 41, 133, 1, 2, 3, 1, '2022-02-18 11:44:33', '0000-00-00 00:00:00', ''),
(105, 52, 69, 99, 1, 1, 1, 1, '2022-02-18 11:47:33', '0000-00-00 00:00:00', ''),
(106, 52, 41, 135, 1, 2, 2, 1, '2022-02-18 11:47:52', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblexperience`
--

CREATE TABLE `tblexperience` (
  `Id` int(11) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `Institution` varchar(500) NOT NULL,
  `Position` varchar(180) NOT NULL,
  `DateInit` date NOT NULL,
  `DateEnd` date DEFAULT NULL,
  `actualidad` tinyint(1) NOT NULL DEFAULT '0',
  `FileName` varchar(250) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModDate` datetime NOT NULL,
  `IdUserMod` int(11) NOT NULL DEFAULT '0',
  `Obs` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblexperience`
--

INSERT INTO `tblexperience` (`Id`, `IdUser`, `Institution`, `Position`, `DateInit`, `DateEnd`, `actualidad`, `FileName`, `RegDate`, `ModDate`, `IdUserMod`, `Obs`) VALUES
(2, 6, 'INFOUNA  PUNO', 'INSTRUCTOR - DOCNETE', '2022-01-18', '2022-01-18', 0, 'PROSPECTO_JAE_2022_V4.pdf', '2022-01-25 15:11:31', '2022-02-25 07:24:50', 6, ''),
(4, 69, 'CENTRO DE COMPUTO', 'INSTRUCTOR - DOCENTE', '2014-01-16', '2014-01-16', 0, 'prueba.pdf', '2022-02-17 01:52:58', '2022-02-16 20:59:54', 69, ''),
(5, 6, 'EMSA PUNO', 'INFO', '2022-02-01', '0000-00-00', 1, 'prueba2.pdf', '2022-02-19 04:43:53', '2022-02-18 23:57:45', 6, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblinbox`
--

CREATE TABLE `tblinbox` (
  `Id` int(11) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `State` tinyint(2) NOT NULL DEFAULT '0',
  `asunto` varchar(300) NOT NULL,
  `mensaje` text NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `DateReg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DateRead` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblinbox`
--

INSERT INTO `tblinbox` (`Id`, `IdUser`, `State`, `asunto`, `mensaje`, `nombre`, `correo`, `DateReg`, `DateRead`) VALUES
(1, 6, 1, 'Solicito reunion', 'sdf', 'Curso de PHPhh', 'ok@admin.com', '2022-02-18 01:29:04', '2022-02-17 20:29:04'),
(2, 6, 1, 'Invitación', 'sdf', 'Curso de PHPhh', 'ok@admin.com', '2022-02-16 16:47:13', '2022-02-16 11:47:13'),
(3, 6, 0, 'Certamen académico', 'dfg', 'GERARDINO', 'ok@admin.com', '2022-02-15 14:16:16', '2022-02-14 22:28:08'),
(4, 6, 0, 'Pollada', 'sdf', 'GERARDINO ', 'marco_pomari@hotmail.com', '2022-02-15 14:16:21', '2022-02-15 09:04:10'),
(5, 6, 2, 'Campeonato', 'como', 'estas', 'marco_pomari@hotmail.com', '2022-02-26 18:19:33', '2022-02-26 13:19:33'),
(6, 6, 0, 'h', '45345', 'SECRE SECRE', 'secre@secre.com', '2022-03-02 22:49:16', '0000-00-00 00:00:00'),
(7, 6, 1, 'hola', 'eryer', 'SECRE SECRE', 'secre@secre.com', '2022-03-02 23:03:41', '2022-03-02 18:03:41'),
(8, 6, 1, 'REUNION', 'PRUEBA', 'GERARDINO ', 'marco_pomari@hotmail.com', '2022-03-08 14:54:06', '2022-03-08 09:54:06'),
(9, 6, 0, 'falta datos', 'debe ingresar todo los metadatos de la revista', 'SECRE SECRE', 'secre@secre.com', '2022-03-10 17:57:29', '0000-00-00 00:00:00'),
(10, 6, 0, 'otra prueba', 'desde la busqueda por apellidos para la investigacion ', 'SECRE SECRE', 'secre@secre.com', '2022-03-11 15:11:01', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblinvestigacion`
--

CREATE TABLE `tblinvestigacion` (
  `Id_Investigacion` int(11) NOT NULL,
  `INombre` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `IWeb` varchar(255) NOT NULL,
  `IPostal` varchar(75) NOT NULL,
  `IFoto` varchar(75) NOT NULL,
  `IDescripcion` text NOT NULL,
  `ITipo` int(11) NOT NULL,
  `ICategoria` int(11) NOT NULL,
  `IConceptos` int(11) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblinvestigacion`
--

INSERT INTO `tblinvestigacion` (`Id_Investigacion`, `INombre`, `slug`, `IWeb`, `IPostal`, `IFoto`, `IDescripcion`, `ITipo`, `ICategoria`, `IConceptos`, `IdUser`, `Status`) VALUES
(1, 'Acuicultura y nutrición de organismos acuáticos', 'Acuicultura-y-nutricin-de-organismos-acuticos', 'vriunap.pe', 'Perú', 'nutobes21.jpg', 'La creación del Grupo de Investigación Acuicultura y Nutrición de Organismos Acuáticos pretende generar investigación aplicada orientada a las necesidades del sector acuícola nacional y apoyar la formación de estudiantes de pregrado y posgrado en competencias básicas de producción animal y acuicultura. De igual manera hacer énfasis en estudios sobre el manejo de sistemas de producción controlado de peces y crustáceos de ambiente continental y marino, y sistemas de nutrición y alimentación de los mismos, para entender la biología, fisiología metabólica, la reproducción y el manejo alimentario de diversas especies. El grupo de investigación cuenta con un grupo docente especializado con el sector académico y productivo nacional para desarrollar sus actividades de investigación, difusión y acompañamiento al productor. Consta de dos laboratorios (Laboratorio de Producción de Alimento vivo y el Laboratorio de Nutrición de Organismos Acuáticos) y un módulo básico( el módulo de Investigaciones en Acuicultura). El Laboratorio de Producción de alimento vivo, equipado con materiales especializados tiene un área para cultivos de: microalgas, de cladóceros, de copépodos y de Artemia , actividades que tienen uso en estudios de enriquecimiento de alimento vivo y técnicas de producción masiva de alimento vivo. Instituciones Públicas con las que se relaciona.- Dirección Regional de Producción Junín (DIREPRO,JUNÍN),Centro Piscícola el Ingenio, Huancayo. Premios Académicos.-Ganadores del Premio al Mérito Científico 2015. Área A. Ciencias Básicas. Dr. Mauro Gilber Mariano Astocondor. Reconocimiento a los Investigadores con Publicaciones Científicas 2014. Área A. Ciencias Básicas. Dr. Mauro Gilber Mariano Astocondor. Viajes Internacionales.- Colombia, Leticia (Amazonas).Mayo 20 al 24 de 2002. PARTICIPACIÓN EN CONGRESO: I Reunión Internacional de Limnología del Alto Amazonas, como Ponente Internacional.', 9, 2, 15, 6, 0),
(2, 'Unidad de Investigación en Medicina Humana', 'Unidad-de-Investigacin-en-Medicina-Humana', 'fmh.unap.edu.pe', '21001 - Puno - Perú', 'Banner_UNAAT_congreso.jpg', 'Facultad de Medicina Humana', 5, 3, 1, 6, 0),
(3, 'asd', 'asd', 'das', 'asd', '2.png', 'das', 1, 3, 3, 95, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbllanguajes`
--

CREATE TABLE `tbllanguajes` (
  `Id` int(11) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `Institution` int(11) NOT NULL,
  `IdLanguaje` int(11) NOT NULL,
  `IdLevelWriting` int(11) NOT NULL COMMENT '1: Basico 2: Intermedio 3: Avanzado',
  `IdLevelReading` int(11) NOT NULL COMMENT '1: Basico 2: Intermedio 3: Avanzado',
  `IdLevelListening` int(11) NOT NULL COMMENT '1: Basico 2: Intermedio 3: Avanzado',
  `RegDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModDate` datetime NOT NULL,
  `FileName` varchar(50) NOT NULL,
  `IdUserMod` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbllanguajes`
--

INSERT INTO `tbllanguajes` (`Id`, `IdUser`, `Institution`, `IdLanguaje`, `IdLevelWriting`, `IdLevelReading`, `IdLevelListening`, `RegDate`, `ModDate`, `FileName`, `IdUserMod`) VALUES
(1, 6, 2, 1, 1, 2, 3, '2022-01-25 11:46:25', '2022-02-21 16:40:29', '4a.pdf', 6),
(4, 69, 99, 1, 1, 1, 1, '2022-02-16 21:06:03', '2022-02-16 21:06:15', 'prueba.pdf', 69),
(5, 6, 99, 3, 2, 3, 1, '2022-02-21 16:30:58', '2022-02-21 16:40:39', 'prueba1.pdf', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblpublication`
--

CREATE TABLE `tblpublication` (
  `Id` int(11) NOT NULL,
  `IdUser` int(11) NOT NULL COMMENT 'Es quien registra en la DB',
  `State` int(11) NOT NULL DEFAULT '0' COMMENT '0 desabilitado 1 habilitado 2 observado',
  `Steps` tinyint(2) NOT NULL DEFAULT '0' COMMENT '1 Paso1-title| 2 paso2-autor| 3 data article y actualiza a 3 el tbluser',
  `Title` varchar(300) NOT NULL,
  `Type` int(11) NOT NULL,
  `Access` varchar(300) NOT NULL,
  `Handle` varchar(300) NOT NULL,
  `DOI` varchar(300) NOT NULL,
  `ISBN` varchar(300) NOT NULL,
  `ISSN` varchar(300) NOT NULL,
  `URL` varchar(300) NOT NULL,
  `PublishedIn` varchar(300) NOT NULL,
  `IdAuthor` int(11) NOT NULL COMMENT 'Autor principal de l apublicacion',
  `Publishers` varchar(300) NOT NULL COMMENT 'Nombre de la revista',
  `PublicationDate` date NOT NULL,
  `PublicationDay` tinyint(2) NOT NULL,
  `PublicationMonth` tinyint(2) NOT NULL,
  `PublicationYear` int(4) NOT NULL,
  `Number` varchar(300) NOT NULL,
  `Volume` varchar(300) NOT NULL,
  `Issue` varchar(300) NOT NULL,
  `Edition` varchar(300) NOT NULL,
  `StartPage` varchar(300) NOT NULL,
  `EndPage` varchar(300) NOT NULL,
  `IdLanguage` int(11) NOT NULL,
  `IdLicense` int(11) NOT NULL COMMENT '1: Open Access 2 : Suscription Access',
  `IdCountry` int(11) NOT NULL,
  `Abstract` text NOT NULL,
  `Version` varchar(300) NOT NULL,
  `Keyword` varchar(300) NOT NULL,
  `Subject` varchar(300) NOT NULL,
  `IdArea` int(11) NOT NULL,
  `IdSubArea` int(11) NOT NULL,
  `IdDiciplina` int(11) NOT NULL,
  `IdLineaUNAP` int(11) NOT NULL,
  `IdSubLinea` int(11) NOT NULL,
  `IdONU` int(11) NOT NULL,
  `Cuartil` varchar(300) NOT NULL,
  `FileName` varchar(300) NOT NULL,
  `DateReg` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModRef` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IdUserMod` int(11) NOT NULL DEFAULT '0',
  `Obs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblpublication`
--

INSERT INTO `tblpublication` (`Id`, `IdUser`, `State`, `Steps`, `Title`, `Type`, `Access`, `Handle`, `DOI`, `ISBN`, `ISSN`, `URL`, `PublishedIn`, `IdAuthor`, `Publishers`, `PublicationDate`, `PublicationDay`, `PublicationMonth`, `PublicationYear`, `Number`, `Volume`, `Issue`, `Edition`, `StartPage`, `EndPage`, `IdLanguage`, `IdLicense`, `IdCountry`, `Abstract`, `Version`, `Keyword`, `Subject`, `IdArea`, `IdSubArea`, `IdDiciplina`, `IdLineaUNAP`, `IdSubLinea`, `IdONU`, `Cuartil`, `FileName`, `DateReg`, `ModRef`, `IdUserMod`, `Obs`) VALUES
(28, 6, 1, 3, 'Automatic monitoring management for 5G mobile networks', 1, '', '', '', '', '', '', '1', 0, 'Published by Elsevier B.V', '0000-00-00', 13, 12, 2017, '110', '', '', '', '328', '335', 1, 1, 1, '5G mobile networks are pushing new dynamic and flexible scenarios that require the automation of the management processes performed by network administrators. To this end, Self-Organizing Networks (SON) arose with the goal of moving from traditional manual management processes towards an automatic and dynamic perspective. The orchestration of the monitoring services is\r\nan essential task to conduct self-configuration, self-healing, and self-optimization processes required by SONs. In this context, we propose a solution that efficiently orchestrates the monitoring services by managing the network resources automatically. In particular, we propose a 5G-oriented architecture that integrates the Software Defined Networking (SDN) and Network Functions Virtualization (NFV) technologies to monitor and orchestrate the whole life-cycle of monitoring services considering information of the network control plane.', '', 'Network monitoring; Software Defined Networking; Virtualization; Orchestration; 5G mobile networks', '', 6, 42, 0, 23, 101, 12, '', '1-s2_0-S1877050917312802-main1.pdf', '2022-02-07 10:17:08', '2022-03-11 15:10:25', 96, ''),
(29, 6, 1, 3, 'Trayectorias de permanencia y abandono de estudios universitarios: una aproximación desde el currículum y otras variables predictoras', 1, '', '', '', '', '0123-1294', '', '1', 6, 'Educ.Educ.', '2008-01-01', 0, 0, 2008, '2', '21', '', '', '239', '256', 1, 1, 0, 'Este artículo presenta los resultados de una investigación cuyo propósito fue determinar\r\nlos elementos del currículum universitario que favorecen u obstaculizan las\r\ntrayectorias de permanencia y abandono estudiantil universitario durante el primer\r\naño y, además, identificar las principales diferencias y similitudes entre ambos grupos.\r\nEl estudio se desarrolló en dos fases cuantitativas y consideró estudiantes de carreras\r\nde Educación e Ingeniería que cursaron por lo menos un semestre académico\r\ny luego decidieron permanecer o abandonar una universidad chilena. La primera\r\nfase incluyó 1454 estudiantes por medio de un “censo poblacional” y la segunda consideró\r\nuna muestra de 174 jóvenes que formaron parte de la primera. Los hallazgos\r\nidentifican ciertos elementos del currículum universitario como factores asociados a\r\nla decisión de permanecer, aun cuando algunos de ellos pudieran vincularse al abandono\r\nestudiantil. Lo anterior releva la importancia de las decisiones universitarias en\r\nel ámbito del currículum, más aún durante el primer año de estudios. Finalmente, un\r\nmodelo de regresión logística determinó que el desempeño académico de los estudiantes\r\ny la valoración de la universidad predicen mayoritariamente la trayectoria\r\nde permanencia.', '1', 'Alumno desertor, estudiante universitario, programa de estudios universitarios, retención (Fuente: tesauros de la UNESCO).', '1', 4, 18, 0, 16, 200, 7, '1', 'T1.pdf', '2022-02-07 16:38:57', '2022-02-07 21:38:57', 0, ''),
(30, 6, 0, 3, 'Aproximaciones a la deserción universitaria en Chile', 1, '', '', 'http://dx.doi.org/10.1590/S1678-4634201708165743', '', '', '', '1', 6, 'Educ. Pesqui.', '2018-01-01', 0, 0, 2018, '', '44', '', '', '50', '60', 1, 1, 1, 'La educación universitaria vespertina, en Chile, ha presentado en los últimos años, un acentuado crecimiento en su matrícula. Sin embargo, la interrupción de los estudios de quienes estudian en este horario de 19 a 23 horas (vespertino) ha sobrepasado la cifra promedio de deserción del sistema universitario chileno. Estos estudiantes se caracterizan por combinar responsabilidades familiares, laborales y académicas, presentando mayores niveles de deserción que los estudiantes que ingresan a la modalidad universitaria diurna, debido a las particularidades y situaciones que les rodean. En este contexto, esta investigación se propuso indagar sobre los factores que intervienen en las decisiones de abandono de los estudiantes universitarios con características no tradicionales, que asisten a programas de estudios vespertinos. Metodológicamente se optó por un diseño de investigación cualitativo de tipo exploratorio debido a la escasa investigación en la temática en el país. Para ello, se realizaron entrevistas semiestructuradas a diez estudiantes desertores vespertinos. Una vez sistematizada la información, se obtuvo cuatro dimensiones emergentes de análisis, que sintetizaron las lógicas y significados que intervienen en el fenómeno que afecta a este grupo específico. Los hallazgos sobre la decisión de abandono de los estudiantes vespertinos de características no tradicionales dan cuenta de los siguientes factores, según relevancia, condiciones y características personales, capital y desempeño académico, imprevistos y circunstancias adversas y experiencias con la oferta institucional.', '', 'Abandono universitario vespertino — Factores de deserción — Estudiantes vespertinos.', '', 2, 6, 0, 21, 211, 11, '', 'T2.pdf', '2022-02-07 16:44:41', '2022-03-11 15:10:16', 96, ''),
(31, 6, 1, 0, 'Los objetivos de la investigación en educación y pedagogía en Colombia', 1, '', '', 'dx.doi.org/10.18634/sophiaj.13v.1i.331 Abstract', '', '0806 ISSN', '', '1', 6, 'Sophia', '2008-01-01', 0, 0, 2008, '1', '31', '', '', '75', '84', 1, 1, 1, 'presentan las tendencias investigativas (regiones) que emergen en Colombia desde los propósitos u objetivos de las tesis\r\nrealizadas en las maestrías y doctorados en Educación y pedagogía en la última década (2000-2010). El estudio se realizó\r\ndesde el enfoque de complementariedad propuesto por Murcia y Jaramillo, articulando las lógicas de Michael Serres, en\r\ntérminos de mapear los fenómenos sociales, y las miradas interpretativas hermenéuticas para acceder a esos relieves en una\r\nperspectiva paisajista, que permitió desentrañar las hondonadas, salientes y grandes llanuras visibles y poco visibles de la\r\ninvestigación en educación y pedagogía en gran parte de la geografía investigativa nacional, en el caso de este articulo,\r\nreferido a sus pretensiones. La región comprensiva se erige como una de las salientes más prominentes de este paisaje,\r\nlogrando desplazar, a punto de opacarlas casi en tu totalidad, a regiones otrora de gran relevancia como aquellas cuyos\r\npropósitos eran explicativos, diagnósticos, correlacionales o comparativos.\r\nPalabras', '', 'investigación cualitativa, método de investigación, objetivos de la investigación Napoleón', '', 4, 18, 0, 15, 193, 10, '', 'T31.pdf', '2022-02-07 16:49:02', '2022-02-07 21:49:02', 0, ''),
(33, 6, 1, 3, 'UNIVERSIDAD DE CIENCIAS APLICADAS Y AMBIENTALES U.D.C.A, DURANTE EL PERIODO: 2009-2010-I 2011 STUDENT DROPOUT FACTORS OF THE SCHOOL OF NURSING, UNIVERSITY OF APPLIED AND ENVIRONMENTAL', 1, '', '', 'http://dx.doi.org/10.1145/1067268.1067287', '', '12312-2112', '', '1', 6, 'Julio-Diciembre, 2013 RESUMEN El objetivo de la investigación', '2013-01-01', 0, 0, 2013, '2', '16', '', '', '553', '562', 1, 1, 1, 'y otros, asociados a\r\nla deserción de los estudiantes en la Facultad de Enfermería,\r\nde la Universidad de Ciencias Aplicadas y Ambientales\r\nU.D.C.A, en cada una de las de las cohortes, de los años\r\n2009, 2010 y primer semestre de 2011. Bajo un estudio descriptivo\r\ncon abordaje cuantitativo retrospectivo, se obtuvieron\r\nlos datos del sistema de la universidad, a través Departamento\r\nde Planeación, de Sistema de Admisiones y Registro\r\nAcadémico y de la Facultad de Enfermería. En las cinco\r\ncohortes, se identificaron 144 desertores, de los cuales, 59\r\ncorresponden a la muestra. Para la recolección de la información,\r\nse utilizó un instrumento diseñado por el Programa\r\nde acompañamiento y adaptado por los investigadores, con\r\n33 ítems, que incluían variables de tipo individual, personal,\r\nsocio-económicas y académicas; se aplicó previo consentimiento\r\ninformado. Los resultados mostraron los primeros\r\nsemestres como el momento en el que se presenta el mayor\r\nnúmero de desertores y en las edades de 16 a 20 años,\r\ncon un 47%. Las principales causas asociadas a la deserción\r\nfueron los factores económicos, con un 28,8%, seguido de\r\nlos factores académicos, con un 22%. La unión de factores\r\neconómicos y académicos es la tercera causa de deserción,\r\ncon un 15,3%, mientras que la orientación vocacional, se\r\nencuentra en cuarto lugar, con un 11,9%. En menor porcentaje,\r\nse detectaron otros factores, como el no adaptarse al\r\nambiente universitario, condiciones de salud, embarazo y el\r\ncambio de lugar de residencia.\r\nPalabras clave: Abandono, factores de riesgo, educación superior\r\nuniversitarios.\r\nSUMMARY\r\nThe objective of the research was to identify the economic,\r\nacademic, cultural', '', 'abcd', '', 2, 6, 0, 14, 36, 0, '', 'T6.pdf', '2022-02-07 17:09:02', '2022-02-07 22:09:02', 0, ''),
(34, 6, 1, 3, 'Primer ciclo formativo de Medicina en el Policlínico Julio Antonio Mella de Camagüey', 1, '', '', 'http://dx.doi.org/10.1145/1067268.1067223', '', '2131-2121', '', '1', 6, 'Humanidades Médicas', '2012-01-01', 0, 0, 2012, '1', '1', '', '', '46', '57', 1, 1, 1, 'En el curso 2004-2005 comenzó un nuevo modelo pedagógico para la carrera de\r\nMedicina, que convirtió al policlínico en su principal escenario. Se realizó un estudio descriptivo longitudinal para valorar los resultados del primer ciclo formativo de este\r\nmodelo en el Policlínico Universitario Julio Antonio Mella de Camagüey. Todos los\r\ngraduados en julio de 2010 conformaron el universo. Se analizaron los expedientes\r\ndocentes y se entrevistaron a profesores, estudiantes y tutores. Pese a las dificultades\r\npropias de la introducción del modelo, ninguno de los inicialmente matriculados\r\nabandonó los estudios. El grupo se destacó por participar en exámenes de premio y\r\njornadas científicas estudiantiles. Tanto estudiantes como profesores expresaron\r\nopiniones favorables. Por sus resultados, el primer ciclo formativo se calificó de\r\nsatisfactorio.', '', 'Modelos educacionales; educación médica; estudiantes de medicina; Camagüey; Cuba.', '', 2, 8, 0, 14, 37, 11, '', 'T7.pdf', '2022-02-07 17:12:46', '2022-02-07 22:12:46', 0, ''),
(35, 6, 1, 3, 'Factores determinantes de la deserción escolar en el Policlínico Docente “Frank País García”', 1, '', '', 'http://dx.doi.org/10.1145/1067268.1067283', '', '1212-2121', '', '1', 6, 'MEDISAN', '2014-01-01', 0, 0, 2014, '4', '16', '', '', '', '526', 1, 1, 1, 'Se realizó un estudio de tipo investigación en el campo de la educación médica de\r\npregrado a 33 estudiantes del primer año de medicina en el primer semestre del curso\r\n2010-2011 en el Policlínico Docente “Frank País García” de Santiago de Cuba, con vistas\r\na identificar los factores determinantes de la deserción escolar de este período. Para\r\nobtener la información, se aplicó un cuestionario a los educandos, avalado por criterios\r\nde expertos, y se llevaron a cabo métodos teóricos y empíricos (descritos en el trabajo).\r\nSe obtuvo que la deserción escolar fuera elevada y entre sus principales causas\r\nestuvieron la insuficiencia docente, el abandono y la falta de orientación vocacional.', '', 'estudiante universitario, educación médica, deserción escolar, insuficiencia docente, orientación vocacional.', '', 2, 8, 0, 18, 180, 11, '', 'T8.pdf', '2022-02-07 17:19:00', '2022-03-11 15:18:53', 96, ''),
(36, 6, 1, 3, 'Más que abandono de estudios, trayectorias de reubicación universitaria.', 1, '', '', 'http://dx.doi.org/10.1145/1067268.10672232', '', '1212-121123', '', '1', 6, 'Revista Lusófona de Educação', '2012-01-01', 0, 0, 2012, '1', '21', '', '', '139', '162', 1, 1, 1, 'La implementación del Espacio Europeo de Educación Superior está coincidiendo\r\ncon la grave crisis económica actual, con consecuencias importantes para las\r\nuniversidades. El abandono de estudios es uno de los fenómenos protagonistas\r\nen los debates sobre eficiencia del sistema universitario, consecución de la\r\nexcelencia y las políticas educativas de rendición de cuentas. En este artículo\r\npresentamos resultados de dos investigaciones que exploran este fenómeno a\r\ntravés del estudio de caso de la Universidad de Valencia (España) y de la Universidad\r\nde Lisboa (Portugal). A través de los resultados sobre los motivos de\r\nabandono de estudios declarados por los estudiantes, parece existir una escisión\r\nentre el abandono de estudios universitarios y la dificultad académica. En\r\nuna segunda parte del artículo, se plantea un cuestionamiento del concepto\r\nde abandono de estudios en su aplicación al ámbito universitario y se propone\r\nuna nueva conceptualización más acorde con la realidad estudiada.', '', 'universidad; abandono de estudios; estudiantes universitarios; trayectorias formativas.', '', 4, 23, 0, 12, 73, 4, '', 'T9.pdf', '2022-02-07 17:23:34', '2022-02-07 22:23:34', 0, ''),
(37, 6, 1, 3, 'El primer año universitario Un tramo crítico para el éxito académico1', 1, '', '', 'http://dx.doi.org/10.1145/1067268.10673232', '', '2344-5435', '', '1', 6, 'Un tramo crítico para el éxito académico', '2011-01-01', 0, 0, 2011, '1', 'XXXIII', '', '', '232', '256', 1, 1, 1, 'Se analiza la importancia del primer año universitario como un tramo crítico en la definición de trayectorias escolares exitosas. Se revisa la literatura relevante sobre abandono, retención y primer año universitario y se advierte que es un campo poco trabajado en México. La investigación muestra que el primer año constituye un punto nodal en la decisión de abandonar o proseguir los estudios y, en ello, el involucramiento o compromiso del joven con sus estudios es determinante. Los jóvenes enfrentan dificultades que responden a factores externos a la escuela, pero también a variables propias del ambiente institucional que pueden modificarse para favorecer las trayectorias estudiantiles. Las instituciones deben conocer al estudiante de primer año para instrumentar programas de apoyo y estrategias que transformen la experiencia áulica estimulando su compromiso y persistencia. Así, la mejor estrategia para lograr la retención es brindar una atención integral y una educación de buena calidad.', '', 'Educación superior Estudiantes de primer ingreso Trayectoria escolar Deserción Política educativa', '', 4, 18, 0, 14, 36, 5, '', 'T101.pdf', '2022-02-07 17:27:31', '2022-02-07 22:27:31', 0, ''),
(40, 82, 1, 3, 'Aplicación de un modelo de duración en programas  de prevención de deserción universitaria', 1, '', '', '10.1145/1067268.1067256', '', '2312-2311', '', '1', 82, 'Revista Electrónica de Investigación Educativa', '0000-00-00', 1, 1, 2013, '3', '15', '', '', '38', '52', 1, 1, 1, 'Las prácticas institucionales vinculadas con la prevención de la deserción de una carrera universitaria \r\nrequieren cada vez más de instrumentos validados que permitan anticipar tal comportamiento. En este \r\nsentido han demostrado utilidad decisiva distintos modelos estadísticos generados a partir de \r\ninformación referida a los propios estudiantes, sus hogares y su desempeño académico, entre otros \r\ndeterminantes. Este estudio pretende mostrar la importancia de una serie de determinantes exploradas \r\nen otros estudios: el objetivo principal es aplicar un modelo predictivo del riesgo de deserción de \r\nestudiantes universitarios a fin de generar resultados de manera temprana y progresivamente más \r\neficaces. El trabajo exhibe la utilidad de los modelos de duración en una muestra de estudiantes \r\npresenciales, y la capacidad anticipatoria de los comportamientos de permanencia/deserción en el \r\ntiempo, a través de estimaciones de riesgo con un modelo de Cox en cuatro momentos de los primeros \r\nmeses de universidad.', '', 'Deserción universitaria, Modelos de duración, Predicción de permanencia.', '', 6, 42, 215, 10, 55, 7, '', 'T10-Aplicación_de_un_modelo_de_duración_en_programas_de_prevención_de_deserción_universitaria.pdf', '2022-02-17 12:22:36', '2022-02-17 17:22:36', 0, ''),
(41, 81, 1, 3, 'Estimación por Intervalos de Probabilidad a  Posteriori para la Proporción de Estudiantes  Universitarios Desertores', 1, '', '', '10.1145/1067268.1067287', '', '0123-7799', '', '1', 81, 'Rev. Tecno Lógicas', '0000-00-00', 1, 1, 2011, '', '', '', '', '75', '87', 1, 1, 1, 'En este artículo se presenta la estimación por intervalos de \r\nprobabilidad a posteriori de la proporción de estudiantes que desertan del Instituto Tecnológico Metropolitano (ITM) según algunos factores influyentes. Nuestro interés es determinar la proporción de estudiantes que desertan de dicha institución según los factores académico, laboral y personal. Se usó metodología bayesiana, \r\nimplementando procesos de elicitación y método Delphi. Dentro de \r\nlos resultados, se evidenció que, con una probabilidad del 95% se \r\nafirma que el factor laboral tiene un porcentaje a posteriori de incidencia en la deserción del ITM entre el 30,4% y 44,6%. Además, \r\nse notó que el factor laboral y el académico son los más influyentes \r\nen la deserción de la institución.', '', 'Intervalos de probabilidad, estimación, distribución, Bayesiana.', '', 2, 8, 53, 11, 130, 3, '', 'T11-Estimación_por_Intervalos_de_Probabilidad_a_Posteriori_para_la_Proporción_de_Estudiantes_Universitarios_Desertores.pdf', '2022-02-17 12:32:09', '2022-02-17 17:32:09', 0, ''),
(42, 80, 1, 3, 'Depresión y factores socio demográficos  asociados en estudiantes universitarios  de ciencias de la salud de una universidad  pública (Colombia)', 1, '', '', '10.1145/1067268.1067223', '', '0121-231', '', '1', 80, 'Psicología desde el Caribe. Universidad del Norte', '0000-00-00', 1, 1, 2011, '1', '11', '', '', '40', '60', 1, 1, 1, 'Se trata de una investigación descriptiva, con diseño transversal, \r\nrealizada con el objetivo identificar los niveles de depresión y factores \r\nsociodemográficos asociados, en 190 estudiantes de Psicología,', '', 'depresión, edad, sexo, estrato socioeconómico,  programas académicos, síntomas depresivos, inventario de depresión  de Beck.', '', 2, 10, 73, 2, 4, 15, '', 'T12-Depresión_y_factores_socio_demográficos_asociados_en_estudiantes_universitarios_de_ciencias_de_la_salud_de_una_universidad_pública_(Colombia).pdf', '2022-02-17 12:36:51', '2022-02-17 17:36:51', 0, ''),
(43, 79, 1, 3, 'LA PREDICCIÓN DE RENDIMIENTO ACADÉMICO Y DESERCIÓN EN ESTUDIANTES UNIVERSITARIOS', 1, '', '', '10.1145/1067268.10672765', '', ' 2223-7666 ', '', '1', 79, '', '0000-00-00', 1, 1, 2013, '1', '19', '', '', '101', '112', 1, 1, 1, 'El propósito de este estudio es analizar si las aptitudes educativas pueden predecir el rendimiento académico y la\r\ndeserción. Para medir las aptitudes educativas se aplicó el Test de Aptitudes Diferenciales (Differential Aptitude Test –\r\nDAT) a una muestra no probabilística de 1530 estudiantes de primer año de grado de una universidad privada de la\r\nArgentina. Para el análisis se utilizaron modelos de regresión múltiple y logística. Los resultados muestran que el DAT\r\npuede predecir el rendimiento académico, mientras que la relación entre el DAT y la deserción es de moderada a baja. Este\r\nestudio es un primer paso para predecir el éxito académico de los estudiantes, con el objetivo de ahorrar recursos y evitar la\r\nfrustración.', '', 'Aptitudes educativas, deserción, educación superior, rendimiento académico.', '', 4, 18, 0, 24, 111, 12, '', 'T13-LA_PREDICCIÓN_DE_RENDIMIENTO_ACADÉMICO_Y_DESERCIÓN_EN_ESTUDIANTES_UNIVERSITARIOS.pdf', '2022-02-17 12:41:12', '2022-02-17 17:41:12', 0, ''),
(44, 78, 1, 3, 'CREENCIAS IRRACIONALES, RENDIMIENTO Y DESERCIÓN ACADÉMICA EN INGRESANTES UNIVERSITARIOS', 1, '', '', '10.1145/1067268.1067287', '', '1729-4827', '', '1', 78, '', '0000-00-00', 1, 1, 2010, '2', '16', '', '', '183', '192', 1, 1, 1, 'El ingreso a una carrera universitaria constituye un proceso de transición en el que pueden desarrollarse creencias\r\nirracionales que obstaculicen el desempeño y la permanencia en los estudios. En efecto, las creencias irracionales denotan\r\nla existencia de pensamientos rígidos, ilógicos y dogmáticos que pueden afectar el funcionamiento psicosocial de los\r\ningresantes. Tomando esto en consideración, se desarrolló un estudio no experimental tendiente a examinar la relación entre\r\ncreencias irracionales, rendimiento y deserción universitaria en una muestra de ingresantes universitarios (n=31). Aunque\r\nno se obtuvo una correlación significativa con el rendimiento académico (rs = -.17; p>.5), se observó que los estudiantes\r\nque abandonaban la universidad presentaban mayores creencias irracionales (U=28.00; Z=2.24; p<.05). Los resultados\r\nobtenidos fundamentan la importancia de llevar a cabo intervenciones preventivas con el fin de entrenar a los ingresantes\r\nen el control y gestión de creencias, favoreciendo así su adaptación académica y persistencia en los estudios.', '', 'Creencias irracionales; deserción; ingresantes universitarios; rendimiento.', '', 4, 18, 0, 3, 47, 11, '', 'T14-Creencias_irracionales,_rendimiento_y_deserción_académica_en_ingresantes_universitarios.pdf', '2022-02-17 12:49:42', '2022-02-17 17:49:42', 0, ''),
(45, 77, 1, 3, 'Factores presentes en la deserción universitaria en la Facultad de Psicología de la Universidad De San Buenaventura, sede Bogotá en el periodo comprendido entre 1998-2009', 1, '', '', '10.1145/1067268.1067254', '', '1231-212', '', '1', 77, 'avances de la disciplina.', '0000-00-00', 1, 1, 2011, '1', '5', '', '', '121', '133', 1, 1, 1, 'El objetivo del presente estudio fue describir los factores socio demográficos y las categorías del modelo psicológico de Ethington, presentes en \r\nla deserción universitaria, evaluados por medio de una encuesta telefónica diseñada con base en estas categorías y validada por jueces. Los participantes tenían entre 16 y 32 años, solteros, de estratos 3 y 4. Los resultados descriptivos permiten concluir que existen diversas causas para que \r\nse presente la deserción en la Facultad de Psicología de la Universidad San Buenaventura, sede Bogotá. Dificultades tales como incompatibilidad \r\ndel horario de estudio con el horario de trabajo, escasa información respecto al programa elegido al ingresar a la Universidad y dificultades de \r\nsalud. Es importante destacar que la categoría que presentó el porcentaje más alto fue la de apoyo económico familiar con un 95%.\r\nPalabras clave: Deserción universitaria, factores socio demográficos, modelo de Ethington.', '', 'The purpose of this study was to describe the categories as well as the socio-demographic aspects of Ethington’s psychological model, present  in the university dropout. In order to do that, those aspects were assessed using a telephone survey validated by judges. Participants were  between 16 and 3', '', 4, 18, 0, 13, 87, 9, '', 'T15-Factores_presentes_en_la_deserción_universitaria_en_la_Facultad_de_Psicología_de_la_Universidad_De_San_Buenaventura,_sede_Bogotá_en_el_periodo_comprendido_entre_1998-2009.pdf', '2022-02-17 12:53:30', '2022-02-17 17:53:30', 0, ''),
(46, 76, 1, 3, 'Aplicación de un modelo de duración en programas  de prevención de deserción universitaria', 1, '', '', '10.1145/1067268.1062', '', '123-2351', '', '1', 76, 'Revista Electrónica de Investigación Educativa', '0000-00-00', 1, 1, 2013, '3', '15', '', '', '38', '52', 1, 1, 1, 'Las prácticas institucionales vinculadas con la prevención de la deserción de una carrera universitaria \r\nrequieren cada vez más de instrumentos validados que permitan anticipar tal comportamiento. En este \r\nsentido han demostrado utilidad decisiva distintos modelos estadísticos generados a partir de \r\ninformación referida a los propios estudiantes, sus hogares y su desempeño académico, entre otros \r\ndeterminantes. Este estudio pretende mostrar la importancia de una serie de determinantes exploradas \r\nen otros estudios: el objetivo principal es aplicar un modelo predictivo del riesgo de deserción de \r\nestudiantes universitarios a fin de generar resultados de manera temprana y progresivamente más \r\neficaces. El trabajo exhibe la utilidad de los modelos de duración en una muestra de estudiantes \r\npresenciales, y la capacidad anticipatoria de los comportamientos de permanencia/deserción en el \r\ntiempo, a través de estimaciones de riesgo con un modelo de Cox en cuatro momentos de los primeros \r\nmeses de universidad.', '', 'Deserción universitaria, Modelos de duración, Predicción de permanencia.', '', 4, 18, 0, 12, 73, 8, '', 'T16-Aplicación_de_un_modelo_de_duración_en_programas_de_prevención_de_deserción_universitaria.pdf', '2022-02-17 12:57:43', '2022-02-17 17:57:43', 0, ''),
(47, 75, 1, 3, 'La deserción estudiantil  UIS, una mirada desde  la responsabilidad social  universitaria', 1, '', '', '10.1145/1067268.10672254', '', '1657-2416', '', '1', 75, '', '0000-00-00', 1, 1, 2014, '1', '8', '', '', '121', '134', 1, 1, 1, 'La deserción estudiantil en las instituciones \r\nde educación superior se ha convertido \r\nen un problema social que aqueja a las \r\npoblaciones más vulnerables dentro de la \r\nestructura socioeconómica, limitando las \r\nposibilidades del desarrollo humano y, por \r\nende, el desarrollo de una nación, debiendo \r\nser abordada la problemática desde las \r\npolíticas institucionales de educación superior \r\nen el marco de su Responsabilidad Social \r\nUniversitaria –RSU– con la comunidad y el \r\nEstado. De ahí, la importancia del abordaje \r\ndel tema de deserción UIS desde una mirada \r\ncuanti-cualitativa y en referencia a la RSU.', '', ': responsabilidad social  universitaria, deserción estudiantil,  investigación cuantitativa y cualitativa,  retención estudiantil y permanencia', '', 6, 38, 199, 15, 193, 7, '', 'T17-La_deserción_estudiantil_UIS,_una_mirada_desde_la_responsabilidad_social_universitaria.pdf', '2022-02-17 13:02:21', '2022-02-17 18:02:21', 0, ''),
(48, 74, 1, 3, 'Relación entre la lecto-escritura, el desempeño académico y la deserción estudiantil', 1, '', '', '10.1145/1067268.1067254', '', ' 1900-3803', '', '1', 74, 'Entramado', '0000-00-00', 1, 1, 2014, '2', '10', '', '', '272', '284', 1, 1, 1, 'El objetivo del presente estudio es determinar si existe relación \r\nentre la competencia lecto-escritora de los estudiantes de primer \r\naño en una universidad privada de Bucaramanga, su desempeño \r\nacadémico y su permanencia durante el primer año de estudio. \r\nSe tomó una población de 350 estudiantes que ingresaron en el \r\nsegundo semestre del año 2011 para participar en la investigación. \r\nSe emplearon cuestionarios y entrevistas para indagar la opinión \r\nde los estudiantes y docentes acerca de las habilidades lectoescritoras y su relación con la vida académica. Adicionalmente, \r\nse consultaron bases de datos institucionales, los puntajes de la \r\nprueba nacional SABER 11 y el puntaje obtenido en la prueba \r\ninstitucional de ingreso que evaluó la producción escrita de un \r\ntexto argumentativo. Los resultados muestran una relación entre \r\nla competencia lecto-escritora, el desempeño académico y la tasa \r\nde deserción estudiantil, hallazgo corroborado por la mayoría \r\nde los docentes entrevistados. Sin embargo, los estudiantes \r\ndesertores declaran que dicha competencia no es fundamental \r\nen el éxito académico. El estudio demuestra la necesidad de \r\nimplementar acciones de acompañamiento a la población \r\nestudiantil universitaria para prevenir la deserción temprana por \r\nfactores asociados al bajo rendimiento académico causado por un \r\nbajo nivel de desarrollo en la competencia lecto-escritora.', '', 'Educación superior, lectura, escritura, desempeño académico,  deserción', '', 6, 35, 189, 11, 130, 8, '', 'T18-Relación_entre_la_lecto-escritura,_el_desempeño_académico_y_la_deserción_estudiantil.pdf', '2022-02-17 13:06:48', '2022-02-17 18:06:48', 0, ''),
(49, 73, 1, 3, 'Deserción estudiantil en las carreras de ciencias de la  salud en el Perú', 1, '', '', '10.15381/anales.v76i1.10972', '', '1212-4575', '', '1', 73, 'An Fac Med', '0000-00-00', 1, 1, 2015, '5', '76', '', '', '57', '61', 1, 1, 1, 'Resumen\r\nIntroducción: La deserción estudiantil en ciencias de la salud es un tema poco investigado en nuestro país. La deserción universitaria \r\nen general tiene un origen multifactorial e implicancias individuales, familiares, institucionales y sociales. Asimismo, origina pérdidas \r\neconómicas ingentes en nuestro país y en los de la región. Objetivos: Determinar la frecuencia de deserción durante la formación \r\nprofesional en medicina, enfermería, obstetricia y odontología, en nueve universidades del Perú. Diseño: Estudio observacional \r\nretrospectivo de corte transversal. Institución: Dirección General de Gestión del Desarrollo de los Recursos Humanos MINSA, \r\nPerú. Lugar: 4 universidades en Lima y 5 universidades de provincias. Métodos: Registro del número de estudiantes con deserción \r\nuniversitaria según carrera de ciencias de la salud, así como entrevista estructurada para determinar los factores condicionantes. \r\nMedidas de resultados: Número de desertores y factores condicionantes. Resultados: La deserción estudiantil para las carreras de \r\nciencias de la salud de las nueve universidades peruanas fue de 10,20% en la carrera de medicina humana, 11,11% en la carrera de \r\nobstetricia, 9,91% en la carrera de enfermería y 5,64% en la carrera de odontología. Los factores más relevantes que incidieron en \r\nla deserción universitaria fueron de índole vocacional y económico. Conclusiones: La deserción estudiantil en carreras de ciencias \r\nde la salud alcanzó en promedio 10%, cuyo origen predominante fue vocacional y económico. El énfasis en las universidades es en \r\nel seguimiento de rendimiento académico, mas no en quienes adolecen de él. Las universidades formadoras de profesionales en el \r\ncampo de la salud no tienen planes para potenciales desertores.', '', 'Deserción estudiantil, medicina, enfermería, obstetricia, odontología, universidades.', '', 6, 32, 0, 14, 37, 13, '', 'T19-Deserción_estudiantil_en_las_carreras_de_ciencias_de_la_salud_en_el_Perú.pdf', '2022-02-17 13:12:21', '2022-02-17 18:12:21', 0, ''),
(50, 69, 1, 3, 'Deserción estudiantil en las carreras de ciencias de la salud en el Perú', 1, '', '', '', '', '', '', '1', 0, 'An Fac Med.', '0000-00-00', 0, 0, 2016, '76', '', '', '', '57', '61', 3, 1, 0, 'en general tiene un origen multifactorial e implicancias individuales, familiares, institucionales y sociales. Asimismo, origina pérdidas\r\neconómicas ingentes en nuestro país y en los de la región. Objetivos: Determinar la frecuencia de deserción durante la formación\r\nprofesional en medicina, enfermería, obstetricia y odontología, en nueve universidades del Perú. Diseño: Estudio observacional\r\nretrospectivo de corte transversal. Institución: Dirección General de Gestión del Desarrollo de los Recursos Humanos MINSA,\r\nPerú. Lugar: 4 universidades en Lima y 5 universidades de provincias. Métodos: Registro del número de estudiantes con deserción', '', 'Deserción estudiantil, medicina, enfermería, obstetricia, odontología, universidades.', '', 3, 15, 102, 20, 30, 13, '', 'prueba2.pdf', '2022-02-17 18:18:36', '2022-02-17 23:18:36', 0, ''),
(52, 69, 1, 3, 'Depresión y factores socio demográficos asociados en estudiantes universitarios de ciencias de la salud de una universidad pública (Colombia)', 1, '', '', '', '', '', '', '1', 69, '', '0000-00-00', 0, 0, 2020, '', '8', '', '', '50', '58', 1, 1, 0, 'Se trata de una investigación descriptiva, con diseño transversal,\r\nrealizada con el objetivo identificar los niveles de depresión y factores\r\nsociodemográficos asociados, en 190 estudiantes de Psicología,', '', 'depresión, edad, sexo, estrato socioeconómico, programas académicos, síntomas depresivos, inventario de depresión de Beck.', '', 4, 18, 123, 11, 130, 15, '', 'prueba3.pdf', '2022-02-17 20:40:09', '2022-02-18 16:48:10', 69, ''),
(54, 6, 1, 1, 'Articulo de prueba', 0, '', '', '', '', '', '', '', 0, '', '0000-00-00', 0, 0, 0, '', '', '', '', '', '', 0, 0, 0, 'Dato de prueba', '', 'Dato de prueba', '', 1, 1, 1, 15, 193, 9, '', '', '2022-02-19 18:14:53', '2022-02-19 23:14:53', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblSubvenciones`
--

CREATE TABLE `tblSubvenciones` (
  `Id` int(11) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `Estado` int(11) NOT NULL COMMENT '0:Rechazado 1: Registrado 2: Revisiòn 3: Aprobado',
  `TipoSubv` int(11) NOT NULL,
  `Titulo` varchar(1000) NOT NULL,
  `Monto` decimal(5,2) NOT NULL,
  `Objetivo` text NOT NULL,
  `Archivo` text NOT NULL,
  `DaterReg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DateMod` datetime NOT NULL,
  `IdUserMod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblSubvenRequisitos`
--

CREATE TABLE `tblSubvenRequisitos` (
  `Id` int(11) NOT NULL,
  `Tipo` int(11) NOT NULL COMMENT '1: Constancia 2:Condiciones 3 : Caracterìsticas 4 Programa',
  `Nombre` varchar(500) NOT NULL,
  `Archivo` varchar(100) NOT NULL,
  `URL` varchar(500) NOT NULL,
  `DateReg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DateMod` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbltraining`
--

CREATE TABLE `tbltraining` (
  `Id` int(11) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `Subject` varchar(500) NOT NULL,
  `IdAfiliations` int(11) NOT NULL,
  `IdType` int(11) NOT NULL,
  `DateInit` datetime NOT NULL,
  `DateEnd` datetime NOT NULL,
  `Horas` int(11) NOT NULL,
  `Creditos` int(11) NOT NULL,
  `FileName` varchar(50) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModDate` datetime NOT NULL,
  `IdUserMod` int(11) NOT NULL DEFAULT '0',
  `Obs` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbltraining`
--

INSERT INTO `tbltraining` (`Id`, `IdUser`, `Subject`, `IdAfiliations`, `IdType`, `DateInit`, `DateEnd`, `Horas`, `Creditos`, `FileName`, `RegDate`, `ModDate`, `IdUserMod`, `Obs`) VALUES
(4, 6, 'Didáctica Universitaria', 9, 2, '2022-01-03 00:00:00', '2022-01-31 00:00:00', 120, 6, '4b.pdf', '2022-01-25 15:38:32', '2022-02-02 17:14:03', 6, ''),
(7, 69, 'CURSO DE GIT 8', 99, 1, '2022-02-16 00:00:00', '2022-02-16 00:00:00', 16, 0, 'prueba.pdf', '2022-02-17 01:45:47', '2022-02-16 20:49:34', 69, ''),
(8, 6, 'SERIES DE TIEMPO', 1, 2, '2022-02-16 00:00:00', '2022-02-25 00:00:00', 40, 2, 'ReporteFichaInvestigador.pdf', '2022-03-01 00:12:05', '0000-00-00 00:00:00', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblusers`
--

CREATE TABLE `tblusers` (
  `Id` int(11) NOT NULL,
  `Estado` int(11) NOT NULL COMMENT '0 Inactivo| 1 Activo sin datos personales| 2 datos personales completo| 3 con publicaciones|',
  `TypeUser` int(11) NOT NULL,
  `DNI` varchar(8) NOT NULL,
  `FamilyNames` varchar(100) NOT NULL,
  `FirstNames` varchar(100) NOT NULL,
  `NameReseachres` varchar(180) DEFAULT NULL,
  `IdCountry` int(11) NOT NULL,
  `Gender` int(2) NOT NULL,
  `Affiliation` varchar(200) DEFAULT NULL,
  `ElectronicAddress` varchar(200) DEFAULT NULL,
  `ORCID` varchar(300) DEFAULT NULL,
  `ScopusAuthorID` varchar(300) DEFAULT NULL,
  `ResearcherID` varchar(300) DEFAULT NULL,
  `CtivitaeID` varchar(300) DEFAULT NULL,
  `AlternativeScopusAuthorID` varchar(300) DEFAULT NULL,
  `IdFaculty` int(2) NOT NULL DEFAULT '0',
  `IdSchool` int(2) NOT NULL DEFAULT '0',
  `IdCategory` int(2) DEFAULT '0',
  `CodeTeacher` varchar(8) DEFAULT NULL,
  `Website` varchar(400) DEFAULT NULL,
  `Password` varchar(500) NOT NULL,
  `NumPhone` varchar(15) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `BirthDate` date NOT NULL,
  `Resumen` text,
  `FilePhoto` varchar(300) NOT NULL,
  `RegDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModDate` datetime NOT NULL,
  `ModHash` varchar(300) NOT NULL,
  `IdUser` int(11) DEFAULT NULL COMMENT 'id del usuario quien modifico',
  `Obs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblusers`
--

INSERT INTO `tblusers` (`Id`, `Estado`, `TypeUser`, `DNI`, `FamilyNames`, `FirstNames`, `NameReseachres`, `IdCountry`, `Gender`, `Affiliation`, `ElectronicAddress`, `ORCID`, `ScopusAuthorID`, `ResearcherID`, `CtivitaeID`, `AlternativeScopusAuthorID`, `IdFaculty`, `IdSchool`, `IdCategory`, `CodeTeacher`, `Website`, `Password`, `NumPhone`, `Address`, `BirthDate`, `Resumen`, `FilePhoto`, `RegDate`, `ModDate`, `ModHash`, `IdUser`, `Obs`) VALUES
(6, 2, 1, '47979902', 'TTACCA APAZA', 'MARTHA LOURDES', 'Ttacca A. Martha Lourdes', 1, 1, NULL, 'admin@admin.com', '8123-5543-9876-098x', '76357', '355', '6543', 'Datos', 11, 21, 3, '098765', 'WWW.', 'd033e22ae348aeb5660fc2140aec35850c4da997', '999999991', 'Jr Puno', '2022-01-24', 'Sed et finibus dui. Nullam in lorem fermentum, semper dui sit amet, convallis lectus. Aliquam lacinia ipsum ut ligula cursus semper. Suspendisse potenti. Praesent in erat lobortis, posuere ex at, luctus lorem. Maecenas in risus enim. Aliquam semper orci eleifend, dapibus metus non, sodales leo. Integer finibus mauris porta interdum lacinia. Cras ut justo sed metus pretium laoreet sed id elit. Fusce quis massa ultrices, ultrices nisi sit amet, tincidunt turpis. Proin ac odio hendrerit, fermentum mi ac, varius sem. Morbi pulvinar nulla sit amet libero pulvinar iaculis. Proin facilisis urna vitae ornare ornare. Phasellus euismod egestas eleifend. Ut laoreet elit vestibulum leo viverra, quis posuere arcu vestibulum. Sed in metus mauris.', 'dagobert83_female_user_icon3.png', '2022-01-24 09:51:21', '2022-03-15 10:21:05', '', 6, ''),
(12, 0, 0, '', '', '', 'Patricio E. Ramírez', 12, 0, NULL, 'patricio.ramirez@ucn.cl', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-01-27 09:17:42', '0000-00-00 00:00:00', '', NULL, ''),
(13, 0, 0, '', '', '', 'Elizabeth E. Grandón', 12, 0, NULL, 'egrandon@ubiobio.cl', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-01-27 09:18:36', '0000-00-00 00:00:00', '', NULL, ''),
(14, 0, 0, '', '', '', 'Cauna H. Gerardino', 12, 0, NULL, 'adm@ppp.com', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-01-27 09:22:16', '0000-00-00 00:00:00', '', NULL, ''),
(41, 0, 0, '', '', '', 'Pepe lucho', 12, 0, NULL, 'pepe@icc.com', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-01-29 08:30:47', '0000-00-00 00:00:00', '', NULL, ''),
(42, 0, 0, '', '', '', 'Karina B. Eckert', 12, 0, NULL, 'karinaeck@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-01-31 09:17:35', '0000-00-00 00:00:00', '', NULL, ''),
(43, 0, 0, '', '', '', 'Roberto Suénaga', 12, 0, NULL, 'rsuenaga@ugd.edu.ar', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-01-31 09:18:01', '0000-00-00 00:00:00', '', NULL, ''),
(44, 2, 1, '40816623', 'BLANNCO QUISPE', 'JHOSE ANTONIO', 'Blanco-Quispe Jose A.', 12, 1, 'Afiliación', 'jblanco@unap.edu.pe', 'ORCID-10', 'ScopusID-10', 'ResearcherID-10', 'CtivitaeID-10', 'ID Alternativo De Autor En Scopus', 1, 1, 2, '408166', 'WWW.', '0b8b82bda14281717479ba16d0f9bd1876d1946e', '987654321', 'Jr jblanco', '2022-01-03', 'hi teacher', '', '2022-01-31 20:33:25', '0000-00-00 00:00:00', '', NULL, ''),
(46, 0, 0, '', '', '', 'A. Conde-Taboada', 12, 0, NULL, 'aconde@admin.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-04 12:21:57', '0000-00-00 00:00:00', '', NULL, ''),
(47, 0, 0, '', '', '', 'B. Aranegui', 12, 0, NULL, 'baranegui@admin.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-04 12:22:27', '0000-00-00 00:00:00', '', NULL, ''),
(48, 0, 0, '', 'Torres Cruz', 'Fred', 'Fred Torres-Cruz', 12, 0, NULL, 'torresfrd@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, 21, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-04 22:00:46', '0000-00-00 00:00:00', '', NULL, ''),
(49, 0, 0, '', '', '', 'Hend Alrasheed', 12, 0, NULL, 'adm@ppp.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-04 23:27:14', '0000-00-00 00:00:00', '', NULL, ''),
(50, 0, 0, '', '', '', 'Alberto Huertas Celdrána', 12, 0, NULL, 'alberto.huertas@um.es', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-05 20:01:37', '0000-00-00 00:00:00', '', NULL, ''),
(51, 0, 0, '', '', '', 'Daniel Fernandesa', 0, 0, NULL, 'daniel@admin.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-05 20:19:41', '0000-00-00 00:00:00', '', NULL, ''),
(52, 0, 0, '', '', '', 'Francisco Cercasa', 0, 0, NULL, 'francisca@admin.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-05 20:20:05', '0000-00-00 00:00:00', '', NULL, ''),
(53, 0, 0, '', '', '', 'Rui Dinis', 0, 0, NULL, 'ruby@admin.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-05 20:20:26', '0000-00-00 00:00:00', '', NULL, ''),
(54, 0, 0, '', '', '', 'celica cari-calsin', 0, 0, NULL, 'celia@admin.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-06 12:20:59', '0000-00-00 00:00:00', '', NULL, ''),
(55, 0, 0, '', '', '', 'Manuel Gil Pereza', 0, 0, NULL, 'manuel@admin.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-07 10:25:28', '0000-00-00 00:00:00', '', NULL, ''),
(56, 0, 0, '', '', '', 'Gonzalo Raúl Fonseca-Grandón', 0, 0, NULL, 'graul@admo.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-07 16:40:13', '0000-00-00 00:00:00', '', NULL, ''),
(57, 0, 0, '', '', '', 'Murcia Peña* Cami', 0, 0, NULL, 'mraul@admo.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-07 16:51:04', '0000-00-00 00:00:00', '', NULL, ''),
(58, 0, 0, '', '', '', 'Blanca N. Piratoba H.', 0, 0, NULL, 'blanca.n@admo.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-07 17:01:08', '0000-00-00 00:00:00', '', NULL, ''),
(59, 0, 0, '', '', '', 'Ovidio O. Barbosa Ch.', 0, 0, NULL, 'Ovi.bar@admo.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-07 17:03:50', '0000-00-00 00:00:00', '', NULL, ''),
(60, 0, 0, '', '', '', 'Ubaldo Roberto Torres RomoI', 0, 0, NULL, 'ubaldo.torres@admo.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-07 17:13:38', '0000-00-00 00:00:00', '', NULL, ''),
(61, 0, 0, '', '', '', 'Aida Marante Vilariño', 0, 0, NULL, 'MarantVilari@admo.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-07 17:14:26', '0000-00-00 00:00:00', '', NULL, ''),
(62, 0, 0, '', '', '', 'Neyda Fernández FranchIII', 0, 0, NULL, 'Neyda@admo.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-07 17:15:14', '0000-00-00 00:00:00', '', NULL, ''),
(63, 0, 0, '', '', '', 'José Martí Pérez', 0, 0, NULL, 'JosMartPrez@admo.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-07 17:20:10', '0000-00-00 00:00:00', '', NULL, ''),
(64, 0, 0, '', '', '', 'Frank País García', 0, 0, NULL, 'Frank@admo.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-07 17:20:25', '0000-00-00 00:00:00', '', NULL, ''),
(65, 0, 0, '', '', '', 'Alícia Villar Aguilés', 0, 0, NULL, 'Alicia@admo.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-07 17:24:14', '0000-00-00 00:00:00', '', NULL, ''),
(66, 0, 0, '', '', '', 'Maria Manuel Vieira', 0, 0, NULL, 'Maria@admo.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-07 17:24:31', '0000-00-00 00:00:00', '', NULL, ''),
(67, 0, 0, '', '', '', 'Marisol Silva Laya', 0, 0, NULL, 'Marisol@admo.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-07 17:28:12', '0000-00-00 00:00:00', '', NULL, ''),
(68, 1, 1, '73608205', 'ENRIQUES BLANCO', 'GLADIS CARMEN', 'Enriquez-Blanco Gladys C.', 12, 0, NULL, 'blanco@blanco.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '736082', NULL, 'd6a9e27d5d637399cd4e93b74067fdf55370f732', '987456123', 'Jr. Puno n 1234', '2022-02-01', NULL, '', '2022-02-07 18:01:04', '0000-00-00 00:00:00', '', NULL, ''),
(69, 3, 1, '74802197', 'SANTOS SAN', 'ROY M.', 'Santos Santos Roy M.', 12, 0, '1', 'santos@santos.com', '0000-00001-2345-6789', '', '', '', '', 10, 17, 3, '748021', '', 'ff590fb2107e85e92e45ac5d7f3f1cef4b5a0cfc', '974802197', 'jr Puno 123', '2010-01-11', 'maestro', '', '2022-02-16 17:43:46', '2022-02-16 18:16:52', '', 69, ''),
(70, 0, 0, '', '', '', 'Manuel Heredia Alarcón', 0, 0, NULL, 'maunle@admin.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-16 21:21:21', '0000-00-00 00:00:00', '', NULL, ''),
(71, 0, 0, '', '', '', 'Marcelino Andía Ticona', 0, 0, NULL, 'marcelino@admin.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-16 21:21:44', '0000-00-00 00:00:00', '', NULL, ''),
(72, 0, 0, '', '', '', 'Helder Ocampo Guabloche', 0, 0, NULL, 'helder@admin.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-16 21:22:03', '0000-00-00 00:00:00', '', NULL, ''),
(73, 3, 1, '72737942', 'VALDES MAMANIN', 'JAKELINNE GLELIA', 'VALDEZ MAMANI JAKELINE GLELIA', 12, 1, NULL, 'bustinza@admin.com', '0000-0000-0000-0000', '', '', '', '', 1, 1, 1, '727379', '', '89f3ade5f5c8d65f732bc9d0ef017f74fef7d4c8', '972737942', 'Jr. puno 123', '2022-02-17', 'maestro', '', '2022-02-17 11:25:31', '2022-02-17 12:00:23', '', 73, ''),
(74, 3, 1, '70937007', 'YTO CUTIPA', 'SANTOS FRANKLIN', 'YTO CUTIPA SANTOS FRANKLIN', 12, 0, NULL, 'yto@admin.com', '0000-0000-0000-0000', '', '', '', '', 1, 2, 8, '709370', '', '86d2b6f70b5b502da618bb6bac2b7d61a40791e5', '970937007', 'Jr. Puno', '2022-02-17', 'Docente', '', '2022-02-17 11:27:15', '2022-02-17 12:08:57', '', 74, ''),
(75, 3, 1, '70480702', 'VILCAZAN HUAYTA', 'DAMASO', 'VILCAZAN HUAYTA DAMASO', 12, 0, NULL, 'vilcazan@admin.com', '0000-0000-0000-0000', '', '', '', '', 1, 3, 1, '704807', '', 'ef8e75aab921d908c5bfe15e8b882f8a91dc70a6', '970480702', 'Jr Acora 123', '2022-02-17', 'Docente', '', '2022-02-17 11:29:13', '2022-02-17 12:04:01', '', 75, ''),
(76, 3, 1, '72812323', 'VILCCA CCOAQUIRA', 'YAKELIN ERIKA', 'VILCA COAQUIRA YAKELIN ERIKA', 12, 0, NULL, 'vilca@admin.com', '0000-0000-0000-0000', '', '', '', '', 10, 17, 1, '728123', '', '239ed41e126f140ec59f695c4b99ee38304d9e83', '972812323', 'Jr. Acora 123', '2022-02-17', 'Docente', '', '2022-02-17 11:36:36', '2022-02-17 12:06:03', '', 76, ''),
(77, 3, 1, '70178012', 'VILCCA CAMA', 'DAVID', 'VILCA CCAMA DAVID', 12, 0, NULL, 'vilcac@admin.com', '0000-0000-0000-0000', '', '', '', '', 10, 18, 10, '701780', '', 'c1090423b6fa575abd6db6216157b9b27e418c93', '970178012', 'Jr. puno 123', '2022-02-17', 'Docente', '', '2022-02-17 11:39:45', '2022-02-17 12:11:33', '', 77, ''),
(78, 3, 1, '73250892', 'TORRES FLOR', 'MIREYA MARYSABEL', 'TORRES FLORES MIREYA MARYSABEL', 12, 1, NULL, 'torres@admin.com', '0000-0000-0000-0000', '', '', '', '', 10, 19, 7, '732508', '', 'db6644a55d40ba16f409c18a19d50f87b333d81a', '973250892', 'Jr Pucara 123', '2022-02-17', 'Docente', '', '2022-02-17 11:41:19', '2022-02-17 12:12:28', '', 78, ''),
(79, 3, 1, '76619646', 'TEVEZ CORDOBA', 'LUWIN CRISTOFER', 'TEVES CORDOVA LUDWIN CRISTOFER', 12, 0, NULL, 'teves@admin.com', '0000-0000-0000-0000', '', '', '', '', 10, 20, 1, '766196', '', 'bfb8a7e249b06c67faa4ae00e6279ff7ae2f3624', '976619646', 'Jr ayacucho 231', '2022-02-17', 'Docente', '', '2022-02-17 11:43:33', '2022-02-17 12:13:27', '', 79, ''),
(80, 3, 1, '73055936', 'SARABIA APASA', 'HENNRY', 'SARAVIA APAZA HENRY', 12, 0, NULL, 'saravia@admin.com', '0000-0000-0000-0000', '', '', '', '', 14, 24, 1, '730559', '', '23f5707003ef64f28c1e3630fb5219babd7a5c20', '973055936', 'Jr Acora 353', '2022-02-17', 'Docente', '', '2022-02-17 11:47:10', '2022-02-17 12:14:32', '', 80, ''),
(81, 3, 1, '70466251', 'OTASU MAITA', 'YEWHAN PHASCUAL', 'OTAZU MAYTA YEWAN PASCUAL', 12, 0, NULL, 'otazu@admin.com', '0000-0000-0000-0000', '', '', '', '', 14, 24, 6, '704662', '', '97cf2ff9465ba5b6eeb92e530945e4d1439d237c', '970466251', 'Jr Lima 1423', '2022-02-17', 'Docente', '', '2022-02-17 11:48:05', '2022-02-17 12:16:26', '', 81, ''),
(82, 3, 1, '73762279', 'MEDINA CALSINA', 'HAROL ALHEX', 'MEDINA CALCINA HAROLD ALEX', 12, 0, NULL, 'medina@admin.com', '0000-0000-0000-0000', '', '', '', '', 8, 15, 4, '737622', '', 'fcb358cf9719b66b8744d6e1c4a245719565afe9', '973762279', 'Jr arequipa 3423', '2022-02-17', 'Docente', '', '2022-02-17 11:48:58', '2022-02-17 12:18:19', '', 82, ''),
(83, 0, 0, '', '', '', 'Herrero Merlino', 0, 0, NULL, 'Herrero@Merlino.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-17 12:23:35', '0000-00-00 00:00:00', '', NULL, ''),
(84, 0, 0, '', '', '', 'Carlos J. Barrera', 0, 0, NULL, 'CarloBarrera@Merlino.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-17 12:33:05', '0000-00-00 00:00:00', '', NULL, ''),
(85, 0, 0, '', '', '', 'Robert F. Ferrel Ortega', 0, 0, NULL, 'RobertFerrelOrtega@unap.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-17 12:38:02', '0000-00-00 00:00:00', '', NULL, ''),
(86, 0, 0, '', '', '', 'Angela Corengia', 0, 0, NULL, 'Angela@Corengia.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-17 12:41:57', '0000-00-00 00:00:00', '', NULL, ''),
(87, 0, 0, '', '', '', 'Leonardo Adrián Medrano', 0, 0, NULL, 'LeonardoAdrin@Medrano.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-17 12:50:29', '0000-00-00 00:00:00', '', NULL, ''),
(88, 0, 0, '', '', '', 'María Juliana Mateus Rodríguez', 0, 0, NULL, 'Maria@Merlino.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-17 12:54:13', '0000-00-00 00:00:00', '', NULL, ''),
(89, 0, 0, '', '', '', 'Herrero Merlino', 0, 0, NULL, 'Herrero@Merlino.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-17 12:58:19', '0000-00-00 00:00:00', '', NULL, ''),
(90, 0, 0, '', '', '', 'Ruth Zárate Rueda', 0, 0, NULL, 'Ruth@Rueda.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-17 13:03:06', '0000-00-00 00:00:00', '', NULL, ''),
(91, 0, 0, '', '', '', 'Stefany Carrillo García', 0, 0, NULL, 'Stefany@Carrillo.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-17 13:07:46', '0000-00-00 00:00:00', '', NULL, ''),
(92, 0, 0, '', '', '', 'Manuel Heredia Alarcón', 0, 0, NULL, 'Manuel@Heredia.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-17 13:12:59', '0000-00-00 00:00:00', '', NULL, ''),
(94, 0, 0, '', '', '', 'Edu-Jhoel', 1, 0, NULL, 'adm@ppp.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', '0000-00-00', NULL, '', '2022-02-19 18:00:34', '0000-00-00 00:00:00', '', NULL, ''),
(95, 2, 2, '47979902', 'LANDIO APAZA	', 'MARIO FELICIANO', 'Landio A. Mario F', 12, 1, NULL, 'adminui@admin.com', '8123-5543-229876-098x', '76357', '355', '6543', 'Datos', 11, 21, 3, '098765', 'WWW.', 'd033e22ae348aeb5660fc2140aec35850c4da997', '987654321', 'Jr Puno', '2022-01-24', 'Sed et finibus dui. Nullam in lorem fermentum, semper dui sit amet, convallis lectus. Aliquam lacinia ipsum ut ligula cursus semper. Suspendisse potenti. Praesent in erat lobortis, posuere ex at, luctus lorem. Maecenas in risus enim. Aliquam semper orci eleifend, dapibus metus non, sodales leo. Integer finibus mauris porta interdum lacinia. Cras ut justo sed metus pretium laoreet sed id elit. Fusce quis massa ultrices, ultrices nisi sit amet, tincidunt turpis. Proin ac odio hendrerit, fermentum mi ac, varius sem. Morbi pulvinar nulla sit amet libero pulvinar iaculis. Proin facilisis urna vitae ornare ornare. Phasellus euismod egestas eleifend. Ut laoreet elit vestibulum leo viverra, quis posuere arcu vestibulum. Sed in metus mauris.', 'atomix_user311.png', '2022-01-24 09:51:21', '2022-02-18 23:14:10', '', 2, ''),
(96, 1, 6, '22222222', 'SECRE', 'SECRE', '', 1, 1, NULL, 'secre@secre.com', NULL, NULL, NULL, NULL, NULL, 11, 21, 0, NULL, NULL, 'f638e2789006da9bb337fd5689e37a265a70f359', '987654321', '', '0000-00-00', NULL, '', '2022-02-19 18:00:34', '0000-00-00 00:00:00', '', NULL, ''),
(97, 1, 1, '75933232', 'RUELAS HUERTHA', 'MARTGA MARI', NULL, 0, 1, NULL, 'docente1@docente.com', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '759332', NULL, '382febb0b3e9435aa42454dca29ec440ad34d09f', '987654321', 'jr  puno', '2022-03-01', NULL, '', '2022-03-10 14:21:26', '0000-00-00 00:00:00', '', NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uiuser`
--

CREATE TABLE `uiuser` (
  `id` int(11) NOT NULL,
  `IdTypeUser` int(11) NOT NULL,
  `DNI` varchar(8) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `password` varchar(120) NOT NULL,
  `lastnameui` varchar(25) NOT NULL,
  `firstnameui` varchar(25) NOT NULL,
  `IdResponsable` varchar(200) NOT NULL,
  `level` tinyint(2) NOT NULL COMMENT '1 super admin| 2 admin',
  `status` tinyint(2) NOT NULL COMMENT '0 desactivo | 1 activo',
  `Datereg` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DateMod` datetime NOT NULL,
  `IdUserMod` int(11) NOT NULL,
  `obs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `uiuser`
--

INSERT INTO `uiuser` (`id`, `IdTypeUser`, `DNI`, `Email`, `password`, `lastnameui`, `firstnameui`, `IdResponsable`, `level`, `status`, `Datereg`, `DateMod`, `IdUserMod`, `obs`) VALUES
(1, 2, '4234234', 'adminui@admin.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Dominguez', 'Domingo', '2', 1, 1, '2022-03-03 11:30:32', '0000-00-00 00:00:00', 2, 'Ninugna');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uniInsituto`
--

CREATE TABLE `uniInsituto` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(300) NOT NULL,
  `Estado` int(11) NOT NULL,
  `IdUsuario` int(11) NOT NULL,
  `IdArea` int(11) NOT NULL,
  `IdONU` int(11) NOT NULL,
  `IdLineaUNAP` int(11) NOT NULL,
  `Descripción` text NOT NULL,
  `Foto` varchar(300) NOT NULL,
  `Pagina` varchar(300) NOT NULL,
  `Ubicación` varchar(300) NOT NULL,
  `DateReg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DateMod` datetime NOT NULL,
  `IdUserMod` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uniLaboratorio`
--

CREATE TABLE `uniLaboratorio` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(300) NOT NULL,
  `Estado` int(11) NOT NULL,
  `IdUsuario` int(11) NOT NULL,
  `IdInvestigacion` int(11) NOT NULL,
  `IdFacultad` int(11) NOT NULL,
  `IdArea` int(11) NOT NULL,
  `IdONU` int(11) NOT NULL,
  `IdLineaUNAP` int(11) NOT NULL,
  `Descripción` text NOT NULL,
  `Foto` varchar(300) NOT NULL,
  `Pagina` varchar(300) NOT NULL,
  `Ubicación` varchar(300) NOT NULL,
  `DateReg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DateMod` datetime NOT NULL,
  `IdUserMod` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `uniLaboratorio`
--

INSERT INTO `uniLaboratorio` (`Id`, `Nombre`, `Estado`, `IdUsuario`, `IdInvestigacion`, `IdFacultad`, `IdArea`, `IdONU`, `IdLineaUNAP`, `Descripción`, `Foto`, `Pagina`, `Ubicación`, `DateReg`, `DateMod`, `IdUserMod`) VALUES
(1, 'Laboratorio de Salud Pública y Salud Ambiental', 1, 95, 16, 9, 2, 3, 21, 'Disponible', 'aff73b56584edae5b89098e3a5ce6085.jpg', 'https://vriunap.pe/', 'Av. Floral Nº 1153, Ciudad de Puno - Perú', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Análisis de suelos', 1, 82, 29, 16, 1, 6, 20, 'Laboratorio', '20901360_1452863118129631_2622376245994733342_o.jpg', 'https://vriunap.pe/', 'Av. Floral Nº 1153, Ciudad de Puno - Perú', '2022-02-25 19:23:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Biología Acuática y Acuicultura', 1, 91, 16, 9, 2, 12, 7, 'Laboratory', 'laboratoriooo.jpg', 'https://vriunap.pe/', 'Av. Floral Nº 1153, Ciudad de Puno - Perú', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Psicometría y Testoteca', 1, 50, 8, 5, 4, 3, 7, 'Laboratory', 'laboratoriooo1.jpg', 'http://vriunap.pe/', 'Av. Floral Nº 1153, Ciudad de Puno - Perú', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uniMiembros`
--

CREATE TABLE `uniMiembros` (
  `Id` int(11) NOT NULL,
  `IdTipo` int(11) NOT NULL COMMENT '1: Laboratorio 2: Instituto',
  `IdLaboUni` int(11) NOT NULL,
  `IdUsuario` int(11) NOT NULL,
  `Estado` int(11) NOT NULL,
  `DateReg` int(11) NOT NULL,
  `DateMod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uniUsuarioCarrera`
--

CREATE TABLE `uniUsuarioCarrera` (
  `Id` int(11) NOT NULL,
  `Nivel` int(11) NOT NULL COMMENT '1:Facultad 2: Carrera',
  `IdCarrera` int(11) NOT NULL,
  `IdFacultad` int(11) NOT NULL,
  `IdTipo` int(11) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `DateMod` datetime NOT NULL,
  `DateReg` datetime NOT NULL,
  `IdUserMod` int(11) NOT NULL,
  `Usuario` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admusers`
--
ALTER TABLE `admusers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `dicacademiclevel`
--
ALTER TABLE `dicacademiclevel`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dicacademictype`
--
ALTER TABLE `dicacademictype`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dicafiliations`
--
ALTER TABLE `dicafiliations`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dicauthortype`
--
ALTER TABLE `dicauthortype`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `diccarreras`
--
ALTER TABLE `diccarreras`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `diccategoriainvestigacion`
--
ALTER TABLE `diccategoriainvestigacion`
  ADD PRIMARY KEY (`Id_categoria`);

--
-- Indices de la tabla `diccategoryteacher`
--
ALTER TABLE `diccategoryteacher`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dicconceptosinvestigacion`
--
ALTER TABLE `dicconceptosinvestigacion`
  ADD PRIMARY KEY (`Id_conceptos`);

--
-- Indices de la tabla `diccountrys`
--
ALTER TABLE `diccountrys`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dicfacultades`
--
ALTER TABLE `dicfacultades`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `diclanguajes`
--
ALTER TABLE `diclanguajes`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `diclicencestype`
--
ALTER TABLE `diclicencestype`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `diclineas`
--
ALTER TABLE `diclineas`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `diclineassub`
--
ALTER TABLE `diclineassub`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id` (`Id`);

--
-- Indices de la tabla `dicocdeareas`
--
ALTER TABLE `dicocdeareas`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dicocdedisciplinas`
--
ALTER TABLE `dicocdedisciplinas`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dicocdesubareas`
--
ALTER TABLE `dicocdesubareas`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `diconu`
--
ALTER TABLE `diconu`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dicstudycenter`
--
ALTER TABLE `dicstudycenter`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dictipoinvestigacion`
--
ALTER TABLE `dictipoinvestigacion`
  ADD PRIMARY KEY (`Id_tipo`);

--
-- Indices de la tabla `dictypepublication`
--
ALTER TABLE `dictypepublication`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dictypepublishedin`
--
ALTER TABLE `dictypepublishedin`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dictypesubvencion`
--
ALTER TABLE `dictypesubvencion`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dictypetraining`
--
ALTER TABLE `dictypetraining`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dictypeusers`
--
ALTER TABLE `dictypeusers`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dicuniversidades`
--
ALTER TABLE `dicuniversidades`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `histaccess`
--
ALTER TABLE `histaccess`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `histoperaciones`
--
ALTER TABLE `histoperaciones`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tblacademic`
--
ALTER TABLE `tblacademic`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tblexperience`
--
ALTER TABLE `tblexperience`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tblinbox`
--
ALTER TABLE `tblinbox`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tblinvestigacion`
--
ALTER TABLE `tblinvestigacion`
  ADD PRIMARY KEY (`Id_Investigacion`);

--
-- Indices de la tabla `tbllanguajes`
--
ALTER TABLE `tbllanguajes`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tblpublication`
--
ALTER TABLE `tblpublication`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tblSubvenciones`
--
ALTER TABLE `tblSubvenciones`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tblSubvenRequisitos`
--
ALTER TABLE `tblSubvenRequisitos`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tbltraining`
--
ALTER TABLE `tbltraining`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `uiuser`
--
ALTER TABLE `uiuser`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `uniInsituto`
--
ALTER TABLE `uniInsituto`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `uniLaboratorio`
--
ALTER TABLE `uniLaboratorio`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `uniMiembros`
--
ALTER TABLE `uniMiembros`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `uniUsuarioCarrera`
--
ALTER TABLE `uniUsuarioCarrera`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admusers`
--
ALTER TABLE `admusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `dicacademiclevel`
--
ALTER TABLE `dicacademiclevel`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `dicacademictype`
--
ALTER TABLE `dicacademictype`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `dicafiliations`
--
ALTER TABLE `dicafiliations`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `dicauthortype`
--
ALTER TABLE `dicauthortype`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `diccarreras`
--
ALTER TABLE `diccarreras`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `diccategoriainvestigacion`
--
ALTER TABLE `diccategoriainvestigacion`
  MODIFY `Id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `diccategoryteacher`
--
ALTER TABLE `diccategoryteacher`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `dicconceptosinvestigacion`
--
ALTER TABLE `dicconceptosinvestigacion`
  MODIFY `Id_conceptos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `diccountrys`
--
ALTER TABLE `diccountrys`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT de la tabla `dicfacultades`
--
ALTER TABLE `dicfacultades`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `diclanguajes`
--
ALTER TABLE `diclanguajes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `diclicencestype`
--
ALTER TABLE `diclicencestype`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `dicocdeareas`
--
ALTER TABLE `dicocdeareas`
  MODIFY `Id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `dicocdedisciplinas`
--
ALTER TABLE `dicocdedisciplinas`
  MODIFY `Id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT de la tabla `dicocdesubareas`
--
ALTER TABLE `dicocdesubareas`
  MODIFY `Id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `diconu`
--
ALTER TABLE `diconu`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `dicstudycenter`
--
ALTER TABLE `dicstudycenter`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `dictipoinvestigacion`
--
ALTER TABLE `dictipoinvestigacion`
  MODIFY `Id_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `dictypepublication`
--
ALTER TABLE `dictypepublication`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `dictypepublishedin`
--
ALTER TABLE `dictypepublishedin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `dictypesubvencion`
--
ALTER TABLE `dictypesubvencion`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `dictypetraining`
--
ALTER TABLE `dictypetraining`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `dictypeusers`
--
ALTER TABLE `dictypeusers`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `dicuniversidades`
--
ALTER TABLE `dicuniversidades`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT de la tabla `histaccess`
--
ALTER TABLE `histaccess`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `histoperaciones`
--
ALTER TABLE `histoperaciones`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `tblacademic`
--
ALTER TABLE `tblacademic`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT de la tabla `tblexperience`
--
ALTER TABLE `tblexperience`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tblinbox`
--
ALTER TABLE `tblinbox`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tblinvestigacion`
--
ALTER TABLE `tblinvestigacion`
  MODIFY `Id_Investigacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbllanguajes`
--
ALTER TABLE `tbllanguajes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tblpublication`
--
ALTER TABLE `tblpublication`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `tblSubvenciones`
--
ALTER TABLE `tblSubvenciones`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblSubvenRequisitos`
--
ALTER TABLE `tblSubvenRequisitos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbltraining`
--
ALTER TABLE `tbltraining`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT de la tabla `uiuser`
--
ALTER TABLE `uiuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `uniInsituto`
--
ALTER TABLE `uniInsituto`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `uniLaboratorio`
--
ALTER TABLE `uniLaboratorio`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `uniMiembros`
--
ALTER TABLE `uniMiembros`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `uniUsuarioCarrera`
--
ALTER TABLE `uniUsuarioCarrera`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

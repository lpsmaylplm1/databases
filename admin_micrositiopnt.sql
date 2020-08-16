-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:33065
-- Tiempo de generación: 16-08-2020 a las 21:56:00
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `admin_micrositiopnt`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carga_stat`
--

CREATE TABLE `carga_stat` (
  `id_so` int(11) NOT NULL,
  `categoria` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `reg_inic` int(6) NOT NULL,
  `reg_next_1` int(6) NOT NULL,
  `reg_next_2` int(6) NOT NULL,
  `reg_act` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `carga_stat`
--

INSERT INTO `carga_stat` (`id_so`, `categoria`, `nombre`, `reg_inic`, `reg_next_1`, `reg_next_2`, `reg_act`) VALUES
(1, 'PODER EJECUTIVO ESTATAL', 'Secretaría de la Contraloría', 4789, 5058, 5140, 8463),
(2, 'PODER EJECUTIVO ESTATAL', 'Fiscalía General del Estado', 2760, 2742, 2742, 2761),
(3, 'PODER EJECUTIVO ESTATAL', 'Secretaría de Medio Ambiente y Recursos Naturales', 0, 0, 0, 0),
(4, 'PODER EJECUTIVO ESTATAL', 'Secretaría de Desarrollo Económico', 260, 405, 405, 405),
(5, 'PODER EJECUTIVO ESTATAL', 'Secretaría de Salud', 4395, 4423, 4423, 4740),
(6, 'PODER EJECUTIVO ESTATAL', 'Secretaría de Desarrollo Rural', 653, 1244, 1244, 1244),
(7, 'PODER EJECUTIVO ESTATAL', 'Secretaría de Desarrollo Urbano, Obras Públicas e Infraestructura', 2356, 4502, 5069, 5088),
(8, 'PODER EJECUTIVO ESTATAL', 'Secretaría de Pesca y Acuacultura', 573, 1025, 1025, 1026),
(9, 'PODER EJECUTIVO ESTATAL', 'Secretaría de Desarrollo Social y Humano', 2485, 2415, 2415, 4040),
(10, 'PODER EJECUTIVO ESTATAL', 'Secretaría de Educación', 24830, 55144, 55154, 55268),
(11, 'PODER EJECUTIVO ESTATAL', 'Secretaría de Finanzas ', 4277, 3930, 3930, 5885),
(12, 'PODER EJECUTIVO ESTATAL', 'Secretaría de Gobierno', 15658, 17272, 17464, 17465),
(13, 'PODER EJECUTIVO ESTATAL', 'Secretaría de Turismo', 668, 677, 677, 677),
(14, 'PODER EJECUTIVO ESTATAL', 'Secretaría de Seguridad Pública', 711, 1273, 1273, 2113),
(15, 'PODER EJECUTIVO ESTATAL', 'Secretaría de Cultura ', 1360, 1355, 1355, 1358),
(16, 'PODER EJECUTIVO ESTATAL', 'Instituto de Seguridad y Servicios Sociales de los Trabajadores del Estado de Campeche (ISSSTECAM)', 9008, 21948, 21948, 25264),
(17, 'PODER EJECUTIVO ESTATAL', 'Instituto Estatal de la Educación para los Adultos', 29733, 29594, 29617, 34337),
(18, 'PODER EJECUTIVO ESTATAL', 'Instituto Estatal para el Fomento de las Actividades Artesanales en Campeche', 1175, 1175, 1175, 1175),
(19, 'PODER EJECUTIVO ESTATAL', 'Instituto del Deporte del Estado de Campeche', 0, 486, 486, 1686),
(20, 'PODER EJECUTIVO ESTATAL', 'Sistema para el Desarrollo Integral de la Familia del Estado de Campeche', 4684, 14454, 14552, 26849),
(21, 'PODER EJECUTIVO ESTATAL', 'Promotora de Eventos Artísticos, Culturales y de Convenciones del Estado de Campeche', 769, 373, 488, 1152),
(22, 'PODER EJECUTIVO ESTATAL', 'Comisión de Agua Potable y Alcantarillado del Estado de Campeche', 23, 60, 94, 225),
(23, 'PODER EJECUTIVO ESTATAL', 'Sistema de Televisión y Radio de Campeche', 390, 533, 533, 533),
(24, 'PODER EJECUTIVO ESTATAL', 'Instituto de Servicios Descentralizados de Salud Pública del Estado de Campeche', 278, 172, 172, 172),
(25, 'PODER EJECUTIVO ESTATAL', 'Colegio de Bachilleres del Estado de Campeche', 108, 140, 167, 178),
(26, 'PODER EJECUTIVO ESTATAL', 'Instituto de Capacitación para el Trabajo del Estado de Campeche', 573, 573, 573, 573),
(27, 'PODER EJECUTIVO ESTATAL', 'Colegio de Educación Profesional Técnica del Estado', 451, 2121, 2121, 2121),
(28, 'PODER EJECUTIVO ESTATAL', 'Instituto de la Mujer del Estado', 2457, 3302, 3327, 3355),
(29, 'PODER EJECUTIVO ESTATAL', 'Hospital Psiquiátrico de Campeche', 273, 1353, 1392, 1392),
(30, 'PODER EJECUTIVO ESTATAL', 'Comisión Estatal de Desarrollo de Suelo y Vivienda ', 137, 4912, 4912, 4912),
(31, 'INSTITUCIONES DE EDUCACIÓN SUPERIOR AUTÓNOMAS', 'Universidad Autónoma de Campeche', 27970, 37145, 67542, 79430),
(32, 'PODER EJECUTIVO ESTATAL', 'Sistema de Atención a Niños, Niñas y Adolescentes Farmacodependientes del Estado, “Vida Nueva”', 803, 1159, 1159, 1159),
(33, 'PODER EJECUTIVO ESTATAL', 'Instituto de la Infraestructura Física Educativa del Estado de Campeche', 119, 394, 394, 394),
(34, 'PODER EJECUTIVO ESTATAL', 'Instituto de la Juventud del Estado de Campeche', 1106, 1059, 1059, 1140),
(35, 'PODER EJECUTIVO ESTATAL', 'Instituto de Información Estadística, Geográfica y Catastral del Estado de Campeche', 693, 1027, 1027, 1027),
(36, 'PODER EJECUTIVO ESTATAL', 'Colegio de Estudios Científicos y Tecnológicos del Estado', 884, 349, 353, 7887),
(37, 'INSTITUCIONES DE EDUCACIÓN SUPERIOR AUTÓNOMAS', 'Instituto Campechano', 10390, 10872, 10942, 12059),
(38, 'PODER EJECUTIVO ESTATAL', 'Instituto de Desarrollo y Formación Social del Estado', 749, 734, 836, 882),
(39, 'PODER EJECUTIVO ESTATAL', 'Universidad Tecnológica de Campeche', 946, 1375, 1375, 1396),
(40, 'PODER EJECUTIVO ESTATAL', 'Instituto Tecnológico Superior de Calkiní, en el Estado de Campeche', 324, 726, 726, 726),
(41, 'INSTITUCIONES DE EDUCACIÓN SUPERIOR AUTÓNOMAS', 'Universidad Autónoma del Carmen', 1014, 9413, 9419, 9915),
(42, 'PODER EJECUTIVO ESTATAL', 'Instituto Tecnológico Superior de Escárcega', 900, 908, 1009, 1009),
(43, 'PODER EJECUTIVO ESTATAL', 'Fundación Pablo García', 394, 394, 394, 394),
(44, 'PODER EJECUTIVO ESTATAL', 'Hospital Dr. Manuel Campos', 3529, 3502, 4292, 5745),
(45, 'FIDEICOMISOS Y FONDOS', 'Fondo Campeche', 2689, 2480, 2480, 3227),
(46, 'FIDEICOMISOS Y FONDOS', 'Fideicomiso del 2% sobre Nómina', 75, 243, 243, 243),
(47, 'PODER EJECUTIVO ESTATAL', 'Administración Portuaria Integral de Campeche, S.A. de C.V.', 16087, 31010, 31010, 39754),
(48, 'PODER LEGISLATIVO', 'H. Congreso del Estado de Campeche', 6709, 8408, 8609, 8668),
(49, 'PODER LEGISLATIVO', 'Auditoría Superior del Estado de Campeche', 5119, 3869, 3869, 4875),
(50, 'ÓRGANOS AUTÓNOMOS', 'Comisión de Derechos Humanos del Estado de Campeche', 520, 516, 516, 520),
(51, 'ÓRGANOS AUTÓNOMOS', 'Instituto Electoral del Estado de Campeche', 5562, 12006, 12006, 13141),
(52, 'ÓRGANOS AUTÓNOMOS', 'Comisión de Transparencia y Acceso a la Información Pública del Estado de Campeche', 1822, 1530, 1534, 2141),
(53, 'PODER JUDICIAL', 'H. Tribunal Superior de Justicia del Estado de Campeche', 12376, 13186, 13331, 14584),
(54, 'MUNICIPIOS', 'H. Ayuntamiento de Campeche', 405, 2484, 6446, 12298),
(55, 'PARAMUNICIPALES', 'Sistema para el Desarrollo Integral de la Familia en el Municipio de Campeche', 2118, 2525, 2528, 2620),
(56, 'PARAMUNICIPALES', 'Sistema Municipal de Agua Potable y Alcantarillado de Campeche ', 0, 0, 176, 176),
(57, 'MUNICIPIOS', 'H. Ayuntamiento de  Candelaria', 0, 166, 330, 336),
(58, 'PARAMUNICIPALES', 'Sistema para el Desarrollo Integral de la Familia en el Municipio de Candelaria', 806, 1277, 1285, 1285),
(59, 'PARAMUNICIPALES', 'Sistema de Agua Potable y Alcantarillado del Municipio de Candelaria', 0, 0, 32, 32),
(60, 'MUNICIPIOS', 'H. Ayuntamiento de  Champotón', 0, 0, 42, 498),
(61, 'PARAMUNICIPALES', 'Sistema para el Desarrollo Integral de la Familia en el Municipio de Champotón', 32, 32, 33, 33),
(62, 'PARAMUNICIPALES', 'Sistema de Agua Potable y Alcantarillado del Municipio de Champotón', 159, 336, 337, 337),
(63, 'MUNICIPIOS', 'H. Ayuntamiento de  Hopelchén', 333, 1462, 1595, 2029),
(64, 'PARAMUNICIPALES', 'Sistema para el Desarrollo Integral de la Familia del Municipio de Hopelchén', 372, 660, 660, 660),
(65, 'MUNICIPIOS', 'H. Ayuntamiento de Calkiní', 133, 5794, 5941, 5941),
(66, 'PARAMUNICIPALES', 'Sistema para el Desarrollo Integral de la Familia en el Municipio de Calkiní', 248, 287, 287, 287),
(67, 'PARAMUNICIPALES', 'Sistema de Agua Potable y Alcantarillado del Municipio de Calkiní', 0, 0, 0, 0),
(68, 'MUNICIPIOS', 'H. Ayuntamiento de  Tenabo', 102, 310, 343, 343),
(69, 'PARAMUNICIPALES', 'Sistema para el Desarrollo Integral de la Familia en el Municipio de Tenabo', 787, 913, 945, 971),
(70, 'MUNICIPIOS', 'H. Ayuntamiento de  Hecelchakán', 1405, 1871, 1871, 1871),
(71, 'PARAMUNICIPALES', 'Sistema para el Desarrollo Integral de la Familia en el Municipio de Hecelchakán', 0, 0, 3, 13),
(72, 'MUNICIPIOS', 'H. Ayuntamiento de  Palizada', 36, 176, 211, 211),
(73, 'PARAMUNICIPALES', 'Sistema para el Desarrollo Integral de la Familia en el Municipio de Palizada', 0, 0, 1, 1),
(74, 'MUNICIPIOS', 'H. Ayuntamiento de Carmen', 5612, 6017, 6038, 15494),
(75, 'PARAMUNICIPALES', 'Sistema para el Desarrollo Integral de la Familia en el Municipio de Carmen', 1504, 1505, 1505, 1505),
(76, 'PARAMUNICIPALES', 'Sistema Municipal de Agua Potable y Alcantarillado de Carmen', 6569, 6590, 6590, 7497),
(77, 'PARAMUNICIPALES', 'Instituto de la Mujer del Municipio de Carmen', 472, 724, 724, 725),
(78, 'PARAMUNICIPALES', 'Instituto de la Vivienda del Municipio de Carmen', 341, 341, 341, 341),
(79, 'PARAMUNICIPALES', 'Instituto de Planeación del Municipio de Carmen', 44, 44, 44, 44),
(80, 'MUNICIPIOS', 'H. Ayuntamiento de  Escárcega', 182, 2165, 2176, 2176),
(81, 'PARAMUNICIPALES', 'Sistema para el Desarrollo Integral de la Familia en el Municipio de Escárcega', 833, 1228, 1406, 1517),
(82, 'PARAMUNICIPALES', 'Sistema de Agua Potable y Alcantarillado del Municipio de Escárcega', 95, 219, 223, 264),
(83, 'MUNICIPIOS', 'H. Ayuntamiento de  Calakmul', 0, 0, 0, 0),
(84, 'PARAMUNICIPALES', 'Sistema para el Desarrollo Integral de la Familia en el Municipio de Calakmul', 802, 986, 986, 986),
(85, 'JUNTAS MUNICIPALES', 'H. Junta Municipal de Pich del Municipio de Campeche', 0, 12, 12, 12),
(86, 'JUNTAS MUNICIPALES', 'H. Junta Municipal de Tixmucuy del Municipio de Campeche', 0, 12, 12, 12),
(87, 'JUNTAS MUNICIPALES', 'H. Junta Municipal de Alfredo V. Bonfil del Municipio de Campeche', 0, 0, 0, 0),
(88, 'JUNTAS MUNICIPALES', 'H. Junta Municipal de Hampolol del Municipio de Campeche', 0, 0, 0, 0),
(89, 'JUNTAS MUNICIPALES', 'H. Junta Municipal de Atasta del Municipio de Carmen', 166, 166, 166, 166),
(90, 'JUNTAS MUNICIPALES', 'H. Junta Municipal de Sabancuy del Municipio de Carmen', 0, 0, 0, 0),
(91, 'JUNTAS MUNICIPALES', 'H. Junta Municipal de Mamantel del Municipio de Carmen', 0, 0, 0, 0),
(92, 'JUNTAS MUNICIPALES', 'H. Junta Municipal de Seybaplaya del Municipio de Champotón', 0, 0, 0, 0),
(93, 'JUNTAS MUNICIPALES', 'H. Junta Municipal de Hool del Municipio de Champotón', 13, 7, 31, 31),
(94, 'JUNTAS MUNICIPALES', 'H. Junta Municipal de Felipe Carrillo Puerto del Municipio de Champotón', 0, 0, 0, 0),
(95, 'JUNTAS MUNICIPALES', 'H. Junta Municipal de Sihochac del Municipio de Champotón', 0, 0, 0, 0),
(96, 'JUNTAS MUNICIPALES', 'H. Junta Municipal de Bécal del Municipio de Calkiní', 0, 0, 0, 0),
(97, 'JUNTAS MUNICIPALES', 'H. Junta Municipal de Dzitbalché del Municipio de Calkiní', 0, 0, 1, 4),
(98, 'JUNTAS MUNICIPALES', 'H. Junta Municipal de Nunkiní del Municipio de Calkiní', 0, 0, 0, 0),
(99, 'JUNTAS MUNICIPALES', 'H. Junta Municipal de Dzibalchén del Municipio de Hopelchén', 173, 173, 173, 173),
(100, 'JUNTAS MUNICIPALES', 'H. Junta Municipal de Bolonchén de Rejón del Municipio de Hopelchén', 0, 0, 1, 1),
(101, 'JUNTAS MUNICIPALES', 'H. Junta Municipal de Tinún del Municipio de Tenabo', 0, 0, 191, 222),
(102, 'JUNTAS MUNICIPALES', 'H. Junta Municipal de Pomuch del Municipio de Hecelchakán', 0, 47, 54, 54),
(103, 'JUNTAS MUNICIPALES', 'H. Junta Municipal de Centenario del Municipio de Escárcega', 16, 37, 37, 37),
(104, 'JUNTAS MUNICIPALES', 'H. Junta Municipal de Constitución del Municipio de Calakmul', 456, 490, 490, 490),
(105, 'PODER EJECUTIVO ESTATAL', 'Instituto Tecnológico Superior de Champotón', 0, 0, 0, 0),
(106, 'PODER EJECUTIVO ESTATAL', 'Consejo Estatal de Investigación Científica y Desarrollo Tecnológico del Estado de Campeche', 14, 15, 16, 33),
(107, 'PODER EJECUTIVO ESTATAL', 'Secretaría de Administración e Innovación Gubernamental', 2982, 2737, 4226, 5515),
(108, 'PODER EJECUTIVO ESTATAL', 'Consejería Jurídica', 1040, 999, 1046, 1408),
(109, 'PARAMUNICIPALES', 'Instituto del Deporte y de la Juventud del Municipio de Carmen', 0, 253, 782, 782),
(110, 'PODER EJECUTIVO ESTATAL', 'Instituto de Acceso a la Justicia del Estado de Campeche', 1, 186, 186, 186),
(111, 'PODER EJECUTIVO ESTATAL', 'Universidad Tecnológica de Candelaria', 451, 745, 745, 745),
(112, 'ÓRGANOS AUTÓNOMOS', 'Tribunal Electoral del Estado de Campeche', 2431, 2869, 3220, 4224),
(113, 'PODER EJECUTIVO ESTATAL', 'Instituto Tecnológico de Educación Superior de Hopelchén', 505, 505, 505, 578),
(114, 'PODER EJECUTIVO ESTATAL', 'Universidad Tecnológica de Calakmul', 556, 623, 623, 623),
(115, 'PODER EJECUTIVO ESTATAL', 'Secretaría de Planeación', 2236, 2003, 2043, 2672),
(116, 'PODER EJECUTIVO ESTATAL', 'Secretaría de Desarrollo Energético Sustentable', 388, 553, 576, 576),
(117, 'AUTORIDADES ADMINISTRATIVAS Y JURISDICCIONALES EN MATERIA LABORAL', 'Secretaría del Trabajo y Previsión Social', 172, 114, 405, 2133),
(118, 'PODER EJECUTIVO ESTATAL', 'Secretaría de Protección Civil', 552, 552, 552, 552),
(119, 'PODER EJECUTIVO ESTATAL', 'Régimen Estatal de Protección Social en Salud (Seguro Popular)', 2415, 4212, 44283, 84726),
(120, 'PODER EJECUTIVO ESTATAL', 'Promotora para la Conservación y Desarrollo Sustentable del Estado del Campeche, Ximbal.', 1762, 2130, 2130, 2667),
(121, 'PARTIDOS POLÍTICOS', 'Partido Acción Nacional (PAN)', 0, 0, 0, 0),
(122, 'PARTIDOS POLÍTICOS', 'Partido Revolucionario Institucional (PRI)', 762, 1889, 2099, 2099),
(123, 'PARTIDOS POLÍTICOS', 'Partido de la Revolución Democrática (PRD)', 4121, 4121, 4121, 4121),
(124, 'PARTIDOS POLÍTICOS', 'Partido Verde Ecologista de México (PVEM)', 0, 0, 1, 1),
(125, 'PARTIDOS POLÍTICOS', 'Movimiento Ciudadano', 0, 0, 0, 0),
(126, 'PARTIDOS POLÍTICOS', 'Nueva Alianza', 343, 451, 588, 683),
(127, 'PARTIDOS POLÍTICOS', 'Morena', 18, 72, 72, 72),
(128, 'PARTIDOS POLÍTICOS', 'Partido del Trabajo', 0, 372, 372, 676),
(129, 'PARTIDOS POLÍTICOS', 'Encuentro Social', 0, 0, 14, 14),
(130, 'PARTIDOS POLÍTICOS', 'Frente Campechano en Movimiento', 35, 35, 35, 35),
(131, 'SINDICATOS', 'Sindicato Único de Trabajadores del Colegio de Bachilleres del Estado de Campeche', 0, 20, 20, 20),
(132, 'SINDICATOS', 'Sindicato Único de Trabajadores del Colegio de Estudios Científicos y Tecnológicos del Estado de Campeche', 124, 124, 124, 124),
(133, 'SINDICATOS', 'Sindicato Único del Personal Académico, Administrativo Manual  y Apoyo del Colegio de Estudio Científicos y Tecnológicos del Estado de Campeche', 0, 0, 15, 26),
(134, 'SINDICATOS', 'Sindicato Único de Trabajadores de la Universidad Tecnológica de Campeche', 0, 0, 1, 54),
(135, 'SINDICATOS', 'Sindicato Único de Personal Docente del Colegio de Educación Profesional y Técnica del Estado de Campeche', 0, 0, 0, 0),
(136, 'SINDICATOS', 'Sindicato Único de Trabajadores del Gobierno del Estado al Servicio de la Educación.', 0, 0, 0, 0),
(137, 'SINDICATOS', 'Sindicato Único de Personal Académico de la Universidad Autónoma de Campeche.', 79, 97, 97, 130),
(138, 'SINDICATOS', 'Sindicato Único de Trabajadores, Administrativos, de Intendencia y Similares de la Universidad Autónoma de Campeche.', 138, 138, 138, 158),
(139, 'SINDICATOS', 'Sindicato Único de Trabajadores Académicos, Administrativos y Manuales del Instituto Campechano', 1, 34, 34, 34),
(140, 'SINDICATOS', 'Sindicato Único de Trabajadores de la Universidad Autónoma del Carmen.', 0, 0, 1, 1),
(141, 'SINDICATOS', 'Sindicato Único de Trabajadores al Servicio de los Poderes, Municipios, e Instituciones Descentralizadas del Estado de Campeche', 0, 0, 0, 0),
(142, 'SINDICATOS', 'Sindicato Único de Trabajadores al Servicio del Gobierno Municipal ', 0, 38, 38, 38),
(143, 'SINDICATOS', 'Sindicato Único de Trabajadores de Base del H. Ayuntamiento, Juntas y Comisarias Municipales del Municipio del Carmen.', 272, 204, 204, 416),
(144, 'AUTORIDADES ADMINISTRATIVAS Y JURISDICCIONALES EN MATERIA LABORAL', 'Junta Local de Conciliación y Arbitraje del Estado de Campeche', 861, 861, 861, 914),
(145, 'PODER EJECUTIVO ESTATAL', 'Comisión de Arbitraje Médico', 174, 105, 117, 198),
(146, 'PODER EJECUTIVO ESTATAL', 'Oficina del Gobernador', 313, 476, 495, 822),
(256, 'categoria', 'nombre', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0sh96uasor9rgdrc3deo5vu619e1un5f', '::1', 1584992219, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343939323231393b),
('rp3ak1o0o1codf62fb1clalism2ur2o5', '::1', 1584992520, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343939323532303b),
('a5q92e3mkobn26u537ncdn5h6tnhh8rl', '::1', 1584992828, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343939323832383b),
('14f19cvt2t99ejc7ud4hbtd4s3kdg17r', '::1', 1584993223, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343939333232333b),
('fgnlhnlnkqho74h3oqg4tbqaa0qok0r8', '::1', 1584993603, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343939333630333b),
('u1u4cqshj1nbnefld6a8lecsr3jffack', '::1', 1584993929, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343939333932393b),
('cu211p1jv28qcn4ftgbh2spsq86amcfb', '::1', 1584994253, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343939343235333b),
('uv4sm03dcl6nd48ju9oaoe01mun8lbsk', '::1', 1584994348, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343939343235333b);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `control_ai`
--

CREATE TABLE `control_ai` (
  `control_ai_img` int(5) NOT NULL,
  `contador_id_img` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `control_ai`
--

INSERT INTO `control_ai` (`control_ai_img`, `contador_id_img`) VALUES
(1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes_noticias`
--

CREATE TABLE `imagenes_noticias` (
  `id_img_noticia` int(11) NOT NULL,
  `id_noticia` int(11) NOT NULL,
  `nombre_img_noticia` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `activo_img_noticia` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `imagenes_noticias`
--

INSERT INTO `imagenes_noticias` (`id_img_noticia`, `id_noticia`, `nombre_img_noticia`, `activo_img_noticia`) VALUES
(1, 1, 'simbolos001.jpg', 0),
(2, 2, 'simbolos005.jpg', 0),
(3, 3, 'no_info003.jpg', 1),
(4, 4, 'simbolos001png004.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id_noticia` int(11) NOT NULL,
  `fecha_not` date NOT NULL,
  `titulo_not` text COLLATE utf8_spanish_ci NOT NULL,
  `contenido_not` text COLLATE utf8_spanish_ci NOT NULL,
  `contenido_full` varchar(3000) COLLATE utf8_spanish_ci NOT NULL,
  `url_descarga` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `activo_not` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id_noticia`, `fecha_not`, `titulo_not`, `contenido_not`, `contenido_full`, `url_descarga`, `activo_not`) VALUES
(1, '2017-02-17', 'Interpretar Errores en columnas', 'Conoce como identificar en que columna se encuentran los errores al cargar información.', '¿Sabes a que se refiere el siguiente error?:  [Reporte de formatos, 8, ^] - for input string: \" \". \r\n\r\nAl intentar subir la información, en muchas ocasiones se generan mensajes de error con algunos símbolos extraños (tal como el caso del \"^\" que se presenta anteriormente.) en la posición en que se indica la columna en la que se generó el problema que impide la carga, por lo que resulta difícil de interpretar y saber exactamente a que columna se refiere estos símbolos. \r\nPor esta razón, el INAI, proporcionó una tabla con la lista de equivalencias, que será de gran utilidad para interpretar estos errores y solucionarlos. A continuación se presenta la liga para descargar este archivo:', 'http://mspnt.cotaipec.org.mx/assets/uploads/archivos_noticias/tabla_equivalencias_sipot.xlsx', 0),
(2, '2017-02-20', 'Carga por lotes', 'Nueva modalidad para carga de información.', 'La carga de la información por lotes, es otra modalidad de carga de datos en la que el usuario no tiene que esperar a que se lleve a cabo la validación de cada uno de los registros que contiene el formato (por lo que el usuario puede continuar trabajando en otras actividades), es decir, permite subir el archivo a la PNT y dejar el archivo en cola, mientras se realiza la validación. Sin embargo, esta modalidad de carga, no significa que la información se guarde en la PNT de manera exitosa en el primer intento, es decir, el usuario requiere verificar el estado de la carga (misma que puede tardar hasta 48 hrs en procesarse, dependiendo del volumen de la información) y en caso que el formato presente errores, es necesario corregirlos y nuevamente cargar la información.', 'http://mspnt.cotaipec.org.mx/assets/uploads/archivos_noticias/manual_carga_lotes.pdf', 0),
(3, '2017-08-07', 'Información cargada no se muestra en Consulta Pública SIPOT', '¿Cargaste información y ésta aun no se visualiza en la PNT?', 'Al cargar información en la Plataforma Nacional de Transparencia, ésta no se muestra en la consulta pública del SIPOT de manera inmediata. Lo anterior se debe a que es parte del proceso de actualización determinado por el INAI, debido a que la consulta pública, utiliza una base de datos de días anteriores, reservando el proceso de actualización para los días miércoles y viernes por la noche, por lo que los cambios en tu información, se visualicen hasta los días jueves o lunes (toda vez que se haya actualizado la base de datos).', '', 1),
(4, '2018-03-06', 'MEJORAS AL SIPOT', 'Conoce las mejoras realizadas al Sistema de Portales de Obligaciones de Transparencia ', 'A partir del primer día de enero de 2018, el Sistema de Obligaciones de Transparencia (SIPOT) presentó cambios que representan mejoras para los sujetos obligados. \r\nAlgunas de las mejoras de esta nueva interfaz, son las siguientes:\r\n', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_user` int(3) NOT NULL,
  `nombre_user` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `ap_p_user` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `app_m_user` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `correo_user` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `usuario` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `nivel_user` int(1) NOT NULL,
  `user_activo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_user`, `nombre_user`, `ap_p_user`, `app_m_user`, `correo_user`, `usuario`, `password`, `nivel_user`, `user_activo`) VALUES
(1, 'Ricardo Manuel', 'Chi', 'Gallardo', 'rgallardo_21@hotmail.com', 'rgallardo', '20098310', 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carga_stat`
--
ALTER TABLE `carga_stat`
  ADD PRIMARY KEY (`id_so`);

--
-- Indices de la tabla `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indices de la tabla `control_ai`
--
ALTER TABLE `control_ai`
  ADD PRIMARY KEY (`control_ai_img`);

--
-- Indices de la tabla `imagenes_noticias`
--
ALTER TABLE `imagenes_noticias`
  ADD PRIMARY KEY (`id_img_noticia`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id_noticia`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carga_stat`
--
ALTER TABLE `carga_stat`
  MODIFY `id_so` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;
--
-- AUTO_INCREMENT de la tabla `control_ai`
--
ALTER TABLE `control_ai`
  MODIFY `control_ai_img` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `imagenes_noticias`
--
ALTER TABLE `imagenes_noticias`
  MODIFY `id_img_noticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id_noticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_user` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

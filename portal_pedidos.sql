-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:33065
-- Tiempo de generación: 16-08-2020 a las 21:53:19
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
-- Base de datos: `portal_pedidos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_producto_menu`
--

CREATE TABLE `categoria_producto_menu` (
  `id_categoria` int(11) NOT NULL,
  `descripcion` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categoria_producto_menu`
--

INSERT INTO `categoria_producto_menu` (`id_categoria`, `descripcion`) VALUES
(1, 'Desayuno'),
(2, 'Almuerzo'),
(3, 'Cena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id_ciudad` int(11) NOT NULL,
  `nombre_ciudad` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_municipio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`id_ciudad`, `nombre_ciudad`, `id_municipio`) VALUES
(1, 'San Francisco de Campeche', 3),
(2, 'Ciudad del Carmen', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre_cte` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `app_p_cte` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `app_m_cte` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion_enrega_cte` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `correo_cte` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_datos_fac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

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
(1, 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_factura`
--

CREATE TABLE `datos_factura` (
  `id_datos_fac` int(11) NOT NULL,
  `rfc_fac` varchar(13) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre_fac` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dirección_fac` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL,
  `correo_fac` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_comida`
--

CREATE TABLE `empresa_comida` (
  `id_empresa` int(11) NOT NULL,
  `nombre_emp` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rfc_emp` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rsocial_emp` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion_emp` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `horario_emp` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `horario_emp2` int(2) NOT NULL,
  `desayuno` int(1) NOT NULL,
  `almuerzo` int(1) NOT NULL,
  `cena` int(1) NOT NULL,
  `activo` int(1) DEFAULT '0',
  `id_estado` int(11) NOT NULL,
  `id_municipio` int(11) NOT NULL,
  `id_ciudad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `empresa_comida`
--

INSERT INTO `empresa_comida` (`id_empresa`, `nombre_emp`, `rfc_emp`, `rsocial_emp`, `direccion_emp`, `horario_emp`, `horario_emp2`, `desayuno`, `almuerzo`, `cena`, `activo`, `id_estado`, `id_municipio`, `id_ciudad`) VALUES
(1, 'La pagoda', 'PAG03838383RG7', 'Comensales campeche', 'Calle 57 entre 12 y 14 Col. Centro', '1', 15, 1, 2, 0, 1, 3, 11, 2),
(3, 'Desayunos de Campeche', 'MAUR939393HF7', 'Rosmery Dianey Barredo Paat', 'Col. Centro', '3', 17, 0, 2, 3, 1, 1, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id_estado` int(2) NOT NULL,
  `nombre_estado` varchar(40) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id_estado`, `nombre_estado`) VALUES
(1, 'Campeche'),
(2, 'Yucatán'),
(3, 'Tabasco'),
(4, 'mexico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes_productos`
--

CREATE TABLE `imagenes_productos` (
  `id_img_prod` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `nombre_img_prod` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `activo_img_prod` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `imagenes_productos`
--

INSERT INTO `imagenes_productos` (`id_img_prod`, `id_producto`, `id_empresa`, `nombre_img_prod`, `activo_img_prod`) VALUES
(12, 13, 3, 'agua-de-naranja-receta-originalpng012.jpg', 1),
(13, 15, 3, 'agua_pina013.jpg', 1),
(15, 16, 3, 'pech_parmesana015.jpg', 1),
(16, 12, 3, 'pechugas_rellenas016.jpg', 1),
(17, 19, 3, 'pay-de-manzana017.jpg', 1),
(18, 18, 3, 'papas018.jpg', 1),
(19, 17, 3, 'agua-de-naranja-receta-originalpng019.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logo_empresa`
--

CREATE TABLE `logo_empresa` (
  `id_logo` int(11) NOT NULL,
  `nombre_logo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  `activo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `logo_empresa`
--

INSERT INTO `logo_empresa` (`id_logo`, `nombre_logo`, `id_empresa`, `activo`) VALUES
(1, 'empresa-de-ricardo.jpg', 1, 1),
(3, 'empresa-de-mauricio.jpg', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `id_municipio` int(11) NOT NULL,
  `nombre_muni` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`id_municipio`, `nombre_muni`, `id_estado`) VALUES
(1, 'Calakmul', 1),
(2, 'Calkiní', 1),
(3, 'Campeche', 1),
(4, 'Candelaria', 1),
(5, 'Carmen', 1),
(6, 'Champotón', 1),
(7, 'Escárcega', 1),
(8, 'Hecelchakán', 1),
(9, 'Palizada', 1),
(10, 'Tenabo', 1),
(11, 'Hopelchén', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id_cliente` int(11) NOT NULL,
  `id_producto_menu` int(11) NOT NULL,
  `cantidad_ped` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_usuario`
--

CREATE TABLE `perfil_usuario` (
  `id_perfil_user` int(11) NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `perfil_usuario`
--

INSERT INTO `perfil_usuario` (`id_perfil_user`, `descripcion`) VALUES
(1, 'Administrador con privilegios ROOT'),
(2, 'Administrador nivel empresa'),
(3, 'Clientes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_menu`
--

CREATE TABLE `productos_menu` (
  `id_producto` int(11) NOT NULL,
  `nombre_prod` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion_prod` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio_prod` int(11) DEFAULT NULL,
  `id_tipo_producto` int(11) NOT NULL,
  `id_categoria_prod` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `activo_prod` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos_menu`
--

INSERT INTO `productos_menu` (`id_producto`, `nombre_prod`, `descripcion_prod`, `precio_prod`, `id_tipo_producto`, `id_categoria_prod`, `id_empresa`, `activo_prod`) VALUES
(12, 'Pechugas rellenas', 'Deliciosas pechugas rellenas con jamón y queso manchego, acompañado de tortillas y vegetales al vapor', 70, 1, 2, 3, 1),
(13, 'Agua de Naranja', 'Agua de naranja presentación de 1 litro.', 25, 2, 2, 3, 1),
(15, 'Agua de Piña', 'Agua de piña, presentación de 1 litro.', 25, 2, 2, 3, 1),
(16, 'Pechugas a la parmesana', 'Deliciosas pechugas rellenas con queso parmesano, acompañado de verduras al vapor, arroz, frijol y tortillas.', 70, 1, 2, 3, 1),
(17, 'Agua de Melón', 'Deliciosa y refrescante agua de  melón. Contenido 1 litro', 25, 2, 2, 3, 1),
(18, 'Papas a la francesa', 'Deliciosas papas a la Francesa, el complemento ideal para acompañar su pedido.', 35, 4, 2, 3, 1),
(19, 'Pay de Manzana', 'Delicioso postre de Manzana, el complemento ideal para después de tus comidas', 35, 3, 2, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion`
--

CREATE TABLE `promocion` (
  `id_promo` int(11) NOT NULL,
  `descrip_promo` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `vigente_promo` int(11) DEFAULT NULL,
  `fec_ini_promo` date DEFAULT NULL,
  `fec_fin_promo` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefonos`
--

CREATE TABLE `telefonos` (
  `id_telefono` int(11) NOT NULL,
  `tel_cel` varchar(21) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tel_casa` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `activo` int(1) DEFAULT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `telefonos`
--

INSERT INTO `telefonos` (`id_telefono`, `tel_cel`, `tel_casa`, `activo`, `id_cliente`, `id_empresa`) VALUES
(1, '2222222222222jgjhg', '22222222khhkkjhk', 0, 0, 1),
(2, '111111111111111111', '11111111111111', 1, 0, 1),
(4, '88888888888888888', '888888888888888', 0, 0, 2),
(5, '2222222222jhiuk', '2222222gfghgfhg', 1, 0, 2),
(6, '333333333333', '33333333333333333', 1, 0, 2),
(7, '83838383', '8383838', 1, 0, 2),
(8, 'chi Gallardo', 'ricardo manuel', 1, 0, 2),
(9, 'diany', 'diany', 1, 0, 1),
(10, 'rosmy', 'diany ', 1, 0, 1),
(11, 'chi', 'ricardo', 1, 0, 1),
(12, '811271780811271780', '811271780811271780', 1, 0, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_producto_menu`
--

CREATE TABLE `tipo_producto_menu` (
  `id_tipo_producto` int(11) NOT NULL,
  `tipo_producto_menu` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_producto_menu`
--

INSERT INTO `tipo_producto_menu` (`id_tipo_producto`, `tipo_producto_menu`) VALUES
(1, 'Alimentos'),
(2, 'Bebidas'),
(3, 'Postres'),
(4, 'Complementos');

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
  `user_activo` int(1) NOT NULL,
  `id_empresa` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_user`, `nombre_user`, `ap_p_user`, `app_m_user`, `correo_user`, `usuario`, `password`, `nivel_user`, `user_activo`, `id_empresa`) VALUES
(1, 'Ricardo M.', 'Chi', 'Gallardo', 'rgallardo_21@hotmail.com', 'root', '20098310', 1, 1, 1),
(2, 'Rosmery Dianey', 'Barredo', 'Paat', 'diany_barredo@hotmail.com', 'dbarredo', '20098310', 2, 1, 3),
(3, 'Ricardo Manuel', 'Chi', 'Gallardo', 'dbs121301@gmail.com', 'rgallardo', '20098310', 2, 1, 8);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria_producto_menu`
--
ALTER TABLE `categoria_producto_menu`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id_ciudad`),
  ADD KEY `fk_ciudad_Municipios1_idx` (`id_municipio`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `fk_clientes_datos_factura1_idx` (`id_datos_fac`);

--
-- Indices de la tabla `control_ai`
--
ALTER TABLE `control_ai`
  ADD PRIMARY KEY (`control_ai_img`);

--
-- Indices de la tabla `datos_factura`
--
ALTER TABLE `datos_factura`
  ADD PRIMARY KEY (`id_datos_fac`);

--
-- Indices de la tabla `empresa_comida`
--
ALTER TABLE `empresa_comida`
  ADD PRIMARY KEY (`id_empresa`),
  ADD KEY `fk_empresa_comida_estados1_idx` (`id_estado`),
  ADD KEY `fk_empresa_comida_Municipios1_idx` (`id_municipio`),
  ADD KEY `fk_empresa_comida_ciudad1_idx` (`id_ciudad`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `imagenes_productos`
--
ALTER TABLE `imagenes_productos`
  ADD PRIMARY KEY (`id_img_prod`);

--
-- Indices de la tabla `logo_empresa`
--
ALTER TABLE `logo_empresa`
  ADD PRIMARY KEY (`id_logo`),
  ADD KEY `id_empresa` (`id_empresa`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id_municipio`),
  ADD KEY `fk_Municipios_estados1_idx` (`id_estado`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_cliente`,`id_producto_menu`),
  ADD KEY `fk_clientes_has_productos_menu_productos_menu1_idx` (`id_producto_menu`),
  ADD KEY `fk_clientes_has_productos_menu_clientes1_idx` (`id_cliente`);

--
-- Indices de la tabla `perfil_usuario`
--
ALTER TABLE `perfil_usuario`
  ADD PRIMARY KEY (`id_perfil_user`);

--
-- Indices de la tabla `productos_menu`
--
ALTER TABLE `productos_menu`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `fk_productos_menu_tipo_producto_menu1_idx` (`id_tipo_producto`),
  ADD KEY `fk_productos_menu_empresa_comida1_idx` (`id_empresa`),
  ADD KEY `id_categoria_prod` (`id_categoria_prod`);

--
-- Indices de la tabla `promocion`
--
ALTER TABLE `promocion`
  ADD PRIMARY KEY (`id_promo`);

--
-- Indices de la tabla `telefonos`
--
ALTER TABLE `telefonos`
  ADD PRIMARY KEY (`id_telefono`),
  ADD KEY `fk_telefonos_clientes1_idx` (`id_cliente`);

--
-- Indices de la tabla `tipo_producto_menu`
--
ALTER TABLE `tipo_producto_menu`
  ADD PRIMARY KEY (`id_tipo_producto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria_producto_menu`
--
ALTER TABLE `categoria_producto_menu`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id_ciudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `control_ai`
--
ALTER TABLE `control_ai`
  MODIFY `control_ai_img` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `datos_factura`
--
ALTER TABLE `datos_factura`
  MODIFY `id_datos_fac` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `empresa_comida`
--
ALTER TABLE `empresa_comida`
  MODIFY `id_empresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `id_estado` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `imagenes_productos`
--
ALTER TABLE `imagenes_productos`
  MODIFY `id_img_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `logo_empresa`
--
ALTER TABLE `logo_empresa`
  MODIFY `id_logo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `municipios`
--
ALTER TABLE `municipios`
  MODIFY `id_municipio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `perfil_usuario`
--
ALTER TABLE `perfil_usuario`
  MODIFY `id_perfil_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `productos_menu`
--
ALTER TABLE `productos_menu`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `promocion`
--
ALTER TABLE `promocion`
  MODIFY `id_promo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `telefonos`
--
ALTER TABLE `telefonos`
  MODIFY `id_telefono` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `tipo_producto_menu`
--
ALTER TABLE `tipo_producto_menu`
  MODIFY `id_tipo_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_user` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `fk_ciudad_Municipios1` FOREIGN KEY (`id_municipio`) REFERENCES `municipios` (`id_municipio`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `fk_clientes_datos_factura1` FOREIGN KEY (`id_datos_fac`) REFERENCES `datos_factura` (`id_datos_fac`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `empresa_comida`
--
ALTER TABLE `empresa_comida`
  ADD CONSTRAINT `fk_empresa_comida_Municipios1` FOREIGN KEY (`id_municipio`) REFERENCES `municipios` (`id_municipio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_empresa_comida_ciudad1` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudad` (`id_ciudad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_empresa_comida_estados1` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id_estado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `logo_empresa`
--
ALTER TABLE `logo_empresa`
  ADD CONSTRAINT `logo_empresa_ibfk_1` FOREIGN KEY (`id_empresa`) REFERENCES `empresa_comida` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD CONSTRAINT `fk_Municipios_estados1` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id_estado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `fk_clientes_has_productos_menu_clientes1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_clientes_has_productos_menu_productos_menu1` FOREIGN KEY (`id_producto_menu`) REFERENCES `productos_menu` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

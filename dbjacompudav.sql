/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : dbjacompudav

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2018-01-13 11:12:33
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'e00cf25ad42683b3df678c61f42c6bda');
INSERT INTO `admin` VALUES ('2', 'juanita', 'e00cf25ad42683b3df678c61f42c6bda');

-- ----------------------------
-- Table structure for `categoria`
-- ----------------------------
DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria` (
  `idCate` char(4) NOT NULL,
  `NomCate` varchar(100) NOT NULL,
  PRIMARY KEY (`idCate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of categoria
-- ----------------------------
INSERT INTO `categoria` VALUES ('K001', 'Computadoras');
INSERT INTO `categoria` VALUES ('K002', 'Teclados');
INSERT INTO `categoria` VALUES ('K003', 'Tarjetas de Video');
INSERT INTO `categoria` VALUES ('K004', 'Audio Y Video');
INSERT INTO `categoria` VALUES ('K005', 'Cartuchos');
INSERT INTO `categoria` VALUES ('K006', 'Mouse');
INSERT INTO `categoria` VALUES ('K007', 'Impresoras');
INSERT INTO `categoria` VALUES ('K010', 'Disenos');
INSERT INTO `categoria` VALUES ('K008', 'Flash Memory');

-- ----------------------------
-- Table structure for `categoriaservicio`
-- ----------------------------
DROP TABLE IF EXISTS `categoriaservicio`;
CREATE TABLE `categoriaservicio` (
  `idCate` char(4) NOT NULL,
  `NomCate` varchar(100) NOT NULL,
  PRIMARY KEY (`idCate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of categoriaservicio
-- ----------------------------
INSERT INTO `categoriaservicio` VALUES ('KS02', 'Disenos');
INSERT INTO `categoriaservicio` VALUES ('KS01', 'Trabajo Office');

-- ----------------------------
-- Table structure for `ciudad`
-- ----------------------------
DROP TABLE IF EXISTS `ciudad`;
CREATE TABLE `ciudad` (
  `idCiudad` char(4) NOT NULL,
  `id_prov` char(3) NOT NULL,
  `NomCiudad` char(30) NOT NULL,
  PRIMARY KEY (`idCiudad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ciudad
-- ----------------------------
INSERT INTO `ciudad` VALUES ('C001', 'P01', 'Esmeraldas');
INSERT INTO `ciudad` VALUES ('C002', 'P02', 'Santo Domingo');
INSERT INTO `ciudad` VALUES ('C003', 'P02', 'La Concordia');
INSERT INTO `ciudad` VALUES ('C004', 'P04', 'Guayaquil');

-- ----------------------------
-- Table structure for `clientes`
-- ----------------------------
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `idCliente` char(6) NOT NULL,
  `NomCliente` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Sexo` char(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Mobil` varchar(20) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `InfAdicional` text NOT NULL,
  `idCiudad` char(4) NOT NULL,
  `id_prov` char(4) NOT NULL,
  `CodigoPostal` varchar(30) NOT NULL,
  `idDistrito` char(4) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(5) NOT NULL,
  `kode_aktivasi` varchar(100) NOT NULL,
  `Fecha` date NOT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of clientes
-- ----------------------------
INSERT INTO `clientes` VALUES ('C00001', 'Juanita', 'Apugllon', 'Femenino', 'juanis@hotmail.com', '023761690', '0997685400', 'acacias', '', 'C002', 'P02', '00051', 'L01', 'juanita', '202cb962ac59075b964b07152d234b70', 'N', '1q7akKb5QR', '2018-01-04');
INSERT INTO `clientes` VALUES ('C00003', 'Walther', 'Culqui', 'Masculino', 'walter@uniandes.com', '00000000', '00000000', 'Ambato', '', 'C002', 'P02', ' ', 'L01', 'Walther', '202cb962ac59075b964b07152d234b70', 'N', '0lTaS4TjBR', '2018-01-05');
INSERT INTO `clientes` VALUES ('C00002', 'David', 'Apugllon', 'Masculino', 'david@hotmail.com', '23761690', '0997685400', 'acacias', '', 'C002', 'P02', ' ', 'L03', 'David', '202cb962ac59075b964b07152d234b70', 'N', 'SWmAu6cRoc', '2018-01-04');

-- ----------------------------
-- Table structure for `colocarcanasta`
-- ----------------------------
DROP TABLE IF EXISTS `colocarcanasta`;
CREATE TABLE `colocarcanasta` (
  `id` char(10) NOT NULL,
  `idProducto` char(5) NOT NULL,
  `idSer` char(5) NOT NULL,
  `idCliente` char(6) NOT NULL,
  `Fecha` date NOT NULL DEFAULT '0000-00-00',
  `NomCliente` varchar(100) NOT NULL,
  `Cantidad` int(5) NOT NULL DEFAULT '0',
  `Descripcion` char(100) NOT NULL,
  `Precio` int(12) NOT NULL,
  `IdRes` char(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=160 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of colocarcanasta
-- ----------------------------
INSERT INTO `colocarcanasta` VALUES ('CC00000007', 'B0011', '', 'C00001', '2018-01-13', 'juanita', '1', '', '12', '');
INSERT INTO `colocarcanasta` VALUES ('CC00000005', 'B0003', '', 'C00002', '2018-01-13', 'David', '3', '', '18', '');
INSERT INTO `colocarcanasta` VALUES ('CC00000006', 'B0004', '', 'C00001', '2018-01-13', 'juanita', '1', '', '800', '');

-- ----------------------------
-- Table structure for `confirmacion`
-- ----------------------------
DROP TABLE IF EXISTS `confirmacion`;
CREATE TABLE `confirmacion` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `SReserva` varchar(8) NOT NULL,
  `NomCliente` varchar(100) NOT NULL,
  `NomBanco` varchar(12) NOT NULL,
  `CantTransf` int(12) NOT NULL,
  `Descripcion` text NOT NULL,
  `Fecha` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of confirmacion
-- ----------------------------

-- ----------------------------
-- Table structure for `distrito`
-- ----------------------------
DROP TABLE IF EXISTS `distrito`;
CREATE TABLE `distrito` (
  `id_prov` char(3) NOT NULL,
  `idCiudad` char(4) NOT NULL,
  `idDistrito` char(5) NOT NULL,
  `NombreDistrito` char(20) NOT NULL,
  PRIMARY KEY (`idDistrito`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of distrito
-- ----------------------------
INSERT INTO `distrito` VALUES ('P02', 'C002', 'L01', 'Bomboli');
INSERT INTO `distrito` VALUES ('P02', 'C002', 'L03', 'Abrahan Calazacon');

-- ----------------------------
-- Table structure for `pedidos`
-- ----------------------------
DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE `pedidos` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `SReserva` char(8) NOT NULL,
  `idProducto` char(5) NOT NULL,
  `Pago` varchar(100) NOT NULL,
  `Precio` int(12) NOT NULL,
  `Cantidad` int(3) NOT NULL DEFAULT '1',
  `IdRes` char(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pedidos
-- ----------------------------
INSERT INTO `pedidos` VALUES ('71', 'R0000001', 'B0011', 'Transferencia Bancaria', '12', '1', '');
INSERT INTO `pedidos` VALUES ('72', 'R0000001', 'B0003', 'Transferencia Bancaria', '18', '1', '');
INSERT INTO `pedidos` VALUES ('73', 'R0000001', 'B0004', 'Transferencia Bancaria', '800', '1', '');
INSERT INTO `pedidos` VALUES ('74', 'R0000001', '', 'Transferencia Bancaria', '5', '1', 'S006');
INSERT INTO `pedidos` VALUES ('75', 'R0000002', 'B0008', 'Transferencia Bancaria', '30', '1', '');
INSERT INTO `pedidos` VALUES ('76', 'R0000002', 'B0011', 'Transferencia Bancaria', '12', '1', '');
INSERT INTO `pedidos` VALUES ('77', 'R0000003', '', 'BLANK', '5', '1', 'S006');
INSERT INTO `pedidos` VALUES ('78', 'R0000004', 'B0006', 'Transferencia Bancaria', '8', '5', '');
INSERT INTO `pedidos` VALUES ('79', 'R0000004', 'B0011', 'Transferencia Bancaria', '12', '1', '');
INSERT INTO `pedidos` VALUES ('80', 'R0000004', '', 'Transferencia Bancaria', '30', '3', 'S007');
INSERT INTO `pedidos` VALUES ('81', 'R0000005', 'B0006', 'Tarjeta de credito', '8', '10', '');
INSERT INTO `pedidos` VALUES ('82', 'R0000005', 'B0003', 'Tarjeta de credito', '18', '20', '');
INSERT INTO `pedidos` VALUES ('83', 'R0000006', 'B0006', 'Pago en Efectivo', '8', '10000', '');
INSERT INTO `pedidos` VALUES ('84', 'R0000006', 'B0011', 'Pago en Efectivo', '12', '1000', '');
INSERT INTO `pedidos` VALUES ('85', 'R0000007', '', 'BLANK', '0', '1', 'S001');
INSERT INTO `pedidos` VALUES ('86', 'R0000007', 'B0004', 'BLANK', '800', '1', '');
INSERT INTO `pedidos` VALUES ('87', 'R0000007', 'B0003', 'BLANK', '18', '1', '');
INSERT INTO `pedidos` VALUES ('88', 'R0000007', 'B0009', 'BLANK', '10', '1', '');
INSERT INTO `pedidos` VALUES ('89', 'R0000007', '', 'BLANK', '0', '2', 'S006');
INSERT INTO `pedidos` VALUES ('90', 'R0000009', 'B0007', 'Transferencia Bancaria', '130', '1', '');
INSERT INTO `pedidos` VALUES ('91', 'R0000011', '', 'Transferencia Bancaria', '100', '6', 'RE01');
INSERT INTO `pedidos` VALUES ('92', 'R0000012', '', 'Transferencia Bancaria', '100', '1', 'RE01');
INSERT INTO `pedidos` VALUES ('93', 'R0000013', '', 'BLANK', '500', '3', 'RA01');
INSERT INTO `pedidos` VALUES ('94', 'R0000014', '', 'Transferencia Bancaria', '20', '1', 'RA00');
INSERT INTO `pedidos` VALUES ('95', 'R0000015', 'B0004', 'Transferencia Bancaria', '800', '3', '');
INSERT INTO `pedidos` VALUES ('96', 'R0000015', 'B0008', 'Transferencia Bancaria', '30', '1', '');
INSERT INTO `pedidos` VALUES ('97', 'R0000015', 'B0002', 'Transferencia Bancaria', '100', '1', '');
INSERT INTO `pedidos` VALUES ('98', 'R0000016', 'B0003', 'Transferencia Bancaria', '18', '1', '');
INSERT INTO `pedidos` VALUES ('99', 'R0000017', 'B0011', 'Pago en Efectivo', '12', '1', '');
INSERT INTO `pedidos` VALUES ('100', 'R0000018', 'B0006', 'Transferencia Bancaria', '8', '1', '');
INSERT INTO `pedidos` VALUES ('101', 'R0000018', 'B0003', 'Transferencia Bancaria', '18', '50', '');
INSERT INTO `pedidos` VALUES ('102', 'R0000019', 'B0009', 'BLANK', '10', '1', '');
INSERT INTO `pedidos` VALUES ('103', 'R0000019', 'B0008', 'BLANK', '30', '1', '');
INSERT INTO `pedidos` VALUES ('104', 'R0000019', 'B0003', 'BLANK', '18', '5', '');
INSERT INTO `pedidos` VALUES ('105', 'R0000020', 'B0011', 'BLANK', '12', '1', '');
INSERT INTO `pedidos` VALUES ('106', 'R0000020', 'B0003', 'BLANK', '18', '1', '');
INSERT INTO `pedidos` VALUES ('107', 'R0000020', 'B0007', 'BLANK', '130', '1', '');
INSERT INTO `pedidos` VALUES ('108', 'R0000021', 'B0003', 'BLANK', '18', '1', '');
INSERT INTO `pedidos` VALUES ('109', 'R0000022', 'B0011', 'Transferencia Bancaria', '12', '1', '');
INSERT INTO `pedidos` VALUES ('110', 'R0000022', 'B0004', 'Transferencia Bancaria', '800', '1', '');

-- ----------------------------
-- Table structure for `pedidoser`
-- ----------------------------
DROP TABLE IF EXISTS `pedidoser`;
CREATE TABLE `pedidoser` (
  `idPedSer` char(6) NOT NULL,
  `idSer` char(4) NOT NULL,
  `NomSer` varchar(100) NOT NULL,
  `IdCate` char(6) NOT NULL,
  `idCliente` char(6) NOT NULL,
  `NomCate` varchar(100) NOT NULL,
  `NomCliente` varchar(100) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `Archivo` varchar(100) NOT NULL,
  `Fecha` date NOT NULL,
  `Cantidad` int(10) NOT NULL,
  `Estado` char(10) NOT NULL,
  PRIMARY KEY (`idPedSer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pedidoser
-- ----------------------------
INSERT INTO `pedidoser` VALUES ('PS0001', 'S002', 'Digitado Codigo Ascii', '', 'C00001', '', 'juanita', 'probando', '5.jpg', '2018-01-11', '0', '');
INSERT INTO `pedidoser` VALUES ('PS0002', 'S003', 'Formato De Tesis', '', 'C00001', '', 'juanita', 'tu', '6.jpg', '2018-01-11', '0', '');

-- ----------------------------
-- Table structure for `producto`
-- ----------------------------
DROP TABLE IF EXISTS `producto`;
CREATE TABLE `producto` (
  `idProducto` char(5) NOT NULL,
  `nomProducto` varchar(100) NOT NULL,
  `Precio` int(12) NOT NULL,
  `PrecioVP` int(12) NOT NULL,
  `stok` int(4) NOT NULL,
  `Descripcion` text NOT NULL,
  `MARCA` varchar(200) NOT NULL,
  `Modelo` varchar(100) NOT NULL,
  `dimension` varchar(100) NOT NULL,
  `Lanzado` varchar(100) NOT NULL,
  `Visto` varchar(100) NOT NULL,
  `Imagen` varchar(100) NOT NULL,
  `idCate` char(4) NOT NULL,
  PRIMARY KEY (`idProducto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of producto
-- ----------------------------
INSERT INTO `producto` VALUES ('B0011', 'Auricular Delegado', '7', '12', '97', '<p>Auricular delgado, gris acorde a sus necesidades</p>', 'Genius', 'MODERN BLACK', '', '2017/12/10', '', 'B0011.17.jpg', 'K004');
INSERT INTO `producto` VALUES ('B0004', 'Portatil', '500', '800', '8', '<p>Compudav te ofrece portatiles de exelentes condiciones&nbsp; procesado Core i5, disco 1 tera,&nbsp; pantalla 12 pulgadas.</p>\r\n<p>Software y antivirus actualizado</p>\r\n<p><span style=\"color: #333333; font-family: Georgia; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">&nbsp;</span></p>', 'Hp', 'Pavilion tx1030', '', '2017/12/10', '', 'B0004.20.jpg', 'K001');
INSERT INTO `producto` VALUES ('B0005', 'Teclado', '8', '12', '20', '<p>Compudav te ofrece teclado negro conector USB</p>', 'LG', 'XDJ200', '', '2017/12/10', '', 'B0005.00693130.JPG', 'K002');
INSERT INTO `producto` VALUES ('B0006', 'Flash Memory Blue', '4', '8', '99', '<p>Compudav te ofrece Flash Memory de execelentes condiciones, en varios colores azul, rosado, gris, negro.</p>', 'Kistong', 'Alargado', '', '2017/12/10', '', 'B0006.12.jpg', 'K008');
INSERT INTO `producto` VALUES ('B0007', 'Impresora', '80', '130', '16', '<p>Compudav te ofrece una impresora HP, con sus debidos cartuchos recargables HP.</p>', 'HP', 'F4480', '', '2017/12/10', '', 'B0007.HP F4480.png', 'K007');
INSERT INTO `producto` VALUES ('B0008', 'Parlantes Pc', '25', '30', '16', '<p>Compudav te ofrece parlantes color negro</p>', 'Genius', 'XRES23', '', '2017/12/10', '', 'B0008.13.jpg', 'K004');
INSERT INTO `producto` VALUES ('B0009', 'Flash Memory Black', '5', '10', '18', '<p>Compudav te ofrece</p>', 'HP', 'MODERN BLACK', '', '2017/12/10', '', 'B0009.flashHP2.jpg', 'K008');
INSERT INTO `producto` VALUES ('B0010', 'Auriculares', '8', '14', '18', '<p>Auriculares sofisticados, con excelente sonido.</p>', 'Genius', 'Moderno', '', '2017/12/10', '', 'B0010.33834991_1.jpg', 'K004');
INSERT INTO `producto` VALUES ('B0002', 'Tarjetas De Video Sin Marca', '80', '100', '19', '<p>Especificaciones: Chipset: Ralink 3070 antena: 58dbi direccional de potencia de salida: 26dBm (ofdm), 32dBm (cck) Rango de frecuencia: 2.4 GHz (banda ism) interfaz de host: Mini USB de montaje en pared: si Cantidad: 1 unids Tama&ntilde;o del paquete: 29.5x19.5x12 (cm) Peso bruto/paquete: 1 (kg) Caracteristicas: Estandar industrial, estable y duradera 58dbi antena de alta ganancia direccional Rango de mas de 3 km con conexion estable 5800 mW alta potencia de salida Ralink 3070 chipset Cable blindado USB Premium 5 metros IEEE 802.11 b/g/n (hasta 150 mbps) Compatible con BackTrack12 (beini)</p>', 'HCA', 'HD6670', '', '2015/12/16', '', 'B0002.video.jpg', 'K003');
INSERT INTO `producto` VALUES ('B0003', 'Cartucho 41', '15', '18', '16', '<p>Compudav te ofrece un producto debidamente protegido, adaptable a la impresora solicitada</p>', 'Canon', 'Color', '', '2017/12/10', '', 'B0003.2.jpg', 'K005');

-- ----------------------------
-- Table structure for `prov`
-- ----------------------------
DROP TABLE IF EXISTS `prov`;
CREATE TABLE `prov` (
  `id_prov` char(3) NOT NULL,
  `NomProv` char(30) NOT NULL,
  `CostoEnvio` int(10) NOT NULL,
  PRIMARY KEY (`id_prov`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of prov
-- ----------------------------
INSERT INTO `prov` VALUES ('P01', 'Esmeraldas', '0');
INSERT INTO `prov` VALUES ('P02', 'Santo De Los Tsachilas', '0');
INSERT INTO `prov` VALUES ('P03', 'El Oro', '0');
INSERT INTO `prov` VALUES ('P04', 'Guayas', '0');
INSERT INTO `prov` VALUES ('P05', 'Los Rios', '0');
INSERT INTO `prov` VALUES ('P06', 'Manabi', '0');
INSERT INTO `prov` VALUES ('P07', 'Santa Elena', '0');
INSERT INTO `prov` VALUES ('P08', 'Azuay', '0');
INSERT INTO `prov` VALUES ('P09', 'Bolivar', '0');
INSERT INTO `prov` VALUES ('P10', 'Cañar', '0');
INSERT INTO `prov` VALUES ('P11', 'Carchi', '0');
INSERT INTO `prov` VALUES ('P12', 'Chimborazo', '0');
INSERT INTO `prov` VALUES ('P13', 'Cotopaxi', '0');
INSERT INTO `prov` VALUES ('P14', 'Imbabura', '0');
INSERT INTO `prov` VALUES ('P15', 'Loja', '0');
INSERT INTO `prov` VALUES ('P16', 'Pichincha', '0');
INSERT INTO `prov` VALUES ('P17', 'Tungurahua', '0');
INSERT INTO `prov` VALUES ('P18', 'Morona Santiago', '0');
INSERT INTO `prov` VALUES ('P19', 'Napo', '0');
INSERT INTO `prov` VALUES ('P20', 'Orellana', '0');
INSERT INTO `prov` VALUES ('P21', 'Pastaza', '0');
INSERT INTO `prov` VALUES ('P22', 'Sucumbios', '0');
INSERT INTO `prov` VALUES ('P23', 'Zamora Chinchipe', '0');
INSERT INTO `prov` VALUES ('P24', 'Galápagos', '0');

-- ----------------------------
-- Table structure for `resadmin`
-- ----------------------------
DROP TABLE IF EXISTS `resadmin`;
CREATE TABLE `resadmin` (
  `IdRes` char(5) NOT NULL,
  `IdCliente` char(10) NOT NULL,
  `NomCliente` varchar(10) NOT NULL,
  `idSer` char(5) NOT NULL,
  `NomSer` varchar(100) NOT NULL,
  `idCate` char(6) NOT NULL,
  `Cantidad` int(5) NOT NULL,
  `Estado` char(10) NOT NULL,
  `Precio` int(10) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `Imagen` varchar(100) NOT NULL,
  `Fecha` date NOT NULL,
  PRIMARY KEY (`IdRes`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of resadmin
-- ----------------------------
INSERT INTO `resadmin` VALUES ('RA001', 'C00001', 'Juanita', 'S002', 'Digitado Codigo Ascii', 'KS01', '1', 'ACEPTADO', '100', '<p>apro</p>', 'RA001.5.jpg', '2018-01-11');

-- ----------------------------
-- Table structure for `reserva`
-- ----------------------------
DROP TABLE IF EXISTS `reserva`;
CREATE TABLE `reserva` (
  `SReserva` char(8) NOT NULL,
  `idCliente` char(6) NOT NULL,
  `NomCliente` varchar(100) NOT NULL,
  `FecReserva` date NOT NULL DEFAULT '0000-00-00',
  `NomDestinatario` varchar(60) NOT NULL,
  `DireccCompleta` varchar(200) NOT NULL,
  `Pago` varchar(100) NOT NULL,
  `id_prov` char(3) NOT NULL,
  `idCiudad` char(2) NOT NULL,
  `idDistrito` char(4) NOT NULL,
  `CodigoPostal` varchar(6) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `EstadoPago` enum('Pendiente','Completo','Nulo') NOT NULL DEFAULT 'Pendiente',
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`SReserva`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of reserva
-- ----------------------------
INSERT INTO `reserva` VALUES ('R0000023', 'C00001', 'juanita', '2018-01-13', 'Juanita', 'acacias', 'Transferencia Bancaria', 'P02', 'C0', 'L01', '00051', '023761690', 'Pendiente', 'juanis@hotmail.com');
INSERT INTO `reserva` VALUES ('R0000022', 'C00001', 'juanita', '2018-01-13', 'Juanita', 'acacias', 'Transferencia Bancaria', 'P02', 'C0', 'L01', '00051', '023761690', 'Pendiente', 'juanis@hotmail.com');
INSERT INTO `reserva` VALUES ('R0000021', 'C00001', 'juanita', '2018-01-13', 'Juanita', 'acacias', 'BLANK', 'P02', 'C0', 'L01', '00051', '023761690', 'Pendiente', 'juanis@hotmail.com');
INSERT INTO `reserva` VALUES ('R0000020', 'C00001', 'juanita', '2018-01-13', 'Juanita', 'acacias', 'BLANK', 'P02', 'C0', 'L01', '00051', '023761690', 'Pendiente', 'juanis@hotmail.com');
INSERT INTO `reserva` VALUES ('R0000019', 'C00001', 'juanita', '2018-01-13', 'Juanita', 'acacias', 'BLANK', 'P02', 'C0', 'L01', '00051', '023761690', 'Pendiente', 'juanis@hotmail.com');
INSERT INTO `reserva` VALUES ('R0000018', 'C00002', 'David', '2018-01-12', 'David', 'acacias', 'Transferencia Bancaria', 'P02', 'C0', 'L03', ' ', '23761690', 'Pendiente', 'david@hotmail.com');
INSERT INTO `reserva` VALUES ('R0000017', 'C00001', 'juanita', '2018-01-11', 'Juanita', 'acacias', 'Pago en Efectivo', 'P02', 'C0', 'L01', '00051', '023761690', 'Pendiente', 'juanis@hotmail.com');
INSERT INTO `reserva` VALUES ('R0000016', 'C00002', 'David', '2018-01-11', 'David', 'acacias', 'Transferencia Bancaria', 'P02', 'C0', 'L03', ' 2222', '23761690', 'Pendiente', 'david@hotmail.com');
INSERT INTO `reserva` VALUES ('R0000015', 'C00002', 'David', '2018-01-11', 'David', 'acacias', 'Transferencia Bancaria', 'P02', 'C0', 'L03', '1021', '23761690', 'Pendiente', 'david@hotmail.com');
INSERT INTO `reserva` VALUES ('R0000014', 'C00002', 'David', '2018-01-10', 'David', 'acacias', 'Transferencia Bancaria', 'P02', 'C0', 'L03', ' ', '23761690', 'Pendiente', 'david@hotmail.com');
INSERT INTO `reserva` VALUES ('R0000013', 'C00001', 'juanita', '2018-01-10', 'Juanita', 'acacias', 'BLANK', 'P02', 'C0', 'L01', '00051', '023761690', 'Pendiente', 'juanis@hotmail.com');
INSERT INTO `reserva` VALUES ('R0000012', 'C00001', 'juanita', '2018-01-08', 'Juanita', 'acacias', 'Transferencia Bancaria', 'P02', 'C0', 'L01', '00051', '023761690', 'Completo', 'juanis@hotmail.com');
INSERT INTO `reserva` VALUES ('R0000011', 'C00001', 'juanita', '2018-01-08', 'Juanita', 'acacias', 'Transferencia Bancaria', 'P02', 'C0', 'L01', '00051', '023761690', 'Pendiente', 'juanis@hotmail.com');
INSERT INTO `reserva` VALUES ('R0000010', 'C00001', 'juanita', '2018-01-08', 'Juanita', 'acacias', 'Transferencia Bancaria', 'P02', 'C0', 'L01', '00051', '023761690', 'Pendiente', 'juanis@hotmail.com');
INSERT INTO `reserva` VALUES ('R0000009', 'C00001', 'juanita', '2018-01-08', 'Juanita', 'acacias', 'Transferencia Bancaria', '', '', '', '', '023761690', 'Pendiente', 'juanis@hotmail.com');
INSERT INTO `reserva` VALUES ('R0000008', 'C00001', 'juanita', '2018-01-08', 'Juanita', 'acacias', 'Transferencia Bancaria', '', '', '', '', '023761690', 'Pendiente', 'juanis@hotmail.com');
INSERT INTO `reserva` VALUES ('R0000007', 'C00001', 'juanita', '2018-01-07', 'Juanita', 'acacias', 'BLANK', 'P02', 'C0', 'L01', '00051', '023761690', 'Pendiente', 'juanis@hotmail.com');
INSERT INTO `reserva` VALUES ('R0000006', 'C00003', 'Walther', '2018-01-05', 'Walther', 'Ambato', 'Pago en Efectivo', 'P02', 'C0', 'L01', ' 0053', '00000000', 'Completo', 'walter@uniandes.com');
INSERT INTO `reserva` VALUES ('R0000005', 'C00001', 'juanita', '2018-01-05', 'Juanita', 'acacias', 'Tarjeta de credito', 'P02', 'C0', 'L01', '00051', '023761690', 'Pendiente', 'juanis@hotmail.com');
INSERT INTO `reserva` VALUES ('R0000004', 'C00001', 'juanita', '2018-01-05', 'Juanita', 'acacias', 'Transferencia Bancaria', 'P02', 'C0', 'L01', '00051', '023761690', 'Pendiente', 'juanis@hotmail.com');
INSERT INTO `reserva` VALUES ('R0000003', 'C00001', 'juanita', '2018-01-04', 'Juanita', 'acacias', 'BLANK', 'P02', 'C0', 'L01', '00051', '023761690', 'Pendiente', 'juanis@hotmail.com');
INSERT INTO `reserva` VALUES ('R0000002', 'C00001', 'juanita', '2018-01-04', 'Juanita', 'acacias', 'Transferencia Bancaria', 'P02', 'C0', 'L01', '00051', '023761690', 'Pendiente', 'juanis@hotmail.com');
INSERT INTO `reserva` VALUES ('R0000001', 'C00002', 'David', '2018-01-04', 'David', 'acacias', 'Transferencia Bancaria', 'P02', 'C0', 'L03', '230110', '23761690', 'Pendiente', 'david@hotmail.com');

-- ----------------------------
-- Table structure for `servicios`
-- ----------------------------
DROP TABLE IF EXISTS `servicios`;
CREATE TABLE `servicios` (
  `idSer` char(4) NOT NULL,
  `NomSer` varchar(100) NOT NULL,
  `Publicado` varchar(100) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `Imagen` varchar(100) NOT NULL,
  `idCate` char(4) NOT NULL,
  `Costo` int(10) NOT NULL,
  `TiempoElaboracion` int(10) NOT NULL,
  PRIMARY KEY (`idSer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of servicios
-- ----------------------------
INSERT INTO `servicios` VALUES ('S001', 'Digitado Novela Cumanda', '2017/12/14', '<p>adsfffffffffffffasdfasdf</p>', 'S001.ico_texto.png', 'KS01', '0', '0');
INSERT INTO `servicios` VALUES ('S002', 'Digitado Codigo Ascii', '2017/12/14', '<p>Compudav te ofrece el digitado&nbsp; del CODIGO ASCII, operaciones matematicas, fracciones, etc.<', 'S002.numeros.jpg', 'KS01', '0', '0');
INSERT INTO `servicios` VALUES ('S003', 'Formato De Tesis', '2017/14/12', '<p>Compudav te ofrece la elaboracion de formato de tesis que cualquier institucion la solicite.</p>', 'S003.formtext.jpg', 'KS01', '0', '0');
INSERT INTO `servicios` VALUES ('S004', 'Elaboracion De Cuadros', '2017/14/12', '<p>Compudav te ofrece la elaboracion de cualquier tipos de cuadros en un tiempo estimado y que sea s', 'S004.cuadro.png', 'KS01', '0', '0');
INSERT INTO `servicios` VALUES ('S006', 'Dibujos', '2017/14/12', '<p>Compudav te ofrece excelentes dibujos&nbsp; realizados en AI, de cualquier tipo.</p>', 'S006.dibujos.jpg', 'KS02', '0', '0');
INSERT INTO `servicios` VALUES ('S007', 'Revista', '2017/14/12', '<p>Compudav te ofrece excelentes dise&ntilde;os: modernos, innovadores, llamativos, personalisadp. C', 'S007.revista.jpg', 'KS02', '0', '0');
INSERT INTO `servicios` VALUES ('S008', 'Diseño Logos', '2017/14/12', '<p>Compudav te ofrece el dise&ntilde;o de logos de acuerdo a tus necesidades como empresa, personal,', 'S008.logos.jpg', 'KS02', '0', '0');
INSERT INTO `servicios` VALUES ('S009', 'Montajes', '2017/12/14', '<p>Compudav te ofrece excelentes montajes&nbsp; con tus fotografias en el lugar que desees, rapidos&', 'S009.montajes.jpg', 'KS02', '0', '0');

-- ----------------------------
-- Table structure for `slide`
-- ----------------------------
DROP TABLE IF EXISTS `slide`;
CREATE TABLE `slide` (
  `id_slide` int(12) NOT NULL AUTO_INCREMENT,
  `nm_slide` varchar(20) NOT NULL,
  `foto_slide` varchar(255) NOT NULL,
  PRIMARY KEY (`id_slide`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of slide
-- ----------------------------

-- ----------------------------
-- Table structure for `tiki`
-- ----------------------------
DROP TABLE IF EXISTS `tiki`;
CREATE TABLE `tiki` (
  `kd_kota` char(8) NOT NULL,
  `nm_kota` varchar(200) NOT NULL,
  `ons` varchar(30) NOT NULL,
  `reg` varchar(30) NOT NULL,
  `eco` varchar(30) NOT NULL,
  `administrasi` varchar(200) NOT NULL,
  PRIMARY KEY (`kd_kota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tiki
-- ----------------------------

-- ----------------------------
-- View structure for `v_canasta`
-- ----------------------------
DROP VIEW IF EXISTS `v_canasta`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_canasta` AS select `colocarcanasta`.`idProducto` AS `idProducto`,`colocarcanasta`.`id` AS `id`,`colocarcanasta`.`idCliente` AS `idCliente`,`colocarcanasta`.`NomCliente` AS `NomCliente`,`colocarcanasta`.`Cantidad` AS `Cantidad`,`producto`.`stok` AS `stok`,`colocarcanasta`.`Precio` AS `Precio` from (`colocarcanasta` join `producto` on((`producto`.`idProducto` = `colocarcanasta`.`idProducto`))) where (`colocarcanasta`.`Cantidad` > `producto`.`stok`);

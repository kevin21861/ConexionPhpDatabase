-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.22-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para db_turismo
CREATE DATABASE IF NOT EXISTS `db_turismo` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `db_turismo`;

-- Volcando estructura para tabla db_turismo.tb_administradores
CREATE TABLE IF NOT EXISTS `tb_administradores` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `administrador` bigint(20) NOT NULL,
  `sitio` bigint(20) NOT NULL,
  `usuario` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla db_turismo.tb_favoritos
CREATE TABLE IF NOT EXISTS `tb_favoritos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usuario` bigint(20) NOT NULL,
  `sitio` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla db_turismo.tb_reseñas
CREATE TABLE IF NOT EXISTS `tb_reseñas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usuario` bigint(20) NOT NULL,
  `reseña` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla db_turismo.tb_servicios
CREATE TABLE IF NOT EXISTS `tb_servicios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_servicios` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla db_turismo.tb_sitios
CREATE TABLE IF NOT EXISTS `tb_sitios` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre_sitio` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `fotos` blob NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla db_turismo.tb_usuarios
CREATE TABLE IF NOT EXISTS `tb_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `documento` varchar(50) NOT NULL,
  `correo_electronico` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `sexo` char(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `documento` (`documento`),
  UNIQUE KEY `correo_electronico` (`correo_electronico`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

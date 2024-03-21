-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           4.1.22-community-nt - MySQL Community Edition (GPL)
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Copiando estrutura para tabela montatreeview.montatreeview
DROP TABLE IF EXISTS `montatreeview`;
CREATE TABLE IF NOT EXISTS `montatreeview` (
  `id` int(11) NOT NULL auto_increment,
  `id_pai` int(11) default NULL,
  `descricao` varchar(30) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela montatreeview.montatreeview: 9 rows
DELETE FROM `montatreeview`;
/*!40000 ALTER TABLE `montatreeview` DISABLE KEYS */;
INSERT INTO `montatreeview` (`id`, `id_pai`, `descricao`) VALUES
	(1, 0, 'Primeiro Nivel 1');
INSERT INTO `montatreeview` (`id`, `id_pai`, `descricao`) VALUES
	(2, 0, 'Primeiro Nivel 2');
INSERT INTO `montatreeview` (`id`, `id_pai`, `descricao`) VALUES
	(3, 0, 'Primeiro Nivel 3');
INSERT INTO `montatreeview` (`id`, `id_pai`, `descricao`) VALUES
	(4, 1, 'Segundo Nivel 1 - 1');
INSERT INTO `montatreeview` (`id`, `id_pai`, `descricao`) VALUES
	(5, 1, 'Segundo Nivel 1 - 2');
INSERT INTO `montatreeview` (`id`, `id_pai`, `descricao`) VALUES
	(6, 2, 'Segundo Nivel 2 - 1');
INSERT INTO `montatreeview` (`id`, `id_pai`, `descricao`) VALUES
	(7, 3, 'Segundo Nivel 3 - 1');
INSERT INTO `montatreeview` (`id`, `id_pai`, `descricao`) VALUES
	(8, 5, 'Terceiro Nivel 1 -2 -1');
INSERT INTO `montatreeview` (`id`, `id_pai`, `descricao`) VALUES
	(9, 4, 'Terceiro Nivel 1 - 1 - 1');
/*!40000 ALTER TABLE `montatreeview` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

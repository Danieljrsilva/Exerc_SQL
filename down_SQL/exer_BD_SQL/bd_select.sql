-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.7.14 - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

SET default_storage_engine=INNODB;

-- Copiando estrutura do banco de dados para select
CREATE DATABASE IF NOT EXISTS `select` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `select`;


-- Copiando estrutura para tabela select.cliente
CREATE TABLE IF NOT EXISTS `cliente` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(250) DEFAULT NULL,
  `sobrenome` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela select.cliente: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` (`codigo`, `nome`, `sobrenome`) VALUES
	(1, 'Francisco', 'Silva'),
	(2, 'José', 'Lima'),
	(3, 'Maria', 'Silva'),
	(4, 'Adriana', 'Ferreira'),
	(5, 'João', 'Oliveira'),
	(6, 'Eduarda', 'Souza');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;


-- Copiando estrutura para tabela select.funcionario
CREATE TABLE IF NOT EXISTS `funcionario` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `idade` int(3) NOT NULL,
  `nome` varchar(250) DEFAULT NULL,
  `salario` double DEFAULT NULL,
  `setor` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `FK_funcionario_setor` (`setor`),
  CONSTRAINT `FK_funcionario_setor` FOREIGN KEY (`setor`) REFERENCES `setor` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela select.funcionario: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` (`codigo`, `idade`, `nome`, `salario`, `setor`) VALUES
	(1, 28, 'Tadeu', 2.5, 1),
	(2, 29, 'Ylane', 1.2, 2),
	(3, 18, 'Julian', 2, 1),
	(4, 21, 'Ewerton', 2, 1),
	(5, 30, 'João', 3.5, 2),
	(6, 45, 'Geraldo', 7.5, 3),
	(7, 32, 'Maria', 5.4, 1);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;


-- Copiando estrutura para tabela select.pedido
CREATE TABLE IF NOT EXISTS `pedido` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` int(11) DEFAULT NULL,
  `setor` int(11) DEFAULT NULL,
  `Valor` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `FK_pedido_cliente` (`cliente`),
  KEY `FK_pedido_setor` (`setor`),
  CONSTRAINT `FK_pedido_cliente` FOREIGN KEY (`cliente`) REFERENCES `cliente` (`codigo`),
  CONSTRAINT `FK_pedido_setor` FOREIGN KEY (`setor`) REFERENCES `setor` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela select.pedido: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` (`codigo`, `cliente`, `setor`, `Valor`) VALUES
	(1, 1, 2, 4),
	(2, 2, 4, 7),
	(3, 3, 2, 10),
	(4, 5, 4, 3),
	(5, 5, 2, 3);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;


-- Copiando estrutura para tabela select.setor
CREATE TABLE IF NOT EXISTS `setor` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `setor` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela select.setor: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `setor` DISABLE KEYS */;
INSERT INTO `setor` (`codigo`, `setor`) VALUES
	(1, 'Desenvolvimento'),
	(2, 'Manutenção'),
	(3, 'Financeiro'),
	(4, 'Vendas');
/*!40000 ALTER TABLE `setor` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

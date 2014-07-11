CREATE DATABASE  IF NOT EXISTS `gifts`;
USE `gifts`;

CREATE TABLE `usuario` (
  `email` varchar(45) NOT NULL,
  `id` varchar(45) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `criacao` date DEFAULT NULL,
  `foto` varchar(45) DEFAULT 'padrao.jpg',
  PRIMARY KEY (`email`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `produto` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `foto` varchar(45) DEFAULT NULL,
  `buscar` varchar(100) DEFAULT 'www.google.com',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

CREATE TABLE `lista` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) DEFAULT NULL,
  `usuario` varchar(45) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `fk_lista_usuario1_idx` (`usuario`),
  CONSTRAINT `fk_lista_usuario1` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`email`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

CREATE TABLE `item` (
  `lista_codigo` int(11) NOT NULL,
  `produto_codigo` int(11) NOT NULL,
  PRIMARY KEY (`lista_codigo`,`produto_codigo`),
  KEY `fk_item_produto1_idx` (`produto_codigo`),
  CONSTRAINT `fk_item_lista1` FOREIGN KEY (`lista_codigo`) REFERENCES `lista` (`codigo`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_item_produto1` FOREIGN KEY (`produto_codigo`) REFERENCES `produto` (`codigo`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `produto` (`codigo`, `nome`, `descricao`, `foto`, `buscar`) VALUES
(5, 'Xbox', 'video-game', 'xbox.jpg', 'www.google.com'),
(6, 'Computador', 'Computador de ótima qualidade', 'pc.jpg', 'www.google.com');


-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 23-Out-2018 às 23:31
-- Versão do servidor: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbup`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_amaciantes`
--

DROP TABLE IF EXISTS `tb_amaciantes`;
CREATE TABLE IF NOT EXISTS `tb_amaciantes` (
  `nomeP` varchar(100) DEFAULT NULL,
  `precoMin` decimal(7,2) DEFAULT NULL,
  `precoMax` decimal(7,2) DEFAULT NULL,
  `precoL` decimal(7,2) DEFAULT NULL,
  `pontoN` varchar(100) DEFAULT NULL,
  `itemPri` varchar(100) DEFAULT NULL,
  `temLoja` tinyint(1) DEFAULT NULL,
  `lp` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_biscoitos`
--

DROP TABLE IF EXISTS `tb_biscoitos`;
CREATE TABLE IF NOT EXISTS `tb_biscoitos` (
  `inovacao` varchar(100) DEFAULT NULL,
  `itemPri` varchar(100) DEFAULT NULL,
  `temLoja` tinyint(1) DEFAULT NULL,
  `lp` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_conquista`
--

DROP TABLE IF EXISTS `tb_conquista`;
CREATE TABLE IF NOT EXISTS `tb_conquista` (
  `temLoja` tinyint(1) DEFAULT NULL COMMENT 'loja possui ponto extra adicional ao negociado ou 7 pontos de sinergias?'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_culinarios`
--

DROP TABLE IF EXISTS `tb_culinarios`;
CREATE TABLE IF NOT EXISTS `tb_culinarios` (
  `itemPri` varchar(100) DEFAULT NULL,
  `temLoja` tinyint(1) DEFAULT NULL,
  `lp` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_desodorantes`
--

DROP TABLE IF EXISTS `tb_desodorantes`;
CREATE TABLE IF NOT EXISTS `tb_desodorantes` (
  `nomeP` varchar(100) DEFAULT NULL,
  `precoMin` decimal(7,2) DEFAULT NULL,
  `precoMax` decimal(7,2) DEFAULT NULL,
  `precoL` decimal(7,2) DEFAULT NULL,
  `itemPri` varchar(100) DEFAULT NULL,
  `temLoja` tinyint(1) DEFAULT NULL,
  `lp` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_dominancia`
--

DROP TABLE IF EXISTS `tb_dominancia`;
CREATE TABLE IF NOT EXISTS `tb_dominancia` (
  `pontoEC` varchar(100) DEFAULT NULL,
  `temLoja` tinyint(1) DEFAULT NULL,
  `pontoEU` varchar(100) DEFAULT NULL,
  `temLojaU` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_dressing`
--

DROP TABLE IF EXISTS `tb_dressing`;
CREATE TABLE IF NOT EXISTS `tb_dressing` (
  `invacao` varchar(100) DEFAULT NULL,
  `inovacao` varchar(100) DEFAULT NULL,
  `precoMin` decimal(7,2) DEFAULT NULL,
  `precoMax` decimal(7,2) DEFAULT NULL,
  `precoL` decimal(7,2) DEFAULT NULL,
  `itemPri` varchar(100) DEFAULT NULL,
  `temLoja` tinyint(1) DEFAULT NULL,
  `lp` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_funcionario`
--

DROP TABLE IF EXISTS `tb_funcionario`;
CREATE TABLE IF NOT EXISTS `tb_funcionario` (
  `nomeF` varchar(100) DEFAULT NULL,
  `nomeL` text,
  `data_pesquisa` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_hair`
--

DROP TABLE IF EXISTS `tb_hair`;
CREATE TABLE IF NOT EXISTS `tb_hair` (
  `inovacao_presenca` varchar(100) DEFAULT NULL,
  `inovacao` varchar(100) DEFAULT NULL,
  `precoMin` decimal(7,2) DEFAULT NULL,
  `precoMax` decimal(7,2) DEFAULT NULL,
  `precoL` decimal(7,2) DEFAULT NULL,
  `itemPri` varchar(100) DEFAULT NULL,
  `temLoja` tinyint(1) DEFAULT NULL,
  `lp` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_hhc`
--

DROP TABLE IF EXISTS `tb_hhc`;
CREATE TABLE IF NOT EXISTS `tb_hhc` (
  `itemPri` varchar(100) DEFAULT NULL,
  `multiuso` varchar(100) DEFAULT NULL COMMENT 'ou de acordo com o pack comercial',
  `temLoja` tinyint(1) DEFAULT NULL,
  `lp` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_ice`
--

DROP TABLE IF EXISTS `tb_ice`;
CREATE TABLE IF NOT EXISTS `tb_ice` (
  `nomeP` varchar(100) NOT NULL,
  `precoMin` decimal(7,2) DEFAULT NULL,
  `precoMax` decimal(7,2) DEFAULT NULL,
  `precoL` decimal(7,2) DEFAULT NULL,
  `itemPri` varchar(100) DEFAULT NULL,
  `temLoja` tinyint(1) DEFAULT NULL,
  `lp` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_infantil`
--

DROP TABLE IF EXISTS `tb_infantil`;
CREATE TABLE IF NOT EXISTS `tb_infantil` (
  `itemPri` varchar(100) DEFAULT NULL,
  `temLoja` tinyint(1) DEFAULT NULL,
  `lp` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_naturais`
--

DROP TABLE IF EXISTS `tb_naturais`;
CREATE TABLE IF NOT EXISTS `tb_naturais` (
  `itemPri` varchar(100) DEFAULT NULL,
  `temLoja` tinyint(1) DEFAULT NULL,
  `lp` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_oral`
--

DROP TABLE IF EXISTS `tb_oral`;
CREATE TABLE IF NOT EXISTS `tb_oral` (
  `inovacao` varchar(100) DEFAULT NULL,
  `temLoja` tinyint(1) DEFAULT NULL,
  `lp` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_pisos`
--

DROP TABLE IF EXISTS `tb_pisos`;
CREATE TABLE IF NOT EXISTS `tb_pisos` (
  `inovacao` varchar(100) DEFAULT NULL,
  `facing` varchar(100) NOT NULL DEFAULT '25%',
  `temLoja` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_pontoe`
--

DROP TABLE IF EXISTS `tb_pontoe`;
CREATE TABLE IF NOT EXISTS `tb_pontoe` (
  `temLoja` tinyint(1) DEFAULT NULL COMMENT 'ha ponto extra unilever de hc ?'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_sabonetes`
--

DROP TABLE IF EXISTS `tb_sabonetes`;
CREATE TABLE IF NOT EXISTS `tb_sabonetes` (
  `itemPri` varchar(100) DEFAULT NULL,
  `temLoja` tinyint(1) DEFAULT NULL,
  `lp` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_soluctionwash`
--

DROP TABLE IF EXISTS `tb_soluctionwash`;
CREATE TABLE IF NOT EXISTS `tb_soluctionwash` (
  `nomeP` varchar(100) DEFAULT NULL,
  `precoMin` decimal(7,2) DEFAULT NULL,
  `precoMax` decimal(7,2) DEFAULT NULL,
  `precoL` decimal(7,2) DEFAULT NULL,
  `itemPri` varchar(100) DEFAULT NULL,
  `temLoja` tinyint(1) DEFAULT NULL,
  `lp` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_vegetais`
--

DROP TABLE IF EXISTS `tb_vegetais`;
CREATE TABLE IF NOT EXISTS `tb_vegetais` (
  `itemPri` varchar(100) DEFAULT NULL,
  `temLoja` tinyint(1) DEFAULT NULL,
  `lp` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

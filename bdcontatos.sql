-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23/04/2023 às 06:31
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdcontatos`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `contatos`
--

CREATE TABLE `contatos` (
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `logradouro` varchar(10) DEFAULT NULL,
  `nomlog` varchar(100) DEFAULT NULL,
  `numlog` int(11) DEFAULT NULL,
  `bairro` varchar(30) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `contatos`
--

INSERT INTO `contatos` (`nome`, `telefone`, `email`, `logradouro`, `nomlog`, `numlog`, `bairro`, `cidade`, `estado`) VALUES
('ALEXANDRE COSTA', '(33)98752-0146', 'ALEXANDRECOSTA@GMAIL.COM', 'RUA', 'CAXAMBU', 30, 'LAGOINHA', 'BELO HORIZONTE', 'MG'),
('CLAUDIA MONICA', '(33)98752-0146', 'CLAUDIAMONICAP@YAHOO.COM.BR', 'RUA', 'DAS BALEIAS', 900, 'CENTRO', 'UBERLANDIA', 'MG'),
('DIOGO BATISTA', '(33)98752-0146', 'DIOGOBATISTA20@OUTLOOK.COM', 'RUA', 'DOS OTONI', 130, 'CORREGO DO ARROZ', 'GOVERNADOR VALADARES', 'MG'),
('KATIA FONSECA', '(33)98752-0146', 'KATIAFONSECA22@GMAIL.COM', 'RUA', 'DOS SAPOS', 75, 'BREJEIRAS', 'INHAPIM', 'MG');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`nome`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

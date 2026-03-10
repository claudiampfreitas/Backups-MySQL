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
-- Banco de dados: `bdequipe03`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `atleta`
--

CREATE TABLE `atleta` (
  `numatl` int(11) NOT NULL,
  `nomatl` varchar(50) NOT NULL,
  `pesatl` double DEFAULT NULL,
  `altatl` double DEFAULT NULL,
  `datatl` date DEFAULT NULL,
  `fkcodpos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `atleta`
--

INSERT INTO `atleta` (`numatl`, `nomatl`, `pesatl`, `altatl`, `datatl`, `fkcodpos`) VALUES
(1, 'ALEXANDRE MAGNO', 82, 1.8, '1979-04-21', 1),
(2, 'DIOGO FREITAS', 75, 1.7, '1980-05-20', 3),
(3, 'FERNANDO MENDES', 80, 1.75, '1990-06-30', 2),
(4, 'EDUARDO MIGUEL', 81, 1.7, '1978-07-25', 5),
(5, 'REGINALDO ROSSI', 79, 1.77, '1985-09-27', 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `posicao`
--

CREATE TABLE `posicao` (
  `codpos` int(11) NOT NULL,
  `nompos` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `posicao`
--

INSERT INTO `posicao` (`codpos`, `nompos`) VALUES
(1, 'GOLEIRO'),
(2, 'LATERAL'),
(3, 'ZAGUEIRO'),
(4, 'MEIO-CAMPO'),
(5, 'ATACANTE');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `atleta`
--
ALTER TABLE `atleta`
  ADD PRIMARY KEY (`numatl`),
  ADD KEY `fkcodpos` (`fkcodpos`);

--
-- Índices de tabela `posicao`
--
ALTER TABLE `posicao`
  ADD PRIMARY KEY (`codpos`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `atleta`
--
ALTER TABLE `atleta`
  MODIFY `numatl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `posicao`
--
ALTER TABLE `posicao`
  MODIFY `codpos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `atleta`
--
ALTER TABLE `atleta`
  ADD CONSTRAINT `atleta_ibfk_1` FOREIGN KEY (`fkcodpos`) REFERENCES `posicao` (`codpos`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

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
-- Banco de dados: `bdescola`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `aluno`
--

CREATE TABLE `aluno` (
  `matalu` int(11) NOT NULL,
  `nomalu` varchar(50) NOT NULL,
  `logend` varchar(15) NOT NULL,
  `nomend` varchar(100) NOT NULL,
  `numend` varchar(8) NOT NULL,
  `comend` varchar(15) DEFAULT NULL,
  `telalu` varchar(15) DEFAULT NULL,
  `datalu` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `aluno`
--

INSERT INTO `aluno` (`matalu`, `nomalu`, `logend`, `nomend`, `numend`, `comend`, `telalu`, `datalu`) VALUES
(1, 'ALEX FLORES', 'RUA', 'DOS CARPINTEIROS', '150', 'CASA', '(31)98435-0219', '1999-07-15'),
(2, 'FERNANDO BARROSO', 'RUA', 'DOS CACHACEIROS', '195', 'AP 120', '(31)99732-0621', '2000-08-25'),
(3, 'DIEGO FERNANDES', 'RUA', 'DOS DORMINHOCOS', '215', 'CASA', '(31)97569-0124', '1985-10-19');

-- --------------------------------------------------------

--
-- Estrutura para tabela `aluno_curso`
--

CREATE TABLE `aluno_curso` (
  `codalucur` int(11) NOT NULL,
  `fkmatalu` int(11) NOT NULL,
  `fkcodcur` int(11) NOT NULL,
  `notalucur` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `aluno_curso`
--

INSERT INTO `aluno_curso` (`codalucur`, `fkmatalu`, `fkcodcur`, `notalucur`) VALUES
(1, 1, 4, 70),
(2, 2, 3, 85),
(3, 3, 2, 80);

-- --------------------------------------------------------

--
-- Estrutura para tabela `area`
--

CREATE TABLE `area` (
  `codare` int(11) NOT NULL,
  `nomare` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `area`
--

INSERT INTO `area` (`codare`, `nomare`) VALUES
(1, 'ECOLOGIA'),
(2, 'TECNOLOGIA'),
(3, 'MEDICINA');

-- --------------------------------------------------------

--
-- Estrutura para tabela `curso`
--

CREATE TABLE `curso` (
  `codcur` int(11) NOT NULL,
  `nomcur` varchar(30) NOT NULL,
  `horcur` int(11) NOT NULL,
  `fkcodare` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `curso`
--

INSERT INTO `curso` (`codcur`, `nomcur`, `horcur`, `fkcodare`) VALUES
(2, 'MEIO AMBIENTE', 80, 1),
(3, 'PEDIATRA', 120, 3),
(4, 'BANCO DE DADOS', 75, 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`matalu`);

--
-- Índices de tabela `aluno_curso`
--
ALTER TABLE `aluno_curso`
  ADD PRIMARY KEY (`codalucur`),
  ADD KEY `fkmatalu` (`fkmatalu`),
  ADD KEY `fkcodcur` (`fkcodcur`);

--
-- Índices de tabela `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`codare`);

--
-- Índices de tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`codcur`),
  ADD KEY `fkcodare` (`fkcodare`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `matalu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `aluno_curso`
--
ALTER TABLE `aluno_curso`
  MODIFY `codalucur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `area`
--
ALTER TABLE `area`
  MODIFY `codare` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `curso`
--
ALTER TABLE `curso`
  MODIFY `codcur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `aluno_curso`
--
ALTER TABLE `aluno_curso`
  ADD CONSTRAINT `aluno_curso_ibfk_1` FOREIGN KEY (`fkmatalu`) REFERENCES `aluno` (`matalu`),
  ADD CONSTRAINT `aluno_curso_ibfk_2` FOREIGN KEY (`fkcodcur`) REFERENCES `curso` (`codcur`);

--
-- Restrições para tabelas `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`fkcodare`) REFERENCES `area` (`codare`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

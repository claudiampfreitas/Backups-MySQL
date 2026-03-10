-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23/04/2023 às 06:29
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
-- Banco de dados: `bdclinica`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `atendimento`
--

CREATE TABLE `atendimento` (
  `codate` int(11) NOT NULL,
  `fkcodpac` int(11) NOT NULL,
  `fkcodmed` int(11) NOT NULL,
  `infate` varchar(120) DEFAULT NULL,
  `datate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `convenio`
--

CREATE TABLE `convenio` (
  `codcon` int(11) NOT NULL,
  `nomcon` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `especialidade`
--

CREATE TABLE `especialidade` (
  `codesp` int(11) NOT NULL,
  `nomesp` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `medico`
--

CREATE TABLE `medico` (
  `codmed` int(11) NOT NULL,
  `nommed` varchar(50) NOT NULL,
  `crmmed` int(11) NOT NULL,
  `telmed` varchar(15) DEFAULT NULL,
  `fkcodesp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `paciente`
--

CREATE TABLE `paciente` (
  `codpac` int(11) NOT NULL,
  `nompac` varchar(50) NOT NULL,
  `emapac` varchar(200) DEFAULT NULL,
  `datpac` date DEFAULT NULL,
  `telpac` varchar(15) DEFAULT NULL,
  `fkcodcon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `atendimento`
--
ALTER TABLE `atendimento`
  ADD PRIMARY KEY (`codate`),
  ADD KEY `fkcodpac` (`fkcodpac`),
  ADD KEY `fkcodmed` (`fkcodmed`);

--
-- Índices de tabela `convenio`
--
ALTER TABLE `convenio`
  ADD PRIMARY KEY (`codcon`);

--
-- Índices de tabela `especialidade`
--
ALTER TABLE `especialidade`
  ADD PRIMARY KEY (`codesp`);

--
-- Índices de tabela `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`codmed`),
  ADD KEY `fkcodesp` (`fkcodesp`);

--
-- Índices de tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`codpac`),
  ADD KEY `fkcodcon` (`fkcodcon`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `atendimento`
--
ALTER TABLE `atendimento`
  MODIFY `codate` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `convenio`
--
ALTER TABLE `convenio`
  MODIFY `codcon` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `especialidade`
--
ALTER TABLE `especialidade`
  MODIFY `codesp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `medico`
--
ALTER TABLE `medico`
  MODIFY `codmed` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `paciente`
--
ALTER TABLE `paciente`
  MODIFY `codpac` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `atendimento`
--
ALTER TABLE `atendimento`
  ADD CONSTRAINT `atendimento_ibfk_1` FOREIGN KEY (`fkcodpac`) REFERENCES `paciente` (`codpac`),
  ADD CONSTRAINT `atendimento_ibfk_2` FOREIGN KEY (`fkcodmed`) REFERENCES `medico` (`codmed`);

--
-- Restrições para tabelas `medico`
--
ALTER TABLE `medico`
  ADD CONSTRAINT `medico_ibfk_1` FOREIGN KEY (`fkcodesp`) REFERENCES `especialidade` (`codesp`);

--
-- Restrições para tabelas `paciente`
--
ALTER TABLE `paciente`
  ADD CONSTRAINT `paciente_ibfk_1` FOREIGN KEY (`fkcodcon`) REFERENCES `convenio` (`codcon`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23/04/2023 às 06:32
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
-- Banco de dados: `bdusuarios`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `agendar_consulta`
--

CREATE TABLE `agendar_consulta` (
  `id_consulta` int(11) NOT NULL,
  `fkid_user` int(11) NOT NULL,
  `fkid_medico` int(11) NOT NULL,
  `nome_consulta` varchar(50) NOT NULL,
  `valor_consulta` double DEFAULT NULL,
  `data_consulta` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `agendar_consulta`
--

INSERT INTO `agendar_consulta` (`id_consulta`, `fkid_user`, `fkid_medico`, `nome_consulta`, `valor_consulta`, `data_consulta`) VALUES
(1, 1, 1, 'OTORRINO', 30, '2020-04-15'),
(2, 2, 1, 'OTORRINO', 30, '2020-04-16'),
(3, 3, 2, 'CLINICO GERAL', 15, '2021-08-20');

-- --------------------------------------------------------

--
-- Estrutura para tabela `medicos`
--

CREATE TABLE `medicos` (
  `id_medico` int(11) NOT NULL,
  `nom_medico` varchar(50) NOT NULL,
  `crm_medico` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `medicos`
--

INSERT INTO `medicos` (`id_medico`, `nom_medico`, `crm_medico`) VALUES
(1, 'AGENOR LIMA', '15397104'),
(2, 'LEONARDO COELHO', '20163548'),
(3, 'DIEGO LIMA', '21582049');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nom_user` varchar(50) NOT NULL,
  `alt_user` double DEFAULT NULL,
  `datnasc_user` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id_user`, `nom_user`, `alt_user`, `datnasc_user`) VALUES
(1, 'ALEXANDRE BORGES', 1.7, '1989-07-31'),
(2, 'CLAUDIA GANDRA', 1.75, '1979-06-10'),
(3, 'DOUGLAS CARVALHO', 1.8, '1990-06-15');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `agendar_consulta`
--
ALTER TABLE `agendar_consulta`
  ADD PRIMARY KEY (`id_consulta`),
  ADD KEY `fkid_user` (`fkid_user`),
  ADD KEY `fkid_medico` (`fkid_medico`);

--
-- Índices de tabela `medicos`
--
ALTER TABLE `medicos`
  ADD PRIMARY KEY (`id_medico`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `agendar_consulta`
--
ALTER TABLE `agendar_consulta`
  MODIFY `id_consulta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `medicos`
--
ALTER TABLE `medicos`
  MODIFY `id_medico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `agendar_consulta`
--
ALTER TABLE `agendar_consulta`
  ADD CONSTRAINT `agendar_consulta_ibfk_1` FOREIGN KEY (`fkid_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `agendar_consulta_ibfk_2` FOREIGN KEY (`fkid_medico`) REFERENCES `medicos` (`id_medico`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

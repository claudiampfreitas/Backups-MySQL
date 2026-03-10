-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12/05/2023 às 21:20
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdsmilecare`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `agendamento`
--

CREATE TABLE `agendamento` (
  `id_agendamento` int(11) NOT NULL,
  `nome_paciente` varchar(50) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `genero` varchar(10) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `tipo_consulta` varchar(20) DEFAULT NULL,
  `dentista` varchar(50) DEFAULT NULL,
  `realizou_procedimento` tinyint(1) DEFAULT NULL,
  `procedimento` varchar(50) DEFAULT NULL,
  `plano_odontologico` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `agendamento_odontologico`
--

CREATE TABLE `agendamento_odontologico` (
  `id` int(11) NOT NULL,
  `nome_completo` varchar(100) NOT NULL,
  `data_nascimento` date NOT NULL,
  `genero` varchar(10) NOT NULL,
  `endereco_completo` varchar(200) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tipo_consulta_odontologica` varchar(50) NOT NULL,
  `dentista_preferido` varchar(100) DEFAULT NULL,
  `ja_realizou_procedimento` tinyint(1) NOT NULL,
  `procedimento_odontologico` varchar(100) DEFAULT NULL,
  `nome_plano_odontologico` varchar(100) DEFAULT NULL,
  `informacoes_adicionais` varchar(200) DEFAULT NULL,
  `data_disponivel_agendamento` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `anamnese`
--

CREATE TABLE `anamnese` (
  `id_paciente` int(11) NOT NULL,
  `idade` int(11) DEFAULT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `estado_civil` varchar(20) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `possui_doenca` tinyint(1) DEFAULT NULL,
  `qual_doenca` varchar(100) DEFAULT NULL,
  `faz_uso_medicamento` tinyint(1) DEFAULT NULL,
  `qual_medicamento` varchar(100) DEFAULT NULL,
  `possui_alergia` tinyint(1) DEFAULT NULL,
  `qual_alergia` varchar(100) DEFAULT NULL,
  `possui_alergia_medicamento` tinyint(1) DEFAULT NULL,
  `qual_alergia_medicamento` varchar(100) DEFAULT NULL,
  `ja_internado` tinyint(1) DEFAULT NULL,
  `possui_problema_dentario` tinyint(1) DEFAULT NULL,
  `qual_problema_dentario` varchar(100) DEFAULT NULL,
  `ja_fez_tratamento_dentario` tinyint(1) DEFAULT NULL,
  `qual_tratamento_dentario` varchar(100) DEFAULT NULL,
  `motivo_visita` varchar(100) DEFAULT NULL,
  `queixas` varchar(100) DEFAULT NULL,
  `estilo_vida` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `dentistas`
--

CREATE TABLE `dentistas` (
  `cro` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_nascimento` date NOT NULL,
  `genero` char(1) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `tipo_profissional` varchar(50) NOT NULL,
  `ativo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `formulario_contato`
--

CREATE TABLE `formulario_contato` (
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `assunto` varchar(100) DEFAULT NULL,
  `mensagem` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id` int(11) NOT NULL,
  `nome_completo` varchar(255) DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `genero` varchar(10) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `numero_contato` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pacientes`
--

CREATE TABLE `pacientes` (
  `id_paciente` int(11) NOT NULL,
  `nome_paciente` varchar(100) NOT NULL,
  `data_nascimento` date NOT NULL,
  `genero` varchar(10) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `convenio_odontologico` varchar(100) NOT NULL,
  `nome_contato_cobranca` varchar(100) NOT NULL,
  `telefone_cobranca` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `procedimentos_odontologicos`
--

CREATE TABLE `procedimentos_odontologicos` (
  `id_procedimento` int(11) NOT NULL,
  `nome_procedimento` varchar(100) NOT NULL,
  `horario_disponivel` datetime NOT NULL,
  `duracao_procedimento` int(11) NOT NULL,
  `dentista_responsavel` int(11) NOT NULL,
  `valor_procedimento` decimal(10,2) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `descricao_procedimento` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `redefinicao_senha`
--

CREATE TABLE `redefinicao_senha` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `login_usuario` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `data_criacao` timestamp NOT NULL DEFAULT current_timestamp(),
  `data_expiracao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `suporte`
--

CREATE TABLE `suporte` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `assunto` varchar(255) NOT NULL,
  `departamento` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `texto_erro` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios_sistema`
--

CREATE TABLE `usuarios_sistema` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `agendamento`
--
ALTER TABLE `agendamento`
  ADD PRIMARY KEY (`id_agendamento`);

--
-- Índices de tabela `agendamento_odontologico`
--
ALTER TABLE `agendamento_odontologico`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `anamnese`
--
ALTER TABLE `anamnese`
  ADD PRIMARY KEY (`id_paciente`);

--
-- Índices de tabela `dentistas`
--
ALTER TABLE `dentistas`
  ADD PRIMARY KEY (`cro`);

--
-- Índices de tabela `formulario_contato`
--
ALTER TABLE `formulario_contato`
  ADD PRIMARY KEY (`nome`);

--
-- Índices de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id_paciente`);

--
-- Índices de tabela `procedimentos_odontologicos`
--
ALTER TABLE `procedimentos_odontologicos`
  ADD PRIMARY KEY (`id_procedimento`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `dentista_responsavel` (`dentista_responsavel`);

--
-- Índices de tabela `redefinicao_senha`
--
ALTER TABLE `redefinicao_senha`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices de tabela `suporte`
--
ALTER TABLE `suporte`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios_sistema`
--
ALTER TABLE `usuarios_sistema`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `agendamento`
--
ALTER TABLE `agendamento`
  MODIFY `id_agendamento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `agendamento_odontologico`
--
ALTER TABLE `agendamento_odontologico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `redefinicao_senha`
--
ALTER TABLE `redefinicao_senha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `suporte`
--
ALTER TABLE `suporte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `procedimentos_odontologicos`
--
ALTER TABLE `procedimentos_odontologicos`
  ADD CONSTRAINT `procedimentos_odontologicos_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`),
  ADD CONSTRAINT `procedimentos_odontologicos_ibfk_2` FOREIGN KEY (`dentista_responsavel`) REFERENCES `dentistas` (`cro`);

--
-- Restrições para tabelas `redefinicao_senha`
--
ALTER TABLE `redefinicao_senha`
  ADD CONSTRAINT `redefinicao_senha_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios_sistema` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

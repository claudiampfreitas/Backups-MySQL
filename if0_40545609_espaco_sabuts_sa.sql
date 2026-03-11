-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql104.infinityfree.com
-- Tempo de geração: 30/11/2025 às 11:30
-- Versão do servidor: 11.4.7-MariaDB
-- Versão do PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `if0_40545609_espaco_sabuts_sa`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_pessoa` int(11) NOT NULL,
  `data_cadastro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`id_pessoa`, `data_cadastro`) VALUES
(2, '2025-11-28'),
(3, '2025-11-24'),
(4, '2025-11-26'),
(5, '2025-11-26'),
(6, '2025-11-28'),
(7, '2025-11-28'),
(8, '2025-11-28'),
(9, '2025-11-28'),
(10, '2025-11-30'),
(11, '2025-11-30'),
(12, '2025-11-30'),
(13, '2025-11-30'),
(14, '2025-11-30'),
(15, '2025-11-30'),
(16, '2025-11-30'),
(17, '2025-11-30'),
(18, '2025-11-30'),
(19, '2025-11-30'),
(20, '2025-11-30'),
(21, '2025-11-30'),
(22, '2025-11-30'),
(23, '2025-11-30'),
(24, '2025-11-30'),
(25, '2025-11-30'),
(26, '2025-11-30'),
(27, '2025-11-30'),
(28, '2025-11-30'),
(29, '2025-11-30'),
(30, '2025-11-30'),
(31, '2025-11-30'),
(32, '2025-11-29'),
(33, '2025-11-29'),
(34, '2025-11-29'),
(35, '2025-11-29'),
(36, '2025-11-29'),
(37, '2025-11-30'),
(38, '2025-11-30'),
(39, '2025-11-30'),
(40, '2025-11-30'),
(41, '2025-11-30');

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `id_pessoa` int(11) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `data_admissao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `funcionario`
--

INSERT INTO `funcionario` (`id_pessoa`, `cargo`, `data_admissao`) VALUES
(1, 'Cozinheira', '2025-11-20'),
(2, 'Atendente', '2025-11-23');

-- --------------------------------------------------------

--
-- Estrutura para tabela `item_pedido`
--

CREATE TABLE `item_pedido` (
  `id_item` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `item_pedido`
--

INSERT INTO `item_pedido` (`id_item`, `id_pedido`, `id_produto`, `quantidade`, `subtotal`) VALUES
(202, 73, 2, 1, '8.00'),
(203, 73, 5, 1, '6.00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedido`
--

CREATE TABLE `pedido` (
  `id_pedido` int(11) NOT NULL,
  `id_pessoa` int(11) NOT NULL,
  `id_funcionario` int(11) NOT NULL,
  `data_pedido` date NOT NULL,
  `hora_pedido` time NOT NULL,
  `forma_pagamento` varchar(50) NOT NULL,
  `valor_total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pedido`
--

INSERT INTO `pedido` (`id_pedido`, `id_pessoa`, `id_funcionario`, `data_pedido`, `hora_pedido`, `forma_pagamento`, `valor_total`) VALUES
(73, 41, 2, '2025-11-30', '11:17:49', 'Pix', '14.00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `id_pessoa` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cpf` char(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone` char(15) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pessoa`
--

INSERT INTO `pessoa` (`id_pessoa`, `nome`, `cpf`, `email`, `telefone`, `endereco`) VALUES
(1, 'Silvana Sá', '12345678901', 'silvana@email.com', '31987818313', 'Rua das Flores, 100'),
(2, 'Rayanne Souza', '12345678900', 'rayanne@email.com', '31999999999', 'Rua Exemplo, 123'),
(3, 'Diogo Freitas', NULL, '', '31988889999', 'Rua das Flores, 123'),
(4, 'Cláudia Mônica Peixoto Freitas', NULL, '', '31989110657', 'Rua Coronel Álvaro Teixeira da Costa, 99, Floramar'),
(5, 'Diogo Freitas', NULL, '', '31985061042', 'Coronel Álvaro Teixeira da Costa, 99'),
(6, 'Maria da Silva', NULL, '', '31999999999', 'Rua Dois, bairro Gato, 120'),
(7, 'Diogo Freitas', NULL, '', '31985061042', 'Rua Coronel Álvaro Teixeira da Costa, 99, Floramar'),
(8, 'Cláudia Mônica Peixoto Freitas', NULL, '', '31989110657', 'Rua Coronel Álvaro Teixeira da Costa, 99, Floramar'),
(9, 'Cláudia Mônica Peixoto Freitas', NULL, '', '31989110657', 'Rua Coronel Álvaro Teixeira da Costa, 99, Floramar'),
(10, 'Cláudia Mônica Peixoto Freitas', NULL, '', '31989110657', 'Rua Coronel Álvaro Teixeira da Costa, 99, Floramar'),
(11, 'Cláudia Mônica Peixoto Freitas', NULL, '', '31989110657', 'Rua Coronel Álvaro Teixeira da Costa, 99, Floramar'),
(12, 'Cláudia Mônica Peixoto Freitas', NULL, '', '31989110657', 'Rua Coronel Álvaro Teixeira da Costa, 99, Floramar'),
(13, 'Cláudia Mônica Peixoto Freitas', NULL, '', '31989110657', 'Rua Coronel Álvaro Teixeira da Costa, 99, Floramar'),
(14, 'Cláudia Mônica Peixoto Freitas', NULL, '', '31989110657', 'Rua Coronel Álvaro Teixeira da Costa, 99, Floramar'),
(15, 'Cláudia Mônica Peixoto Freitas', NULL, '', '31989110657', 'Rua Coronel Álvaro Teixeira da Costa, 99, Floramar'),
(16, 'Cláudia Freitas', NULL, '', '31989110657', 'Rua das Flores, 123'),
(17, 'Cláudia Freitas', NULL, '', '31989110657', 'Rua das Flores, 123'),
(18, 'Cláudia Mônica Peixoto Freitas', NULL, '', '31989110657', 'Rua Coronel Álvaro Teixeira da Costa, 99, Floramar'),
(19, 'Cláudia Freitas', NULL, '', '31989110657', 'Rua das Flores, 123'),
(20, 'Cláudia Mônica Peixoto Freitas', NULL, '', '31989110657', 'Rua Coronel Álvaro Teixeira da Costa, 99, Floramar'),
(21, 'Diogo Freitas', NULL, '', '31985061042', 'Coronel Álvaro Teixeira da Costa, 99'),
(22, 'Cláudia Mônica Peixoto Freitas', NULL, '', '31989110657', 'Rua Coronel Álvaro Teixeira da Costa, 99, Floramar'),
(23, 'Cláudia Mônica Peixoto Freitas', NULL, '', '31989110657', 'Rua Coronel Álvaro Teixeira da Costa, 99, Floramar'),
(24, 'Cláudia Mônica Peixoto Freitas', NULL, '', '31989110657', 'Rua Coronel Álvaro Teixeira da Costa, 99, Floramar'),
(25, 'Cláudia Mônica Peixoto Freitas', NULL, '', '31989110657', 'Rua Coronel Álvaro Teixeira da Costa, 99, Floramar'),
(26, 'Cláudia Mônica Peixoto Freitas', NULL, '', '31989110657', 'Rua Coronel Álvaro Teixeira da Costa, 99, Floramar'),
(27, 'Cláudia Mônica Peixoto Freitas', NULL, '', '31989110657', 'Rua Coronel Álvaro Teixeira da Costa, 99, Floramar'),
(28, 'Cláudia Mônica Peixoto Freitas', NULL, '', '31989110657', 'Rua Coronel Álvaro Teixeira da Costa, 99, Floramar'),
(29, 'Diogo Freitas', NULL, '', '31985061042', 'Coronel Álvaro Teixeira da Costa, 99'),
(30, 'Diogo Freitas', NULL, '', '31985061042', 'Coronel Álvaro Teixeira da Costa, 99'),
(31, 'Diogo Freitas', NULL, '', '31985061042', 'Coronel Álvaro Teixeira da Costa, 99'),
(32, 'Diogo Freitas', NULL, '', '31985061042', 'Coronel Álvaro Teixeira da Costa, 99'),
(33, 'Diogo Freitas', NULL, '', '31985061042', 'Coronel Álvaro Teixeira da Costa, 99'),
(34, 'Cláudia Mônica Peixoto Freitas', NULL, '', '31989110657', 'Rua Coronel Álvaro Teixeira da Costa, 99, Floramar'),
(35, 'Cláudia Mônica Peixoto Freitas', NULL, '', '31989110657', 'Rua Coronel Álvaro Teixeira da Costa, 99, Floramar'),
(36, 'Cláudia Mônica Peixoto Freitas', NULL, '', '31989110657', 'Rua Coronel Álvaro Teixeira da Costa, 99, Floramar'),
(37, 'Cláudia Mônica Peixoto Freitas', NULL, '', '31989110657', 'Rua Coronel Álvaro Teixeira da Costa, 99, Floramar'),
(38, 'Diogo Freitas', NULL, '', '31985061042', 'Coronel Álvaro Teixeira da Costa, 99'),
(39, 'Cláudia Mônica Peixoto Freitas', NULL, '', '31989110657', 'Rua Coronel Álvaro Teixeira da Costa, 99, Floramar'),
(40, 'Cláudia Freitas', NULL, '', '31989110657', 'Rua das Flores, 123'),
(41, 'Cláudia Freitas', NULL, '', '31989110657', 'Rua das Flores, 123');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `id_produto` int(11) NOT NULL,
  `nome_produto` varchar(100) NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `preco_unitario` decimal(10,2) NOT NULL,
  `disponivel` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`id_produto`, `nome_produto`, `descricao`, `preco_unitario`, `disponivel`) VALUES
(1, 'Torta', 'Torta caseira', '10.00', 1),
(2, 'Empanado de Frango', 'Empanado caseiro de frango', '8.00', 1),
(3, 'Pastel Frito', 'Pastel frito na hora', '5.00', 1),
(4, 'Refrigerante', 'Lata 350ml', '7.00', 1),
(5, 'Suco Natural', 'Suco natural', '6.00', 1),
(6, 'Cerveja', 'Lata 350 ml', '6.00', 1);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_pessoa`);

--
-- Índices de tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`id_pessoa`);

--
-- Índices de tabela `item_pedido`
--
ALTER TABLE `item_pedido`
  ADD PRIMARY KEY (`id_item`),
  ADD KEY `id_pedido` (`id_pedido`),
  ADD KEY `id_produto` (`id_produto`);

--
-- Índices de tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `id_funcionario` (`id_funcionario`),
  ADD KEY `pedido_ibfk_1` (`id_pessoa`);

--
-- Índices de tabela `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`id_pessoa`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id_produto`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `item_pedido`
--
ALTER TABLE `item_pedido`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT de tabela `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `id_pessoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`);

--
-- Restrições para tabelas `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`);

--
-- Restrições para tabelas `item_pedido`
--
ALTER TABLE `item_pedido`
  ADD CONSTRAINT `item_pedido_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`),
  ADD CONSTRAINT `item_pedido_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`);

--
-- Restrições para tabelas `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`id_pessoa`) REFERENCES `cliente` (`id_pessoa`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_pessoa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

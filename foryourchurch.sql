-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Fev-2023 às 20:58
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `foryourchurch`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastromembro`
--

CREATE TABLE `cadastromembro` (
  `id` int(11) NOT NULL,
  `imagem` text NOT NULL,
  `nome` varchar(50) NOT NULL,
  `pertencea` varchar(50) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cargo` varchar(20) NOT NULL,
  `rua` varchar(50) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `bairro` varchar(20) NOT NULL,
  `cep` varchar(10) NOT NULL,
  `cidade` varchar(20) NOT NULL,
  `estado` varchar(15) NOT NULL,
  `datanascimento` date NOT NULL,
  `databatismo` date NOT NULL,
  `membrodesde` date NOT NULL,
  `aceitoujesus` date NOT NULL,
  `observacao` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cadastromembro`
--

INSERT INTO `cadastromembro` (`id`, `imagem`, `nome`, `pertencea`, `telefone`, `email`, `cargo`, `rua`, `numero`, `bairro`, `cep`, `cidade`, `estado`, `datanascimento`, `databatismo`, `membrodesde`, `aceitoujesus`, `observacao`) VALUES
(3, 'fotodemembros/bonecomasculino.jpg', 'Rafael Oliveira Camurça', 'Terra Nova', '(92) 99471-3212', 'rafaelshsc@gmail.com', 'Auxiliar', 'Rua Moisés', '234', 'Terra Nova II', '69093-463', 'Manaus', 'AM', '2023-02-08', '2023-02-08', '2023-02-08', '2023-02-08', 'Líder de Louvor'),
(4, 'fotodemembros/bonecomasculino.jpg', 'Michael Garcez Camurça', 'Terra Nova', '(92) 99167-6868', 'michael.camurca@hotmail.com', 'Pastor Presidente', 'Rua Boa Vista', '109', 'Terra Nova II', '69093-540', 'Manaus', 'AM', '1974-01-27', '2001-01-01', '2009-01-01', '2001-01-01', 'Pastor Presidente da Igreja do Terra Nova II.'),
(5, 'fotodemembros/bonecofeminino.png', 'Jayne Figueiredo Camurça', 'Terra Nova', '(92) 99426-5997', 'jayne.morais11@gmail.com', 'Líder', 'Rua Moisés', '234', 'Terra Nova II', '69093-463', 'Manaus', 'AM', '1995-06-22', '2009-01-01', '2013-01-01', '2009-12-01', 'Líder do Louvor.'),
(9, 'fotodemembros/bonecomasculino.jpg', 'Samuel Ramos Camurça', 'Terra Nova', '(92) 99999-9999', 'samuel.camurca@hotmail.com', 'Membro', 'Rua Boa Vista', '109', 'Terra Nova II', '69088-540', 'Manaus', 'AM', '2004-05-31', '2015-02-01', '2009-02-01', '2009-02-01', 'Baterista'),
(12, 'fotodemembros/bonecofeminino.png', 'Diana Ramos Camurça', 'Terra Nova', '(92) 99999-9999', 'dianaca@gmail.com', 'Pastor (a)', 'Rua Boa Vista', '109', 'Terra Nova II', '69093540', 'Manaus', 'AM', '1982-02-08', '2000-01-01', '2009-01-01', '2009-01-01', 'Pastora'),
(13, 'fotodemembros/bonecofeminino.png', 'Rachel Ramos Camurça', 'Terra Nova', '(92) 999167-686', 'rachel.camurca@hotmail.com', 'Apostolo', 'Rua Boa Vista', '109', 'Terra Nova II', '69093540', 'Manaus', 'MA', '2006-02-02', '2022-01-01', '2009-01-01', '2009-01-01', 'Integrante do Louvor');

-- --------------------------------------------------------

--
-- Estrutura da tabela `lancamento`
--

CREATE TABLE `lancamento` (
  `id` int(11) NOT NULL,
  `data` date NOT NULL,
  `valor` float NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `cultode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `lancamento`
--

INSERT INTO `lancamento` (`id`, `data`, `valor`, `tipo`, `descricao`, `cultode`) VALUES
(1, '2023-02-27', 300, 'Entrada', 'Dízimo', 'Domingo'),
(6, '2023-02-27', 100, 'Entrada', 'Dízimo', 'Domingo'),
(7, '2023-02-27', 100, 'Saída', 'Ajuda Pastoral', 'Consagração'),
(8, '2023-02-27', 200, 'Saída', 'Ajuda Pastoral', 'Consagração'),
(9, '2023-02-27', 100, 'Saída', 'Água, Luz e Internet', 'Outros'),
(13, '2023-02-27', 100, 'Entrada', 'Oferta', 'Domingo'),
(14, '2023-02-27', 100, 'Saída', 'Datas Comemorativas', 'Outros'),
(15, '2023-02-27', 100, 'Entrada', 'Dízimo', 'Quarta-Feira'),
(16, '2023-02-26', 100, 'Entrada', 'Oferta', 'Escola Bíblica Dominical'),
(17, '2023-02-22', 25, 'Entrada', 'Oferta', 'Sábado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(50) CHARACTER SET dec8 COLLATE dec8_bin NOT NULL,
  `situacao` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `situacao`) VALUES
(1, 'Rafael Camurça', 'rafaelshsc@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cadastromembro`
--
ALTER TABLE `cadastromembro`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `lancamento`
--
ALTER TABLE `lancamento`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastromembro`
--
ALTER TABLE `cadastromembro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `lancamento`
--
ALTER TABLE `lancamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

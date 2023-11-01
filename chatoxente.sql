-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 25-Out-2023 às 23:36
-- Versão do servidor: 10.5.19-MariaDB-cll-lve
-- versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `u903552783_quicktalk`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `Chat`
--

CREATE TABLE `Chat` (
  `Id` int(11) NOT NULL,
  `Sender` int(11) NOT NULL,
  `Reciever` int(11) NOT NULL,
  `Message` varchar(500) NOT NULL,
  `Image` varchar(1000) NOT NULL,
  `Creation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `Chat`
--

INSERT INTO `Chat` (`Id`, `Sender`, `Reciever`, `Message`, `Image`, `Creation`) VALUES
(1, 2, 1, 'oi', '', '2023-10-06 11:55:19'),
(2, 2, 1, 'oi', '', '2023-10-06 11:55:23'),
(3, 1, 2, 'tudo bem?', '', '2023-10-06 11:58:42'),
(4, 1, 1, 'oi', '', '2023-10-06 14:04:57'),
(5, 1, 1, 'portal', '', '2023-10-06 14:05:03'),
(6, 1, 1, 'teste', '', '2023-10-06 14:33:27'),
(7, 1, 1, 'teste', '', '2023-10-06 14:33:29'),
(8, 1, 3, 'Fala ET', '', '2023-10-06 15:30:47'),
(9, 1, 3, 'Fala ET', '', '2023-10-06 15:30:49'),
(10, 3, 1, 'que massaaaaa', '', '2023-10-06 15:31:04');

-- --------------------------------------------------------

--
-- Estrutura da tabela `Conversations`
--

CREATE TABLE `Conversations` (
  `Id` int(11) NOT NULL,
  `MainUser` int(11) NOT NULL,
  `OtherUser` int(11) NOT NULL,
  `Unread` varchar(1) NOT NULL DEFAULT 'n',
  `Modification` timestamp NOT NULL DEFAULT current_timestamp(),
  `Creation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `Conversations`
--

INSERT INTO `Conversations` (`Id`, `MainUser`, `OtherUser`, `Unread`, `Modification`, `Creation`) VALUES
(5, 1, 1, 'n', '2023-10-06 14:33:27', '2023-10-06 14:33:27'),
(6, 1, 1, 'n', '2023-10-06 14:33:27', '2023-10-06 14:33:27'),
(7, 1, 3, 'n', '2023-10-06 15:30:47', '2023-10-06 15:30:47'),
(8, 3, 1, 'n', '2023-10-06 15:30:47', '2023-10-06 15:30:47');

-- --------------------------------------------------------

--
-- Estrutura da tabela `User`
--

CREATE TABLE `User` (
  `Id` int(11) NOT NULL,
  `Username` varchar(15) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Password` varchar(70) NOT NULL,
  `Picture` varchar(1000) NOT NULL,
  `Online` datetime NOT NULL,
  `Token` varchar(100) NOT NULL,
  `Secure` bigint(20) NOT NULL,
  `Creation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `User`
--

INSERT INTO `User` (`Id`, `Username`, `Email`, `Password`, `Picture`, `Online`, `Token`, `Secure`, `Creation`) VALUES
(1, 'Rodrigo', 'werpb@me.com', '$2y$10$aD3askwiBjhdbNrvI2BZZOyXIGLaQgCuHv013w8K71evLHaFPaWk.', 'Rodrigo_994146Sem título.png', '2023-10-06 21:38:33', '51d4624182864d1b0165c91d28a351ead65e4836', 1278788601, '2023-10-06 11:54:04'),
(2, 'cavalcanti', 'werpb84@gmail.com', '$2y$10$bIee5f3ubV6kB0iLihI.HeHJ8WXd6qg7Defijgc3UKx3xLyvfeYTW', '', '2023-10-09 21:23:01', '297dc2ad47534f469dc8758b5649ef80cd87b316', 9052641525, '2023-10-06 11:55:06'),
(3, 'Rute de Almeida', 'rute.am22@gmail.com', '$2y$10$VxeWlGOx7QJVBvGlJGsBU.YxoQaeAj0RJSZBGErS8OoFdJXqxNpta', '', '2023-10-06 15:34:17', 'c62cbf0b7cb7337a104eddb7e52ebd1ac84779f3', 2604464735, '2023-10-06 15:29:58');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `Chat`
--
ALTER TABLE `Chat`
  ADD PRIMARY KEY (`Id`);

--
-- Índices para tabela `Conversations`
--
ALTER TABLE `Conversations`
  ADD PRIMARY KEY (`Id`);

--
-- Índices para tabela `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `Chat`
--
ALTER TABLE `Chat`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `Conversations`
--
ALTER TABLE `Conversations`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `User`
--
ALTER TABLE `User`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

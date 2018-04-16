-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 16-Abr-2018 às 15:53
-- Versão do servidor: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pew_reidasfechaduras`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `chat_users`
--

CREATE TABLE `chat_users` (
  `id` int(11) NOT NULL,
  `message_ref` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cargo` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `tempo_ativo` varchar(255) NOT NULL,
  `data` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `chat_users`
--

INSERT INTO `chat_users` (`id`, `message_ref`, `nome`, `email`, `cargo`, `imagem`, `tempo_ativo`, `data`, `status`) VALUES
(10, 'cew_client_057db19641', 'Juan Rangel', 'juan@gmail.com', 'Efectus', '', '2120', '2018-01-23 02:43:12', 1),
(11, 'cew_client_3456d04ea2', 'Juan', 'juan@gmail.com', 'Efectus', '', '105', '2018-02-09 10:37:43', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_banners`
--

CREATE TABLE `pew_banners` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `posicao` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pew_banners`
--

INSERT INTO `pew_banners` (`id`, `titulo`, `descricao`, `imagem`, `link`, `posicao`, `status`) VALUES
(25, 'Titulo teste 1', 'DescriÃ§Ã£o teste 1', 'titulo-teste-1-banner-home-4fe40.png', 'https://www.efectusdigital.com.br/dev/reidasfechaduras/vitrine-produtos.php?categoria=fechaduras', 2, 1),
(26, 'Titulo teste 2', 'Descricao teste 2', 'titulo-teste-2-banner-home-acacb.png', 'https://www.efectusdigital.com.br/dev/reidasfechaduras/vitrine-produtos.php?categoria=molas-para-portas', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_categorias`
--

CREATE TABLE `pew_categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `data_controle` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pew_categorias`
--

INSERT INTO `pew_categorias` (`id`, `categoria`, `descricao`, `ref`, `data_controle`, `status`) VALUES
(27, 'Fechaduras', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'fechaduras', '2018-04-16 03:48:13', 1),
(28, 'Ferragens e acessÃ³rios', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'ferragens-e-acessorios', '2018-04-16 03:48:19', 1),
(30, 'SeguranÃ§a', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'seguranca', '2018-04-16 03:48:23', 1),
(31, 'DobradiÃ§as', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'dobradicas', '2018-04-16 03:48:09', 1),
(32, 'Cadeados', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'cadeados', '2018-04-16 03:47:49', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_categorias_produtos`
--

CREATE TABLE `pew_categorias_produtos` (
  `id` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `titulo_categoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pew_categorias_produtos`
--

INSERT INTO `pew_categorias_produtos` (`id`, `id_produto`, `id_categoria`, `titulo_categoria`) VALUES
(1, 1579, 27, 'Fechaduras');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_categorias_vitrine`
--

CREATE TABLE `pew_categorias_vitrine` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `data_controle` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pew_categorias_vitrine`
--

INSERT INTO `pew_categorias_vitrine` (`id`, `id_categoria`, `titulo`, `ref`, `imagem`, `data_controle`, `status`) VALUES
(11, 27, 'Fechaduras', 'fechaduras', 'fechaduras-categoria-vitrine-ref5f3e.jpg', '2017-12-20 10:19:21', 1),
(12, 29, 'Molas para portas', 'molas-para-portas', 'molas-para-portas-categoria-vitrine-refb8d7.jpg', '2017-12-20 04:55:11', 1),
(13, 30, 'SeguranÃ§a', 'seguranca', 'seguranca-categoria-vitrine-ref3a5d.jpg', '2017-12-20 04:55:33', 1),
(14, 32, 'Cadeados', 'cadeados', 'cadeados-categoria-vitrine-ref8eeb.png', '2017-12-20 10:20:00', 1),
(15, 31, 'DobradiÃ§as', 'dobradicas', 'dobradicas-categoria-vitrine-ref7391.jpg', '2017-12-20 10:20:12', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_categoria_destaque`
--

CREATE TABLE `pew_categoria_destaque` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `data_controle` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pew_categoria_destaque`
--

INSERT INTO `pew_categoria_destaque` (`id`, `id_categoria`, `titulo`, `ref`, `imagem`, `data_controle`, `status`) VALUES
(15, 31, 'DobradiÃ§as', 'ferragens-e-acessorios', 'dobradicas-categoria-destaque-ref4d38.jpg', '2018-04-12 03:59:54', 1),
(16, 30, 'SeguranÃ§a', 'seguranca', 'seguranca-categoria-destaque-ref42aa.jpg', '2018-04-12 03:59:45', 1),
(17, 32, 'Cadeados', 'cadeados', 'cadeados-categoria-destaque-ref2d94.png', '2018-04-12 04:00:17', 1),
(18, 27, 'Fechaduras', 'fechaduras', 'fechaduras-categoria-destaque-ref9603.jpg', '2018-04-12 04:00:35', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_chat_messages`
--

CREATE TABLE `pew_chat_messages` (
  `id` int(11) NOT NULL,
  `chat_session_id` varchar(255) NOT NULL,
  `message_from` varchar(255) NOT NULL,
  `message_to` varchar(255) NOT NULL,
  `message_content` text NOT NULL,
  `message_type` varchar(255) NOT NULL,
  `data_controle` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pew_chat_messages`
--

INSERT INTO `pew_chat_messages` (`id`, `chat_session_id`, `message_from`, `message_to`, `message_content`, `message_type`, `data_controle`, `status`) VALUES
(223, 'cew_chat_session_5f61fcdac6', 'cew_employer_24b8492827', 'cew_client_057db19641', 'Oi', 'text', '2018-01-23 02:43:45', 1),
(224, 'cew_chat_session_5f61fcdac6', 'cew_client_057db19641', 'cew_employer_24b8492827', '039acd9fb2676471a18f3bf00140bad2.png', 'image', '2018-01-23 02:44:42', 1),
(225, 'cew_chat_session_5f61fcdac6', 'cew_employer_24b8492827', 'cew_client_057db19641', 'OlÃ¡aa', 'text', '2018-01-23 03:37:32', 1),
(226, 'cew_chat_session_5f61fcdac6', 'cew_employer_24b8492827', 'cew_client_057db19641', 'tem alguem online ai?', 'text', '2018-01-23 03:37:39', 1),
(227, 'cew_chat_session_5f61fcdac6', 'cew_employer_24b8492827', 'cew_client_057db19641', 'OlÃ¡ Juan', 'text', '2018-02-08 11:24:56', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_chat_users`
--

CREATE TABLE `pew_chat_users` (
  `id` int(11) NOT NULL,
  `message_ref` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cargo` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `tempo_ativo` varchar(255) NOT NULL,
  `data` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pew_chat_users`
--

INSERT INTO `pew_chat_users` (`id`, `message_ref`, `nome`, `email`, `cargo`, `imagem`, `tempo_ativo`, `data`, `status`) VALUES
(38, 'cew_employer_24b8492827', 'reidasfechaduras', 'contato@reidasfechaduras.com.br', 'Rei das Fechaduras', '', '14260', '2018-02-08 05:50:48', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_config_orcamentos`
--

CREATE TABLE `pew_config_orcamentos` (
  `id` int(11) NOT NULL,
  `nome_empresa` varchar(255) NOT NULL,
  `cnpj_empresa` varchar(255) NOT NULL,
  `endereco_empresa` varchar(255) NOT NULL,
  `telefone_empresa` varchar(255) NOT NULL,
  `email_contato` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_contatos`
--

CREATE TABLE `pew_contatos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `assunto` varchar(255) NOT NULL,
  `mensagem` longtext NOT NULL,
  `data` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pew_contatos`
--

INSERT INTO `pew_contatos` (`id`, `nome`, `email`, `telefone`, `assunto`, `mensagem`, `data`, `status`) VALUES
(1, 'Rogerio Mendes', 'reyrogerio@hotmail.com', '30182477', 'Reclamação', 'É um fato conhecido de todos que um leitor se distrairá com o conteúdo de texto legível de uma página quando estiver examinando sua diagramação. ', '2017-11-08 11:12:14', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_cores`
--

CREATE TABLE `pew_cores` (
  `id` int(11) NOT NULL,
  `cor` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `data_controle` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pew_cores`
--

INSERT INTO `pew_cores` (`id`, `cor`, `imagem`, `data_controle`, `status`) VALUES
(3, 'AbÃ³bora Antiga', '5213-ref5213.jpg', '2018-04-06 02:13:30', 1),
(4, 'AbÃ³bora Nova', '9685-ref9685.jpg', '2018-04-06 02:13:46', 1),
(5, 'Azul 39 Antigo', '8c77-ref8c77.jpg', '2018-04-06 02:14:23', 1),
(6, 'Azul 39 Novo', 'e35c-refe35c.jpg', '2018-04-06 02:14:39', 1),
(7, 'Branco 15 Novo', '943d-ref943d.jpg', '2018-04-06 02:14:56', 1),
(8, 'Caramelo 204', '31a3-ref31a3.jpg', '2018-04-06 02:15:14', 1),
(9, 'Caramelo 2014 Antigo', 'dfbb-refdfbb.jpg', '2018-04-06 02:15:31', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_cores_produtos`
--

CREATE TABLE `pew_cores_produtos` (
  `id` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `cor` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_cores_relacionadas`
--

CREATE TABLE `pew_cores_relacionadas` (
  `id` int(11) NOT NULL,
  `id_produto` int(11) DEFAULT NULL,
  `id_relacao` int(11) DEFAULT NULL,
  `data_controle` datetime DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pew_cores_relacionadas`
--

INSERT INTO `pew_cores_relacionadas` (`id`, `id_produto`, `id_relacao`, `data_controle`, `status`) VALUES
(198, 12, 9, '2018-04-11 04:04:09', 1),
(199, 9, 12, '2018-04-11 04:04:09', 1),
(208, 5, 12, '2018-04-11 05:40:30', 1),
(209, 12, 5, '2018-04-11 05:40:30', 1),
(210, 5, 9, '2018-04-11 05:40:30', 1),
(211, 9, 5, '2018-04-11 05:40:30', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_departamentos`
--

CREATE TABLE `pew_departamentos` (
  `id` int(11) NOT NULL,
  `departamento` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `posicao` int(11) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `data_controle` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pew_departamentos`
--

INSERT INTO `pew_departamentos` (`id`, `departamento`, `descricao`, `posicao`, `ref`, `data_controle`, `status`) VALUES
(16, 'PRODUTOS', '', 1, 'produtos', '2018-04-16', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_departamentos_produtos`
--

CREATE TABLE `pew_departamentos_produtos` (
  `id` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pew_departamentos_produtos`
--

INSERT INTO `pew_departamentos_produtos` (`id`, `id_produto`, `id_departamento`) VALUES
(0, 1579, 16);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_dicas`
--

CREATE TABLE `pew_dicas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `subtitulo` varchar(255) NOT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `descricao_curta` varchar(255) DEFAULT NULL,
  `descricao_longa` text NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `video` varchar(255) NOT NULL,
  `data_controle` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pew_dicas`
--

INSERT INTO `pew_dicas` (`id`, `titulo`, `subtitulo`, `ref`, `descricao_curta`, `descricao_longa`, `imagem`, `thumb`, `video`, `data_controle`, `status`) VALUES
(1, 'Cuidado com os Cadeados', 'Os cadeados sÃ£o de grande utilidade', 'cuidado-com-os-cadeados', 'Ã‰ por causa disso que uma mesma chave nÃ£o costuma abrir mais do que um cadeado', '<p>Como &eacute; poss&iacute;vel ver no v&iacute;deo, o interior de um cadeado &eacute; formado por v&aacute;rios pinos de metal presos por uma mola dentro de um cilindro. Para liberar a trava dos cadeados, cada um desses pinos precisa estar na altura certa dentro do cilindro &ndash; e &eacute; essa altura que chamamos de &ldquo;segredo&rdquo; do cadeado. &Eacute;&nbsp;por isso que toda chave possui uma parte toda irregular e &ldquo;serrilhada&rdquo;: s&atilde;o essas ranhuras no metal que, ao serem inseridas na fechadura, fazem com que os pinos de metal de dentro do cadeado sejam empurrados para a altura correta, liberando assim a trava e permitindo a abertura. O sistema funciona do mesmo jeito em cadeados com senha, s&oacute; que ao inv&eacute;s de uma chave &eacute; a rota&ccedil;&atilde;o dos n&uacute;meros no cadeado que faz com que as partes internas dele se movimentem at&eacute; todas estarem na altura correta.</p><p>&Eacute; por causa disso que uma mesma chave n&atilde;o costuma abrir mais do que um cadeado: cada um possui um segredo diferente, o que impede que qualquer chave o abra, garantindo maior seguran&ccedil;a. Mas, algumas vezes, ter v&aacute;rios cadeados que necessitam de chaves diferentes pode ser um complicador. &Eacute; para isso que existem os cadeados mesmo segredo.</p>', 'cuidado-com-os-cadeados', '', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/uAat7oGO3m4\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', '2018-04-16 11:36:10', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_enderecos`
--

CREATE TABLE `pew_enderecos` (
  `id` int(11) NOT NULL,
  `id_relacionado` int(11) NOT NULL,
  `ref_relacionado` int(11) NOT NULL,
  `cep` int(8) NOT NULL,
  `rua` varchar(255) NOT NULL,
  `numero` varchar(255) NOT NULL,
  `complemento` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `data_cadastro` datetime NOT NULL,
  `data_controle` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pew_enderecos`
--

INSERT INTO `pew_enderecos` (`id`, `id_relacionado`, `ref_relacionado`, `cep`, `rua`, `numero`, `complemento`, `bairro`, `estado`, `cidade`, `data_cadastro`, `data_controle`, `status`) VALUES
(9, 15, 1, 80230040, 'Rua Engenheiros RebouÃ§as', '2111', 'Apto 06', 'RebouÃ§as', 'Curitiba', 'PR', '2018-03-20 01:13:29', '2018-03-20 01:13:29', 1),
(10, 16, 1, 80230040, 'Rua Engenheiros RebouÃ§as', '2111', '', 'RebouÃ§as', 'Curitiba', 'PR', '2018-03-29 02:46:03', '2018-03-29 02:46:03', 1),
(11, 17, 1, 81200490, 'Rua Doutor Edemar Ernsen', '245', 'Bloco 2, ap 11', 'Campo Comprido', 'PR', 'Curitiba', '2018-04-10 11:18:37', '2018-04-10 11:18:37', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_especificacoes_produtos`
--

CREATE TABLE `pew_especificacoes_produtos` (
  `id` int(11) NOT NULL,
  `id_especificacao` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `descricao` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pew_especificacoes_produtos`
--

INSERT INTO `pew_especificacoes_produtos` (`id`, `id_especificacao`, `id_produto`, `descricao`) VALUES
(52, 7, 1572, 'Preto'),
(55, 8, 1568, 'Casas domÃ©sticas'),
(54, 7, 1568, 'Preto'),
(68, 7, 1566, 'Branco'),
(58, 7, 1284, 'Branco'),
(83, 11, 1573, 'atÃ© 50Kg'),
(84, 7, 1573, 'Prata'),
(85, 7, 1416, 'PRATA, BRANCA, PRETA'),
(82, 10, 1573, 'de 700mm atÃ© 850mm'),
(76, 8, 1577, 'Portas de Entrada'),
(89, 8, 1575, 'Portas de Entrada'),
(73, 8, 1576, 'Portas de Entrada'),
(81, 9, 1573, '2'),
(86, 10, 1416, '700mm Ã€1100mm'),
(87, 7, 1416, 'PRATA, PRETA, BRANCA'),
(88, 10, 1416, '700mm Ã  1100mm'),
(123, 11, 1258, 'de 25 Ã  45Kg - PotÃªncia 2    de40 Ã  60Kg - PotÃªncia 3    de 60 Ã  90Kg - PotÃªncia 4'),
(124, 10, 1258, '800mm Ã  2100mm'),
(105, 11, 1390, 'AtÃ© 180 Kg'),
(104, 10, 1390, 'Porta internas atÃ© 1250mm e Porta Externas atÃ© 1000mm'),
(103, 7, 1390, 'Inox'),
(106, 9, 1390, 'EN 2-5'),
(126, 9, 1258, '2,3,4'),
(125, 7, 1258, 'Prata, Preta, Branca'),
(122, 8, 1258, 'Portas interna ou externas'),
(135, 9, 1479, 'ajustÃ¡vel'),
(134, 11, 1479, 'atÃ© 120 Kg'),
(133, 10, 1479, 'atÃ© 1100 mm'),
(132, 7, 1479, 'Inox'),
(136, 8, 1479, 'em porta pivotantes'),
(137, 7, 1414, 'Inox'),
(138, 10, 1414, 'atÃ© 900 mm'),
(139, 11, 1414, 'atÃ© 80 Kg'),
(140, 9, 1414, '3'),
(141, 7, 1304, 'Cromada ou cromo acetinada'),
(142, 11, 1304, 'atÃ© 40 Kg'),
(143, 9, 1304, '2'),
(144, 7, 1219, 'Preto'),
(190, 18, 1260, 'nÃ£o'),
(189, 7, 1260, 'Preto'),
(188, 21, 1260, '20 x 35 x 20 cm'),
(187, 22, 1260, '19,2 x 34,5 x 14,5 cm'),
(186, 19, 1487, '05 chaves'),
(171, 7, 1486, 'Cromada ou cromo acetinada'),
(172, 19, 1486, '05 chaves'),
(185, 7, 1487, 'Cromada ou cromo acetinada'),
(175, 7, 1483, 'Cromada ou cromo acetinada'),
(176, 19, 1483, '05 chaves'),
(179, 7, 1485, 'Cromada ou cromo acetinada'),
(180, 19, 1485, '05 chaves'),
(219, 18, 1580, 'NÃ£o'),
(218, 20, 1580, 'Em casas'),
(217, 8, 1580, 'Em testes'),
(191, 19, 1260, '02 chaves'),
(193, 10, 1298, 'atÃ© 950 mm '),
(194, 24, 1298, 'AtÃ© 2,50m'),
(195, 23, 1298, '5 cm'),
(216, 12, 1580, '20'),
(221, 20, 1579, 'sim');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_especificacoes_tecnicas`
--

CREATE TABLE `pew_especificacoes_tecnicas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `data_controle` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pew_especificacoes_tecnicas`
--

INSERT INTO `pew_especificacoes_tecnicas` (`id`, `titulo`, `data_controle`, `status`) VALUES
(7, 'Cor', '2018-03-05 02:20:37', 1),
(8, 'Uso indicado', '2018-03-05 02:20:47', 1),
(9, 'PotÃªncia', '2018-03-06 02:59:49', 1),
(10, 'Largura da Porta', '2018-03-06 03:00:04', 1),
(11, 'Peso da porta', '2018-03-06 03:00:14', 1),
(12, 'Altura', '2018-03-20 03:14:28', 1),
(13, 'Largura', '2018-03-20 03:14:35', 1),
(14, 'Profundidade', '2018-03-20 03:14:44', 1),
(22, 'DimensÃµes Internas', '2018-03-20 03:49:46', 1),
(21, 'DimensÃµes Externas', '2018-03-20 03:49:24', 1),
(18, 'Leitor BiomÃ©trico', '2018-03-20 03:20:45', 1),
(19, 'Quantidade de chaves', '2018-03-20 03:21:11', 1),
(20, 'Modo de aplicaÃ§Ã£o', '2018-03-20 03:21:41', 1),
(23, 'Espessura da porta', '2018-03-23 03:47:29', 1),
(24, 'Altura da porta', '2018-03-23 03:47:48', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_imagens_produtos`
--

CREATE TABLE `pew_imagens_produtos` (
  `id` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `posicao` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pew_imagens_produtos`
--

INSERT INTO `pew_imagens_produtos` (`id`, `id_produto`, `imagem`, `posicao`, `status`) VALUES
(2, 3, '97e491dbd424e33e1.jpg', 1, 1),
(3, 4, '97e491dbd424e33e1.jpg', 1, 1),
(4, 5, '97e491dbd424e33e1.jpg', 1, 1),
(7, 7, 'produto-teste-2-4cc1.jpg', 1, 1),
(9, 9, 'produto-teste-fcc3.jpg', 1, 1),
(1314, 1215, '    \r\n', 0, 1),
(1315, 1216, '    \r\n', 0, 1),
(1316, 1217, '    quadra_cr_ban.jpg\r\n', 0, 1),
(1317, 1218, '    quadra_cra_ext.jpg\r\n', 0, 1),
(1318, 1219, '-product-image-cff30.png', 0, 1),
(1319, 1220, '    yale_cofre_home.jpg\r\n', 0, 1),
(1320, 1221, '    yale_cofre_laptop.jpg\r\n', 0, 1),
(1321, 1222, '    \r\n', 0, 1),
(1322, 1223, '    yale_cofre_office.jpg\r\n', 0, 1),
(1323, 1224, '    yale_cofre_certificado_professional.jpg\r\n', 0, 1),
(1324, 1225, '    copa_cr_int.jpg\r\n', 0, 1),
(1325, 1226, '    copa_cr_ext.jpg\r\n', 0, 1),
(1326, 1227, '    copa_cr_int_2.jpg\r\n', 0, 1),
(1327, 1228, '    copa_cr_ban.jpg\r\n', 0, 1),
(1328, 1229, '    copa_cr_int_5.jpg\r\n', 0, 1),
(1329, 1230, '    copa_cr_ban_2.jpg\r\n', 0, 1),
(1330, 1231, '-product-image-e58b0.jpg', 0, 1),
(1331, 1232, '    copa_cra_ext.jpeg\r\n', 0, 1),
(1332, 1233, '    copa_cra_int.jpeg\r\n', 0, 1),
(1333, 1234, '-product-image-57500.jpg', 0, 1),
(1334, 1235, '    copa_cr_int_6.jpg\r\n', 0, 1),
(1335, 1236, '    lafonte_892_ixl_ext.jpg\r\n', 0, 1),
(1336, 1237, '    lafonte_892_inl_wc.jpg\r\n', 0, 1),
(1337, 1238, '    lafonte_892_inl_int.jpg\r\n', 0, 1),
(1338, 1239, '    lafonte_401_cr_ext__2.jpg\r\n', 0, 1),
(1339, 1240, '    lafonte_401_cr_wc.jpg\r\n', 0, 1),
(1340, 1241, '    lafonte_401_cr_int.jpg\r\n', 0, 1),
(1341, 1242, '    lafonte_401_cra_ext.jpg\r\n', 0, 1),
(1342, 1243, '    lafonte_401_cra_wc.jpg\r\n', 0, 1),
(1343, 1244, '    lafonte_401_cra_int.jpg\r\n', 0, 1),
(1344, 1245, '    eagle_325_cr1_1.jpg\r\n', 0, 1),
(1345, 1246, '    eagle_43_cr1_1_1.jpg\r\n', 0, 1),
(1346, 1247, '    agle_325_cra1.jpg\r\n', 0, 1),
(1347, 1248, '    eagle_43_cra1.jpg\r\n', 0, 1),
(1348, 1249, '    apc_3x25_cra.jpg\r\n', 0, 1),
(1349, 1250, '    apc_35x3_cra.jpg\r\n', 0, 1),
(1350, 1251, '    apc_4x3_cra.jpg\r\n', 0, 1),
(1351, 1252, '    apc_3x25_cr_inox.jpg\r\n', 0, 1),
(1352, 1253, '    apc_35x3_cr.jpg\r\n', 0, 1),
(1353, 1254, '    apc_4x3_cr.jpg\r\n', 0, 1),
(1354, 1255, '    mola_prata.jpg\r\n', 0, 1),
(1355, 1256, '    mola_preta.jpg\r\n', 0, 1),
(1356, 1257, '    soprano_branca_1.jpg\r\n', 0, 1),
(1357, 1258, '-product-image-f51e0.jpg', 0, 1),
(1358, 1259, '    bts_75.jpg\r\n', 0, 1),
(1359, 1260, '-product-image-654a0.png', 0, 1),
(1360, 1261, '    yale_yrd_221.jpg\r\n', 0, 1),
(1361, 1262, '    yale_4109_top.jpg\r\n', 0, 1),
(1362, 1263, '    yale_4109tr_perfil.jpg\r\n', 0, 1),
(1363, 1264, '    lafonte_6239_cra_ext.jpg\r\n', 0, 1),
(1364, 1265, '    lafonte_6239_cra_int.jpg\r\n', 0, 1),
(1365, 1266, '    lafonte_6239_cra_wc.jpg\r\n', 0, 1),
(1366, 1267, '    lafonte_6239_cr_ext.jpg\r\n', 0, 1),
(1367, 1268, '    lafonte_6239_cr_int.jpg\r\n', 0, 1),
(1368, 1269, '    lafonte_6239_cr_wc.jpg\r\n', 0, 1),
(1369, 1270, '    lafonte_6239_ab_ext.jpg\r\n', 0, 1),
(1370, 1271, '    lafonte_6239_ab_int.jpg\r\n', 0, 1),
(1371, 1272, '    lafonte_6239_ab_wc.jpg\r\n', 0, 1),
(1372, 1273, '    lafonte_451_ab_ext.jpg\r\n', 0, 1),
(1373, 1274, '    lafonte_451_ab_int.jpg\r\n', 0, 1),
(1374, 1275, '    lafonte_451_ab_ban.jpg\r\n', 0, 1),
(1375, 1276, '-product-image-2d990.jpg', 0, 1),
(1376, 1277, '    lafonte_451_cr_int.jpg\r\n', 0, 1),
(1377, 1278, '    lafonte_451_cr_wct.jpg\r\n', 0, 1),
(1378, 1279, '    lafonte_451_cra_ext.jpg\r\n', 0, 1),
(1379, 1280, '    lafonte_451_cra_int_1_2.jpg\r\n', 0, 1),
(1380, 1281, '    lafonte_451_cra_wc.jpg\r\n', 0, 1),
(1381, 1282, '    amelco_af62.jpg\r\n', 0, 1),
(1382, 1283, '    amelco_cda100.jpg\r\n', 0, 1),
(1383, 1284, '-product-image-162b0.jpg', 0, 1),
(1384, 1285, '    amelco_fv32i_cr.jpg\r\n', 0, 1),
(1385, 1286, '    amelco_fv32e_cr.jpg\r\n', 0, 1),
(1386, 1287, '    amelco_fv33i_cr.jpg\r\n', 0, 1),
(1387, 1288, '    amelco_fv33e_cr.jpg\r\n', 0, 1),
(1388, 1289, '    amelco_fn65.jpg\r\n', 0, 1),
(1389, 1290, '    amelco_fn66.jpg\r\n', 0, 1),
(1390, 1291, '    amelco_fe12.jpg\r\n', 0, 1),
(1391, 1292, '    amelco_fe12_1.jpg\r\n', 0, 1),
(1392, 1293, '    amelco_amm200.jpg\r\n', 0, 1),
(1393, 1294, '    hdl_c90_1.jpg\r\n', 0, 1),
(1394, 1295, '    yale_barra_pusht1_ppt.jpg\r\n', 0, 1),
(1395, 1296, '    yale_barra_pusht1_ppt_1.jpg\r\n', 0, 1),
(1396, 1297, '    yale_barrapusht2_ppt.jpg\r\n', 0, 1),
(1397, 1298, '    yale_barra_toucht1_ppt.jpg\r\n', 0, 1),
(1398, 1299, '    yale_barra_toucht1_ppt_1.jpg\r\n', 0, 1),
(1399, 1300, '    yale_barra_toucht2_ppt.jpg\r\n', 0, 1),
(1400, 1301, '    lafonte_tarjeta_cr.jpg\r\n', 0, 1),
(1401, 1302, '    lafonte_tarjeta_cr_1.jpg\r\n', 0, 1),
(1402, 1303, '    yale_moladetopo_cr.jpg\r\n', 0, 1),
(1403, 1304, '-product-image-d7840.png', 0, 1),
(1404, 1305, '    lafonte_barrant1_cra.jpg\r\n', 0, 1),
(1405, 1306, '    lafonte_barrant1esq_cra.jpg\r\n', 0, 1),
(1406, 1307, '    \r\n', 0, 1),
(1407, 1308, '    lafonte_85ab_325.jpg\r\n', 0, 1),
(1408, 1309, '    lafonte_85ab3530.jpg\r\n', 0, 1),
(1409, 1310, '    lafonte_85ab_4030.jpg\r\n', 0, 1),
(1410, 1311, '    lafonte_85ab_5040.jpg\r\n', 0, 1),
(1411, 1312, '    lafonte_85lpe_325.jpg\r\n', 0, 1),
(1412, 1313, '    lafonte_85lpe_3530.jpg\r\n', 0, 1),
(1413, 1314, '    lafonte_85lpe_4030.jpg\r\n', 0, 1),
(1414, 1315, '    lafonte_85lpe_5040.jpg\r\n', 0, 1),
(1415, 1316, '    lafonte_85lle_325.jpg\r\n', 0, 1),
(1416, 1317, '    lafonte_85lle_3530.jpg\r\n', 0, 1),
(1417, 1318, '    lafonte_85lle_4030.jpg\r\n', 0, 1),
(1418, 1319, '    lafonte_85lle_5040.jpg\r\n', 0, 1),
(1419, 1320, '    lafonte_503_cr_sf_1.jpg\r\n', 0, 1),
(1420, 1321, '    lafonte_503_cr_cf.jpg\r\n', 0, 1),
(1421, 1322, '    lafonte_503_cra_sf_1.jpg\r\n', 0, 1),
(1422, 1323, '    lafonte_503_cra_cf_1.jpg\r\n', 0, 1),
(1423, 1324, '    lafonte_400_20_cr.jpg\r\n', 0, 1),
(1424, 1325, '    lafonte_400_20_cra.jpg\r\n', 0, 1),
(1425, 1326, '    lafonte_400_20_cra_1.jpg\r\n', 0, 1),
(1426, 1327, '    lafonte_400_40_cra.png\r\n', 0, 1),
(1427, 1328, '    lafonte_400_20_lo.jpg\r\n', 0, 1),
(1428, 1329, '    lafonte_400_40_lo.jpg\r\n', 0, 1),
(1429, 1330, '    lafonte_400_20_lpe.jpg\r\n', 0, 1),
(1430, 1331, '    lafonte_400_40_lpe.jpg\r\n', 0, 1),
(1431, 1332, '    lafonte_400_20_pb.jpg\r\n', 0, 1),
(1432, 1333, '    \r\n', 0, 1),
(1433, 1334, '    lafonte_1070_cr_3.jpg\r\n', 0, 1),
(1434, 1335, '    lafonte_1070_cr_2.jpg\r\n', 0, 1),
(1435, 1336, '    lafonte_1070str_cr.jpg\r\n', 0, 1),
(1436, 1337, '    lafonte_1070str_cr_1.jpg\r\n', 0, 1),
(1437, 1338, '    lafonte_1222_cr_1.jpg\r\n', 0, 1),
(1438, 1339, '    lafonte_1222_cra.jpg\r\n', 0, 1),
(1439, 1340, '    lafonte_1222_lle_1.jpg\r\n', 0, 1),
(1440, 1341, '    lafonte_222n_cr.jpg\r\n', 0, 1),
(1441, 1342, '    lafonte_222n_cra_1.jpg\r\n', 0, 1),
(1442, 1343, '    lafonte_222_lle_1.jpg\r\n', 0, 1),
(1443, 1344, '    lafonte_378_cr.jpg\r\n', 0, 1),
(1444, 1345, '    lafonte_378_lle_1.jpg\r\n', 0, 1),
(1445, 1346, '    lafonte_378tr_cr_2.jpg\r\n', 0, 1),
(1446, 1347, '    lafonte_378tr_cr_3.jpg\r\n', 0, 1),
(1447, 1348, '    lafonte_378tr_lle_1.jpg\r\n', 0, 1),
(1448, 1349, '    lafonte_4021_cr.jpg\r\n', 0, 1),
(1449, 1350, '    lafonte_4021_cr_1.jpg\r\n', 0, 1),
(1450, 1351, '    lafonte_330tr_cr.jpg\r\n', 0, 1),
(1451, 1352, '    lafonte_330tr_cra.jpg\r\n', 0, 1),
(1452, 1353, '    \r\n', 0, 1),
(1453, 1354, '    milre_1200_frente.jpg\r\n', 0, 1),
(1454, 1355, '    milre_4700_externa.jpg\r\n', 0, 1),
(1455, 1356, '    milre_6300_frente.jpg\r\n', 0, 1),
(1456, 1357, '    milre_a2300_externa_1.jpg\r\n', 0, 1),
(1457, 1358, '    milre_6400_frente.jpg\r\n', 0, 1),
(1458, 1359, '    4600frente.jpg\r\n', 0, 1),
(1459, 1360, '    \r\n', 0, 1),
(1460, 1361, '    papaiz_20unificado.jpg\r\n', 0, 1),
(1461, 1362, '    papaiz_25unificado.jpg\r\n', 0, 1),
(1462, 1363, '    papaiz_30unificado.jpg\r\n', 0, 1),
(1463, 1364, '    papaiz_35unificado.jpg\r\n', 0, 1),
(1464, 1365, '    papaiz_40unificado.jpg\r\n', 0, 1),
(1465, 1366, '    papaiz_45unificado.jpg\r\n', 0, 1),
(1466, 1367, '    papaiz_50unificado.jpg\r\n', 0, 1),
(1467, 1368, '    tetra50.jpg\r\n', 0, 1),
(1468, 1369, '    tetra_crt_60_p.jpg\r\n', 0, 1),
(1469, 1370, '    tetra_crt_70_p.jpg\r\n', 0, 1),
(1470, 1371, '    haste_longa_30-50p.jpg\r\n', 0, 1),
(1471, 1372, '    haste_longa_30-70p.jpg\r\n', 0, 1),
(1472, 1373, '    haste_longa_35-70p.jpg\r\n', 0, 1),
(1473, 1374, '    haste_longa_45-70p.jpg\r\n', 0, 1),
(1474, 1375, '    stam_seg_25.jpg\r\n', 0, 1),
(1475, 1376, '    stam_seg_40.jpg\r\n', 0, 1),
(1476, 1377, '    std20p.jpg\r\n', 0, 1),
(1477, 1378, '    std25p.jpg\r\n', 0, 1),
(1478, 1379, '    std30p.jpg\r\n', 0, 1),
(1479, 1380, '    std35p.jpg\r\n', 0, 1),
(1480, 1381, '    std40p.jpg\r\n', 0, 1),
(1481, 1382, '    std45p.jpg\r\n', 0, 1),
(1482, 1383, '    std50p.jpg\r\n', 0, 1),
(1483, 1384, '    std60p.jpg\r\n', 0, 1),
(1484, 1385, '    std70p.jpg\r\n', 0, 1),
(1485, 1386, '    mola_prata_2.jpg\r\n', 0, 1),
(1486, 1387, '    mola_prata_3.jpg\r\n', 0, 1),
(1487, 1388, '    mola_prata_4.jpg\r\n', 0, 1),
(1488, 1389, '    mola_prata_5.jpg\r\n', 0, 1),
(1489, 1390, '-product-image-c20e0.jpg', 0, 1),
(1490, 1391, '    bts_75_1_1.jpg\r\n', 0, 1),
(1491, 1392, '    bts_65_1.jpg\r\n', 0, 1),
(1492, 1393, '    bts_84.jpg\r\n', 0, 1),
(1493, 1394, '    acrimet_24c.jpg\r\n', 0, 1),
(1494, 1395, '    acrimet_48.jpg\r\n', 0, 1),
(1495, 1396, '    acrimet_96.jpg\r\n', 0, 1),
(1496, 1397, '    acrimet_128.jpg\r\n', 0, 1),
(1497, 1398, '    acrimet_256.jpg\r\n', 0, 1),
(1498, 1399, '    acrimet_60chaveiros.jpg\r\n', 0, 1),
(1499, 1400, '    acrimet_ref143.jpg\r\n', 0, 1),
(1500, 1401, '    acrimet_suspensa.jpg\r\n', 0, 1),
(1501, 1402, '    peters_6lcc.jpg\r\n', 0, 1),
(1502, 1403, '    lixeira_ambiente_1.jpg\r\n', 0, 1),
(1503, 1404, '    peters_12lcc.jpg\r\n', 0, 1),
(1504, 1405, '    peters_30lba_1.jpg\r\n', 0, 1),
(1505, 1406, '    peters_3la.jpg\r\n', 0, 1),
(1506, 1407, '    jackwal_acces_30.jpg\r\n', 0, 1),
(1507, 1408, '    jackwal_acces_40.jpg\r\n', 0, 1),
(1508, 1409, '    jackwal_acces_60.jpg\r\n', 0, 1),
(1509, 1410, '    jackwal_acces_70.jpg\r\n', 0, 1),
(1510, 1411, '    jackwal_acces_80.jpg\r\n', 0, 1),
(1511, 1412, '    jackwal_acces_rebativel.jpg\r\n', 0, 1),
(1512, 1413, '    jackwal_acces_70curva.jpg\r\n', 0, 1),
(1513, 1414, '-product-image-af0f0.jpg', 0, 1),
(1514, 1415, '    ts-compakt.jpg\r\n', 0, 1),
(1515, 1416, '-product-image-f7780.jpg', 0, 1),
(1516, 1417, '    mola_dorma_ts_compakt_preta.png\r\n', 0, 1),
(1517, 1418, '    mola_dorma_ts_compakt_branca.png\r\n', 0, 1),
(1518, 1419, '    dorma_ma200_prata.jpg\r\n', 0, 1),
(1519, 1420, '    dorma_ma200_prata_1.jpg\r\n', 0, 1),
(1520, 1421, '    dorma_ma200_preta.jpg\r\n', 0, 1),
(1521, 1422, '    dorma_ma200_branca.jpg\r\n', 0, 1),
(1522, 1423, '    dorma_ma200_branca_1.jpg\r\n', 0, 1),
(1523, 1424, '    dorma_ma200_prata_2.jpg\r\n', 0, 1),
(1524, 1425, '    dorma_ma200_preta_1.jpg\r\n', 0, 1),
(1525, 1426, '    ma200_preta.jpg\r\n', 0, 1),
(1526, 1427, '    ma200_preta_1.jpg\r\n', 0, 1),
(1527, 1428, '    ma200_preta_2.jpg\r\n', 0, 1),
(1528, 1429, '    seal_protect.jpg\r\n', 0, 1),
(1529, 1430, '-product-image-b2690.jpg', 0, 1),
(1530, 1431, '    arouca_650_zc.png\r\n', 0, 1),
(1531, 1432, '    arouca_650_zce.png\r\n', 0, 1),
(1532, 1433, '    660_lp.jpg\r\n', 0, 1),
(1533, 1434, '    dobradi__a_550__4d97632137230_198x188.jpg\r\n', 0, 1),
(1534, 1435, '    dobradi__a_550__4d97632137230_198x188_1.jpg\r\n', 0, 1),
(1535, 1436, '    cantoneira_552_4da797a7a0acc_198x188.jpg\r\n', 0, 1),
(1536, 1437, '    cantoneira_4e53e03229af1_198x188.jpg\r\n', 0, 1),
(1537, 1438, '    batente_551_4da798a352c93_198x188.jpg\r\n', 0, 1),
(1538, 1439, '    batente_551_4da798a352c93_198x188_1.jpg\r\n', 0, 1),
(1539, 1440, '    parafuso_4e53e7ccdc91c_198x188.jpg\r\n', 0, 1),
(1540, 1441, '    parafuso_4e53e7ccdc91c_198x188_1.jpg\r\n', 0, 1),
(1541, 1442, '    targeta_4e53e922c69f7_198x188.jpg\r\n', 0, 1),
(1542, 1443, '    parafuso_4e53e80478511_198x188_1_.jpg\r\n', 0, 1),
(1543, 1444, '    parafuso_4e53e83a802e4_198x188_3.jpg\r\n', 0, 1),
(1544, 1445, '    chapa_553_4da798c3e99f6_198x188.jpg\r\n', 0, 1),
(1545, 1446, '    chapa_553_4da798c3e99f6_198x188.jpg\r\n', 0, 1),
(1546, 1447, '    pado_1000_cr.jpeg\r\n', 0, 1),
(1547, 1448, '    pado_11000_cr.jpg\r\n', 0, 1),
(1548, 1449, '    pado_1500_cr.jpeg\r\n', 0, 1),
(1549, 1450, '    pado_11500_cr.jpg\r\n', 0, 1),
(1550, 1451, '    pado_1500_cra.jpeg\r\n', 0, 1),
(1551, 1452, '    pado_11500_cra.jpg\r\n', 0, 1),
(1552, 1453, '    stam-perfil-metalico-602-03.jpg\r\n', 0, 1),
(1553, 1454, '    stam-perfil-metalico-603-11.jpg\r\n', 0, 1),
(1554, 1455, '    stam_901_cr.jpg\r\n', 0, 1),
(1555, 1456, '    stam-porta-de-enrolar-1201_2.jpg\r\n', 0, 1),
(1556, 1457, '    stam-sobrepor-1701-100.jpg\r\n', 0, 1),
(1557, 1458, '    stam-residencial-803-03-ri.jpg\r\n', 0, 1),
(1558, 1459, '    stam-porta-de-correr-1006-roseta-quadrada_02.jpg\r\n', 0, 1),
(1559, 1460, '    stam-porta-de-correr-1006-desenho_1.jpg\r\n', 0, 1),
(1560, 1461, '    papaiz_140_cr.jpg\r\n', 0, 1),
(1561, 1462, '    papaiz_140x2_cr.jpg\r\n', 0, 1),
(1562, 1463, '    papaiz_tetra_140_ca.jpg\r\n', 0, 1),
(1563, 1464, '    papaiz_140x2_ca.jpg\r\n', 0, 1),
(1564, 1465, '    prendedor_315_cr.jpeg\r\n', 0, 1),
(1565, 1466, '    prendedor_315_ca.jpeg\r\n', 0, 1),
(1566, 1467, '    prendedor_314_cr.jpeg\r\n', 0, 1),
(1567, 1468, '    imab_314_ca_1.jpg\r\n', 0, 1),
(1568, 1469, '    alian_a_kit_5570_bl.jpg\r\n', 0, 1),
(1569, 1470, '    alian_a_kit_5570_cr.jpg\r\n', 0, 1),
(1570, 1471, '    stam-pino-501_cr.jpg\r\n', 0, 1),
(1571, 1472, '    stam-tetra-1800_cr.jpg\r\n', 0, 1),
(1572, 1473, '    cilindro_la_fonte_cra.jpg\r\n', 0, 1),
(1573, 1474, '    alian_a_cilindro-p-fechadura-c400_cr.jpg\r\n', 0, 1),
(1574, 1475, '    mini_tetra-c800.jpg\r\n', 0, 1),
(1575, 1476, '    alian_a_cilindro-p-fechadura-c1200_cr.jpg\r\n', 0, 1),
(1576, 1477, '    bello_pivo.jpg\r\n', 0, 1),
(1577, 1478, '    bello_pivo_reforcado.jpg\r\n', 0, 1),
(1578, 1479, '-product-image-9bf80.jpeg', 0, 1),
(1579, 1480, '    pado_sm035.jpeg\r\n', 0, 1),
(1580, 1481, '    jbm_fa1_giro.jpg\r\n', 0, 1),
(1581, 1482, '    jbm_fc1_correr.jpg\r\n', 0, 1),
(1582, 1483, '-product-image-733b0.png', 0, 1),
(1583, 1484, '    cilindro_euro_keso.png\r\n', 0, 1),
(1584, 1485, '-product-image-10e80.png', 0, 1),
(1585, 1486, '-product-image-23c20.png', 0, 1),
(1586, 1487, '-product-image-dd670.png', 0, 1),
(1587, 1488, '    /p/u/puxador_ad_tr_tb.jpg\r\n', 0, 1),
(1588, 1489, '    /p/u/puxador_ad_tr_tb_1.jpg\r\n', 0, 1),
(1589, 1490, '    puxador_ad_tr_tb_2.jpg\r\n', 0, 1),
(1590, 1491, '    puxador_ad_tr_tb_3.jpg\r\n', 0, 1),
(1591, 1492, '    puxador_ad_tr_tb_4.jpg\r\n', 0, 1),
(1592, 1493, '    puxador_ad_tr_tb_5.jpg\r\n', 0, 1),
(1593, 1494, '    puxador_ad_tr_tb_6.jpg\r\n', 0, 1),
(1594, 1495, '    puxador_ad_tr_tb_1_1.jpg\r\n', 0, 1),
(1595, 1496, '    puxador_h0001.jpg\r\n', 0, 1),
(1596, 1497, '    puxador_h0001_1.jpg\r\n', 0, 1),
(1597, 1498, '    puxador_h0001_2.jpg\r\n', 0, 1),
(1598, 1499, '    puxador_h0001_3.jpg\r\n', 0, 1),
(1599, 1500, '    puxador_h0001_4.jpg\r\n', 0, 1),
(1600, 1501, '    puxador_h0001_5.jpg\r\n', 0, 1),
(1601, 1502, '    puxador_h0001_6.jpg\r\n', 0, 1),
(1602, 1503, '    puxador_h0001_7.jpg\r\n', 0, 1),
(1603, 1504, '    lafonte_751_ros_ext_cr_1.jpg\r\n', 0, 1),
(1604, 1505, '    lafonte_751_ros_int_cr_1.jpg\r\n', 0, 1),
(1605, 1506, '    lafonte_751_ros_ban_cr_1.jpg\r\n', 0, 1),
(1606, 1507, '    cofre_mini_yale_-_azul.jpg\r\n', 0, 1),
(1607, 1508, '    cofre_mini_yale_-_rosa.jpg\r\n', 0, 1),
(1608, 1509, '    cofre_mini_yale_-_preto.jpg\r\n', 0, 1),
(1609, 1510, '    alca-para-porta-dh-210.jpg\r\n', 0, 1),
(1610, 1511, '    alca-para-porta-dh-8020.jpg\r\n', 0, 1),
(1611, 1512, '    alca-para-porta-hd-257.jpg\r\n', 0, 1),
(1612, 1513, '    alca-para-porta-hd-257_1.jpg\r\n', 0, 1),
(1613, 1514, '    alca-para-porta-jy-235a.jpg\r\n', 0, 1),
(1614, 1515, '    alca-para-porta-jy-565.jpg\r\n', 0, 1),
(1615, 1516, '    alca-para-porta-sph-060.jpg\r\n', 0, 1),
(1616, 1517, '    dobradi_a_pag_325_1.png\r\n', 0, 1),
(1617, 1518, '    /d/o/dobradi_a_page_325_lo_1.jpg\r\n', 0, 1),
(1618, 1519, '    dobradi_a_pag_225_a_o_cromo_escovado_3.png\r\n', 0, 1),
(1619, 1520, '    dobradi_a_pag_225_a_o_cromo_escovado_4.png\r\n', 0, 1),
(1620, 1521, '    dobradi_a_page_vai_e_vem-_355_2_lp_4_.jpg\r\n', 0, 1),
(1621, 1522, '    dobradi_a_page_vai_e_vem-_355_lp_3_.jpg\r\n', 0, 1),
(1622, 1523, '    dobradi_a_page_vai_e_vem-_355_2_cra_4_.jpg\r\n', 0, 1),
(1623, 1524, '    dobradi_a_page_vai_e_vem-_355_2_cra_4__1.jpg\r\n', 0, 1),
(1624, 1525, '    dobradi_a_page_vai_e_vem-_355_lc_4_.jpg\r\n', 0, 1),
(1625, 1526, '    dobradi_a_page_vai_e_vem-_355_lc_3_.jpg \r\n', 0, 1),
(1626, 1527, '    dobradi_a_page_vai_e_vem-_355_lox_4_.jpg\r\n', 0, 1),
(1627, 1528, '    dobradi_a_page_vai_e_vem-_355_lox_3_.jpg\r\n', 0, 1),
(1628, 1529, '    dobradi_a_page_vai_e_vem-_255_fn_3_.jpg\r\n', 0, 1),
(1629, 1530, '    dobradi_a_page_vai_e_vem-_255_fn_3_.jpg\r\n', 0, 1),
(1630, 1531, '    fechadura_vouga_branca.jpg\r\n', 0, 1),
(1631, 1532, '    fechadura_vouga_preta.jpg\r\n', 0, 1),
(1632, 1533, '    image2.jpg\r\n', 0, 1),
(1633, 1534, '    tubular_preta_lockwell.jpg\r\n', 0, 1),
(1634, 1535, '    tubular_branca_lockwell2.jpg\r\n', 0, 1),
(1635, 1536, '    fechadura-90-mm-lockwell-cor-ocre-65893.jpg\r\n', 0, 1),
(1636, 1537, '    fechadura-90-mm-lockwell-cor-preto-65891_1.jpg\r\n', 0, 1),
(1637, 1538, '    fechadura-90-mm-lockwell-cor-cromado-65894.jpg\r\n', 0, 1),
(1638, 1539, '    fechadura-90-mm-lockwell-cor-cromado-65894_1.jpg\r\n', 0, 1),
(1639, 1540, '    \r\n', 0, 1),
(1640, 1541, '    caixa_cartas_classic_001_prata_-foto1_1.png\r\n', 0, 1),
(1641, 1542, '    caixa_cartas_frontal_classic_021_1.png\r\n', 0, 1),
(1642, 1543, '    caixa_cartas_classic_001_branca_-foto2.png\r\n', 0, 1),
(1643, 1544, '    caixa_cartas_decor_0_02_prata_-foto1.png\r\n', 0, 1),
(1644, 1545, '    caixa_cartas_imperial_000_prata_-foto1_1.png\r\n', 0, 1),
(1645, 1546, '    caixa_cartas_imperial_000_prata_-foto1.png\r\n', 0, 1),
(1646, 1547, '    \r\n', 0, 1),
(1647, 1548, '    caixa_cartas_regiane_042_prata_-foto1.png\r\n', 0, 1),
(1648, 1549, '    caixa_cartas_regiane_042_prata_-foto1_1.png\r\n', 0, 1),
(1649, 1550, '    caixa_cartas_regiane_242_branca_-foto1.png\r\n', 0, 1),
(1650, 1551, '    caixa_cartas_yankee_2_56_branca_-foto1.png\r\n', 0, 1),
(1651, 1552, '    caixa_cartas_yankee_0_56_prata_-foto4.png\r\n', 0, 1),
(1652, 1553, '    caixa_cartas_yankee_2_56_branca_-foto1_1.png\r\n', 0, 1),
(1653, 1554, '    caixa_cartas_safira_0_10_prata_-foto1_1.png\r\n', 0, 1),
(1654, 1555, '    caixa_cartas_safira_0_10_prata_-foto2.png\r\n', 0, 1),
(1655, 1556, '    caixa_cartas_safira_2_10_branca_-foto1_1.png\r\n', 0, 1),
(1656, 1557, '    caixa_cartas_vitoria_2_41.foto1png_2.jpg\r\n', 0, 1),
(1657, 1558, '    caixa_cartas_vitoria_2_41.png\r\n', 0, 1),
(1658, 1559, '    caixa_cartas_vitoria_branca.foto1png.jpg\r\n', 0, 1),
(1659, 1560, '    pega_ladrao_505a_fc.jpg\r\n', 0, 1),
(1660, 1561, '    pega_ladrao_trinfor_v18l_cr.png\r\n', 0, 1),
(1661, 1562, '    nina_externa.png\r\n', 0, 1),
(1662, 1563, '    nina_interna.png\r\n', 0, 1),
(1663, 1564, '    nina_banheiro.png\r\n', 0, 1),
(1664, 1565, '    inoxvita_linea_externa_1.png\r\n', 0, 1),
(1665, 1566, '-product-image-3fbb0.jpg', 0, 1),
(1666, 1567, '    inoxvita_linea_banheiro.png\r\n', 0, 1),
(1667, 1568, '-product-image-67880.jpg', 0, 1),
(1668, 1569, '-product-image-0d770.jpg', 0, 1),
(1669, 1570, '    ganchos_design_pequenos_3m.png\r\n', 0, 1),
(1670, 1571, '-product-image-25950.jpg', 0, 1),
(1671, 1572, '-product-image-b7400.jpg', 0, 1),
(1674, 1572, '-product-image-c0573.jpg', 3, 1),
(1675, 1571, '-product-image-81d31.jpg', 1, 1),
(1677, 1571, '-product-image-9f0c3.jpg', 3, 1),
(1678, 1234, '-product-image-ee701.jpeg', 1, 1),
(1679, 1573, '-product-image-80c00.jpg', 0, 1),
(1682, 1575, '-product-image-979a0.jpg', 0, 1),
(1683, 1575, '28fe2653bc3140691.jpg', 1, 1),
(1684, 1575, '28fe2653bc3140692.jpg', 2, 1),
(1685, 1575, '28fe2653bc3140693.jpg', 3, 1),
(1686, 1576, 'f25e0ba8922455c30.jpg', 0, 1),
(1687, 1576, 'f25e0ba8922455c31.jpg', 1, 1),
(1688, 1576, 'f25e0ba8922455c32.jpg', 2, 1),
(1689, 1577, '-product-image-4cf80.jpg', 0, 1),
(1690, 1577, 'd3e7a8a0513c0f731.jpg', 1, 1),
(1691, 1577, 'd3e7a8a0513c0f732.jpg', 2, 1),
(1692, 1577, '-product-image-089f3.jpg', 3, 1),
(1693, 1573, '-product-image-0d361.jpg', 1, 1),
(1694, 1578, '3b40233b3f95cc540.jpg', 0, 1),
(1695, 1578, '3b40233b3f95cc541.jpg', 1, 1),
(1696, 1579, '258fda8d1402f9e50.jpg', 0, 1),
(1697, 1579, '258fda8d1402f9e51.jpg', 1, 1),
(1698, 1390, '-product-image-3e1d1.jpg', 1, 1),
(1699, 1390, '-product-image-6c6d2.jpg', 2, 1),
(1700, 1258, '-product-image-2ff81.jpg', 1, 1),
(1701, 1258, '-product-image-1b332.jpg', 2, 1),
(1702, 1219, '-product-image-50aa1.png', 1, 1),
(1703, 1260, '-product-image-46221.png', 1, 1),
(1704, 1487, '-product-image-4c441.png', 1, 1),
(1705, 1486, '-product-image-d00c1.png', 1, 1),
(1706, 1486, '-product-image-64002.png', 2, 1),
(1707, 1487, '-product-image-7c0a2.png', 2, 1),
(1708, 1483, '-product-image-b9cf1.png', 1, 1),
(1709, 1483, '-product-image-b7a82.png', 2, 1),
(1710, 1485, '-product-image-49871.png', 1, 1),
(1711, 1580, 'ec02c4050de3d0c80.png', 0, 1),
(1712, 1580, 'ec02c4050de3d0c81.png', 1, 1),
(1713, 1580, 'ec02c4050de3d0c82.png', 2, 1),
(1714, 1580, 'ec02c4050de3d0c83.png', 3, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_links_menu`
--

CREATE TABLE `pew_links_menu` (
  `id` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pew_links_menu`
--

INSERT INTO `pew_links_menu` (`id`, `id_departamento`, `id_categoria`) VALUES
(0, 16, 27),
(0, 16, 28),
(0, 16, 30),
(0, 16, 31),
(0, 16, 32);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_marcas`
--

CREATE TABLE `pew_marcas` (
  `id` int(11) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `data_controle` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pew_marcas`
--

INSERT INTO `pew_marcas` (`id`, `marca`, `descricao`, `ref`, `imagem`, `data_controle`, `status`) VALUES
(1, 'Maidi Grey', '', 'maidi-grey', '', '2018-03-27 04:01:04', 1),
(27, 'Arouca', '', 'arouca', '', '2017-12-20 10:45:54', 1),
(28, 'Yale', '', 'yale', 'yale-refc75a.jpg', '2018-03-23 04:01:30', 1),
(29, 'La fonte', '', 'la-fonte', '', '2017-12-20 10:46:00', 1),
(30, 'Pado', '', 'pado', 'pado-refd8b5.jpg', '2018-03-23 04:04:53', 1),
(31, 'Papaiz', 'Papaiz inovando a sua seguranÃ§a Ã© a nossa responsabilidade', 'papaiz', 'papaiz-refcf97.png', '2018-03-07 10:44:02', 1),
(32, 'Cadeados', '', 'cadeados', '', '2017-12-20 10:45:51', 1),
(34, 'Intelbras', '100% brasileira. Assim Ã© a Intelbras, uma empresa que atua nas Ã¡reas de SeguranÃ§a, Telecom e Redes. Porque conhecer e entender as necessidades dos consumidores Ã© um dos motivos que faz a Intelbras lÃ­der em vÃ¡rios segmentos nos quais atua', 'intelbras', 'intelbras-ref0eca.png', '2018-03-16 12:21:13', 1),
(35, '3M', '', '3m', '', '2018-02-16 04:18:01', 1),
(36, 'Soprano', '', 'soprano', 'soprano-ref6d54.png', '2018-03-23 03:53:56', 1),
(37, 'Datti', '', 'datti', 'datti-ref89f0.png', '2018-03-23 04:00:56', 1),
(38, 'Prates e Barbosa', '', 'prates-e-barbosa', 'prates-e-barbosa-refbb7b.png', '2018-03-23 04:02:38', 1),
(39, 'Lockwell', '', 'lockwell', 'lockwell-refe104.png', '2018-03-23 04:01:51', 1),
(40, 'Vouga', '', 'vouga', 'vouga-refb243.jpg', '2018-03-23 04:03:31', 1),
(41, 'Page', '', 'page', '', '2018-02-16 04:18:01', 1),
(42, 'BSKF', '', 'bskf', 'bskf-ref0536.jpg', '2018-03-23 04:02:11', 1),
(43, 'JHF', '', 'jhf', 'jhf-reff845.jpg', '2018-03-23 04:05:23', 1),
(44, 'Keso', '', 'keso', 'keso-refe28a.jpg', '2018-03-23 04:04:15', 1),
(45, 'JBM', '', 'jbm', 'jbm-refcdfa.png', '2018-03-23 04:00:30', 1),
(46, 'Bello inox', '', 'bello-inox', 'bello-inox-refcef1.png', '2018-03-23 04:00:13', 1),
(47, 'Alian&ccedil;a', '', 'alianca', '', '2018-02-16 04:18:02', 1),
(48, 'Stam', '', 'stam', '', '2018-02-16 04:18:02', 1),
(49, 'Imab', '', 'imab', '', '2018-02-16 04:18:02', 1),
(50, 'Dorma', '', 'dorma', 'dorma-ref4cc7.png', '2018-03-16 04:43:58', 1),
(51, 'Jackwal', '', 'jackwal', '', '2018-02-16 04:18:02', 1),
(52, 'Acrimet', '', 'acrimet', '', '2018-02-16 04:18:02', 1),
(53, 'Milre', '', 'milre', '', '2018-02-16 04:18:02', 1),
(54, 'HDL', '', 'hdl', '', '2018-02-16 04:18:02', 1),
(55, 'Amelco', '', 'amelco', '', '2018-02-16 04:18:02', 1),
(56, 'Marca teste', '', '', '', '2018-02-16 05:44:25', 1),
(57, 'Volper', '', 'volper', 'volper-ref0937.jpg', '2018-03-23 04:05:41', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_minha_conta`
--

CREATE TABLE `pew_minha_conta` (
  `id` int(11) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `celular` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `data_nascimento` date NOT NULL,
  `sexo` varchar(255) NOT NULL,
  `data_cadastro` datetime NOT NULL,
  `data_controle` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pew_minha_conta`
--

INSERT INTO `pew_minha_conta` (`id`, `usuario`, `email`, `senha`, `celular`, `telefone`, `cpf`, `data_nascimento`, `sexo`, `data_cadastro`, `data_controle`, `status`) VALUES
(15, 'Rogerio Mendes', 'reyrogerio@hotmail.com', '08541bb36f049db6004fd98457138485', '(41) 99753-6262', '', '05453531908', '1998-07-29', 'masculino', '2018-03-20 01:13:29', '2018-03-20 01:13:29', 1),
(17, 'Juan Desenvolvedor', 'juanweb@efectusdigital.com.br', '6d2281a3f39f85a958ddf6d1414d9da9', '(41) 99191-2958', '(41) 99191-2980', '09163977931', '2000-10-10', 'masculino', '2018-04-10 11:18:37', '2018-04-10 11:18:37', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_newsletter`
--

CREATE TABLE `pew_newsletter` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pew_newsletter`
--

INSERT INTO `pew_newsletter` (`id`, `nome`, `email`, `data`) VALUES
(1, 'Rogerio', 'reyrogerio@hotmail.com', '2018-03-04 03:54:25');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_orcamentos`
--

CREATE TABLE `pew_orcamentos` (
  `id` int(11) NOT NULL,
  `ref_orcamento` varchar(255) NOT NULL,
  `nome_cliente` varchar(255) NOT NULL,
  `telefone_cliente` varchar(255) NOT NULL,
  `email_cliente` varchar(255) NOT NULL,
  `rg_cliente` varchar(255) NOT NULL,
  `cpf_cliente` varchar(255) NOT NULL,
  `endereco_envio` varchar(255) NOT NULL,
  `produtos` text NOT NULL,
  `porcentagem_desconto` float NOT NULL,
  `preco_total` varchar(255) NOT NULL,
  `tempo_entrega` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `data_pedido` datetime NOT NULL,
  `data_vencimento` date NOT NULL,
  `data_controle` datetime NOT NULL,
  `modify_controle` varchar(255) NOT NULL,
  `status_orcamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pew_orcamentos`
--

INSERT INTO `pew_orcamentos` (`id`, `ref_orcamento`, `nome_cliente`, `telefone_cliente`, `email_cliente`, `rg_cliente`, `cpf_cliente`, `endereco_envio`, `produtos`, `porcentagem_desconto`, `preco_total`, `tempo_entrega`, `id_vendedor`, `data_pedido`, `data_vencimento`, `data_controle`, `modify_controle`, `status_orcamento`) VALUES
(6, 'e9cbbc0e5be1f0ab', 'Rogerio', '(41) 3018-2477', 'rogerio@efectusweb.com.br', '121236830', '05453531908', '80230040||2111||Apto 06', '1572||2|#|1509||1', 2, '374.35', 30, 2, '2018-02-22 12:38:28', '2018-03-24', '2018-02-22 12:38:28', '2', 0),
(7, '5b99326470e38524', 'Carlos', '(41) 3016-8008', 'ninicomazu@hotmail.com', '000000000000000', '000000000000000', '000000000000000||280||casa', '', 5, '0', 30, 2, '2018-03-07 10:41:00', '2018-04-06', '2018-03-07 10:41:00', '2', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_pedidos_orcamentos`
--

CREATE TABLE `pew_pedidos_orcamentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `mensagem` text NOT NULL,
  `data_criacao` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pew_pedidos_orcamentos`
--

INSERT INTO `pew_pedidos_orcamentos` (`id`, `nome`, `telefone`, `email`, `mensagem`, `data_criacao`, `status`) VALUES
(1, 'O rogerio sabe que nÃ£o vai dar certo', 'O rogerio sabe que nÃ£o vai dar certo', 'juan@dev.com', 'O rogerio sabe que nÃ£o vai dar certo', '2018-03-12 03:22:42', 0),
(2, 'O rogerio sabe que nÃ£o vai dar certo', 'O rogerio sabe que nÃ£o vai dar certo', 'juan@dev.com', 'O rogerio sabe que nÃ£o vai dar certo', '2018-03-12 03:31:10', 0),
(3, 'O rogerio sabe que nÃ£o vai dar certo', 'O rogerio sabe que nÃ£o vai dar certo', 'juan@dev.com', 'O rogerio sabe que nÃ£o vai dar certo', '2018-03-12 03:34:51', 0),
(4, 'O rogerio sabe que nÃ£o vai dar certo', 'O rogerio sabe que nÃ£o vai dar certo', 'juan@dev.com', 'O rogerio sabe que nÃ£o vai dar certo', '2018-03-12 03:34:52', 0),
(5, 'O rogerio sabe que nÃ£o vai dar certo', 'O rogerio sabe que nÃ£o vai dar certo', 'juan@dev.com', 'O rogerio sabe que nÃ£o vai dar certo', '2018-03-12 03:35:31', 0),
(6, 'O rogerio sabe que nÃ£o vai dar certo', 'O rogerio sabe que nÃ£o vai dar certo', 'juan@dev.com', 'O rogerio sabe que nÃ£o vai dar certo', '2018-03-12 03:35:51', 0),
(7, 'O rogerio sabe que nÃ£o vai dar certo', 'O rogerio sabe que nÃ£o vai dar certo', 'juan@dev.com', 'O rogerio sabe que nÃ£o vai dar certo', '2018-03-12 03:36:15', 0),
(8, 'Carlos R Mazurek', '41 999463690', 'reicompras@mps.com.br', 'Urgente!!!', '2018-03-14 12:31:14', 0),
(9, 'LILIAN MAZUREK', '41999766781', 'lilianmazurek@mps.com.br', 'orÃ§ar', '2018-03-14 03:54:35', 0),
(10, 'Carlos R Mazurek', '41 3016-8008', 'reicompras@mps.com.br', 'OlÃ¡ Rei', '2018-03-16 04:13:33', 0),
(11, 'Carlos R Mazurek', '3016-1414', 'reicompras@mps.com.br', 'Teste em 20/03/2018', '2018-03-20 11:08:11', 0),
(12, 'Carlos R Mazurek', '3016-1414', 'reicompras@mps.com.br', '20/03', '2018-03-20 03:56:45', 0),
(13, 'Carlos R Mazurek', '41 3016-8008', 'reicompras@mps.com.br', '22/03/2018', '2018-03-22 10:08:44', 0),
(14, 'Carlos R Mazurek', '41 3016-8008', 'reicompras@mps.com.br', '26/03/2018', '2018-03-26 03:23:37', 0),
(15, 'Carlos R Mazurek', '3016-1414', 'reicompras@mps.com.br', '29032018', '2018-03-29 03:49:30', 0),
(16, 'Carlos R Mazurek', '999463690', 'reicompras@mps.com.br', '02/04/2018', '2018-04-02 09:59:38', 0),
(17, 'Carlos', '3016-8008', 'Reicompras@mps.com.br', 'Celular', '2018-04-03 11:54:40', 0),
(18, 'Carlos R Mazurek', '3016-1414', 'reicompras@mps.com.br', '03/04', '2018-04-03 05:31:27', 0),
(19, 'Carlos R Mazurek', '3016-1414', 'reicompras@mps.com.br', '04/04/2018', '2018-04-04 05:21:30', 0),
(20, 'Carlos R Mazurek', '3016-1414', 'reicompras@mps.com.br', '05/04', '2018-04-05 02:33:47', 0),
(21, 'Carlos R Mazurek', '3016-1414', 'reicompras@mps.com.br', '06/042018', '2018-04-06 10:28:54', 0),
(22, 'Carlos R Mazurek', '3016-1414', 'reicompras@mps.com.br', 'rio', '2018-04-06 11:56:32', 0),
(23, 'Carlos R Mazurek', '3016-1414', 'reicompras@mps.com.br', '06/04 ~~~~', '2018-04-06 02:52:28', 0),
(24, 'Carlos R Mazurek', '3016-1414', 'reicompras@mps.com.br', '0909', '2018-04-09 10:10:31', 0),
(25, 'Carlos R Mazurek', '3016-1414', 'reicompras@mps.com.br', '10042018', '2018-04-10 11:31:35', 0),
(26, 'rene rocha neto', '41998930055', 'rene@efectusdigital.com.br', 'quero estes 3 produtos', '2018-04-12 09:18:53', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_pedidos_produtos`
--

CREATE TABLE `pew_pedidos_produtos` (
  `id` int(11) NOT NULL,
  `id_orcamento` int(11) DEFAULT NULL,
  `id_produto` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pew_pedidos_produtos`
--

INSERT INTO `pew_pedidos_produtos` (`id`, `id_orcamento`, `id_produto`) VALUES
(1, 7, 1574),
(2, 8, 1576),
(3, 8, 1575),
(4, 9, 1576),
(5, 9, 1575),
(6, 10, 1579),
(7, 11, 1430),
(8, 12, 1578),
(9, 12, 1390),
(10, 14, 1430),
(11, 16, 1430),
(12, 17, 1390),
(13, 18, 1483),
(14, 20, 1579),
(15, 21, 1260),
(16, 22, 1430),
(17, 23, 1231),
(18, 24, 1483),
(19, 25, 1260),
(20, 26, 1577),
(21, 26, 1575),
(22, 26, 1304);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_produtos`
--

CREATE TABLE `pew_produtos` (
  `id` int(11) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `preco` varchar(255) NOT NULL,
  `preco_promocao` varchar(200) NOT NULL,
  `promocao_ativa` tinyint(4) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `id_cor` tinyint(4) NOT NULL,
  `estoque` int(11) NOT NULL,
  `estoque_baixo` int(11) NOT NULL,
  `tempo_fabricacao` int(11) NOT NULL,
  `descricao_curta` varchar(255) NOT NULL,
  `descricao_longa` text NOT NULL,
  `url_video` varchar(255) NOT NULL,
  `peso` varchar(255) NOT NULL,
  `comprimento` varchar(255) NOT NULL,
  `largura` varchar(255) NOT NULL,
  `altura` varchar(255) NOT NULL,
  `data` datetime NOT NULL,
  `visualizacoes` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pew_produtos`
--

INSERT INTO `pew_produtos` (`id`, `sku`, `nome`, `preco`, `preco_promocao`, `promocao_ativa`, `marca`, `id_cor`, `estoque`, `estoque_baixo`, `tempo_fabricacao`, `descricao_curta`, `descricao_longa`, `url_video`, `peso`, `comprimento`, `largura`, `altura`, `data`, `visualizacoes`, `status`) VALUES
(1215, 'FE4273001588', 'FECHADURA QUADRA ZC 108044/40 - EXT', '', '', 0, 'Arouca', 0, 0, 0, 0, '', '<br>        - Trinco revers&iacute;vel para instala&ccedil;&atilde;o em portas que abram para a direita ou esquerda\r\n<br>        - Cilindro em zamac com pinos e chaves em lat&atilde;o\r\n<br>        - Garantia do Fornecedor 5 anos\r\n<br>        - Composi&ccedil;&atilde;o em A&ccedil;o\r\n<br>        - Acabamento Cromado\r\n<br>        - Roseta ou Espelho	Roseta\r\n<br>        - M&aacute;quina 40 mm\r\n<br>        - Composi&ccedil;&atilde;o da Ma&ccedil;aneta Alum&iacute;nio\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1216, 'FE42830079-00', 'FECHADURA QUADRA ZC 408044/40 - INT', '', '', 0, 'Arouca', 0, 0, 0, 0, '', '<br>    - Trinco revers&iacute;vel para instala&ccedil;&atilde;o em portas que abram para a direita ou esquerda\r\n<br>    - Cilindro em zamac com pinos e chaves em lat&atilde;o\r\n<br>    - Garantia do Fornecedor 5 anos\r\n<br>    - Composi&ccedil;&atilde;o em A&ccedil;o\r\n<br>    - Acabamento Cromado\r\n<br>    - Roseta ou Espelho	Roseta\r\n<br>    - M&aacute;quina 40 mm\r\n<br>    - Composi&ccedil;&atilde;o da Ma&ccedil;aneta Alum&iacute;nio\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1217, 'FE42930022-00', 'FECHADURA QUADRA ZC 508044/40 - BAN', '', '', 0, 'Arouca', 0, 0, 0, 0, '', '<br>        - Trinco revers&iacute;vel para instala&ccedil;&atilde;o em portas que abram para a direita ou esquerda\r\n<br>        - Cilindro em zamac com pinos e chaves em lat&atilde;o\r\n<br>        - Garantia do Fornecedor 5 anos\r\n<br>        - Composi&ccedil;&atilde;o em A&ccedil;o\r\n<br>        - Acabamento Cromado\r\n<br>        - Roseta ou Espelho	Roseta\r\n<br>        - M&aacute;quina 40 mm\r\n<br>        - Composi&ccedil;&atilde;o da Ma&ccedil;aneta Alum&iacute;nio\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1218, 'FE42730015-00', 'FECHADURA QUADRA ZCE 108044/40 - EXT', '', '', 0, 'Arouca', 0, 0, 0, 0, '', '<br>        - Trinco revers&iacute;vel para instala&ccedil;&atilde;o em portas que abram para a direita ou esquerda\r\n<br>        - Cilindro em zamac com pinos e chaves em lat&atilde;o\r\n<br>        - Garantia do Fornecedor 5 anos\r\n<br>        - Composi&ccedil;&atilde;o em A&ccedil;o\r\n<br>        - Acabamento Cromado avetinado\r\n<br>        - Roseta ou Espelho	Roseta\r\n<br>        - M&aacute;quina 40 mm\r\n<br>        - Composi&ccedil;&atilde;o da Ma&ccedil;aneta Alum&iacute;nio\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1219, 'CF03319881-00', 'Cofre EletrÃ´nico Yale Value Compact A200 L310 P200', '450.00', '', 0, 'Yale', 0, 0, 1, 1, 'cofre, cofres, cofres eletronicos, cofre eletronico, cofre yale, mini cofre eletronico, cofre laptop, cofre notebook, cofre senha, cofres senha', '<p><br />A linha de Cofres Value Yale foi desenvolvida para atingir a melhor rela&ccedil;&atilde;o custo benef&iacute;cio. Possui dobradi&ccedil;as refor&ccedil;adas travas a prova de impacto e acabamento em pintura epoxi. Seu mecanismo de travamento possui travas motorizadas em a&ccedil;o maci&ccedil;o e possibilita abertura de emerg&ecirc;ncia atrav&eacute;s de chave de seguran&ccedil;a.<br />O modelo mais compacto da linha ideal para aplica&ccedil;&otilde;es onde o espa&ccedil;o for limitado.<br />Forro de carpete<br />Display digital<br />Dobradi&ccedil;as refor&ccedil;adas<br />Travas a prova de impacto<br />Acabamento em pintura epoxi<br />Funciona com 4 baterias AA 1.5V<br />Sinaliza quando a bateria est&aacute; acabando<br />Seu mecanismo de travamento possui travas motorizadas em a&ccedil;o maci&ccedil;o e possibilita abertura de emerg&ecirc;ncia atrav&eacute;s de chave de seguran&ccedil;a<br />Dimens&otilde;es externas: 200x310x200mm<br />Dimens&otilde;es internas: 190x300x150mm</p>', '', '6.2', '31', '20', '20', '2018-03-20 03:04:12', 0, 0),
(1220, 'CF00402400-00', 'Cofre Eletr&ocirc;nico Yale Safe Home A250 L350 P300', '', '', 0, 'Yale', 0, 0, 0, 0, '', '<br>        O modelo mais indicado para aplica&ccedil;&otilde;es residenciais com tamanho ideal e excelente custo benef&iacute;cio.\r\n<br>        Dobradi&ccedil;as refor&ccedil;adas\r\n<br>        Travas a prova de impacto\r\n<br>        Acabamento em pintura epoxi\r\n<br>        Display LCD iluminado\r\n<br>        Funciona com 4 baterias AA 1.5V\r\n<br>        Sinaliza quando a bateria est&aacute; acabando\r\n<br>        Seu mecanismo de travamento possui travas motorizadas em a&ccedil;o maci&ccedil;o e possibilita abertura de emerg&ecirc;ncia atrav&eacute;s de chave de seguran&ccedil;a.\r\n<br>        Dimens&otilde;es externas: 250x350x300mm\r\n<br>        Dimens&otilde;es internas: 242x345x245mm\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1221, 'CF00602400-00', 'Cofre Eletr&ocirc;nico Yale Safe Laptop A200 L480 P350', '', '', 0, 'Yale', 0, 0, 0, 0, '', '<br>        Cofre com tamanho ideal para guardar seu laptop ou netbook sendo a op&ccedil;&atilde;o mais vers&aacute;til para escrit&oacute;rios ou resid&ecirc;ncias com excelente custo benef&iacute;cio e design exclusivo.\r\n<br>        Dobradi&ccedil;as refor&ccedil;adas\r\n<br>        Travas a prova de impacto\r\n<br>        Acabamento em pintura epoxi\r\n<br>        Display de LCD iluminado\r\n<br>        Funciona com 4 baterias AA 1.5V\r\n<br>        Sinaliza quando a bateria est&aacute; acabando\r\n<br>        Seu mecanismo de travamento possui travas motorizadas em a&ccedil;o maci&ccedil;o e possibilita abertura de emerg&ecirc;ncia atrav&eacute;s de chave de seguran&ccedil;a.\r\n<br>        Dimens&otilde;es externas: 200x480x350mm\r\n<br>        Dimens&otilde;es internas: 192x475x295mm\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1222, 'VI00805602-00', 'Visor Olho M&aacute;gico Digital Prata JY8032', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '<br>        Tela de LCD de 3.2&quot;\r\n<br>        Imagem clara e aparelho de f&aacute;cil opera&ccedil;&atilde;o\r\n<br>        C&acirc;mera com vis&atilde;o de 105&deg;\r\n<br>        Desligamento autom&aacute;tico ap&oacute;s 10 segundos economia de bateria\r\n<br>        F&aacute;cil instala&ccedil;&atilde;o sem precisar de ferramentas espec&iacute;ficas ou novos furos\r\n<br>        Se ajusta &agrave; fura&ccedil;&atilde;o dos principais Olho M&aacute;gicos do mercado\r\n<br>        Bateria permite at&eacute; 600 acionamentos\r\n<br>        Espessura de porta: 30-110mm\r\n<br>        Di&acirc;metro do furo: 14-22mm\r\n<br>        C&acirc;mera: 0.3 Mega Pixel CMOS\r\n<br>        Tela LCD: 3.2&quot; TFT\r\n<br>        Alimenta&ccedil;&atilde;o: 2 pilhas AAA inclusas\r\n<br>        &Acirc;ngulo de vis&atilde;o : 105&deg;graus\r\n<br>        Dimens&otilde;es: 125(L) x 68(A) x 15(P)mm\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1223, 'CF00502456-00', 'Cofre Eletr&ocirc;nico Yale Safe Office A400 L350 P340', '', '', 0, 'Yale', 0, 0, 0, 0, '', '<br>        Com tamanho ideal para seu escrit&oacute;rio &eacute; uma op&ccedil;&atilde;o discreta e com excelente custo benef&iacute;cio.\r\n<br>        Dobradi&ccedil;as refor&ccedil;adas\r\n<br>        Travas a prova de impacto\r\n<br>        Acabamento em pintura epoxi\r\n<br>        Display de LCD iluminado\r\n<br>        Funciona com 4 baterias AA 1.5V\r\n<br>        Sinaliza quando a bateria est&aacute; acabando\r\n<br>        Seu mecanismo de travamento possui travas motorizadas em a&ccedil;o maci&ccedil;o e possibilita abertura de emerg&ecirc;ncia atrav&eacute;s de chave de seguran&ccedil;a.\r\n<br>        Dimens&otilde;es externas: 400x350x340mm\r\n<br>        Dimens&otilde;es internas: 392x345x285mm\r\n<br>        Dimens&otilde;es: 125(L) x 68(A) x 15(P)mm \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1224, 'CF00802417-00', 'Cofre Eletr&ocirc;nico Yale Certificado Professional A520 L350 P360', '', '', 0, 'Yale', 0, 0, 0, 0, '', '<br>        Modelo vers&aacute;til indicado para aplica&ccedil;&otilde;es residenciais e escrit&oacute;rios.\r\n<br>        Ilumina&ccedil;&atilde;o interna atrav&eacute;s de 6 LEDs\r\n<br>        Forro de carpete\r\n<br>        Estrutura refor&ccedil;ada\r\n<br>        Display de LCD iluminado\r\n<br>        Dobradi&ccedil;as refor&ccedil;adas\r\n<br>        Travas a prova de impacto\r\n<br>        Acabamento em pintura epoxi\r\n<br>        Funciona com 4 baterias AA 1.5V\r\n<br>        Sinaliza quando a bateria est&aacute; acabando\r\n<br>        Seu mecanismo de travamento possui travas motorizadas em a&ccedil;o maci&ccedil;o e possibilita abertura de emerg&ecirc;ncia atrav&eacute;s de chave de seguran&ccedil;a.\r\n<br>        Dimens&otilde;es externas: 520x350x360mm\r\n<br>        Dimens&otilde;es internas: 510x337x290mm\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1225, 'FE33830088-00', 'FECHADURA ZM COPA CR 962-80 - INT', '', '', 0, 'Pado', 0, 0, 0, 0, '', '<br>        Material zamac\r\n<br>        Fechadura interna\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1226, 'FE33830088-00-Cromado', 'FECHADURA ZM COPA CR 962-80 - INT - Cromado-Entrada/Externa', '', '', 0, 'Pado', 0, 0, 0, 0, '', '<br>        Material zamac\r\n<br>        Fechadura externa\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1227, 'COPACRINT', 'FECHADURA COPA CROMADA INTERNA', '', '', 0, 'Pado', 0, 0, 0, 0, '', '<br>        Cromada interna\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1228, 'COPACRBAN', 'FECHADURA COPA CROMADA BANHEIRO', '', '', 0, 'Pado', 0, 0, 0, 0, '', '<br>        CROMADA BANHEIRO&sect;\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1229, '962-80', 'Fechadura Pado Copa', '', '', 0, 'Pado', 0, 0, 0, 0, '', '<br>        Zamac (O Zamac &eacute; uma Liga de Zinco composto por quatro componentes met&aacute;licos b&aacute;sicos para sua forma&ccedil;&atilde;o: Alum&iacute;nio Cobre Magn&eacute;sio e Zinco);\r\n<br>        Material: Zamac (ma&ccedil;aneta cilindro) A&ccedil;o Inox (roseta testa contra-testa);\r\n<br>        M&aacute;quina: 40mm; composta por um cilindro normal;\r\n<br>        &Iacute;tens inclusos: M&aacute;quina da fechadura contra-testa espelhos ou roseta cilindros ma&ccedil;anetas parafusos e pino e chaves;\r\n<br>        Utiliza&ccedil;&atilde;o: Esta fechadura &eacute; recomendada para &aacute;reas internas conforme padr&atilde;o desenvolvido pelo fabricante;\r\n<br>        Conforme informa&ccedil;&atilde;o do fabricante distribuidor e importador este produto possui a garantia de 5 anos.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1230, 'FE3393003100', 'FECHADURA PADO COPA CR 962-80 BAN', '', '', 0, 'Pado', 0, 0, 0, 0, '', '<br>        FECHADURA ZM COPA CR 962-80 INT\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1231, 'FE3373002400', 'FECHADURA PADO COPA CR 962-80 EXT', '75.80', '', 0, 'Pado', 0, 10, 1, 1, 'Fechadura Pado Copa 962-80 Ext Cromada MaÃ§aneta em zamac; roseta, testa e contra testa em aÃ§o inoxidÃ¡vel; cilindro em zamac', '<p>Fechadura Pado Copa 962-80 Ext Cromada<br />Ma&ccedil;aneta em zamac; roseta, testa e contra testa em a&ccedil;o inoxid&aacute;vel; cilindro em zamac</p>', '', '3', '25', '15', '10', '2018-03-16 04:03:19', 0, 1),
(1232, 'FE3403009300', 'FECHADURA PADO COPA CRA 962-80 EXT', '', '', 0, 'Pado', 0, 0, 0, 0, '', '<br>        FECHADURA ZM COPA CR 962-80 INT\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1233, 'FE3413004700', 'FECHADURA PADO COPA CRA 962-80 INT', '', '', 0, 'Pado', 0, 0, 0, 0, '', '<br>        FECHADURA ZM COPA CR 962-80 INT\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1234, 'FE3423000900', 'FECHADURA PADO COPA CRA 962-80 BAN', '75.80', '', 0, 'Pado', 0, 0, 1, 1, 'Fechadura Pado Copa 962-80 Banheiro no Acabamento Cromo Acetinado', '<p>Fechadura Pado Copa 962-80 Banheiro no Acabamento Cromo Acetinado</p>', '', '1.5', '25', '15', '10', '2018-03-06 02:51:06', 0, 0),
(1235, 'FE3383008800', 'FECHADURA PADO COPA CR 962-80 INT-Cromado-Passagem/Intern', '', '', 0, 'Pado', 0, 0, 0, 0, '', '<br>        FECHADURA ZM COPA CR 962-80 INT\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1236, 'FE4703006200', 'Fechadura La Fonte Performance Inox Lix 892 EXT A/R', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '<br>        Para portas com espessura entre 30 &agrave; 40mm\r\n<br>        Utiliza&ccedil;&atilde;o em portas de entrada ou comodos internos quartos salas despensas \r\n<br>        Tamanho da m&aacute;quina (broca) 55mm\r\n<br>        Materias - ma&ccedil;aneta inox rosetas inox m&aacute;quina em a&ccedil;o\r\n<br>        Tr&aacute;fego intenso\r\n<br>        Grau de resist&ecirc;ncia a corros&atilde;o 4\r\n<br>        ABNT NBR 14193\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1237, 'FE4723007000', 'Fechadura La Fonte Performance Inox Lix 892 BAN A/R', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '<br>        Para portas com espessura entre 30 &agrave; 40mm\r\n<br>        Utiliza&ccedil;&atilde;o em portas de banheiros comodos internos quartos salas despensas \r\n<br>        Tamanho da m&aacute;quina (broca) 55mm\r\n<br>        Materias - ma&ccedil;aneta inox rosetas inox m&aacute;quina em a&ccedil;o\r\n<br>        Tr&aacute;fego intenso\r\n<br>        Grau de resist&ecirc;ncia a corros&atilde;o 4\r\n<br>        ABNT NBR 14193\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1238, 'FE4713001600', 'Fechadura La Fonte Performance Inox Lix 892 INT A/R', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '<br>        Para portas com espessura entre 30 &agrave; 40mm\r\n<br>        Utiliza&ccedil;&atilde;o em portas de c&ocirc;modos internos quartos salas despensas\r\n<br>        Tamanho da m&aacute;quina (broca) 55mm\r\n<br>        Materiais - ma&ccedil;aneta inox rosetas inox m&aacute;quina em a&ccedil;o\r\n<br>        Tr&aacute;fego intenso\r\n<br>        Grau de resist&ecirc;ncia a corros&atilde;o 4\r\n<br>        ABNT NBR 14193\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1239, 'FE7690010000', 'Fechadura Tendency CR 401 EXT ST2/55 A/R', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '<br>        Para portas com espessura entre 30 &agrave; 40mm\r\n<br>        Utiliza&ccedil;&atilde;o em portas de entrada ou c&ocirc;modos internos quartos salas despensas\r\n<br>        Tamanho da m&aacute;quina (broca) 55mm\r\n<br>        Materiais - ma&ccedil;aneta zamac rosetas inox m&aacute;quina em a&ccedil;o\r\n<br>        Tr&aacute;fego intenso\r\n<br>        Grau de resist&ecirc;ncia a corros&atilde;o 4\r\n<br>        ABNT NBR 14193\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1240, 'FE7710011500', 'Fechadura Tendency CR 401 B - BAN ST2/55 A/R', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '<br>        Para portas com espessura entre 30 &agrave; 40mm\r\n<br>        Utiliza&ccedil;&atilde;o em portas de banheiros c&ocirc;modos internos quartos salas despensas\r\n<br>        Tamanho da m&aacute;quina (broca) 55mm\r\n<br>        Materiais - ma&ccedil;aneta zamac rosetas inox m&aacute;quina em a&ccedil;o\r\n<br>        Tr&aacute;fego intenso\r\n<br>        Grau de resist&ecirc;ncia a corros&atilde;o 4\r\n<br>        ABNT NBR 14193\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1241, 'FE7700016100', 'Fechadura Tendency CR 401 I - INT ST2/55 A/R', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '<br>        Para portas com espessura entre 30 &agrave; 40mm\r\n<br>        Utiliza&ccedil;&atilde;o em portas de c&ocirc;modos internos quartos salas despensas\r\n<br>        Tamanho da m&aacute;quina (broca) 55mm\r\n<br>        Materiais - ma&ccedil;aneta zamac rosetas inox m&aacute;quina em a&ccedil;o\r\n<br>        Tr&aacute;fego intenso\r\n<br>        Grau de resist&ecirc;ncia a corros&atilde;o 4\r\n<br>        ABNT NBR 14193\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1242, 'FE33830088', 'Fechadura Tendency CRA 401 E - EXT ST2/55 A/R', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '<br>        Para portas com espessura entre 30 &agrave; 40mm\r\n<br>        Utiliza&ccedil;&atilde;o em portas de entrada ou c&ocirc;modos internos quartos, salas, despensas.\r\n<br>        Tamanho da m&aacute;quina (broca) 55mm\r\n<br>        Materiais - ma&ccedil;aneta zamac rosetas inox\r\n<br>        M&aacute;quina em a&ccedil;o\r\n<br>        Tr&aacute;fego intenso\r\n<br>        Grau de resist&ecirc;ncia a corros&atilde;o 4\r\n<br>        ABNT NBR 14193\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1243, 'FE9720014000', 'Fechadura Tendency CRA 401 B - BAN ST2/55 A/R', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '<br>        Para portas com espessura entre 30 &agrave; 40mm\r\n<br>        Utiliza&ccedil;&atilde;o em portas de banheiros, c&ocirc;modos internos, quartos, salas, despensas.\r\n<br>        Tamanho da m&aacute;quina (broca) 55mm\r\n<br>        Materiais - ma&ccedil;aneta zamac\r\n<br>        Rosetas inox\r\n<br>        M&aacute;quina em a&ccedil;o\r\n<br>        Tr&aacute;fego intenso\r\n<br>        Grau de resist&ecirc;ncia a corros&atilde;o 4\r\n<br>        ABNT NBR 14193\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1244, 'FE9710019600', 'Fechadura Tendency CRA 401 I - INT ST2/55 A/R', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '<br>        Para portas com espessura entre 30 &agrave; 40mm\r\n<br>        Utiliza&ccedil;&atilde;o em portas de c&ocirc;modos internos, quartos, salas, despensas.\r\n<br>        Tamanho da m&aacute;quina (broca) 55mm\r\n<br>        Materiais - ma&ccedil;aneta zamac\r\n<br>        Rosetas inox\r\n<br>        M&aacute;quina em a&ccedil;o\r\n<br>        Tr&aacute;fego intenso\r\n<br>        Grau de resist&ecirc;ncia a corros&atilde;o 4\r\n<br>        ABNT NBR 14193\r\n<br>        Material\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1245, 'DO3400042900', 'Dobradi&ccedil;a Eagle 3 X 2.1/2 c/anel ACR - Reto (C/3PC)', '', '', 0, '', 0, 0, 0, 0, '', '<br>        Para portas leves at&eacute; 35 KG\r\n<br>        Espessura da porta de 30 &agrave; 40mm\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1246, 'DO2030047600', 'Dobradi&ccedil;a Eagle 4 X 3 c/ anel ACR - Reto (C/3PC)', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1247, 'DO6550045800', 'Dobradi&ccedil;a Eagle 3 X 2.1/2 c/ anel Acresc (C/3PC)', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1248, 'DO2080044400', 'Dobradi&ccedil;a Eagle 4 X 3 c/ anel Acresc - Reto (C/3PC)', '', '', 0, 'Papaiz', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1249, 'DO7200040200', 'Dobradi&ccedil;a Premium Inox - Esc: 30 X 25 (3 PC)', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1250, 'DO7210041200', 'Dobradi&ccedil;a Premium Inox ESC 35 X 30 (3 PC)', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1251, 'DO7220042200', 'Dobradi&ccedil;a Premium Inox ESC 40 X 30 (3 PC)', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1252, 'DO7230043200', 'Dobradi&ccedil;a Premium Inox POL 30 X 25 (3 PC)', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1253, 'DO7240044200', 'Dobradi&ccedil;a Premium Inox POL 35 X 30 (3 PC)', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1254, 'DO7250045200', 'Dobradi&ccedil;a Premium Inox POL 40 X 30 (3 PC)', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1255, 'MO06500803', 'Mola Aerea Hidra&uacute;lica Soprano A530 F2 POT&Ecirc;NCIA &quot;2&quot;', '', '', 0, 'Soprano', 0, 0, 0, 0, '', '<br>        Voc&ecirc; j&aacute; reparou que em alguns lugares as portas fecham automaticamente sem que voc&ecirc; precise pux&aacute;-la? Isso &eacute; porque elas s&atilde;o equipadas com algum tipo de mola para porta. A Mola Hidr&aacute;ulica Soprano A530 F2 foi desenvolvida para dar mais agilidade ao movimento evitando o problema de algumas delas em fechar a porta muito r&aacute;pido ou com muita for&ccedil;a. Com ela &eacute; voc&ecirc; quem regula o movimento. Por meio de duas v&aacute;lvulas presentes no equipamento voc&ecirc; pode definir a velocidade de fechamento de quando a porta est&aacute; entre os &acirc;ngulos 90&ordm; e 15&ordm; e com a segunda voc&ecirc; faz a mesma coisa para os momentos finais entre 15&ordm; e 0&ordm; podendo diminuir a velocidade para evitar batidas bruscas contra o batente. Esse modo seguro evita acidentes e ainda ajuda a preservar o material da porta que n&atilde;o sofre com impactos fortes. Com acabamento em branco que combina com ambientes como cl&iacute;nicas restaurantes escrit&oacute;rios e banheiros a mola para portas funciona apenas com complementos entre 25 e 45kg mais ou menos do que isso pode prejudicar o desempenho do equipamento. Por isso &eacute; extremamente importante saber as medidas e o peso da porta na qual a mola ser&aacute; instalada. Calma que n&atilde;o para por a&iacute;. Outras vantagens do produto s&atilde;o: material refor&ccedil;ado dos bra&ccedil;os mais resistentes o que evita danos por excesso de uso; evita a forma&ccedil;&atilde;o de correntes de ar; mant&eacute;m a porta sempre fechada protegendo de sons externos; &eacute; revers&iacute;vel ou seja pode ser instalado tanto para aberturas &agrave; direita quanto &agrave; esquerda; e funciona bem com portas entre 900mm e 2100mm de largura. N&atilde;o perca esta oportunidade de investir em conforto. \r\n<br>        TABELA T&Eacute;CNICA\r\n<br>        Dados T&eacute;cnicos\r\n<br>        Mola Hidr&aacute;ulica Soprano A530 F2\r\n<br>        Unidades: 1\r\n<br>        Uso indicado: Portas internas e externas.\r\n<br>        Pot&ecirc;ncia: 2\r\n<br>        Dimens&otilde;es: 182mm x 85mm\r\n<br>        Capacidade: Portas entre 850 e 2100mm de largura\r\n<br>        Cor: Preto, Prata, Branco\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1256, 'MO0670081000', 'Mola Hidraulica Aerea Soprano A530 F2 POT&Ecirc;NCIA &quot;2&quot; PRETA', '', '', 0, 'Soprano', 0, 0, 0, 0, '', '<br>        A Soprano uma das l&iacute;deres no mercado de molas hidr&aacute;ulicas desenvolveu a s&eacute;rie de Molas A&eacute;reas A530 com pot&ecirc;ncia 2 para satisfazer a necessidade dos clientes mais exigentes. Essa linha atua na suaviza&ccedil;&atilde;o do fechamento da porta evitando batidas e pancadas que podem danificar a porta e o batente. O modelo pode ser usado tanto em ambientes internos quanto externos. Por isso seu funcionamento parte de uma tecnologia mec&acirc;nica-hidr&aacute;ulica revers&iacute;vel. Ou seja ela pode ser instalada em portas que abrem para a direita ou at&eacute; mesmo para a esquerda sem precisar de qualquer tipo de modifica&ccedil;&atilde;o no equipamento. Mas as vantagens n&atilde;o param aqui: ela conta com bra&ccedil;os refor&ccedil;ados que podem ser ajustados de acordo com a necessidade da instala&ccedil;&atilde;o. Para oferecer uma performance ideal a mola conta com um sistema de regulagem da velocidade de fechamento. S&atilde;o duas v&aacute;lvulas independentes uma diz respeito ao intervalo de 90&ordm; a 15&ordm; e a outra controla a velocidade no intervalo de 15&ordm; at&eacute; 0&ordm;. Dessa forma a porta desacelera gradativamente sem fechar muito r&aacute;pido e nem muito devagar. A Mola A&eacute;rea Hidr&aacute;ulica Soprano A530 pot&ecirc;ncia 2 &eacute; compacta e universal em sua aplicabilidade mas &eacute; indicada para portas com largura m&iacute;nima de 850mm e m&aacute;xima de 2100mm. Com rela&ccedil;&atilde;o ao peso da mesma &eacute; importante n&atilde;o ultrapassar os 45kg mas o intervalo ideal &eacute; entre os 25 e 40kg. O Rei das Fechaduras traz as melhores op&ccedil;&otilde;es do mercado para resolver todos os seus problemas. Com nossas solu&ccedil;&otilde;es voc&ecirc; vai se sentir muito mais seguro.\r\n<br>        TABELA T&Eacute;CNICA\r\n<br>        Dados T&eacute;cnicos\r\n<br>        Produto: Mola A&eacute;rea Soprano A530 Pot&ecirc;ncia 2\r\n<br>        Unidades: 1\r\n<br>        Uso indicado: Portas internas e externas.\r\n<br>        Pot&ecirc;ncia: 2\r\n<br>        Dimens&otilde;es: 182mm x 85mm\r\n<br>        Capacidade: Portas entre 850 e 2100mm de largura\r\n<br>        Cor: Prata, Preto e Branco\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1257, 'MO0660086700', 'Mola Hidr&aacute;ulica Aerea Soprano A530 F2 POT&Ecirc;NCIA &quot;2&quot; BRANCA', '', '', 0, 'Soprano', 0, 0, 0, 0, '', '<br>        Mola p/porta\r\n<br>        Para portas de 25 a 45 kg\r\n<br>        com bra&ccedil;o ajust&aacute;vel\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1258, 'MO0650080300', 'Mola HidrÃ¡ulica Aerea para Porta Soprano A530 F2 ', '0', '', 0, 'Soprano', 0, 0, 1, 1, 'Mola p/porta, Mola HidrÃ¡ulica, Mola Soprano', '<p>Voc&ecirc; j&aacute; reparou que, em alguns lugares, as portas fecham automaticamente, sem que voc&ecirc; precise pux&aacute;-la? Isso &eacute; porque elas s&atilde;o equipadas com algum tipo de mola para porta. A Mola Hidr&aacute;ulica Soprano A530 F2 foi desenvolvida para dar&nbsp;<strong>mais agilidade ao movimento</strong>, evitando o problema de algumas delas em fechar a porta muito r&aacute;pido ou com muita for&ccedil;a. Com ela, &eacute; voc&ecirc; quem regula o movimento.</p><p>Por meio de duas v&aacute;lvulas presentes no equipamento, voc&ecirc; pode definir a velocidade de fechamento de quando a porta est&aacute; entre os &acirc;ngulos 90&ordm; e 15&ordm; e, com a segunda, voc&ecirc; faz a mesma coisa para os momentos finais, entre 15&ordm; e 0&ordm;, podendo diminuir a velocidade para evitar batidas bruscas contra o batente. Esse&nbsp;<strong>modo seguro</strong>&nbsp;evita acidentes e ainda ajuda a preservar o material da porta, que n&atilde;o sofre com impactos fortes.</p><p>Com acabamento em branco, que combina com ambientes como cl&iacute;nicas, restaurantes, escrit&oacute;rios e banheiros, a mola para portas funciona apenas com complementos entre 25 e 45kg, mais ou menos do que isso pode prejudicar o desempenho do equipamento. Por isso, &eacute; extremamente importante saber as medidas e o peso da porta na qual a mola ser&aacute; instalada.</p><p>Calma que n&atilde;o para por a&iacute;. Outras vantagens do produto s&atilde;o:&nbsp;<strong>material refor&ccedil;ado dos bra&ccedil;os, mais resistentes</strong>, o que evita danos por excesso de uso; evita a forma&ccedil;&atilde;o de correntes de ar; mant&eacute;m a porta sempre fechada protegendo de sons externos; &eacute; revers&iacute;vel, ou seja, pode ser instalado tanto para aberturas &agrave; direita, quanto &agrave; esquerda; e funciona bem com portas entre 900mm e 2100mm de largura. N&atilde;o perca esta oportunidade de investir em conforto.</p>', '', '2.5', '18.2', '8.5', '8', '2018-03-19 10:47:45', 0, 1),
(1259, 'MO0140082700', 'Mola Dorma BTS-75V COMPLETA &quot;T&quot; ESP INOX', '', '', 0, 'Dorma', 0, 0, 0, 0, '', '<br>        As famosas portas vai e vem s&atilde;o aquelas que abrem tanto para o lado direito quanto para o lado esquerdo num movimento que permite de 180&ordm; &agrave; 360&ordm; de abertura. A Mola Dorma BTS-75V hidr&aacute;ulica de piso &eacute; indicada para portas de banco hospitais escrit&oacute;rios pr&eacute;dios empresariais e estabelecimentos comerciais e serve para os modelos de batente e vai-e-vem. Ela permite uma f&aacute;cil regulagem da for&ccedil;a de fechamento por meio da utiliza&ccedil;&atilde;o de parafusos de ajuste. Dessa forma ela serve desde para pot&ecirc;ncia 1 at&eacute; 4. Resistente e s&oacute;lida &eacute; indicada para portas que pesem no m&aacute;ximo 120kg e tenham at&eacute; 1100mm de largura. A Dorma desenvolveu uma tecnologia inovadora que garante muito mais durabilidade para o equipamento e assegura a qualidade do produto durante o per&iacute;odo completo de garantia. Com corpo confeccionado em alum&iacute;nio e caixa em ferro galvanizado &eacute; mais leve e ultra resistente &agrave; corros&atilde;o do ambiente. Conhe&ccedil;a as fun&ccedil;&otilde;es: Velocidade de Fechamento: S&atilde;o duas v&aacute;lvulas que regulam o fechamento da porta. A primeira diz respeito &agrave; zona de 180&ordm; &agrave; 15&ordm; a segunda regula dos 15&ordm; a 0&ordm;. Trava: A trava permite reter a porta aberta em um &acirc;ngulo de 90&ordm;. Backcheck: &Eacute; um sistema de amortecimento mec&acirc;nico que ajuda a proteger a porta de batidas bruscas evitando danos &agrave; parede. V&aacute;lvula hidr&aacute;ulica de seguran&ccedil;a: Ela alivia a press&atilde;o interna recebida pelo &oacute;leo hidr&aacute;ulico em situa&ccedil;&otilde;es que a porta &eacute; submetida a subpress&otilde;es durante o fechamento. \r\n<br>        FICHA T&Eacute;CNICA\r\n<br>        Dados T&eacute;cnicos\r\n<br>        Produto: Mola Dorma BTS-75V\r\n<br>        Unidades: 1\r\n<br>        Uso indicado: Portas vai-e-vem e de batente\r\n<br>        Pot&ecirc;ncia: Ajust&aacute;vel de 1 a 4.\r\n<br>        Dimens&otilde;es: 105mm x 286mm\r\n<br>        Capacidade: At&eacute; 1100mm\r\n<br>        Trava: Sim\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1260, 'CF0030244900', 'Cofre EletrÃ´nico Yale Safe Compact A200 L350 P200', '1130.20', '904.16', 1, 'Yale', 0, 0, 1, 1, 'cofre, cofres, cofres eletronicos, cofre eletronico, cofre yale, mini cofre eletronico, cofre laptop, cofre notebook, cofre senha, cofres senha', '<p><br />Este &eacute; modelo mais compacto da linha de cofres da Yale abertura atrav&eacute;s de senha(cadastrada pelo pr&oacute;prio usu&aacute;rio) seu mecanismo de travamento possue travas motorizadas em a&ccedil;o maci&ccedil;o e tamb&eacute;m chave para abertura de emerg&ecirc;ncia possui dysplay LCD dobradi&ccedil;as refor&ccedil;adas acabamento em pintura em epoxi funciona com 4 baterias AA 15 V e sinaliza quando a bateria est&aacute; acabando possui travas a prova de impacto.<br />Dimens&otilde;es externas: 200x350 x200mm<br />Dimens&otilde;es internas:192x345x145</p>', '', '6', '38', '22', '22', '2018-03-23 03:26:01', 0, 1),
(1261, 'FE9770011800', 'Fechadura Digital Yale YRD221 - Embutir', '', '', 0, 'Yale', 0, 0, 0, 0, '', '<br>        Fechadura digital de embutir YRD 221.\r\n<br>        Fechadura com 2 op&ccedil;&otilde;es de opera&ccedil;&atilde;o: teclado num&eacute;rico e chave de seguran&ccedil;a.\r\n<br>        Configur&aacute;vel podendo ser aberta atrav&eacute;s de senha PIN ou atrav&eacute;s de sistemas de automa&ccedil;&atilde;o residencial. \r\n<br>        Indicada para aplica&ccedil;&otilde;es residenciais e comerciais.\r\n<br>        Outras caracter&iacute;sticas t&eacute;cnicas:\r\n<br>        Fechamento com um toque\r\n<br>        Teclado iluminado (touchpad)\r\n<br>        Resistente a intemp&eacute;ries\r\n<br>        Protetor acr&iacute;lico para teclado\r\n<br>        Teclado simplificado com 12 teclas\r\n<br>        Veda&ccedil;&atilde;o de borracha contra umidade\r\n<br>        Alarme de c&oacute;digo errado configur&aacute;vel pelo usu&aacute;rio\r\n<br>        Bot&atilde;o de privacidade que permite o bloqueio do acesso de todos os usu&aacute;rios\r\n<br>        Circuito de controle no lado interno\r\n<br>        Trinco c&ocirc;nico que facilita o trancamento de portas desalinhadas\r\n<br>        Programa&ccedil;&atilde;o assistida por voz (ingl&ecirc;s\r\n<br>        espanhol e franc&ecirc;s)\r\n<br>        Opera&ccedil;&atilde;o de notifica&ccedil;&atilde;o do status: Sempre que alguma opera&ccedil;&atilde;o &eacute; realizada o teclado informa o tipo de opera&ccedil;&atilde;o atrav&eacute;s de uma seq&uuml;&ecirc;ncia de alinhamento diferente dos n&uacute;meros.\r\n<br>        Chave mec&acirc;nica: Em caso de emerg&ecirc;ncia a fechadura pode ser aberta com a chave mec&acirc;nica codificada.\r\n<br>        Travamento autom&aacute;tico: Essa fun&ccedil;&atilde;o tranca automaticamente a porta ap&oacute;s um determinado tempo. (Este tempo pode ser configurado atrav&eacute;s de sistemas de automa&ccedil;&atilde;o residencial).\r\n<br>        * Sistema antip&acirc;nico: Para conveni&ecirc;ncia do usu&aacute;rio e em caso de emerg&ecirc;ncia a porta ser&aacute; desbloqueada automaticamente sempre que a tranqueta for acionada.\r\n<br>        Personalize ambientes: Crie ambientes conforme o gosto do usu&aacute;rio. Abra cortinas acenda as luzes\r\n<br>        ligue o ar condicionado. Tudo isso de uma maneira autom&aacute;tica e f&aacute;cil opera&ccedil;&atilde;o.\r\n<br>        * Acionamento remoto: Abra ou feche a porta remotamente com o uso de um smartphone ou tablet. Voc&ecirc; pode trancar ou abrir sua fechadura a qualquer lugar e dist&acirc;ncia.\r\n<br>        * Mensagens de textos ou e-mail de alerta: Receba mensagens de textos ou e-mail de alerta no celular atrav&eacute;s de configura&ccedil;&otilde;es pr&eacute;-programadas.\r\n<br>        * Modo Privacidade: O modo de privacidade permite uma maior seguran&ccedil;a e pode ser acionado internamente permitindo que nenhum usu&aacute;rio abra a porta.\r\n<br>        * Agendamento e permiss&atilde;o de acesso: Programe o dia e a hora que o usu&aacute;rio poder&aacute; entrar. Terceiros ou prestadores de servi&ccedil;os autorizados ter&atilde;o acesso apenas em dias &uacute;teis e em hor&aacute;rios comerciais.\r\n<br>        * Hist&oacute;rico de acesso: Fun&ccedil;&atilde;o que permite a visualiza&ccedil;&atilde;o do hist&oacute;rico de quando quem e a que horas a fechadura foi aberta.\r\n<br>        * Se faz necess&aacute;rio m&oacute;dulo de rede de automa&ccedil;&atilde;o residencial para que as fun&ccedil;&otilde;es sejam habilitadas. \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1262, 'FE9013008100', 'Fechadura Biom&eacute;trica Yale de Embutir YDM 4109', '', '', 0, 'Yale', 0, 0, 0, 0, '', '<br>        YDM 4109 COM MA&Ccedil;ANETA\r\n<br>        &bull; Fechadura biom&eacute;trica de embutir;\r\n<br>        &bull; Leitura de impress&atilde;o digital;\r\n<br>        &bull; Espessura de porta - 35 a 55mm;\r\n<br>        &bull; Dist&acirc;ncia de broca - 60mm;\r\n<br>        &bull; Guia status visual e sonoro;\r\n<br>        &bull; Teclado inteligente &bull; Sa&iacute;da anti-p&acirc;nico;\r\n<br>        &bull; Cadastra at&eacute; 20 usu&aacute;rios;\r\n<br>        &bull; Acabamento em Black Piano;\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1263, 'FE9883002300', 'Fechadura Biom&eacute;trica Yale de Embutir YDM 4109 RL - Rolete', '', '', 0, 'Yale', 0, 0, 0, 0, '', '<br>        YDM 4109 SEM MA&Ccedil;ANETA\r\n<br>        &middot; Modelo de embutir sem ma&ccedil;aneta;\r\n<br>        &middot; Para uso em portas com puxador;\r\n<br>        &middot; Senha e biometria;\r\n<br>        &middot; Permite at&eacute; 20 usu&aacute;rios;\r\n<br>        &middot; Utilize a senha em conjunto com a biometria;\r\n<br>        &middot; Chave mec&acirc;nica;\r\n<br>        &middot; Entrada para bateria de emerg&ecirc;ncia;\r\n<br>        &middot; Fechamento autom&aacute;tico/manual;\r\n<br>        &middot; Guia de voz em portugu&ecirc;s;\r\n<br>        &middot; Controle do volume de som;\r\n<br>        &middot; Alarme de invas&atilde;o;\r\n<br>        &middot; Permite uso com controle remoto (opcional).\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1264, 'FE9440011300', 'Fechadura La Fonte Architect CRA 6239 E - EXT A/R', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1265, 'FE9450017700', 'Fechadura La Fonte Architect CRA 6239 I - INT A/R', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1266, 'FE9460012000', 'Fechadura La Fonte Architect CRA 6239 B - BAN A/R', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1267, 'FE0280011000', 'Fechadura La Fonte Architect CR 6239 E - EXT A/R', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1268, 'FE0300012500', 'Fechadura La Fonte Architect CR 6239 I - INT A/R', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1269, 'FE0310018900', 'Fechadura La Fonte Architect CR 6239 B - BAN A/R', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1270, 'FE3493008600', 'Fechadura La Fonte Architect AB 6239 E - EXT A/R', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1271, 'FE3503003800', 'Fechadura La Fonte Architect AB 6239 I - INT A/R', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1272, 'FE3513009100', 'Fechadura La Fonte Architect AB 6239 B - BAN A/R', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1273, 'FE3313000000', 'Fechadura Linnus AB 451 E - EXT', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1274, 'FE3323005600', 'Fechadura Linnus AB 451 I - INT', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1275, 'FE3333000000', 'Fechadura Linnus AB 451 B - BAN', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:31', 0, 0),
(1276, 'FE2293005100', 'Fechadura Linnus CR 451 E - EXT', '208.00', '', 0, 'La fonte', 0, 5, 1, 1, 'Fechadura Linnus CR 451 E - EXT', '<p>Fechadura Linnus CR 451 E - EXT design contempor&acirc;neo e alto estilo</p>', '', '4', '30', '20', '10', '2018-03-14 05:45:03', 0, 1),
(1277, 'FE2303000300', 'Fechadura Linnus CR 451 I - INT', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1278, 'FE2313006700', 'Fechadura Linnus CR 451 B - BAN', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1279, 'FE2323001000', 'Fechadura Linnus CRA 451 E - EXT', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1280, 'FE2333007400', 'Fechadura Linnus CRA 451 I - INT', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1281, 'FE2343002800', 'Fechadura Linnus CRA 451 B - BAN', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1282, 'AC0050997300', 'Acionador El&eacute;trico para Fechadura AF-62', '', '', 0, 'Amelco', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1283, 'CA0080993400', 'Controle de Acesso por Senha Amelco AM CDA 100', '', '', 0, 'Amelco', 0, 0, 0, 0, '', '<br>        O mais seguro controlador de acesso da categoria o AM CDA 100 possui baixo consumo de energia e permite cadastrar de maneira descomplicada at&eacute; 100 senhas de 4 d&iacute;gitos al&eacute;m de 6 tipos de hor&aacute;rios. F&aacute;cil de instalar ele pode ser integrado com botoeira e porteiros eletr&ocirc;nicos Amelco fechos e fechaduras eletromagn&eacute;ticas ou eletro&iacute;m&atilde;. Com apenas 3 fios entre as unidades a instala&ccedil;&atilde;o &eacute; muito simples com funcionamento em 110 ou 220 Vac. Na falta de energia el&eacute;trica o AM-CDA 100 pode ser alimentado com 8 pilhas alcalinas. Al&eacute;m disso possui Opera&ccedil;&atilde;o Disfarce impossibilitando que um observador memorize a senha digitada tempo de reten&ccedil;&atilde;o ou pulsante program&aacute;vel e tecla de campainha.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1284, 'CA0120995700', 'Controle de Acesso por Senha Amelco CDA200', '0', '', 0, 'Amelco', 0, 0, 1, 1, 'O Controle de Acesso AM-CDA 100 Amelco continua o mais seguro da categoria e agora com programaÃ§Ã£o de atÃ© 100 senhas. ', '<p>O Controle de Acesso AM-CDA 100 Amelco continua o mais seguro da categoria e agora com programa&ccedil;&atilde;o de at&eacute; 100 senhas. A instala&ccedil;&atilde;o continua bem f&aacute;cil: apenas 3 fios entre as unidades. Integra com porteiros eletr&ocirc;nicos Amelco, fechos fechaduras eletromagn&eacute;ticas e fechadura eletro&iacute;m&atilde;.</p>', '', '5', '20', '20', '50', '2018-03-06 01:16:00', 0, 0),
(1285, 'FE9930019200', 'Fechadura para Vidro El&eacute;trica Amelco FV-32', '', '', 0, 'Amelco', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1286, 'Amelco', 'Fechadura para Vidro El&eacute;trica Amelco FV-32E', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1287, 'FE9920013900', 'Fechadura El&eacute;trica Amelco FV-33 Vidro/Alvenaria', '', '', 0, 'Amelco', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1288, 'FE4040015800', 'Fechadura El&eacute;trica Amelco FV-33E p/ Vidro e Alvenaria', '', '', 0, 'Amelco', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1289, 'FE4020014000', 'Fechadura Eletromagn&eacute;tica Amelco FN-65 p/ port&atilde;o', '', '', 0, 'Amelco', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1290, 'FE4250010900', 'Fechadura Eletromagn&eacute;tica Amelco FN-66', '', '', 0, 'Amelco', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1291, 'FC0030996600', 'Fecho Eletromagn&eacute;tico Amelco FE 12 12V Standart', '', '', 0, 'Amelco', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1292, 'FC0040991000', 'Fecho Eletromagn&eacute;tico Amelco FE 61 12V Refor&ccedil;ado', '', '', 0, 'Amelco', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1293, 'PE0081302800', 'Porteiro Eletr&ocirc;nico Residencial Amelco AM-M200 GRAF/PR C/ACION', '', '', 0, 'Amelco', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1294, 'FE8230013500', 'Fechadura Eletrica C-90 Dupla Cinza', '', '', 0, 'HDL', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1295, 'BA0311260800', 'Barra Antip&acirc;nico Push T1 S Horiz Prata', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '<br>        Produto produzido de acordo com a norma NBR 11785.\r\n<br>        Barra com acionamento atrav&eacute;s de alavanca feita em a&ccedil;o com pintura ep&oacute;xi  para aplica&ccedil;&atilde;o em portas simples e duplas de acessos de seguran&ccedil;a. Possui sistema de revers&atilde;o da barra possibilitando a instala&ccedil;&atilde;o em portas esquerdas e direitas. \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1296, 'BA0321265300', 'Barra Antip&acirc;nico Push T1 M/C Horiz Prata c/ Fechadura', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '<br>        Produto produzido de acordo com a norma NBR 11785\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1297, 'BA0331260700', 'Barra Antip&acirc;nico Push T2 S Vert Prata', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '<br>        Produto produzido de acordo com a norma NBR 11785\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1298, 'BA0351261400', 'Barra AntipÃ¢nico Touch T1 S Horiz Prata', '695.55', '0', 0, 'La fonte', 0, 0, 1, 1, 'barra antipanico, barras antipanico, fechadura, fechaduras, fechadura de seguranÃ§a, fechaduras de seguranÃ§a, barra, barras, barra cinema, barra saÃ­da emergÃªncia, barra antipanico l', '<p>Linha barras Antip&acirc;nico Evolution possui design diferenciado possibilitando aplica&ccedil;&atilde;o em diversos ambientes, mesmo com a porta aparente. Seus Componentes internos s&atilde;o refor&ccedil;ados aumentando a resist&ecirc;ncia da fechadura.<br /><br />Barra com acionamento atrav&eacute;s do toque frontal, feita em alum&iacute;nio com pintura ep&oacute;xi nas cores, branca, preta e prata, para aplica&ccedil;&atilde;o em portas simples e duplas de acessos de seguran&ccedil;a.Sue sistema de acionamento permite que seja instalada em portas com abertura para ambos os lados, facilitando a instala&ccedil;&atilde;o, manuten&ccedil;&atilde;o e especifica&ccedil;&atilde;o do produto. Possui sistema de revers&atilde;o da barra, possibilitando a instala&ccedil;&atilde;o em portas esquerdas e direitas.</p><p>Produto produzido de acordo com a norma NBR 11785.</p><p>Tempo de resist&ecirc;ncia ao fogo: 120 min</p><p>V&atilde;o luz m&aacute;ximo da porta: 950 mm</p><p>Altura m&aacute;xima da porta: 2500 mm</p><p>Espessura m&aacute;xima da porta: 50 mm</p><p>Revers&iacute;vel (direira/esquerda): Sim</p><p>Resist&ecirc;ncia &agrave; corros&atilde;o: 3</p><p>Tr&aacute;fego: G3</p><p>Modular: Sim*</p><p>Eletr&ocirc;nica: N&atilde;o</p><p>Permite Sistema de mestragem: Sim</p>', '', '2.5', '1.3', '20', '20', '2018-03-23 03:51:51', 0, 1),
(1299, 'BA0361267800', 'Barra Antip&acirc;nico Touch T1 M/C Horiz Prata c/ Fechadura', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '<br>        Produto produzido de acordo com a norma NBR 11785.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1300, 'BA0371262100', 'Barra Antip&acirc;nico Touch T2 S Vert Prata', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '<br>        Produto produzido de acordo com a norma NBR 11785\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1301, 'TA0230235700', 'Tarjeta 719 CR Livre/Ocupado', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1302, 'TA0470236000', 'Tarjeta 719 CRA Livre/Ocupado', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1303, 'MT0150088000', 'Mola de Topo Yale 9000 Cromado', '', '', 0, 'Yale', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1304, 'MT0200085700', 'Mola de Topo Yale 9000 CRA  ou CR', '369.60', '', 0, 'Yale', 0, 0, 1, 1, 'mola de topo, mola para porta, mola para portas, mola de pora, molas de porta, molas de topo, molas para porta, mola porta', '<p>A mola de topo 9000 (Philips 1500) &eacute; a solu&ccedil;&atilde;o ideal para<br />portas vai e vem de tr&aacute;fego intenso comumente utilizadas em<br />restaurantes, hospitais, laborat&oacute;rios, etc.<br />A pot&ecirc;ncia ajust&aacute;vel atrav&eacute;s da mola permite uma configura&ccedil;&atilde;o perfeita da for&ccedil;a de fechamento necess&aacute;rio.<br />Para portas de espessura entre 32 e 44mm.<br />Acompanha piv&ocirc; superior.</p>', '', '1.4', '26.7', '5.5', '8', '2018-03-19 11:19:26', 0, 1),
(1305, 'BA0091260300', 'Barra AntipÃ¢nico NT1-MC CRA Direita ou Esquerda (com maÃ§aneta e cilindro)', '960.00', '0', 0, 'La fonte', 0, 0, 1, 1, 'barra antipanico, barras antipanico, fechadura, fechaduras, fechadura de seguranÃ§a, fechaduras de seguranÃ§a, barra, barras, barra cinema, barra saÃ­da emergÃªncia, barra antipanico l', '<p><em><em><strong>Descri&ccedil;&atilde;o:</strong></em></em></p><p><br />A linha barras Antip&acirc;nico Evolution possui design diferenciado possibilitando aplica&ccedil;&atilde;o em diversos ambientes, mesmo com a porta aparente. Seus Componentes internos s&atilde;o refor&ccedil;ados aumentando a resist&ecirc;ncia da fechadura.<br /><br />Barra com acionamento atrav&eacute;s de alavanca, feita em a&ccedil;o com pintura ep&oacute;xi nas cores, branca, preta e prata, para aplica&ccedil;&atilde;o em portas simples e duplas de acessos de seguran&ccedil;a. Possui sistema de revers&atilde;o da barra, possibilitando a instala&ccedil;&atilde;o em portas esquerdas e direitas.<br /><br /><em><em><em><strong>Diferenciais:</strong></em></em></em></p><p>&nbsp;- Nova nomeclatura dos pontos de travamento - Nomenclatura T1, T2, T3, T4 e T5 faz refer&ecirc;ncia ao n&uacute;mero de pontos de travamento de cada conjunto;<br />&nbsp;- Montagem bidirecional - as fechaduras s&atilde;o montadas &ldquo;simetricamente&rdquo; permitindo f&aacute;cil manejo e montagem, com a defini&ccedil;&atilde;o da m&atilde;o de abertura da fechadura e das fun&ccedil;&otilde;es no momento da instala&ccedil;&atilde;o. Sistema modular - permite a venda e a estocagem dos componentes separadamente, reduzindo custos e atendendo as reais necessidades do cliente com a montagem modular do produto final;<br />&nbsp;- Trinco de Seguran&ccedil;a - evita tentativas de invas&atilde;o com o acionamento do trinco central da fechadura pela fresta entre as folhas da porta do lado externo, quando a porta estiver fechada;</p>', '', '3.3', '1.2', '20', '20', '2018-03-23 04:16:15', 0, 1),
(1306, 'BA0101265700', 'Barra Antip&acirc;nico NT1-MC Esquerda CRA', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1307, 'BA0111260000', 'Barra Antip&acirc;nico NT2-MC CRA', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1308, 'DO3350045200', 'Dobradi&ccedil;a 85 AB 30 X 25 (3 PC)', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1309, 'DO3360040600', 'Dobradi&ccedil;a 85 AB 35 X 30 (3 PC)', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1310, 'DO3370046000', 'Dobradi&ccedil;a 80 AB 40 X 30 (3 PC)', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1311, 'DO3380041300', 'Dobradi&ccedil;a 80 AB 50 X 40', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1312, 'DO4400046400', 'Dobradi&ccedil;a 85 LPE 30 X 25 (03 PC)', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1313, 'DO6270042100', 'Dobradi&ccedil;a 85 LPE 35 X 30', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1314, 'DO4650042100', 'Dobradi&ccedil;a 80 LPE 40 X 30', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1315, 'DO6280048500', 'Dobradi&ccedil;a 80 LPE 50 X 40', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0);
INSERT INTO `pew_produtos` (`id`, `sku`, `nome`, `preco`, `preco_promocao`, `promocao_ativa`, `marca`, `id_cor`, `estoque`, `estoque_baixo`, `tempo_fabricacao`, `descricao_curta`, `descricao_longa`, `url_video`, `peso`, `comprimento`, `largura`, `altura`, `data`, `visualizacoes`, `status`) VALUES
(1316, 'DO6190049400', 'Dobradi&ccedil;a 85 LLE 30 X 25 X 2 (3 PC)', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1317, 'DO6200044600', 'Dobradi&ccedil;a 85 LLE 35 X 30 (3 PC)', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1318, 'DO6210040800', 'Dobradi&ccedil;a 80 LLE 40 X 30', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1319, 'DO6220045300', 'Dobradi&ccedil;a 80 LLE 50 X 40', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1320, 'CO1080032801', 'Concha La Fonte 503 CR sem furo', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1321, 'CO1080032802', 'Concha La Fonte 503 CR com Furo', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1322, 'CO1090038101', 'Concha La Fonte 503 CRA sem Furo', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1323, 'CO1090038102', 'Concha La Fonte 503 CRA com Furo', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1324, 'FC0540064300', 'Fecho Embutir 400 - 20CM 3/4&quot; LC', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1325, 'FC0550060500', 'Fecho Embutir 400 - 40CM 3/4&quot; LC', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1326, 'FC2800063300', 'Fecho Embutir 400 - 20cm 3/4&quot; CRA', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1327, 'FC2810069700', 'Fecho Embutir 400 - 40cm 3/4&quot; CRA', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1328, 'FC1510061800', 'Fecho Embutir 400 - 20cm 3/4&quot; AB', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1329, 'FC1520067100', 'Fecho Embutir 400 - 40cm 3/4&quot; LO', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1330, 'FC3610063300', 'Fecho Embutir 400 - 20cm 3/4&quot; LP', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1331, 'FC3620069700', 'Fecho Embutir 400 - 40cm 3/4&quot; LP', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1332, 'FC1490060200', 'Fecho Embutir 400 - 20cm 3/4&quot; PB - PRETO', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1333, '', 'Fecho Embutir 400 - 40cm 3/4&quot; PB - PRETO', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1334, 'FE2090015500', 'Fechadura 1070/45 LC', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1335, 'FE7330014400', 'Fechadura 1070/55 CRA', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1336, 'FE3263002600', 'Fechadura Rolete 1070 45mm CR - BAN', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1337, 'FE3273008000', 'Fechadura Rolete 1070 45mm CRA - BAN', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1338, 'FE8140014400', 'Fechadura para Porta de Correr 1222/22 CR - EXT', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1339, 'FE0690015100', 'Fechadura para Porta de Correr 1222/22 CRA - EXT', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1340, 'FE2470012600', 'Fechadura Para Porta de Correr 1222/22 LLE - EXT', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1341, 'FE8190011200', 'Fechadura 222N CR 45mm - E p/ Porta de Correr', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1342, 'FE8460019500', 'Fechadura 222N CRA 45mm E p/ Porta de Correr', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1343, 'FE2030012300', 'Fechadura 222N LLE 45mm E p/ Porta de Correr', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1344, 'FE8770018200', 'Fechadura 378 LC 45mm', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1345, 'FE8760012900', 'Fechadura 378 LO 45mm', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1346, 'FE1493000500', 'Fechadura Rolete 378 CR 45mm TR', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1347, 'FE1973002000', 'Fechadura Rolete 378 CRA 45mm TR', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1348, 'FE1293001600', 'Fechadura Rolete 378 LPE 45mm TR', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1349, 'FE2000016200', 'Fechadura La Fonte 4021 CR EVO S 45mm - Tranqueta', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1350, 'FE2010011600', 'Fechadura La Fonte 4021 CRA EVO S 45mm - Tranqueta', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1351, 'FE3283003300', 'Fechadura Rolete 330 ST2/55 TR CR - EXT', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1352, 'FE3293009700', 'Fechadura Rolete 330 ST2/55 TR CRA - EXT', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1353, 'FE3303004900', 'Fechadura Rolete 330 ST2/55 TR LLE - EXT', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1354, 'FE8953007100', 'Fechadura Digital Milre 1200 para Arm&aacute;rio e Gavetas', '', '', 0, 'Milre', 0, 0, 0, 0, '', '<br>        Exclusivo projeto de design anti-hacker impossibilita a conex&atilde;o de capturador de dados. Abertura atrav&eacute;s de 01 senha (de 04 a 12 d&iacute;gitos) + at&eacute; 15 CHAVES DIGITAIS. Painel n&atilde;o ret&eacute;m a digital. Trava a porta automaticamente se estiver no modo autom&aacute;tico. Alarme e sistema de bloqueio no caso de se inserir mais de 5 vezes a senha errada. Funciona a pilhas (3 alcalinas tipo AA). Aviso de esgotamento de pilhas. Vida &uacute;til das pilhas de aproximadamente 1 ANO/30 aberturas/dia. Pode ser instalada em portas de madeira ou metal (neste caso &eacute; necess&aacute;ria adapta&ccedil;&atilde;o da espessura). Pode ser instalada em &aacute;rea de alta umidade. Dispensa o uso de puxadorInstala&ccedil;&atilde;o pr&aacute;tica e f&aacute;cil.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1355, 'FE8963002500', 'Fechadura Digital Milre 4700 de sobrepor', '', '', 0, 'Milre', 0, 0, 0, 0, '', '<br>        Modelo sem ma&ccedil;aneta Acompanham cada fechadura 04 chaves digitais. Painel Touchscreen iluminado para facilitar a abertura em ambientes escuros Trava a porta automaticamente evitando que ela fique aberta por descuido. Dispositivo anti-hacker n&atilde;o &eacute; poss&iacute;vel conectar nenhum tipo de capturador de dados Alarme e sistema de bloqueio no caso de se inserir mais de 5 vezes a senha errada. Sensor t&eacute;rmico que destrava a porta em caso de inc&ecirc;ndio no interior da casa Controle do volume do sinal sonoro para abertura da porta Funciona a pilhas (4 alcalinas tipo AA) Aviso de esgotamento de pilhas Vida &uacute;til das pilhas de aproximadamente 1 ANO/20 aberturas/dia Pode ser instalada em portas de madeira ou metal com batente ou pivotante Pode ficar em &aacute;rea externa desde que sob cobertura para prote&ccedil;&atilde;o contra intemp&eacute;ries. \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1356, 'FE8993009600', 'Fechadura Digital Milre 6300 com ma&ccedil;aneta', '', '', 0, 'Milre', 0, 0, 0, 0, '', '<br>        Modelo de embutir.\r\n<br>        Acompanham cada fechadura 04 chaves digitais. Alarme contra tentativa de invas&atilde;o para o caso de for&ccedil;arem a abertura da porta. Painel Touchscreen iluminado para facilitar a abertura em ambientes escuros Trava a porta automaticamente evitando que ela fique aberta por descuido. Dispositivo anti-hacker n&atilde;o &eacute; poss&iacute;vel conectar nenhum tipo de capturador de dados. Alarme e sistema de bloqueio no caso de se inserir mais de 5 vezes a senha errada. Controle do volume do sinal sonoro para abertura da porta Funciona a pilhas (4 alcalinas tipo AA)Aviso de esgotamento de pilhas Vida &uacute;til das pilhas de aproximadamente 1 ANO/20 aberturas/dia Pode ser instalada em portas de madeira ou metal com batente ou pivotante Pode ficar em &aacute;rea externa desde que sob cobertura para prote&ccedil;&atilde;o contra intemp&eacute;ries. Instala&ccedil;&atilde;o pr&aacute;tica e f&aacute;cil \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1357, 'FE8943001800', 'Fechadura digital Milre A2300 de sobrepor', '', '', 0, 'Milre', 0, 0, 0, 0, '', '<br>        - Projetada em sistema anti-hacker\r\n<br>        impossibilita a conex&atilde;o de capturador de dados.\r\n<br>        -Abertura atrav&eacute;s de 01 SENHA (de 4 a 12 d&iacute;gitos).\r\n<br>        -Teclado n&atilde;o ret&eacute;m a digital Trava a porta automaticamente\r\n<br>        evitando que ela fique aberta por descuido.\r\n<br>        -Alarme e sistema de bloqueio\r\n<br>        no caso de se inserir mais de 5 vezes a senha errada.\r\n<br>        -Pode desabilitar temporariamente o sinal sonoro de abertura da porta Funciona com pilhas (4 alcalinas tipo AA) Aviso de esgotamento de pilhas.\r\n<br>        -Vida &uacute;til das pilhas de aproximadamente 1 ANO/30 aberturas/dia.\r\n<br>        -Pode ser instalada em portas de madeira ou metal\r\n<br>        com batente ou pivotante.\r\n<br>        -Pode ficar em &aacute;rea externa\r\n<br>        desde que sob cobertura\r\n<br>        para prote&ccedil;&atilde;o contra intemp&eacute;ries.\r\n<br>        - Trava automaticamente quando a porta est&aacute; fechada.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1358, 'FE8983003200', 'Fechadura Eletr&ocirc;nica Touch 6400 S/MAC', '', '', 0, 'Milre', 0, 0, 0, 0, '', '<br>        Modelo de embutir com ma&ccedil;aneta \r\n<br>        Acompanham cada fechadura 04 chaves digitais. Painel Touch Screen iluminado para facilitar a abertura em ambientes escuros \r\n<br>        Sistema de Prote&ccedil;&atilde;o de senha em exposi&ccedil;&atilde;o evita que o acompanhante entenda sua senha. Trava a porta automaticamente evitando que ela fique aberta por descuido. Dispositivo anti-hacker n&atilde;o &eacute; poss&iacute;vel conectar nenhum tipo de capturador de dados \r\n<br>        Alarme e sistema de bloqueio no caso de se inserir mais de 5 vezes a senha errada. Controle do volume do sinal sonoro para abertura da porta Funciona a pilhas (4 alcalinas tipo AA)Aviso de esgotamento de pilhas \r\n<br>        Vida &uacute;til das pilhas de aproximadamente 1 ANO/20 aberturas/dia Pode ser instalada em portas de madeira ou metal com batente ou pivotante \r\n<br>        Pode ficar em &aacute;rea externa desde que sob cobertura para prote&ccedil;&atilde;o contra intemp&eacute;ries. Instala&ccedil;&atilde;o pr&aacute;tica e f&aacute;cil\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1359, 'FE8883009800', 'Fechadura Digital Milre 4600 para vidro com controle remoto', '', '', 0, 'Milre', 0, 0, 0, 0, '', '<br>        Modelo sem ma&ccedil;aneta\r\n<br>        Projetada em sistema anti-hacker\r\n<br>        impossibilita a conex&atilde;o de capturador de dados\r\n<br>        Abertura atrav&eacute;s de at&eacute; 08 SENHAS (de 04 a 19 d&iacute;gitos) + at&eacute; 45 CHAVES DIGITAISAcompanham cada fechadura 04 chaves digitais.Painel Touchscreen iluminado\r\n<br>        para facilitar a abertura em ambientes escuros.\r\n<br>        Trava a porta automaticamente\r\n<br>        evitando que ela fique aberta por descuido.\r\n<br>        Dispositivo anti-hacker\r\n<br>        n&atilde;o &eacute; poss&iacute;vel conectar nenhum tipo de capturador de dadosAlarme e sistema de bloqueio\r\n<br>        no caso de se inserir mais de 5 vezes a senha errada.\r\n<br>        Sensor t&eacute;rmico que destrava a porta em caso de inc&ecirc;ndio no interior da casa\r\n<br>        Controle do volume do sinal sonoro para abertura da porta\r\n<br>        Funciona a pilhas (4 alcalinas tipo AA)Pode ficar em &aacute;rea externa\r\n<br>        desde que sob cobertura\r\n<br>        para prote&ccedil;&atilde;o contra intemp&eacute;ries.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1360, 'VI0060569700', 'Visor Olho M&aacute;gico Digital Mini A500', '', '', 0, 'Milre', 0, 0, 0, 0, '', '<br>        Interruptor autom&aacute;tico em 10 segundos Tela de 2&quot;6\r\n<br>        &Acirc;ngulo de vis&atilde;o de 100&ordm;. utiliza 2 pilhas AAA como fonte de energia. Vida &uacute;til das pilhas de aproximadamente 700 avisos sonoros Resolution: 320*240 Pode ser instalada em portas de madeira ou metal\r\n<br>        com batente ou pivotante\r\n<br>        Externa	31 mm de di&acirc;metro\r\n<br>        Interna	59(A) x 106(L) x 15(F) mm\r\n<br>        Sensor	De 0\r\n<br>        3 Mega Pixel CMOS\r\n<br>        Tela	LCD de 2\r\n<br>        6 TFT\r\n<br>        Acabamento	ABS e Policarbonato\r\n<br>        Cores	Preta\r\n<br>        Espessura da porta	De 38 at&eacute; 110 mm\r\n<br>        Di&acirc;metro do furo da porta	De 14 a 22 mm\r\n<br>        Peso	150 gramas\r\n<br>        Pilhas	Duas pilhas alcalinas de 1\r\n<br>        5 V (AAA)\r\n<br>        Vida das pilhas	Aproximadamente 12 meses (com uma m&eacute;dia de uso de 20 vezes ao dia)\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1361, 'CD0810193000', 'Cadeado Papaiz Unificado CR 20', '', '', 0, 'Papaiz', 0, 0, 0, 0, '', '<br>        Produzido em lat&atilde;o maci&ccedil;o haste de a&ccedil;o cementada e cromada acompanha 1 chave lat&atilde;o niquelada. Unificado possiblita a abertura de todos os cadeados do mesmo modelo com apenas um chave. \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1362, 'CD0820199400', 'Cadeado Papaiz Unificado CR 25', '', '', 0, 'Papaiz', 0, 0, 0, 0, '', '<br>        Produzido em lat&atilde;o maci&ccedil;o\r\n<br>        haste de a&ccedil;o cementada e cromada\r\n<br>        acompanha 1 chave lat&atilde;o niquelada.\r\n<br>        Unificado\r\n<br>        possiblita a abertura de todos os cadeados do mesmo modelo com apenas um chave.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1363, 'CD0830194800', 'Cadeado Papaiz Unificado CR 30', '', '', 0, 'Papaiz', 0, 0, 0, 0, '', '<br>        Produzido em lat&atilde;o maci&ccedil;o haste de a&ccedil;o cementada e cromada acompanha 1 chave lat&atilde;o niquelada. Unificado possiblita a abertura de todos os cadeados do mesmo modelo com apenas um chave. \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1364, 'CD0840190000', 'Cadeado Papaiz Unificado CR 35', '', '', 0, 'Papaiz', 0, 0, 0, 0, '', '<br>        Produzido em lat&atilde;o maci&ccedil;o haste de a&ccedil;o cementada e cromada acompanha 1 chave lat&atilde;o niquelada. Unificado possiblita a abertura de todos os cadeados do mesmo modelo com apenas um chave. \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1365, 'CD9340190600', 'Cadeado Papaiz Unificado CR 40', '', '', 0, 'Papaiz', 0, 0, 0, 0, '', '<br>        Produzido em lat&atilde;o maci&ccedil;o haste de a&ccedil;o cementada e cromada acompanha 1 chave lat&atilde;o niquelada. Unificado possiblita a abertura de todos os cadeados do mesmo modelo com apenas um chave. \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1366, 'CD0780197100', 'Cadeado Papaiz Unificado CR 45', '', '', 0, 'Papaiz', 0, 0, 0, 0, '', '<br>        Produzido em lat&atilde;o maci&ccedil;ohaste de a&ccedil;o cementada e cromadaacompanha 1 chave lat&atilde;o niquelada.Unificadopossiblita a abertura de todos os cadeados do mesmo modelo com apenas um chave. \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1367, 'CD9350195100', 'Cadeado Papaiz Unificado CR 50', '', '', 0, 'Papaiz', 0, 0, 0, 0, '', '<br>        Produzido em lat&atilde;o maci&ccedil;o haste de a&ccedil;o cementada e cromada acompanha 1 chave lat&atilde;o niquelada. Unificado possiblita a abertura de todos os cadeados do mesmo modelo com apenas um chave. \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1368, 'CD0420190600', 'Cadeado Tetra Chave Papaiz CRT 50', '', '', 0, 'Papaiz', 0, 0, 0, 0, '', '<br>        Produzido em lat&atilde;o maci&ccedil;o\r\n<br>        haste de a&ccedil;o cementada e cromada. 2 tetra-chaves de lat&atilde;o niqueladas.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1369, 'CD0430196000', 'Cadeado Tetra Chave Papaiz CRT 60', '', '', 0, 'Papaiz', 0, 0, 0, 0, '', '<br>        Produzido em lat&atilde;o maci&ccedil;o\r\n<br>        haste de a&ccedil;o cementada e cromada. 2 tetra-chaves de lat&atilde;o niqueladas.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1370, 'CD0440191300', 'Cadeado Tetra Chave Papaiz CRT 70', '', '', 0, 'Papaiz', 0, 0, 0, 0, '', '<br>        Produzido em lat&atilde;o maci&ccedil;o\r\n<br>        haste de a&ccedil;o cementada e cromada. 2 tetra-chaves de lat&atilde;o niqueladas.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1371, 'CD0090190300', 'Cadeado CR 30/50', '', '', 0, 'Papaiz', 0, 0, 0, 0, '', '<br>        Produzido em lat&atilde;o maci&ccedil;o\r\n<br>        haste de a&ccedil;o cementada e cromada. 2 chaves de lat&atilde;o niqueladas.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1372, 'CD0100196500', 'Cadeado CR 30/70', '', '', 0, 'Papaiz', 0, 0, 0, 0, '', '<br>        Produzido em lat&atilde;o maci&ccedil;o\r\n<br>        haste de a&ccedil;o cementada e cromada. 2 chaves de lat&atilde;o niqueladas.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1373, 'CD01101919', 'Cadeado CR 35/70', '', '', 0, 'Papaiz', 0, 0, 0, 0, '', '<br>        Produzido em lat&atilde;o maci&ccedil;o\r\n<br>        haste de a&ccedil;o cementada e cromada. 2 chaves de lat&atilde;o niqueladas.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1374, 'CD0540196800', 'Cadeado CR 45/70', '', '', 0, 'Papaiz', 0, 0, 0, 0, '', '<br>        Produzido em lat&atilde;o maci&ccedil;o\r\n<br>        haste de a&ccedil;o cementada e cromada. 2 chaves de lat&atilde;o niqueladas.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1375, 'CD0570192900', 'Cadeado Stam com segredo 25mm - LAT', '', '', 0, 'Stam', 0, 0, 0, 0, '', '<br>        Produzido em zamac\r\n<br>        haste em a&ccedil;o\r\n<br>        com 3 digitos.  \r\n<br>        ATEN&Ccedil;&Atilde;O: ESTE MODELO N&Atilde;O TEM DISPONIBILIDADE DE TROCA DE SEGREDO\r\n<br>        SENHA FIXA DE F&Aacute;BRICA.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1376, 'CD0410195200', 'Cadeado Stam com segredo 40MM', '', '', 0, 'Stam', 0, 0, 0, 0, '', '<br>        Produzido em Zamac\r\n<br>        haste em a&ccedil;o\r\n<br>        Segredo de 4 digitos que permite altera&ccedil;&atilde;o da senha.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1377, 'CD0010197400', 'Cadeado CR 20', '', '', 0, 'Papaiz', 0, 0, 0, 0, '', '<br>        Produzido em lat&atilde;o maci&ccedil;o       \r\n<br>        haste de a&ccedil;o cementada e cromada. 2 chaves de lat&atilde;o niqueladas.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1378, 'CD0020192800', 'Cadeado CR 25', '', '', 0, 'Papaiz', 0, 0, 0, 0, '', '<br>        Produzido em lat&atilde;o maci&ccedil;o\r\n<br>        haste de a&ccedil;o cementada e cromada. 2 chaves de lat&atilde;o niqueladas.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1379, 'CD0030198100', 'Cadeado CR 30', '', '', 0, 'Papaiz', 0, 0, 0, 0, '', '<br>        Produzido em lat&atilde;o maci&ccedil;o\r\n<br>        haste de a&ccedil;o cementada e cromada. 2 chaves de lat&atilde;o niqueladas.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1380, 'CD0040193500', 'Cadeado CR 35', '', '', 0, 'Papaiz', 0, 0, 0, 0, '', '<br>        Produzido em lat&atilde;o maci&ccedil;o\r\n<br>        haste de a&ccedil;o cementada e cromada. 2 chaves de lat&atilde;o niqueladas.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1381, 'CD0340197900', 'Cadeado CR 40', '', '', 0, 'Papaiz', 0, 0, 0, 0, '', '<br>        Produzido em lat&atilde;o maci&ccedil;o\r\n<br>        haste de a&ccedil;o cementada e cromada. 2 chaves de lat&atilde;o niqueladas.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1382, 'CD0050199900', 'Cadeado CR 45', '', '', 0, 'Papaiz', 0, 0, 0, 0, '', '<br>        Produzido em lat&atilde;o maci&ccedil;o\r\n<br>        haste de a&ccedil;o cementada e cromada. 2 chaves de lat&atilde;o niqueladas.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1383, 'CD0060194200', 'Cadeado CR 50', '', '', 0, 'Papaiz', 0, 0, 0, 0, '', '<br>        Produzido em lat&atilde;o maci&ccedil;o\r\n<br>        haste de a&ccedil;o cementada e cromada. 2 chaves de lat&atilde;o niqueladas.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1384, 'CD0070190400', 'Cadeado CR 60', '', '', 0, 'Papaiz', 0, 0, 0, 0, '', '<br>        Produzido em lat&atilde;o maci&ccedil;o\r\n<br>        haste de a&ccedil;o cementada e cromada. 2 chaves de lat&atilde;o niqueladas.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1385, 'closeSD0080195000Produto', 'Cadeado CR 70', '', '', 0, 'Papaiz', 0, 0, 0, 0, '', '<br>        Produzido em lat&atilde;o maci&ccedil;o\r\n<br>        haste de a&ccedil;o cementada e cromada. 2 chaves de lat&atilde;o niqueladas.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1386, 'MO06800874', 'Mola Aerea Soprano A530 F3 Pot&ecirc;ncia &quot;3&quot;', '', '', 0, 'Soprano', 0, 0, 0, 0, '', '<br>        Voc&ecirc; se sente incomodado por sua porta n&atilde;o permanecer fechada e voc&ecirc; precisar enfrentar problemas como correntes de ar e barulhos externos atrapalhando o seu trabalho? Ent&atilde;o\r\n<br>        a Mola A&eacute;rea Soprano A530 F3\r\n<br>        com pot&ecirc;ncia 3\r\n<br>        pode ser a solu&ccedil;&atilde;o para esses problemas. Na cor preta\r\n<br>        ela atua no fechamento autom&aacute;tico da porta\r\n<br>        evitando batidas bruscas e que ela permane&ccedil;a aberta quando n&atilde;o est&aacute; sendo usada.\r\n<br>        A s&eacute;rie foi desenvolvida para suportar portas que tenham entre 1000mm e 2300mm de largura\r\n<br>        o que corresponde aos modelos de m&eacute;dio porte. Sendo que o peso ideal &eacute; de at&eacute; 65kg\r\n<br>        mas acima de 40kg para ter seu desempenho otimizado. Dessa forma\r\n<br>        s&atilde;o &oacute;timas op&ccedil;&otilde;es para portas de banheiros p&uacute;blicos\r\n<br>        anfiteatros\r\n<br>        salas de aula e escrit&oacute;rios.\r\n<br>        Com design arrojado\r\n<br>        mas de f&aacute;cil instala&ccedil;&atilde;o\r\n<br>        a mola funciona atrav&eacute;s de um sistema mec&acirc;nico-hidr&aacute;ulico que permite a regulagem da velocidade em que a porta vai se fechar. O m&eacute;todo usa duas v&aacute;lvulas que podem ser configuradas facilmente\r\n<br>        uma delas diz respeito ao momento em que a porta est&aacute; entre os 90&ordm; e 15&ordm; e a outra controla a velocidade entre os 15&ordm; e 0&ordm;.\r\n<br>        As vantagens desse modelo s&atilde;o in&uacute;meras: &eacute; vers&aacute;til\r\n<br>        pode ser usada tanto em ambientes internos quanto externos\r\n<br>        &eacute; dur&aacute;vel\r\n<br>        com garantia de 1 ano pelo fabricante\r\n<br>        conta com bra&ccedil;o refor&ccedil;ado para suportar portas mais pesadas e ainda pode ser instalada tanto para aberturas &agrave; direita\r\n<br>        quanto &agrave; esquerda. Invista em seguran&ccedil;a e comodidade\r\n<br>        pois as molas Soprano foram desenvolvidas com tecnologia inovadora para te garantir a melhor qualidade do mercado.\r\n<br>        TABELA T&Eacute;CNICA\r\n<br>        Dados T&eacute;cnicos\r\n<br>        Produto: Mola A&eacute;rea Soprano A530 Pot&ecirc;ncia 3\r\n<br>        Unidades: 1\r\n<br>        Uso indicado: Portas internas e externas.\r\n<br>        Pot&ecirc;ncia: 3\r\n<br>        Dimens&otilde;es: 182mm x 85mm\r\n<br>        Capacidade: Portas entre 1000 e 2300mm de largura\r\n<br>        Cor: Prata\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1387, 'MO0680087400', 'Mola Aerea Soprano A530 F3 Pot&ecirc;ncia &quot;3&quot; PRATA', '', '', 0, 'Soprano', 0, 0, 0, 0, '', '<br>        Espa&ccedil;os com um fluxo constante de pessoas exigem cuidados maiores com a porta\r\n<br>        uma vez que\r\n<br>        com a correria\r\n<br>        &eacute; comum deix&aacute;-la aberta ou bater com mais for&ccedil;a do que &eacute; necess&aacute;rio. A Mola A&eacute;rea Soprano A530\r\n<br>        com pot&ecirc;ncia 3\r\n<br>        &eacute; ideal at&eacute; mesmo para evitar acidentes\r\n<br>        como prender os dedos ou a m&atilde;o na porta. Dessa forma\r\n<br>        o propriet&aacute;rio consegue regular a velocidade com que a porta se fecha\r\n<br>        suavizando o movimento.\r\n<br>        S&atilde;o diversos modelos espec&iacute;ficos para atender as demandas de qualquer necessidade\r\n<br>        seja de portas de empresas\r\n<br>        corpora&ccedil;&otilde;es\r\n<br>        consult&oacute;rios ou at&eacute; mesmo de resid&ecirc;ncias domiciliares. Neste caso\r\n<br>        a mola conta com for&ccedil;a 3\r\n<br>        que diz respeito &agrave; capacidade de sustenta&ccedil;&atilde;o do tamanho e peso da porta em quest&atilde;o. Portanto\r\n<br>        &eacute; indicada para portas entre 1000mm e 2300mm de largura. Quanto ao peso\r\n<br>        o ideal &eacute; que tenha mais do que 40kg e menos de 65kg.\r\n<br>        Mas como o equipamento funciona? &Eacute; bem simples\r\n<br>        a mola &eacute; fixada no bordo superior da porta e na parede. Assim\r\n<br>        atrav&eacute;s de um sistema mec&acirc;nico-hidr&aacute;ulico\r\n<br>        o bra&ccedil;o controla\r\n<br>        por meio de duas v&aacute;lvulas\r\n<br>        a velocidade com que a porta se fechar&aacute;. A instala&ccedil;&atilde;o n&atilde;o &eacute; complexa e a regulagem diz respeito ao momento de fechamento dos 90&ordm; a 15&ordm; e depois dos 15&ordm; a 0&ordm;.\r\n<br>        Fa&ccedil;a um investimento certeiro\r\n<br>        o modelo em quest&atilde;o conta com bra&ccedil;os refor&ccedil;ados e &eacute; revers&iacute;vel\r\n<br>        podendo ser instalado para abertura &agrave; direita ou &agrave; esquerda. Al&eacute;m de funcionar t&atilde;o bem em ambientes internos e externos. O Rei das Fechaduras conta com produtos que s&atilde;o aprovados pelas normas internacionais e pelos principais especialistas da &aacute;rea.\r\n<br>        TABELA T&Eacute;CNICA\r\n<br>        Dados T&eacute;cnicos\r\n<br>        Produto: Mola A&eacute;rea Soprano A530 Pot&ecirc;ncia 3\r\n<br>        Unidades: 1\r\n<br>        Uso indicado: Portas internas e externas.\r\n<br>        Pot&ecirc;ncia: 3\r\n<br>        Dimens&otilde;es: 182mm x 85mm\r\n<br>        Capacidade: Portas entre 1000 e 2300mm de largura\r\n<br>        Cor: Prata\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1388, 'MO07100833', 'Mola Aerea Soprano A530 F3 Pot&ecirc;ncia &quot;4&quot;', '', '', 0, 'Soprano', 0, 0, 0, 0, '', '<br>        Est&aacute; cansado de levar um susto todas as vezes que algu&eacute;m bate a porta do escrit&oacute;rio? Ou as crian&ccedil;as sempre prendem a m&atilde;o no batente? Ent&atilde;o\r\n<br>        a solu&ccedil;&atilde;o para os seus problemas\r\n<br>        voc&ecirc; encontra aqui no Rei das Fechaduras. A Mola A&eacute;rea Soprano A530 F3\r\n<br>        com pot&ecirc;ncia 4\r\n<br>        est&aacute; h&aacute; bastante tempo no mercado atendendo a necessidade dos clientes de todo o Brasil.\r\n<br>        O que diferencia os diversos modelos da Soprano s&atilde;o o acabamento\r\n<br>        que pode ser branco\r\n<br>        preto ou prata\r\n<br>        e a for&ccedil;a\r\n<br>        que diz respeito ao peso e largura da porta na qual ser&aacute; aplicada. A s&eacute;rie A530 F3 &eacute; recomendada para portas de at&eacute; 65kg\r\n<br>        mas o peso ideal &eacute; acima dos 40kg. J&aacute; a largura da porta deve de 1000mm\r\n<br>        no m&iacute;nimo\r\n<br>        e 2300mm\r\n<br>        no m&aacute;ximo.\r\n<br>        Vantagens: Sistema mec&acirc;nico-hidr&aacute;ulico.\r\n<br>        Podem ser instaladas em portas que abrem tanto para a direita\r\n<br>        quanto para a esquerda.\r\n<br>        Bra&ccedil;os fabricados com material refor&ccedil;ado que permitem ajustes.\r\n<br>        Duas v&aacute;lvulas que regulam a velocidade de fechamento - uma de 90&ordm; a 15&ordm; e outra de 15&ordm; a 0&ordm;.\r\n<br>        Servem para portas externas e internas.\r\n<br>        Mant&eacute;m a temperatura ambiente por garantir que a porta permane&ccedil;a fechada.\r\n<br>        Com essas vantagens\r\n<br>        o seu investimento em conforto &eacute; certeiro. Nunca mais vai ouvir porta batendo ou ter que lidar com acidentes dom&eacute;sticos com a porta.\r\n<br>        FICHA T&Eacute;CNICA\r\n<br>        Dados T&eacute;cnicos\r\n<br>        Produto: Mola Hidr&aacute;ulica Soprano A530 F3\r\n<br>        Unidades: 1\r\n<br>        Uso indicado: Portas internas e externas.\r\n<br>        Pot&ecirc;ncia: 3\r\n<br>        Dimens&otilde;es: 182mm x 85mm\r\n<br>        Capacidade: Portas entre 1000mm e 2300mm de largura\r\n<br>        Cor: Prata\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1389, 'MO0710083300', 'Mola Aerea Soprano A530 F3 Pot&ecirc;ncia &quot;4&quot; PRATA', '', '', 0, 'Soprano', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1390, 'MO0120081000', 'Mola Dorma BTS-75R COMPLETA ', '0', '', 0, 'Dorma', 0, 0, 1, 1, 'molas para piso, mola para piso, mola de piso, molas para porta, mola de porta, molas para portas, mola porta, mola para porta de vidro, utensÃ­lio para porta, acessÃ³rios para porta', '<p>A nova mola hidr&aacute;ulica de&nbsp;piso DORMA BTS 75R&nbsp;&eacute; ideal para portas de batente, estreitas ou largas, e portas de vai-evem.<br />Permite a f&aacute;cil regulagem da for&ccedil;a de fechamento atrav&eacute;s da utiliza&ccedil;&atilde;o de um parafuso de ajuste.<br />Resistente e s&oacute;lida, a DORMA BTS 75R adapta-se a portas com peso de at&eacute; 180 kg e largura de at&eacute; 1.250 mm.<br />Sua multiplicidade de fun&ccedil;&otilde;es, durabilidade e avan&ccedil;ada tecnologia garantem um produto de qualidade inigual&aacute;vel.</p>', '', '3', '27.5', '8', '5', '2018-03-16 04:54:19', 0, 1),
(1391, 'MO0600083500', 'Mola Dorma BTS-75V Miolo e caixa s/trava', '', '', 0, 'Dorma', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1392, 'MO0130087300', 'Mola Dorma BTS-65 INOX &quot;T&quot;POT 3 COMPLETA', '', '', 0, 'Dorma', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1393, 'MO0250082500', 'Mola Dorma BTS-84 FLEX INOX &quot;T&quot;', '', '', 0, 'Dorma', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1394, 'AC0181226200', 'Arm&aacute;rio Porta Chaves Acrimet para 24 CHAVES', '', '', 0, 'Acrimet', 0, 0, 0, 0, '', '<br>        Arm&aacute;rio fabricado em MDF na cor areia\r\n<br>        com &oacute;timo acabamento.\r\n<br>        Acompanha 24 chaveiros em cores sortidas e etiquetas de identifica&ccedil;&atilde;o.\r\n<br>        Possui fechadura na porta\r\n<br>        com duas chaves.\r\n<br>        Acompanha parafusos para fixa&ccedil;&atilde;o do arm&aacute;rio.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1395, 'AC0191221600', 'Arm&aacute;rio Porta Chaves Acrimet para 48 CHAVES', '', '', 0, 'Acrimet', 0, 0, 0, 0, '', '<br>        Arm&aacute;rio fabricado em MDF na cor areia\r\n<br>        com &oacute;timo acabamento.\r\n<br>        Acompanha 48 chaveiros em cores sortidas e etiquetas de identifica&ccedil;&atilde;o.\r\n<br>        Possui fechadura na porta\r\n<br>        com duas chaves.\r\n<br>        Acompanha parafusos para fixa&ccedil;&atilde;o do arm&aacute;rio.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1396, 'AC0141224800', 'Arm&aacute;rio Porta Chaves Acrimet para 96 Chaves', '', '', 0, 'Acrimet', 0, 0, 0, 0, '', '<br>        Arm&aacute;rio fabricado em MDF na cor areia\r\n<br>        com &oacute;timo acabamento.\r\n<br>        Acompanha 96 chaveiros em cores sortidas e etiquetas de identifica&ccedil;&atilde;o.\r\n<br>        Possui fechadura na porta\r\n<br>        com duas chaves.\r\n<br>        Acompanha parafusos para fixa&ccedil;&atilde;o do arm&aacute;rio.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:32', 0, 0),
(1397, 'AC0081221800', 'Arm&aacute;rio Porta Chaves Acrimet para 128 Chaves', '', '', 0, 'Acrimet', 0, 0, 0, 0, '', '<br>        Arm&aacute;rio fabricado em MDF na cor areia\r\n<br>        com &oacute;timo acabamento.\r\n<br>        Acompanha 128 chaveiros em cores sortidas e etiquetas de identifica&ccedil;&atilde;o.\r\n<br>        Possui fechadura na porta\r\n<br>        com duas chaves.\r\n<br>        Acompanha parafusos para fixa&ccedil;&atilde;o do arm&aacute;rio\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1398, 'AC0251224600', 'Arm&aacute;rio Porta Chaves Acrimet P/256 Chaves', '', '', 0, 'Acrimet', 0, 0, 0, 0, '', '<br>        Arm&aacute;rio fabricado em MDF na cor areia\r\n<br>        com &oacute;timo acabamento.\r\n<br>        Acompanha 256 chaveiros em cores sortidas e etiquetas de identifica&ccedil;&atilde;o.\r\n<br>        Possui fechadura na porta\r\n<br>        com duas chaves.\r\n<br>        Acompanha parafusos para fixa&ccedil;&atilde;o do arm&aacute;rio.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1399, 'AC0121223060', 'Etiquetas Pl&aacute;sticas para chaves Acrimet pote com 60', '', '', 0, 'Acrimet', 0, 0, 0, 0, '', '<br>        Chaveiros fabricados em polipropileno com etiquetas de identifica&ccedil;&atilde;o. \r\n<br>        Uma maneira pr&aacute;tica e eficiente de organizar suas chaves.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1400, 'AC0111228700', 'Porta Chaves com Suporte Acrimet REF 143', '', '', 0, 'Acrimet', 0, 0, 0, 0, '', '<br>        Suporte autoadesivo com capacidade para organizar 8 chaveiros.\r\n<br>        Acompanha 8 chaveiros em cores sortidas.\r\n<br>        Possui orif&iacute;cios que tamb&eacute;m possibilitam a fixa&ccedil;&atilde;o por meio de parafusos (n&atilde;o inclusos).\r\n<br>        Uma maneira pr&aacute;tica e eficiente de organizar suas chaves.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1401, 'AC0131229400', 'Organizador de Chaves - Pasta Suspensa', '', '', 0, 'Acrimet', 0, 0, 0, 0, '', '<br>        Organizador de chaves um formato de pasta suspensa para arquivo. \r\n<br>        Tamanho of&iacute;cio acompanha 24 chaveiros em cores sortidas.\r\n<br>        Uma maneira pr&aacute;tica e eficiente de organizar e proteger suas chaves.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1402, 'LX0042099900', 'Lixeira Autom&aacute;tica com Sensor 6l - 6LC', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1403, 'LX0052094200', 'Lixeira Autom&aacute;tica com Sensor 9L - 9LC', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1404, 'LX0062090400', 'Lixeira Autom&aacute;tica com Sensor 12L - 12LC', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1405, 'LX0122092600', 'Lixeira Autom&aacute;tica com Sensor 30L - 30LB', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1406, 'LX0032093500', 'Lixeira Autom&aacute;tica com Sensor 3L - 3LA', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1407, 'BS0121231100', 'Barra De Apoio Access 30cm', '', '', 0, 'Jackwal', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1408, 'BS0131237500', 'Barra de Apoio Access 40cm', '', '', 0, 'Jackwal', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1409, 'BS0171239000', 'Barra de Apoio Access 60cm', '', '', 0, 'Jackwal', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1410, 'BS0141232900', 'Barra de Apoio Access 70cm', '', '', 0, 'Jackwal', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1411, 'BS0151238200', 'Barra de Apoio Access 80cm', '', '', 0, 'Jackwal', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1412, 'BS0181234300', 'Barra de Apoio Access Rebat&iacute;vel', '', '', 0, 'Jackwal', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1413, 'BS0161233600', 'Barra de Apoio Access Curva 70cm', '', '', 0, 'Jackwal', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1414, 'MO0350085300', 'Mola Dorma BTS-60 INOX \"T\"POT 3 COMPLETA', '484.00', '', 0, 'Dorma', 0, 0, 1, 1, 'molas para piso, mola para piso, mola de piso, molas para porta, mola de porta, molas para portas, mola porta, mola para porta de vidro, utensÃ­lio para porta, acessÃ³rios para porta', '<p>Mola de piso para portas de a&ccedil;&atilde;o dupla e tr&aacute;fego leve, agora com eixo &quot;T&quot;</p><p>A BTS 60 &eacute; usado para portas padronizadas de a&ccedil;&atilde;o dupla com largura de at&eacute; 900 mm e peso m&aacute;ximo de 80 Kg.</p><p>Ajuste para fechamento r&aacute;pido otimizado com duas v&aacute;lvulas reguladoras. O design leve e compacto garante uma aplica&ccedil;&atilde;o ideal em profundidades de piso limitadas.</p><p>Parada com abertura 90o.</p>', '', '3', '30', '9', '6', '2018-03-19 11:08:48', 0, 1),
(1415, 'MO0470082188', 'Mola Aerea TS Compakt', '', '', 0, 'Dorma', 0, 0, 0, 0, '', '<br>        Com muita frequ&ecirc;ncia as portas dos c&ocirc;modos de casa ficam abertas pelo simples motivos de esquecermos de fech&aacute;-las. \r\n<br>        Isso possibilita a entrada de insetos e a circula&ccedil;&atilde;o de sujeira na casa. \r\n<br>        Outra situa&ccedil;&atilde;o que acontece bastante com portas comuns &eacute; que elas fiquem marcadas ou rachem com o passar do tempo devido aos fortes impactos sofridos com as batidas. \r\n<br>        Pensando em resolver esses problemas a Dorma desenvolveu a linha de molas a&eacute;reas TS Compakt.\r\n<br>        Compacto\r\n<br>        o modelo conta com for&ccedil;a de fechamento ajust&aacute;vel em pot&ecirc;ncia 2, 3 e 4 de modo que atende a diferentes tipos de porta.\r\n<br>        Por isso ele &eacute; considerado praticamente um modelo universal e o &uacute;nico para portas de larguras entre 700mm e 1100mm.\r\n<br>        Al&eacute;m de ser certificado pelo ISO 9001.\r\n<br>        As vantagens s&atilde;o in&uacute;meras tanto para o usu&aacute;rio quanto para o profissional que vai instalar.\r\n<br>        Confira:\r\n<br>        Usu&aacute;rio: Com um modelo &uacute;nico para qualquer tipo comum de porta o usu&aacute;rio n&atilde;o precisa correr atr&aacute;s de pe&ccedil;as espec&iacute;ficas para cada porta da casa ou estabelecimento. \r\n<br>        H&aacute; tamb&eacute;m o benef&iacute;cio de manter os ambientes climatizados e evitar que barulhos externos incomodem a rotina di&aacute;ria uma vez que a porta permanecer&aacute; sempre fechada.\r\n<br>        Para evitar batidas bruscas o modelo conta com duas v&aacute;lvulas que regulam a velocidade de fechamento uma dos 180&ordm; aos 15&ordm; e outra dos 15&ordm; a 0&ordm;.\r\n<br>        Instalador: A instala&ccedil;&atilde;o &eacute; simples e &aacute;gil al&eacute;m de n&atilde;o exigir uma placa de fixa&ccedil;&atilde;o.\r\n<br>        A aplica&ccedil;&atilde;o pode ser realizada tanto para portas que abrem &agrave; direita quanto &agrave; esquerda.\r\n<br>        Por fim o equipamento vem acompanhado de gabarito que se aplica &agrave; qualquer tipo de porta. Invista num futuro mais confort&aacute;vel e seguro adquira a Mola A&eacute;rea TS Compakt. \r\n<br>        FICHA T&Eacute;CNICA \r\n<br>        Dados T&eacute;cnicos\r\n<br>        Produto: Mola A&eacute;rea TS Compakt\r\n<br>        Unidades: 1\r\n<br>        Uso indicado: Todo modelo comum de porta\r\n<br>        Pot&ecirc;ncia: Ajust&aacute;vel em 2, 3 e 4\r\n<br>        Dimens&otilde;es: 205mm x 94mm\r\n<br>        Capacidade: Portas entre 700 e 1100mm de largura\r\n<br>        Cor: Prata, Preto e Branco\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1416, 'MO0470082100', 'Mola Hidraulica Aerea TS Compakt - PRATA', '189.00', '', 0, 'Dorma', 0, 0, 1, 1, 'Mola hidrÃ¡ulica, mola para porta, ', '<p><br />Mola hidr&aacute;ulica p/porta<br />Caracteristicas T&eacute;cnicas:<br />Solu&ccedil;&atilde;o ideal para portas convencionais que possuam de 700 &agrave; 1100 mm podem ser aplicadas em porta direita ou esquerda s&atilde;o de instala&ccedil;&atilde;o f&aacute;cil e r&aacute;pida possuem ajuste de gabarito que permite a sele&ccedil;&atilde;o de for&ccedil;a de fechamento a diferentes tamanhos de porta um modelo &uacute;nico para qualquer posi&ccedil;&atilde;o de instala&ccedil;&atilde;o otimiza&ccedil;&atilde;o da velocidade de fechamento com duas v&aacute;lvulas de regulagem.<br />Fabrica&ccedil;&atilde;o certificada pela ISO 9001.<br />Cor: Prata</p>', '', '2', '28', '11', '8', '2018-03-15 02:22:18', 0, 1),
(1417, 'MO0370088700', 'Mola Aerea TS Compakt - PRETA', '', '', 0, 'Dorma', 0, 0, 0, 0, '', '<br>        Mola hidr&aacute;ulica p/porta\r\n<br>        Caracteristicas T&eacute;cnicas:\r\n<br>        Solu&ccedil;&atilde;o ideal para portas convencionais que possuam de 700 &agrave; 1100 mm podem ser aplicadas em porta direita ou esquerda s&atilde;o de instala&ccedil;&atilde;o f&aacute;cil e r&aacute;pida possuem ajuste de gabarito que permite a sele&ccedil;&atilde;o de for&ccedil;a de fechamento a diferentes tamanhos de porta um modelo &uacute;nico para qualquer posi&ccedil;&atilde;o de instala&ccedil;&atilde;o otimiza&ccedil;&atilde;o da velocidade de fechamento com duas v&aacute;lvulas de regulagem. \r\n<br>        Fabrica&ccedil;&atilde;o certificada pela ISO 9001.\r\n<br>        Cor: preta\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1418, 'MO0440086000', 'Mola Aerea TS Compakt - BRANCO BL', '', '', 0, 'Dorma', 0, 0, 0, 0, '', '<br>        Mola hidr&aacute;ulica p/porta\r\n<br>        Caracteristicas T&eacute;cnicas:\r\n<br>        Solu&ccedil;&atilde;o ideal para portas convencionais que possuam de 700 &agrave; 1100 mm podem ser aplicadas em porta direita ou esquerda s&atilde;o de instala&ccedil;&atilde;o f&aacute;cil e r&aacute;pida possuem ajuste de gabarito que permite a sele&ccedil;&atilde;o de for&ccedil;a de fechamento a diferentes tamanhos de porta um modelo &uacute;nico para qualquer posi&ccedil;&atilde;o de instala&ccedil;&atilde;o otimiza&ccedil;&atilde;o da velocidade de fechamento com duas v&aacute;lvulas de regulagem. \r\n<br>        Fabrica&ccedil;&atilde;o certificada pela ISO 9001.\r\n<br>        Cor: Branca\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1419, 'MO0390089488', 'Mola A&eacute;rea Dorma MA-200/2', '', '', 0, 'Dorma', 0, 0, 0, 0, '', '<br>        A Mola A&eacute;rea Dorma MA 200 com pot&ecirc;ncia de fechamento 2 &eacute; ideal para portas simples de escrit&oacute;rio divis&oacute;rias lavabos e cozinhas.\r\n<br>        Quem lida com a prepara&ccedil;&atilde;o de alimentos na cozinha sabe muito bem que a porta do c&ocirc;modo deve permanecer sempre fechada para que assim impurezas n&atilde;o adentrem o ambiente e a circula&ccedil;&atilde;o de pessoas sem toucas e equipamentos higi&ecirc;nicos seja tamb&eacute;m evitada. \r\n<br>        Foi pensando em facilitar a circula&ccedil;&atilde;o de pessoas nesses ambientes que a Dorma desenvolveu a linha MA 200/2. \r\n<br>        A especifica&ccedil;&atilde;o atende tipos de portas que tenham largura m&iacute;nimas de 700mm e m&aacute;xima de 850mm. Com o equipamento a porta se fechar&aacute; automaticamente e de forma suave de acordo com a velocidade de fechamento escolhida pelo usu&aacute;rio na hora da instala&ccedil;&atilde;o. \r\n<br>        Assim &eacute; poss&iacute;vel evitar batidas bruscas e acidentes. O equipamento &eacute; o primeiro produzido em todo o Brasil a contar com o sistema &ldquo;rack-and-pinion&rdquo; que garante um modelo compacto para todos os tipos de pot&ecirc;ncia. \r\n<br>        Dessa forma &eacute; poss&iacute;vel ter um controle hidr&aacute;ulico eficaz da velocidade de fechamento a partir dos 180&ordm;. \r\n<br>        Tudo desenvolvido com tecnologia de ponta efici&ecirc;ncia e qualidade para garantir o seu conforto. \r\n<br>        A mola pode ser instalada tanto no batente quanto direto na porta e ainda funciona num sistema hidr&aacute;ulico revers&iacute;vel. \r\n<br>        Garante a abertura tanto para o lado direito quanto para o lado esquerdo sem precisar de ajustes t&eacute;cnicos no aparelho. \r\n<br>        Invista em conforto e seguran&ccedil;a para a sua casa e local de trabalho. \r\n<br>        &Eacute; a Dorma investindo na sua felicidade. \r\n<br>        TABELA T&Eacute;CNICA\r\n<br>        Dados T&eacute;cnicos\r\n<br>        Produto: Mola A&eacute;rea Dorma 200/2\r\n<br>        Unidades: 1\r\n<br>        Uso indicado: Todo modelo comum de porta\r\n<br>        Pot&ecirc;ncia: 2\r\n<br>        Dimens&otilde;es: 180mm x 89mm\r\n<br>        Capacidade: Portas entre 700mm a 850mm de largura\r\n<br>        Cor: Prata, Preto e Branco\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1420, 'MO0390089400', 'Mola A&eacute;rea Dorma MA-200/2 - Prata', '', '', 0, 'Dorma', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1421, 'MO0550086900', 'Mola A&eacute;rea Dorma MA-200/2 - Preto', '', '', 0, 'Dorma', 0, 0, 0, 0, '', '<br>        Mola Hidr&aacute;ulica A&eacute;rea para Porta MA 200/2 Dorma utilizada para fechamento da porta sozinho\r\n<br>        suavemente e sem ru&iacute;dos. Esta mola hidr&aacute;ulica a&eacute;rrea utiliza o sistema &quot;Rack and Pinion&quot; (Pinh&atilde;o e Cremalheira) reconhecido e aprovado internacionalmente permitindo um controle hidr&aacute;ulico total a partir de um &acirc;ngulo 180&ordm; (&acirc;ngulo de abertura da porta)  Tecnologia efici&ecirc;ncia e qualidade garantidas pela marca Dorma. Equipada com duas v&aacute;lvulas de regulagem que permitem a adapta&ccedil;&atilde;o &agrave; diversas situa&ccedil;&otilde;es. A primeira v&aacute;lvula permite regular a velocidade de fechamento de 180&deg; a 20&deg; e a segunda v&aacute;lvula regula a velocidade do &quot;golpe final&quot; de 20&deg; a 0&deg; fechando a porta lenta e silenciosamente quando usada em portas com fechaduras de fechamento suave.\r\n<br>        Principais fun&ccedil;&otilde;es:\r\n<br>        - Indicada para portas com largura de 700 at&eacute; 900mm e de at&eacute; 50Kg.\r\n<br>        - Mant&eacute;m a porta fechada;\r\n<br>        - Elimina correntes de ar;\r\n<br>        - Isolamento de ambientes;\r\n<br>        - F&aacute;cil instala&ccedil;&atilde;o;\r\n<br>        - Revers&iacute;vel para portas direita ou esquerda; sem a necessidade de modifica&ccedil;&otilde;es no mecanismo\r\n<br>        - N&atilde;o requer ferramentas especiais;\r\n<br>        - Pode ser instalada na porta ou no batente;\r\n<br>        - Indicada para qualquer tipo de porta ou port&atilde;o;\r\n<br>        - Para instala&ccedil;&atilde;o em portas de vidro necessita do suporte para portas de vidro MA200.\r\n<br>        Especifica&ccedil;&atilde;o t&eacute;cnica:\r\n<br>        NCM: 83026000\r\n<br>        Fabricante: Dorma\r\n<br>        Unidade: pe&ccedil;a\r\n<br>        Aplica&ccedil;&atilde;o: Portas de madeira\r\n<br>        portas corta fogo\r\n<br>        porta de ferro\r\n<br>        portas de alum&iacute;nio.\r\n<br>        Cor: Prata\r\n<br>        Material: corpo em alum&iacute;nio e bra&ccedil;o hidr&aacute;ulico em a&ccedil;o.\r\n<br>        Dimens&otilde;es: \r\n<br>        - Corpo sem bra&ccedil;o: 180x43x65mm (largura x altura x profundidade)\r\n<br>        - Corpo com bra&ccedil;o: 180x89x65mm (largura x altura x profundidade)\r\n<br>        Peso: 1.525Kg\r\n<br>        D&iacute;spon&iacute;veis nas cores: prata branca e preta.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0);
INSERT INTO `pew_produtos` (`id`, `sku`, `nome`, `preco`, `preco_promocao`, `promocao_ativa`, `marca`, `id_cor`, `estoque`, `estoque_baixo`, `tempo_fabricacao`, `descricao_curta`, `descricao_longa`, `url_video`, `peso`, `comprimento`, `largura`, `altura`, `data`, `visualizacoes`, `status`) VALUES
(1422, 'MO0540080500', 'Mola A&eacute;rea Dorma MA-200/2 - Branco', '', '', 0, 'Dorma', 0, 0, 0, 0, '', '<br>        Mola Hidr&aacute;ulica A&eacute;rea para Porta MA 200/2 Dorma utilizada para fechamento da porta sozinho\r\n<br>        suavemente e sem ru&iacute;dos. Esta mola hidr&aacute;ulica a&eacute;rrea utiliza o sistema &quot;Rack and Pinion&quot; (Pinh&atilde;o e Cremalheira) reconhecido e aprovado internacionalmente permitindo um controle hidr&aacute;ulico total a partir de um &acirc;ngulo 180&ordm; (&acirc;ngulo de abertura da porta)  Tecnologia efici&ecirc;ncia e qualidade garantidas pela marca Dorma. Equipada com duas v&aacute;lvulas de regulagem que permitem a adapta&ccedil;&atilde;o &agrave; diversas situa&ccedil;&otilde;es. A primeira v&aacute;lvula permite regular a velocidade de fechamento de 180&deg; a 20&deg; e a segunda v&aacute;lvula regula a velocidade do &quot;golpe final&quot; de 20&deg; a 0&deg; fechando a porta lenta e silenciosamente quando usada em portas com fechaduras de fechamento suave.\r\n<br>        Principais fun&ccedil;&otilde;es:\r\n<br>        - Indicada para portas com largura de 700 at&eacute; 900mm e de at&eacute; 50Kg.\r\n<br>        - Mant&eacute;m a porta fechada;\r\n<br>        - Elimina correntes de ar;\r\n<br>        - Isolamento de ambientes;\r\n<br>        - F&aacute;cil instala&ccedil;&atilde;o;\r\n<br>        - Revers&iacute;vel para portas direita ou esquerda; sem a necessidade de modifica&ccedil;&otilde;es no mecanismo\r\n<br>        - N&atilde;o requer ferramentas especiais;\r\n<br>        - Pode ser instalada na porta ou no batente;\r\n<br>        - Indicada para qualquer tipo de porta ou port&atilde;o;\r\n<br>        - Para instala&ccedil;&atilde;o em portas de vidro necessita do suporte para portas de vidro MA200.\r\n<br>        Especifica&ccedil;&atilde;o t&eacute;cnica:\r\n<br>        NCM: 83026000\r\n<br>        Fabricante: Dorma\r\n<br>        Refer&ecirc;ncia: MA200/2\r\n<br>        Unidade: pe&ccedil;a\r\n<br>        Aplica&ccedil;&atilde;o: Portas de madeira\r\n<br>        portas corta fogo\r\n<br>        porta de ferro\r\n<br>        portas de alum&iacute;nio.\r\n<br>        Cor: Prata\r\n<br>        Material: corpo em alum&iacute;nio e bra&ccedil;o hidr&aacute;ulico em a&ccedil;o.\r\n<br>        Dimens&otilde;es:\r\n<br>        - Corpo sem bra&ccedil;o: 180x43x65mm (largura x altura x profundidade)\r\n<br>        - Corpo com bra&ccedil;o: 180x89x65mm (largura x altura x profundidade)\r\n<br>        Peso: 1.525Kg\r\n<br>        D&iacute;spon&iacute;veis nas cores: prata, branca e preta.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1423, 'MO0480088588', 'Mola A&eacute;rea Hidr&aacute;ulica Dorma MA-200/3', '', '', 0, 'Dorma', 0, 0, 0, 0, '', '<br>        Destinada a qualquer tipo de porta ou port&atilde;o a mola a&eacute;rea MA 200 da Dorma &eacute; nada menos do que a primeira de sua categoria trazida ao Brasil e produzida aqui. Com a tecnologia de ponta da fabricante o modelo logo se destacou por seu tamanho compacto variedade de cores f&aacute;cil instala&ccedil;&atilde;o e formato est&eacute;tico atraente. Suas fun&ccedil;&otilde;es s&atilde;o in&uacute;meras: fechar a porta de forma suave e sem ru&iacute;dos mant&ecirc;-la fechada proteger contra correntes de ar evitar acidentes e at&eacute; mesmo retardar a propaga&ccedil;&atilde;o de fogo. A MA 200 conta com o sistema &ldquo;rack-and-pinion&rdquo; que consiste em um produto final compacto de mesmo tamanho para as tr&ecirc;s pot&ecirc;ncias de mola cada uma destinada a uma largura e peso diferente de porta e com abertura de 180&ordm;. A pot&ecirc;ncia 2 serve para larguras menores de 85cm a 3 - que condiz com o produto desta p&aacute;gina - para larguras entre 85cm de 95cm e a 4 para menores de 110cm e maiores de 95cm. Al&eacute;m disso conta com duas v&aacute;lvulas independentes para a regulagem da velocidade de fechamento uma para o intervalo dos 180&ordm; aos 20&ordm; e outra dos 20&ordm; ao 0&ordm;. A Dorma traz um sistema inteligente que &eacute; totalmente revers&iacute;vel permitindo que seus modelos sejam instalados tanto em portas &agrave; esquerda quanto &agrave; direita sem precisar inverter a estrutura. O revestimento do modelo &eacute; feito em esmalte sint&eacute;tico o que garante mais prote&ccedil;&atilde;o contra a a&ccedil;&atilde;o do tempo e maior beleza junto &agrave; decora&ccedil;&atilde;o. S&oacute; aqui no Rei das Fechaduras voc&ecirc; encontra a Mola A&eacute;rea Dorma MA 200/3 e diversos outros produtos de ferragens e acess&oacute;rios reconhecidos no mercado.\r\n<br> \r\n<br>        TABELA T&Eacute;CNICA\r\n<br>        Dados T&eacute;cnicos\r\n<br>        Produto: Mola A&eacute;rea Hidr&aacute;ulica Dorma MA 200/3\r\n<br>        Unidades: 1\r\n<br>        Uso indicado: Portas de entrada\r\n<br>        alum&iacute;nio e madeira.\r\n<br>        Pot&ecirc;ncia: 3\r\n<br>        Dimens&otilde;es: 180 x 43 x 65mm\r\n<br>        Largura da porta: Portas entre 850 e 950mm de largura\r\n<br>        Cor: Prata, Preto e Branco\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1424, 'MO0420085300', 'Mola A&eacute;rea Hidr&aacute;ulica Dorma MA-200/3 - Prata', '', '', 0, 'Dorma', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1425, 'MO0560081200', 'Mola A&eacute;rea Hidr&aacute;ulica Dorma MA-200/3 - Preto', '', '', 0, 'Dorma', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1426, 'MO0570087688', 'Mola A&eacute;rea Hidr&aacute;ulica Dorma MA-200/4', '', '', 0, 'Dorma', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1427, 'MO0570087600', 'Mola Dorma MA-200/4 PRETA POT&Ecirc;NCIA &quot;4&quot;', '', '', 0, 'Dorma', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1428, 'MO0570087300', 'Mola a implantar', '', '', 0, 'Dorma', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1429, 'MO0200107100', 'Selante de Prote&ccedil;&atilde;o para Mola de Piso', '', '', 0, 'Dorma', 0, 0, 0, 0, '', '<br>        Selante\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1430, 'FE4450019000', 'Fechadura Arouca Blim-Blim 650 ZBT estilo americano', '426.00', '', 0, 'Arouca', 0, 3, 1, 1, 'Fechadura Arouca Blim-Blim 650 ZBT estilo americano acionamento externo tipo gatilho', '<p>Fechadura Arouca Blim-Blim 650 ZBT , estilo americano com impon&ecirc;ncia dando uma sofistica&ccedil;&atilde;o a portas de entrada de resid&ecirc;ncias. Sistema de acionamento externo tipo gatilho</p>', '', '5', '40', '30', '25', '2018-03-15 11:02:16', 0, 1),
(1431, 'FE4460014300', 'Fechadura Arouca Blim-Blim 650 ZC', '', '', 0, 'Arouca', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1432, 'FE3050017600', 'Fechadura Arouca Blim-Blim 650 ZCE', '', '', 0, 'Arouca', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1433, 'FE7730012200', 'Fechadura Arouca Blim-Blim 650 LPE', '', '', 0, 'Arouca', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1434, 'DO4990048000', 'Dobradi&ccedil;a para M&aacute;rmore 0580 CR 20mm', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1435, 'DO4970047200', 'Dobradi&ccedil;a para Marmore 550-825 CR Direita', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1436, 'CA0180955500', 'Cantoneira 552-840 CR', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1437, 'CA0160954800', 'Cantoneira para M&aacute;rmore 554/845 CR', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1438, 'BA0130630800', 'Batente para M&aacute;rmore 0581-820 CR P/20mm', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1439, 'BA0110639200', 'Batente 0551-830 CR P/30mm', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1440, 'PA9920609900', 'Parafuso 560 CR com Porca 20mm', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1441, 'PA9930604200', 'Parafuso 860 CR com porca 30mm', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1442, 'TA0460230700', 'Tarjeta 819 CR Livre/Ocupado', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1443, 'PA9950605000', 'Parafuso 561-861 CR Atarraxante', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1444, 'PA9940600400', 'Parafuso 862 CR para Chumbar', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1445, 'CA0190390000', 'Suporte 583 850 CR - Chapa 20mm', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1446, 'CA0190390000', 'Suporte 583 850 CR - Chapa 20mm', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1447, 'FE1020013400', 'Fechadura Pado Super Trava 1000 Inox', '', '', 0, 'Pado', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1448, 'FE2860015000', 'Fechadura Pado Super Trava 11000 Inox - 02 pe&ccedil;as com o mesmo segredo', '', '', 0, 'Pado', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1449, 'FE6310010000', 'Fechadura Pado Super Trava ZM MILANO 1500 CR', '', '', 0, 'Pado', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1450, 'FE6150012700', 'Fechadura Pado Super Trava ZM Milano 11500 CR 2 pe&ccedil;as com o mesmo segredo', '', '', 0, 'Pado', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1451, 'FE2870010400', 'Fechadura Pado Super Trava ZM Milano 1500 CRA', '', '', 0, 'Pado', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1452, 'FE2880016800', 'Fechadura Pado Super Trava ZM Milano 11500 CRA 2 pe&ccedil;as com o mesmo segredo', '', '', 0, 'Pado', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1453, 'FE5940010200', 'Fechadura Stam 602/03 Inox', '', '', 0, 'Stam', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1454, 'FE1570013500', 'Fechadura Stam 603/11 - 20mm Inox', '', '', 0, 'Stam', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1455, 'FE3940012300', 'Fechadura Stam 901 Inox Bico De Papagaio', '', '', 0, 'Stam', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1456, 'FE3960013000', 'Fechadura Stam 1201 Tetra p/ Porta de Enrolar', '', '', 0, 'Stam', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1457, 'FE8980012500', 'Fechadura Stam 1701/100 - Tetra Sobrepor', '', '', 0, 'Stam', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1458, 'FE4530012700', 'Fechadura Stam 803/03 INOX - EXT', '', '', 0, 'Stam', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1459, 'FE5770017600', 'Fechadura Stam Morcego 1006 CR - ROS Quadra', '', '', 0, 'Stam', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1460, 'FE5900018000', 'Fechadura Stam Morcego 1006 OX ROS Quadra', '', '', 0, 'Stam', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1461, 'FE3170012800', 'Fechadura Papaiz Tetra Chave 140 CR R68', '', '', 0, 'Papaiz', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1462, 'FE3180018100', 'Fechadura Papaiz Tetra Chave 140 CR R68 - 2 pe&ccedil;as com o mesmo segredo', '', '', 0, 'Papaiz', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1463, 'FE3740013400', 'Fechadura Papaiz Tetra Chave 140 CA R68', '', '', 0, 'Papaiz', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1464, 'FE3220010200', 'Fechadura Papaiz Tetra Chave 140 R68 Cromo Acetinado 2 pe&ccedil;as com o mesmo segredo', '', '', 0, 'Papaiz', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1465, 'PR0130125000', 'Prendedor Magn&eacute;tico para Porta 315 Z CR', '', '', 0, 'Imab', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1466, 'PR0120120400', 'Prendedor Magn&eacute;tico para Porta 315 Z CA', '', '', 0, 'Imab', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1467, 'PR0670120500', 'Prendedor Magn&eacute;tico para Porta 314 Z CR', '', '', 0, 'Imab', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1468, 'PR0680125000', 'Prendedor Magn&eacute;tico para Porta 314 Z CA', '', '', 0, 'Imab', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1469, 'FE1450018300', 'Kit Fechadura Seguran&ccedil;a Orion BL TRIO 5570Z - Tetra', '', '', 0, 'Alian&ccedil;a', 0, 0, 0, 0, '', '<br>        Kit Trio Tetra Fort Quadra 55mm (Z-T) &gt; Trio Tetra Fort Quadra 5570 (Z -T)\r\n<br>        COMPOSI&Ccedil;&Atilde;O:\r\n<br>        01 FECHADURA TETRA FORT QUADRA 55MM\r\n<br>        02 TRAVAS DE SEGURAN&Ccedil;A\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1470, 'FE7170017000', 'Kit Fechadura Seguran&ccedil;a Orion CR TRIO 5570Z - Tetra', '', '', 0, 'Alian&ccedil;a', 0, 0, 0, 0, '', '<br>        Kit Trio Tetra Fort Quadra 55mm (Z-T) &gt; Trio Tetra Fort Quadra 5570 (Z -T)\r\n<br>        COMPOSI&Ccedil;&Atilde;O:\r\n<br>        01 FECHADURA TETRA FORT QUADRA 55MM\r\n<br>        02 TRAVAS DE SEGURAN&Ccedil;A\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1471, 'CI0020184700', 'Cilindro Tambor Miolo Stam 501/601/803/901/1401 CR', '', '', 0, 'Stam', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1472, 'CI0970187900', 'Cilindro Tambor Miolo Stam 1800/1803 - Tetra Cromado', '', '', 0, 'Stam', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1473, 'CI9970185528', 'Cilindro Tambor Miolo La Fonte ST2 CRA - 60mm', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1474, 'CI0590185500', 'Cilindro Tambor Miolo Alian&ccedil;a C400 CR', '', '', 0, 'Alian&ccedil;a', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1475, 'CI0850187400', 'Cilindro Tambor Miolo Alian&ccedil;a p/ Fechadura Tetra Fort BL', '', '', 0, 'Alian&ccedil;a', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1476, 'CI0840181000', 'Cilindro Tambor Miolo Alian&ccedil;a p/ Fechadura Tetra fort CR', '', '', 0, 'Alian&ccedil;a', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1477, 'PI0150592000', 'Pivo Inox p/ Portas Pivotantes at&eacute; 100kg', '', '', 0, 'Bello inox', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1478, 'PI0190594500', 'Pivot Inox Refor&ccedil;ado p/ Portas Pivotantes at&eacute; 250kg', '', '', 0, 'Bello inox', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1479, 'MO0740080200', 'Mola Hidraulica de Piso Soprano P330 POT AJUSTAVEL', '491.10', '', 0, 'Soprano', 0, 0, 1, 1, 'molas para piso, mola para piso, mola de piso, molas para porta, mola de porta, molas para portas, mola porta, mola para porta de vidro, utesÃ­lio para porta, acessÃ³rios para porta,', '<p><br />- Pot&ecirc;ncia Ajust&aacute;vel 1 a 4<br />- Para portas de aproximadamente 1100x2100 e peso de at&eacute; 120kg<br />- Dispon&iacute;vel no acabamento: A&ccedil;o Inox Polido</p>', '', '3', '27.5', '8.2', '5', '2018-03-19 10:55:57', 0, 1),
(1480, 'PR0660124300', 'Prendedor Auto Adesivo para Porta SM-035 CR', '', '', 0, 'Pado', 0, 0, 0, 0, '', '<br>        Fixador de porta em zamac com sistema magn&eacute;tico.\r\n<br>        Com fixa&ccedil;&atilde;o autoadesiva de alta resist&ecirc;ncia na parede ou no piso.\r\n<br>        Dispensa o uso furadeiras e brocas.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1481, 'FE9070010400', 'Fechadura Para Porta De Vidro JBM - Giro ou Pivotante', '', '', 0, 'JBM', 0, 0, 0, 0, '', '<br>        Fechaduras para portas de Giro com tetra-chave auto bloc&aacute;vel. (portas Pivotantes).\r\n<br>        Para vidros de 8mm a 10mm.\r\n<br>        N&atilde;o necessita de furos para a instala&ccedil;&atilde;o. Apenas encaixada.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1482, 'FE9080015000', 'Fechadura para Porta De Vidro JBM - Correr', '', '', 0, 'JBM', 0, 0, 0, 0, '', '<br>        Fechadura para portas de vidro de correr. Com tetra-chave.\r\n<br>        Vidros de 8 a 10mm\r\n<br>        N&atilde;o necessita de furos para a instala&ccedil;&atilde;o. Somente encaixada\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1483, 'FE9503005000', 'Fechadura de SeguranÃ§a 04 pinos Volper Keso 60291 CRA', '720.00', '', 0, 'Keso', 0, 0, 1, 1, 'fechaduras, fechadura, fechaduras la fonte, fechadura la fonte, fechaduas stam, fechadura stam, fechaduras alianÃ§a, fechadura alianÃ§a, fechadura pado, fechadura tetra, fechadura pa', '<p><br />FECHADURA DE SEGURAN&Ccedil;A 04 PINOS<br />Caixa totalmente fechada em a&ccedil;o cromado<br />Testa e contra testa em a&ccedil;o inox 304L<br />Trinco em zamak cromado com amortecedor em poliacetal<br />Lingueta em a&ccedil;o 1045 cromado em forma de pinos<br />ACOMPANHA O CILINDRO</p>', '', '2.5', '33', '14', '4', '2018-03-20 04:16:41', 0, 1),
(1484, 'CI0520187000', 'Cilindro Duplo Europerfil Keso 8000', '', '', 0, 'Keso', 0, 0, 0, 0, '', '<br>        Cilindro duplo Europerfil Keso\r\n<br>        Liga&ccedil;&atilde;o: A&ccedil;o\r\n<br>        Comprimento padr&atilde;o: 70mm\r\n<br>        Pronlogamento: at&eacute; 140mmm (standart)\r\n<br>        Mestragem: poss&iacute;vel sem restri&ccedil;&atilde;o\r\n<br>        ACIONADOR &Uacute;NICO norma (DIN) com 03 cahves + cart&atilde;o de seguran&ccedil;a\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1485, 'FE9893008700', 'Fechadura de SeguranÃ§a Rolete 04 pinos - Central - Volper Keso 70291 CRA', '820.00', '', 0, 'Keso', 0, 0, 1, 1, 'fechaduras, fechadura, fechaduras la fonte, fechadura la fonte, fechaduas stam, fechadura stam, fechaduras alianÃ§a, fechadura alianÃ§a, fechadura pado, fechadura tetra, fechadura pa', '<p><br />Fechadura de seguran&ccedil;a 04 pinos rolete. Caixa totalmente fechada em A&ccedil;o Cromado. Testa e contra testa em inox 304L Trinco rolete em lat&atilde;o cromoado com regulagem de press&atilde;o. Lingueta em A&ccedil;o 1045 Cromado em forma de pinos.<br />ACOMPANHA CILINDRO</p>', '', '3', '33', '14', '5', '2018-03-20 04:46:50', 0, 1),
(1486, 'FE0361984200', 'Fechadura de SeguranÃ§a 03 pontos - Rolete - 12 pinos - Volper Keso - CRA - 70200', '1570.00', '', 0, 'Keso', 0, 0, 1, 1, 'fechaduras, fechadura, fechaduras la fonte, fechadura la fonte, fechaduas stam, fechadura stam, fechaduras alianÃ§a, fechadura alianÃ§a, fechadura pado, fechadura tetra, fechadura pa', '<p><br />Fechadura de seguran&ccedil;a O3 pontos Rolete &ndash; 12 pinos. Caixa totalmente fechada em a&ccedil;o cromado. Testa em alum&iacute;nio escovado. Contra testa em inox 304 escovado. Trinco Rolete em Lat&atilde;o cromado com regulagem de press&atilde;o. Ling&uuml;eta em a&ccedil;o 1045 cromado em forma de pinos.<br />ACOMPANHA CILINDRO</p>', '', '6', '22', '14', '6', '2018-03-20 04:10:47', 0, 1),
(1487, 'FE99630006000', 'Fechadura de SeguranÃ§a 03 pontos - 12 pinos - Volper Keso - CRA - 60200', '1570.00', '0', 0, 'Keso', 0, 0, 1, 1, 'fechaduras, fechadura, fechaduras la fonte, fechadura la fonte, fechaduas stam, fechadura stam, fechaduras alianÃ§a, fechadura alianÃ§a, fechadura pado, fechadura tetra, fechadura pa', '<p><br />Fechadura de seguran&ccedil;a 03 pontos - 12 pinos. Caixa totalmente fechada em A&ccedil;o Cromado. Testa em alum&iacute;nio escovado. Contra testa em inox 304 escovado. Trinco em zamac cromado com amortecedor em poliacetal. Lingueta em A&ccedil;o 1045 Cromado em forma de pinos.<br />ACOMPANHA CILINDRO</p>', '', '6', '220', '14', '6', '2018-03-23 03:21:29', 0, 1),
(1488, '0072700', 'Puxador p/ Porta Duplo TR TB Inox Escovado JHF - 300 mm', '', '', 0, 'JHF', 0, 0, 0, 0, '', '<br>        Linha inox desenvolvido pela JHF possui design cl&aacute;ssico sua forma linear concede um toque de requinte a sua porta. A linha inox &eacute; b&aacute;sica e clean livre de exageros embeleza qualquer ambiente. Fabricada em a&ccedil;o inox material resistente garantindo a qualidade e durabilidade do produto outro beneficio importante &eacute; a facilidade de limpeza concedendo maior praticidade a sua rotina. O puxador TR da JHF fica magnifico em portas pivotantes e outras podendo ser de madeira e vidro voc&ecirc; pode escolher o acabamento que melhor combina com sua decora&ccedil;&atilde;o o inox polido ou escovado garantindo a harmonia do seu ambiente. Tamanho total: 455mm Tamanho de furo a furo: 300mm \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1489, '0078000', 'Puxador p/ Porta Duplo TR TB Inox Escovado JHF - 600 mm', '', '', 0, 'JHF', 0, 0, 0, 0, '', '<br>        O puxador TR linha inox desenvolvido pela JHF possui design cl&aacute;ssico sua forma linear concede um toque de requinte a sua porta. A linha inox &eacute; b&aacute;sica e clean livre de exageros embeleza qualquer ambiente. Fabricada em a&ccedil;o inox material resistente garantindo a qualidade e durabilidade do produto outro beneficio importante &eacute; a facilidade de limpeza concedendo maior praticidade a sua rotina. O puxador TR da JHF fica magnifico em portas pivotantes e outras podendo ser de madeira e vidro voc&ecirc; pode escolher o acabamento que melhor combina com sua decora&ccedil;&atilde;o o inox polido ou escovado garantindo a harmonia do seu ambiente. Tamanho total: 770mm Furo a Furo: 600mm\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1490, 'PU3320073400', 'Puxador p/ Porta Duplo TR TB Inox Escovado JHF - 800 mm', '', '', 0, 'JHF', 0, 0, 0, 0, '', '<br>        O puxador TR linha inox desenvolvido pela JHF possui design cl&aacute;ssico sua forma linear concede um toque de requinte a sua porta. A linha inox &eacute; b&aacute;sica e clean livre de exageros embeleza qualquer ambiente. Fabricada em a&ccedil;o inox material resistente garantindo a qualidade e durabilidade do produto outro beneficio importante &eacute; a facilidade de limpeza concedendo maior praticidade a sua rotina. O puxador TR da JHF fica magnifico em portas pivotantes e outras podendo ser de madeira e vidro voc&ecirc; pode escolher o acabamento que melhor combina com sua decora&ccedil;&atilde;o o inox polido ou escovado garantindo a harmonia do seu ambiente. Tamanho total: 988mm Tamanho de furo a furo: 800mm\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1491, 'PU3190072000', 'Puxador p/ Porta Duplo TR TB Inox Escovado JHF - 1000 mm', '', '', 0, 'JHF', 0, 0, 0, 0, '', '<br>        O puxador TR linha inox desenvolvido pela JHF possui design cl&aacute;ssico sua forma linear concede um toque de requinte a sua porta. A linha inox &eacute; b&aacute;sica e clean livre de exageros embeleza qualquer ambiente. Fabricada em a&ccedil;o inox material resistente garantindo a qualidade e durabilidade do produto outro beneficio importante &eacute; a facilidade de limpeza concedendo maior praticidade a sua rotina. O puxador TR da JHF fica magnifico em portas pivotantes e outras podendo ser de madeira e vidro voc&ecirc; pode escolher o acabamento que melhor combina com sua decora&ccedil;&atilde;o o inox polido ou escovado garantindo a harmonia do seu ambiente. Tamanho total: 1185mm Tamanho de furo a furo: 1000mm\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1492, 'PU3270076800', 'Puxador p/ Porta Duplo TR TB Inox Polido JHF - 300 mm', '', '', 0, 'JHF', 0, 0, 0, 0, '', '<br>        O puxador TR linha inox desenvolvido pela JHF possui design cl&aacute;ssico sua forma linear concede um toque de requinte a sua porta. A linha inox &eacute; b&aacute;sica e clean livre de exageros embeleza qualquer ambiente. Fabricada em a&ccedil;o inox material resistente garantindo a qualidade e durabilidade do produto outro beneficio importante &eacute; a facilidade de limpeza concedendo maior praticidade a sua rotina. O puxador TR da JHF fica magnifico em portas pivotantes e outras podendo ser de madeira e vidro voc&ecirc; pode escolher o acabamento que melhor combina com sua decora&ccedil;&atilde;o o inox polido ou escovado garantindo a harmonia do seu ambiente. Tamanho total: 455mm Tamanho de furo a furo: 300mm \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1493, 'PU3280071100', 'Puxador p/ Porta Duplo TR TB Inox Polido JHF - 600 mm', '', '', 0, 'JHF', 0, 0, 0, 0, '', '<br>        O puxador TR linha inox desenvolvido pela JHF possui design cl&aacute;ssico sua forma linear concede um toque de requinte a sua porta. A linha inox &eacute; b&aacute;sica e clean livre de exageros embeleza qualquer ambiente. Fabricada em a&ccedil;o inox material resistente garantindo a qualidade e durabilidade do produto outro beneficio importante &eacute; a facilidade de limpeza concedendo maior praticidade a sua rotina. O puxador TR da JHF fica magnifico em portas pivotantes e outras podendo ser de madeira e vidro voc&ecirc; pode escolher o acabamento que melhor combina com sua decora&ccedil;&atilde;o o inox polido ou escovado garantindo a harmonia do seu ambiente. Tamanho total: 770mm Furo a Furo: 600mm \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1494, 'PU3290077500', 'Puxador p/ Porta Duplo TR TB Inox Polido JHF - 800 mm', '', '', 0, 'JHF', 0, 0, 0, 0, '', '<br>        O puxador TR linha inox desenvolvido pela JHF possui design cl&aacute;ssico sua forma linear concede um toque de requinte a sua porta. A linha inox &eacute; b&aacute;sica e clean livre de exageros embeleza qualquer ambiente. Fabricada em a&ccedil;o inox material resistente garantindo a qualidade e durabilidade do produto outro beneficio importante &eacute; a facilidade de limpeza concedendo maior praticidade a sua rotina. O puxador TR da JHF fica magnifico em portas pivotantes e outras podendo ser de madeira e vidro voc&ecirc; pode escolher o acabamento que melhor combina com sua decora&ccedil;&atilde;o o inox polido ou escovado garantindo a harmonia do seu ambiente. Tamanho total: 988mm Furo a Furo: 800mm\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1495, 'PU3200078200', 'Puxador p/ Porta Duplo TR TB Inox Polido JHF - 1000 mm', '', '', 0, 'JHF', 0, 0, 0, 0, '', '<br>        Puxador para porta de madeira.\r\n<br>        Puxador para porta de vidro.\r\n<br>        Puxador duplo.\r\n<br>        Al&ccedil;a dupla.\r\n<br>        Manilh&atilde;o.\r\n<br>        Pegador para porta.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1496, 'PU3440079600', 'Puxador p/ Porta Duplo AD H0001 Inox Escovado JHF - 200 mm', '', '', 0, 'JHF', 0, 0, 0, 0, '', '<br>        O puxador H0001 linha inox desenvolvido pela JHF possui design cl&aacute;ssico sua forma linear concede um toque de requinte a sua porta. A linha inox &eacute; b&aacute;sica e clean livre de exageros embeleza qualquer ambiente. Fabricada em a&ccedil;o inox material resistente garantindo a qualidade e durabilidade do produto outro beneficio importante &eacute; a facilidade de limpeza concedendo maior praticidade a sua rotina. O puxador H0001 da JHF fica magnifico em portas pivotantes e outras podendo ser de madeira e vidro voc&ecirc; pode escolher o acabamento que melhor combina com sua decora&ccedil;&atilde;o o inox polido ou escovado garantindo a harmonia do seu ambiente. Tamanho total: 225mm e Furo a Furo: 200mm \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1497, 'PU3450074000', 'Puxador p/ Porta Duplo AD H0001 Inox Escovado JHF - 300 mm', '', '', 0, 'JHF', 0, 0, 0, 0, '', '<br>        O puxador H0001 linha inox desenvolvido pela JHF possui design cl&aacute;ssico sua forma linear concede um toque de requinte a sua porta. A linha inox &eacute; b&aacute;sica e clean livre de exageros embeleza qualquer ambiente. Fabricada em a&ccedil;o inox material resistente garantindo a qualidade e durabilidade do produto outro beneficio importante &eacute; a facilidade de limpeza concedendo maior praticidade a sua rotina. O puxador H0001 da JHF fica magnifico em portas pivotantes e outras podendo ser de madeira e vidro voc&ecirc; pode escolher o acabamento que melhor combina com sua decora&ccedil;&atilde;o o inox polido ou escovado garantindo a harmonia do seu ambiente. Tamanho total: 325mm Furo a Furo: 300mm \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1498, 'PU3620072700', 'Puxador p/ Porta Duplo AD H0001 Inox Escovado JHF - 400 mm', '', '', 0, 'JHF', 0, 0, 0, 0, '', '<br>        O puxador H0001 linha inox desenvolvido pela JHF possui design cl&aacute;ssico sua forma linear concede um toque de requinte a sua porta. A linha inox &eacute; b&aacute;sica e clean livre de exageros embeleza qualquer ambiente. Fabricada em a&ccedil;o inox material resistente garantindo a qualidade e durabilidade do produto outro beneficio importante &eacute; a facilidade de limpeza concedendo maior praticidade a sua rotina. O puxador H0001 da JHF fica magnifico em portas pivotantes e outras podendo ser de madeira e vidro voc&ecirc; pode escolher o acabamento que melhor combina com sua decora&ccedil;&atilde;o o inox polido ou escovado garantindo a harmonia do seu ambiente. Tamanho total: 425mm Furo a Furo: 400mm \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1499, 'PU3460070100', 'Puxador p/ Porta Duplo AD H0001 Inox Escovado JHF - 600 mm', '', '', 0, 'JHF', 0, 0, 0, 0, '', '<br>        O puxador H0001 linha inox desenvolvido pela JHF possui design cl&aacute;ssico sua forma linear concede um toque de requinte a sua porta. A linha inox &eacute; b&aacute;sica e clean livre de exageros embeleza qualquer ambiente. Fabricada em a&ccedil;o inox material resistente garantindo a qualidade e durabilidade do produto outro beneficio importante &eacute; a facilidade de limpeza concedendo maior praticidade a sua rotina. O puxador H0001 da JHF fica magnifico em portas pivotantes e outras podendo ser de madeira e vidro voc&ecirc; pode escolher o acabamento que melhor combina com sua decora&ccedil;&atilde;o o inox polido ou escovado garantindo a harmonia do seu ambiente. Tamanho total: 625mm Furo a Furo: 600mm \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1500, 'PU3480070000', 'Puxador p/ Porta Duplo AD H0001 Inox Polido JHF - 200 mm', '', '', 0, 'JHF', 0, 0, 0, 0, '', '<br>        O puxador H0001 linha inox desenvolvido pela JHF possui design cl&aacute;ssico sua forma linear concede um toque de requinte a sua porta. A linha inox &eacute; b&aacute;sica e clean livre de exageros embeleza qualquer ambiente. Fabricada em a&ccedil;o inox material resistente garantindo a qualidade e durabilidade do produto outro beneficio importante &eacute; a facilidade de limpeza concedendo maior praticidade a sua rotina. O puxador H0001 da JHF fica magnifico em portas pivotantes e outras podendo ser de madeira e vidro voc&ecirc; pode escolher o acabamento que melhor combina com sua decora&ccedil;&atilde;o o inox polido ou escovado garantindo a harmonia do seu ambiente. Tamanho total: 225mm e Furo a Furo: 200mm \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1501, 'PU3490076400', 'Puxador p/ Porta Duplo AD H0001 Inox Polido JHF - 300 mm', '', '', 0, 'JHF', 0, 0, 0, 0, '', '<br>        O puxador H0001 linha inox desenvolvido pela JHF possui design cl&aacute;ssico sua forma linear concede um toque de requinte a sua porta. A linha inox &eacute; b&aacute;sica e clean livre de exageros embeleza qualquer ambiente. Fabricada em a&ccedil;o inox material resistente garantindo a qualidade e durabilidade do produto outro beneficio importante &eacute; a facilidade de limpeza concedendo maior praticidade a sua rotina. O puxador H0001 da JHF fica magnifico em portas pivotantes e outras podendo ser de madeira e vidro voc&ecirc; pode escolher o acabamento que melhor combina com sua decora&ccedil;&atilde;o o inox polido ou escovado garantindo a harmonia do seu ambiente. Tamanho total: 325mm e Furo a Furo: 300mm \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1502, 'PU3630077300', 'Puxador p/ Porta Duplo AD H0001 Inox Polido JHF - 400 mm', '', '', 0, 'JHF', 0, 0, 0, 0, '', '<br>        O puxador H0001 linha inox desenvolvido pela JHF possui design cl&aacute;ssico sua forma linear concede um toque de requinte a sua porta. A linha inox &eacute; b&aacute;sica e clean livre de exageros embeleza qualquer ambiente. Fabricada em a&ccedil;o inox material resistente garantindo a qualidade e durabilidade do produto outro beneficio importante &eacute; a facilidade de limpeza concedendo maior praticidade a sua rotina. O puxador H0001 da JHF fica magnifico em portas pivotantes e outras podendo ser de madeira e vidro voc&ecirc; pode escolher o acabamento que melhor combina com sua decora&ccedil;&atilde;o o inox polido ou escovado garantindo a harmonia do seu ambiente. Tamanho total: 425mm Furo a Furo: 400mm \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1503, 'PU35000716', 'Puxador p/ porta Duplo AD H0001 Inox Polido JHF - 600 mm', '', '', 0, 'JHF', 0, 0, 0, 0, '', '<br>        O puxador H0001 linha inox desenvolvido pela JHF possui design cl&aacute;ssico sua forma linear concede um toque de requinte a sua porta. A linha inox &eacute; b&aacute;sica e clean livre de exageros embeleza qualquer ambiente. Fabricada em a&ccedil;o inox material resistente garantindo a qualidade e durabilidade do produto outro beneficio importante &eacute; a facilidade de limpeza concedendo maior praticidade a sua rotina. O puxador H0001 da JHF fica magnifico em portas pivotantes e outras podendo ser de madeira e vidro voc&ecirc; pode escolher o acabamento que melhor combina com sua decora&ccedil;&atilde;o o inox polido ou escovado garantindo a harmonia do seu ambiente. Tamanho total: 625mm Furo a Furo: 600mm \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1504, 'FE2433001900', 'Fechadura La Fonte Architect 751 E CR - EXT ST2/55', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1505, 'FE2443007200', 'Fechadura La Fonte Architect 751 I CR - INT ST2/55', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1506, 'FE2453002600', 'Fechadura La Fonte Architect 751 B CR - Ban ST2/55', '', '', 0, 'La Fonte', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1507, 'CF0190240100', 'Cofre Eletr&ocirc;nico Mini Yale - Azul', '', '', 0, 'Yale', 0, 0, 0, 0, '', '<br>        O Cofre Eletr&ocirc;nico Mini Yale azul &eacute; compacto e combina perfeitamente com decora&ccedil;&otilde;es de quartos e escrit&oacute;rios. Suas medidas seguem a propor&ccedil;&atilde;o de 16x22x12 cm no interior e 17x23x17 na parte externa. Para destrav&aacute;-la &eacute; preciso usar uma senha num&eacute;rica ou uma chave de seguran&ccedil;a. O produto vem acompanhado de duas chaves e permite o registro de uma sequencia num&eacute;rica de 3 &agrave; 8 digitos. O sistema el&eacute;trico funciona atrav&eacute;s de 4 pilhas AA que alimentam a energia do sistema de ilumina&ccedil;&atilde;o de led. \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1508, 'CF0200240200', 'Cofre Eletr&ocirc;nico Mini Yale - Rosa', '', '', 0, 'Yale', 0, 0, 0, 0, '', '<br>        O Cofre Eletr&ocirc;nico Mini Yale rosa funciona no sistema de senha num&eacute;rica. O produto permite o cadastro de uma senha de 3 a 8 n&uacute;meros e quando digitado acende luzes verdes de led se estiver correta e vermelha se estiver errada. Com um sistema super seguro o modelo vem acompanhado de duas chaves de seguran&ccedil;a para situa&ccedil;&otilde;es de emerg&ecirc;ncia. O interior mede 16x22x12 e o exterior tem 17x23x17. Al&eacute;m de n&atilde;o ocupar espa&ccedil;o o cofre &eacute; bastante discreto. \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1509, 'CF0230240300', 'Cofre Eletr&ocirc;nico Mini Yale - Preto', '', '', 0, 'Yale', 0, 0, 0, 0, '', '<br>        O Cofre Eletr&ocirc;nico Mini Yale preto &eacute; discreto e combina perfeitamente com qualquer c&ocirc;modo da casa ou do escrit&oacute;rio. Indicado para guardar pertences pessoais dinheiro documentos e valore o cofre tem 16x22x12 na &aacute;rea externa e 17x23x17 de tamanho externo. O sistema de seguran&ccedil;a funciona tanto com senha num&eacute;rica (3 a 8 d&iacute;gitos) quanto com a chave de seguran&ccedil;a para momentos em que se esquece a senha ou h&aacute; algum emprevisto. \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1510, 'PU1640070400', 'Puxador Al&ccedil;a dupla para porta DH210 25 X 45 X 800 X 600MM AE/AIP', '', '', 0, 'BSKF', 0, 0, 0, 0, '', '<br>        Tamanhos: 600 mm (entre furos)\r\n<br>        Dimens&otilde;es: 800 mm (comprimento) X 25-45 mm (di&acirc;metro)\r\n<br>        Acabamento: a&ccedil;o escovado\r\n<br>        Material: a&ccedil;o inox 304\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1511, 'PU1620070500', 'Puxador Al&ccedil;a dupla para porta DH8020 45 X 25 X 800 X 600MM AE/AIP', '', '', 0, 'BSKF', 0, 0, 0, 0, '', '<br>        Tamanhos: 600 mm (entre furos)\r\n<br>        Dimens&otilde;es: 800 mm (comprimento) X 45 X 25 mm (tubo)\r\n<br>        Acabamento: a&ccedil;o escovado/polido\r\n<br>        Material: a&ccedil;o inox 304 \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1512, 'PU8800111300', 'Puxador Al&ccedil;a dupla para porta HD 257 DOURADO 400MM', '', '', 0, 'BSKF', 0, 0, 0, 0, '', '<br>        Tamanho: 400 mm (entre furos)\r\n<br>        Dimens&otilde;es: 700 mm (comprimento) X 19 mm X 38 mm\r\n<br>        Acabamento: dourado\r\n<br>        Material: a&ccedil;o inox 304\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1513, 'PU8820112000', 'Puxador Al&ccedil;a dupla para porta HD 257 DOURADO 700MM', '', '', 0, 'BSKF', 0, 0, 0, 0, '', '<br>        Tamanho: 700 mm (entre furos)\r\n<br>        Dimens&otilde;e: 1000 mm (comprimento) X 19 mm X 38 mm\r\n<br>        Acabamento: dourado\r\n<br>        Material: a&ccedil;o inox 304\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1514, 'PU1630075000', 'Puxadora Al&ccedil;a dupla para porta JY235A 38 X 1200 X 800MM AE', '', '', 0, 'BSKF', 0, 0, 0, 0, '', '<br>        Tamanhos: 800 mm (entre furos)\r\n<br>        Dimens&otilde;es: 1200 mm (comprimento) X 38 mm (di&acirc;metro)\r\n<br>        Acabamento: a&ccedil;o escovado\r\n<br>        Material: a&ccedil;o inox 304\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1515, 'PU1650076800', 'Puxador Al&ccedil;a dupla para porta JY565A 1200 X 800MM AIP', '', '', 0, 'BSKF', 0, 0, 0, 0, '', '<br>        Tamanhos: 800 mm (entre furos)\r\n<br>        Dimens&otilde;es: 1200 mm (comprimento) X 58-30 mm (di&acirc;metro)\r\n<br>        Acabamento: a&ccedil;o inox polido\r\n<br>        Material: a&ccedil;o inox 304\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1516, 'PU1610074300', 'Puxador Al&ccedil;a dupla para porta SPH060 32 X 600 X 555MM AE', '', '', 0, 'BSKF', 0, 0, 0, 0, '', '<br>        Tamanhos: 555 mm (entre furos)\r\n<br>        Dimens&otilde;es: 600 mm (comprimento) X 80 mm (altura) X 32 mm (di&acirc;metro)\r\n<br>        Acabamento: a&ccedil;o escovado\r\n<br>        Material: a&ccedil;o inox 304\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1517, 'DO4670043900', 'Dobradi&ccedil;a Automatica Page 325 LC - 35&quot; x 30&quot;', '', '', 0, 'Page', 0, 0, 0, 0, '', '<br>        Dobradi&ccedil;a Autom&aacute;tica para porta em Lat&atilde;o Cromado\r\n<br>        - Mola interna\r\n<br>        - Sem dispositivos externos\r\n<br>        - F&aacute;cil regulagem\r\n<br>        - Mant&eacute;m a est&eacute;tica da porta\r\n<br>        - Economiza espa&ccedil;o\r\n<br>        OBS: Em regi&otilde;es litor&acirc;neas recomendamos somente utilizar acabamento em Lat&atilde;o ou A&ccedil;o Inox\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1518, '0049200', 'Dobradi&ccedil;a Automatica Page 325 LO - 35&quot; x 30&quot;', '', '', 0, 'Page', 0, 0, 0, 0, '', '<br>        Dobradi&ccedil;a Autom&aacute;tica para porta em Lat&atilde;o Oxidado\r\n<br>        - Mola interna\r\n<br>        - Sem dispositivos externos\r\n<br>        - F&aacute;cil regulagem\r\n<br>        - Mant&eacute;m a est&eacute;tica da porta\r\n<br>        - Economiza espa&ccedil;o\r\n<br>        OBS: Em regi&otilde;es litor&acirc;neas recomendamos somente utilizar acabamento em Lat&atilde;o ou A&ccedil;o Inox\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1519, 'DO4660048500', 'Dobradi&ccedil;a Automatica Page 225 A&ccedil;o cromado - 35&quot; x 30&quot;', '', '', 0, 'Page', 0, 0, 0, 0, '', '<br>        Dobradi&ccedil;a Autom&aacute;tica para porta em a&ccedil;o cromado\r\n<br>        - Mola interna\r\n<br>        - Sem dispositivos externos\r\n<br>        - F&aacute;cil regulagem\r\n<br>        - Mant&eacute;m a est&eacute;tica da porta\r\n<br>        - Economiza espa&ccedil;o\r\n<br>        OBS: Em regi&otilde;es litor&acirc;neas recomendamos somente utilizar acabamento em Lat&atilde;o ou A&ccedil;o Inox\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1520, 'DO4710045100', 'Dobradi&ccedil;a Automatica Page 225 A&ccedil;o cromo acetinado - 35&quot; x 30&quot;', '', '', 0, 'Page', 0, 0, 0, 0, '', '<br>        Dobradi&ccedil;a Autom&aacute;tica para porta em A&ccedil;o Cromo Acetinado\r\n<br>        - Mola interna\r\n<br>        - Sem dispositivos externos\r\n<br>        - F&aacute;cil regulagem\r\n<br>        - Mant&eacute;m a est&eacute;tica da porta\r\n<br>        - Economiza espa&ccedil;o\r\n<br>        OBS: Em regi&otilde;es litor&acirc;neas recomendamos somente utilizar acabamento em Lat&atilde;o ou A&ccedil;o Inox\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1521, 'DO0880043000', 'Dobradi&ccedil;a Vai e Vem 355 LP- Lat&atilde;o Polido - 4&quot;', '', '', 0, 'Page', 0, 0, 0, 0, '', '<br>        Dobradi&ccedil;as vai e vem normalmente aplicadas em porta bang bang (tipo saloon) porta balc&atilde;o ou passagem onde necessita-se que a porta abra para os dois lados como em portas de acesso a cozinha em restaurantes ou em hospitais etc\r\n<br>        - 2 molas internas\r\n<br>        - Movimentos suaves\r\n<br>        - F&aacute;cil regulagem\r\n<br>        - Sem dispositivos externos\r\n<br>        - Mant&eacute;m a est&eacute;tica da porta\r\n<br>        -Economiza espa&ccedil;o\r\n<br>        OBS: Em regi&otilde;es litor&acirc;neas recomendamos utilizar Lat&atilde;o ou A&ccedil;o inox\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1522, 'DO0870048600', 'Dobradi&ccedil;a Vai e Vem 355 LP- Lat&atilde;o Polido - 3&quot;', '', '', 0, 'Page', 0, 0, 0, 0, '', '<br>        Dobradi&ccedil;as vai e vem normalmente aplicadas em porta bang bang (tipo saloon) porta balc&atilde;o ou passagem onde necessita-se que a porta abra para os dois lados como em portas de acesso a cozinha em restaurantes ou em hospitais etc\r\n<br>        - 2 molas internas\r\n<br>        - Movimentos suaves\r\n<br>        - F&aacute;cil regulagem\r\n<br>        - Sem dispositivos externos\r\n<br>        - Mant&eacute;m a est&eacute;tica da porta\r\n<br>        - Economiza espa&ccedil;o\r\n<br>        OBS: Em regi&otilde;es litor&acirc;neas recomendamos utilizar Lat&atilde;o ou A&ccedil;o inox\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1523, 'DO2960044800', 'Dobradi&ccedil;a Vai e Vem 355 LCRA- Lat&atilde;o Cromo Acetinado - 4&quot;', '', '', 0, 'Page', 0, 0, 0, 0, '', '<br>        Dobradi&ccedil;as vai e vem normalmente aplicadas em porta bang bang (tipo saloon) porta balc&atilde;o ou passagem onde necessita-se que a porta abra para os dois lados como em portas de acesso a cozinha em restaurantes ou em hospitais etc\r\n<br>        - 2 molas internas\r\n<br>        - Movimentos suaves\r\n<br>        - F&aacute;cil regulagem\r\n<br>        - Sem dispositivos externos\r\n<br>        - Mant&eacute;m a est&eacute;tica da porta\r\n<br>        -Economiza espa&ccedil;o\r\n<br>        OBS: Em regi&otilde;es litor&acirc;neas recomendamos utilizar Lat&atilde;o ou A&ccedil;o inox\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1524, 'DO2910047000', 'Dobradi&ccedil;a Vai e Vem 355 LCRA- Lat&atilde;o Cromo Acetinado - 3&quot;', '', '', 0, 'Page', 0, 0, 0, 0, '', '<br>        Dobradi&ccedil;as vai e vem normalmente aplicadas em porta bang bang (tipo saloon) porta balc&atilde;o ou passagem onde necessita-se que a porta abra para os dois lados como em portas de acesso a cozinha em restaurantes ou em hospitais etc\r\n<br>        - 2 molas internas\r\n<br>        - Movimentos suaves\r\n<br>        - F&aacute;cil regulagem\r\n<br>        - Sem dispositivos externos\r\n<br>        - Mant&eacute;m a est&eacute;tica da porta\r\n<br>        - Economiza espa&ccedil;o\r\n<br>        OBS: Em regi&otilde;es litor&acirc;neas recomendamos utilizar Lat&atilde;o ou A&ccedil;o inox\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1525, 'DO2880040000', 'Dobradi&ccedil;a Vai e Vem 355 LC- Lat&atilde;o Cromado - 4&quot;', '', '', 0, 'Page', 0, 0, 0, 0, '', '<br>        Dobradi&ccedil;as vai e vem normalmente aplicadas em porta bang bang (tipo saloon) porta balc&atilde;o ou passagem onde necessita-se que a porta abra para os dois lados como em portas de acesso a cozinha em restaurantes ou em hospitais etc\r\n<br>        - 2 molas internas\r\n<br>        - Movimentos suaves\r\n<br>        - F&aacute;cil regulagem\r\n<br>        - Sem dispositivos externos\r\n<br>        - Mant&eacute;m a est&eacute;tica da porta\r\n<br>        - Economiza espa&ccedil;o\r\n<br>        OBS: Em regi&otilde;es litor&acirc;neas recomendamos utilizar Lat&atilde;o ou A&ccedil;o inox\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1526, 'DO2870045700', 'Dobradi&ccedil;a Vai e Vem 355 LC- Lat&atilde;o Cromado - 3&quot;', '', '', 0, 'Page', 0, 0, 0, 0, '', '<br>        Dobradi&ccedil;as vai e vem normalmente aplicadas em porta bang bang (tipo saloon) porta balc&atilde;o ou passagem onde necessita-se que a porta abra para os dois lados como em portas de acesso a cozinha em restaurantes ou em hospitais etc\r\n<br>        - 2 molas internas\r\n<br>        - Movimentos suaves\r\n<br>        - F&aacute;cil regulagem\r\n<br>        - Sem dispositivos externos\r\n<br>        - Mant&eacute;m a est&eacute;tica da porta\r\n<br>        -Economiza espa&ccedil;o\r\n<br>        OBS: Em regi&otilde;es litor&acirc;neas recomendamos utilizar Lat&atilde;o ou A&ccedil;o inox\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1527, 'DO0900044500', 'Dobradi&ccedil;a Vai e Vem 355 LOX- Lat&atilde;o Oxidado - 4&quot;', '', '', 0, 'Page', 0, 0, 0, 0, '', '<br>        Dobradi&ccedil;as vai e vem normalmente aplicadas em porta bang bang (tipo saloon) porta balc&atilde;o ou passagem onde necessita-se que a porta abra para os dois lados como em portas de acesso a cozinha em restaurantes ou em hospitais etc\r\n<br>        - 2 molas internas\r\n<br>        - Movimentos suaves\r\n<br>        - F&aacute;cil regulagem\r\n<br>        - Sem dispositivos externos\r\n<br>        - Mant&eacute;m a est&eacute;tica da porta\r\n<br>        - Economiza espa&ccedil;o\r\n<br>        OBS: Em regi&otilde;es litor&acirc;neas recomendamos utilizar Lat&atilde;o ou A&ccedil;o inox\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1528, 'DO0890049300', 'Dobradi&ccedil;a Vai e Vem 355 LOX- Lat&atilde;o Oxidado - 3&quot;', '', '', 0, 'Page', 0, 0, 0, 0, '', '<br>        Dobradi&ccedil;as vai e vem normalmente aplicadas em porta bang bang (tipo saloon) porta balc&atilde;o ou passagem onde necessita-se que a porta abra para os dois lados como em portas de acesso a cozinha em restaurantes ou em hospitais etc\r\n<br>        - 2 molas internas\r\n<br>        - Movimentos suaves\r\n<br>        - F&aacute;cil regulagem\r\n<br>        - Sem dispositivos externos\r\n<br>        - Mant&eacute;m a est&eacute;tica da porta\r\n<br>        - Economiza espa&ccedil;o\r\n<br>        OBS: Em regi&otilde;es litor&acirc;neas recomendamos utilizar Lat&atilde;o ou A&ccedil;o inox\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1529, 'DO5890047000', 'Dobradi&ccedil;a Vai e Vem 255 FN- Ferro Niquelado - 4&quot;', '', '', 0, 'Page', 0, 0, 0, 0, '', '<br>        Dobradi&ccedil;as vai e vem normalmente aplicadas em porta bang bang (tipo saloon) porta balc&atilde;o ou passagem onde necessita-se que a porta abra para os dois lados como em portas de acesso a cozinha em restaurantes ou em hospitais etc\r\n<br>        - 2 molas internas\r\n<br>        - Movimentos suaves\r\n<br>        - F&aacute;cil regulagem\r\n<br>        - Sem dispositivos externos\r\n<br>        - Mant&eacute;m a est&eacute;tica da porta\r\n<br>        - Economiza espa&ccedil;o\r\n<br>        OBS: Em regi&otilde;es litor&acirc;neas recomendamos utilizar Lat&atilde;o ou A&ccedil;o inox\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1530, 'DO5880041700', 'Dobradi&ccedil;a Vai e Vem 255 FN- Ferro Niquelado - 3&quot;', '', '', 0, 'Page', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1531, 'FE4150015600', 'Fechadura Tubular Vouga Branca 90mm', '', '', 0, 'Vouga', 0, 0, 0, 0, '', '<br>        Fechadura Tubular Vouga Branca de 90 mm usada em divis&oacute;rias com acionamento por chave do lado externo e bot&atilde;o do lado interno com gatilho de 90 mm o que permite com que a ma&ccedil;aneta se posicione a 90mm da testa da porta facilitando sua abertura sem enroscar a m&atilde;o no batente da porta. &Eacute; indicada para portas com espessura entre 32 e 37 mm \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0);
INSERT INTO `pew_produtos` (`id`, `sku`, `nome`, `preco`, `preco_promocao`, `promocao_ativa`, `marca`, `id_cor`, `estoque`, `estoque_baixo`, `tempo_fabricacao`, `descricao_curta`, `descricao_longa`, `url_video`, `peso`, `comprimento`, `largura`, `altura`, `data`, `visualizacoes`, `status`) VALUES
(1532, 'FE4180011700', 'Fechadura Tubular Vouga Preta 90mm', '', '', 0, 'Vouga', 0, 0, 0, 0, '', '<br>        Fechadura Tubular Vouga Preta de 90 mm usada em divis&oacute;rias com acionamento por chave do lado externo e bot&atilde;o do lado interno com gatilho de 90 mm o que permite com que a ma&ccedil;aneta se posicione a 90mm da testa da porta facilitando sua abertura sem enroscar a m&atilde;o no batente da porta. &Eacute; indicada para portas com espessura entre 32 e 37 mm \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:33', 0, 0),
(1533, 'FE4140010000', 'Fechadura Tubular Vouga Cromada 90mm', '', '', 0, 'Vouga', 0, 0, 0, 0, '', '<br>        Fechadura Tubular Vouga Preta de 90 mm usada em divis&oacute;rias com acionamento por chave do lado externo e bot&atilde;o do lado interno com gatilho de 90 mm o que permite com que a ma&ccedil;aneta se posicione a 90mm da testa da porta facilitando sua abertura sem enroscar a m&atilde;o no batente da porta. &Eacute; indicada para portas com espessura entre 32 e 37 mm \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1534, 'FE7140010900', 'Fechadura Tubular ABS 41410N-90MM - Lockwell - Preta', '', '', 0, 'Lockwell', 0, 0, 0, 0, '', '<br>        Com um sistema de trinco muito pr&aacute;tico e resistente que facilita muito a instala&ccedil;&atilde;o das fechaduras reduzindo em 50% o tempo de intala&ccedil;&atilde;o e uso de ferramentas especiais. Este sistema de chave/bot&atilde;o de girar trava e destrava pelo bot&atilde;o ou chave e s&atilde;o utilizado na montagem de divis&oacute;rias para escrit&oacute;rios consult&oacute;rios hot&eacute;is flats resid&ecirc;ncias entre outras aplica&ccedil;&otilde;es. \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1535, 'FE7160011600', 'Fechadura Tubular ABS 41416N-90MM BRANCA - Lockwell', '', '', 0, 'Lockwell', 0, 0, 0, 0, '', '<br>        Fechadura Lockwell Tubular ABS 41416N - 90mm tem um sistema de trinco muito pr&aacute;tico e resistente que facilita muito a instala&ccedil;&atilde;o das fechaduras reduzindo em 50% o tempo de intala&ccedil;&atilde;o e uso de ferramentas especiais. Este sistema de chave/bot&atilde;o de girar trava e destrava pelo bot&atilde;o ou chave e s&atilde;o utilizado na montagem de divis&oacute;rias para escrit&oacute;rios consult&oacute;rios hot&eacute;is flats resid&ecirc;ncias entre outras aplica&ccedil;&otilde;es. \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1536, 'FE7150016200', 'Fechadura Tubular ABS 41414N-90MM - Lockwell - Ocre', '', '', 0, 'Lockwell', 0, 0, 0, 0, '', '<br>        Fechadura Lockwell Tubular ABS 41414N - 90mm tem um sistema de trinco muito pr&aacute;tico e resistente que facilita muito a instala&ccedil;&atilde;o das fechaduras reduzindo em 50% o tempo de intala&ccedil;&atilde;o e uso de ferramentas especiais. Este sistema de chave/bot&atilde;o de girar trava e destrava pelo bot&atilde;o ou chave e s&atilde;o utilizado na montagem de divis&oacute;rias para escrit&oacute;rios consult&oacute;rios hot&eacute;is flats resid&ecirc;ncias entre outras aplica&ccedil;&otilde;es. \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1537, 'FE7050011800', 'Fechadura Tubular ABS 41110N-61MM Preta - Lockwell', '', '', 0, 'Lockwell', 0, 0, 0, 0, '', '<br>        Fechadura Lockwell Tubular ABS 41410 - 61mm tem um sistema de trinco muito pr&aacute;tico e resistente que facilita muito a instala&ccedil;&atilde;o das fechaduras reduzindo em 50% o tempo de intala&ccedil;&atilde;o e uso de ferramentas especiais. Este sistema de chave/bot&atilde;o de girar trava e destrava pelo bot&atilde;o ou chave e s&atilde;o utilizado na montagem de divis&oacute;rias para escrit&oacute;rios consult&oacute;rios hot&eacute;is flats resid&ecirc;ncias entre outras aplica&ccedil;&otilde;es. \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1538, 'FE7190018700', 'Fechadura Tubular ABS 4119N-61MM Cromada - Lockwell', '', '', 0, 'Lockwell', 0, 0, 0, 0, '', '<br>        Fechadura Lockwell Tubular ABS 4119 - 61mm tem um sistema de trinco muito pr&aacute;tico e resistente que facilita muito a instala&ccedil;&atilde;o das fechaduras reduzindo em 50% o tempo de intala&ccedil;&atilde;o e uso de ferramentas especiais. Este sistema de chave/bot&atilde;o de girar trava e destrava pelo bot&atilde;o ou chave e s&atilde;o utilizado na montagem de divis&oacute;rias para escrit&oacute;rios consult&oacute;rios hot&eacute;is flats resid&ecirc;ncias entre outras aplica&ccedil;&otilde;es. \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1539, 'FE7130015500', 'Fechadura Tubular ABS 4149N-90MM Cromada - Lockwell', '', '', 0, 'Lockwell', 0, 0, 0, 0, '', '<br>        Fechadura Lockwell Tubular ABS 4149N - 90mm tem um sistema de trinco muito pr&aacute;tico e resistente que facilita muito a instala&ccedil;&atilde;o das fechaduras reduzindo em 50% o tempo de intala&ccedil;&atilde;o e uso de ferramentas especiais. Este sistema de chave/bot&atilde;o de girar trava e destrava pelo bot&atilde;o ou chave e s&atilde;o utilizado na montagem de divis&oacute;rias para escrit&oacute;rios consult&oacute;rios hot&eacute;is flats resid&ecirc;ncias entre outras aplica&ccedil;&otilde;es. \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1540, '', 'Fechadura Tubular BRS 4143N-90MM LP - dourada -Lockwell', '', '', 0, 'Lockwell', 0, 0, 0, 0, '', '<br>        Fechadura Lockwell Tubular ABS 4143N - 90mm tem um sistema de trinco muito pr&aacute;tico e resistente que facilita muito a instala&ccedil;&atilde;o das fechaduras reduzindo em 50% o tempo de intala&ccedil;&atilde;o e uso de ferramentas especiais. Este sistema de chave/bot&atilde;o de girar trava e destrava pelo bot&atilde;o ou chave e s&atilde;o utilizado na montagem de divis&oacute;rias para escrit&oacute;rios consult&oacute;rios hot&eacute;is flats resid&ecirc;ncias entre outras aplica&ccedil;&otilde;es. \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1541, 'CC0280836601', 'Caixa p/cartas Classic 0 01 - Prata - Prates e Barbosa', '', '', 0, 'Prates e Barbosa', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1542, 'CC0280836600', 'Caixa p/cartas Classic - Prates Barbosa', '', '', 0, 'Prates e Barbosa', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1543, 'CC0270830202', 'Caixa p/cartas Classic 2 01 - Branca - Prates Barbosa', '', '', 0, 'Prates e Barbosa', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1544, 'CC0340839600', 'Caixa p/cartas Decor 0 02 - Prata - Prates e Barbosa', '', '', 0, 'Prates e Barbosa', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1545, 'CC03008371', 'Caixa p/cartas Imperial - Prates e Barbosa', '', '', 0, 'Prates e Barbosa', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1546, 'CC0300837100', 'Caixa p/cartas Imperial 0 44 - Prata - Prates e Barbosa', '', '', 0, 'Prates e Barbosa', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1547, '', 'Caixa p/cartas IMPERIAL 2 44 - Branca - Prates e Barbosa', '', '', 0, 'Prates e Barbosa', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1548, 'CC02608359', 'Caixa p/cartas Regiane - Prates e Barbosa', '', '', 0, 'Prates e Barbosa', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1549, 'CC0260835900', 'Caixa p/cartas Regiane 0 42 - Prata - Prates e Barbosa', '', '', 0, 'Prates e Barbosa', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1550, 'CC0250830300', 'Caixa p/cartas Regiane 2 42 - Branca - Prates e Barbosa', '', '', 0, 'Prates e Barbosa', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1551, 'CC03608301', 'Caixa p/cartasYankee - Prates e Barbosa', '', '', 0, 'Prates e Barbosa', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1552, 'CC0360830100', 'Caixa p/cartas Yankee 0 56 - Prata - Prates e Barbosa', '', '', 0, 'Prates e Barbosa', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1553, 'CC0350834000', 'Caixa p/cartas Yankee 2 56 - Branca - Prates e Barbosa', '', '', 0, 'Prates e Barbosa', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1554, 'CC03208389', 'Caixa p/cartas Safira - Prates e Barbosa', '', '', 0, 'Prates e Barbosa', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1555, 'CC0320838900', 'Caixa p/cartas Safira 0 10 - Prata - Prates e Barbosa', '', '', 0, 'Prates e Barbosa', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1556, 'CC0310832500', 'Caixa p/cartas Safira 2 10 - Branca - Prates e Barbosa', '', '', 0, 'Prates e Barbosa', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1557, 'CC03808300', 'Caixa p/cartas Vitoria - Prates e Barbosa', '', '', 0, 'Prates e Barbosa', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1558, 'CC0380830000', 'Caixa p/cartas Vitoria 0 41 - Prata - Prates Barbosa', '', '', 0, 'Prates e Barbosa', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1559, 'CC0370835700', 'Caixa p/cartas Safira 2 41 - Branca - Prates Barbosa', '', '', 0, 'Prates e Barbosa', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1560, 'FC0020346700', 'Fecho Pega Ladrao 505A FC', '', '', 0, 'Datti', 0, 0, 0, 0, '', '<br>        Fecho de uso residencial ou comercial. F&aacute;cil Instala&ccedil;&atilde;o e &oacute;tima qualidade. Alta durabilidade f&aacute;cil limpeza seguran&ccedil;a e beleza no acabamento. Indicado para residencias hot&eacute;is hospitais e qualquer lugar onde se necessite abrir uma fresta da porta de modo a n&atilde;o permitir que o invasor empurre a mesma e adentre ao local \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1561, 'FC0080349900', 'Fecho Pega Ladrao 3009.0055.28 CRA', '', '', 0, 'Soprano', 0, 0, 0, 0, '', '<br>        Fecho de uso residencial ou comercial. F&aacute;cil Instala&ccedil;&atilde;o e &oacute;tima qualidade. Alta durabilidade f&aacute;cil limpeza seguran&ccedil;a e beleza no acabamento. Indicado para residencias hot&eacute;is hospitais e qualquer lugar onde se necessite abrir uma fresta da porta de modo a n&atilde;o permitir que o invasor empurre a mesma e adentre ao local \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1562, 'FE3343006300', 'Fechadura Nina ZM CR 221-90E - EXT', '', '', 0, 'Pado', 0, 0, 0, 0, '', '<br>        Ma&ccedil;aneta e roseta em zamac Testa e contra testa em a&ccedil;o inoxid&aacute;vel Cilindro em lat&atilde;o maci&ccedil;o Acabamento cromado M&aacute;quina: 55mm; composta por um cilindro normal Utiliza&ccedil;&atilde;o: Esta fechadura &eacute; recomendada para portas externas em geral ou portas internas onde se requer mais seguran&ccedil;a conforme padr&atilde;o desenvolvido pelo fabricante\r\n<br>        Garantia: Conforme informa&ccedil;&atilde;o do fabricante distribuidor e importador este produto possui a garantia de 5 anos.\r\n<br>        Aten&ccedil;&atilde;o: Imagem meramente ilustrativa podendo conter alguma diferen&ccedil;a em sua tonalidade.\r\n<br>', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1563, 'FE3353001700', 'Fechadura Nina ZM CR 221-90I - INT', '', '', 0, 'Pado', 0, 0, 0, 0, '', '<br>        Ma&ccedil;aneta e roseta em zamac Testa e contra testa em a&ccedil;o inoxid&aacute;vel Acabamento cromado \r\n<br>        M&aacute;quina: 55mm;  \r\n<br>        Utiliza&ccedil;&atilde;o: Esta fechadura &eacute; recomendada para portas internas ou de passagem conforme padr&atilde;o desenvolvido pelo fabricante; \r\n<br>        Garantia: Conforme informa&ccedil;&atilde;o do fabricante distribuidor e importador este produto possui a garantia de 5 anos. \r\n<br>        Aten&ccedil;&atilde;o: Imagem meramente ilustrativa podendo conter alguma diferen&ccedil;a em sua tonalidade. \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1564, 'FE3363007000', 'Fechadura Nina ZM CR 221-90B - BAN', '', '', 0, 'Pado', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1565, 'FE8433003100', 'Fechadura Inoxvita Linea - MI610', '', '', 0, 'Papaiz', 0, 0, 0, 0, '', '', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1566, 'FE8443009500', 'Fechadura Inoxvita Linea CA MI610', '0', '', 0, 'Papaiz', 0, 0, 1, 1, 'Fechadura Inoxvita Linea CA MI610. Sku: FE8453004900. Papaiz. Nenhuma avaliaÃ§Ã£o. Por R$198,00. ou em 4x de R$49,50 sem juros no cartÃ£o de crÃ©dito', '<p><br />Fechadura em A&ccedil;o Inox (testa e contra-testa ma&ccedil;aneta lingueta);<br />M&aacute;quina: 55mm;<br />&Iacute;tens inclusos: M&aacute;quina da fechadura contra-testa espelhos ou roseta cilindros ma&ccedil;anetas parafusos e pino e chaves;<br />Utiliza&ccedil;&atilde;o: Esta fechadura &eacute; recomendada para &aacute;reas internas; altamente resistente a umidade e maresia -<strong> IDEAL PARA REGI&Otilde;ES LITOR&Acirc;NEAS </strong>conforme padr&atilde;o desenvolvido pelo fabricante;<br />Garantia: Conforme informa&ccedil;&atilde;o do fabricante distribuidor e importador este produto possui a garantia de 5 anos.</p>', '', '5', '10', '15', '20', '2018-03-07 10:31:49', 0, 0),
(1567, 'FE8453004900', 'Fechadura Inoxvita Linea CA MI610', '0', '', 0, 'Papaiz', 0, 0, 1, 1, 'Fechadura Inoxvita Linea CA MI610. Sku: FE8453004900. Papaiz. Nenhuma avaliaÃ§Ã£o. Por R$198,00. ou em 4x de R$49,50 sem juros no cartÃ£o de crÃ©dito', '<p><em>Fechadura Inoxvita Linea CA MI610</em>. Sku: FE8453004900. Papaiz. Nenhuma avalia&ccedil;&atilde;o. Por R$198,00. ou em 4x de R$49,50 sem juros no cart&atilde;o de cr&eacute;dito</p>', '', '5', '20', '10', '10', '2018-03-07 10:45:05', 0, 0),
(1568, 'FE9043001400', 'Fechadura Digital Intelbras FR200 Senha ou CartÃ£o', '0', '', 0, 'Intelbras', 0, 0, 1, 1, 'FR 200 O produto ideal para consumidores que buscam praticidade design e seguranÃ§a em um Ãºnico produto. Modos de abertura Ela pode ser aberta via senha numÃ©rica pelo teclado touch ', '<p><br />FR 200 O produto ideal para consumidores que buscam praticidade design e seguran&ccedil;a em um &uacute;nico produto. Modos de abertura Ela pode ser aberta via senha num&eacute;rica pelo teclado touch screen ou atrav&eacute;s de chaveiros RFID (cart&atilde;o de proximidade).<br />Baixo consumo de bateria A fechadura digital &eacute; alimentada por quatro pilhas alcalinas AA com autonomia de um ano considerando uma m&eacute;dia de at&eacute; dez acessos di&aacute;rios.<br />Alarme antiarrombamento O alarme antifurto aciona um aviso sonoro (durante 1 minuto) na pr&oacute;pria fechadura quando negadas 5 tentativas consecutivas de abertura.<br />O alarme tamb&eacute;m ser&aacute; acionado caso a porta seja arrombada Fun&ccedil;&atilde;o n&atilde;o perturbe Tenha mais privacidade ativando a fun&ccedil;&atilde;o N&atilde;o Perturbe.<br />Com ela voc&ecirc; pode desabilitar a abertura da fechadura pelo lado de fora Bateria de emerg&ecirc;ncia Para casos em que a carga que as pilhas fornecem &agrave; fechadura for insuficiente para a abertura da porta basta conectar uma bateria de 9 V na fechadura e digitar a senha cadastrada ou usar o chaveiro RFID Fun&ccedil;&atilde;o senha protegida Essa fun&ccedil;&atilde;o dificulta que descubram as senhas pelas marcas de digitais deixadas no teclado da fechadura.<br />Quando habilitada fornece n&uacute;meros aleat&oacute;rios a serem digitados pelo usu&aacute;rio ap&oacute;s a senha . Outras caracter&iacute;sticas:<br />&bull; Cadastro de at&eacute; quatro senhas<br />&bull; Cadastro de at&eacute; 30 chaveiros RFID<br />&bull; Sinaliza&ccedil;&atilde;o de pilha fraca com<br />1 semana de anteced&ecirc;ncia<br />&bull; Adapt&aacute;vel a portas de 25 &agrave; 50 mm<br />&bull; Fechadura de sobrepor de f&aacute;cil instala&ccedil;&atilde;o<br />Embalagem individual<br />Peso 1.4 Kg<br />85 mm (h)<br />260 mm (P)<br />Conte&uacute;do da embalagem: 1 fechadura digital, 1 manual, 5 chaveiros RFID, 1 gabarito de instala&ccedil;&atilde;o e 4 pilhas AA</p>', '', '5', '20', '20', '20', '2018-03-06 12:16:44', 0, 0),
(1569, 'FE9063003000', 'Fechadura Digital IntelbrÃ¡s FR100 Senha', '0', '', 0, '', 0, 10, 1, 30, 'A fechadura digital FR 100 possui acesso por senha numÃ©rica teclado de 12 teclas e instalaÃ§Ã£o simplificada. ', '<p><br />A fechadura digital FR 100 possui acesso por senha num&eacute;rica teclado de 12 teclas e instala&ccedil;&atilde;o simplificada. &Eacute; a solu&ccedil;&atilde;o perfeita para o controle de acesso de resid&ecirc;ncias escrit&oacute;rios e apartamentos. F&aacute;cil de instalar e sem fios A FR 100 possui instala&ccedil;&atilde;o simplificada e manual em portugu&ecirc;s. Ela pode ser instalada em portas de 25 a 50 mm de espessura e funciona com 4 pilhas alcalinas (AA). Utiliza senha para liberar a porta Agora voc&ecirc; n&atilde;o precisa mais procurar pela chave da sua casa ou do escrit&oacute;rio. Ela est&aacute; na ponta dos seus dedos: abra sua fechadura com at&eacute; quatro senhas diferentes de 4 a 12 d&iacute;gitos. Fun&ccedil;&atilde;o n&atilde;o perturbe Tenha mais privacidade ativando a fun&ccedil;&atilde;o N&atilde;o Perturbe. Com ela voc&ecirc; pode desabilitar a abertura da fechadura pelo lado de fora.</p>', '', '100', '100', '100', '100', '2018-03-06 12:01:05', 0, 0),
(1570, 'GA0551490000', 'Gancho Adesivo 3M Command Design Pequeno', '', '', 0, '3M', 0, 0, 0, 0, '', '<br>        Detalhes\r\n<br>        N&atilde;o estraga as paredes servindo para pendurar sem furar N&atilde;o deixa res&iacute;duos Gancho para pendurar f&aacute;cil de aplicar e ser removido.\r\n<br>        Suporta at&eacute; 450 g Dispon&iacute;vel em v&aacute;rios desenhos para combinar com sua decora&ccedil;&atilde;o e seu estilo D&ecirc; personalidade aos seus espa&ccedil;os sem danificar as superf&iacute;cies! \r\n<br>        Seus espa&ccedil;os na casa e no escrit&oacute;rio falam sobre voc&ecirc;. O Gancho Pl&aacute;stico 3M Command&trade; Design &eacute; um adesivo remov&iacute;vel com ganchos para decorar e organizar a sua casa de forma pr&aacute;tica sem sujeira e sem furos na parede. \r\n<br>        A tecnologia do adesivo Command permite trocar o gancho de lugar sem danificar as paredes. &Eacute; ideal para organizar cozinhas lavanderias e quartos. Aplica&ccedil;&atilde;o forte remo&ccedil;&atilde;o limpa resultados sem danos na parede Sem deixar res&iacute;duos e sujeira o Gancho Pl&aacute;stico 3M Command&trade; Design pode ser aplicado em v&aacute;rias superf&iacute;cies. Com cores e tamanhos diferentes ele garante estilo para sua decora&ccedil;&atilde;o. &Eacute; f&aacute;cil de ser colocado em diversas superf&iacute;cies como paredes pintadas vidros azulejos madeira e metal. Cada embalagem cont&eacute;m dois ganchos pl&aacute;sticos Design pequenos e quatro adesivos pequenos sendo que cada gancho suporta at&eacute; 450 g.O Gancho Pl&aacute;stico 3M Command&trade; Design est&aacute; dispon&iacute;vel em v&aacute;rios desenhos para combinar com sua decora&ccedil;&atilde;o e seu estilo. Tamb&eacute;m pode ser encontrado em diversos tamanhos segurando uma quantidade surpreendente de peso &ndash; dependendo do modelo at&eacute; sete quilos e meio! Esque&ccedil;a os pregos parafusos e tachas: esses ganchos adesivos 3M s&atilde;o r&aacute;pidos e f&aacute;ceis de pendurar podem ser utilizados em diversas superf&iacute;cies e s&atilde;o removidos de forma limpa sempre que voc&ecirc; desejar. Para aplicar estes ganchos de parede limpe a parede com &aacute;lcool e um pano seco. N&atilde;o use produtos de limpeza aeross&oacute;is ou toalhinhas de limpeza pois elas deixam um res&iacute;duo escorregadio que impede a ader&ecirc;ncia. Separe as tiras e remova o recobrimento do adesivo. Pressione a tira sobre a parte posterior do gancho. Agora pressione o gancho firmemente contra a parede ou superf&iacute;cie durante mais ou menos 30 segundos. Quanto maior for a press&atilde;o mais forte ser&aacute; a ades&atilde;o. Para que realmente exista uma ader&ecirc;ncia voc&ecirc; tem que deslizar o gancho para cima fora da base de montagem. Espere 1 hora antes de pendurar algum artigo. Para remover empurre para cima a parte inferior do gancho para deixar a base &agrave; vista na parede. Segure a base com cuidado n&atilde;o a pressione contra a parede. Lembre-se de que voc&ecirc; nunca deve puxar a tira em sua dire&ccedil;&atilde;o sempre puxe para baixo o mais devagar que voc&ecirc; puder. Pressione com o polegar a tira grudada na parede e com a outra m&atilde;o puxe lentamente para baixo mantendo-a esticada aproximadamente 30 cm ou at&eacute; que esta desgrude da superf&iacute;cie. Aplica&ccedil;&otilde;es sugeridas Ideal para organizar cozinhas lavanderias quartos e banheiros sem sujeira Pode ser aplicado em diversas superf&iacute;cies Pode ser utilizado em &aacute;reas &uacute;midas \r\n<br>', '', '', '', '', '', '2018-01-26 04:30:34', 0, 0),
(1571, 'CA0141309500', 'Camera de SeguranÃ§a Intelbras WI-FI HD IC3 interna', '0', '', 0, 'Intelbras', 0, 0, 1, 1, 'CÃ¢mera de SeguranÃ§a Wi-Fi HD - As cÃ¢meras de seguranÃ§a Wi-Fi HD iC3 foram desenvolvidas para que o usuÃ¡rio tenha o poder de cuidar da prÃ³pria seguranÃ§a.', '<p><br />C&acirc;mera de seguran&ccedil;a Wi-Fi HD | iC3<br />C&acirc;mera de Seguran&ccedil;a Wi-Fi HD - As c&acirc;meras de seguran&ccedil;a Wi-Fi HD iC3 foram desenvolvidas para que o usu&aacute;rio tenha o poder de cuidar da pr&oacute;pria seguran&ccedil;a. Todo o controle necess&aacute;rio estar&aacute; nas m&atilde;os do cliente em qualquer lugar atrav&eacute;s do smartphone desde a instala&ccedil;&atilde;o e grava&ccedil;&atilde;o&sup1; at&eacute; o recebimento de notifi ca&ccedil;&otilde;es por movimento. As c&acirc;meras de seguran&ccedil;a Wi-Fi HD iC3 tamb&eacute;m t&ecirc;m imagem em alta defi ni&ccedil;&atilde;o HD campo de vis&atilde;o de 111&deg; (diagonal) e vis&atilde;o noturna tudo para deixar o monitoramento ainda mais claro e amplo. Caracter&iacute;sticas &raquo; Conex&atilde;o Wi-Fi &raquo; Armazenamento em cart&atilde;o micro-SD&sup1;(n&atilde;o incluso) &raquo; Uso Interno &raquo; Campo de vis&atilde;o de 111&deg; (diagonal)&sup2; &raquo; Imagens em HD &raquo; Plug &amp; Play: f&aacute;cil instala&ccedil;&atilde;o &raquo; Notifica&ccedil;&atilde;o de movimento &raquo; &Aacute;udio bidirecional</p>', '', '1', '100', '50', '30', '2018-03-06 12:14:53', 0, 0),
(1572, 'CA01513000', 'Camera de SeguranÃ§a Intelbras WI-FI HD IC5 Externa', '0', '', 0, 'Intelbras', 0, 0, 1, 1, 'CÃ¢mera de seguranÃ§a Wi-Fi HD | iC5 As cÃ¢meras de seguranÃ§a Wi-Fi HD iC5 foram desenvolvidas para que vocÃª tenha o poder de cuidar da prÃ³pria seguranÃ§a.', '<p>C&acirc;mera de seguran&ccedil;a Wi-Fi HD | iC5 As c&acirc;meras de seguran&ccedil;a Wi-Fi HD iC5 foram desenvolvidas para que voc&ecirc; tenha o poder de cuidar da pr&oacute;pria seguran&ccedil;a. Todo o controle necess&aacute;rio estar&aacute; em suas m&atilde;os de qualquer lugar atrav&eacute;s do seu smartphone desde a instala&ccedil;&atilde;o e grava&ccedil;&atilde;o&sup1; at&eacute; o recebimento de notifica&ccedil;&otilde;es por movimento. As c&acirc;meras de seguran&ccedil;a Wi-Fi HD iC5 tamb&eacute;m t&ecirc;m imagem em alta defini&ccedil;&atilde;o HD 114&deg; de abertura vis&atilde;o noturna de at&eacute; 30 metros e prote&ccedil;&atilde;o contra chuva (IP66) tudo para deixar o monitoramento interno ou externo ainda mais claro e amplo. Siga os passos desse guia e inicie o monitoramento agora mesmo. &sup1;Cart&atilde;o micro-SD n&atilde;o incluso. Cart&atilde;o &eacute; necess&aacute;rio para grava&ccedil;&atilde;o. Caracter&iacute;sticas &raquo; Conex&atilde;o Wi-Fi &raquo; Armazenamento em cart&atilde;o micro-SD&sup1; &raquo; Campo de vis&atilde;o de 114&deg; (diagonal)&sup2; &raquo; Imagens em HD &raquo; Plug &amp; Play: f&aacute;cil instala&ccedil;&atilde;o &raquo; Notifica&ccedil;&atilde;o de movimento &raquo; Preparada para uso externo &sup1; Necess&aacute;rio cart&atilde;o micro-SD vendido separadamente para a grava&ccedil;&atilde;o das imagens. &sup2; Abertura horizontal de 92&deg;.</p>', '', '100', '100', '100', '100', '2018-03-06 12:05:14', 0, 0),
(1573, 'MO0390089488', 'MOLA AÃ‰REA DORMA MA-200/2', '168.00', '', 0, 'Dorma', 0, 1, 1, 1, 'A Mola HidrÃ¡ulica AÃ©rea para Porta MA 200/2, da Dorma, Ã© usada para o fechamento da porta sozinho, sem barulho. Aproveite o desconto no boleto e compre agora.\r\n', '<p>A Mola A&eacute;rea Dorma MA 200, com pot&ecirc;ncia de fechamento 2, &eacute; ideal para portas simples, de escrit&oacute;rio, divis&oacute;rias, lavabos e cozinhas. Quem lida com a prepara&ccedil;&atilde;o de alimentos na cozinha sabe muito bem que a porta do c&ocirc;modo deve permanecer sempre fechada, para que, assim, impurezas n&atilde;o adentrem o ambiente e a circula&ccedil;&atilde;o de pessoas sem toucas e equipamentos higi&ecirc;nicos seja, tamb&eacute;m, evitada.</p><p>Foi pensando em&nbsp;<strong>facilitar a circula&ccedil;&atilde;o de pessoas</strong>&nbsp;nesses ambientes, que a Dorma desenvolveu a linha MA 200/2. A especifica&ccedil;&atilde;o atende tipos de portas que tenham largura m&iacute;nimas de 700mm e m&aacute;xima de 850mm. Com o equipamento, a porta se fechar&aacute; automaticamente e de forma suave, de acordo com a velocidade de fechamento escolhida pelo usu&aacute;rio na hora da instala&ccedil;&atilde;o. Assim, &eacute; poss&iacute;vel evitar batidas bruscas e acidentes.</p><p>O equipamento &eacute; o primeiro produzido em todo o Brasil a contar com o s<strong>istema &ldquo;rack-and-pinion&rdquo;</strong>, que garante um modelo compacto para todos os tipos de pot&ecirc;ncia. Dessa forma, &eacute; poss&iacute;vel ter um controle hidr&aacute;ulico eficaz da velocidade de fechamento a partir dos 180&ordm;. Tudo desenvolvido com tecnologia de ponta, efici&ecirc;ncia e qualidade para garantir o seu conforto.</p><p>A mola pode ser instalada tanto no batente, quanto direto na porta e ainda funciona num sistema hidr&aacute;ulico revers&iacute;vel. Ou seja, garante a abertura tanto para o lado direito, quanto para o lado esquerdo sem precisar de ajustes t&eacute;cnicos no aparelho. Invista em conforto e seguran&ccedil;a para a sua casa e local de trabalho. &Eacute; a Dorma investindo na sua felicidade.</p><p>&nbsp;</p>', '', '1.8', '18', '4.3', '6.5', '2018-03-15 12:31:46', 0, 1),
(1575, 'FE9073005400', 'Fechadura Digital IntelbrÃ¡s FR101 senha', '525.00', '', 0, 'Intelbras', 0, 5, 1, 1, 'Fechadura Digital Intelbras FR101 Senha, Teclado Touch Screen sensÃ­veis ao toque. Ideal para casa de praia pois nÃ£o necessita de chave.', '<p>Esque&ccedil;a as chaves!<br />Seguindo a tend&ecirc;ncia digital, a FR 101 possui teclado<br />touch screen de 12 teclas sens&iacute;veis ao toque.<br />&Eacute; poss&iacute;vel cadastrar at&eacute; 4 senhas que podem ser<br />reprogramadas sempre que necess&aacute;rio.</p>', '', '2', '30', '20', '20', '2018-03-16 12:25:52', 0, 1),
(1576, 'FE9083004700', 'Fechadura Digital Intelbras FR200 Senha ou CartÃ£o', '717', '', 0, 'Intelbras', 0, 5, 1, 0, 'Fechadura Digital Itelbras FR200 Senha ou CartÃ£o de Proximidade RFID. Teclado Touch Screen. Ideal para Casa de Praia pois nÃ£o necessita chave ', '<p>Esque&ccedil;a as chaves!<br />Seguindo a tend&ecirc;ncia digital, a FR 201 facilita a vida de seus<br />clientes. Possui teclado touch screen de 12 teclas e<br />comunica&ccedil;&atilde;o RFID.<br />&Eacute; poss&iacute;vel cadastrar at&eacute; 4 senhas e 100 chaveiros de<br />proximidade.</p><p>A FR 201 &eacute; utilizada para controle de acesso de resid&ecirc;ncias,<br />apartamentos e escrit&oacute;rios.<br />Sua aplica&ccedil;&atilde;o vers&aacute;til possibilita a instala&ccedil;&atilde;o com puxadores<br />de diversos tamanhos, al&eacute;m de proporcionar a combina&ccedil;&atilde;o<br />perfeita com seu design diferenciado.</p>', '', '3', '25', '10', '30', '2018-03-14 12:29:24', 0, 1),
(1577, 'FE9053003500', 'Fechadura Digital Intelbras FR320 Senha ou CartÃ£o', '1190.00', '', 0, 'Intelbras', 0, 5, 1, 1, 'Fechadura Digital Intelbras FR320 Senha ou CartÃ£o de Proximidade. NÃ£o necessita de chave, ideal para Casa de Praia, Campo ou Cidade', '<p>Fechadura Digital Intelbras FR320 Senha ou Cart&atilde;o n&atilde;o sendo necess&aacute;rio o uso de chaves proporcionando maior comodidade aos usu&aacute;rios. Fechamento autom&aacute;tico e Alarme. Substitui as Fechaduras Tradicionais sem necessitar trocar a porta.</p>', '', '4', '33', '10', '30', '2018-03-14 05:21:02', 0, 1),
(1578, 'FE4760018700', 'FECHADURA BIOMETRICA EMBUTIR  YDF 40', '2590.00', '', 0, 'Yale', 0, 2, 1, 0, 'Fechadura Biometrica de Embutir Yale YDF 40 com Abertura por ImpressÃ£o Digital e Senha com Fechamento Manual e AutomÃ¡tico', '<p><strong>YDF 40</strong></p><p>&bull; Abertura por impress&atilde;o digital e senha;</p><p>&bull; Cadastro de at&eacute; 30 senhas;</p><p>&bull; Cadastro de at&eacute; 20 impress&otilde;es digitais;</p><p>&bull; Alarme de intrus&atilde;o e sensor de calor;</p><p>&bull; Fechamento manual e autom&aacute;tico;</p><p>&bull; Senha de acesso tempor&aacute;rio;</p><p>&bull; Guia de voz multil&iacute;ngua;</p><p>&bull; Tranqueta para sa&iacute;da de emerg&ecirc;ncia;</p><p>&bull; Espessura de porta: 35mm a 57mm;</p>', '', '5', '30', '20', '20', '2018-03-16 03:44:47', 0, 1),
(1579, 'FE9063006600', 'FECHADURA BIOMETRICA EMBUTIR  YMF 40 SENHA E CHAVE', '2970.00', '0.0', 0, 'Yale', 0, 2, 1, 1, 'Fechadura BiomÃ©trica de Embutir Yale YMF 40 Senha e Chave. Abertura por impressÃ£o digital, senha e chave.Alarme anti-vandalismo', '<p><strong>YMF 40</strong></p><p>&bull; Abertura por impress&atilde;o digital, senha e chave;</p><p>&bull; Registro de at&eacute; 30 senhas;</p><p>&bull; Registro de at&eacute; 20 impress&otilde;es digitais;</p><p>&bull; Entrada externa para bateria de emerg&ecirc;ncia;</p><p>&bull; Fechamento manual e autom&aacute;tico;</p><p>&bull; Tranqueta para sa&iacute;da de emerg&ecirc;ncia;</p><p>&bull; Alarme anti-vandalismo;</p><p>&bull; Guia de voz em 4 idiomas.</p>', '', '5', '40', '25', '20', '2018-04-16 03:52:15', 0, 1),
(1580, 'SKU99999999', 'Este produto estÃ¡ sendo testado', '150.00', '100.00', 1, '3M', 0, 10, 10, 10, 'Este produto estÃ¡ em fase de testes Este produto estÃ¡ em fase de testes', '<p>Este produto est&aacute; em fase de testes&nbsp;Este produto est&aacute; em fase de testes&nbsp;Este produto est&aacute; em fase de testes&nbsp;Este produto est&aacute; em fase de testes&nbsp;Este produto est&aacute; em fase de testes&nbsp;Este produto est&aacute; em fase de testes&nbsp;Este produto est&aacute; em fase de testes</p>', '', '1', '20', '20', '20', '2018-04-16 11:12:59', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_produtos_relacionados`
--

CREATE TABLE `pew_produtos_relacionados` (
  `id` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `id_relacionado` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pew_produtos_relacionados`
--

INSERT INTO `pew_produtos_relacionados` (`id`, `id_produto`, `id_relacionado`) VALUES
(79, 1572, 1571),
(80, 1572, 1572),
(81, 1571, 1571),
(82, 1571, 1572),
(89, 1568, 1283),
(90, 1568, 1284),
(92, 1568, 1569),
(91, 1568, 1568),
(99, 1580, 1487),
(100, 1580, 1483),
(98, 1580, 1578),
(96, 1284, 1568),
(97, 1284, 1569),
(101, 1580, 1231),
(102, 1580, 1390);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_subcategorias`
--

CREATE TABLE `pew_subcategorias` (
  `id` int(11) NOT NULL,
  `subcategoria` varchar(255) NOT NULL,
  `id_categoria` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `data_controle` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pew_subcategorias`
--

INSERT INTO `pew_subcategorias` (`id`, `subcategoria`, `id_categoria`, `descricao`, `ref`, `data_controle`, `status`) VALUES
(1, 'Residenciais', '27', '', 'residenciais', '2018-04-16 03:48:16', 1),
(2, 'Cofres', '30', '', 'cofres', '2018-04-16 03:49:20', 1),
(3, 'Barra AntipÃ¢nico', '30', '', 'barra-antipanico', '2018-04-16 03:49:14', 1),
(4, 'Fechaduras de seguranÃ§a', '30', '', 'fechaduras-de-seguranca', '2018-04-16 03:49:25', 1),
(5, 'CÃ¢meras', '30', '', 'cameras', '2018-04-16 03:49:17', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_subcategorias_produtos`
--

CREATE TABLE `pew_subcategorias_produtos` (
  `id` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_subcategoria` int(11) NOT NULL,
  `titulo_subcategoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_usuarios_administrativos`
--

CREATE TABLE `pew_usuarios_administrativos` (
  `id` int(11) NOT NULL,
  `empresa` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pew_usuarios_administrativos`
--

INSERT INTO `pew_usuarios_administrativos` (`id`, `empresa`, `usuario`, `senha`, `email`, `nivel`) VALUES
(2, 'Rei das Fechaduras', 'reidasfechaduras', '040784331312d994660de8a8021d1d52', 'contato@reidasfechaduras.com.br', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_users`
--
ALTER TABLE `chat_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_banners`
--
ALTER TABLE `pew_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_categorias`
--
ALTER TABLE `pew_categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_categorias_produtos`
--
ALTER TABLE `pew_categorias_produtos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_categorias_vitrine`
--
ALTER TABLE `pew_categorias_vitrine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_categoria_destaque`
--
ALTER TABLE `pew_categoria_destaque`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_chat_messages`
--
ALTER TABLE `pew_chat_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_chat_users`
--
ALTER TABLE `pew_chat_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_config_orcamentos`
--
ALTER TABLE `pew_config_orcamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_contatos`
--
ALTER TABLE `pew_contatos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_dicas`
--
ALTER TABLE `pew_dicas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_especificacoes_produtos`
--
ALTER TABLE `pew_especificacoes_produtos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_especificacoes_tecnicas`
--
ALTER TABLE `pew_especificacoes_tecnicas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_imagens_produtos`
--
ALTER TABLE `pew_imagens_produtos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_marcas`
--
ALTER TABLE `pew_marcas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_orcamentos`
--
ALTER TABLE `pew_orcamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_pedidos_orcamentos`
--
ALTER TABLE `pew_pedidos_orcamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_pedidos_produtos`
--
ALTER TABLE `pew_pedidos_produtos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_produtos`
--
ALTER TABLE `pew_produtos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_produtos_relacionados`
--
ALTER TABLE `pew_produtos_relacionados`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_subcategorias`
--
ALTER TABLE `pew_subcategorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_subcategorias_produtos`
--
ALTER TABLE `pew_subcategorias_produtos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_usuarios_administrativos`
--
ALTER TABLE `pew_usuarios_administrativos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_users`
--
ALTER TABLE `chat_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pew_banners`
--
ALTER TABLE `pew_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `pew_categorias`
--
ALTER TABLE `pew_categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `pew_categorias_produtos`
--
ALTER TABLE `pew_categorias_produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pew_categorias_vitrine`
--
ALTER TABLE `pew_categorias_vitrine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pew_categoria_destaque`
--
ALTER TABLE `pew_categoria_destaque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pew_chat_messages`
--
ALTER TABLE `pew_chat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `pew_chat_users`
--
ALTER TABLE `pew_chat_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `pew_config_orcamentos`
--
ALTER TABLE `pew_config_orcamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pew_contatos`
--
ALTER TABLE `pew_contatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pew_dicas`
--
ALTER TABLE `pew_dicas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pew_especificacoes_produtos`
--
ALTER TABLE `pew_especificacoes_produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT for table `pew_especificacoes_tecnicas`
--
ALTER TABLE `pew_especificacoes_tecnicas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `pew_imagens_produtos`
--
ALTER TABLE `pew_imagens_produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1715;

--
-- AUTO_INCREMENT for table `pew_marcas`
--
ALTER TABLE `pew_marcas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `pew_orcamentos`
--
ALTER TABLE `pew_orcamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pew_pedidos_orcamentos`
--
ALTER TABLE `pew_pedidos_orcamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `pew_pedidos_produtos`
--
ALTER TABLE `pew_pedidos_produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pew_produtos`
--
ALTER TABLE `pew_produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1581;

--
-- AUTO_INCREMENT for table `pew_produtos_relacionados`
--
ALTER TABLE `pew_produtos_relacionados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `pew_subcategorias`
--
ALTER TABLE `pew_subcategorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pew_subcategorias_produtos`
--
ALTER TABLE `pew_subcategorias_produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pew_usuarios_administrativos`
--
ALTER TABLE `pew_usuarios_administrativos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

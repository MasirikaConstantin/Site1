-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : dim. 04 fév. 2024 à 16:04
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id` int(11) NOT NULL,
  `iduser` int(11) DEFAULT NULL,
  `idpost` int(11) DEFAULT NULL,
  `commentaire` text DEFAULT NULL,
  `date` text NOT NULL,
  `heure` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`id`, `iduser`, `idpost`, `commentaire`, `date`, `heure`) VALUES
(1, 7, 1, 'hrthrvv', '', ''),
(2, 19, 28, '<p>Mon Commentaire</p>', '2024-01-27', '14:01:48'),
(3, 19, 28, '1', '2024-01-27', '14:01:01'),
(4, 19, 28, '1', '2024-01-27', '14:01:49'),
(5, 19, 28, '<p>Mon Commentaireezrverfc<strong>ecerer</strong></p>', '2024-01-27', '14:01:27'),
(6, 19, 29, '<p>Mon Commentairev rvtgbrt&nbsp; yh t</p> <p>id;nom;prenom;adresse;contact</p>\n<p><br>1;d;UVIBD;dd;dd</p>\n<p>2;FEFRFEF;CSDFRGDT;dd;35646</p>\n<p>3;FERFE HBBCER;GDTRH;dd;623564</p>\n<p>4;KJCER CREHJVES;ddd;dd;098765</p>\n<table style=\"border-collapse: collapse; width: 100%; height: 56.7812px;\" border=\"1\"><colgroup><col style=\"width: 20%;\"><col style=\"width: 20%;\"><col style=\"width: 20%;\"><col style=\"width: 20%;\"><col style=\"width: 20%;\"></colgroup>\n<tbody>\n<tr style=\"height: 22.3906px;\">\n<td style=\"height: 22.3906px;\">Nom</td>\n<td style=\"height: 22.3906px;\">post&nbsp;</td>\n<td style=\"height: 22.3906px;\">prenom&nbsp;</td>\n<td style=\"height: 22.3906px;\">Sexe&nbsp;</td>\n<td style=\"height: 22.3906px;\">age</td>\n</tr>\n<tr>\n<td>BRJHE RE</td>\n<td>BRJHE RE</td>\n<td>v</td>\n<td>M</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td>BRJHE RE</td>\n<td>&nbsp;</td>\n<td>BRJHE RE</td>\n<td>F</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>F</td>\n<td>BRJHE REBRJHE RE</td>\n</tr>\n<tr style=\"height: 34.3906px;\">\n<td style=\"height: 34.3906px;\">BRJHE RE</td>\n<td style=\"height: 34.3906px;\">BRJHE RE</td>\n<td style=\"height: 34.3906px;\">BRJHE RE</td>\n<td style=\"height: 34.3906px;\">BRJHE RE</td>\n<td style=\"height: 34.3906px;\">BRJHE RE</td>\n</tr>\n</tbody>\n</table>\n<p>5;CBRJHE REFJKEBR;TRHSEGSE;dd;2345465<br>6;FERJKBERF;GERZHGESV;dd;6457<br>7;A?KJERF;ddd;5GDFdd;dd6432<br>8;NKCSCEZ;JKYK;dd;GD<br>9;MLFNJERFRE;DZERG;dd;dd<br>10;KALEMBU;MASIRIKA;INKSI;098733435<br>11;Ushindi;Ushindi;Ushindi;Ushindi<br>12;papa;papa;papa;papa<br>13;oook;oook;oook;oook<br>14;oook;oook;oook;oook<br>15;DE4eEerf;DE4eEerf;DE4eEerf;DE4eEerf<br>16;dede;dede;dede;dede<br>17;dedeeeeeeeeeee;dedeeeeeeeeeee;dedeeeeeeeeeee;dedeeeeeeeeeee<br>18;Piscine;Piscine;Piscine;Piscine<br>19;ALAIN KEREDI;ALAIN KEREDI;ALAIN KEREDI;ALAIN KEREDI<br>20;olame refie;olame refie;olame refie;olame refie</p>\n<p><strong>g rtg tgrctgr rtgrg tbg</strong>rtgtrg trgr<span style=\"text-decoration: underline;\">tgrtg rtg rtg trg</span></p>\n<p><span style=\"text-decoration: underline;\">tg<span style=\"font-size: 36pt;\">grgtrgg<strong>rtgr</strong></span></span><span style=\"font-size: 36pt;\"><strong>grtgrtg trg tr</strong>grtgg<em>rrtgrg</em></span></p>', '2024-01-27', '14:01:05'),
(7, 19, 28, '<p>Mon Commentaire&lt;p&gt;id;nom;prenom;adresse;contact&lt;/p&gt;<br>&lt;p&gt;&lt;br&gt;1;d;UVIBD;dd;dd&lt;/p&gt;<br>&lt;p&gt;2;FEFRFEF;CSDFRGDT;dd;35646&lt;/p&gt;<br>&lt;p&gt;3;FERFE HBBCER;GDTRH;dd;623564&lt;/p&gt;<br>&lt;p&gt;4;KJCER CREHJVES;ddd;dd;098765&lt;/p&gt;<br>&lt;table style=\"border-collapse: collapse; width: 100%; height: 56.7812px;\" border=\"1\"&gt;&lt;colgroup&gt;&lt;col style=\"width: 20%;\"&gt;&lt;col style=\"width: 20%;\"&gt;&lt;col style=\"width: 20%;\"&gt;&lt;col style=\"width: 20%;\"&gt;&lt;col style=\"width: 20%;\"&gt;&lt;/colgroup&gt;<br>&lt;tbody&gt;<br>&lt;tr style=\"height: 22.3906px;\"&gt;<br>&lt;td style=\"height: 22.3906px;\"&gt;Nom&lt;/td&gt;<br>&lt;td style=\"height: 22.3906px;\"&gt;post&amp;nbsp;&lt;/td&gt;<br>&lt;td style=\"height: 22.3906px;\"&gt;prenom&amp;nbsp;&lt;/td&gt;<br>&lt;td style=\"height: 22.3906px;\"&gt;Sexe&amp;nbsp;&lt;/td&gt;<br>&lt;td style=\"height: 22.3906px;\"&gt;age&lt;/td&gt;<br>&lt;/tr&gt;<br>&lt;tr&gt;<br>&lt;td&gt;BRJHE RE&lt;/td&gt;<br>&lt;td&gt;BRJHE RE&lt;/td&gt;<br>&lt;td&gt;v&lt;/td&gt;<br>&lt;td&gt;M&lt;/td&gt;<br>&lt;td&gt;&amp;nbsp;&lt;/td&gt;<br>&lt;/tr&gt;<br>&lt;tr&gt;<br>&lt;td&gt;BRJHE RE&lt;/td&gt;<br>&lt;td&gt;&amp;nbsp;&lt;/td&gt;<br>&lt;td&gt;BRJHE RE&lt;/td&gt;<br>&lt;td&gt;F&lt;/td&gt;<br>&lt;td&gt;&amp;nbsp;&lt;/td&gt;<br>&lt;/tr&gt;<br>&lt;tr&gt;<br>&lt;td&gt;&amp;nbsp;&lt;/td&gt;<br>&lt;td&gt;&amp;nbsp;&lt;/td&gt;<br>&lt;td&gt;&amp;nbsp;&lt;/td&gt;<br>&lt;td&gt;F&lt;/td&gt;<br>&lt;td&gt;BRJHE REBRJHE RE&lt;/td&gt;<br>&lt;/tr&gt;<br>&lt;tr style=\"height: 34.3906px;\"&gt;<br>&lt;td style=\"height: 34.3906px;\"&gt;BRJHE RE&lt;/td&gt;<br>&lt;td style=\"height: 34.3906px;\"&gt;BRJHE RE&lt;/td&gt;<br>&lt;td style=\"height: 34.3906px;\"&gt;BRJHE RE&lt;/td&gt;<br>&lt;td style=\"height: 34.3906px;\"&gt;BRJHE RE&lt;/td&gt;<br>&lt;td style=\"height: 34.3906px;\"&gt;BRJHE RE&lt;/td&gt;<br>&lt;/tr&gt;<br>&lt;/tbody&gt;<br>&lt;/table&gt;<br>&lt;p&gt;5;CBRJHE REFJKEBR;TRHSEGSE;dd;2345465&lt;br&gt;6;FERJKBERF;GERZHGESV;dd;6457&lt;br&gt;7;A?KJERF;ddd;5GDFdd;dd6432&lt;br&gt;8;NKCSCEZ;JKYK;dd;GD&lt;br&gt;9;MLFNJERFRE;DZERG;dd;dd&lt;br&gt;10;KALEMBU;MASIRIKA;INKSI;098733435&lt;br&gt;11;Ushindi;Ushindi;Ushindi;Ushindi&lt;br&gt;12;papa;papa;papa;papa&lt;br&gt;13;oook;oook;oook;oook&lt;br&gt;14;oook;oook;oook;oook&lt;br&gt;15;DE4eEerf;DE4eEerf;DE4eEerf;DE4eEerf&lt;br&gt;16;dede;dede;dede;dede&lt;br&gt;17;dedeeeeeeeeeee;dedeeeeeeeeeee;dedeeeeeeeeeee;dedeeeeeeeeeee&lt;br&gt;18;Piscine;Piscine;Piscine;Piscine&lt;br&gt;19;ALAIN KEREDI;ALAIN KEREDI;ALAIN KEREDI;ALAIN KEREDI&lt;br&gt;20;olame refie;olame refie;olame refie;olame refie&lt;/p&gt;</p>', '2024-01-27', '14:01:11'),
(8, 19, 28, '&lt;p&gt;id;nom;prenom;adresse;contact&lt;/p&gt;<br>&lt;p&gt;&lt;br&gt;1;d;UVIBD;dd;dd&lt;/p&gt;<br>&lt;p&gt;2;FEFRFEF;CSDFRGDT;dd;35646&lt;/p&gt;<br>&lt;p&gt;3;FERFE HBBCER;GDTRH;dd;623564&lt;/p&gt;<br>&lt;p&gt;4;KJCER CREHJVES;ddd;dd;098765&lt;/p&gt;<br>&lt;table style=\"border-collapse: collapse; width: 100%; height: 56.7812px;\" border=\"1\"&gt;&lt;colgroup&gt;&lt;col style=\"width: 20%;\"&gt;&lt;col style=\"width: 20%;\"&gt;&lt;col style=\"width: 20%;\"&gt;&lt;col style=\"width: 20%;\"&gt;&lt;col style=\"width: 20%;\"&gt;&lt;/colgroup&gt;<br>&lt;tbody&gt;<br>&lt;tr style=\"height: 22.3906px;\"&gt;<br>&lt;td style=\"height: 22.3906px;\"&gt;Nom&lt;/td&gt;<br>&lt;td style=\"height: 22.3906px;\"&gt;post&amp;nbsp;&lt;/td&gt;<br>&lt;td style=\"height: 22.3906px;\"&gt;prenom&amp;nbsp;&lt;/td&gt;<br>&lt;td style=\"height: 22.3906px;\"&gt;Sexe&amp;nbsp;&lt;/td&gt;<br>&lt;td style=\"height: 22.3906px;\"&gt;age&lt;/td&gt;<br>&lt;/tr&gt;<br>&lt;tr&gt;<br>&lt;td&gt;BRJHE RE&lt;/td&gt;<br>&lt;td&gt;BRJHE RE&lt;/td&gt;<br>&lt;td&gt;v&lt;/td&gt;<br>&lt;td&gt;M&lt;/td&gt;<br>&lt;td&gt;&amp;nbsp;&lt;/td&gt;<br>&lt;/tr&gt;<br>&lt;tr&gt;<br>&lt;td&gt;BRJHE RE&lt;/td&gt;<br>&lt;td&gt;&amp;nbsp;&lt;/td&gt;<br>&lt;td&gt;BRJHE RE&lt;/td&gt;<br>&lt;td&gt;F&lt;/td&gt;<br>&lt;td&gt;&amp;nbsp;&lt;/td&gt;<br>&lt;/tr&gt;<br>&lt;tr&gt;<br>&lt;td&gt;&amp;nbsp;&lt;/td&gt;<br>&lt;td&gt;&amp;nbsp;&lt;/td&gt;<br>&lt;td&gt;&amp;nbsp;&lt;/td&gt;<br>&lt;td&gt;F&lt;/td&gt;<br>&lt;td&gt;BRJHE REBRJHE RE&lt;/td&gt;<br>&lt;/tr&gt;<br>&lt;tr style=\"height: 34.3906px;\"&gt;<br>&lt;td style=\"height: 34.3906px;\"&gt;BRJHE RE&lt;/td&gt;<br>&lt;td style=\"height: 34.3906px;\"&gt;BRJHE RE&lt;/td&gt;<br>&lt;td style=\"height: 34.3906px;\"&gt;BRJHE RE&lt;/td&gt;<br>&lt;td style=\"height: 34.3906px;\"&gt;BRJHE RE&lt;/td&gt;<br>&lt;td style=\"height: 34.3906px;\"&gt;BRJHE RE&lt;/td&gt;<br>&lt;/tr&gt;<br>&lt;/tbody&gt;<br>&lt;/table&gt;<br>&lt;p&gt;5;CBRJHE REFJKEBR;TRHSEGSE;dd;2345465&lt;br&gt;6;FERJKBERF;GERZHGESV;dd;6457&lt;br&gt;7;A?KJERF;ddd;5GDFdd;dd6432&lt;br&gt;8;NKCSCEZ;JKYK;dd;GD&lt;br&gt;9;MLFNJERFRE;DZERG;dd;dd&lt;br&gt;10;KALEMBU;MASIRIKA;INKSI;098733435&lt;br&gt;11;Ushindi;Ushindi;Ushindi;Ushindi&lt;br&gt;12;papa;papa;papa;papa&lt;br&gt;13;oook;oook;oook;oook&lt;br&gt;14;oook;oook;oook;oook&lt;br&gt;15;DE4eEerf;DE4eEerf;DE4eEerf;DE4eEerf&lt;br&gt;16;dede;dede;dede;dede&lt;br&gt;17;dedeeeeeeeeeee;dedeeeeeeeeeee;dedeeeeeeeeeee;dedeeeeeeeeeee&lt;br&gt;18;Piscine;Piscine;Piscine;Piscine&lt;br&gt;19;ALAIN KEREDI;ALAIN KEREDI;ALAIN KEREDI;ALAIN KEREDI&lt;br&gt;20;olame refie;olame refie;olame refie;olame refie&lt;/p&gt;</p>', '2024-01-27', '14:01:38'),
(9, 19, 28, '<p><span style=\"font-size: 36pt;\"><strong>Mon Commentaire</strong></span></p>', '2024-01-27', '14:01:01'),
(11, 19, 28, '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\"><colgroup><col style=\"width: 50%;\"><col style=\"width: 50%;\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td>vyt</td>\r\n<td>cgh</td>\r\n</tr>\r\n<tr>\r\n<td>vucyt</td>\r\n<td>vuv</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Mon Commentaire</p>', '2024-01-27', '14:01:10'),
(12, 19, 31, '<p>KALMAS freferf ero er</p>\r\n<p>erj v erv</p>\r\n<p>erfler</p>\r\n<p>COCOcecfc</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '2024-01-30', '15:01:18'),
(13, 19, 31, '<p>KALMAS freferf ero er</p>\r\n<p>erj v erv</p>\r\n<p>erfler</p>\r\n<p>COCOcecfc</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '2024-01-30', '15:01:43'),
(14, 18, 31, '<p>KALMAS freferf ero er</p>\r\n<p>erj v erv</p>\r\n<p>erfler</p>\r\n<p>COCOcecfc</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '2024-01-30', '15:01:36'),
(15, 18, 31, '<p>KALMAS freferf ero er</p>\r\n<p>erj v erv</p>\r\n<p>erfler</p>\r\n<p>COCOcecfc</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '2024-01-30', '15:01:48'),
(16, 18, 31, '<p>KALMAS freferf ero er</p>\r\n<p>erj v erv</p>\r\n<p>erfler</p>\r\n<p>COCOcecfc</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '2024-01-30', '16:01:51'),
(17, 18, 28, '<h1>ferferkjef&nbsp; efiherfkje fhq,jvfj v vhjtrvjhfvyujer vbutv vestrnhor&nbsp;<strong>grthybr ytj erhd<span style=\"font-size: 24pt;\">hbrthy ej ytje&nbsp;<span style=\"font-family: \'comic sans ms\', sans-serif;\">nty jyrj ythj tyjn thtyhtyh</span></span></strong></h1>\r\n<p><strong><span style=\"font-size: 24pt;\"><span style=\"font-family: \'comic sans ms\', sans-serif;\">by<span style=\"font-size: 10pt;\">btybdtrn yh ysryh</span></span></span></strong></p>', '2024-01-31', '17:01:59'),
(18, 19, 31, '<p>KALMAS freferf ero er</p>\r\n<p>erj v erv</p>\r\n<p>erfler</p>\r\n<p>COCOcecfc</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '2024-01-31', '17:01:16'),
(19, 19, 31, '<p>vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv</p>', '2024-02-01', '13:02:28'),
(20, 19, 31, 'uyffggggggggggggggggggggggvh', '2024-02-01', '13:02:57');

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

CREATE TABLE `post` (
  `idpost` int(11) NOT NULL,
  `post` text DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL,
  `idtype` int(11) DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `stype` int(11) DEFAULT NULL,
  `date` text DEFAULT NULL,
  `heur` text DEFAULT NULL,
  `titre` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`idpost`, `post`, `iduser`, `idtype`, `photo`, `stype`, `date`, `heur`, `titre`) VALUES
(1, 'jverhyfbue feruhf e', 3, 2, 'imagess_2024-01-20_17-44-04.jpg', 6, '2024-01-20', '13:05:15', 'question'),
(2, 'ezdzde', 5, 3, 'imagess_2024-01-20_17-44-04.jpg', 9, '2024-01-20', '13:05:15', 'question'),
(3, 'dddddddddd ddddddddddddd ddddddddddddddd', 18, 1, 'imagess_2024-01-20_12-24-56.jpg', 1, '2024-01-20', '13:05:15', 'question'),
(4, 'dddddddddd ddddddddddddd ddddddddddddddd vrtgr', 18, 1, 'imagess_2024-01-20_12-26-28.png', 1, '2024-01-20', '13:05:15', 'question'),
(5, 'dddddddddd ddddddddddddd ddddddddddddddd vrtgr', 18, 1, 'imagess_2024-01-20_12-27-32.png', 5, '2024-01-20', '13:05:15', 'question'),
(6, 'dddddddddd ddddddddddddd frefefr', 18, 1, 'imagess_2024-01-20_12-29-39.png', 3, '2024-01-20', '13:05:15', 'question'),
(7, 'dddddddddd ddddddddddddd ddddddddddddddd Web PHP', 18, 1, 'imagess_2024-01-20_12-32-12.png', 5, '2024-01-20', '13:05:15', 'question'),
(8, 'dddddddddd ddddddddddddd ddddddddddddddd', 18, 3, NULL, 12, '2024-01-20', '13:05:15', 'question'),
(9, 'dddddddddd ddddddddddddd ddddddddddddddd', 18, 8, 'imagess_2024-01-20_12-37-14.png', 31, '2024-01-20', '13:05:15', 'question'),
(10, 'de ma part', 18, 2, 'imagess_2024-01-20_12-46-55.jpg', 7, '2024-01-20', '14:01:15', 'question'),
(11, 'dddddddddd ddddddddddddd ddddddddddddddd', 18, 8, 'imagess_2024-01-20_14-04-15.jpg', 31, '2024-01-20', '14:01:15', 'question'),
(12, 'dddddddddd ddddddddddddd dddddddddddddddOOK', 18, 4, 'imagess_2024-01-20_17-44-04.jpg', 14, '2024-01-20', '17:01:49', 'question'),
(13, 'dddddddddd ddddddddddddd dddddddddddddddOOK', 18, 4, 'imagess_2024-01-20_17-44-04.jpg', 14, '2024-01-20', '17:01:04', 'question'),
(14, 'dddddddddd ddddddddddddd dddddddddddddddOOK', 18, 4, 'imagess_2024-01-20_17-45-26.jpg', 14, '2024-01-20', '17:01:26', 'question'),
(15, 'JKjnfer f eriubfeur erh fergf uze g erug reug v erugr tgvhj u r v urtgbres vurg  vhr t', 18, 2, 'imagess_2024-01-26_16-26-52.png', 6, '2024-01-26', '16:01:52', 'question'),
(16, 'JKjnfer f eriubfeur erh fergf uze g erug reug v erugr tgvhj u r v urtgbres vurg  vhr t', 18, 2, 'imagess_2024-01-26_16-27-12.png', 6, '2024-01-26', '16:01:12', 'question'),
(17, 'JKjnfer f eriubfeur erh fergf uze g erug reug v erugr tgvhj u r v urtgbres vurg  vhr t', 18, 2, 'imagess_2024-01-26_16-27-59.png', 6, '2024-01-26', '16:01:59', 'question'),
(18, 'JKjnfer f eriubfeur erh fergf uze g erug reug v erugr tgvhj u r v urtgbres vurg  vhr t', 18, 2, 'imagess_2024-01-26_16-29-17.png', 6, '2024-01-26', '16:01:17', 'question'),
(19, '<p>&nbsp;dddddddddd ddddddd<strong>dddddd dddddddddddddddverg grtgrtg&nbsp;<em> rtgrtrg&nbsp;<span style=\"text-decoration: underline;\">grtgrtgrtgr gtrgr btrhtyhhthtty<span style=\"font-size: 14pt;\">htyh yh&nbsp; &nbsp;ttyj rtj y</span></span></em></strong></p>\r\n<p><strong><em><span style=\"text-decoration: underline;\"><span style=\"font-size: 14pt;\">vrtgt gsd</span></span></em></strong></p>', 18, 3, 'imagess_2024-01-26_16-31-00.png', 10, '2024-01-26', '16:01:00', 'question'),
(20, '<p>&nbsp;dddddddddd ddddddd<strong>dddddd dddddddddddddddverg grtgrtg&nbsp;<em> rtgrtrg&nbsp;<span style=\"text-decoration: underline;\">grtgrtgrtgr gtrgr btrhtyhhthtty<span style=\"font-size: 14pt;\">htyh yh&nbsp; &nbsp;ttyj rtj y</span></span></em></strong></p>\r\n<p><strong><em><span style=\"text-decoration: underline;\"><span style=\"font-size: 14pt;\">vrtgt gsd</span></span></em></strong></p>', 18, 3, 'imagess_2024-01-26_16-31-20.png', 10, '2024-01-26', '16:01:20', 'question'),
(21, '<p><span style=\"font-size: 18pt;\"><strong>dddddddddd ddddddddddddd ddddddddddddddd fre<span style=\"text-decoration: underline;\">ferferg&nbsp; gteg</span></strong></span></p>\r\n<p><span style=\"font-size: 18pt;\"><strong><span style=\"text-decoration: underline;\">byht<s>htyh h hy&nbsp; ythtyh tyh yth&nbsp;&nbsp;</s></span></strong></span></p>\r\n<ol>\r\n<li><span style=\"font-size: 18pt;\"><strong><span style=\"text-decoration: underline;\"><s>rthyhh</s></span></strong></span></li>\r\n<li><span style=\"font-size: 18pt;\"><strong><span style=\"text-decoration: underline;\"><s>htyh</s></span></strong></span></li>\r\n<li><span style=\"font-size: 18pt;\"><strong><span style=\"text-decoration: underline;\"><s>tyh</s></span></strong></span></li>\r\n<li><span style=\"font-size: 18pt;\"><strong><span style=\"text-decoration: underline;\"><s>htyht</s>htyh&nbsp;</span></strong></span></li>\r\n</ol>', 18, 1, 'imagess_2024-01-26_16-33-42.png', 3, '2024-01-26', '16:01:42', 'question'),
(22, '--------------------------------------------------------------------\r\n                  The PHP License, version 3.01\r\nCopyright (c) 1999 - 2022 The PHP Group. All rights reserved.\r\n--------------------------------------------------------------------\r\n\r\nRedistribution and use in source and binary forms, with or without\r\nmodification, is permitted provided that the following conditions\r\nare met:\r\n\r\n  1. Redistributions of source code must retain the above copyright\r\n     notice, this list of conditions and the following disclaimer.\r\n\r\n  2. Redistributions in binary form must reproduce the above copyright\r\n     notice, this list of conditions and the following disclaimer in\r\n     the documentation and/or other materials provided with the\r\n     distribution.\r\n\r\n  3. The name \"PHP\" must not be used to endorse or promote products\r\n     derived from this software without prior written permission. For\r\n     written permission, please contact group@php.net.\r\n\r\n  4. Products derived from this software may not be called \"PHP\", nor\r\n     may \"PHP\" appear in their name, without prior written permission\r\n     from group@php.net.  You may indicate that your software works in\r\n     conjunction with PHP by saying \"Foo for PHP\" instead of calling\r\n     it \"PHP Foo\" or \"phpfoo\"\r\n\r\n  5. The PHP Group may publish revised and/or new versions of the\r\n     license from time to time. Each version will be given a\r\n     distinguishing version number.\r\n     Once covered code has been published under a particular version\r\n     of the license, you may always continue to use it under the terms\r\n     of that version. You may also choose to use such covered code\r\n     under the terms of any subsequent version of the license\r\n     published by the PHP Group. No one other than the PHP Group has\r\n     the right to modify the terms applicable to covered code created\r\n     under this License.\r\n\r\n  6. Redistributions of any form whatsoever must retain the following\r\n     acknowledgment:\r\n     \"This product includes PHP software, freely available from\r\n     <http://www.php.net/software/>\".\r\n\r\nTHIS SOFTWARE IS PROVIDED BY THE PHP DEVELOPMENT TEAM ``AS IS\'\' AND\r\nANY EXPRESSED OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,\r\nTHE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A\r\nPARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE PHP\r\nDEVELOPMENT TEAM OR ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT,\r\nINDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES\r\n(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR\r\nSERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)\r\nHOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,\r\nSTRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)\r\nARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED\r\nOF THE POSSIBILITY OF SUCH DAMAGE.\r\n\r\n--------------------------------------------------------------------\r\n\r\nThis software consists of voluntary contributions made by many\r\nindividuals on behalf of the PHP Group.\r\n\r\nThe PHP Group can be contacted via Email at group@php.net.\r\n\r\nFor more information on the PHP Group and the PHP project,\r\nplease see <http://www.php.net>.\r\n\r\nPHP includes the Zend Engine, freely available at\r\n<http://www.zend.com>.', 18, 1, 'imagess_2024-01-26_16-44-03.jpg', 5, '2024-01-26', '16:01:03', 'question'),
(24, '\r\n	<pre><code>&lt;!DOCTYPE html>\r\n&lt;html>\r\n&lt;head>\r\n	...\r\n	<mark>&lt;link href=\"https://{{cdn}}/prismjs@v1.x/themes/prism.css\" rel=\"stylesheet\" /></mark>\r\n&lt;/head>\r\n&lt;body>\r\n	...\r\n<mark>	&lt;script src=\"https://{{cdn}}/prismjs@v1.x/components/prism-core.min.js\"&gt;&lt;/script&gt;\r\n	&lt;script src=\"https://{{cdn}}/prismjs@v1.x/plugins/autoloader/prism-autoloader.min.js\"&gt;&lt;/script&gt;</mark>\r\n&lt;/body>\r\n&lt;/html></code></pre>\r\n\r\n	<p>Please note that links in the above code sample serve as placeholders. You have to replace them with valid links to the CDN of your choice.</p>\r\n\r\n	<p>CDNs which provide PrismJS are e.g. <a href=\"https://cdnjs.com/libraries/prism\">cdnjs</a>, <a href=\"https://www.jsdelivr.com/package/npm/prismjs\">jsDelivr</a>, and <a href=\"https://unpkg.com/browse/prismjs@1/\">UNPKG</a>.</p>\r\n\r\n	<h2 id=\"basic-usage-bundlers\">Usage with Webpack, Browserify, & Other Bundlers</h2>\r\n\r\n	<p>If you want to use Prism with a bundler, install Prism with <code>npm</code>:</p>\r\n\r\n	<pre><code>$ npm install prismjs</code></pre>\r\n\r\n	<p>You can then <code class=\"language-js\">import</code> into your bundle:</p>\r\n\r\n	<pre><code class=\"language-js\">import Prism from \'prismjs\';</code></pre>\r\n\r\n	<p>To make it easy to configure your Prism instance with only the languages and plugins you need, use the babel plugin,\r\n		<a href=\"https://github.com/mAAdhaTTah/babel-plugin-prismjs\">babel-plugin-prismjs</a>. This will allow you to load\r\n		the minimum number of languages and plugins to satisfy your needs.\r\n		See that plugin\'s documentation for configuration details.</p>\r\n\r\n	<h2 id=\"basic-usage-node\">Usage with Node</h2>\r\n\r\n	<p>If you want to use Prism on the server or through the command line, Prism can be used with Node.js as well.\r\n	This might be useful if you\'re trying to generate static HTML pages with highlighted code for environments that don\'t support browser-side JS, like <a href=\"https://www.ampproject.org/\">AMP pages</a>.</p>\r\n\r\n	<p>Example:</p>\r\n	<pre><code class=\"language-js\">const Prism = require(\'prismjs\');\r\n\r\n// The code snippet you want to highlight, as a string\r\nconst code = `var data = 1;`;\r\n\r\n// Returns a highlighted HTML string\r\nconst html = Prism.highlight(code, Prism.languages.javascript, \'javascript\');</code></pre>\r\n\r\n	<p>Requiring <code>prismjs</code> will load the default languages: <code>markup</code>, <code>css</code>,\r\n		<code>clike</code> and <code>javascript</code>. You can load more languages with the\r\n		<code class=\"language-javascript\">loadLanguages()</code> utility, which will automatically handle any required dependencies.</p>\r\n	<p>Example:</p>\r\n\r\n	<pre><code class=\"language-js\">const Prism = require(\'prismjs\');\r\nconst loadLanguages = require(\'prismjs/components/\');\r\nloadLanguages([\'haml\']);\r\n\r\n// The code snippet you want to highlight, as a string\r\nconst code = `= [\'hi\', \'there\', \'reader!\'].join \" \"`;\r\n\r\n// Returns a highlighted HTML string\r\nconst html = Prism.highlight(code, Prism.languages.haml, \'haml\');</code></pre>\r\n\r\n	<p><strong>Note</strong>: Do <em>not</em> use <code class=\"language-javascript\">loadLanguages()</code> with Webpack or another bundler, as this will cause Webpack to include all languages and plugins. Use the babel plugin described above.</p>\r\n\r\n	<p><strong>Note</strong>: <code class=\"language-javascript\">loadLanguages()</code> will ignore unknown languages and log warning messages to the console. You can prevent the warnings by setting <code class=\"language-javascript\">loadLanguages.silent = true</code>.</p>\r\n', 18, 3, 'imagess_2024-01-26_16-52-28.jpg', 11, '2024-01-26', '16:01:28', 'question'),
(25, '\r\n<section class=\"language-markup\">\r\n	<h1>Supported languages</h1>\r\n	<p>This is the list of all <span id=\"languages-list-count\"></span> languages currently supported by Prism, with\r\n		their corresponding alias, to use in place of <code>xxxx</code> in the <code>language-xxxx</code> (or <code>lang-xxxx</code>) class:</p>\r\n	<div id=\"languages-list\"></div>\r\n	<p>Couldn’t find the language you were looking for? <a href=\"https://github.com/PrismJS/prism/issues\" target=\"_blank\">Request it</a>!</p>\r\n</section>\r\n', 18, 1, NULL, 1, '2024-01-26', '16:01:34', 'question'),
(26, 'Les nom: id;nom;prenom;adresse;contact\r\n1;d;UVIBD;dd;dd\r\n2;FEFRFEF;CSDFRGDT;dd;35646\r\n3;FERFE HBBCER;GDTRH;dd;623564\r\n4;KJCER CREHJVES;ddd;dd;098765\r\n5;CBRJHE REFJKEBR;TRHSEGSE;dd;2345465\r\n6;FERJKBERF;GERZHGESV;dd;6457\r\n7;A?KJERF;ddd;5GDFdd;dd6432\r\n8;NKCSCEZ;JKYK;dd;GD\r\n9;MLFNJERFRE;DZERG;dd;dd\r\n10;KALEMBU;MASIRIKA;INKSI;098733435\r\n11;Ushindi;Ushindi;Ushindi;Ushindi\r\n12;papa;papa;papa;papa\r\n13;oook;oook;oook;oook\r\n14;oook;oook;oook;oook\r\n15;DE4eEerf;DE4eEerf;DE4eEerf;DE4eEerf\r\n16;dede;dede;dede;dede\r\n17;dedeeeeeeeeeee;dedeeeeeeeeeee;dedeeeeeeeeeee;dedeeeeeeeeeee\r\n18;Piscine;Piscine;Piscine;Piscine\r\n19;ALAIN KEREDI;ALAIN KEREDI;ALAIN KEREDI;ALAIN KEREDI\r\n20;olame refie;olame refie;olame refie;olame refie', 19, 1, 'imagess_2024-01-26_17-07-12.png', 3, '2024-01-26', '17:01:12', 'question'),
(27, '<p>id;nom;prenom;adresse;contact</p>\n<p><br>1;d;UVIBD;dd;dd</p>\n<p>2;FEFRFEF;CSDFRGDT;dd;35646</p>\n<p>3;FERFE HBBCER;GDTRH;dd;623564</p>\n<p>4;KJCER CREHJVES;ddd;dd;098765</p>\n<table style=\"border-collapse: collapse; width: 100%; height: 56.7812px;\" border=\"1\"><colgroup><col style=\"width: 20%;\"><col style=\"width: 20%;\"><col style=\"width: 20%;\"><col style=\"width: 20%;\"><col style=\"width: 20%;\"></colgroup>\n<tbody>\n<tr style=\"height: 22.3906px;\">\n<td style=\"height: 22.3906px;\">Nom</td>\n<td style=\"height: 22.3906px;\">post&nbsp;</td>\n<td style=\"height: 22.3906px;\">prenom&nbsp;</td>\n<td style=\"height: 22.3906px;\">Sexe&nbsp;</td>\n<td style=\"height: 22.3906px;\">age</td>\n</tr>\n<tr>\n<td>BRJHE RE</td>\n<td>BRJHE RE</td>\n<td>v</td>\n<td>M</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td>BRJHE RE</td>\n<td>&nbsp;</td>\n<td>BRJHE RE</td>\n<td>F</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>F</td>\n<td>BRJHE REBRJHE RE</td>\n</tr>\n<tr style=\"height: 34.3906px;\">\n<td style=\"height: 34.3906px;\">BRJHE RE</td>\n<td style=\"height: 34.3906px;\">BRJHE RE</td>\n<td style=\"height: 34.3906px;\">BRJHE RE</td>\n<td style=\"height: 34.3906px;\">BRJHE RE</td>\n<td style=\"height: 34.3906px;\">BRJHE RE</td>\n</tr>\n</tbody>\n</table>\n<p>5;CBRJHE REFJKEBR;TRHSEGSE;dd;2345465<br>6;FERJKBERF;GERZHGESV;dd;6457<br>7;A?KJERF;ddd;5GDFdd;dd6432<br>8;NKCSCEZ;JKYK;dd;GD<br>9;MLFNJERFRE;DZERG;dd;dd<br>10;KALEMBU;MASIRIKA;INKSI;098733435<br>11;Ushindi;Ushindi;Ushindi;Ushindi<br>12;papa;papa;papa;papa<br>13;oook;oook;oook;oook<br>14;oook;oook;oook;oook<br>15;DE4eEerf;DE4eEerf;DE4eEerf;DE4eEerf<br>16;dede;dede;dede;dede<br>17;dedeeeeeeeeeee;dedeeeeeeeeeee;dedeeeeeeeeeee;dedeeeeeeeeeee<br>18;Piscine;Piscine;Piscine;Piscine<br>19;ALAIN KEREDI;ALAIN KEREDI;ALAIN KEREDI;ALAIN KEREDI<br>20;olame refie;olame refie;olame refie;olame refie</p>', 19, 5, NULL, 18, '2024-01-26', '17:01:13', 'question'),
(28, '<table style=\"border-collapse: collapse; width: 100%; height: 223.906px; border-width: 1px; border-spacing: 2px; background-color: rgb(206, 212, 217); border-color: rgb(224, 62, 45);\" border=\"1\"><caption>Caption</caption><colgroup><col style=\"width: 33.3333%;\"><col style=\"width: 33.3333%;\"><col style=\"width: 33.3333%;\"></colgroup>\r\n<tbody>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"height: 22.3906px; border-color: rgb(224, 62, 45);\"><em><strong>grtgrge</strong></em></td>\r\n<td style=\"height: 22.3906px; border-color: rgb(224, 62, 45);\">grtg</td>\r\n<td style=\"height: 22.3906px; border-color: rgb(224, 62, 45);\">brt</td>\r\n</tr>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"height: 22.3906px; border-color: rgb(224, 62, 45);\">bgrtg</td>\r\n<td style=\"height: 22.3906px; border-color: rgb(224, 62, 45);\">brt</td>\r\n<td style=\"height: 22.3906px; border-color: rgb(224, 62, 45);\">brtbrt</td>\r\n</tr>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"height: 22.3906px; border-color: rgb(224, 62, 45);\">grtgrge</td>\r\n<td style=\"height: 22.3906px; border-color: rgb(224, 62, 45);\">grtgrge</td>\r\n<td style=\"height: 22.3906px; border-color: rgb(224, 62, 45);\">grtgrge</td>\r\n</tr>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"height: 22.3906px; border-color: rgb(224, 62, 45);\">grtgrge</td>\r\n<td style=\"height: 22.3906px; border-color: rgb(224, 62, 45);\">grtgrge</td>\r\n<td style=\"height: 22.3906px; border-color: rgb(224, 62, 45);\">grtgrge</td>\r\n</tr>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"height: 22.3906px; border-color: rgb(224, 62, 45);\">grtgrge</td>\r\n<td style=\"height: 22.3906px; border-color: rgb(224, 62, 45);\">grtgrge</td>\r\n<td style=\"height: 22.3906px; border-color: rgb(224, 62, 45);\">vgrtgrge</td>\r\n</tr>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"height: 22.3906px; border-color: rgb(224, 62, 45);\">verobi</td>\r\n<td style=\"height: 22.3906px; border-color: rgb(224, 62, 45);\">b ver</td>\r\n<td style=\"height: 22.3906px; border-color: rgb(224, 62, 45);\">&nbsp;vie vv</td>\r\n</tr>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"height: 22.3906px; border-color: rgb(224, 62, 45);\">&nbsp;virt vab&nbsp;&nbsp;</td>\r\n<td style=\"height: 22.3906px; border-color: rgb(224, 62, 45);\">&nbsp;vie bribvr</td>\r\n<td style=\"height: 22.3906px; border-color: rgb(224, 62, 45);\"><span style=\"font-size: 18pt;\">b vritb ivrtg</span></td>\r\n</tr>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"height: 22.3906px; border-color: rgb(224, 62, 45);\">&nbsp;irtbribtu</td>\r\n<td style=\"height: 22.3906px; border-color: rgb(224, 62, 45);\">bvirtgril</td>\r\n<td style=\"height: 22.3906px; border-color: rgb(224, 62, 45);\"><span style=\"font-size: 18pt;\">birtlbg</span></td>\r\n</tr>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"height: 22.3906px; border-color: rgb(224, 62, 45);\">virtbgviru&nbsp;</td>\r\n<td style=\"height: 22.3906px; border-color: rgb(224, 62, 45);\">vbriubibgt rgtbi</td>\r\n<td style=\"height: 22.3906px; border-color: rgb(224, 62, 45);\"><span style=\"font-size: 18pt;\">birIUB</span></td>\r\n</tr>\r\n<tr style=\"height: 22.3906px;\">\r\n<td style=\"height: 22.3906px; border-color: rgb(224, 62, 45);\">bierubgi</td>\r\n<td style=\"height: 22.3906px; border-color: rgb(224, 62, 45);\">biuvrtubig</td>\r\n<td style=\"height: 22.3906px; border-color: rgb(224, 62, 45);\"><span style=\"font-size: 18pt;\">bivrtg</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>dddddddddd ddddddddddddd ddddddddddddddd</p>', 19, 4, NULL, 13, '2024-01-26', '17:01:09', 'question'),
(29, 'dddddddddd ddddddddddddd ddddddddddddddd', 19, 4, 'imagess_2024-01-27_13-24-32.png', 15, '2024-01-27', '13:01:32', 'Kweli'),
(30, '<p><span style=\"font-family: terminal, monaco, monospace;\">Terminal firjgnr fegzi g evrg g zersv&nbsp; ezr vs eryez gv e veur vyuer gtvhj rhez vu sj vktrgvtrkhv rgtv</span></p>\r\n<p>Comment est :</p>\r\n<ol>\r\n<li>DEdefr</li>\r\n</ol>\r\n<ul>\r\n<li>fergerg</li>\r\n</ul>\r\n<p>2.</p>\r\n<p>rtgrtbgr=tb</p>\r\n<p><span style=\"font-family: \'comic sans ms\', sans-serif;\">vrdtbrdtb&ugrave;</span></p>\r\n<p>rdt:b;dr</p>\r\n<p>fergrtbrdt;b^r;b^;str</p>\r\n<p>brtb;pŝ;otrnibvrtiubrit r tb rugtferf</p>\r\n<p><span style=\"font-family: symbol;\">vregrt grthg rhth&nbsp;</span></p>\r\n<p><span style=\"font-family: symbol;\">eribbfyucfvuye rfuh erufyvetfve breyvzfv efvyerfv</span></p>', 19, 2, NULL, 6, '2024-01-27', '13:01:27', 'Prochain'),
(31, '<p><span style=\"font-family: terminal, monaco, monospace;\">Terminal firjgnr fegzi g evrg g zersv&nbsp; ezr vs eryez gv e veur vyuer gtvhj rhez vu sj vktrgvtrkhv rgtv</span></p>\r\n<p>Comment est :</p>\r\n<ol>\r\n<li>DEdefr</li>\r\n</ol>\r\n<ul>\r\n<li>fergerg</li>\r\n</ul>\r\n<p>2.</p>\r\n<p>rtgrtbgr=tb</p>\r\n<p><span style=\"font-family: \'comic sans ms\', sans-serif;\">vrdtbrdtb&ugrave;</span></p>\r\n<p>rdt:b;dr</p>\r\n<p>fergrtbrdt;b^r;b^;str</p>\r\n<p>brtb;pŝ;otrnibvrtiubrit r tb rugtferf</p>\r\n<p><span style=\"font-family: symbol;\">vregrt grthg rhth&nbsp;</span></p>\r\n<p><span style=\"font-family: symbol;\">eribbfyucfvuye rfuh erufyvetfve breyvzfv efvyerfv</span></p>', 19, 2, NULL, 6, '2024-01-27', '13:01:27', 'Prochain');

-- --------------------------------------------------------

--
-- Structure de la table `stype`
--

CREATE TABLE `stype` (
  `id` int(11) NOT NULL,
  `id_type` int(11) DEFAULT NULL,
  `nom_stype` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `stype`
--

INSERT INTO `stype` (`id`, `id_type`, `nom_stype`) VALUES
(1, 1, 'HTML/CSS'),
(3, 1, 'JavaScript'),
(5, 1, 'PHP'),
(6, 2, 'Discussion entreprise'),
(7, 2, 'Communication et marketing'),
(8, 2, 'Entrepreneuriat'),
(9, 3, 'Langage C'),
(10, 3, 'Mobile'),
(11, 3, 'Autres'),
(12, 3, 'Discussion Développement'),
(13, 4, 'Window'),
(14, 4, 'Linux'),
(15, 4, 'Mac Os X'),
(16, 5, 'Graphisme 3D'),
(17, 5, 'Graphisme 2D'),
(18, 5, 'Discussion design'),
(19, 6, 'Discussions Hardware'),
(20, 6, 'Discussions Software '),
(21, 6, 'Problème réseau'),
(22, 7, 'Problème installation'),
(23, 7, 'Problème des matérieles'),
(24, 7, 'Discussion jeux video'),
(25, 8, 'Mathématique'),
(26, 8, 'Physique'),
(27, 8, 'Chimie'),
(28, 8, 'Biologie'),
(29, 8, 'Electronique et électricité'),
(30, 8, 'Autres Sciences'),
(31, 8, 'Chimie');

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `nom_type` text DEFAULT NULL,
  `contenue` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`id`, `nom_type`, `contenue`) VALUES
(1, 'Web', NULL),
(2, 'Entreprise', NULL),
(3, 'Programmation', NULL),
(4, 'Systeme d\'exploitation', NULL),
(5, 'Design', NULL),
(6, 'Matériel et logiciels', NULL),
(7, 'Jeux Vidéos', NULL),
(8, 'Sciences', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nom` text DEFAULT NULL,
  `prenom` text DEFAULT NULL,
  `sexe` text DEFAULT NULL,
  `daten` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `contact` text DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `mdp` text DEFAULT NULL,
  `etat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `nom`, `prenom`, `sexe`, `daten`, `email`, `contact`, `photo`, `mdp`, `etat`) VALUES
(3, 'bvei ezBHJ', 'Chiuyu', 'Feminin', '2003-01-01', NULL, NULL, NULL, NULL, 1),
(4, 'HVG BJU', 'Chiuyu', 'Masculin', '2003-01-01', NULL, NULL, NULL, NULL, 1),
(5, 'FERF FREHJ', 'Chiuyu', 'Masculin', '2003-01-12', NULL, NULL, NULL, NULL, 1),
(7, 'DZEDZD DZEBDUEZ', 'Chiuyu', 'Feminin', '2003-01-01', 'coco@gmail.com', NULL, NULL, NULL, 1),
(18, 'cerarf', 'gvgh', 'Masculin', '2008-01-01', 'elcoddnstant73@gmail.com', NULL, NULL, 'ZZZZ', 1),
(19, 'Kalembu Masirika', 'Constantin', 'Masculin', '2008-01-01', 'elconstant73@gmail.com', NULL, NULL, '1111', 1),
(20, 'Kalembu Masirika', 'ergttrgtg', 'Feminin', '2008-01-01', 'coeco@gmail.com', NULL, NULL, 'OOOOOOOO0@', 1),
(21, 'Kalembu Masirika', 'ergttrgtg', 'Feminin', '2008-01-01', 'coeco@gmail.com', NULL, NULL, 'IIIIIII0@', 1),
(22, 'Kalembu Masirika', 'ergttrgtg', 'Feminin', '2008-01-01', 'coeco@gmail.com', NULL, NULL, 'IIIIIII0@', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iduser` (`iduser`,`idpost`),
  ADD KEY `reference_post` (`idpost`);

--
-- Index pour la table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`idpost`),
  ADD KEY `iduser` (`iduser`,`idtype`,`stype`);

--
-- Index pour la table `stype`
--
ALTER TABLE `stype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type` (`id_type`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `post`
--
ALTER TABLE `post`
  MODIFY `idpost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `stype`
--
ALTER TABLE `stype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `commentaire_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reference_post` FOREIGN KEY (`idpost`) REFERENCES `post` (`idpost`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `stype`
--
ALTER TABLE `stype`
  ADD CONSTRAINT `stype_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

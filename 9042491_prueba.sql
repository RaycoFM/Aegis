-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: PMYSQL155.dns-servicio.com:3306
-- Tiempo de generación: 17-11-2021 a las 12:53:10
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `9042491_prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `card`
--

CREATE TABLE `card` (
  `id` int(11) NOT NULL,
  `idjugador` varchar(200) NOT NULL,
  `heroname` varchar(200) NOT NULL,
  `artefacto` varchar(200) DEFAULT NULL,
  `artefactovalue` varchar(200) DEFAULT NULL,
  `ascension` varchar(200) NOT NULL,
  `star` varchar(200) NOT NULL,
  `clase` varchar(200) NOT NULL,
  `faction` varchar(200) NOT NULL,
  `engravings` varchar(200) NOT NULL,
  `fi` varchar(200) NOT NULL,
  `si` varchar(200) NOT NULL,
  `head` varchar(200) NOT NULL,
  `body` varchar(200) NOT NULL,
  `boots` varchar(200) NOT NULL,
  `weapon` varchar(200) NOT NULL,
  `roll` varchar(200) NOT NULL,
  `attribute` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `card`
--

INSERT INTO `card` (`id`, `idjugador`, `heroname`, `artefacto`, `artefactovalue`, `ascension`, `star`, `clase`, `faction`, `engravings`, `fi`, `si`, `head`, `body`, `boots`, `weapon`, `roll`, `attribute`) VALUES
(284, '32607873', 'Lucrecia', '5', 'Verdant_Longbow', 'Ascended', 'D1', 'Ranger', 'Hypogean', '80', '9', '35', 'head_M3', 'body_M3', 'boots_M3', 'weapon_M3', 'Assassin', 'Agility'),
(285, '32607873', 'Gwyneth', '5', 'Verdant_Longbow', 'Ascended', 'A5', 'Ranger', 'Lightbearer', '0', '9', '20', 'head_M3', 'body_M3', 'boots_M3', 'weapon_M3', 'Continuous_Damage', 'Strength'),
(286, '32607873', 'Lucius', '5', 'Dura\'s Call', 'Ascended', 'A5', 'Tank', 'Lightbearer', '0', '9', '20', 'head_M3', 'body_M3', 'boots_M3', 'weapon_M3', 'Regen', 'Strength'),
(287, '32607873', 'Belinda', '3', 'Windbinder', 'Ascended', 'A5', 'Mage', 'Lightbearer', '0', '9', '30', 'head_M2', 'body_M2', 'boots_M2', 'weapon_M2', 'AoE', 'Intelligence'),
(288, '32607873', 'Cecilia', '5', 'Verdant_Longbow', 'Ascended', 'A5', 'Ranger', 'Lightbearer', '0', '0', '20', 'head_M2', 'body_M2', 'boots_M2', 'weapon_M2', 'Assassin', 'Agility'),
(289, '32607873', 'Hendrik', '3', 'The_Barricade', 'Ascended', 'A5', 'Tank', 'Lightbearer', '0', '9', '20', 'head_M2', 'body_M2', 'boots_M2', 'weapon_M2', 'Tank', 'Strength'),
(290, '32607873', 'Rosaline', '5', 'Dura\'s Blade', 'Ascended', 'A5', 'Support', 'Lightbearer', '0', '1', '20', 'head_M2', 'body_M2', 'boots_M2', 'weapon_M2', 'Buffer', 'Intelligence'),
(291, '32607873', 'Rowan', '5', 'Dura\'s Call', 'Ascended', 'A4', 'Support', 'Lightbearer', '0', '4', '30', 'head_M2', 'body_M2', 'boots_M3', 'weapon_M3', 'Buffer', 'Intelligence'),
(292, '32607873', 'Estrilda', '4', 'Carnage', 'Ascended', 'A3', 'Warrior', 'Lightbearer', '0', '3', '20', 'head_M', 'body_M2', 'boots_M2', 'weapon_M2', 'Burst_Damage', 'Strength'),
(293, '32607873', 'Fawkes', '5', 'Dura\'s Eye', 'Ascended', 'A2', 'Ranger', 'Lightbearer', '0', '0', '10', 'head_M', 'body_M', 'boots_M2', 'weapon_M2', 'Control', 'Agility'),
(294, '32607873', 'Raine', '3', 'Tidebearer', 'Ascended', 'A1', 'Support', 'Lightbearer', '0', '3', '20', 'head_M', 'body_M2', 'boots_M1', 'weapon_M1', 'Buffer', 'Agility'),
(295, '32607873', 'Oscar', '5', 'Dura\'s Conviction', 'Ascended', 'A1', 'Ranger', 'Lightbearer', '0', '0', '20', 'Vacio', 'Vacio', 'boots_M', 'weapon_M', 'Assassin', 'Agility'),
(296, '32607873', 'Thane', '5', 'Dura\'s Eye', 'Ascended', 'A2', 'Ranger', 'Lightbearer', '0', '0', '10', 'head_M', 'Vacio', 'boots_M', 'weapon_M', 'Assassin', 'Agility'),
(297, '32607873', 'Peggy', '4', 'The_Oceanic_Strings', 'Mythic+', 'A0', 'Support', 'Lightbearer', '0', '0', '10', 'head_M', 'body_M', 'Vacio', 'weapon_M', 'Regen', 'Intelligence'),
(298, '32607873', 'Eluard', '5', 'Dura\'s Blade', 'Mythic+', 'A0', 'Mage', 'Lightbearer', '0', '0', '10', 'Vacio', 'body_M1', 'boots_M', 'weapon_M', 'AoE', 'Intelligence'),
(299, '32607873', 'Rigby', '5', 'Dura\'s Grace', 'Elite', 'A0', 'Warrior', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(300, '32607873', 'Walker', '5', 'Dura\'s Eye', 'Elite', 'A0', 'Warrior', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Strength'),
(301, '32607873', 'Morrow', '5', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Lightbearer', '11', '12', '8', 'head_M3', 'body_M3', 'boots_M3', 'weapon_M3', 'Control', 'Intelligence'),
(302, '32607873', 'Brutus', '3', 'The_Barricade', 'Ascended', 'A5', 'Tank', 'Mauler', '0', '0', '10', 'head_M2', 'body_M2', 'boots_M2', 'weapon_M', 'Tank', 'Strength'),
(303, '32607873', 'Antandra', '4', 'Chaos_Bringer', 'Ascended', 'A3', 'Warrior', 'Mauler', '0', '9', '30', 'head_M2', 'body_M2', 'boots_M2', 'weapon_M2', 'Continuous_Damage', 'Agility'),
(304, '32607873', 'Warek', '4', 'Chaos_Bringer', 'Ascended', 'A3', 'Warrior', 'Mauler', '0', '0', '22', 'Vacio', 'body_M2', 'boots_M1', 'weapon_M', 'Continuous_Damage', 'Strength'),
(305, '32607873', 'Drez', '4', 'Shroud_of_Verdure', 'Ascended', 'A2', 'Ranger', 'Mauler', '0', '3', '20', 'head_M2', 'body_M2', 'boots_M2', 'weapon_M2', 'Burst_Damage', 'Agility'),
(306, '32607873', 'Skriath', '0', 'Dura\'s Blade', 'Ascended', 'A1', 'Mage', 'Mauler', '0', '3', '10', 'head_M', 'body_M', 'boots_M', 'weapon_M', 'AoE', 'Intelligence'),
(307, '32607873', 'Satrana', '0', 'Dura\'s Blade', 'Ascended', 'A0', 'Mage', 'Mauler', '0', '0', '11', 'Vacio', 'body_M', 'boots_M', 'weapon_M', 'Burst_Damage', 'Intelligence'),
(308, '32607873', 'Safiya', '5', 'Dura\'s Conviction', 'Mythic+', 'A0', 'Mage', 'Mauler', '0', '0', '10', 'head_M', 'body_M', 'boots_M', 'weapon_M2', 'AoE', 'Intelligence'),
(309, '32607873', 'Tidus', '5', 'Dura\'s Eye', 'Mythic+', 'A0', 'Ranger', 'Mauler', '0', '0', '10', 'head_M2', 'body_M', 'boots_M', 'weapon_M', 'Continuous_Damage', 'Agility'),
(310, '32607873', 'Thali', '5', 'Dura\'s Blade', 'Mythic+', 'A0', 'Mage', 'Mauler', '0', '0', '10', 'Vacio', 'body_M', 'Vacio', 'weapon_M', 'Continuous_Damage', 'Intelligence'),
(311, '32607873', 'Khasos', '4', 'Carnage', 'Legendary+', 'A0', 'Warrior', 'Mauler', '0', '0', '0', 'Vacio', 'body_M', 'boots_M', 'weapon_M', 'Continuous_Damage', 'Strength'),
(312, '32607873', 'Vurk', '5', 'Dura\'s Eye', 'Legendary+', 'A0', 'Ranger', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'weapon_M', 'AoE', 'Agility'),
(313, '32607873', 'Kren', '0', 'Dura\'s Blade', 'Elite+', 'A0', 'Ranger', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'boots_M', 'weapon_M', 'Continuous_Damage', 'Agility'),
(314, '32607873', 'Numisu', '4', 'The_Oceanic_Strings', 'Elite+', 'A0', 'Support', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Regen', 'Intelligence'),
(315, '32607873', 'Anoki', '5', 'Dura\'s Grace', 'Elite+', 'A0', 'Tank', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Strength'),
(316, '32607873', 'Skreg', '5', 'Dura\'s Grace', 'Legendary+', 'A0', 'Tank', 'Mauler', '0', '0', '0', 'Vacio', 'body_M', 'Vacio', 'weapon_M', 'Tank', 'Strength'),
(317, '32607873', 'Lyca', '4', 'Shroud_of_Verdure', 'Ascended', 'A5', 'Ranger', 'Wilder', '0', '9', '30', 'head_M3', 'body_M3', 'boots_M3', 'weapon_M3', 'Buffer', 'Agility'),
(318, '32607873', 'Eironn', '4', 'Shroud_of_Verdure', 'Ascended', 'N5', 'Ranger', 'Wilder', '30', '9', '30', 'head_M3', 'body_M3', 'boots_M3', 'weapon_M3', 'AoE', 'Agility'),
(319, '32607873', 'Nemora', '4', 'The_Oceanic_Strings', 'Ascended', 'A5', 'Support', 'Wilder', '0', '1', '10', 'head_M1', 'body_M2', 'boots_M1', 'weapon_M2', 'Regen', 'Intelligence'),
(320, '32607873', 'Pippa', '5', 'Dura\'s Call', 'Ascended', 'A4', 'Mage', 'Wilder', '0', '3', '20', 'head_M1', 'body_M1', 'boots_M1', 'weapon_M', 'Continuous_Damage', 'Intelligence'),
(321, '32607873', 'Tasi', '3', 'Tidebearer', 'Ascended', 'A3', 'Support', 'Wilder', '0', '9', '16', 'head_M3', 'body_M3', 'boots_M3', 'weapon_M3', 'Control', 'Intelligence'),
(322, '32607873', 'Saurus', '4', 'Chaos_Bringer', 'Ascended', 'A3', 'Warrior', 'Wilder', '0', '3', '30', 'head_M2', 'body_M2', 'boots_M2', 'weapon_M2', 'Continuous_Damage', 'Strength'),
(323, '32607873', 'Solise', '3', 'Warden_of_the_Arcane', 'Ascended', 'A3', 'Mage', 'Wilder', '0', '0', '10', 'head_M', 'body_M', 'boots_M', 'weapon_M', 'Control', 'Intelligence'),
(324, '32607873', 'Gorvo', '3', 'The_Barricade', 'Ascended', 'A2', 'Tank', 'Wilder', '0', '3', '20', 'Vacio', 'Vacio', 'Vacio', 'weapon_M', 'Tank', 'Strength'),
(325, '32607873', 'Kaz', '5', 'Dura\'s Eye', 'Ascended', 'A3', 'Ranger', 'Wilder', '0', '0', '10', 'Vacio', 'body_M', 'boots_M', 'weapon_M1', 'Assassin', 'Agility'),
(326, '32607873', 'Raku', '5', 'Verdant_Longbow', 'Ascended', 'N1', 'Ranger', 'Wilder', '30', '3', '30', 'head_M3', 'body_M3', 'boots_M3', 'weapon_M3', 'Burst_Damage', 'Agility'),
(327, '32607873', 'Respen', '5', 'Verdant_Longbow', 'Ascended', 'A2', 'Ranger', 'Wilder', '0', '0', '10', 'Vacio', 'Vacio', 'boots_M', 'weapon_M', 'Burst_Damage', 'Agility'),
(328, '32607873', 'Lorsan', '5', 'Dura\'s Call', 'Ascended', 'A1', 'Mage', 'Wilder', '0', '0', '10', 'head_M', 'body_M', 'boots_M', 'Vacio', 'AoE', 'Intelligence'),
(329, '32607873', 'Ulmus', '5', 'Dura\'s Grace', 'Elite', 'A0', 'Tank', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'boots_M', 'Vacio', 'Tank', 'Strength'),
(330, '32607873', 'Seirus', '5', 'Dura\'s Grace', 'Elite', 'A0', 'Warrior', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(331, '32607873', 'Shemira', '3', 'Warden_of_the_Arcane', 'Ascended', 'A5', 'Mage', 'Graveborn', '0', '5', '30', 'head_M2', 'body_M2', 'boots_M2', 'weapon_M2', 'AoE', 'Intelligence'),
(332, '32607873', 'Thoran', '5', 'Dura\'s Call', 'Ascended', 'A4', 'Tank', 'Graveborn', '0', '3', '30', 'head_M2', 'body_M2', 'boots_M2', 'weapon_M2', 'Tank', 'Strength'),
(333, '32607873', 'Grezhul', '5', 'Dura\'s Eye', 'Ascended', 'N5', 'Tank', 'Graveborn', '30', '9', '30', 'head_M3', 'body_M3', 'boots_M3', 'weapon_M3', 'Tank', 'Strength'),
(334, '32607873', 'Izold', '4', 'Chaos_Bringer', 'Ascended', 'A3', 'Warrior', 'Graveborn', '0', '4', '20', 'head_M', 'body_M', 'boots_M', 'weapon_M', 'Tank', 'Strength'),
(335, '32607873', 'Ferael', '5', 'Verdant_Longbow', 'Ascended', 'A3', 'Ranger', 'Graveborn', '0', '7', '20', 'head_M2', 'body_M2', 'boots_M2', 'weapon_M2', 'Continuous_Damage', 'Agility'),
(336, '32607873', 'Desira', '4', 'The_Oceanic_Strings', 'Ascended', 'A4', 'Support', 'Graveborn', '0', '1', '10', 'head_M2', 'body_M2', 'boots_M2', 'weapon_M', 'Regen', 'Intelligence'),
(337, '32607873', 'Daimon', '5', 'Dura\'s Grace', 'Ascended', 'A1', 'Tank', 'Graveborn', '0', '3', '20', 'head_M3', 'body_M3', 'boots_M3', 'weapon_M3', 'Tank', 'Strength'),
(338, '32607873', 'Kelthur', '5', 'Dura\'s Call', 'Ascended', 'A1', 'Ranger', 'Graveborn', '0', '0', '10', 'head_M', 'body_M1', 'boots_M', 'weapon_M2', 'Assassin', 'Agility'),
(339, '32607873', 'Silas', '5', 'Dura\'s Blade', 'Ascended', 'A0', 'Support', 'Graveborn', '0', '4', '30', 'head_M3', 'body_M3', 'boots_M3', 'weapon_M3', 'Buffer', 'Intelligence'),
(340, '32607873', 'Isabella', '3', 'Windbinder', 'Ascended', 'A0', 'Mage', 'Graveborn', '0', '0', '10', 'head_M', 'body_M', 'boots_M', 'weapon_M', 'Continuous_Damage', 'Intelligence'),
(341, '32607873', 'Oden', '3', 'Warden_of_the_Arcane', 'Ascended', 'A0', 'Mage', 'Graveborn', '0', '0', '20', 'head_M1', 'Vacio', 'boots_M', 'weapon_M2', 'AoE', 'Intelligence'),
(342, '32607873', 'Theowyn', '5', 'Verdant_Longbow', 'Ascended', 'A0', 'Ranger', 'Graveborn', '0', '0', '10', 'head_M1', 'body_M', 'boots_M2', 'weapon_M', 'Continuous_Damage', 'Agility'),
(343, '32607873', 'Nara', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Assassin', 'Strength'),
(344, '32607873', 'Hodgkin', '5', 'Dura\'s Grace', 'Mythic+', 'A0', 'Tank', 'Graveborn', '0', '0', '10', 'Vacio', 'body_M', 'boots_M', 'weapon_M', 'Tank', 'Strength'),
(345, '32607873', 'Torne', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(346, '32607873', 'Baden', '0', 'Dura\'s Blade', 'Elite', 'A0', 'Warrior', 'Graveborn', '0', '0', '0', 'head_M', 'body_M', 'boots_M', 'weapon_M', 'Continuous_Damage', 'Agility'),
(347, '32607873', 'Athalia', '5', 'Verdant_Longbow', 'Ascended', 'N2', 'Ranger', 'Celestial', '30', '9', '21', 'head_M2', 'body_M2', 'boots_M2', 'weapon_M3', 'Assassin', 'Agility'),
(348, '32607873', 'Elijah & Lailah\'s', '5', 'Dura\'s Call', 'Ascended', 'R1', 'Support', 'Celestial', '60', '3', '30', 'head_M3', 'body_M3', 'boots_M3', 'weapon_M3', 'Buffer', 'Intelligence'),
(349, '32607873', 'Talene', '4', 'The_Oceanic_Strings', 'Ascended', 'A1', 'Ranger', 'Celestial', '0', '4', '20', 'head_M3', 'body_M3', 'boots_M3', 'weapon_M3', 'Continuous_Damage', 'Agility'),
(350, '32607873', 'Flora', '5', 'Dura\'s Eye', 'Ascended', 'A0', 'Mage', 'Celestial', '0', '0', '10', 'head_M1', 'body_M', 'boots_M', 'Vacio', 'Continuous_Damage', 'Intelligence'),
(351, '32607873', 'Wu Kong', '4', 'Chaos_Bringer', 'Mythic+', 'A0', 'Warrior', 'Celestial', '0', '0', '10', 'head_M', 'body_M', 'boots_M', 'weapon_M1', 'Continuous_Damage', 'Strength'),
(352, '32607873', 'Orthros', '5', 'Dura\'s Grace', 'Elite+', 'A0', 'Tank', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'boots_M', 'weapon_M', 'Tank', 'Strength'),
(353, '32607873', 'Alna', '4', 'Chaos_Bringer', 'Legendary', 'A0', 'Warrior', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'boots_M1', 'weapon_M', 'Debuffer', 'Agility'),
(354, '32607873', 'Zaphrael', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Intelligence'),
(355, '32607873', 'Morael', '0', 'Dura\'s Blade', 'Elite', 'A0', 'Mage', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Intelligence'),
(356, '32607873', 'Titus', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(357, '32607873', 'Ezizh', '3', 'Tidebearer', 'Ascended', 'A0', 'Support', 'Hypogean', '0', '2', '20', 'head_M2', 'body_M2', 'boots_M2', 'weapon_M2', 'Debuffer', 'Strength'),
(358, '32607873', 'Mortas', '4', 'The_Oceanic_Strings', 'Elite+', 'A0', 'Support', 'Hypogean', '0', '0', '0', 'Vacio', 'body_M', 'boots_M', 'weapon_M2', 'Regen', 'Intelligence'),
(359, '32607873', 'Mehira', '5', 'Dura\'s Blade', 'Legendary', 'A0', 'Mage', 'Hypogean', '0', '0', '0', 'head_M', 'body_M', 'boots_M', 'weapon_M', 'Control', 'Intelligence'),
(360, '32607873', 'Mezoth', '5', 'Dura\'s Grace', 'Elite+', 'A0', 'Tank', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'boots_M', 'weapon_M', 'Tank', 'Strength'),
(361, '32607873', 'Zolrath', '5', 'Dura\'s Blade', 'Elite', 'A0', 'Warrior', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'weapon_M', 'Assassin', 'Agility'),
(362, '32607873', 'Khazard', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Intelligence'),
(363, '32607873', 'Leofric', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Debuffer', 'Intelligence'),
(364, '32607873', 'Zikis', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(365, '32607873', 'Nakoruru', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Burst_Damage', 'Agility'),
(366, '32607873', 'Arthur', '3', 'The_Barricade', 'Ascended', 'A5', 'Tank', 'Dimensional', '0', '3', '23', 'Vacio', 'Vacio', 'Vacio', 'weapon_M', 'Tank', 'Strength'),
(367, '32607873', 'Ukyo', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(368, '32607873', 'Ezio', '4', 'Shroud_of_Verdure', 'Ascended', 'A5', 'Ranger', 'Dimensional', '0', '0', '20', 'Vacio', 'Vacio', 'boots_M', 'Vacio', 'Assassin', 'Agility'),
(369, '32607873', 'Prince of Persia', '5', 'Dura\'s Blade', 'Ascended', 'A5', 'Ranger', 'Dimensional', '0', '0', '10', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Burst_Damage', 'Agility'),
(370, '32607873', 'Albedo', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(371, '32607873', 'Ainz Ooal Gown', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Intelligence'),
(372, '32607873', 'Queen', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Strength'),
(373, '32607873', 'Joker', '4', 'Shroud_of_Verdure', 'Ascended', 'A5', 'Ranger', 'Dimensional', '0', '3', '20', 'head_M', 'body_M', 'boots_M', 'weapon_M', 'Continuous_Damage', 'Agility'),
(374, '32607873', 'Merlin', '4', 'The_Oceanic_Strings', 'Ascended', 'N5', 'Support', 'Dimensional', '30', '6', '30', 'head_M3', 'body_M3', 'boots_M3', 'weapon_M3', 'Regen', 'Intelligence'),
(375, '32607873', 'Granit', '5', 'Dura\'s Grace', 'Elite+', 'A0', 'Tank', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(376, '32607873', 'Leonardo Da Vinci', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Intelligence'),
(377, '32607873', 'Mishka', '5', 'Dura\'s Call', 'Ascended', 'A0', 'Tank', 'Wilder', '0', '4', '20', 'head_M2', 'body_M2', 'boots_M2', 'weapon_M2', 'Control', 'Strength'),
(664, '1', 'Haelus', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Buffer', 'Intelligence'),
(665, '32607873', 'Haelus', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Buffer', 'Intelligence'),
(666, '9014921', 'Haelus', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Buffer', 'Intelligence'),
(667, '22163829', 'Haelus', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Buffer', 'Intelligence'),
(668, '', 'Lucrecia', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Assassin', 'Agility'),
(669, '', 'Gwyneth', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Strength'),
(670, '', 'Lucius', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Regen', 'Strength'),
(671, '', 'Belinda', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'AoE', 'Intelligence'),
(672, '', 'Cecilia', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Assassin', 'Agility'),
(673, '', 'Hendrik', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(674, '', 'Rosaline', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Buffer', 'Intelligence'),
(675, '', 'Rowan', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Buffer', 'Intelligence'),
(676, '', 'Estrilda', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Burst_Damage', 'Strength'),
(677, '', 'Fawkes', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Agility'),
(678, '', 'Raine', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Buffer', 'Agility'),
(679, '', 'Oscar', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Assassin', 'Agility'),
(680, '', 'Thane', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Assassin', 'Agility'),
(681, '', 'Peggy', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Regen', 'Intelligence'),
(682, '', 'Eluard', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'AoE', 'Intelligence'),
(683, '', 'Rigby', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(684, '', 'Walker', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Strength'),
(685, '', 'Morrow', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Intelligence'),
(686, '', 'Brutus', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(687, '', 'Antandra', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(688, '', 'Warek', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Strength'),
(689, '', 'Drez', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Burst_Damage', 'Agility'),
(690, '', 'Skriath', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'AoE', 'Intelligence'),
(691, '', 'Satrana', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Burst_Damage', 'Intelligence'),
(692, '', 'Safiya', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'AoE', 'Intelligence'),
(693, '', 'Tidus', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(694, '', 'Thali', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Intelligence'),
(695, '', 'Khasos', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Strength'),
(696, '', 'Vurk', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'AoE', 'Agility'),
(697, '', 'Kren', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(698, '', 'Numisu', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Regen', 'Intelligence'),
(699, '', 'Anoki', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Strength'),
(700, '', 'Skreg', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(701, '', 'Lyca', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Buffer', 'Agility'),
(702, '', 'Eironn', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'AoE', 'Agility'),
(703, '', 'Nemora', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Regen', 'Intelligence'),
(704, '', 'Pippa', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Intelligence'),
(705, '', 'Tasi', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Intelligence'),
(706, '', 'Saurus', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Strength'),
(707, '', 'Solise', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Intelligence'),
(708, '', 'Gorvo', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(709, '', 'Kaz', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Assassin', 'Agility'),
(710, '', 'Raku', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Burst_Damage', 'Agility'),
(711, '', 'Respen', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Burst_Damage', 'Agility'),
(712, '', 'Lorsan', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'AoE', 'Intelligence'),
(713, '', 'Ulmus', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(714, '', 'Seirus', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(715, '', 'Shemira', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'AoE', 'Intelligence'),
(716, '', 'Thoran', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(717, '', 'Grezhul', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(718, '', 'Izold', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(719, '', 'Ferael', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(720, '', 'Desira', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Regen', 'Intelligence'),
(721, '', 'Daimon', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(722, '', 'Kelthur', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Assassin', 'Agility'),
(723, '', 'Silas', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Buffer', 'Intelligence'),
(724, '', 'Isabella', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Intelligence'),
(725, '', 'Oden', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'AoE', 'Intelligence'),
(726, '', 'Theowyn', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(727, '', 'Nara', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Assassin', 'Strength'),
(728, '', 'Hodgkin', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(729, '', 'Torne', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(730, '', 'Baden', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(731, '', 'Athalia', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Assassin', 'Agility'),
(732, '', 'Elijah & Lailah\'s', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Buffer', 'Intelligence'),
(733, '', 'Talene', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(734, '', 'Flora', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Intelligence'),
(735, '', 'Wu Kong', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Strength'),
(736, '', 'Orthros', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(737, '', 'Alna', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Debuffer', 'Agility'),
(738, '', 'Zaphrael', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Intelligence'),
(739, '', 'Morael', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Intelligence'),
(740, '', 'Titus', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(741, '', 'Ezizh', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Debuffer', 'Strength'),
(742, '', 'Mortas', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Regen', 'Intelligence'),
(743, '', 'Mehira', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Intelligence'),
(744, '', 'Mezoth', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(745, '', 'Zolrath', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Assassin', 'Agility'),
(746, '', 'Khazard', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Intelligence'),
(747, '', 'Leofric', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Debuffer', 'Intelligence'),
(748, '', 'Zikis', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(749, '', 'Nakoruru', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Burst_Damage', 'Agility'),
(750, '', 'Arthur', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(751, '', 'Ukyo', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(752, '', 'Ezio', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Assassin', 'Agility'),
(753, '', 'Prince of Persia', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Burst_Damage', 'Agility'),
(754, '', 'Albedo', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(755, '', 'Ainz Ooal Gown', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Intelligence'),
(756, '', 'Queen', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Strength'),
(757, '', 'Joker', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(758, '', 'Merlin', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Regen', 'Intelligence'),
(759, '', 'Granit', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(760, '', 'Leonardo Da Vinci', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Intelligence'),
(761, '', 'Mishka', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Strength'),
(762, '', 'Haelus', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Buffer', 'Intelligence'),
(763, '9014921', 'Lucrecia', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Assassin', 'Agility'),
(764, '9014921', 'Gwyneth', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Strength'),
(765, '9014921', 'Lucius', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Regen', 'Strength'),
(766, '9014921', 'Belinda', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'AoE', 'Intelligence'),
(767, '9014921', 'Cecilia', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Assassin', 'Agility'),
(768, '9014921', 'Hendrik', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(769, '9014921', 'Rosaline', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Buffer', 'Intelligence'),
(770, '9014921', 'Rowan', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Buffer', 'Intelligence'),
(771, '9014921', 'Estrilda', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Burst_Damage', 'Strength'),
(772, '9014921', 'Fawkes', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Agility'),
(773, '9014921', 'Raine', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Buffer', 'Agility'),
(774, '9014921', 'Oscar', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Assassin', 'Agility'),
(775, '9014921', 'Thane', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Assassin', 'Agility'),
(776, '9014921', 'Peggy', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Regen', 'Intelligence'),
(777, '9014921', 'Eluard', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'AoE', 'Intelligence'),
(778, '9014921', 'Rigby', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(779, '9014921', 'Walker', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Strength'),
(780, '9014921', 'Morrow', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Intelligence'),
(781, '9014921', 'Brutus', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(782, '9014921', 'Antandra', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(783, '9014921', 'Warek', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Strength'),
(784, '9014921', 'Drez', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Burst_Damage', 'Agility'),
(785, '9014921', 'Skriath', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'AoE', 'Intelligence'),
(786, '9014921', 'Satrana', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Burst_Damage', 'Intelligence'),
(787, '9014921', 'Safiya', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'AoE', 'Intelligence'),
(788, '9014921', 'Tidus', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(789, '9014921', 'Thali', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Intelligence'),
(790, '9014921', 'Khasos', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Strength'),
(791, '9014921', 'Vurk', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'AoE', 'Agility'),
(792, '9014921', 'Kren', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(793, '9014921', 'Numisu', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Regen', 'Intelligence'),
(794, '9014921', 'Anoki', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Strength'),
(795, '9014921', 'Skreg', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(796, '9014921', 'Lyca', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Buffer', 'Agility'),
(797, '9014921', 'Eironn', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'AoE', 'Agility'),
(798, '9014921', 'Nemora', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Regen', 'Intelligence'),
(799, '9014921', 'Pippa', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Intelligence'),
(800, '9014921', 'Tasi', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Intelligence'),
(801, '9014921', 'Saurus', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Strength'),
(802, '9014921', 'Solise', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Intelligence'),
(803, '9014921', 'Gorvo', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(804, '9014921', 'Kaz', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Assassin', 'Agility'),
(805, '9014921', 'Raku', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Burst_Damage', 'Agility'),
(806, '9014921', 'Respen', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Burst_Damage', 'Agility'),
(807, '9014921', 'Lorsan', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'AoE', 'Intelligence'),
(808, '9014921', 'Ulmus', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(809, '9014921', 'Seirus', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(810, '9014921', 'Shemira', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'AoE', 'Intelligence'),
(811, '9014921', 'Thoran', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(812, '9014921', 'Grezhul', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(813, '9014921', 'Izold', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(814, '9014921', 'Ferael', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(815, '9014921', 'Desira', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Regen', 'Intelligence'),
(816, '9014921', 'Daimon', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(817, '9014921', 'Kelthur', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Assassin', 'Agility'),
(818, '9014921', 'Silas', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Buffer', 'Intelligence'),
(819, '9014921', 'Isabella', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Intelligence'),
(820, '9014921', 'Oden', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'AoE', 'Intelligence'),
(821, '9014921', 'Theowyn', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(822, '9014921', 'Nara', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Assassin', 'Strength'),
(823, '9014921', 'Hodgkin', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(824, '9014921', 'Torne', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(825, '9014921', 'Baden', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(826, '9014921', 'Athalia', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Assassin', 'Agility'),
(827, '9014921', 'Elijah & Lailah\'s', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Buffer', 'Intelligence'),
(828, '9014921', 'Talene', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(829, '9014921', 'Flora', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Intelligence'),
(830, '9014921', 'Wu Kong', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Strength'),
(831, '9014921', 'Orthros', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(832, '9014921', 'Alna', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Debuffer', 'Agility'),
(833, '9014921', 'Zaphrael', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Intelligence'),
(834, '9014921', 'Morael', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Intelligence'),
(835, '9014921', 'Titus', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(836, '9014921', 'Ezizh', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Debuffer', 'Strength'),
(837, '9014921', 'Mortas', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Regen', 'Intelligence'),
(838, '9014921', 'Mehira', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Intelligence'),
(839, '9014921', 'Mezoth', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(840, '9014921', 'Zolrath', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Assassin', 'Agility'),
(841, '9014921', 'Khazard', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Intelligence'),
(842, '9014921', 'Leofric', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Debuffer', 'Intelligence'),
(843, '9014921', 'Zikis', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(844, '9014921', 'Nakoruru', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Burst_Damage', 'Agility'),
(845, '9014921', 'Arthur', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(846, '9014921', 'Ukyo', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(847, '9014921', 'Ezio', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Assassin', 'Agility'),
(848, '9014921', 'Prince of Persia', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Burst_Damage', 'Agility'),
(849, '9014921', 'Albedo', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(850, '9014921', 'Ainz Ooal Gown', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Intelligence'),
(851, '9014921', 'Queen', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Strength'),
(852, '9014921', 'Joker', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(853, '9014921', 'Merlin', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Regen', 'Intelligence'),
(854, '9014921', 'Granit', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(855, '9014921', 'Leonardo Da Vinci', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Intelligence'),
(856, '9014921', 'Mishka', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Strength'),
(857, '9014921', 'Haelus', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Buffer', 'Intelligence'),
(858, '32607873', 'Treznor', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Agility'),
(859, '9014921', 'Treznor', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Agility'),
(860, 'Vaiara', 'Lucrecia', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Assassin', 'Agility'),
(861, 'Vaiara', 'Gwyneth', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Strength'),
(862, 'Vaiara', 'Lucius', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Regen', 'Strength'),
(863, 'Vaiara', 'Belinda', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'AoE', 'Intelligence'),
(864, 'Vaiara', 'Cecilia', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Assassin', 'Agility');
INSERT INTO `card` (`id`, `idjugador`, `heroname`, `artefacto`, `artefactovalue`, `ascension`, `star`, `clase`, `faction`, `engravings`, `fi`, `si`, `head`, `body`, `boots`, `weapon`, `roll`, `attribute`) VALUES
(865, 'Vaiara', 'Hendrik', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(866, 'Vaiara', 'Rosaline', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Buffer', 'Intelligence'),
(867, 'Vaiara', 'Rowan', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Buffer', 'Intelligence'),
(868, 'Vaiara', 'Estrilda', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Burst_Damage', 'Strength'),
(869, 'Vaiara', 'Fawkes', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Agility'),
(870, 'Vaiara', 'Raine', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Buffer', 'Agility'),
(871, 'Vaiara', 'Oscar', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Assassin', 'Agility'),
(872, 'Vaiara', 'Thane', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Assassin', 'Agility'),
(873, 'Vaiara', 'Peggy', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Regen', 'Intelligence'),
(874, 'Vaiara', 'Eluard', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'AoE', 'Intelligence'),
(875, 'Vaiara', 'Rigby', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(876, 'Vaiara', 'Walker', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Strength'),
(877, 'Vaiara', 'Morrow', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Lightbearer', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Intelligence'),
(878, 'Vaiara', 'Brutus', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(879, 'Vaiara', 'Antandra', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(880, 'Vaiara', 'Warek', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Strength'),
(881, 'Vaiara', 'Drez', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Burst_Damage', 'Agility'),
(882, 'Vaiara', 'Skriath', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'AoE', 'Intelligence'),
(883, 'Vaiara', 'Satrana', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Burst_Damage', 'Intelligence'),
(884, 'Vaiara', 'Safiya', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'AoE', 'Intelligence'),
(885, 'Vaiara', 'Tidus', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(886, 'Vaiara', 'Thali', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Intelligence'),
(887, 'Vaiara', 'Khasos', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Strength'),
(888, 'Vaiara', 'Vurk', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'AoE', 'Agility'),
(889, 'Vaiara', 'Kren', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(890, 'Vaiara', 'Numisu', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Regen', 'Intelligence'),
(891, 'Vaiara', 'Anoki', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Strength'),
(892, 'Vaiara', 'Skreg', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(893, 'Vaiara', 'Lyca', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Buffer', 'Agility'),
(894, 'Vaiara', 'Eironn', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'AoE', 'Agility'),
(895, 'Vaiara', 'Nemora', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Regen', 'Intelligence'),
(896, 'Vaiara', 'Pippa', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Intelligence'),
(897, 'Vaiara', 'Tasi', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Intelligence'),
(898, 'Vaiara', 'Saurus', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Strength'),
(899, 'Vaiara', 'Solise', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Intelligence'),
(900, 'Vaiara', 'Gorvo', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(901, 'Vaiara', 'Kaz', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Assassin', 'Agility'),
(902, 'Vaiara', 'Raku', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Burst_Damage', 'Agility'),
(903, 'Vaiara', 'Respen', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Burst_Damage', 'Agility'),
(904, 'Vaiara', 'Lorsan', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'AoE', 'Intelligence'),
(905, 'Vaiara', 'Ulmus', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(906, 'Vaiara', 'Seirus', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(907, 'Vaiara', 'Shemira', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'AoE', 'Intelligence'),
(908, 'Vaiara', 'Thoran', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(909, 'Vaiara', 'Grezhul', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(910, 'Vaiara', 'Izold', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(911, 'Vaiara', 'Ferael', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(912, 'Vaiara', 'Desira', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Regen', 'Intelligence'),
(913, 'Vaiara', 'Daimon', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(914, 'Vaiara', 'Kelthur', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Assassin', 'Agility'),
(915, 'Vaiara', 'Silas', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Buffer', 'Intelligence'),
(916, 'Vaiara', 'Isabella', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Intelligence'),
(917, 'Vaiara', 'Oden', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'AoE', 'Intelligence'),
(918, 'Vaiara', 'Theowyn', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(919, 'Vaiara', 'Nara', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Assassin', 'Strength'),
(920, 'Vaiara', 'Hodgkin', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(921, 'Vaiara', 'Torne', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(922, 'Vaiara', 'Baden', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(923, 'Vaiara', 'Athalia', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Assassin', 'Agility'),
(924, 'Vaiara', 'Elijah & Lailah\'s', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Buffer', 'Intelligence'),
(925, 'Vaiara', 'Talene', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(926, 'Vaiara', 'Flora', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Intelligence'),
(927, 'Vaiara', 'Wu Kong', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Strength'),
(928, 'Vaiara', 'Orthros', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(929, 'Vaiara', 'Alna', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Debuffer', 'Agility'),
(930, 'Vaiara', 'Zaphrael', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Intelligence'),
(931, 'Vaiara', 'Morael', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Intelligence'),
(932, 'Vaiara', 'Titus', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(933, 'Vaiara', 'Ezizh', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Debuffer', 'Strength'),
(934, 'Vaiara', 'Mortas', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Regen', 'Intelligence'),
(935, 'Vaiara', 'Mehira', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Intelligence'),
(936, 'Vaiara', 'Mezoth', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(937, 'Vaiara', 'Zolrath', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Assassin', 'Agility'),
(938, 'Vaiara', 'Khazard', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Intelligence'),
(939, 'Vaiara', 'Leofric', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Debuffer', 'Intelligence'),
(940, 'Vaiara', 'Zikis', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Hypogean', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(941, 'Vaiara', 'Nakoruru', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Burst_Damage', 'Agility'),
(942, 'Vaiara', 'Arthur', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(943, 'Vaiara', 'Ukyo', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(944, 'Vaiara', 'Ezio', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Assassin', 'Agility'),
(945, 'Vaiara', 'Prince of Persia', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Burst_Damage', 'Agility'),
(946, 'Vaiara', 'Albedo', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(947, 'Vaiara', 'Ainz Ooal Gown', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Intelligence'),
(948, 'Vaiara', 'Queen', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Warrior', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Strength'),
(949, 'Vaiara', 'Joker', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Continuous_Damage', 'Agility'),
(950, 'Vaiara', 'Merlin', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Regen', 'Intelligence'),
(951, 'Vaiara', 'Granit', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Mauler', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Tank', 'Strength'),
(952, 'Vaiara', 'Leonardo Da Vinci', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Mage', 'Dimensional', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Intelligence'),
(953, 'Vaiara', 'Mishka', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Tank', 'Wilder', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Strength'),
(954, 'Vaiara', 'Haelus', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Support', 'Celestial', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Buffer', 'Intelligence'),
(955, 'Vaiara', 'Treznor', '0', 'Dura\'s Blade', 'Not Acquired', 'A0', 'Ranger', 'Graveborn', '0', '0', '0', 'Vacio', 'Vacio', 'Vacio', 'Vacio', 'Control', 'Agility');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `heroes`
--

CREATE TABLE `heroes` (
  `id` int(11) NOT NULL,
  `heroname` varchar(100) NOT NULL,
  `clas` varchar(100) NOT NULL,
  `faction` varchar(100) NOT NULL,
  `roll` varchar(100) NOT NULL,
  `attribute` varchar(100) NOT NULL,
  `si` varchar(150) NOT NULL,
  `fi` varchar(150) NOT NULL,
  `engravings` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `heroes`
--

INSERT INTO `heroes` (`id`, `heroname`, `clas`, `faction`, `roll`, `attribute`, `si`, `fi`, `engravings`) VALUES
(1, 'Lucrecia', 'Ranger', 'Hypogean', 'Assassin', 'Agility', 'Lucrecia', 'Lucrecia', 'Ranger'),
(2, 'Gwyneth', 'Ranger', 'Lightbearer', 'Continuous_Damage', 'Strength', 'Gwyneth', 'Gwyneth', 'Ranger'),
(3, 'Lucius', 'Tank', 'Lightbearer', 'Regen', 'Strength', 'Lucius', 'Lucius', 'Tank'),
(4, 'Belinda', 'Mage', 'Lightbearer', 'AoE', 'Intelligence', 'Belinda', 'Belinda', 'Mage'),
(5, 'Cecilia', 'Ranger', 'Lightbearer', 'Assassin', 'Agility', 'Cecilia', 'Cecilia', 'Ranger'),
(6, 'Hendrik', 'Tank', 'Lightbearer', 'Tank', 'Strength', 'Hendrik', 'Hendrik', 'Tank'),
(7, 'Rosaline', 'Support', 'Lightbearer', 'Buffer', 'Intelligence', 'Rosaline', 'Rosaline', 'Support'),
(8, 'Rowan', 'Support', 'Lightbearer', 'Buffer', 'Intelligence', 'Rowan', 'Rowan', 'Support'),
(9, 'Estrilda', 'Warrior', 'Lightbearer', 'Burst_Damage', 'Strength', 'Estrilda', 'Estrilda', 'Warrior'),
(10, 'Fawkes', 'Ranger', 'Lightbearer', 'Control', 'Agility', 'Fawkes', 'Fawkes', 'Ranger'),
(11, 'Raine', 'Support', 'Lightbearer', 'Buffer', 'Agility', 'Raine', 'Raine', 'Support'),
(12, 'Oscar', 'Ranger', 'Lightbearer', 'Assassin', 'Agility', 'Oscar', 'Oscar', 'Ranger'),
(13, 'Thane', 'Ranger', 'Lightbearer', 'Assassin', 'Agility', 'Thane', 'Thane', 'Ranger'),
(14, 'Peggy', 'Support', 'Lightbearer', 'Regen', 'Intelligence', 'Peggy', 'Peggy', 'Support'),
(15, 'Eluard', 'Mage', 'Lightbearer', 'AoE', 'Intelligence', 'Eluard', 'Eluard', 'Mage'),
(16, 'Rigby', 'Warrior', 'Lightbearer', 'Tank', 'Strength', 'Rigby', 'Rigby', 'Warrior'),
(17, 'Walker', 'Warrior', 'Lightbearer', 'Continuous_Damage', 'Strength', 'Walker', 'Walker', 'Warrior'),
(18, 'Morrow', 'Mage', 'Lightbearer', 'Control', 'Intelligence', 'Morrow', 'Morrow', 'Mage'),
(19, 'Brutus', 'Tank', 'Mauler', 'Tank', 'Strength', 'Brutus', 'Brutus', 'Tank'),
(20, 'Antandra', 'Warrior', 'Mauler', 'Continuous_Damage', 'Agility', 'Antandra', 'Antandra', 'Warrior'),
(21, 'Warek', 'Warrior', 'Mauler', 'Continuous_Damage', 'Strength', 'Warek', 'Warek', 'Warrior'),
(22, 'Drez', 'Ranger', 'Mauler', 'Burst_Damage', 'Agility', 'Drez', 'Drez', 'Ranger'),
(23, 'Skriath', 'Mage', 'Mauler', 'AoE', 'Intelligence', 'Skriath', 'Skriath', 'Mage'),
(24, 'Satrana', 'Mage', 'Mauler', 'Burst_Damage', 'Intelligence', 'Satrana', 'Satrana', 'Mage'),
(25, 'Safiya', 'Mage', 'Mauler', 'AoE', 'Intelligence', 'Safiya', 'Safiya', 'Mage'),
(26, 'Tidus', 'Ranger', 'Mauler', 'Continuous_Damage', 'Agility', 'Tidus', 'Tidus', 'Ranger'),
(27, 'Thali', 'Mage', 'Mauler', 'Continuous_Damage', 'Intelligence', 'Thali', 'Thali', 'Mage'),
(28, 'Khasos', 'Warrior', 'Mauler', 'Continuous_Damage', 'Strength', 'Khasos', 'Khasos', 'Warrior'),
(29, 'Vurk', 'Ranger', 'Mauler', 'AoE', 'Agility', 'Vurk', 'Vurk', 'Ranger'),
(30, 'Kren', 'Ranger', 'Mauler', 'Continuous_Damage', 'Agility', 'Kren', 'Kren', 'Ranger'),
(31, 'Numisu', 'Support', 'Mauler', 'Regen', 'Intelligence', 'Numisu', 'Numisu', 'Support'),
(32, 'Anoki', 'Tank', 'Mauler', 'Control', 'Strength', 'Anoki', 'Anoki', 'Tank'),
(33, 'Skreg', 'Tank', 'Mauler', 'Tank', 'Strength', 'Skreg', 'Skreg', 'Tank'),
(34, 'Lyca', 'Ranger', 'Wilder', 'Buffer', 'Agility', 'Lyca', 'Lyca', 'Ranger'),
(35, 'Eironn', 'Ranger', 'Wilder', 'AoE', 'Agility', 'Eironn', 'Eironn', 'Ranger'),
(36, 'Nemora', 'Support', 'Wilder', 'Regen', 'Intelligence', 'Nemora', 'Nemora', 'Support'),
(37, 'Pippa', 'Mage', 'Wilder', 'Continuous_Damage', 'Intelligence', 'Pippa', 'Pippa', 'Mage'),
(38, 'Tasi', 'Support', 'Wilder', 'Control', 'Intelligence', 'Tasi', 'Tasi', 'Support'),
(39, 'Saurus', 'Warrior', 'Wilder', 'Continuous_Damage', 'Strength', 'Saurus', 'Saurus', 'Warrior'),
(40, 'Solise', 'Mage', 'Wilder', 'Control', 'Intelligence', 'Solise', 'Solise', 'Mage'),
(41, 'Gorvo', 'Tank', 'Wilder', 'Tank', 'Strength', 'Gorvo', 'Gorvo', 'Tank'),
(42, 'Kaz', 'Ranger', 'Wilder', 'Assassin', 'Agility', 'Kaz', 'Kaz', 'Ranger'),
(43, 'Raku', 'Ranger', 'Wilder', 'Burst_Damage', 'Agility', 'Raku', 'Raku', 'Ranger'),
(44, 'Respen', 'Ranger', 'Wilder', 'Burst_Damage', 'Agility', 'Respen', 'Respen', 'Ranger'),
(45, 'Lorsan', 'Mage', 'Wilder', 'AoE', 'Intelligence', 'Lorsan', 'Lorsan', 'Mage'),
(46, 'Ulmus', 'Tank', 'Wilder', 'Tank', 'Strength', 'Ulmus', 'Ulmus', 'Tank'),
(47, 'Seirus', 'Warrior', 'Wilder', 'Tank', 'Strength', 'Seirus', 'Seirus', 'Warrior'),
(48, 'Shemira', 'Mage', 'Graveborn', 'AoE', 'Intelligence', 'Shemira', 'Shemira', 'Mage'),
(49, 'Thoran', 'Tank', 'Graveborn', 'Tank', 'Strength', 'Thoran', 'Thoran', 'Tank'),
(50, 'Grezhul', 'Tank', 'Graveborn', 'Tank', 'Strength', 'grezhul', 'grezhul', 'Tank'),
(51, 'Izold', 'Warrior', 'Graveborn', 'Tank', 'Strength', 'Izold', 'Izold', 'Warrior'),
(52, 'Ferael', 'Ranger', 'Graveborn', 'Continuous_Damage', 'Agility', 'Ferael', 'Ferael', 'Ranger'),
(53, 'Desira', 'Support', 'Graveborn', 'Regen', 'Intelligence', 'Desira', 'Desira', 'Support'),
(54, 'Daimon', 'Tank', 'Graveborn', 'Tank', 'Strength', 'Daimon', 'Daimon', 'Tank'),
(55, 'Kelthur', 'Ranger', 'Graveborn', 'Assassin', 'Agility', 'Kelthur', 'Kelthur', 'Ranger'),
(56, 'Silas', 'Support', 'Graveborn', 'Buffer', 'Intelligence', 'Silas', 'Silas', 'Support'),
(57, 'Isabella', 'Mage', 'Graveborn', 'Continuous_Damage', 'Intelligence', 'Isabella', 'Isabella', 'Mage'),
(58, 'Oden', 'Mage', 'Graveborn', 'AoE', 'Intelligence', 'Oden', 'Oden', 'Mage'),
(59, 'Theowyn', 'Ranger', 'Graveborn', 'Continuous_Damage', 'Agility', 'Theowyn', 'Theowyn', 'Ranger'),
(60, 'Nara', 'Warrior', 'Graveborn', 'Assassin', 'Strength', 'Nara', 'Nara', 'Warrior'),
(61, 'Hodgkin', 'Tank', 'Graveborn', 'Tank', 'Strength', 'Hodgkin', 'Hodgkin', 'Tank'),
(62, 'Torne', 'Tank', 'Graveborn', 'Tank', 'Strength', 'Torne', 'Torne', 'Tank'),
(63, 'Baden', 'Warrior', 'Graveborn', 'Continuous_Damage', 'Agility', 'Baden', 'Baden', 'Warrior'),
(64, 'Athalia', 'Ranger', 'Celestial', 'Assassin', 'Agility', 'Athalia', 'Athalia', 'Ranger'),
(65, 'Elijah & Lailah\'s', 'Support', 'Celestial', 'Buffer', 'Intelligence', 'Elijah & Lailah\'s', 'Elijah & Lailah\'s', 'Support'),
(66, 'Talene', 'Ranger', 'Celestial', 'Continuous_Damage', 'Agility', 'Talene', 'Talene', 'Ranger'),
(67, 'Flora', 'Mage', 'Celestial', 'Continuous_Damage', 'Intelligence', 'Flora', 'Flora', 'Mage'),
(68, 'Wu Kong', 'Warrior', 'Celestial', 'Continuous_Damage', 'Strength', 'Wu Kong', 'Wu Kong', 'Warrior'),
(69, 'Orthros', 'Tank', 'Celestial', 'Tank', 'Strength', 'Orthros', 'Orthros', 'Tank'),
(70, 'Alna', 'Warrior', 'Celestial', 'Debuffer', 'Agility', 'Alna', 'Alna', 'Warrior'),
(71, 'Zaphrael', 'Mage', 'Celestial', 'Continuous_Damage', 'Intelligence', 'Zaphrael', 'Zaphrael', 'Mage'),
(72, 'Morael', 'Mage', 'Celestial', 'Continuous_Damage', 'Intelligence', 'Morael', 'Morael', 'Mage'),
(73, 'Titus', 'Tank', 'Celestial', 'Tank', 'Strength', 'Titus', 'Titus', 'Tank'),
(74, 'Ezizh', 'Support', 'Hypogean', 'Debuffer', 'Strength', 'Ezizh', 'Ezizh', 'Support'),
(75, 'Mortas', 'Support', 'Hypogean', 'Regen', 'Intelligence', 'Mortas', 'Mortas', 'Support'),
(76, 'Mehira', 'Mage', 'Hypogean', 'Control', 'Intelligence', 'Mehira', 'Mehira', 'Mage'),
(77, 'Mezoth', 'Tank', 'Hypogean', 'Tank', 'Strength', 'Mezoth', 'Mezoth', 'Tank'),
(78, 'Zolrath', 'Warrior', 'Hypogean', 'Assassin', 'Agility', 'Zolrath', 'Zolrath', 'Warrior'),
(79, 'Khazard', 'Mage', 'Hypogean', 'Control', 'Intelligence', 'Khazard', 'Khazard', 'Mage'),
(80, 'Leofric', 'Support', 'Hypogean', 'Debuffer', 'Intelligence', 'Leofric', 'Leofric', 'Support'),
(81, 'Zikis', 'Ranger', 'Hypogean', 'Continuous_Damage', 'Agility', 'Zikis', 'Zikis', 'Ranger'),
(82, 'Nakoruru', 'Ranger', 'Dimensional', 'Burst_Damage', 'Agility', 'Nakoruru', 'Nakoruru', 'Ranger'),
(83, 'Arthur', 'Tank', 'Dimensional', 'Tank', 'Strength', 'Arthur', 'Arthur', 'Tank'),
(84, 'Ukyo', 'Warrior', 'Dimensional', 'Continuous_Damage', 'Agility', 'Ukyo', 'Ukyo', 'Warrior'),
(85, 'Ezio', 'Ranger', 'Dimensional', 'Assassin', 'Agility', 'Ezio', 'Ezio', 'Ranger'),
(86, 'Prince of Persia', 'Ranger', 'Dimensional', 'Burst_Damage', 'Agility', 'Prince of Persia', 'Prince of Persia', 'Ranger'),
(87, 'Albedo', 'Tank', 'Dimensional', 'Tank', 'Strength', 'Albedo', 'Albedo', 'Tank'),
(88, 'Ainz Ooal Gown', 'Mage', 'Dimensional', 'Continuous_Damage', 'Intelligence', 'Ainz Ooal Gown', 'Ainz Ooal Gown', 'Mage'),
(89, 'Queen', 'Warrior', 'Dimensional', 'Continuous_Damage', 'Strength', 'Queen', 'Queen', 'Warrior'),
(90, 'Joker', 'Ranger', 'Dimensional', 'Continuous_Damage', 'Agility', 'Joker', 'Joker', 'Ranger'),
(91, 'Merlin', 'Support', 'Dimensional', 'Regen', 'Intelligence', 'Merlin', 'Merlin', 'Support'),
(92, 'Granit', 'Tank', 'Mauler', 'Tank', 'Strength', 'Granit', 'Granit', 'Tank'),
(93, 'Leonardo Da Vinci', 'Mage', 'Dimensional', 'Control', 'Intelligence', 'Leonardo Da Vinci', 'Leonardo Da Vinci', 'Mage'),
(94, 'Mishka', 'Tank', 'Wilder', 'Control', 'Strength', 'Mishka', 'Mishka', 'Tank'),
(99, 'Haelus', 'Support', 'Celestial', 'Buffer', 'Intelligence', 'Haelus', 'Haelus', 'Support'),
(100, 'Treznor', 'Ranger', 'Graveborn', 'Control', 'Agility', 'Treznor', 'Treznor', 'Ranger');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` text,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id` int(11) NOT NULL,
  `idjugador` varchar(255) NOT NULL,
  `mage` varchar(255) NOT NULL,
  `ranger` varchar(255) NOT NULL,
  `support` varchar(255) NOT NULL,
  `tank` varchar(255) NOT NULL,
  `warrior` varchar(255) NOT NULL,
  `cristal` varchar(255) NOT NULL,
  `king` varchar(255) NOT NULL,
  `celestial` varchar(255) NOT NULL,
  `graveborn` varchar(255) NOT NULL,
  `hypogean` varchar(255) NOT NULL,
  `light` varchar(255) NOT NULL,
  `mauler` varchar(255) NOT NULL,
  `wilder` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id`, `idjugador`, `mage`, `ranger`, `support`, `tank`, `warrior`, `cristal`, `king`, `celestial`, `graveborn`, `hypogean`, `light`, `mauler`, `wilder`) VALUES
(1, '32607873', '27', '80', '37', '27', '27', '429', '630', '261', '401', '302', '402', '387', '406'),
(2, '9014921', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(3, '22163829', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4, '22163829', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5, '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(6, '9014921', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(7, 'Vaiara', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
('9yM6SCwY4EXZoElAlMdsy-ioLcjt4zvV', 1637154838, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{},\"passport\":{}}'),
('Adx-bYV4oEQAD_X6h0mV-opKotZCly2w', 1637234697, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{},\"passport\":{\"user\":35}}'),
('LawVPxSKLk5IPZl_6IgDnlkYeGiuVxHR', 1637154402, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('NPZEwy3YmsASrtgRUFQ8dAMhSKPGvx27', 1637195904, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('PLSfhKX5qPh8DOeHRhUMHXfiYeaN6wpU', 1637191334, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('l2zqzT84wTWBjL_ujvXCCdVmIuL87Lu6', 1637232268, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('ovMFQ373TC0SU5fudWum4v4WFQcF7I6_', 1637195905, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('uQo17VX0V1C3Akli3xGHkNVyTIn25Dk7', 1637195855, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(60) NOT NULL,
  `idjugador` varchar(100) NOT NULL,
  `aegis` varchar(45) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `idjugador`, `aegis`, `admin`) VALUES
(35, 'Mosky', '$2a$10$ToFROLPdWkS.SdxMdSdzCezh0.X8sReGf/QNzCeKDyQvmZQ/ex7K6', '32607873', '1', 1),
(40, 'Duy Metal', '$2a$10$.XoDnDklwL8dweDSzWd12OlEzWY7yCHmn0V1EnWE/Fie6PBXpWz/K', '9014921', '1', 1),
(41, 'Vaiara', '$2a$10$/yJ69cAkmmdsU2fZAV//VOv3GI0lNe9wtUxsGYwrchHaE99R5.ogS', 'Vaiara', '1', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `heroes`
--
ALTER TABLE `heroes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user` (`user_id`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `card`
--
ALTER TABLE `card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=956;

--
-- AUTO_INCREMENT de la tabla `heroes`
--
ALTER TABLE `heroes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `links`
--
ALTER TABLE `links`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

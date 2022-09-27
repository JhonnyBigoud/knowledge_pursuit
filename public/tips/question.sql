-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 27 sep. 2022 à 04:04
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `knowledge_pursuit`
--

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `wording` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposition_1` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposition_2` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposition_3` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bonne_réponse` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`id`, `wording`, `proposition_1`, `proposition_2`, `proposition_3`, `bonne_réponse`, `image`) VALUES
(1, 'Quel célèbre dictateur dirigea l’URSS du milieu des années 1920 à 1953 ?\n', 'Trotski', 'Lenine\r\n', 'Molotov', 'Staline', 'quiz-culture-generale-debutant-1.png'),
(2, 'Dans quel pays peut-on trouver la Catalogne, l’Andalousie et la Castille ?\r\n', 'L\'Italie', 'La France', 'Le Portugal', 'L\'Espagne', 'quiz-culture-generale-debutant-2.webp'),
(3, 'Qui a dit : « Le sort en est jeté » (Alea jacta est) ?', 'Auguste', 'Attila', 'Vercingétorix', 'César', 'quiz-culture-generale-debutant-3.webp'),
(4, 'Quel cinéaste a réalisé « Parle avec elle » et « Volver » ?\n', 'Guillermo del Toro\r\n', 'Woody Allen\r\n', 'Pablo Trapero\r\n', 'Pedro Almodovar\r\n', 'quiz-culture-generale-debutant-4.webp\r\n'),
(5, 'À qui doit-on la chanson « I Shot the Sheriff » ?\n', 'UB40\r\n', 'Eric Clapton\r\n', 'Jim Morrison\r\n', 'Bob Marley\r\n', 'quiz-culture-generale-debutant-5.jpg'),
(6, 'Quel pays a remporté la coupe du monde de football en 2014 ?\r\n', 'Le Brésil\r\n', 'L\'Italie\r\n', 'L\'Argentine\r\n', 'L\'Allemagne\r\n', 'quiz-culture-generale-debutant-6.webp\r\n'),
(7, 'Dans quelle ville italienne l’action de la pièce de Shakespeare « Roméo et Juliette » se situe-t-elle ?\r\n', 'Rome', 'Venise', 'Milan', 'Vérone', 'quiz-culture-generale-debutant-7.webp\r\n'),
(8, 'Par quel mot désigne-t-on une belle-mère cruelle ?\r\n', 'Une chenapan\r\n', 'Une jocrisse\r\n', 'Une godiche\r\n', 'Une marâtre\r\n', 'quiz-culture-generale-debutant-8.webp'),
(9, 'Qui était le dieu de la guerre dans la mythologie grecque ?\r\n', 'Apollon\r\n', 'Hermès\r\n', 'Hadès\r\n', 'Arès\r\n', 'quiz-culture-generale-debutant-9.webp\r\n'),
(10, 'Parmi les animaux suivants, lequel peut se déplacer le plus rapidement ?\r\n', 'Le léopard\r\n', 'Le lièvre\r\n', 'Le chevreuil\r\n', 'Le springbok', 'quiz-culture-generale-debutant-10.webp\r\n');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

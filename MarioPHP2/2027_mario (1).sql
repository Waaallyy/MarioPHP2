-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 12 sep. 2026 à 11:22
-- Version du serveur : 8.4.7
-- Version de PHP : 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `2027_mario`
--
CREATE DATABASE IF NOT EXISTS `2027_mario` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `2027_mario`;

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `email` varchar(155) NOT NULL,
  `sujet` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`nom`, `prenom`, `email`, `sujet`, `message`, `date`) VALUES
('azda', 'azdazd', 'email@emaio.com', 'PABLO', 'PABLO EST PRESENT', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `jeux`
--

DROP TABLE IF EXISTS `jeux`;
CREATE TABLE IF NOT EXISTS `jeux` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(35) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `date` int DEFAULT NULL,
  `description` varchar(699) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `jeux`
--

INSERT INTO `jeux` (`ID`, `nom`, `date`, `description`) VALUES
(1, 'Donkey Kong', 1981, ' Maltraité par le charpentier, Donkey Kong s\'échappe et enlève la petite amie de Jumpman, originellement connue sous le nom de Lady. Le joueur prend le contrôle de Jumpman et doit venir au secours de sa bien-aimée ; c\'est la première apparition du thème de la demoiselle en détresse dans un jeu vidéo, thème qui deviendra récurrent dans l\'univers vidéoludique4.'),
(2, 'Donkey Kong Jr.', 1982, 'Donkey Kong Jr. est un jeu de plates-formes dans lequel le joueur incarne Donkey Kong Junior qui, à travers les quatre niveaux que comportent le jeu, doit sauver son père, Donkey Kong, qui a été capturé par Mario. Le joueur doit atteindre Mario en haut des plateformes en évitant divers obstacles comme dans le jeu Donkey Kong1.'),
(3, 'Mario Bros.', 1983, 'Mario Bros. met en scène deux plombiers moustachus2 : Mario et Luigi, qui doivent enquêter sur les égouts de New York après que d\'étranges créatures y sont apparues.'),
(4, 'Super Mario Bros.', 1985, 'L\'action se déroule dans un univers fictif nommé le Royaume Champignon où habitent la princesse Peach et ses serviteurs, les Toads. Un jour, une horde de Koopas maléfiques et de résistants Goombas envahit le Royaume Champignon et transforme tous ses habitants en briques, engendrant la chute du royaume1,2. Seule la princesse Peach peut inverser le sort et restaurer la paix dans le royaume, mais malheureusement, elle se fait kidnapper par Bowser, le roi des Koopas.'),
(5, 'Super Mario World', 1990, 'Le joueur contrôle Mario dans sa quête pour sauver Princesse Peach et Dinosaur Land de l\'antagoniste de la série, Bowser et les Koopalings. Le gameplay est similaire à celui des précédents jeux Super Mario : les joueurs contrôlent Mario à travers une série de niveaux dont le but est d\'atteindre le poteau d\'arrivée à la fin.'),
(6, 'Mario and Yoshi', 1991, 'Dans Mario and Yoshi, l\'espace de jeu est divisé en quatre colonnes, sur lesquelles des monstres, représentés par différents ennemis de la série Super Mario, tombent du haut de l\'écran jusqu\'en bas à la manière d\'un Tetris. Lorsqu\'ils atterrissent, les monstres se transforment en blocs. Lesdits blocs finissent par s\'accumuler pour remplir de plus en plus les colonnes sur l\'espace de jeu, le but étant d\'empêcher les monstres d\'atteindre la ligne marqué sur la partie supérieure de l\'écran'),
(7, 'Mario Party 4', 2002, 'Ce jeu reprend les grands principes de la série Mario Party : des personnages emblématiques de l\'univers Mario évoluent sur un plateau de jeu, en lançant des dés, à la recherche d\'étoiles où ils enchaînent des mini-jeux amusants. Le but étant de récolter des pièces permettant d\'acheter ces fameuses étoiles, entre autre. Huit personnage rejoignent la partie : Mario, Luigi, la Princesse Peach, Yoshi, Wario, Donkey Kong, la Princesse Daisy et Waluigi. Ils peuvent évoluer sur six plateaux différents aux thématiques et environnements variés, de la jungle au monde de lave de Bowser !'),
(8, 'Super Mario Bros. Wonder', 2023, 'Mario, Luigi, Peach, Toad et même Daisy sont de la partie en tant que personnages jouables ! De nouveaux ennemis font leur apparition, mais également un tout nouvel objet : la fleur prodige. En trouvant une fleur prodige, le sol et les objets aux alentours peuvent se mettre à bouger ! Ou alors, on peut se transformer en quelque chose d\'inattendu... tout est possible, ce qui promet maintes surprises dans les niveaux ! Parmi les nouvelles transformations, une est déjà connue. Mario pourra se transformer en... éléphant !'),
(9, 'Mario Kart', 1993, 'Pas moins de huit personnages son prêts à faire chauffer les moteurs pour parvenir à la première place : Mario, Luigi, Peach, Yoshi, Donkey Kong, Koopa, Toad et bien sûr l\'infâme Bowser. Le jeu introduit les caractéristiques bien connues qui font la renommée de la série Mario Kart : un mode multijoueur amusant accessible à tous, des circuits dans des environnements variés, et des objets pour mettre des bâtons dans les roues de ses adversaires, impliquant de nombreux retournements de situation. C\'est aussi dans cet opus qu\'apparait la légendaire course arc-en-ciel, un circuit dont le tracé est réinventé pour chaque jeu de la série, qui est réputé pour être le plus tortueux et ardu de tous ! '),
(10, 'Mario Kart 64', 1997, 'Dans ce second opus de la série, Mario Kart entre dans la troisième dimension sur Nintendo 64 ! Le but reste le même : gagner la course en s\'aidant de divers objets pour mettre des bâtons dans les roues de ses adversaires. Bien que les personnages soient restés en 2D, les circuits sont modélisés en 3D ce qui permet d\'avoir des variations de niveau de la piste par exemple. Il est maintenant possible de faire des dérapages, qui, s\'ils sont maintenus assez longtemps pendant un virage, permettent de gagner une petit accélération bonus ! En plus des objets habituels, Mario Kart 64 voit aussi l\'arrivée de la fameuse carapace bleue, faisant enrager les pilotes sans discontinuité depuis lors...'),
(11, 'Super Mario Bros. 3', 2007, 'Volez avec Mario Raton-laveur, nagez avec Mario Grenouille, lancez des boules de feu avec Mario Feu et transformez-vous en statue invincible avec Mario Tanuki! Tous ces pouvoirs ne seront pas de trop pour vaincre les sbires de Bowser qui vous attendent à bord de leurs forteresses volantes.\nAvec ses huit mondes gigantesques à parcourir, de nombreux secrets à découvrir et un mode deux joueurs en coopération ou en compétition, Super Mario Bros. 3 mérite amplement d\'être considéré comme l\'un des meilleurs jeux jamais créés.\n'),
(12, 'Yume Kōjō: Doki Doki Panic', 1987, 'jeu  plates-formes sorti au Japon en 1987 sur Famicom Disk System. Il a donc quelques ressemblances avec les jeux Mario, comme les pièces faisant le même son que dans Super Mario Bros. et l\'apparition d\'une super étoile rendant invincible'),
(13, 'Super Mario Sunshine', 2002, 'Après avoir botté les fesses de Bowser, Mario et la Princesse Peach, accompagnés de Papy Champi et quelques Toads, se rendent en vacances sur l\'ile Delfino, une petite ile paradisiaque à l\'écart du Royaume Champignon. Mais à son arrivée, Mario trouve une ile dégradée par des graffitis et plongée dans une obscurité inhabituelle... et se fait aussitôt arrêter par la police locale ! Déclaré coupable, il est condamné à nettoyer l\'ile... J.E.T., la dernière invention du professeur K. Tastroff, va l\'aider dans sa tâche. Mario s\'équipe de cette pompe à eau dotée de parole, afin d\'acquérir de nouvelles capacités.'),
(14, 'Super Mario Land', 1990, 'Jeu de plateforme où Mario doit sauver la princesse Daisy'),
(15, 'Super Mario Galaxy', 2007, 'Pour sa troisième grande aventure en 3D, Mario quitte le Royaume-Champignon et part dans l\'espace ! Tout commence le jour du festival des étoiles, qui a lieu tous les 100 ans après le passage d\'une mystérieuse commette qui répand des étoiles sur la planète Terre. Peach invite Mario à se joindre aux festivités, et celui-ci prend aussitôt la route pour le château. Mais catastrophe, Bowser a aussi décidé de se joindre à la fête, mais, ô surprise, pour capturer la Princesse Peach à nouveau ! '),
(16, 'Super Mario World 2: Yoshi\'s Island', 1995, 'Nous conte l\'histoire de Bébé Mario et Bébé Luigi ! Alors que la cigogne était en route vers la maison des de leurs parents, le sinistre magicien Kamek s\'empare de Bébé Luigi tandis que Bébé Mario entame une longue chute pour finalement atterrir... sur le dos de Yoshi ! Ils décident de former une équipe, et ainsi commence leur fameuse amitié !'),
(17, 'Mario Kart: Double Dash!!', 2003, 'Nouvel opus de la série de jeu de course Mario Kart sorti sur GameCube. Il reprend les bases de ses prédécesseurs qui ont fait connaître la série : des courses endiablées pleines de rebondissements grâce aux objets variés permettant de gêner ses adversaires sur la piste. Mais cette fois-ci, ce sont pas moins de deux personnage qui se retrouvent par kart !'),
(18, 'Super Mario 64', 1997, 'Mario est invité par la Princesse Peach à déguster un délicieux gâteau au château. Pourtant, quand Mario arrive, tout est trop calme... L\'infâme Bowser a capturé la princesse et a volé les étoiles de puissance du château !'),
(19, 'Mario Tennis', 2000, 'Jeu de tennis avec les personnages de l\'univers Mario.');

-- --------------------------------------------------------

--
-- Structure de la table `objets`
--

DROP TABLE IF EXISTS `objets`;
CREATE TABLE IF NOT EXISTS `objets` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(22) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `description` varchar(713) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `image` varchar(19) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `date` int DEFAULT NULL,
  `jeux` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `COL 6` int DEFAULT NULL,
  `role` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `objets`
--

INSERT INTO `objets` (`ID`, `nom`, `description`, `image`, `date`, `jeux`, `COL 6`, `role`) VALUES
(1, 'Bloc ?', 'Le bloc ? est sûrement le bloc le plus connu de l\'univers Mario ! On les trouve un peu partout flottant dans les airs. Il suffit de percuter un bloc par le dessous pour qu\'il en sorte un objet. La plupart du temps, il contient des pièces. Il contient aussi assez fréquemment des champignons ou des fleurs, et parfois des objets plus rares... mais attention, il peut aussi contenir des champignons empoisonnés ! ', 'bloc', 1985, 'Super Mario Bros', 4, 'Neutre'),
(2, 'blocs d\'acier', 'Les blocs d\'acier sont des blocs indestructibles faits d\'acier de couleur marron. Certains flottent dans les airs et peuvent ainsi servir de plate-forme. Mais attention, étant donnée leur étrotesse (ils font à peu prêt la taille de petit Mario), il s\'agit de faire preuve de précision, surtout lorsque c\'est le vide qui se trouve en dessous ! ', 'blocsacier', 1985, 'Super Mario Bros', 4, 'Neutre'),
(3, 'blocs de briques', 'Les blocs de briques sont, comme leur nom l\'indique, des blocs composés de briques. Ce sont sûrement les blocs les plus rependus. Il est possible de les briser après avoir acquis la force donnée par un super-champi. Ces blocs peuvent aussi contenir des objets comme des pièces ou des power-up, mais ne peuvent à ce moment là pas être détruits.', 'blocdebrique', 1985, 'Super Mario Bros', 4, 'Neutre'),
(4, 'Bloc POW', 'Les Bloc POW sont des blocs rares mais très puissants, facilement reconnaissables avec leur couleur bleue ou rouge caractéristique, et leur inscription \"POW\" en lettres capitales. En les percutant par le dessous, ils détruisent tous les ennemis aux alentours ! Ils peuvent également faire tomber les pièces qui flottent dans les airs afin de pouvoir les récupérer plus facilement.', 'blocpow', 1983, 'Mario Bros', 3, 'Bonus'),
(5, 'Carapace à épine', 'Cette étrange carapace est utilisée comme arme dans les compétitions de karting. Personne ne sait de quel Koopa elle provient ! Pendant une course, la carapace est envoyée par un pilote, le plus souvent dans les dernières positions, et dirigée automatiquement vers le pilote en tête de la course. Deux versions de la carapace existent. Une version non ailée qui se déplace sur le sol et percute tous les autres pilotes sur sa trajectoire, et une version ailée qui se déplace dans les airs. Au final, les deux types explosent sur le premier et le ralentissent. Cette carapace étant très dure à éviter, il s\'agit d\'une des pires hantises des compétiteurs !', 'carapaceaepines', 1992, 'Mario Kart', 9, 'Bonus'),
(6, 'Carapace verte', 'C\'est une carapace abandonnée par le Koopa auquel elle appartenait. Elle est très pratique quand on a l\'occasion de la lancer sur les ennemis. Un saut dessus permet de la mettre en mouvement ou au contraire de l\'arrêter. On peut aussi s\'en servir pour surfer sur tout type de terrains, y compris la lave, tout en éliminant nos ennemis ! Mais ce n\'est pas tout, elle permet également de naviguer plus facilement sous l\'eau... Enfin, on peut s\'en servir comme projectile dans les tournois de Kart', 'carapaceverte', 1985, 'Super Mario Bros', 4, 'Neutre'),
(7, 'Champignons 1-Up', 'Les Champignons 1-Up sont des champignons très similaires aux Super Champignons, mais de couleur verte à pois blancs. Ils donnent une vie supplémentaire au personnages qui ont la chance d\'en attraper un. Ils sont souvent bien cachés et font partie des objets les plus rares du royaume.', 'champignon1up', 1985, 'Super Mario Bros', 4, 'Bonus'),
(8, 'Eclair', 'Dans les courses Mario Kart, l’éclair permet de rétrécir les autres participants, ce qui les ralenti et les affaibli. Plus votre rang est élevé dans la course, et plus l\'effet durera longtemps sur vous ! Pour obtenir cet item, mieux vaut être vers les derniers, vous aurez plus de chance de tomber dessus !', 'eclair', 1992, 'Mario Kart', 9, 'Bonus'),
(9, 'Étoile d’invincibilité', 'Cette étoile permet à celui qui l\'attrape de devenir invincible pendant une courte durée. On peut alors tuer nos ennemis ainsi que détruire des objets dangereux sans risquer de perdre une vie. En plus, cela rapporte des points puis des vies en fonction du nombre d\'ennemis tués. Par contre, l\'étoile ne protège pas des pièges fatals tels que les trous, la lave...', 'etoileinvincibilite', 1985, 'Super Mario Bros', 4, 'Bonus'),
(10, 'fleur de feu ', 'La fleur de feu est un des items les plus connus. Elle permet de lancer des boules de feu pour éliminer vos ennemis, tant que vous ne vous faite pas toucher. Mais attention, les fleurs de feu trouvée dans l\'espace sont au contraire effective pendant une durée limitée ! Leur apparence a changé au cours du temps, par exemple, lors de sa première apparition, elle n\'avait pas d\'œil.', 'fleurdefeu', 1985, 'Super Mario Bros', 4, 'Bonus'),
(11, 'Pièce', 'Les pièces sont la monnaie officielle du Royaume Champignon. On les retrouve dispersées un peu partout dans le Monde Champignon, et même dans d\'autres planètes plus lointaines. Ainsi, ce sont les objets les plus courants de la série Super Mario.\nElles se trouvent aussi bien à l\'air libre que cachées dans des blocs bonus ou des blocs de briques. Une fois éliminés, certains ennemis libèrent même une ou plusieurs pièces ! Rechercher des pièces est plutôt important, car elles donnent une vie supplémentaire lorsque elles sont au nombre de 100.', 'piece', 1983, 'Mario Bros.', 3, 'Bonus'),
(12, 'Super Champis', 'Les Super Champis sont les items les plus connus et emblématiques du royaume Champignon ! Ce sont des champignons au chapeau rouge à pois blancs, très communs dans les blocs ? disséminés un peu partout dans le royaume. Ils permettent principalement de grandir et de devenir plus puissant et plus résistant. Lorsque Petit Mario ingère un Super Champignon, il devient Super Mario et obtient assez de force pour détruire les blocs de briques. Il peut également encaisser un coup supplémentaire de ses ennemis, mais redevient alors Petit Mario. Utilisés sur les Karts, ils donnent accès à un coup de turbo aidant à doubler ses adversaires ou emprunter certains raccourcis !', 'superchampignon', 1985, 'Super Mario Bros', 4, 'Bonus'),
(13, 'Tuyaux', 'Les tuyaux sont très répandus dans le Royaume Champignon et même au-delà, ce qui inspira surement Mario à devenir plombier... Ils connectent des régions éloignées entre elles et la plupart permettent donc de se déplacer facilement d\'une zone à l\'autre. Ils constituent ainsi un des moyens de transport les plus utilisés du Royaume Champignon. Mais attention, certains tuyaux sont habités par des Plantes Piranhas ! Elles en sortent sans prévenir, espérant croquer l\'imprudent qui passerait par là. Bien que la couleur la plus répandue des tuyaux soit le vert, il existe une grande variété de coloris. Certains même sont transparents et il est alors amusant de pouvoir voir les personnes s\'y déplacer à l\'intérieur', 'tuyau', 1983, 'Mario Bros.', 3, 'Neutre'),
(14, 'Champignon doré', 'Le champignon doré est une espèce rare de champignon. Apparaissant le plus souvent lors des tournois de karting, seuls les pilotes à la traîne ont une chance de l\'obtenir. En effet, son pouvoir est de donner au pilote qui le possède des turbos à volonté pendant quelques secondes, de quoi essayer de remonter dans la course ! Cela peut aussi permettre de prendre des raccourcis nécessitant une vitesse plus élevée pour être traversés. On trouve aussi des champignons très similaires mais sans couronne dans les briques du Royaume Champignon. Ils donnent 50 pièces ou bien 100 pièces si on est sous forme dorée grâce à une fleur d’or.', 'champignondore', 1996, 'Mario Kart 64', 10, 'Bonus'),
(15, 'Interrupteur P', 'L\'Interrupteur P, aussi nommé Bloc P, est un objet classique du Monde Champignon. Une fois activé, de multiples transformations peuvent se produire. Changement des blocs de briques en pièces et inversement, mais aussi des ennemis en pièces argentées, et même l\'apparition de portes ou de pièces de nul part !\n', 'interrupteurp', 1988, 'Super Mario Bros. 3', 11, 'Bonus'),
(16, 'Mini-Champi ', 'Le Mini-Champi est une espèce assez rare de champignon. Il permet de devenir aussi petit qu\'une souris et ainsi entrer dans des ouvertures ou des tuyaux très étroits. Vous pourrez aussi courir sur l\'eau et sauter plus haut que la normale, tout en étant moins sensible à la gravité. Mais attention! Si vous mangez un Super Champi, vous retrouverez votre taille normale ! Et si vous heurtez un ennemi vous mourrez. Ah, et n\'essayez pas de tuer un ennemi en lui sautant simplement dessus... vous êtes tellement léger que cela n\'aura aucun effet !', 'minichampi', 2002, 'Mario Party 4', 7, 'Bonus'),
(17, 'Pomme d’éléphant', 'Ces fruits à l\'allure surprenante se trouvent principalement au Royaume des Fleurs. Rouges et en forme de tête d\'éléphant, ils sont facilement reconnaissables ! En en ramassant un, on peut se transformer en... éléphant. Sous cette forme, on est plus costaud pour détruire plus facilement les blocs, et on peut se débarrasser des ennemis à coup de trompe. On peut même stocker de l\'eau dans sa trompe pour la recracher au moment voulu, sur une plante qui en a besoin par exemple !', 'pommeelephant', 2023, 'Super Mario Bros. Wonder', 8, 'Bonus'),
(18, 'Tuyau arpenteur', 'Le Royaume des Fleurs réserve bien des surprises ! Parmi celles-ci, voici le Tuyau arpenteur. Lorsqu\'une fleur prodige est ramassée dans un niveau, des effets merveilleux se produisent. Les tuyaux semblent alors parfois prendre vie, et se déplacent comme des chenilles dans le niveau. Les chevaucher permet alors d\'atteindre des objets en hauteur. Mais attention, ces tuyaux sont à l\'aise dans tout environnement et pourraient vous emmener en zone dangereuse si vous ne faites pas attention !', 'tuyauarpenteur', 2023, 'Super Mario Bros. Wonder', 8, 'Neutre');

-- --------------------------------------------------------

--
-- Structure de la table `personnages`
--

DROP TABLE IF EXISTS `personnages`;
CREATE TABLE IF NOT EXISTS `personnages` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `description` varchar(514) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `date` int DEFAULT NULL,
  `role` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `image` varchar(14) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `COL 6` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `personnages`
--

INSERT INTO `personnages` (`ID`, `nom`, `description`, `date`, `role`, `image`, `COL 6`) VALUES
(1, 'Mario', 'Mario, reconnaissable à sa casquette rouge, sa moustache de première classe et sa fameuse salopette, est le plus célèbre plombier du Royaume Champignon ! Il y habite avec son frère Luigi, dans une petite maison dans la forêt. Toujours joyeux, il est un ami proche de la Princesse Peach et lui rend souvent visite au château. Il n\'hésite jamais à partir à l\'aventure, surtout pour sauver la princesse des griffes de Bowser.', 1981, 'Gentil', 'mario', 1),
(2, 'Donkey Kong', 'sympathique gorille costaud dans la moyenne qui, pour le prix de quelques bananes, poursuivra, à l\'aide de son meilleur ami, un petit singe agile et rapide nommé Diddy Kong, un gros et cruel crocodile balourd nommé King K. Rool.', 1981, 'Méchant', 'donkeykong', 1),
(3, 'Luigi', 'Plombier, Luigi est très semblable physiquement à Mario. Initialement, il se distingue uniquement par ses vêtements verts, en opposition au rouge de Mario, mais adopte par la suite des particularités plus marquées telles qu\'une taille plus importante ou une façon différente de se mouvoir, qui collent généralement avec son caractère naïf et maladroit voulu par Nintendo.', 1983, 'Gentil', 'luigi', 3),
(4, 'Princesse Peach', 'Peach est la princesse du Royaume Champignon, qui est constamment attaquée par Bowser. Personnage principal féminin, son rôle varie entre celui d\'héroïne et de demoiselle en détresse que Mario doit sauver au sein de la série.', 1985, 'Gentil', 'princessepeach', 4),
(5, 'Bowser', 'Bien que possédant des caractéristiques de dragon (il crache du feu, possède des écailles mais aussi une carapace), il est le plus souvent considéré comme une tortue et parfois comme un dinosaure. Roi des Koopas, ennemis récurrents de la série, il possède des écailles jaunes, une épaisse carapace verte munie de piques, de grosses griffes, des cornes ainsi qu\'une crête et de larges sourcils rouges.', 1985, 'Méchant', 'bowser', 4),
(6, 'Goomba', 'Les Goombas sont les ennemis les plus répandus, présents dans presque tous les jeux de la série Mario, et aussi les plus simples à vaincre. Ils sont des champignons sur pattes.', 1985, 'Méchant', 'goomba', 4),
(7, 'Toad', 'Habitants du Royaume Champignon et sont des créatures de petites tailles. Les Toad existent en plusieurs couleurs : bleu, rouge, violet, jaune, vert et rose comme Toadette. Leur apparence vient du Super champignon, un des principaux power-ups de la série. ', 1985, 'Méchant', 'toad', 4),
(8, 'Yoshi', 'Dinosaure ami de Mario. Il peut attraper des objets éloignés grâce à sa longue langue et les avaler pour ensuite pondre des œufs. Comme Toad, son espèce existe en plusieurs couleurs : bleu clair, bleu foncé, rose, violet, vert, jaune, noir, blanc et rouge. On peut le remarquer également grâce à son gros nez.', 1990, 'Gentil', 'yoshi', 5),
(9, 'Boo', 'Boo possède une particularité, il pourchassera Mario s\'il lui tourne le dos, mais restera statique si Mario se déplace vers lui', 1980, 'Méchant', 'boo', 11),
(10, 'Spikes', 'A mi-chemin entre les tortues et les dragons. Ils ne crachent néanmoins pas de flammes, mais des boulets cloutés. Ils ressemblent à des petits dragons verts, avec une carapace de tortue et des cheveux bleus. Dans Paper Mario apparaît un Spike violet géant, connu sous le nom de Tubba Blubba.', 1988, 'Méchant', 'spikes', 11),
(11, 'Thwomp', 'Ennemi fait de roche. Dans Super Mario Bros. 3 (où il fait sa première apparition), il monte et descend continuellement, rendant le passage risqué. Il n\'a pas changé depuis.', 1988, 'Méchant', 'thwomp', 11),
(12, 'Koopa', 'Un Koopa est une espèce de tortue fictive. La plupart d\'entre eux travaillent pour le roi des Koopas, Bowser. Ce sont les ennemis les plus courants de la série avec les Goombas. Il existe de nombreuses variantes comme les Paratroopa, Frères Marto et Skelerex. ', 1985, 'Méchant', 'koopa', 4),
(13, 'Bowser Jr', 'Bowser Jr est le fils unique de Bowser. Il porte souvent un foulard avec la bouche menaçante de son père dessinée dessus. Bien qu\'ils se ressemblent énormément, il ne faut pas le confondre avec Bébé Bowser, qui n\'est autre que Bowser quand il était jeune ! Bowser Jr est un personnage arrogant, menteur et plein d\'énergie, mise au service des plans de son père pour capturer la princesse Peach. ', 2002, 'Méchant', 'bowserjr', 13),
(14, 'Daisy', 'Daisy est la princesse du Royaume de Sarasaland et une fidèle amie de la Princesse Peach. Elle se montre toujours très dynamique et joyeuse, et a un petit côté garçon manqué. Cela tend à contraster un peu avec Peach, qui est plus plus calme et réfléchie.', 1989, 'Gentil', 'daisy', 14),
(15, 'Harmonie', 'Mystérieux personnage qui habite dans un observatoire se déplaçant à travers le cosmos. Secrète et réservée, ayant même un petit côté mélancolique, elle entretient un certain mystère autour d\'elle. Réfléchie et étant capable de discernement, elle est une précieuse alliée de Mario et l\'aidera à sauver la Princesse Peach des griffes de Bowser. Elle porte une couronne argentée à l\'image des différentes princesses du monde de Mario, ainsi qu\'une belle robe bleu turquoise.', 2007, 'Gentil', 'harmonie', 15),
(16, 'Kamek', 'Kamek est un Magikoopa sournois qui a veillé pendant de longues années sur Bébé Bowser. Prévoyant, il a senti le danger que représenteraient Bébé Mario et Bébé Luigi, et tenta de les capturer. Il parvint seulement à capturer Bébé Luigi, qui fut sauvé par Yoshi guidé par Bébé Mario. Il se déplace souvent sur son balai volant et a une grande maitrise de la magie. Sa technique favorite pour se débarrasser de ses ennemis et de transformer des monstres ordinaires pour les rendre gigantesques et bien plus coriaces.', 1995, 'Méchant', 'kamek', 16),
(17, 'Toadette', 'Toadette est une toad très joyeuse et optimiste. Elle aime les animaux et la musique, et elle est toujours partante pour accompagner Toad dans ses aventures. Elle possède un chapeau rose et deux tresses roses, et s\'habille généralement en rose.', 2003, 'Gentil', 'toadette', 17),
(18, 'Waluigi', 'Waluigi est un personnage excentrique à l\'allure dégingandée qui se considère comme le rival de Luigi. Il a d\'ailleurs le même âge que lui, et son apparence semble être une caricature des ses traits. Il est très grand, maigre, possède un visage allongé, un gros nez rose et une moustache effilée, qui remonte en formidables pointes. Sa couleur caractéristique est le violet, et il arbore sur sa casquette un L renversé. ', 2000, 'Méchant', 'waluigi', 19),
(19, 'Bill Balles', 'Bill Balles sont des missiles vivants lancés par des canons nommés Bill Boums. La plupart fonce dans les airs en ligne droite jusqu\'à toucher une cible. De couleur noire, ils possèdent deux bras et des yeux menaçants. Le fait de se trouver directement contre un canon lui empêche la plupart du temps de tirer un Bill Balle.', 1985, 'Méchant', 'billballes', 4),
(20, 'Birdo', 'Birdo est une créature ressemblant à Yoshi, mais en rose avec un gros nœud rouge sur la tête et une sorte de large et courte trompe qui fait office de bouche et d\'arme. Bien que très proches physiquement, Yoshi et Birdo ne font absolument pas partie de la même espèce. En fait, chacun de ces deux personnages fait partie d\'une espèce du même nom que lui-même.', 1988, 'Gentil', 'birdo', 12),
(21, 'Bloups', 'Ce petit calamar cherchera à vous toucher pour vous faire perdre des vies.\nCertains Bloups traînent leurs petits avec eux, attention car ils sont tout aussi dangereux.\nIls arrivent même que des Bloups sortent de l\'eau pour venir vous embêter dans les airs...', 1985, 'Méchant', 'bloups', 4),
(22, 'Cheep Cheeps', 'Les Cheep Cheeps sont de petits poissons très communs dans les eaux du Royaume Champignon, où ils nagent paisiblement. Il existe plusieurs variétés de Cheep Cheeps, la plus répandue est de couleur rouge avec des nageoires jaunes. On trouve aussi des Cheep Cheeps de taille plus conséquente ou bien recouverts de piquants. ', 1985, 'Méchant', 'cheepcheep', 4),
(23, 'Heriss', 'Naissant des œufs que Lakitu peut lancer à volonté, ces petits koopas quadrupèdes envahissent vite le terrain et se dirigent droit sur leur ennemi ! Ce qui est très gênant, car leur sauter dessus pour les élimer s\'avère être une très mauvaise idée... de par leur carapace hérissée de pics ! ', 1985, 'Méchant', 'hriss', 4),
(24, 'Lakitus', 'Les Lakitus sont des Koopas à lunettes qui se déplacent dans les airs en chevauchant un petit nuage qu\'ils dirigent à leur guise. Une majorité de Lakitus semble être au service de Bowser. Pour attaquer, ils jettent des œufs de Spinys depuis leur nuage, qui éclosent au contact du sol. ', 1985, 'Méchant', 'lakitus', 4),
(25, 'Maskass', 'Les Maskass sont une autre race du monde de Mario au service de Bowser.\nIls servent de spectateurs pendant les matchs de football de Mario.\nLes Maskass arborent plusieurs couleurs pour leurs vêtements: noir, vert... mais la couleur la plus répandue reste le rouge.', 1987, 'Méchant', 'maskass', 12),
(26, 'Plante Piranha', 'La Plante Piranha est une espèce ennemie très répandue dans l\'univers de Mario. La plupart se cache dans des tuyaux. Bizarrement, elles n\'en sortiront pas si vous attendez contre ou sur le tuyau. Sinon, elles en sortent à intervalles réguliers la bouche grande ouverte pour avaler le malheureux qui se serait approché de trop près.', 1985, 'Méchant', 'plantepiranha', 4),
(27, 'Pokeys', 'Les Pokeys sont des ennemis semblables à des cactus qui se promènent tranquillement dans le désert. Leur corps est formé d\'un empilement de boules recouvertes de piquants, qui peuvent être éliminées une à une. Leur tête est leur point faible et lui porter un coup leur sera fatal. ', 1987, 'Méchant', 'pokey', 16),
(28, 'Skelerex', 'Les Skelerex sont des squelettes de Koopas mystérieusement revenus à la vie, que l\'on trouve surtout dans les châteaux de Bowser. Il est difficile de les vaincre car même si leurs os tombent en morceaux, ils ont le pouvoir de se reformer après quelques secondes. Ils sont de plus insensibles au feu.', 1988, 'Méchant', 'skelerex', 11),
(29, 'Voyou', 'Les Voyou, aussi connus sous le nom de Moche, sont des créatures de forme arrondie, composées d\'un métal bleu brillant ou d\'un noir profond selon leurs apparences. Ils possèdent deux cornes jaunes bien pointues pour se défendre. Ils vivent seuls ou en petit groupe, généralement dans des zones volcaniques. ', 1996, 'Méchant', 'voyou', 18);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `login` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`ID`, `login`, `password`, `admin`) VALUES
(1, 'SioSLAM', '$2y$10$87RPJzcTyhmEzGCBej5MI.6Keo6LfRbf016o0w5AM6hGzXmPIVdji', 1),
(5, 'PABLO', '$2y$10$KDBs0FG2gdy8toVhKLgJT.GDuo8G.9.etq7Qqf/JmiVp/c0j6Mzce', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

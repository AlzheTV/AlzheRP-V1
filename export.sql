SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

-- IL SE PEUT QUE LE SQL SOIT MAL OPTIMISÉ, QUE DES BUGS SOINT TROUVABLE. AMELIOREZ-LE ET JE CORRIGE MON UPLOAD.
--
--
--
-- Table structure for table `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('bank_savings', 'Livret bleu', 0),
('caution', 'Caution', 0),
('property_black_money', 'Argent sale propriÃ©tÃ©', 0),
('society_ambulance', 'Ambulance', 1),
('society_bahama', 'Bahama Mas', 1),
('society_ballas', 'Ballas', 1),
('society_banquier', 'Banque', 1),
('society_cardealer', 'Concessionnaire', 1),
('society_families', 'Families', 1),
('society_fbi', 'FBI', 1),
('society_fueler', 'Raffineur', 1),
('society_journaliste', 'Journaliste', 1),
('society_juge', 'Juge', 1),
('society_mecano', 'Mécano', 1),
('society_motodealer', 'Concessionnaire', 1),
('society_orpailleurs', 'Orpailleurs', 1),
('society_pecheur', 'Pecheur', 1),
('society_police', 'Police', 1),
('society_pompiste', 'Pompiste', 1),
('society_realestateagent', 'Agents Immobilier', 1),
('society_sp', 'sp', 1),
('society_state', 'State', 1),
('society_tabac', 'Tabac', 1),
('society_taxi', 'Taxi', 1),
('society_transistep', 'Transistep', 1),
('society_unicorn', 'Unicorn', 1),
('society_vagos', 'Vagos', 1),
('society_vigne', 'Vigneron', 1),
('society_zac', 'Zac', 1);

-- --------------------------------------------------------

--
-- Table structure for table `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `money` double NOT NULL,
  `owner` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'society_aircraftdealer', 10000, NULL),
(3, 'society_ammu', 10000, NULL),
(4, 'society_avocat', 10000, NULL),
(5, 'society_bahama', 10000, NULL),
(6, 'society_baladins', 10000, NULL),
(9, 'society_banker', 10000, NULL),
(10, 'society_boatdealer', 10000, NULL),
(13, 'society_cardealer', 10000, NULL),
(14, 'society_cartel', 10000, NULL),
(15, 'society_casino', 10000, NULL),
(16, 'society_dock', 10000, NULL),
(20, 'society_fbk', 10000, NULL),
(21, 'society_fbk_black', 10000, NULL),
(23, 'society_fueler', 10000, NULL),
(24, 'society_gouvernement', 10000, NULL),
(25, 'society_hoperrrrr', 10000, NULL),
(26, 'society_illegal', 10000, NULL),
(27, 'society_illegal_black', 10000, NULL),
(28, 'society_immo', 10000, NULL),
(29, 'society_journaliste', 10000, NULL),
(30, 'society_Julio', 10000, NULL),
(31, 'society_kano', 10000, NULL),
(32, 'society_kano_black', 10000, NULL),
(33, 'society_lazone', 10000, NULL),
(34, 'society_lazone_black', 10000, NULL),
(35, 'society_mafia', 10000, NULL),
(36, 'society_Maker', 10000, NULL),
(37, 'society_mecano', 10000, NULL),
(38, 'society_mechanic', 10000, NULL),
(39, 'society_mercenaire', 10000, NULL),
(40, 'society_mercenaire_black', 10000, NULL),
(41, 'society_motodealer', 10000, NULL),
(42, 'society_ms13', 10000, NULL),
(43, 'society_ms13_black', 10000, NULL),
(44, 'society_orpailleurs', 10000, NULL),
(45, 'society_pecheur', 10000, NULL),
(46, 'society_podolskaia', 10000, NULL),
(47, 'society_podolskaia_black', 10000, NULL),
(48, 'society_police', 48000, NULL),
(49, 'society_pompiste', 10000, NULL),
(50, 'society_queenconsolidated', 10000, NULL),
(51, 'society_realestateagent', 10000, NULL),
(52, 'society_securoserv', 10000, NULL),
(53, 'society_sheriff', 10000, NULL),
(54, 'society_state', 10000, NULL),
(55, 'society_sucidesquad', 10000, NULL),
(56, 'society_syndicat', 10000, NULL),
(57, 'society_syndicat_black', 10000, NULL),
(58, 'society_tabac', 10000, NULL),
(59, 'society_taxi', 10000, NULL),
(60, 'society_unicorn', 10000, NULL),
(61, 'society_vagos', 10000, NULL),
(62, 'society_vagos_black', 10000, NULL),
(63, 'society_vigne', 10000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addon_inventory`
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('property', 'Propriété', 0),
('society_ambulance', 'Ambulance', 1),
('society_bahama', 'Bahama Mas', 1),
('society_bahama_fridge', 'Bahama Mas (frigo)', 1),
('society_ballas', 'Ballas', 1),
('society_banquier', 'Banque', 1),
('society_banquier_reserve', 'Banque (réserve)', 1),
('society_cardealer', 'Concesionnaire', 1),
('society_families', 'Families', 1),
('society_fbi', 'FBI', 1),
('society_fueler', 'Raffineur', 1),
('society_journaliste', 'Journaliste', 1),
('society_juge', 'Juge', 1),
('society_mecano', 'Mécano', 1),
('society_pecheur', 'Pêcheur', 1),
('society_police', 'Police', 1),
('society_pompiste', 'Pompiste', 1),
('society_tabac', 'Tabac', 1),
('society_taxi', 'Taxi', 1),
('society_transistep', 'Transistep', 1),
('society_transistep_warehouse', 'Transistep Dépôt', 1),
('society_unicorn', 'Unicorn', 1),
('society_unicorn_fridge', 'Unicorn (frigo)', 1),
('society_vagos', 'Vagos', 1),
('society_vigne', 'Vigneron', 1);

-- --------------------------------------------------------

--
-- Table structure for table `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addon_inventory_items`
--

INSERT INTO `addon_inventory_items` (`id`, `inventory_name`, `name`, `count`, `owner`) VALUES;

-- --------------------------------------------------------

--
-- Table structure for table `aircraftdealer_aircrafts`
--

CREATE TABLE `aircraftdealer_aircrafts` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aircrafts`
--

CREATE TABLE `aircrafts` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aircrafts`
--

INSERT INTO `aircrafts` (`name`, `model`, `price`, `category`) VALUES
('Alpha Z1', 'alphaz1', 1121000, 'plane'),
('Besra', 'besra', 1000000, 'plane'),
('Cuban 800', 'cuban800', 240000, 'plane'),
('Dodo', 'dodo', 500000, 'plane'),
('Duster', 'duster', 175000, 'plane'),
('Howard NX25', 'howard', 975000, 'plane'),
('Luxor', 'luxor', 1500000, 'plane'),
('Luxor Deluxe ', 'luxor2', 1750000, 'plane'),
('Mallard', 'stunt', 250000, 'plane'),
('Mammatus', 'mammatus', 300000, 'plane'),
('Nimbus', 'nimbus', 900000, 'plane'),
('Rogue', 'rogue', 1000000, 'plane'),
('Sea Breeze', 'seabreeze', 850000, 'plane'),
('Shamal', 'shamal', 1150000, 'plane'),
('Ultra Light', 'microlight', 50000, 'plane'),
('Velum', 'velum2', 450000, 'plane'),
('Vestra', 'vestra', 950000, 'plane'),
('Buzzard', 'buzzard2', 500000, 'heli'),
('Frogger', 'frogger', 800000, 'heli'),
('Havok', 'havok', 250000, 'heli'),
('Maverick', 'maverick', 750000, 'heli'),
('Sea Sparrow', 'seasparrow', 815000, 'heli'),
('SuperVolito', 'supervolito', 1000000, 'heli'),
('SuperVolito Carbon', 'supervolito2', 1250000, 'heli'),
('Swift', 'swift', 1000000, 'heli'),
('Swift Deluxe', 'swift2', 1250000, 'heli'),
('Volatus', 'volatus', 1250000, 'heli');

-- --------------------------------------------------------

--
-- Table structure for table `aircraft_categories`
--

CREATE TABLE `aircraft_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aircraft_categories`
--

INSERT INTO `aircraft_categories` (`name`, `label`) VALUES
('plane', 'Avions'),
('heli', 'Hélicoptères');

-- --------------------------------------------------------

--
-- Table structure for table `arrests_list`
--

CREATE TABLE `arrests_list` (
  `id` int(11) NOT NULL,
  `json_data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `baninfo`
--

CREATE TABLE `baninfo` (
  `id` int(11) NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `playername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `baninfo`
--

INSERT INTO `baninfo` (`id`, `license`, `identifier`, `liveid`, `xblid`, `discord`, `playerip`, `playername`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
-- --------------------------------------------------------

--
-- Table structure for table `banlist`
--

CREATE TABLE `banlist` (
  `license` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `expiration` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `banlisthistory`
--

CREATE TABLE `banlisthistory` (
  `id` int(11) NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` int(11) NOT NULL,
  `added` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `expiration` int(11) NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `split` tinyint(1) NOT NULL DEFAULT 0,
  `paid` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`id`, `identifier`, `sender`, `target_type`, `target`, `label`, `amount`, `split`, `paid`) VALUES
(1, 'steam:110000113b67670', 'steam:1100001124ed885', 'society', 'society_police', 'Amende: Excès de vitesse + 50kmh', 8000, 0, 1),
(2, 'steam:110000113b67670', 'steam:1100001124ed885', 'society', 'society_police', 'Amende: Délit de fuite', 10000, 0, 1),
(3, 'steam:110000113b67670', 'steam:1100001124ed885', 'society', 'society_police', 'Amende: Vol de véhicule', 500, 0, 1),
(4, 'steam:1100001403221e9', 'steam:1100001124ed885', 'society', 'society_police', 'Amende: Tentative de meurtre sur agent de l\'État', 20000, 0, 0),
(5, 'steam:1100001403221e9', 'steam:1100001124ed885', 'society', 'society_police', 'Amende: Tentative de meurtre sur civil', 15000, 0, 0),
(6, 'steam:11000013fab738e', 'steam:1100001124ed885', 'society', 'society_police', 'Amende: Tentative de meurtre sur civil', 15000, 0, 0),
(7, 'steam:11000013fab738e', 'steam:1100001124ed885', 'society', 'society_police', 'Amende: Tir sur agent de l\'État', 15000, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `boatdealer_boats`
--

CREATE TABLE `boatdealer_boats` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `boats`
--

CREATE TABLE `boats` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boats`
--

INSERT INTO `boats` (`name`, `model`, `price`, `category`) VALUES
('Seashark', 'seashark', 245000, 'boat'),
('Seashark 2', 'seashark2', 255000, 'boat'),
('Yacht Seashark', 'seashark3', 260000, 'boat'),
('Suntrap', 'suntrap', 2210500, 'boat'),
('Dinghy', 'dinghy', 3652500, 'boat'),
('Dinghy2 ', 'dinghy2', 3735500, 'boat'),
('Yacht Dinghy', 'dinghy4', 3841500, 'boat'),
('Tropic', 'tropic', 2260000, 'boat'),
('Yacht Tropic', 'tropic2', 2310000, 'boat'),
('Squalo', 'squalo', 2412000, 'boat'),
('Yacht Toro', 'toro2', 2718000, 'boat'),
('Toro', 'toro', 2815000, 'boat'),
('Jetmax', 'jetmax', 3900000, 'boat'),
('Voilier Marquis', 'marquis', 2375000, 'boat');

-- --------------------------------------------------------

--
-- Table structure for table `boat_categories`
--

CREATE TABLE `boat_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boat_categories`
--

INSERT INTO `boat_categories` (`name`, `label`) VALUES
('boat', 'Boats');

-- --------------------------------------------------------

--
-- Table structure for table `bolos_list`
--

CREATE TABLE `bolos_list` (
  `id` int(11) NOT NULL,
  `json_data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cardealer_vehicles`
--

INSERT INTO `cardealer_vehicles` (`id`, `vehicle`, `price`) VALUES
(17, 'sc1', 803000);

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'M',
  `height` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`id`, `identifier`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`) VALUES;

-- --------------------------------------------------------

--
-- Table structure for table `character_clothing`
--

CREATE TABLE `character_clothing` (
  `id` int(11) NOT NULL,
  `model` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `clothing_drawables` longtext COLLATE utf8_bin DEFAULT NULL,
  `clothing_textures` longtext COLLATE utf8_bin DEFAULT NULL,
  `clothing_palette` longtext COLLATE utf8_bin DEFAULT NULL,
  `props_drawables` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `props_textures` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `overlays_drawables` longtext COLLATE utf8_bin DEFAULT NULL,
  `overlays_opacity` longtext COLLATE utf8_bin DEFAULT NULL,
  `overlays_colours` longtext COLLATE utf8_bin DEFAULT NULL,
  `char_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `convoy_list`
--

CREATE TABLE `convoy_list` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `convoy_list`
--

INSERT INTO `convoy_list` (`id`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8);

-- --------------------------------------------------------

--
-- Table structure for table `convoy_registered_list`
--

CREATE TABLE `convoy_registered_list` (
  `convoy_id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `is_trailer_stored` tinyint(1) DEFAULT NULL,
  `is_paid` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `convoy_registered_list`
--

INSERT INTO `convoy_registered_list` (`convoy_id`, `identifier`, `is_trailer_stored`, `is_paid`) VALUES;

-- --------------------------------------------------------

--
-- Table structure for table `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('property', 'Propriété', 0),
('society_ambulance', 'Ambulance', 1),
('society_avocat', 'Avocat', 1),
('society_baladins', 'Baladins', 1),
('society_ballas', 'Ballas', 1),
('society_bratva', 'Bratva', 1),
('society_bratva_weapons', 'Bratva - Casier', 1),
('society_burgershot', 'Burgershot', 1),
('society_families', 'Families', 1),
('society_fbi', 'FBI', 1),
('society_fire', 'Pompiers', 1),
('society_fueler', 'Raffineur', 1),
('society_gang', 'Gang', 1),
('society_gouvernement', 'Gouvernement', 1),
('society_hoperrrrr', 'hoperrrr', 1),
('society_journaliste', 'Journaliste', 1),
('society_pecheur', 'Pêcheur', 1),
('society_police', 'Police', 1),
('society_santos', 'Santos', 1),
('society_state', 'State', 1),
('society_tabac', 'Tabac', 1),
('society_taxi', 'Taxi', 1),
('society_transistep', 'Transistep', 1),
('society_unicorn', 'Unicorn', 1),
('society_vagos', 'Vagos', 1),
('society_vigne', 'Vigneron', 1),
('user_ears', 'Ears', 0),
('user_glasses', 'Glasses', 0),
('user_helmet', 'Helmet', 0),
('user_mask', 'Mask', 0);

-- --------------------------------------------------------

--
-- Table structure for table `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES;;

-- --------------------------------------------------------

--
-- Table structure for table `dock`
--

CREATE TABLE `dock` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dock`
--

INSERT INTO `dock` (`id`, `name`, `model`, `price`, `category`) VALUES
(1, 'Seashark', 'seashark', 245000, 'dock'),
(2, 'Seashark 2', 'seashark2', 255000, 'dock'),
(3, 'Yacht Seashark', 'seashark3', 260000, 'dock'),
(4, 'Suntrap', 'suntrap', 2210500, 'dock'),
(5, 'Dinghy', 'dinghy', 3652500, 'dock'),
(6, 'Dinghy 2 ', 'dinghy2', 3735500, 'dock'),
(7, 'Yacht Dinghy', 'dinghy4', 3841500, 'dock'),
(8, 'Tropic', 'tropic', 2260000, 'dock'),
(9, 'Yacht Tropic', 'tropic2', 2310000, 'dock'),
(10, 'Squalo', 'squalo', 2412000, 'dock'),
(11, 'Yacht Toro', 'toro2', 2718000, 'dock'),
(12, 'Toro', 'toro', 2815000, 'dock'),
(13, 'Jetmax', 'jetmax', 3900000, 'dock'),
(14, 'Voilier Marquis', 'marquis', 2375000, 'dock');

-- --------------------------------------------------------

--
-- Table structure for table `dock_categories`
--

CREATE TABLE `dock_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dock_categories`
--

INSERT INTO `dock_categories` (`id`, `name`, `label`) VALUES
(1, 'dock', 'Bateaux');

-- --------------------------------------------------------

--
-- Table structure for table `dock_vehicles`
--

CREATE TABLE `dock_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dopeplants`
--

CREATE TABLE `dopeplants` (
  `owner` varchar(50) NOT NULL,
  `plant` longtext NOT NULL,
  `plantid` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dpkeybinds`
--

CREATE TABLE `dpkeybinds` (
  `id` varchar(50) DEFAULT NULL,
  `keybind1` varchar(50) DEFAULT 'num4',
  `emote1` varchar(255) DEFAULT '',
  `keybind2` varchar(50) DEFAULT 'num5',
  `emote2` varchar(255) DEFAULT '',
  `keybind3` varchar(50) DEFAULT 'num6',
  `emote3` varchar(255) DEFAULT '',
  `keybind4` varchar(50) DEFAULT 'num7',
  `emote4` varchar(255) DEFAULT '',
  `keybind5` varchar(50) DEFAULT 'num8',
  `emote5` varchar(255) DEFAULT '',
  `keybind6` varchar(50) DEFAULT 'num9',
  `emote6` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dpkeybinds`
--

INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES;

-- --------------------------------------------------------

--
-- Table structure for table `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Usage abusif du klaxon', 100, 0),
(2, 'Franchir une ligne continue', 300, 0),
(3, 'Circulation à contresens', 1500, 0),
(4, 'Demi-tour non autorisé', 1000, 0),
(5, 'Circulation hors-route', 1200, 0),
(6, 'Non-respect des distances de sécurité', 1100, 0),
(7, 'Arrêt dangereux / interdit', 1000, 0),
(8, 'Stationnement gênant / interdit', 500, 0),
(9, 'Non respect de la propriété', 1000, 0),
(10, 'Non-respect Ã  un vÃ©hicule prioritaire', 250, 0),
(11, 'Non-respect d\'un stop', 300, 0),
(12, 'Non-respect d\'un feu rouge', 450, 0),
(13, 'DÃ©passement dangereux', 500, 0),
(14, 'VÃ©hicule non en Ã©tat', 500, 0),
(15, 'Conduite sans permis', 5000, 0),
(16, 'DÃ©lit de fuite', 10000, 0),
(17, 'ExcÃ¨s de vitesse - 5 kmh', 500, 0),
(18, 'ExcÃ¨s de vitesse + 5-15 kmh', 1000, 0),
(19, 'ExcÃ¨s de vitesse + 15-30 kmh', 2000, 0),
(20, 'ExcÃ¨s de vitesse + 30 kmh', 5000, 0),
(21, 'Entrave de la circulation', 1000, 1),
(22, 'DÃ©gradation de la voie publique', 1000, 1),
(23, 'Trouble Ã  l\'ordre publique', 2000, 1),
(24, 'Entrave opÃ©ration de police', 1250, 1),
(25, 'Insulte envers / entre civils', 4000, 1),
(26, 'Outrage Ã  agent de police', 4500, 1),
(27, 'Menace verbale ou intimidation envers civil', 7500, 1),
(28, 'Menace verbale ou intimidation envers agent de police', 5000, 1),
(29, 'Manifestation illÃ©gale', 1500, 1),
(30, 'Tentative de corruption', 10000, 1),
(31, 'Arme blanche sortie en ville', 5000, 2),
(32, 'Arme lÃ©thale sortie en ville', 8000, 2),
(33, 'License PPA', 5000, 2),
(34, 'Port d\'arme illÃ©gal', 4750, 2),
(35, 'Carjacking', 4500, 2),
(36, 'Vol de vÃ©hicule', 500, 2),
(37, 'Vente de drogue', 25000, 2),
(38, 'Fabrication de drogue', 25000, 2),
(39, 'Possession de drogue < 100', 30000, 2),
(40, 'Prise d\'otage civil', 40000, 2),
(41, 'Prise d\'otage agent de l\'Ã©tat', 50000, 2),
(42, 'Braquage particulier', 20000, 3),
(43, 'Braquage magasin', 22000, 3),
(44, 'Braquage de banque', 25000, 3),
(45, 'Tir sur civil', 15000, 3),
(46, 'Tir sur agent de l\'Ã©tat', 15000, 3),
(47, 'Tentative de meurtre sur civil', 15000, 3),
(48, 'Tentative de meurtre sur agent de l\'Ã©tat', 20000, 3),
(49, 'Meurtre sur civil', 30000, 3),
(50, 'Meurtre sur agent de l\'Ã©tat', 35000, 3),
(51, 'Meurtre involontaire', 20000, 3),
(52, 'Achat d\'armes illÃ©gal\r\n', 23000, 3),
(53, 'Port d\'arme sans PPA', 17000, 2),
(54, 'Escroquerie Ã  l\'entreprise\r\n', 25000, 3),
(55, 'ExcÃ¨s de vitesse + 50kmh', 8000, 0),
(56, 'Menace de mort envers civils', 15000, 2),
(57, 'Menace de mort envers agent de l\'Ã©tat', 15000, 2),
(58, 'Possession de drogue > 100', 12500, 2);

-- --------------------------------------------------------

--
-- Table structure for table `fine_types_aubervillier`
--

CREATE TABLE `fine_types_aubervillier` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fine_types_aubervillier`
--

INSERT INTO `fine_types_aubervillier` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 300, 0),
(2, 'Raket', 500, 0),
(3, 'Raket', 1000, 1),
(4, 'Raket', 2000, 1),
(5, 'Raket', 5000, 2),
(6, 'Raket', 15000, 3),
(7, 'Raket', 35000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `fine_types_bac`
--

CREATE TABLE `fine_types_bac` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fine_types_bac`
--

INSERT INTO `fine_types_bac` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Usage abusif du klaxon', 30, 0),
(2, 'Franchir une ligne continue', 40, 0),
(3, 'Circulation Ã  contresens', 250, 0),
(4, 'Demi-tour non autorisÃ©', 250, 0),
(5, 'Circulation hors-route', 170, 0),
(6, 'Non-respect des distances de sÃ©curitÃ©', 30, 0),
(7, 'ArrÃªt dangereux / interdit', 150, 0),
(8, 'Stationnement gÃªnant / interdit', 70, 0),
(9, 'Non respect  de la prioritÃ© Ã  droite', 70, 0),
(10, 'Non-respect Ã  un vÃ©hicule prioritaire', 90, 0),
(11, 'Non-respect d\'un stop', 105, 0),
(12, 'Non-respect d\'un feu rouge', 130, 0),
(13, 'DÃ©passement dangereux', 100, 0),
(14, 'VÃ©hicule non en Ã©tat', 100, 0),
(15, 'Conduite sans permis', 1500, 0),
(16, 'DÃ©lit de fuite', 800, 0),
(17, 'ExcÃ¨s de vitesse < 5 kmh', 90, 0),
(18, 'ExcÃ¨s de vitesse 5-15 kmh', 120, 0),
(19, 'ExcÃ¨s de vitesse 15-30 kmh', 180, 0),
(20, 'ExcÃ¨s de vitesse > 30 kmh', 300, 0),
(21, 'Entrave de la circulation', 110, 1),
(22, 'DÃ©gradation de la voie publique', 90, 1),
(23, 'Trouble Ã  l\'ordre publique', 90, 1),
(24, 'Entrave opÃ©ration de bac', 1500, 1),
(25, 'Insulte envers / entre civils', 75, 1),
(26, 'Outrage Ã  agent de bac', 110, 1),
(27, 'Menace verbale ou intimidation envers civil', 90, 1),
(28, 'Menace verbale ou intimidation envers policier', 150, 1),
(29, 'Manifestation illÃ©gale', 250, 1),
(30, 'Tentative de corruption', 1500, 1),
(31, 'Arme blanche sortie en ville', 120, 2),
(32, 'Arme lÃ©thale sortie en ville', 300, 2),
(33, 'Port d\'arme non autorisÃ© (dÃ©faut de license)', 600, 2),
(34, 'Port d\'arme illÃ©gal', 700, 2),
(35, 'Pris en flag lockpick', 300, 2),
(36, 'Vol de voiture', 1800, 2),
(37, 'Vente de drogue', 1500, 2),
(38, 'Fabriquation de drogue', 1500, 2),
(39, 'Possession de drogue', 650, 2),
(40, 'Prise d\'Ã´tage civil', 1500, 2),
(41, 'Prise d\'Ã´tage agent de l\'Ã©tat', 2000, 2),
(42, 'Braquage particulier', 650, 2),
(43, 'Braquage magasin', 650, 2),
(44, 'Braquage de banque', 1500, 2),
(45, 'Tir sur civil', 2000, 3),
(46, 'Tir sur agent de l\'Ã©tat', 2500, 3),
(47, 'Tentative de meurtre sur civil', 3000, 3),
(48, 'Tentative de meurtre sur agent de l\'Ã©tat', 5000, 3),
(49, 'Meurtre sur civil', 10000, 3),
(50, 'Meurte sur agent de l\'Ã©tat', 30000, 3),
(51, 'Meurtre involontaire', 1800, 3),
(52, 'Escroquerie Ã  l\'entreprise', 2000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `fine_types_ballas`
--

CREATE TABLE `fine_types_ballas` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fine_types_ballas`
--

INSERT INTO `fine_types_ballas` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `fine_types_biker`
--

CREATE TABLE `fine_types_biker` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fine_types_biker`
--

INSERT INTO `fine_types_biker` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `fine_types_bloods`
--

CREATE TABLE `fine_types_bloods` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fine_types_bloods`
--

INSERT INTO `fine_types_bloods` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `fine_types_delattre`
--

CREATE TABLE `fine_types_delattre` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fine_types_delattre`
--

INSERT INTO `fine_types_delattre` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 300, 0),
(2, 'Raket', 500, 0),
(3, 'Raket', 1000, 1),
(4, 'Raket', 2000, 1),
(5, 'Raket', 5000, 2),
(6, 'Raket', 15000, 3),
(7, 'Raket', 35000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `fine_types_drancy`
--

CREATE TABLE `fine_types_drancy` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fine_types_drancy`
--

INSERT INTO `fine_types_drancy` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 300, 0),
(2, 'Raket', 500, 0),
(3, 'Raket', 1000, 1),
(4, 'Raket', 2000, 1),
(5, 'Raket', 5000, 2),
(6, 'Raket', 15000, 3),
(7, 'Raket', 35000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `fine_types_families`
--

CREATE TABLE `fine_types_families` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fine_types_families`
--

INSERT INTO `fine_types_families` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `fine_types_mafia`
--

CREATE TABLE `fine_types_mafia` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fine_types_mafia`
--

INSERT INTO `fine_types_mafia` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `fine_types_santos`
--

CREATE TABLE `fine_types_santos` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fine_types_santos`
--

INSERT INTO `fine_types_santos` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 300, 0),
(2, 'Raket', 500, 0),
(3, 'Raket', 1000, 1),
(4, 'Raket', 2000, 1),
(5, 'Raket', 5000, 2),
(6, 'Raket', 15000, 3),
(7, 'Raket', 35000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `fine_types_vagos`
--

CREATE TABLE `fine_types_vagos` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fine_types_vagos`
--

INSERT INTO `fine_types_vagos` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `fine_types_zac`
--

CREATE TABLE `fine_types_zac` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fine_types_zac`
--

INSERT INTO `fine_types_zac` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 300, 0),
(2, 'Raket', 500, 0),
(3, 'Raket', 1000, 1),
(4, 'Raket', 2000, 1),
(5, 'Raket', 5000, 2),
(6, 'Raket', 15000, 3),
(7, 'Raket', 35000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `glovebox_inventory`
--

CREATE TABLE `glovebox_inventory` (
  `id` int(11) NOT NULL,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `impounded_vehicles`
--

CREATE TABLE `impounded_vehicles` (
  `id` int(11) NOT NULL,
  `plate` varchar(12) DEFAULT NULL,
  `vehicle` text DEFAULT NULL,
  `owner` varchar(250) DEFAULT NULL,
  `impounded_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `limit` int(11) NOT NULL DEFAULT -1,
  `rare` int(11) NOT NULL DEFAULT 0,
  `can_remove` int(11) NOT NULL DEFAULT 1,
  `price` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `price`) VALUES
('acier', 'Acier', -1, 0, 1, 0),
('adrenaline', 'Adrenaline', 15, 0, 1, 0),
('alcool', 'Alcool', 150, 0, 1, 0),
('alcool_cargo', 'Cargaison d\'Alcool', 150, 0, 1, 0),
('alive_chicken', 'Poulet vivant', 150, 0, 1, 0),
('apareil electronique', 'apareil electronique', -1, 0, 1, 0),
('aracgps', 'GPS Tracker', -1, 0, 1, 0),
('arAmmo', 'Boite Munition Fusil Assaut', 5, 0, 1, 0),
('bag', 'Sac de Sport', 1, 0, 1, 0),
('bagofdope', 'Sac de drogue', -1, 0, 1, 0),
('bandage', 'Bandage', 20, 0, 1, 0),
('beef', 'Morceau de Boeuf', 15, 0, 1, 0),
('beer', 'Biere', -1, 0, 1, 0),
('bil', 'Sac de billet', -1, 0, 1, 0),
('billet', 'Lingots d\'or', 200, 0, 1, 0),
('blowpipe', 'Chalumeaux', 10, 0, 1, 0),
('blowtorch', 'Chalumeau', 1, 0, 1, 0),
('bolcacahuetes', 'Bol de cacahuetes', 15, 0, 1, 0),
('bolchips', 'Bol de chips', 15, 0, 1, 0),
('bolnoixcajou', 'Bol de noix de cajou', 15, 0, 1, 0),
('bolpistache', 'Bol de pistaches', 15, 0, 1, 0),
('bread', 'Pain', 15, 0, 1, 0),
('breadsaucisson', 'HotDog', 15, 0, 1, 0),
('burger', 'Hamburger', 5, 0, 1, 0),
('c4_bank', 'C4 de 10 kilos', 1, 0, 1, 0),
('cagoule', 'Cagoule', 5, 0, 1, 0),
('carbon', 'Carbone', -1, 0, 1, 0),
('carokit', 'Kit carosserie', 3, 0, 1, 0),
('carotool', 'outils carosserie', 4, 0, 1, 0),
('cheese', 'Fromage', 5, 0, 1, 0),
('chocolat', 'Barre de chocolat', 15, 0, 1, 0),
('cigarett', 'Cigarette', 15, 0, 1, 0),
('clip', 'Munitions', 2, 0, 1, 0),
('clothe', 'Vetement', 150, 0, 1, 0),
('cocacola', 'Canette de Coca-Cola', 15, 0, 1, 0),
('coffee', 'Cafe', 15, 0, 1, 0),
('coke', 'Coke', 100, 0, 1, 0),
('coke_pooch', 'Pochon de coke', 100, 0, 1, 0),
('COMPONENT_AT_AR_AFGRIP', '[acc] Poignet (Fusils)', 5, 0, 1, 0),
('COMPONENT_AT_AR_CLIP_02', '[acc] Magasin etendu (Fusils)', 5, 0, 1, 0),
('COMPONENT_AT_AR_CLIP_03', '[acc] Magasin tres etendu (Fusils)', 5, 0, 1, 0),
('COMPONENT_AT_AR_FLSH', '[acc] Lampe torche (Fusils)', 5, 0, 1, 0),
('COMPONENT_AT_AR_SUPP_02', '[acc] Silencieux (Fusils)', 5, 0, 1, 0),
('COMPONENT_AT_PI_CLIP_02', '[acc] Magasin Ã©tendu (Pistolets)', 5, 0, 1, 0),
('COMPONENT_AT_PI_FLSH', '[acc] Lampe torche (Pistolets)', 5, 0, 1, 0),
('COMPONENT_AT_PI_SUPP', '[acc] Silencieux (Pistolets)', 5, 0, 1, 0),
('COMPONENT_AT_SCOPE_MACRO', '[acc] Lunette (Fusils)', 5, 0, 1, 0),
('COMPONENT_KNUCKLE_VARMOD_BALLAS', '[skin] Poing amÃ©ricain - Ballas', 5, 0, 1, 0),
('COMPONENT_KNUCKLE_VARMOD_DIAMOND', '[skin] Poing amÃ©ricain - Diamant', 5, 0, 1, 0),
('COMPONENT_KNUCKLE_VARMOD_DOLLAR', '[skin] Poing amÃ©ricain - Dollar', 5, 0, 1, 0),
('COMPONENT_KNUCKLE_VARMOD_HATE', '[skin] Poing amÃ©ricain - Haine', 5, 0, 1, 0),
('COMPONENT_KNUCKLE_VARMOD_KING', '[skin] Poing amÃ©ricain - King', 5, 0, 1, 0),
('COMPONENT_KNUCKLE_VARMOD_LOVE', '[skin] Poing amÃ©ricain - Amour', 5, 0, 1, 0),
('COMPONENT_KNUCKLE_VARMOD_PIMP', '[skin] Poing amÃ©ricain - Pimp', 5, 0, 1, 0),
('COMPONENT_KNUCKLE_VARMOD_PLAYER', '[skin] Poing amÃ©ricain - Joueur', 5, 0, 1, 0),
('COMPONENT_KNUCKLE_VARMOD_VAGOS', '[skin] Poing amÃ©ricain - Vagos', 5, 0, 1, 0),
('COMPONENT_REVOLVER_VARMOD_BOSS', '[skin] Revolver - Boss', 5, 0, 1, 0),
('COMPONENT_REVOLVER_VARMOD_GOON', '[skin] Revolver - Voyou', 5, 0, 1, 0),
('COMPONENT_SWITCHBLADE_VARMOD_VAR1', '[skin] Couteau Ã  cran d\'arrÃªt - VIP', 5, 0, 1, 0),
('COMPONENT_SWITCHBLADE_VARMOD_VAR2', '[skin] Couteau Ã  cran d\'arrÃªt - Bois', 5, 0, 1, 0),
('COMPONENT_VARMOD_LOWRIDER', '[skin] Finition - Lowrider', 5, 0, 1, 0),
('COMPONENT_VARMOD_LUXE', '[skin] Finition - Luxe', 5, 0, 1, 0),
('copper', 'Cuivre', 56, 0, 1, 0),
('coyotte', 'Coyotte', -1, 0, 1, 0),
('croquettes', 'Croquettes', -1, 0, 1, 0),
('cryptedphone', 'Telephone Crypter', 25, 0, 1, 0),
('cupcake', 'CupCake', 15, 0, 1, 0),
('cutted_wood', 'Bois coupe', 150, 0, 1, 0),
('diamond', 'Diamant', 5, 0, 1, 0),
('doliprane', 'Doliprane', 15, 0, 1, 0),
('dopebag', 'sachets a fermeture eclair', -1, 0, 1, 0),
('douille', 'Boite de douille', -1, 0, 1, 0),
('drill', 'Perceuse (Banque)', 1, 0, 1, 0),
('drpepper', 'Dr. Pepper', 5, 0, 1, 0),
('drugscales', 'Balances', -1, 0, 1, 0),
('energy', 'Energy Drink', 5, 0, 1, 0),
('enginekiller', 'EngineKiller', 3, 0, 1, 0),
('essence', 'Pepites d\'or', 150, 0, 1, 0),
('essence1', 'Lingots d\'or', 150, 0, 1, 0),
('fabric', 'Tissu', 150, 0, 1, 0),
('fish', 'Poisson', 150, 0, 1, 0),
('fishbait', 'Appat a Poisson', 30, 0, 1, 0),
('fishingknife', 'Couteau de peche', 1, 0, 1, 0),
('fishingrod', 'Canne a peche', 2, 0, 1, 0),
('fish_traiter', 'Poisson Decoupe', 150, 0, 1, 0),
('fixkit', 'Kit de reparation', 5, 0, 1, 0),
('fixtool', 'outils de reparation', 6, 0, 1, 0),
('flashlight', 'Lampe', 5, 0, 1, 0),
('gazbottle', 'bouteille de gaz', 11, 0, 1, 0),
('gitanes', 'Gitanes', 150, 0, 1, 0),
('gold', 'Or', 21, 0, 1, 0),
('goldbar', 'Gold Bar', 250, 0, 1, 0),
('goldwatch', 'Gold Watch', 2500, 0, 1, 0),
('golem', 'Golem', 5, 0, 1, 0),
('grand_cru', 'Grand Cru', 150, 0, 1, 0),
('grapperaisin', 'Grappe de raisin', 150, 0, 1, 0),
('grip', 'Poignet', 15, 0, 1, 0),
('gym_membership', 'Carte d\'Adhesion', 1, 0, 1, 0),
('hamburger', 'Hamburger', 15, 0, 1, 0),
('hamburgerplate', 'Hamburger aux boulettes de viande', 15, 0, 1, 0),
('headbag', 'Cagoule', 5, 0, 1, 0),
('HeavyArmor', 'Gilet par balle Lourd', 3, 0, 1, 0),
('HeavyArmour', 'Gilet Lourd', 1, 0, 1, 0),
('hifi', 'HiFi', 1, 0, 1, 0),
('highgradefemaleseed', '(HG) Graine femelle', -1, 0, 1, 0),
('highgradefert', 'Engrais de qualite superieur', -1, 0, 1, 0),
('highgrademaleseed', '(HG) Graine male', -1, 0, 1, 0),
('hightech', 'hightech', -1, 0, 1, 0),
('ice', 'Glacon', 15, 0, 1, 0),
('icetea', 'Ice Tea', 15, 0, 1, 0),
('iron', 'Fer', 42, 0, 1, 0),
('jager', 'Jagermeister', 5, 0, 1, 0),
('jagerbomb', 'Jagerbomb', 5, 0, 1, 0),
('jagercerbere', 'Jager Cerbere', 3, 0, 1, 0),
('jewels', 'Bijoux', -1, 0, 1, 0),
('jusfruit', 'Jus de fruits', 150, 0, 1, 0),
('jus_raisin', 'Jus de Raisin', 150, 0, 1, 0),
('keycard', 'Keycard', -1, 0, 1, 0),
('licenseplate', 'Plaque Immatriculation Custom', 5, 0, 1, 0),
('lighter', 'Briquet', 15, 0, 1, 0),
('limonade', 'Limonade', 15, 0, 1, 0),
('lingot_dor', 'Lingot d\'or', -1, 0, 1, 0),
('lockpick', 'Lockpick', 1, 0, 1, 0),
('lowgradefemaleseed', '(LG) Graine femelle', -1, 0, 1, 0),
('lowgradefert', 'Engrais de qualite inferieure', -1, 0, 1, 0),
('lowgrademaleseed', '(LG) Graine male', -1, 0, 1, 0),
('lsd', 'Lsd', -1, 0, 1, 0),
('lsd_pooch', 'Pochon de LSD', -1, 0, 1, 0),
('malbora', 'Malboro', 400, 0, 1, 0),
('martini', 'Martini blanc', 5, 0, 1, 0),
('MedArmor', 'Gilet par balle Moyen', 3, 0, 1, 0),
('MedArmour', 'Gilet Moyen', 1, 0, 1, 0),
('medikit', 'Medikit', 5, 0, 1, 0),
('menthe', 'Feuille de menthe', 150, 0, 1, 0),
('meth', 'Meth', 100, 0, 1, 0),
('meth_pooch', 'Pochon de meth', 100, 0, 1, 0),
('metreshooter', 'Maitre de shooter', 15, 0, 1, 0),
('mgAmmo', 'Boite Munition Machine Gun', 5, 0, 1, 0),
('mixapero', 'Mix Aperitif', 15, 0, 1, 0),
('mojito', 'Mojito', 15, 0, 1, 0),
('myrte', 'Myrte', 150, 0, 1, 0),
('myrtealcool', 'Alcool de myrte', 150, 0, 1, 0),
('myrte_cargo', 'Cargaison de Myrte', 150, 0, 1, 0),
('opium', 'Ecstasy', 100, 0, 1, 0),
('opium_pooch', 'Pochon d\'Ecstasy', 100, 0, 1, 0),
('or1', 'Or', -1, 0, 1, 0),
('or2', 'Lingot', -1, 0, 1, 0),
('orange', 'Orange', 10, 0, 1, 0),
('or_raffin', 'Or Moule', -1, 0, 1, 0),
('oxycutter', 'Torche Plasma', -1, 0, 1, 0),
('pacificidcard', 'Pacific ID', -1, 0, 1, 0),
('packaged_chicken', 'Poulet en barquette', 150, 0, 1, 0),
('packaged_plank', 'Paquet de planches', 150, 0, 1, 0),
('pAmmo', 'Boite Munition Pistolet', 5, 0, 1, 0),
('paper', 'Papier', -1, 0, 1, 0),
('papier', 'Pepite d\'or', 150, 0, 1, 0),
('pepite_dor', 'Pepite dor', -1, 0, 1, 0),
('petrol', 'Pepites d\'or', 150, 0, 1, 0),
('petrol_raffin', 'Lingot d\'or', 150, 0, 1, 0),
('piece electronique', 'piece electronique', -1, 0, 1, 0),
('piluleoubli', 'Pilule de l\'oubli', 5, 0, 1, 0),
('plantpot', 'Pot a plantes', -1, 0, 1, 0),
('poudre', 'Boite de poudre', -1, 0, 1, 0),
('powerade', 'Powerade', 15, 0, 1, 0),
('ppa', 'Licence Permis de Port d\'Armes', 1, 0, 1, 0),
('produit electronique', 'produit electronique', -1, 0, 1, 0),
('protein_shake', 'Protein Shake', 15, 0, 1, 0),
('purifiedwater', 'Eau purifie', -1, 0, 1, 0),
('radio', 'radio', 1, 0, 1, 0),
('raisin', 'Raisin', 150, 0, 1, 0),
('rasperry', 'Rasperry', 1, 0, 1, 0),
('redbull', 'RedBull', 150, 0, 1, 0),
('redbull_cargo', 'Cargaison de RedBull', 150, 0, 1, 0),
('redmonney', 'Faux Billet', -1, 0, 1, 0),
('rhum', 'Rhum', 5, 0, 1, 0),
('rhumcoca', 'Rhum-coca', 5, 0, 1, 0),
('rhumfruit', 'Rhum-jus de fruits', 5, 0, 1, 0),
('rolex', 'Montre Rolex', -1, 0, 1, 0),
('saucisson', 'Saucisson', 15, 0, 1, 0),
('schorange', 'Sachet Orange', -1, 0, 1, 0),
('sgAmmo', 'Boite Munition Fusil a Pompe', 5, 0, 1, 0),
('shark', 'Requin', -1, 0, 1, 0),
('silencieux', 'Silencieux', 15, 0, 1, 0),
('sim', 'Carte SIM', 15, 0, 1, 0),
('slaughtered_chicken', 'Poulet abattu', 150, 0, 1, 0),
('SmallArmor', 'Gilet par balle Leger', 3, 0, 1, 0),
('SmallArmour', 'Gilet Leger', 1, 0, 1, 0),
('soda', 'Soda', 15, 0, 1, 0),
('sportlunch', 'Sportlunch', 15, 0, 1, 0),
('steak', 'Steak', 5, 0, 1, 0),
('stone', 'Pierre', 124, 0, 1, 0),
('tabacblond', 'Tabac Blond', 400, 0, 1, 0),
('tabacblondsec', 'Tabac Blond Secher', 400, 0, 1, 0),
('tabacbrun', 'Tabac Brun', 150, 0, 1, 0),
('tabacbrunsec', 'Tabac Brun Secher', 150, 0, 1, 0),
('tacos', 'Tacos', -1, 0, 1, 0),
('tel', 'Telephone', 150, 0, 1, 0),
('tenuebraquage', 'Tenue Braquage', -1, 0, 1, 0),
('tenuecasa', 'Tenue Casa de Papel', -1, 0, 1, 0),
('tenueprison', 'Tenue de Prison', -1, 0, 1, 0),
('teqpaf', 'Teq\'paf', 5, 0, 1, 0),
('tequila', 'Tequila', 5, 0, 1, 0),
('TINT_01', '[tint] Vert', 5, 0, 1, 0),
('TINT_02', '[tint] Or', 5, 0, 1, 0),
('TINT_03', '[tint] Rose', 5, 0, 1, 0),
('TINT_04', '[tint] Militaire', 5, 0, 1, 0),
('TINT_05', '[tint] LSPD', 5, 0, 1, 0),
('TINT_06', '[tint] Orange', 5, 0, 1, 0),
('TINT_07', '[tint] Platine', 5, 0, 1, 0),
('trimmedweed', 'Weed Taillee', -1, 0, 1, 0),
('turtle', 'Tortue de mer', 3, 0, 1, 0),
('turtlebait', 'Appat a Tortue', 10, 0, 1, 0),
('viande', 'Viande', 25, 0, 1, 0),
('vine', 'Vin', 150, 0, 1, 0),
('vodka', 'Vodka', 5, 0, 1, 0),
('vodkaenergy', 'Vodka-energy', 5, 0, 1, 0),
('vodkafruit', 'Vodka-jus de fruits', 5, 0, 1, 0),
('vodkrb', 'Vodka RedBull', 5, 0, 1, 0),
('washed_stone', 'Pierre Lavee', 124, 0, 1, 0),
('water', 'Bouteille d\'Eau', 15, 0, 1, 0),
('wateringcan', 'Arrosoir', -1, 0, 1, 0),
('weed', 'Cannabis', 100, 0, 1, 0),
('weed_pooch', 'Pochon de Cannabis', 100, 0, 1, 0),
('weld', 'Torch Plasma', 1, 0, 1, 0),
('whisky', 'Whisky', 15, 0, 1, 0),
('whiskycoc', 'Whisky CorsicaCola', 15, 0, 1, 0),
('whiskycoca', 'Whisky-coca', 15, 0, 1, 0),
('wood', 'Bois', 150, 0, 1, 0),
('wool', 'Laine', 150, 0, 1, 0),
('xanax', 'Xanax', -1, 0, 1, 0),
('yusuf', 'Skin de luxe', 15, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jail`
--

CREATE TABLE `jail` (
  `identifier` varchar(100) NOT NULL,
  `isjailed` tinyint(1) DEFAULT NULL,
  `J_Time` datetime NOT NULL,
  `J_Cell` varchar(20) NOT NULL,
  `Jailer` varchar(100) NOT NULL,
  `Jailer_ID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('ambulance', 'ambulance', 0),
('bahama', 'Bahama Mas', 1),
('banquier', 'Banquier', 1),
('busdriver', 'Bus Driver', 0),
('cardealer', 'Concessionnaire', 0),
('fbi', 'FBI', 0),
('journaliste', 'Journaliste', 1),
('lumberjack', 'Bucheron', 0),
('mecano', 'Mecano', 0),
('police', 'LSPD', 0),
('realestateagent', 'Agent Immobilier', 1),
('slaughterer', 'Abatteur', 0),
('state', 'State', 1),
('tabac', 'Tabac', 1),
('tailor', 'Couturier', 0),
('taxi', 'Taxi', 1),
('transistep', 'Transistep', 0),
('unemployed', 'Chomeur', 0),
('unemployed2', 'Etat', 0),
('unicorn', 'Unicorn', 1),
('vagos', 'vagos', 1),
('vigne', 'Vignerons', 1);

-- --------------------------------------------------------

--
-- Table structure for table `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(255) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Sans-emploi', 50, '{}', '{}'),
(2, 'lumberjack', 0, 'employee', 'Interimaire', 150, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":13,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":15,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":2,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":0,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":15,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":12,\"pants_1\":9}', '{}'),
(4, 'fueler', 0, 'employee', 'Interimaire', 150, '{}', '{}'),
(6, 'tailor', 0, 'employee', 'Interimaire', 150, '{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":15,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":23,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":3,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}'),
(8, 'slaughterer', 0, 'employee', 'Interimaire', 150, '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}'),
(9, 'cardealer', 0, 'recruit', 'Recrue', 150, '{}', '{}'),
(10, 'cardealer', 1, 'novice', 'Novice', 250, '{}', '{}'),
(11, 'cardealer', 2, 'experienced', 'Experimenté', 350, '{}', '{}'),
(12, 'cardealer', 3, 'boss', 'Patron', 450, '{}', '{}'),
(27, 'tabac', 0, 'recrue', 'Tabagiste', 100, '{}', '{}'),
(28, 'tabac', 1, 'gerant', 'Gerant', 150, '{}', '{}'),
(29, 'tabac', 2, 'boss', 'Patron', 100, '{}', '{}'),
(30, 'taxi', 0, 'recrue', 'Recrue', 100, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(31, 'taxi', 1, 'novice', 'Novice', 125, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(32, 'taxi', 2, 'experimente', 'Experimenté', 150, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(33, 'taxi', 3, 'uber', 'Uber', 175, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(34, 'taxi', 4, 'boss', 'Patron', 200, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(35, 'unicorn', 0, 'barman', 'Barman', 100, '{}', '{}'),
(36, 'unicorn', 1, 'dancer', 'Danseur', 125, '{}', '{}'),
(37, 'unicorn', 2, 'viceboss', 'Co-gérant', 150, '{}', '{}'),
(38, 'unicorn', 3, 'boss', 'Gérant', 175, '{}', '{}'),
(39, 'vigne', 0, 'recrue', 'Interimaire', 50, '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(40, 'vigne', 1, 'novice', 'Vigneron', 75, '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(41, 'vigne', 2, 'cdisenior', 'Chef de chai', 100, '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(42, 'vigne', 3, 'boss', 'Patron', 150, '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(43, 'realestateagent', 0, 'location', 'Location', 125, '{}', '{}'),
(44, 'realestateagent', 1, 'vendeur', 'Vendeur', 150, '{}', '{}'),
(45, 'realestateagent', 2, 'gestion', 'Gestion', 200, '{}', '{}'),
(46, 'realestateagent', 3, 'boss', 'Patron', 350, '{}', '{}'),
(118, 'bahama', 0, 'barman', 'Barman', 25, '{}', '{}'),
(119, 'bahama', 1, 'dj', 'DJ', 50, '{}', '{}'),
(120, 'bahama', 2, 'secu', 'Securiter', 100, '{}', '{}'),
(121, 'bahama', 3, 'viceboss', 'Co-gerant', 150, '{}', '{}'),
(122, 'bahama', 4, 'boss', 'Gerant', 250, '{}', '{}'),
(256, 'unemployed2', 0, 'rsa', 'Civil', 25, '{}', '{}'),
(274, 'journaliste', 0, 'stagiaire', 'Stagiaire', 25, '{}', '{}'),
(275, 'journaliste', 1, 'reporter', 'Reporter', 50, '{}', '{}'),
(276, 'journaliste', 2, 'investigator', 'Enqueteur', 100, '{}', '{}'),
(277, 'journaliste', 3, 'boss', 'Chef', 150, '{}', '{}'),
(385, 'gouvernement', 1, 'recruit', 'Garde du corp', 500, '{}', '{}'),
(386, 'gouvernement', 2, 'boss', 'Gouverneur', 1000, '{}', '{}'),
(399, 'juge', 0, 'JurÃ©s', 'Jurés', 400, '{}', '{}'),
(400, 'juge', 1, 'Secretaire', 'Secrétaire', 500, '{}', '{}'),
(401, 'juge', 2, 'Procureure', 'Procureur', 600, '{}', '{}'),
(402, 'juge', 3, 'Juge', 'Juge', 700, '{}', '{}'),
(479, 'banquier', 0, 'advisor', 'Stagiaire', 50, '{}', '{}'),
(480, 'banquier', 1, 'banquier', 'Garde Du Corps', 100, '{}', '{}'),
(481, 'banquier', 2, 'business_banquier', 'Banquier', 150, '{}', '{}'),
(482, 'banquier', 3, 'trader', 'Trader', 250, '{}', '{}'),
(483, 'banquier', 4, 'boss', 'Patron', 350, '{}', '{}'),
(552, 'mecano', 0, 'recrue', 'Recrue', 12, '{}', '{}'),
(553, 'mecano', 1, 'novice', 'Novice', 24, '{}', '{}'),
(554, 'mecano', 2, 'experimente', 'Experimente', 36, '{}', '{}'),
(555, 'mecano', 3, 'chief', 'Chef d\'equipe', 48, '{}', '{}'),
(556, 'mecano', 4, 'boss', 'Patron', 0, '{}', '{}'),
(570, 'police', 0, 'recruit', 'Cadet', 20, '{}', '{}'),
(571, 'police', 1, 'officer', 'Officier', 40, '{}', '{}'),
(572, 'police', 2, 'sergeant', 'Sergent', 60, '{}', '{}'),
(573, 'police', 3, 'lieutenant', 'Lieutenant', 85, '{}', '{}'),
(574, 'police', 4, 'boss', 'Capitaine', 100, '{}', '{}'),
(608, 'ambulance', 0, 'ambulance', 'Ambulancier', 20, '{}', '{}'),
(609, 'ambulance', 1, 'doctor', 'Médecin', 40, '{}', '{}'),
(610, 'ambulance', 2, 'boss', 'Patron', 80, '{}', '{}'),
(611, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(612, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(613, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(614, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(619, 'vagos', 0, 'rookie', 'Associé', 0, '{}', '{}'),
(620, 'vagos', 1, 'member', 'Soldat', 0, '{}', '{}'),
(621, 'vagos', 2, 'elite', 'Elite', 0, '{}', '{}'),
(622, 'vagos', 3, 'lieutenant', 'Lieutenant', 0, '{}', '{}'),
(623, 'vagos', 4, 'viceboss', 'Bras Droit', 0, '{}', '{}'),
(624, 'vagos', 5, 'boss', 'Patron', 0, '{}', '{}'),
(625, 'fbi', 0, 'agent', 'Agent', 20, '{}', '{}'),
(626, 'fbi', 1, 'special', 'Agent Expérimenté', 40, '{}', '{}'),
(627, 'fbi', 2, 'supervisor', 'Superviseur', 60, '{}', '{}'),
(628, 'fbi', 3, 'assistant', 'Assistant du Directeur', 85, '{}', '{}'),
(629, 'fbi', 4, 'boss', 'Directeur', 100, '{}', '{}'),
(630, 'busdriver', 0, 'employee', 'Employee', 500, '{}', '{}'),
(631, 'transistep', 0, 'recrue', 'Recrue', 0, '{}', '{}'),
(632, 'transistep', 1, 'transporter', 'Transporteur', 0, '{}', '{}'),
(633, 'transistep', 2, 'boss', 'Patron', 0, '{}', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `jsfour_criminalrecord`
--

CREATE TABLE `jsfour_criminalrecord` (
  `offense` varchar(160) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `charge` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `term` varchar(255) DEFAULT NULL,
  `classified` int(2) NOT NULL DEFAULT 0,
  `identifier` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `warden` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jsfour_criminaluserinfo`
--

CREATE TABLE `jsfour_criminaluserinfo` (
  `identifier` varchar(160) NOT NULL,
  `aliases` varchar(255) DEFAULT NULL,
  `recordid` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `eyecolor` varchar(255) DEFAULT NULL,
  `haircolor` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jsfour_criminaluserinfo`
--

INSERT INTO `jsfour_criminaluserinfo` (`identifier`, `aliases`, `recordid`, `weight`, `eyecolor`, `haircolor`, `firstname`, `lastname`, `dob`, `sex`, `height`) VALUES;

-- --------------------------------------------------------

--
-- Table structure for table `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('aircraft', 'Aircraft License'),
('dmv', 'Code de la route'),
('drive', 'Permis de conduire'),
('drive_bike', 'Permis moto'),
('drive_truck', 'Permis camion'),
('weapon', 'Permis de port d\'arme');

-- --------------------------------------------------------

--
-- Table structure for table `motodealer_motos`
--

CREATE TABLE `motodealer_motos` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `motos`
--

CREATE TABLE `motos` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `motos_categories`
--

CREATE TABLE `motos_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `motos_categories`
--

INSERT INTO `motos_categories` (`id`, `name`, `label`) VALUES
(1, 'motorcycles', 'Motos');

-- --------------------------------------------------------

--
-- Table structure for table `open_car`
--

CREATE TABLE `open_car` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `got` varchar(50) DEFAULT NULL,
  `NB` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `owned_aircrafts`
--

CREATE TABLE `owned_aircrafts` (
  `owner` varchar(30) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'State of the aircraft',
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `owned_boats`
--

CREATE TABLE `owned_boats` (
  `owner` varchar(30) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'State of the boat',
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `owned_properties`
--

CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owned_properties`
--

INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES;

-- --------------------------------------------------------

--
-- Table structure for table `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(22) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Etat de la voiture',
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owned_vehicles`
--

INSERT INTO `owned_vehicles` (`owner`, `state`, `plate`, `vehicle`, `type`, `job`, `stored`) VALUES;

-- --------------------------------------------------------

--
-- Table structure for table `phone_app_chat`
--

CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phone_app_chat`
--

INSERT INTO `phone_app_chat` (`id`, `channel`, `message`, `time`) VALUES;

-- --------------------------------------------------------

--
-- Table structure for table `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num refÃ©rence du contact',
  `incoming` int(11) NOT NULL COMMENT 'DÃ©fini si on est Ã  l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phone_calls`
--

INSERT INTO `phone_calls` (`id`, `owner`, `num`, `incoming`, `time`, `accepts`) VALUES;

-- --------------------------------------------------------

--
-- Table structure for table `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phone_messages`
--

INSERT INTO `phone_messages` (`id`, `transmitter`, `receiver`, `message`, `time`, `isRead`, `owner`) VALUES;

-- --------------------------------------------------------

--
-- Table structure for table `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phone_users_contacts`
--

INSERT INTO `phone_users_contacts` (`id`, `identifier`, `number`, `display`) VALUES;

-- --------------------------------------------------------

--
-- Table structure for table `playerstattoos`
--

CREATE TABLE `playerstattoos` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `tattoos` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playerstattoos`
--

INSERT INTO `playerstattoos` (`id`, `identifier`, `tattoos`) VALUES;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', 1500000),
(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":144.685}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907},', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":143.443}', '[]', NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', 1500000),
(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', 1700000),
(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', 1500000),
(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', 1500000),
(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 1500000),
(7, 'LowEndApartment', 'Appartement de base', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 562500),
(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', 1500000),
(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', 1500000),
(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', 1500000),
(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', 1700000),
(12, 'MiltonDrive', 'Milton Drive', '{\"x\":-775.17,\"y\":312.01,\"z\":84.658}', NULL, NULL, '{\"x\":-775.346,\"y\":306.776,\"z\":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
(13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_01_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":210.396}', 1300000),
(14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_01_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":186.313}', 1300000),
(15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_01_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":195.08}', 1300000),
(16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_02_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.615,\"y\":327.878,\"z\":210.396}', 1300000),
(17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_02_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.297,\"y\":327.092,\"z\":186.313}', 1300000),
(18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_02_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.303,\"y\":330.932,\"z\":195.085}', 1300000),
(19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_03_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.885,\"y\":327.641,\"z\":210.396}', 1300000),
(20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_03_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.607,\"y\":327.344,\"z\":186.313}', 1300000),
(21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_03_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.525,\"y\":330.851,\"z\":195.085}', 1300000),
(22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_04_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.527,\"y\":327.89,\"z\":210.396}', 1300000),
(23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_04_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.642,\"y\":326.497,\"z\":186.313}', 1300000),
(24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_04_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.503,\"y\":331.318,\"z\":195.085}', 1300000),
(25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_05_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.289,\"y\":328.086,\"z\":210.396}', 1300000),
(26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_05_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.692,\"y\":326.762,\"z\":186.313}', 1300000),
(27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_05_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.094,\"y\":330.976,\"z\":195.085}', 1300000),
(28, 'Seductive1Apartment', 'Appartement Séduisant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_06_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.263,\"y\":328.104,\"z\":210.396}', 1300000),
(29, 'Seductive2Apartment', 'Appartement Séduisant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_06_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.655,\"y\":326.611,\"z\":186.313}', 1300000),
(30, 'Seductive3Apartment', 'Appartement Séduisant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_06_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.3,\"y\":331.414,\"z\":195.085}', 1300000),
(31, 'Regal1Apartment', 'Appartement Régal 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_07_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.956,\"y\":328.257,\"z\":210.396}', 1300000),
(32, 'Regal2Apartment', 'Appartement Régal 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_07_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.545,\"y\":326.659,\"z\":186.313}', 1300000),
(33, 'Regal3Apartment', 'Appartement Régal 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_07_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.087,\"y\":331.429,\"z\":195.123}', 1300000),
(34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_08_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.187,\"y\":328.47,\"z\":210.396}', 1300000),
(35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_08_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.658,\"y\":326.563,\"z\":186.313}', 1300000),
(36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_08_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.287,\"y\":331.084,\"z\":195.086}', 1300000),
(37, 'IntegrityWay', '4 Integrity Way', '{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}', NULL, NULL, '{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}', '{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}', 1700000),
(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}', '{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}', 1700000),
(40, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}', NULL, NULL, '{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}', 1700000),
(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}', 1700000);

-- --------------------------------------------------------

--
-- Table structure for table `quincaillerie`
--

CREATE TABLE `quincaillerie` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quincaillerie`
--

INSERT INTO `quincaillerie` (`id`, `name`, `item`, `price`) VALUES
(23, 'LSQuincaillerie', 'tenuebraquage', 1500),
(24, 'LSQuincaillerie', 'tenuecasa', 1500),
(25, 'LSQuincaillerie', 'clip', 750),
(32, 'LSQuincaillerie', 'headbag', 2500),
(34, 'LSQuincaillerie', 'COMPONENT_KNUCKLE_VARMOD_PLAYER', 11500),
(35, 'LSQuincaillerie', 'COMPONENT_KNUCKLE_VARMOD_LOVE', 12000),
(36, 'LSQuincaillerie', 'COMPONENT_KNUCKLE_VARMOD_DOLLAR', 12500),
(37, 'LSQuincaillerie', 'COMPONENT_KNUCKLE_VARMOD_VAGOS', 13000),
(38, 'LSQuincaillerie', 'COMPONENT_KNUCKLE_VARMOD_HATE', 13500),
(39, 'LSQuincaillerie', 'COMPONENT_KNUCKLE_VARMOD_DIAMOND', 14000),
(40, 'LSQuincaillerie', 'COMPONENT_KNUCKLE_VARMOD_PIMP', 14500),
(41, 'LSQuincaillerie', 'COMPONENT_KNUCKLE_VARMOD_KING', 15000),
(42, 'LSQuincaillerie', 'COMPONENT_KNUCKLE_VARMOD_BALLAS', 15500),
(43, 'LSQuincaillerie', 'COMPONENT_SWITCHBLADE_VARMOD_VAR1', 14500),
(44, 'LSQuincaillerie', 'COMPONENT_SWITCHBLADE_VARMOD_VAR2', 15000),
(45, 'LSQuincaillerie', 'COMPONENT_REVOLVER_VARMOD_BOSS', 14500),
(46, 'LSQuincaillerie', 'COMPONENT_REVOLVER_VARMOD_GOON', 15500),
(47, 'LSQuincaillerie', 'COMPONENT_VARMOD_LOWRIDER', 25000),
(48, 'LSQuincaillerie', 'COMPONENT_VARMOD_LUXE', 50000),
(49, 'LSQuincaillerie', 'COMPONENT_AT_PI_SUPP', 15000),
(50, 'LSQuincaillerie', 'COMPONENT_AT_AR_SUPP_02', 25000),
(51, 'LSQuincaillerie', 'COMPONENT_AT_PI_FLSH', 10000),
(52, 'LSQuincaillerie', 'COMPONENT_AT_AR_FLSH', 15000),
(53, 'LSQuincaillerie', 'COMPONENT_AT_AR_AFGRIP', 30000),
(54, 'LSQuincaillerie', 'COMPONENT_AT_SCOPE_MACRO', 35000),
(55, 'LSQuincaillerie', 'COMPONENT_AT_PI_CLIP_02', 30000),
(56, 'LSQuincaillerie', 'COMPONENT_AT_AR_CLIP_02', 40000),
(57, 'LSQuincaillerie', 'COMPONENT_AT_AR_CLIP_03', 60000),
(58, 'LSQuincaillerie', 'TINT_01', 5500),
(59, 'LSQuincaillerie', 'TINT_02', 5500),
(60, 'LSQuincaillerie', 'TINT_03', 5500),
(61, 'LSQuincaillerie', 'TINT_04', 5500),
(62, 'LSQuincaillerie', 'TINT_06', 5500),
(63, 'LSQuincaillerie', 'TINT_07', 5500);

-- --------------------------------------------------------

--
-- Table structure for table `racket_organisation`
--

CREATE TABLE `racket_organisation` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `racket_organisation`
--

INSERT INTO `racket_organisation` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `rented_aircrafts`
--

CREATE TABLE `rented_aircrafts` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rented_boats`
--

CREATE TABLE `rented_boats` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
(1, 'TwentyFourSeven', 'bread', 5),
(2, 'TwentyFourSeven', 'water', 8),
(3, 'RobsLiquor', 'bread', 5),
(4, 'RobsLiquor', 'water', 8),
(5, 'LTDgasoline', 'bread', 5),
(6, 'LTDgasoline', 'water', 8),
(7, 'LTDgasoline', 'croquettes', 10),
(8, 'TwentyFourSeven', 'chocolat', 15),
(9, 'TwentyFourSeven', 'beef', 15),
(10, 'TwentyFourSeven', 'hamburger', 10),
(11, 'TwentyFourSeven', 'cupcake', 15),
(13, 'TwentyFourSeven', 'cocacola', 5),
(14, 'TwentyFourSeven', 'breadsaucisson', 6),
(15, 'TwentyFourSeven', 'hamburgerplate', 8),
(16, 'TwentyFourSeven', 'soda', 10),
(17, 'RobsLiquor', 'chocolat', 15),
(18, 'RobsLiquor', 'beef', 15),
(19, 'RobsLiquor', 'hamburger', 17),
(20, 'RobsLiquor', 'cupcake', 15),
(21, 'RobsLiquor', 'cocacola', 10),
(22, 'RobsLiquor', 'breadsaucisson', 14),
(23, 'RobsLiquor', 'hamburgerplate', 10),
(24, 'RobsLiquor', 'soda', 13),
(25, 'LTDgasoline', 'chocolat', 15),
(26, 'LTDgasoline', 'beef', 12),
(27, 'LTDgasoline', 'hamburger', 10),
(28, 'LTDgasoline', 'cupcake', 9),
(29, 'LTDgasoline', 'cocacola', 11),
(30, 'LTDgasoline', 'breadsaucisson', 13),
(31, 'LTDgasoline', 'hamburgerplate', 15),
(32, 'LTDgasoline', 'soda', 12),
(48, 'LTDgasoline', 'croquettes', 20),
(49, 'LTDgasoline', 'croquettes', 20),
(50, 'LTDgasoline', 'croquettes', 20);

-- --------------------------------------------------------

--
-- Table structure for table `shops2`
--

CREATE TABLE `shops2` (
  `id` int(11) NOT NULL,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shops2`
--

INSERT INTO `shops2` (`id`, `store`, `item`, `price`) VALUES
(1, 'narekshop', 'yusuf', 30),
(2, 'narekshop', 'grip', 30),
(3, 'narekshop', 'flashlight', 30),
(4, 'narekshop', 'silencieux', 15),
(5, 'narekshop', 'clip', 15);

-- --------------------------------------------------------

--
-- Table structure for table `sim`
--

CREATE TABLE `sim` (
  `identifier` varchar(50) NOT NULL,
  `phone_number` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sim`
--

INSERT INTO `sim` (`identifier`, `phone_number`) VALUES;

-- --------------------------------------------------------

--
-- Table structure for table `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `trunk_inventory`
--

CREATE TABLE `trunk_inventory` (
  `id` int(11) NOT NULL,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trunk_inventory`
--

INSERT INTO `trunk_inventory` (`id`, `plate`, `data`, `owned`) VALUES
(171, 'EQV 906 ', '{\"coffre\":[]}', 1),
(212, 'TGE 890 ', '{\"weapons\":[{\"ammo\":416,\"name\":\"WEAPON_COMBATPISTOL\"}]}', 1),
(242, 'SRA 699 ', '{}', 0),
(243, '22TJM183', '{}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `twitter_accounts`
--

CREATE TABLE `twitter_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `twitter_accounts`
--

INSERT INTO `twitter_accounts` (`id`, `username`, `password`, `avatar_url`) VALUES;

-- --------------------------------------------------------

--
-- Table structure for table `twitter_likes`
--

CREATE TABLE `twitter_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `twitter_likes`
--

INSERT INTO `twitter_likes` (`id`, `authorId`, `tweetId`) VALUES
(98, 142, 220),
(99, 144, 222),
(101, 144, 228),
(102, 143, 228),
(103, 143, 227),
(104, 143, 236),
(105, 143, 243),
(107, 143, 250),
(108, 143, 251),
(109, 143, 255),
(110, 144, 253),
(111, 144, 256),
(112, 143, 257),
(113, 148, 258),
(114, 149, 258),
(115, 149, 259),
(116, 148, 259),
(117, 148, 260),
(118, 149, 228),
(119, 148, 228),
(120, 149, 256),
(121, 149, 257),
(122, 149, 260),
(123, 149, 255);

-- --------------------------------------------------------

--
-- Table structure for table `twitter_tweets`
--

CREATE TABLE `twitter_tweets` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `twitter_tweets`
--

INSERT INTO `twitter_tweets` (`id`, `authorId`, `realUser`, `message`, `time`, `likes`) VALUES;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `job` varchar(255) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `job2` varchar(255) COLLATE utf8mb4_bin DEFAULT 'unemployed2',
  `job2_grade` int(11) DEFAULT 0,
  `loadout` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `status` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `animal` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `vote` varchar(254) COLLATE utf8mb4_bin DEFAULT NULL,
  `jail` int(11) NOT NULL DEFAULT 0,
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `skills` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`identifier`, `license`, `name`, `skin`, `job`, `job_grade`, `job2`, `job2_grade`, `loadout`, `position`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `status`, `last_property`, `animal`, `vote`, `jail`, `phone_number`, `skills`, `money`, `bank`, `is_dead`) VALUES;
-- --------------------------------------------------------

--
-- Table structure for table `user_accessories`
--

CREATE TABLE `user_accessories` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `mask` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin DEFAULT 'Masque',
  `type` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `index` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `money` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_accounts`
--

INSERT INTO `user_accounts` (`id`, `identifier`, `name`, `money`) VALUES;

-- --------------------------------------------------------

--
-- Table structure for table `user_inventory`
--

CREATE TABLE `user_inventory` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_inventory`
--

INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES;

-- --------------------------------------------------------

--
-- Table structure for table `user_lastcharacter`
--

CREATE TABLE `user_lastcharacter` (
  `steamid` varchar(255) NOT NULL,
  `charid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_licenses`
--

INSERT INTO `user_licenses` (`id`, `type`, `owner`) VALUES;

-- --------------------------------------------------------

--
-- Table structure for table `user_policeArmory`
--

CREATE TABLE `user_policeArmory` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `weapons` longtext COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user_sim`
--

CREATE TABLE `user_sim` (
  `id` int(11) NOT NULL,
  `identifier` varchar(555) NOT NULL,
  `number` varchar(555) NOT NULL,
  `label` varchar(555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_tenue`
--

CREATE TABLE `user_tenue` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `tenue` longtext COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('Akuma', 'AKUMA', 67500, 'motorcycles'),
('Alpha', 'alpha', 160000, 'sports'),
('Baller', 'baller2', 80000, 'suvs'),
('Banshee', 'banshee', 170000, 'sports'),
('Banshee 900R', 'banshee2', 255000, 'super'),
('Bati 801', 'bati', 62000, 'motorcycles'),
('Bati 801RR', 'bati2', 89000, 'motorcycles'),
('Bestia GTS', 'bestiagts', 155000, 'sports'),
('BF400', 'bf400', 56500, 'motorcycles'),
('Bison', 'bison', 45000, 'vans'),
('Blista', 'blista', 18000, 'compacts'),
('Bobcat XL', 'bobcatxl', 32000, 'vans'),
('Brawler', 'brawler', 45000, 'offroad'),
('Brioso R/A', 'brioso', 18000, 'compacts'),
('Btype', 'btype', 62000, 'sportsclassics'),
('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
('Buffalo', 'buffalo', 112000, 'sports'),
('Buffalo S', 'buffalo2', 240000, 'sports'),
('Bullet', 'bullet', 90000, 'super'),
('Burrito', 'burrito3', 69000, 'vans'),
('Camper', 'camper', 42000, 'vans'),
('Carbonizzare', 'carbonizzare', 275000, 'sports'),
('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
('Casco', 'casco', 30000, 'sportsclassics'),
('Cavalcade', 'cavalcade2', 55000, 'suvs'),
('Cheetah', 'cheetah', 375000, 'super'),
('Chimera', 'chimera', 38000, 'motorcycles'),
('Chino', 'chino', 35000, 'muscle'),
('Chino Luxe', 'chino2', 49000, 'muscle'),
('Cliffhanger', 'cliffhanger', 29500, 'motorcycles'),
('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
('Comet', 'comet2', 365000, 'sports'),
('Contender', 'contender', 70000, 'suvs'),
('Coquette', 'coquette', 365000, 'sports'),
('Coquette Classic', 'coquette2', 240000, 'sportsclassics'),
('Coquette BlackFin', 'coquette3', 155000, 'muscle'),
('Dominator', 'dominator', 95000, 'muscle'),
('Double T', 'double', 48000, 'motorcycles'),
('Dubsta', 'dubsta', 45000, 'suvs'),
('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
('Dukes', 'dukes', 28000, 'muscle'),
('Elegy', 'elegy2', 138500, 'sports'),
('Enduro', 'enduro', 5500, 'motorcycles'),
('Exemplar', 'exemplar', 32000, 'coupes'),
('F620', 'f620', 40000, 'coupes'),
('Faction', 'faction', 20000, 'muscle'),
('Faction Rider', 'faction2', 30000, 'muscle'),
('Faction XL', 'faction3', 40000, 'muscle'),
('Faggio', 'faggio', 13900, 'motorcycles'),
('Vespa', 'faggio2', 12800, 'motorcycles'),
('Felon', 'felon', 42000, 'coupes'),
('Felon GT', 'felon2', 55000, 'coupes'),
('Feltzer', 'feltzer2', 55000, 'sports'),
('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
('Furore GT', 'furoregt', 45000, 'sports'),
('Fusilade', 'fusilade', 40000, 'sports'),
('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
('Gauntlet', 'gauntlet', 30000, 'muscle'),
('Gang Burrito', 'gburrito', 45000, 'vans'),
('Burrito', 'gburrito2', 29000, 'vans'),
('Grabger', 'granger', 50000, 'suvs'),
('Gresley', 'gresley', 47500, 'suvs'),
('Guardian', 'guardian', 45000, 'offroad'),
('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
('Hermes', 'hermes', 535000, 'muscle'),
('Hexer', 'hexer', 12000, 'motorcycles'),
('Hotknife', 'hotknife', 125000, 'muscle'),
('Huntley S', 'huntley', 40000, 'suvs'),
('Hustler', 'hustler', 625000, 'muscle'),
('Infernus', 'infernus', 28000, 'super'),
('Innovation', 'innovation', 23500, 'motorcycles'),
('Jackal', 'jackal', 38000, 'coupes'),
('Jester(Racecar)', 'jester2', 135000, 'sports'),
('Landstalker', 'landstalker', 35000, 'suvs'),
('Manana', 'manana', 12800, 'sportsclassics'),
('Manchez', 'manchez', 75300, 'motorcycles'),
('Massacro', 'massacro', 65000, 'sports'),
('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
('Mesa', 'mesa', 16000, 'suvs'),
('Mesa Trail', 'mesa3', 40000, 'suvs'),
('Minivan', 'minivan', 13000, 'vans'),
('Monroe', 'monroe', 55000, 'sportsclassics'),
('Moonbeam', 'moonbeam', 18000, 'vans'),
('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
('Nemesis', 'nemesis', 35800, 'motorcycles'),
('9F', 'ninef', 165000, 'sports'),
('9F Cabrio', 'ninef2', 180000, 'sports'),
('Omnis', 'omnis', 130000, 'sports'),
('Oracle XS', 'oracle2', 35000, 'coupes'),
('Panto', 'panto', 0, 'compacts'),
('Paradise', 'paradise', 19000, 'vans'),
('Pfister', 'pfister811', 285000, 'super'),
('Picador', 'picador', 48000, 'muscle'),
('Pigalle', 'pigalle', 160000, 'sportsclassics'),
('Prairie', 'prairie', 22000, 'compacts'),
('Premier', 'premier', 28000, 'sedans'),
('Radius', 'radi', 29000, 'suvs'),
('raiden', 'raiden', 375000, 'sports'),
('Rapid GT', 'rapidgt', 135000, 'sports'),
('Rapid GT Convertible', 'rapidgt2', 145000, 'sports'),
('Rapid GT3', 'rapidgt3', 210000, 'sportsclassics'),
('Reaper', 'reaper', 750000, 'super'),
('Rebel', 'rebel2', 35000, 'offroad'),
('Regina', 'regina', 15000, 'sedans'),
('Revolter', 'revolter', 610000, 'sports'),
('Rocoto', 'rocoto', 55000, 'suvs'),
('Rumpo', 'rumpo', 45000, 'vans'),
('Rumpo Trail', 'rumpo3', 120000, 'vans'),
('Sabre Turbo', 'sabregt', 30000, 'muscle'),
('Sabre GT', 'sabregt2', 75000, 'muscle'),
('Sanchez', 'sanchez', 55300, 'motorcycles'),
('Sandking', 'sandking', 155000, 'offroad'),
('SC 1', 'sc1', 803000, 'super'),
('Schafter', 'schafter2', 25000, 'sedans'),
('Schafter V12', 'schafter3', 50000, 'sports'),
('Seminole', 'seminole', 25000, 'suvs'),
('Seven 70', 'seven70', 239500, 'sports'),
('Slam Van', 'slamvan3', 11500, 'muscle'),
('Sovereign', 'sovereign', 22000, 'motorcycles'),
('Sultan', 'sultan', 115000, 'sports'),
('Sultan RS', 'sultanrs', 165000, 'super'),
('Surano', 'surano', 50000, 'sports'),
('Tailgater', 'tailgater', 130000, 'sedans'),
('Verlierer', 'verlierer2', 70000, 'sports'),
('Vigero', 'vigero', 12500, 'muscle'),
('Virgo', 'virgo', 14000, 'muscle'),
('Voltic', 'voltic', 190000, 'super'),
('Vortex', 'vortex', 49800, 'motorcycles'),
('Warrener', 'warrener', 24000, 'sedans'),
('XLS', 'xls', 32000, 'suvs'),
('Youga', 'youga', 40800, 'vans');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles_for_sale`
--

CREATE TABLE `vehicles_for_sale` (
  `id` int(11) NOT NULL,
  `seller` varchar(50) NOT NULL,
  `vehicleProps` longtext NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('coupes', 'Coupés'),
('motorcycles', 'Motos'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('suvs', 'SUVs'),
('vans', 'Vans');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_sold`
--

INSERT INTO `vehicle_sold` (`client`, `model`, `plate`, `soldby`, `date`) VALUES;

-- --------------------------------------------------------

--
-- Table structure for table `warrants_list`
--

CREATE TABLE `warrants_list` (
  `id` int(11) NOT NULL,
  `json_data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `weashops`
--

CREATE TABLE `weashops` (
  `id` int(11) NOT NULL,
  `zone` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weashops`
--

INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
(1, 'GunShop', 'WEAPON_PISTOL', 300),
(2, 'BlackWeashop', 'WEAPON_PISTOL', 500),
(3, 'GunShop', 'WEAPON_FLASHLIGHT', 60),
(4, 'BlackWeashop', 'WEAPON_FLASHLIGHT', 70),
(5, 'GunShop', 'WEAPON_MACHETE', 90),
(6, 'BlackWeashop', 'WEAPON_MACHETE', 110),
(7, 'GunShop', 'WEAPON_NIGHTSTICK', 150),
(8, 'BlackWeashop', 'WEAPON_NIGHTSTICK', 150),
(9, 'GunShop', 'WEAPON_BAT', 100),
(10, 'BlackWeashop', 'WEAPON_BAT', 100),
(11, 'GunShop', 'WEAPON_STUNGUN', 50),
(12, 'BlackWeashop', 'WEAPON_STUNGUN', 50),
(13, 'GunShop', 'WEAPON_MICROSMG', 1400),
(14, 'BlackWeashop', 'WEAPON_MICROSMG', 1700),
(15, 'GunShop', 'WEAPON_PUMPSHOTGUN', 3400),
(16, 'BlackWeashop', 'WEAPON_PUMPSHOTGUN', 3500),
(17, 'GunShop', 'WEAPON_ASSAULTRIFLE', 10000),
(18, 'BlackWeashop', 'WEAPON_ASSAULTRIFLE', 11000),
(19, 'GunShop', 'WEAPON_SPECIALCARBINE', 15000),
(20, 'BlackWeashop', 'WEAPON_SPECIALCARBINE', 16500),
(21, 'GunShop', 'WEAPON_SNIPERRIFLE', 22000),
(22, 'BlackWeashop', 'WEAPON_SNIPERRIFLE', 24000),
(23, 'GunShop', 'WEAPON_FIREWORK', 18000),
(24, 'BlackWeashop', 'WEAPON_FIREWORK', 20000),
(25, 'GunShop', 'WEAPON_GRENADE', 500),
(26, 'BlackWeashop', 'WEAPON_GRENADE', 650),
(27, 'GunShop', 'WEAPON_BZGAS', 200),
(28, 'BlackWeashop', 'WEAPON_BZGAS', 350),
(29, 'GunShop', 'WEAPON_FIREEXTINGUISHER', 100),
(30, 'BlackWeashop', 'WEAPON_FIREEXTINGUISHER', 100),
(31, 'GunShop', 'WEAPON_BALL', 50),
(32, 'BlackWeashop', 'WEAPON_BALL', 50),
(33, 'GunShop', 'WEAPON_SMOKEGRENADE', 100),
(34, 'BlackWeashop', 'WEAPON_SMOKEGRENADE', 100),
(35, 'BlackWeashop', 'WEAPON_APPISTOL', 1100),
(36, 'BlackWeashop', 'WEAPON_CARBINERIFLE', 12000),
(37, 'BlackWeashop', 'WEAPON_HEAVYSNIPER', 30000),
(38, 'BlackWeashop', 'WEAPON_MINIGUN', 45000),
(39, 'BlackWeashop', 'WEAPON_RAILGUN', 50000),
(40, 'BlackWeashop', 'WEAPON_STICKYBOMB', 500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aircraftdealer_aircrafts`
--
ALTER TABLE `aircraftdealer_aircrafts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aircrafts`
--
ALTER TABLE `aircrafts`
  ADD PRIMARY KEY (`model`);

--
-- Indexes for table `aircraft_categories`
--
ALTER TABLE `aircraft_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `arrests_list`
--
ALTER TABLE `arrests_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `baninfo`
--
ALTER TABLE `baninfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banlist`
--
ALTER TABLE `banlist`
  ADD PRIMARY KEY (`license`);

--
-- Indexes for table `banlisthistory`
--
ALTER TABLE `banlisthistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `boatdealer_boats`
--
ALTER TABLE `boatdealer_boats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `boats`
--
ALTER TABLE `boats`
  ADD PRIMARY KEY (`model`);

--
-- Indexes for table `boat_categories`
--
ALTER TABLE `boat_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `bolos_list`
--
ALTER TABLE `bolos_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `character_clothing`
--
ALTER TABLE `character_clothing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_character_clothing_characters` (`char_id`);

--
-- Indexes for table `convoy_registered_list`
--
ALTER TABLE `convoy_registered_list`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dock`
--
ALTER TABLE `dock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dock_categories`
--
ALTER TABLE `dock_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dock_vehicles`
--
ALTER TABLE `dock_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types_aubervillier`
--
ALTER TABLE `fine_types_aubervillier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types_bac`
--
ALTER TABLE `fine_types_bac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types_ballas`
--
ALTER TABLE `fine_types_ballas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types_biker`
--
ALTER TABLE `fine_types_biker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types_bloods`
--
ALTER TABLE `fine_types_bloods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types_delattre`
--
ALTER TABLE `fine_types_delattre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types_drancy`
--
ALTER TABLE `fine_types_drancy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types_families`
--
ALTER TABLE `fine_types_families`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types_mafia`
--
ALTER TABLE `fine_types_mafia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types_santos`
--
ALTER TABLE `fine_types_santos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types_vagos`
--
ALTER TABLE `fine_types_vagos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types_zac`
--
ALTER TABLE `fine_types_zac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `glovebox_inventory`
--
ALTER TABLE `glovebox_inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plate` (`plate`);

--
-- Indexes for table `impounded_vehicles`
--
ALTER TABLE `impounded_vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner` (`owner`(191)),
  ADD KEY `plate` (`plate`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `jail`
--
ALTER TABLE `jail`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jsfour_criminalrecord`
--
ALTER TABLE `jsfour_criminalrecord`
  ADD PRIMARY KEY (`offense`);

--
-- Indexes for table `jsfour_criminaluserinfo`
--
ALTER TABLE `jsfour_criminaluserinfo`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Indexes for table `motodealer_motos`
--
ALTER TABLE `motodealer_motos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `motos`
--
ALTER TABLE `motos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `motos_categories`
--
ALTER TABLE `motos_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `open_car`
--
ALTER TABLE `open_car`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owned_aircrafts`
--
ALTER TABLE `owned_aircrafts`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `owned_boats`
--
ALTER TABLE `owned_boats`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `owned_properties`
--
ALTER TABLE `owned_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playerstattoos`
--
ALTER TABLE `playerstattoos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quincaillerie`
--
ALTER TABLE `quincaillerie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `racket_organisation`
--
ALTER TABLE `racket_organisation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rented_aircrafts`
--
ALTER TABLE `rented_aircrafts`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `rented_boats`
--
ALTER TABLE `rented_boats`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops2`
--
ALTER TABLE `shops2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `trunk_inventory`
--
ALTER TABLE `trunk_inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plate` (`plate`);

--
-- Indexes for table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  ADD KEY `FK_twitter_likes_twitter_tweets` (`tweetId`);

--
-- Indexes for table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_tweets_twitter_accounts` (`authorId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `user_accessories`
--
ALTER TABLE `user_accessories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_inventory`
--
ALTER TABLE `user_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_policeArmory`
--
ALTER TABLE `user_policeArmory`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `user_sim`
--
ALTER TABLE `user_sim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_tenue`
--
ALTER TABLE `user_tenue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Indexes for table `vehicles_for_sale`
--
ALTER TABLE `vehicles_for_sale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `warrants_list`
--
ALTER TABLE `warrants_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weashops`
--
ALTER TABLE `weashops`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=838;

--
-- AUTO_INCREMENT for table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25880;

--
-- AUTO_INCREMENT for table `aircraftdealer_aircrafts`
--
ALTER TABLE `aircraftdealer_aircrafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `arrests_list`
--
ALTER TABLE `arrests_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `baninfo`
--
ALTER TABLE `baninfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `banlisthistory`
--
ALTER TABLE `banlisthistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `boatdealer_boats`
--
ALTER TABLE `boatdealer_boats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bolos_list`
--
ALTER TABLE `bolos_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=921;

--
-- AUTO_INCREMENT for table `character_clothing`
--
ALTER TABLE `character_clothing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1327;

--
-- AUTO_INCREMENT for table `dock`
--
ALTER TABLE `dock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `dock_categories`
--
ALTER TABLE `dock_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dock_vehicles`
--
ALTER TABLE `dock_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `fine_types_aubervillier`
--
ALTER TABLE `fine_types_aubervillier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fine_types_bac`
--
ALTER TABLE `fine_types_bac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `fine_types_ballas`
--
ALTER TABLE `fine_types_ballas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fine_types_biker`
--
ALTER TABLE `fine_types_biker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fine_types_bloods`
--
ALTER TABLE `fine_types_bloods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fine_types_delattre`
--
ALTER TABLE `fine_types_delattre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fine_types_drancy`
--
ALTER TABLE `fine_types_drancy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fine_types_families`
--
ALTER TABLE `fine_types_families`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fine_types_mafia`
--
ALTER TABLE `fine_types_mafia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fine_types_santos`
--
ALTER TABLE `fine_types_santos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fine_types_vagos`
--
ALTER TABLE `fine_types_vagos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fine_types_zac`
--
ALTER TABLE `fine_types_zac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `glovebox_inventory`
--
ALTER TABLE `glovebox_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `impounded_vehicles`
--
ALTER TABLE `impounded_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=634;

--
-- AUTO_INCREMENT for table `motodealer_motos`
--
ALTER TABLE `motodealer_motos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `motos`
--
ALTER TABLE `motos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `motos_categories`
--
ALTER TABLE `motos_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `open_car`
--
ALTER TABLE `open_car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2214;

--
-- AUTO_INCREMENT for table `owned_properties`
--
ALTER TABLE `owned_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1281;

--
-- AUTO_INCREMENT for table `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11693;

--
-- AUTO_INCREMENT for table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT for table `playerstattoos`
--
ALTER TABLE `playerstattoos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1424;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `quincaillerie`
--
ALTER TABLE `quincaillerie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `racket_organisation`
--
ALTER TABLE `racket_organisation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `shops2`
--
ALTER TABLE `shops2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `trunk_inventory`
--
ALTER TABLE `trunk_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT for table `user_accessories`
--
ALTER TABLE `user_accessories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT for table `user_inventory`
--
ALTER TABLE `user_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1156;

--
-- AUTO_INCREMENT for table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_sim`
--
ALTER TABLE `user_sim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `user_tenue`
--
ALTER TABLE `user_tenue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `vehicles_for_sale`
--
ALTER TABLE `vehicles_for_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warrants_list`
--
ALTER TABLE `warrants_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `weashops`
--
ALTER TABLE `weashops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `character_clothing`
--
ALTER TABLE `character_clothing`
  ADD CONSTRAINT `FK_character_clothing_characters` FOREIGN KEY (`char_id`) REFERENCES `characters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  ADD CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

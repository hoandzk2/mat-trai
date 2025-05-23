-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for mattrai
CREATE DATABASE IF NOT EXISTS `mattrai` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;
USE `mattrai`;

-- Dumping structure for table mattrai.apartments
CREATE TABLE IF NOT EXISTS `apartments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `citizenid` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mattrai.apartments: ~0 rows (approximately)
INSERT IGNORE INTO `apartments` (`id`, `name`, `type`, `label`, `citizenid`) VALUES
	(2, 'apartment5248', 'apartment5', 'Fantastic Plaza 248', 'WCV55563'),
	(3, 'apartment32653', 'apartment3', 'Integrity Way 2653', 'VYZ62067');

-- Dumping structure for table mattrai.bank_accounts
CREATE TABLE IF NOT EXISTS `bank_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `account_name` varchar(50) DEFAULT NULL,
  `account_balance` int(11) NOT NULL DEFAULT 0,
  `account_type` enum('shared','job','gang') NOT NULL,
  `users` longtext DEFAULT '[]',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `account_name` (`account_name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mattrai.bank_accounts: ~20 rows (approximately)
INSERT IGNORE INTO `bank_accounts` (`id`, `citizenid`, `account_name`, `account_balance`, `account_type`, `users`) VALUES
	(1, NULL, 'mechanic', 0, 'job', '[]'),
	(2, NULL, 'taxi', 0, 'job', '[]'),
	(3, NULL, 'bus', 0, 'job', '[]'),
	(4, NULL, 'cardealer', 0, 'job', '[]'),
	(5, NULL, 'lawyer', 0, 'job', '[]'),
	(6, NULL, 'unemployed', 0, 'job', '[]'),
	(7, NULL, 'reporter', 0, 'job', '[]'),
	(8, NULL, 'garbage', 0, 'job', '[]'),
	(9, NULL, 'bennys', 0, 'job', '[]'),
	(10, NULL, 'police', 0, 'job', '[]'),
	(11, NULL, 'hotdog', 0, 'job', '[]'),
	(12, NULL, 'mechanic2', 0, 'job', '[]'),
	(13, NULL, 'ambulance', 0, 'job', '[]'),
	(14, NULL, 'trucker', 0, 'job', '[]'),
	(15, NULL, 'mechanic3', 0, 'job', '[]'),
	(16, NULL, 'judge', 0, 'job', '[]'),
	(17, NULL, 'realestate', 0, 'job', '[]'),
	(18, NULL, 'beeker', 0, 'job', '[]'),
	(19, NULL, 'vineyard', 0, 'job', '[]'),
	(20, NULL, 'tow', 0, 'job', '[]');

-- Dumping structure for table mattrai.bank_statements
CREATE TABLE IF NOT EXISTS `bank_statements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `account_name` varchar(50) DEFAULT 'checking',
  `amount` int(11) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  `statement_type` enum('deposit','withdraw') DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mattrai.bank_statements: ~0 rows (approximately)

-- Dumping structure for table mattrai.bans
CREATE TABLE IF NOT EXISTS `bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `discord` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `expire` int(11) DEFAULT NULL,
  `bannedby` varchar(255) NOT NULL DEFAULT 'LeBanhammer',
  PRIMARY KEY (`id`),
  KEY `license` (`license`),
  KEY `discord` (`discord`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mattrai.bans: ~0 rows (approximately)

-- Dumping structure for table mattrai.crypto
CREATE TABLE IF NOT EXISTS `crypto` (
  `crypto` varchar(50) NOT NULL DEFAULT 'qbit',
  `worth` int(11) NOT NULL DEFAULT 0,
  `history` text DEFAULT NULL,
  PRIMARY KEY (`crypto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table mattrai.crypto: ~0 rows (approximately)
INSERT IGNORE INTO `crypto` (`crypto`, `worth`, `history`) VALUES
	('qbit', 1000, '[{"PreviousWorth":1000,"NewWorth":1000}]');

-- Dumping structure for table mattrai.crypto_transactions
CREATE TABLE IF NOT EXISTS `crypto_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `message` varchar(50) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mattrai.crypto_transactions: ~0 rows (approximately)

-- Dumping structure for table mattrai.dealers
CREATE TABLE IF NOT EXISTS `dealers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `coords` longtext DEFAULT NULL,
  `time` longtext DEFAULT NULL,
  `createdby` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mattrai.dealers: ~0 rows (approximately)

-- Dumping structure for table mattrai.houselocations
CREATE TABLE IF NOT EXISTS `houselocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `coords` text DEFAULT NULL,
  `owned` tinyint(1) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `tier` tinyint(4) DEFAULT NULL,
  `garage` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mattrai.houselocations: ~0 rows (approximately)

-- Dumping structure for table mattrai.house_plants
CREATE TABLE IF NOT EXISTS `house_plants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `building` varchar(50) DEFAULT NULL,
  `stage` int(11) DEFAULT 1,
  `sort` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `food` int(11) DEFAULT 100,
  `health` int(11) DEFAULT 100,
  `progress` int(11) DEFAULT 0,
  `coords` text DEFAULT NULL,
  `plantid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `building` (`building`),
  KEY `plantid` (`plantid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mattrai.house_plants: ~0 rows (approximately)

-- Dumping structure for table mattrai.inventories
CREATE TABLE IF NOT EXISTS `inventories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL,
  `items` longtext DEFAULT '[]',
  PRIMARY KEY (`identifier`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mattrai.inventories: ~0 rows (approximately)
INSERT IGNORE INTO `inventories` (`id`, `identifier`, `items`) VALUES
	(1, 'glovebox-43VHN562', '[]');

-- Dumping structure for table mattrai.lapraces
CREATE TABLE IF NOT EXISTS `lapraces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `checkpoints` text DEFAULT NULL,
  `records` text DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `raceid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `raceid` (`raceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mattrai.lapraces: ~0 rows (approximately)

-- Dumping structure for table mattrai.occasion_vehicles
CREATE TABLE IF NOT EXISTS `occasion_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `mods` text DEFAULT NULL,
  `occasionid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `occasionId` (`occasionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mattrai.occasion_vehicles: ~0 rows (approximately)

-- Dumping structure for table mattrai.phone_gallery
CREATE TABLE IF NOT EXISTS `phone_gallery` (
  `citizenid` varchar(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mattrai.phone_gallery: ~0 rows (approximately)

-- Dumping structure for table mattrai.phone_invoices
CREATE TABLE IF NOT EXISTS `phone_invoices` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `society` tinytext DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `sendercitizenid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mattrai.phone_invoices: ~0 rows (approximately)

-- Dumping structure for table mattrai.phone_messages
CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `messages` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `number` (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mattrai.phone_messages: ~0 rows (approximately)

-- Dumping structure for table mattrai.phone_tweets
CREATE TABLE IF NOT EXISTS `phone_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `firstName` varchar(25) DEFAULT NULL,
  `lastName` varchar(25) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `url` text DEFAULT NULL,
  `picture` varchar(512) DEFAULT './img/default.png',
  `tweetId` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mattrai.phone_tweets: ~0 rows (approximately)

-- Dumping structure for table mattrai.players
CREATE TABLE IF NOT EXISTS `players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `license` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `money` text NOT NULL,
  `charinfo` text DEFAULT NULL,
  `job` text NOT NULL,
  `gang` text DEFAULT NULL,
  `position` text NOT NULL,
  `metadata` text NOT NULL,
  `inventory` longtext DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`citizenid`),
  KEY `id` (`id`),
  KEY `last_updated` (`last_updated`),
  KEY `license` (`license`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mattrai.players: ~2 rows (approximately)
INSERT IGNORE INTO `players` (`id`, `citizenid`, `cid`, `license`, `name`, `money`, `charinfo`, `job`, `gang`, `position`, `metadata`, `inventory`, `last_updated`) VALUES
	(21, 'VYZ62067', 1, 'license:e69768fc5ff1a0004083f16d36044a39ee2728e9', 'hoan2108', '{"cash":500,"crypto":0,"bank":5000}', '{"lastname":"Tixi","firstname":"Hoan","nationality":"Vietnam","cid":1,"birthdate":"2002-05-21","phone":"1741956357","gender":0,"account":"US02QBCore3268757432"}', '{"onduty":false,"grade":{"name":"Freelancer","level":0,"isboss":false},"payment":10,"label":"Civilian","type":"none","name":"unemployed","isboss":false}', '{"name":"none","grade":{"name":"Unaffiliated","level":0,"isboss":false},"label":"No Gang","isboss":false}', '{"x":327.5472412109375,"y":-205.08131408691407,"z":54.06591796875}', '{"isdead":false,"licences":{"weapon":false,"driver":true,"business":false},"walletid":"QB-82721232","phonedata":{"SerialNumber":99155470,"InstalledApps":[]},"tracker":false,"ishandcuffed":false,"hunger":41.19999999999992,"vehicleKeys":{"21YJG802":true,"80GZE691":true,"01AEM866":true,"67WLS213":true},"inlaststand":false,"jailitems":[],"rep":[],"inside":{"apartment":[]},"criminalrecord":{"hasRecord":false},"callsign":"NO CALLSIGN","status":[],"thirst":46.80000000000003,"phone":[],"injail":0,"fingerprint":"rk846f86FMQ5891","stress":0,"armor":0,"bloodtype":"A-"}', '[{"type":"item","info":{"type":"Class C Driver License","firstname":"Hoan","lastname":"Tixi","birthdate":"2002-05-21"},"amount":1,"name":"driver_license","slot":1},{"type":"item","info":{"citizenid":"VYZ62067","birthdate":"2002-05-21","lastname":"Tixi","nationality":"Vietnam","firstname":"Hoan","gender":0},"amount":1,"name":"id_card","slot":2},{"type":"item","info":[],"amount":1,"name":"phone","slot":3},{"type":"weapon","info":{"quality":100,"serie":"12Xfq6Ui223OXjr"},"amount":1,"name":"weapon_specialcarbine_mk2","slot":4},{"type":"weapon","info":{"quality":100,"serie":"12IpH2Qz273kGQX"},"amount":1,"name":"weapon_specialcarbine_mk2","slot":5},{"type":"weapon","info":{"quality":100,"serie":"67JkV8Xz664pXcB"},"amount":1,"name":"weapon_golfclub","slot":6},{"type":"weapon","info":{"quality":100,"serie":"61fJi6OS206OWwi"},"amount":1,"name":"weapon_pumpshotgun","slot":7}]', '2025-05-23 06:16:00'),
	(8, 'WCV55563', 1, 'license:9109448fa2232a29669b399c8f2c226859153125', 'MityTin', '{"cash":500,"crypto":0,"bank":5000}', '{"lastname":"Mity","account":"US02QBCore1297314847","birthdate":"2025-05-22","phone":"1877038891","gender":1,"nationality":"Nepal","cid":1,"firstname":"Tin"}', '{"isboss":true,"grade":{"name":"Manager","level":4,"isboss":true,"payment":150},"name":"mechanic","type":"mechanic","onduty":true,"label":"LS Customs"}', '{"name":"none","grade":{"name":"Unaffiliated","level":0,"isboss":false},"isboss":false,"label":"No Gang"}', '{"x":1671.9296875,"y":1238.2021484375,"z":85.1201171875}', '{"tracker":false,"injail":0,"inlaststand":false,"vehicleKeys":{"86GSQ296":true,"69UXO821":true,"65YRS906":true,"62IBK531":true,"80CRD394":true,"25DKY956":true,"45ZGC090":true,"24OGE654":true,"43VHN562":true},"status":[],"isdead":false,"ishandcuffed":false,"phone":[],"criminalrecord":{"hasRecord":false},"phonedata":{"SerialNumber":17374503,"InstalledApps":[]},"rep":[],"stress":7,"hunger":91.6,"walletid":"QB-32325773","jailitems":[],"armor":0,"fingerprint":"eP902a37Aov5516","inside":{"apartment":[]},"thirst":92.4,"bloodtype":"AB+","licences":{"driver":true,"business":false,"weapon":false},"callsign":"NO CALLSIGN"}', '[{"info":[],"type":"item","name":"phone","slot":1,"amount":1},{"info":{"firstname":"Tin","birthdate":"2025-05-22","lastname":"Mity","type":"Class C Driver License"},"type":"item","name":"driver_license","slot":2,"amount":1},{"info":{"birthdate":"2025-05-22","gender":1,"citizenid":"WCV55563","firstname":"Tin","nationality":"Nepal","lastname":"Mity"},"type":"item","name":"id_card","slot":3,"amount":1}]', '2025-05-22 15:03:22');

-- Dumping structure for table mattrai.playerskins
CREATE TABLE IF NOT EXISTS `playerskins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) NOT NULL,
  `model` varchar(255) NOT NULL,
  `skin` text NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `active` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mattrai.playerskins: ~0 rows (approximately)
INSERT IGNORE INTO `playerskins` (`id`, `citizenid`, `model`, `skin`, `active`) VALUES
	(2, 'WCV55563', '-1667301416', '{"jaw_bone_width":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"pants":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"cheek_3":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"vest":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"hair":{"item":15,"defaultItem":0,"defaultTexture":0,"texture":7},"nose_4":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"eyebrown_forward":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"ear":{"item":-1,"defaultItem":-1,"defaultTexture":0,"texture":0},"jaw_bone_back_lenght":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"nose_5":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"bracelet":{"item":-1,"defaultItem":-1,"defaultTexture":0,"texture":0},"mask":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"eye_opening":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"nose_0":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"makeup":{"item":-1,"defaultItem":-1,"defaultTexture":1,"texture":1},"lips_thickness":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"face":{"item":1,"defaultItem":0,"defaultTexture":0,"texture":1},"bag":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"chimp_hole":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"chimp_bone_width":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"neck_thikness":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"ageing":{"item":-1,"defaultItem":-1,"defaultTexture":0,"texture":0},"cheek_2":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"shoes":{"item":1,"defaultItem":1,"defaultTexture":0,"texture":0},"cheek_1":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"facemix":{"defaultSkinMix":0.0,"skinMix":0.99,"defaultShapeMix":0.0,"shapeMix":0.99},"arms":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"decals":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"chimp_bone_lenght":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"t-shirt":{"item":1,"defaultItem":1,"defaultTexture":0,"texture":0},"watch":{"item":-1,"defaultItem":-1,"defaultTexture":0,"texture":0},"hat":{"item":-1,"defaultItem":-1,"defaultTexture":0,"texture":0},"beard":{"item":-1,"defaultItem":-1,"defaultTexture":1,"texture":1},"nose_2":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"blush":{"item":-1,"defaultItem":-1,"defaultTexture":1,"texture":1},"lipstick":{"item":-1,"defaultItem":-1,"defaultTexture":1,"texture":1},"accessory":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"moles":{"item":-1,"defaultItem":-1,"defaultTexture":0,"texture":0},"eyebrown_high":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"eyebrows":{"item":-1,"defaultItem":-1,"defaultTexture":1,"texture":1},"face2":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"glass":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"nose_3":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"nose_1":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"torso2":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"chimp_bone_lowering":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"eye_color":{"item":-1,"defaultItem":-1,"defaultTexture":0,"texture":0}}', 1),
	(3, 'VYZ62067', '1885233650', '{"mask":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"pants":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"nose_5":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"nose_3":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"glass":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"nose_4":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"beard":{"item":-1,"defaultTexture":1,"defaultItem":-1,"texture":1},"decals":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"ageing":{"item":-1,"defaultTexture":0,"defaultItem":-1,"texture":0},"cheek_2":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"chimp_bone_lowering":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"face2":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"bag":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"face":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"t-shirt":{"item":1,"defaultTexture":0,"defaultItem":1,"texture":0},"bracelet":{"item":-1,"defaultTexture":0,"defaultItem":-1,"texture":0},"accessory":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"eyebrown_high":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"makeup":{"item":-1,"defaultTexture":1,"defaultItem":-1,"texture":1},"eye_opening":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"vest":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"cheek_3":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"neck_thikness":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"lipstick":{"item":-1,"defaultTexture":1,"defaultItem":-1,"texture":1},"jaw_bone_back_lenght":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"hat":{"item":-1,"defaultTexture":0,"defaultItem":-1,"texture":0},"chimp_hole":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"blush":{"item":-1,"defaultTexture":1,"defaultItem":-1,"texture":1},"facemix":{"defaultShapeMix":0.0,"shapeMix":0,"skinMix":0,"defaultSkinMix":0.0},"shoes":{"item":1,"defaultTexture":0,"defaultItem":1,"texture":0},"chimp_bone_width":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"chimp_bone_lenght":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"eyebrown_forward":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"watch":{"item":-1,"defaultTexture":0,"defaultItem":-1,"texture":0},"jaw_bone_width":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"lips_thickness":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"cheek_1":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"eyebrows":{"item":-1,"defaultTexture":1,"defaultItem":-1,"texture":1},"nose_1":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"hair":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"arms":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"nose_2":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"nose_0":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"moles":{"item":-1,"defaultTexture":0,"defaultItem":-1,"texture":0},"eye_color":{"item":-1,"defaultTexture":0,"defaultItem":-1,"texture":0},"torso2":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"ear":{"item":-1,"defaultTexture":0,"defaultItem":-1,"texture":0}}', 1);

-- Dumping structure for table mattrai.player_contacts
CREATE TABLE IF NOT EXISTS `player_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `iban` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mattrai.player_contacts: ~0 rows (approximately)

-- Dumping structure for table mattrai.player_houses
CREATE TABLE IF NOT EXISTS `player_houses` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `house` varchar(50) NOT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `citizenid` varchar(11) DEFAULT NULL,
  `keyholders` text DEFAULT NULL,
  `decorations` text DEFAULT NULL,
  `stash` text DEFAULT NULL,
  `outfit` text DEFAULT NULL,
  `logout` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `house` (`house`),
  KEY `citizenid` (`citizenid`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mattrai.player_houses: ~0 rows (approximately)

-- Dumping structure for table mattrai.player_mails
CREATE TABLE IF NOT EXISTS `player_mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `read` tinyint(4) DEFAULT 0,
  `mailid` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `button` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mattrai.player_mails: ~0 rows (approximately)

-- Dumping structure for table mattrai.player_outfits
CREATE TABLE IF NOT EXISTS `player_outfits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `outfitname` varchar(50) NOT NULL,
  `model` varchar(50) DEFAULT NULL,
  `skin` text DEFAULT NULL,
  `outfitId` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `outfitId` (`outfitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mattrai.player_outfits: ~0 rows (approximately)

-- Dumping structure for table mattrai.player_vehicles
CREATE TABLE IF NOT EXISTS `player_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license` varchar(50) DEFAULT NULL,
  `citizenid` varchar(11) DEFAULT NULL,
  `vehicle` varchar(50) DEFAULT NULL,
  `hash` varchar(50) DEFAULT NULL,
  `mods` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `plate` varchar(8) NOT NULL,
  `fakeplate` varchar(8) DEFAULT NULL,
  `garage` varchar(50) DEFAULT NULL,
  `fuel` int(11) DEFAULT 100,
  `engine` float DEFAULT 1000,
  `body` float DEFAULT 1000,
  `state` int(11) DEFAULT 1,
  `depotprice` int(11) NOT NULL DEFAULT 0,
  `drivingdistance` int(50) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  `paymentamount` int(11) NOT NULL DEFAULT 0,
  `paymentsleft` int(11) NOT NULL DEFAULT 0,
  `financetime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `plate` (`plate`),
  KEY `citizenid` (`citizenid`),
  KEY `license` (`license`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mattrai.player_vehicles: ~0 rows (approximately)

-- Dumping structure for table mattrai.player_warns
CREATE TABLE IF NOT EXISTS `player_warns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `senderIdentifier` varchar(50) DEFAULT NULL,
  `targetIdentifier` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `warnId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mattrai.player_warns: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

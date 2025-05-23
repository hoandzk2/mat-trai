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

-- Dumping data for table mattrai.apartments: ~0 rows (approximately)
INSERT INTO `apartments` (`id`, `name`, `type`, `label`, `citizenid`) VALUES
	(2, 'apartment5248', 'apartment5', 'Fantastic Plaza 248', 'WCV55563'),
	(3, 'apartment32653', 'apartment3', 'Integrity Way 2653', 'VYZ62067');

-- Dumping data for table mattrai.bank_accounts: ~20 rows (approximately)
INSERT INTO `bank_accounts` (`id`, `citizenid`, `account_name`, `account_balance`, `account_type`, `users`) VALUES
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

-- Dumping data for table mattrai.bank_statements: ~0 rows (approximately)

-- Dumping data for table mattrai.bans: ~0 rows (approximately)

-- Dumping data for table mattrai.crypto: ~0 rows (approximately)
INSERT INTO `crypto` (`crypto`, `worth`, `history`) VALUES
	('qbit', 1002, '[{"NewWorth":1002,"PreviousWorth":1000}]');

-- Dumping data for table mattrai.crypto_transactions: ~0 rows (approximately)

-- Dumping data for table mattrai.dealers: ~0 rows (approximately)

-- Dumping data for table mattrai.houselocations: ~0 rows (approximately)

-- Dumping data for table mattrai.house_plants: ~0 rows (approximately)

-- Dumping data for table mattrai.inventories: ~0 rows (approximately)
INSERT INTO `inventories` (`id`, `identifier`, `items`) VALUES
	(1, 'glovebox-43VHN562', '[]');

-- Dumping data for table mattrai.lapraces: ~0 rows (approximately)

-- Dumping data for table mattrai.occasion_vehicles: ~0 rows (approximately)

-- Dumping data for table mattrai.phone_gallery: ~0 rows (approximately)

-- Dumping data for table mattrai.phone_invoices: ~0 rows (approximately)

-- Dumping data for table mattrai.phone_messages: ~0 rows (approximately)

-- Dumping data for table mattrai.phone_tweets: ~0 rows (approximately)

-- Dumping data for table mattrai.players: ~2 rows (approximately)
INSERT INTO `players` (`id`, `citizenid`, `cid`, `license`, `name`, `money`, `charinfo`, `job`, `gang`, `position`, `metadata`, `inventory`, `last_updated`) VALUES
	(21, 'VYZ62067', 1, 'license:e69768fc5ff1a0004083f16d36044a39ee2728e9', 'hoan2108', '{"cash":500,"bank":5000,"crypto":0}', '{"birthdate":"2002-05-21","account":"US02QBCore3268757432","firstname":"Hoan","cid":1,"lastname":"Tixi","gender":0,"phone":"1741956357","nationality":"Vietnam"}', '{"label":"Civilian","payment":10,"onduty":false,"isboss":false,"name":"unemployed","grade":{"isboss":false,"name":"Freelancer","level":0},"type":"none"}', '{"isboss":false,"name":"none","grade":{"isboss":false,"name":"Unaffiliated","level":0},"label":"No Gang"}', '{"x":327.5472412109375,"y":-205.08131408691407,"z":54.06591796875}', '{"armor":0,"hunger":45.39999999999993,"phonedata":{"InstalledApps":[],"SerialNumber":99155470},"isdead":false,"phone":[],"criminalrecord":{"hasRecord":false},"stress":0,"bloodtype":"A-","inside":{"apartment":[]},"walletid":"QB-82721232","injail":0,"tracker":false,"licences":{"driver":true,"weapon":false,"business":false},"ishandcuffed":false,"callsign":"NO CALLSIGN","fingerprint":"rk846f86FMQ5891","thirst":50.60000000000003,"inlaststand":false,"status":[],"rep":[],"vehicleKeys":{"01AEM866":true,"80GZE691":true,"67WLS213":true,"21YJG802":true},"jailitems":[]}', '[{"amount":1,"info":{"lastname":"Tixi","birthdate":"2002-05-21","firstname":"Hoan","type":"Class C Driver License"},"name":"driver_license","slot":1,"type":"item"},{"amount":1,"info":{"lastname":"Tixi","citizenid":"VYZ62067","nationality":"Vietnam","gender":0,"birthdate":"2002-05-21","firstname":"Hoan"},"name":"id_card","slot":2,"type":"item"},{"amount":1,"info":[],"name":"phone","slot":3,"type":"item"},{"amount":1,"info":{"serie":"12Xfq6Ui223OXjr","quality":100},"name":"weapon_specialcarbine_mk2","slot":4,"type":"weapon"},{"amount":1,"info":{"serie":"12IpH2Qz273kGQX","quality":100},"name":"weapon_specialcarbine_mk2","slot":5,"type":"weapon"},{"amount":1,"info":{"serie":"67JkV8Xz664pXcB","quality":100},"name":"weapon_golfclub","slot":6,"type":"weapon"},{"amount":1,"info":{"serie":"61fJi6OS206OWwi","quality":100},"name":"weapon_pumpshotgun","slot":7,"type":"weapon"}]', '2025-05-23 05:40:17'),
	(8, 'WCV55563', 1, 'license:9109448fa2232a29669b399c8f2c226859153125', 'MityTin', '{"cash":500,"crypto":0,"bank":5000}', '{"lastname":"Mity","account":"US02QBCore1297314847","birthdate":"2025-05-22","phone":"1877038891","gender":1,"nationality":"Nepal","cid":1,"firstname":"Tin"}', '{"isboss":true,"grade":{"name":"Manager","level":4,"isboss":true,"payment":150},"name":"mechanic","type":"mechanic","onduty":true,"label":"LS Customs"}', '{"name":"none","grade":{"name":"Unaffiliated","level":0,"isboss":false},"isboss":false,"label":"No Gang"}', '{"x":1671.9296875,"y":1238.2021484375,"z":85.1201171875}', '{"tracker":false,"injail":0,"inlaststand":false,"vehicleKeys":{"86GSQ296":true,"69UXO821":true,"65YRS906":true,"62IBK531":true,"80CRD394":true,"25DKY956":true,"45ZGC090":true,"24OGE654":true,"43VHN562":true},"status":[],"isdead":false,"ishandcuffed":false,"phone":[],"criminalrecord":{"hasRecord":false},"phonedata":{"SerialNumber":17374503,"InstalledApps":[]},"rep":[],"stress":7,"hunger":91.6,"walletid":"QB-32325773","jailitems":[],"armor":0,"fingerprint":"eP902a37Aov5516","inside":{"apartment":[]},"thirst":92.4,"bloodtype":"AB+","licences":{"driver":true,"business":false,"weapon":false},"callsign":"NO CALLSIGN"}', '[{"info":[],"type":"item","name":"phone","slot":1,"amount":1},{"info":{"firstname":"Tin","birthdate":"2025-05-22","lastname":"Mity","type":"Class C Driver License"},"type":"item","name":"driver_license","slot":2,"amount":1},{"info":{"birthdate":"2025-05-22","gender":1,"citizenid":"WCV55563","firstname":"Tin","nationality":"Nepal","lastname":"Mity"},"type":"item","name":"id_card","slot":3,"amount":1}]', '2025-05-22 15:03:22');

-- Dumping data for table mattrai.playerskins: ~0 rows (approximately)
INSERT INTO `playerskins` (`id`, `citizenid`, `model`, `skin`, `active`) VALUES
	(2, 'WCV55563', '-1667301416', '{"jaw_bone_width":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"pants":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"cheek_3":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"vest":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"hair":{"item":15,"defaultItem":0,"defaultTexture":0,"texture":7},"nose_4":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"eyebrown_forward":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"ear":{"item":-1,"defaultItem":-1,"defaultTexture":0,"texture":0},"jaw_bone_back_lenght":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"nose_5":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"bracelet":{"item":-1,"defaultItem":-1,"defaultTexture":0,"texture":0},"mask":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"eye_opening":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"nose_0":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"makeup":{"item":-1,"defaultItem":-1,"defaultTexture":1,"texture":1},"lips_thickness":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"face":{"item":1,"defaultItem":0,"defaultTexture":0,"texture":1},"bag":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"chimp_hole":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"chimp_bone_width":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"neck_thikness":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"ageing":{"item":-1,"defaultItem":-1,"defaultTexture":0,"texture":0},"cheek_2":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"shoes":{"item":1,"defaultItem":1,"defaultTexture":0,"texture":0},"cheek_1":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"facemix":{"defaultSkinMix":0.0,"skinMix":0.99,"defaultShapeMix":0.0,"shapeMix":0.99},"arms":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"decals":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"chimp_bone_lenght":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"t-shirt":{"item":1,"defaultItem":1,"defaultTexture":0,"texture":0},"watch":{"item":-1,"defaultItem":-1,"defaultTexture":0,"texture":0},"hat":{"item":-1,"defaultItem":-1,"defaultTexture":0,"texture":0},"beard":{"item":-1,"defaultItem":-1,"defaultTexture":1,"texture":1},"nose_2":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"blush":{"item":-1,"defaultItem":-1,"defaultTexture":1,"texture":1},"lipstick":{"item":-1,"defaultItem":-1,"defaultTexture":1,"texture":1},"accessory":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"moles":{"item":-1,"defaultItem":-1,"defaultTexture":0,"texture":0},"eyebrown_high":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"eyebrows":{"item":-1,"defaultItem":-1,"defaultTexture":1,"texture":1},"face2":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"glass":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"nose_3":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"nose_1":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"torso2":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"chimp_bone_lowering":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"eye_color":{"item":-1,"defaultItem":-1,"defaultTexture":0,"texture":0}}', 1),
	(3, 'VYZ62067', '1885233650', '{"mask":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"pants":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"nose_5":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"nose_3":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"glass":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"nose_4":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"beard":{"item":-1,"defaultTexture":1,"defaultItem":-1,"texture":1},"decals":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"ageing":{"item":-1,"defaultTexture":0,"defaultItem":-1,"texture":0},"cheek_2":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"chimp_bone_lowering":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"face2":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"bag":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"face":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"t-shirt":{"item":1,"defaultTexture":0,"defaultItem":1,"texture":0},"bracelet":{"item":-1,"defaultTexture":0,"defaultItem":-1,"texture":0},"accessory":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"eyebrown_high":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"makeup":{"item":-1,"defaultTexture":1,"defaultItem":-1,"texture":1},"eye_opening":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"vest":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"cheek_3":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"neck_thikness":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"lipstick":{"item":-1,"defaultTexture":1,"defaultItem":-1,"texture":1},"jaw_bone_back_lenght":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"hat":{"item":-1,"defaultTexture":0,"defaultItem":-1,"texture":0},"chimp_hole":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"blush":{"item":-1,"defaultTexture":1,"defaultItem":-1,"texture":1},"facemix":{"defaultShapeMix":0.0,"shapeMix":0,"skinMix":0,"defaultSkinMix":0.0},"shoes":{"item":1,"defaultTexture":0,"defaultItem":1,"texture":0},"chimp_bone_width":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"chimp_bone_lenght":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"eyebrown_forward":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"watch":{"item":-1,"defaultTexture":0,"defaultItem":-1,"texture":0},"jaw_bone_width":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"lips_thickness":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"cheek_1":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"eyebrows":{"item":-1,"defaultTexture":1,"defaultItem":-1,"texture":1},"nose_1":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"hair":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"arms":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"nose_2":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"nose_0":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"moles":{"item":-1,"defaultTexture":0,"defaultItem":-1,"texture":0},"eye_color":{"item":-1,"defaultTexture":0,"defaultItem":-1,"texture":0},"torso2":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"ear":{"item":-1,"defaultTexture":0,"defaultItem":-1,"texture":0}}', 1);

-- Dumping data for table mattrai.player_contacts: ~0 rows (approximately)

-- Dumping data for table mattrai.player_houses: ~0 rows (approximately)

-- Dumping data for table mattrai.player_mails: ~0 rows (approximately)

-- Dumping data for table mattrai.player_outfits: ~0 rows (approximately)

-- Dumping data for table mattrai.player_vehicles: ~0 rows (approximately)

-- Dumping data for table mattrai.player_warns: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

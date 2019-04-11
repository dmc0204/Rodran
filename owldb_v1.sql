-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: owldb
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `characters` (
  `CHARACTER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CHARACTER_NAME` varchar(128) DEFAULT NULL,
  `CHARACTER_ROLE` varchar(128) DEFAULT NULL,
  `CHARACTER_AVATAR` varchar(128) DEFAULT NULL,
  `CHARACTER_IMG` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`CHARACTER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters`
--

LOCK TABLES `characters` WRITE;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
INSERT INTO `characters` VALUES (1,'D.VA','Tank','D.Va','dva.png'),(2,'Orisa','Tank','Orisa','orisa.png'),(3,'Reinhardt','Tank','Reinhardt','reinhardt.png'),(4,'Roadhog','Tank','Roadhog','roadhog.png'),(5,'Winston','Tank','Winston','winston.png'),(6,'Wrecking Ball','Tank','Wrecking Ball','wreckingball.png'),(7,'Zarya','Tank','Zarya','zarya.png'),(8,'Ashe','Damage','Ashe','ashe.png'),(9,'Bastion','Damage','Bastion','bastion.png'),(10,'Doomfist','Damage','Doomfist','doomfist.png'),(11,'Genji','Damage','Genji','genji.png'),(12,'Hanzo','Damage','Hanzo','hanzo.png'),(13,'Junkrat','Damage','Junkrat','junkrat.png'),(14,'McCree','Damage','McCree','mccree.png'),(15,'Mei','Damage','Mei','mei.png'),(16,'Pharah','Damage','Pharah','pharah.png'),(17,'Reaper','Damage','Reaper','reaper.png'),(18,'Soldier: 76','Damage','Soldier: 76','soldier.png'),(19,'Sombra','Damage','Sombra','sombra.png'),(20,'Symmetra','Damage','Symmetra','symmetra.png'),(21,'Torbjorn','Damage','Torbjorn','torbjorn.png'),(22,'Tracer','Damage','Tracer','tracer.png'),(23,'Widowmaker','Damage','Widowmaker','widowmaker.png'),(24,'Ana','Support','Ana','ana.png'),(25,'Baptiste','Support','Baptiste','baptiste.png'),(26,'Brigitte','Support','Brigitte','brigitte.png'),(27,'Lucio','Support','Lucio','lucio.png'),(28,'Mercy','Support','Mercy','mercy.png'),(29,'Moira','Support','Moira','moira.png'),(30,'Zenyatta','Support','Zenyatta','zenyatta.png');
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `games` (
  `GAME_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SERIES_ID` int(11) NOT NULL,
  `MAP_ID` int(11) NOT NULL,
  `GAME_OUTCOME` int(2) NOT NULL,
  PRIMARY KEY (`GAME_ID`),
  KEY `SERIES_ID` (`SERIES_ID`),
  KEY `MAP_ID` (`MAP_ID`),
  CONSTRAINT `MAP_ID` FOREIGN KEY (`MAP_ID`) REFERENCES `maps` (`map_id`),
  CONSTRAINT `SERIES_ID` FOREIGN KEY (`SERIES_ID`) REFERENCES `series` (`series_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (1,1,1,1),(2,1,2,1),(3,1,3,1),(4,1,4,1);
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maps`
--

DROP TABLE IF EXISTS `maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `maps` (
  `MAP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MAP_NAME` varchar(128) DEFAULT NULL,
  `MAP_TYPE` varchar(128) DEFAULT NULL,
  `MAP_IMG` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`MAP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maps`
--

LOCK TABLES `maps` WRITE;
/*!40000 ALTER TABLE `maps` DISABLE KEYS */;
INSERT INTO `maps` VALUES (1,'Hanamura','Assault','hanamura.jpg'),(2,'Horizon Lunar Colony','Assault','horizon_lunar_colony.jpg'),(3,'Paris','Assault','paris.jpg'),(4,'Temple of Anubis','Assault','anubis.jpg'),(5,'Volskaya Industries','Assault','volskaya_industries.jpg'),(6,'Dorado','Escort','dorado.jpg'),(7,'Junkertown','Escort','junkertown.jpg'),(8,'Rialto','Escort','rialto.jpg'),(9,'Route 66','Escort','route_66.jpg'),(10,'Watchpoint: Gilbraltar','Escort','gibraltar.jpg'),(11,'Blizzard World','Hybrid','blizzard_world.jpg'),(12,'Eichenwalde','Hybrid','eichenwalde.png'),(13,'Hollywood','Hybrid','hollywood.jpg'),(14,'Kings Row','Hybrid','kings_row.jpg'),(15,'Numbani','Hybrid','numbani.jpg'),(16,'Busan','Control','busan.jpg'),(17,'Ilios','Control','ilios.jpg'),(18,'Lijang Tower','Control','lijiang_tower.jpg'),(19,'Nepal','Control','nepal.jpg'),(20,'Oasis','Control','oasis.jpg'),(21,'Ayutthaya','Arcade','ayutthaya.png'),(22,'Black Forest','Arcade','black_forest.jpg'),(23,'Castillo','Arcade','castillo.jpg'),(24,'Chateau Guillard','Arcade','chateau_guillard.jpg'),(25,'Ecopoint: Antarctica','Arcade','ecopoint_antarctica.png'),(26,'Necropolis','Arcade','necropolis.jpg'),(27,'Petra','Arcade','petra.jpg'),(28,'Busan Stadium','Seasonal Event: Summer','busan_stadium.png'),(29,'Estadio da Ras','Seasonal Event: Summer','estadio_das_ras.jpg'),(30,'Sydney Harbour Arena','Seasonal Event: Summer','sydney_harbour_arena.png'),(31,'Hollywood','Seasonal Event: Halloween','hollywood_seasonal.jpeg'),(32,'Junkensteins Revenge','Seasonal Event: Halloween','junkensteins_revenge.jpg'),(33,'Eichenwalde','Seasonal Event: Halloween','eichenwalde_halloween.jpg'),(34,'Chateau Guillard','Seasonal Event: Halloween','chateau_guillard_halloween.jpeg'),(35,'Hanamura','Seasonal Event: Winter','hanamura_winter.jpg'),(36,'Kings Row','Seasonal Event: Winter','kings_row_winter.jpg'),(37,'Meis Snowball Offensive','Seasonal Event: Winter','mei_snowball_offensive.jpg'),(38,'Yeti Hunt','Seasonal Event: Winter','yeti_hunt.jpg'),(39,'Blizzard World','Seasonal Event: Winter','blizzard_world_winter.jpg'),(40,'Lijang Tower','Seasonal Event: Lunar New Year','lijiang_tower_lunar.jpg'),(41,'Busan','Seasonal Event: Lunar New Year','busan_lunar.jpg'),(44,'Spookycastle','Scary','spookycastle.jpg');
/*!40000 ALTER TABLE `maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owners`
--

DROP TABLE IF EXISTS `owners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `owners` (
  `OWNER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `OWNER_NAME` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`OWNER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owners`
--

LOCK TABLES `owners` WRITE;
/*!40000 ALTER TABLE `owners` DISABLE KEYS */;
INSERT INTO `owners` VALUES (1,'Robert Kraft'),(2,'Atlanta Esports Ventures'),(3,'Huya'),(4,'Team Envy'),(5,'Misfits Gaming'),(6,'Zhong Naixiong'),(7,'Bilibili'),(8,'OpTic Gaming'),(9,'Jack Etienne'),(10,'Kroenke Sports & Entertainment'),(11,'Immortals'),(12,'Sterling VC'),(13,'DM Esports'),(14,'Comcast Spectacor'),(15,'NRG Esports'),(16,'KSV eSports International'),(17,'NetEase'),(18,'OverActive Media Group'),(19,'Aquilini Group'),(20,'Washington Esports Ventures');
/*!40000 ALTER TABLE `owners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participants`
--

DROP TABLE IF EXISTS `participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `participants` (
  `SERIESTEAMS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SERIES_ID` int(11) NOT NULL,
  `TEAM_ID` int(11) NOT NULL,
  PRIMARY KEY (`SERIESTEAMS_ID`),
  KEY `SERIES` (`SERIES_ID`),
  KEY `TEAM_PART` (`TEAM_ID`),
  CONSTRAINT `SERIES` FOREIGN KEY (`SERIES_ID`) REFERENCES `series` (`series_id`),
  CONSTRAINT `TEAM_PART` FOREIGN KEY (`TEAM_ID`) REFERENCES `teams` (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participants`
--

LOCK TABLES `participants` WRITE;
/*!40000 ALTER TABLE `participants` DISABLE KEYS */;
INSERT INTO `participants` VALUES (1,1,1),(2,1,2);
/*!40000 ALTER TABLE `participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `players` (
  `PLAYER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PLAYER_FIRSTNAME` varchar(128) DEFAULT NULL,
  `PLAYER_LASTNAME` varchar(128) DEFAULT NULL,
  `PLAYER_AGE` int(11) DEFAULT NULL,
  `PLAYER_GENDER` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`PLAYER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (4,'Jun','Jeong',40,'Male'),(5,'Steven','Rosenberger',18,'Male'),(6,'Nathan','Goebel',22,'Male'),(7,'Donghyung','Seo',18,'Male'),(8,'Ilya','Seo',20,'Male'),(9,'Hyeonjun','Park',23,'Male'),(10,'Dusttin','Bowerman',20,'Male'),(11,'Petja','Kantanen',23,'Male'),(12,'Blake','Scott',24,'Male'),(13,'Andrej','Francisty',19,'Male'),(14,'Zion','Yang',20,'Male'),(15,'Xianyao','Li',18,'Male'),(16,'Jonathan Tejedor','Rua',27,'Male'),(17,'HyeonWoo','Jo',24,'Male'),(18,'Hong-jun','Choi',19,'Male'),(19,'Shilong','Cai',18,'Male'),(20,'Austin','Wilmot',20,'Male'),(21,'Jaehui','Hong',21,'Male'),(22,'Chang-hoon','Gye',22,'Male'),(23,'Daekuk','Kim',27,'Male'),(24,'Jong-Ryeol','Park',23,'Male'),(25,'Terence','Tarlier',25,'Male'),(26,'Isaac','Charles',21,'Male'),(27,'Myeong Hwan','Yoo',20,'Male'),(28,'Min Seo','Hwang',18,'Male'),(29,'Se yeon','Kim',19,'Female'),(30,'SeungHyun','Lee',20,'Male'),(31,'Sangbeom','Park',19,'Male'),(32,'Junhwa','Song',22,'Male'),(33,'Jeffrey','Tsang',20,'Male'),(34,'Minseok','Kwon',20,'Male'),(35,'Kelsey','Birse',21,'Male'),(36,'Kristian','Keller',20,'Male'),(37,'Park','Minseob',22,'Male'),(38,'Cameron','Bosworth',20,'Male'),(39,'Renan','Moretto',23,'Male'),(40,'Richard','Kanerva',20,'Male'),(41,'Chunting','Kong',20,'Male'),(42,'Wenjie','Luo',18,'Male'),(43,'Li','Gaun',24,'Male'),(44,'Tainbin','Ma',19,'Male'),(45,'Menghan','Ding',22,'Male'),(46,'Tzu-Heng','Lo',21,'Male'),(47,'Hu','Yi',19,'Male'),(48,'Zhihao','Zhang',22,'Male'),(49,'Yansong','Wei',20,'Male'),(50,'Jae-mo','Koo',22,'Male'),(51,'Sunghoon','Kim',24,'Male'),(52,'Jeonwoo','Ha',20,'Male'),(53,'Sangbum','Lee',20,'Male'),(54,'Sangwon','Yoon',26,'Male'),(55,'Jun-soo','Choi',37,'Male'),(56,'Jiri','Masalin',24,'Male'),(57,'Jacob','Lyon',22,'Male'),(58,'Matt','Iorio',29,'Male'),(59,'Alexandre','Vanhomwegen',23,'Male'),(60,'Daniel','Pence',19,'Male'),(61,'Christopher','Benell',25,'Male'),(62,'Shane','Flaherty',22,'Male'),(63,'Wonhyeop','Jong',23,'Male'),(64,'Dante','Cruz',20,'Male'),(65,'Jihyeok','Kim',19,'Male'),(66,'Jun-young','Park',19,'Male'),(67,'Jun-ho','Kim',19,'Male'),(68,'Seung-tae','Choi',22,'Male'),(69,'Jong-seok','Kim',19,'Male'),(70,'Hee-dong','Lee',20,'Male'),(71,'Yung-hoon','Jung',18,'Male'),(72,'Doh-yeon','Kim',21,'Male'),(73,'Haeseong','Kim',19,'Male'),(74,'Tae-hong','Kim',21,'Male'),(75,'Dong-gyu','Kim',22,'Male'),(76,'Seong-hyun','Bang',19,'Male'),(77,'Tae-sung','Jung',21,'Male'),(78,'Yeon-oh','Hwang',18,'Male'),(79,'Yeon-kwan','Jeong',22,'Male'),(80,'Timo','Kettunen',25,'Male'),(81,'Hyeon','Hwang',21,'Male'),(82,'Pongphop','Rattanasangchod',25,'Male'),(83,'Dylan','Bignet',23,'Male'),(84,'Min-seok','Son',19,'Male'),(85,'Benjamin','Chevasson',23,'Male'),(86,'Won-sik','Jung',20,'Male'),(87,'Zachary','Lombardo',18,'Male'),(88,'Lucas','Meissner',20,'Male'),(89,'Yiliang','Ou',18,'Male'),(90,'Jungwoo','Lee',19,'Male'),(91,'Finley','Adisi',20,'Male'),(92,'Seungpo','Oh',18,'Male'),(93,'Jungyeon','Kim',20,'Male'),(94,'Lizhen','Chen',21,'Male'),(95,'Jinseo','Kim',26,'Male'),(96,'Qiulin','Xu',18,'Male'),(97,'Daun','Jeong',22,'Male'),(98,'Jaehwan','Kang',20,'Male'),(99,'Sungwook','Park',24,'Male'),(100,'Junki','Park',20,'Male'),(101,'Kyeongbo','Kim',22,'Male'),(102,'Hojin','Park',19,'Male'),(103,'Hyeonggun','An',20,'Male'),(104,'Huichang','Yoon',20,'Male'),(105,'Sanghyun','Song',18,'Male'),(106,'Lane','Roberts',24,'Male'),(107,'João Pedro Goes','Telles',21,'Male'),(108,'Hyeung-seok','Kim',24,'Male'),(109,'Jonas','Suovaara',20,'Male'),(110,'Benjamin','Isohanni',22,'Male'),(111,'Jun-woo','Kang',22,'Male'),(112,'Guiun','Jang',18,'Male'),(113,'Riku','Toivanen',18,'Male'),(114,'Byungho','Lee',22,'Male'),(115,'Brady','Girardi',19,'Male'),(116,'Young-seo','Park',21,'Male'),(117,'Indy','Halpern',19,'Male'),(118,'Pan-seung','Koo',22,'Male'),(119,'Jun-hyeok','Chae',20,'Male'),(120,'Scott','Kennedy',25,'Male'),(121,'Kyle','Frandanisa',19,'Male'),(122,'Minchul','Kim',19,'Male'),(123,'George','Guscha',22,'Male'),(124,'Nicolas','Moret',24,'Male'),(125,'Karol','Szcczesniak',21,'Male'),(126,'Finnbjorn','Jonasson',20,'Male'),(127,'Roni','Tiihonen',19,'Male'),(128,'Benjamin','Dieulafait',23,'Male'),(129,'Damien','Souville',23,'Male'),(130,'Harrison','Pond',22,'Male'),(131,'Luis','Perestrelo',25,'Male'),(132,'Jae-hyook','Lee',20,'Male'),(133,'Josue','Corona',19,'Male'),(134,'Simon','Ekstrom',19,'Male'),(135,'Gael','Gouzerch',22,'Male'),(136,'Joona','Laine',28,'Male'),(137,'Sumin','Kim',20,'Male'),(138,'Alberto Gonzalez','Molinillo',27,'Male'),(139,'Elijah Hudson','Gallagher',19,'Male'),(140,'Matthew','DeLisi',19,'Male'),(141,'Nikolas','Andrews',20,'Male'),(142,'Jay','Won',19,'Male'),(143,'Andreas','Karlsson',25,'Male'),(144,'Minho','Park',19,'Male'),(145,'Grant','Espe',18,'Male'),(146,'Hyobin','Choi',21,'Male'),(147,'Dongjun0','Kim',20,'Male'),(148,'Minki','Park',18,'Male'),(149,'Namjoo','Kwon',19,'Male'),(150,'Joon-hyeok','Kim',21,'Male'),(151,'Je-hong','Ryu',27,'Male'),(152,'Jin-mo','Kang',25,'Male'),(153,'Byung-sun','Kim',19,'Male'),(154,'Sang-beom','Byun',21,'Male'),(155,'Chan-hyun','Baek',20,'Male'),(156,'Min-hyuk','Choi',19,'Male'),(157,'Seung-soo','Lee',19,'Male'),(158,'Dongeon','Kim',18,'Male'),(159,'Jae-min','Park',18,'Male'),(160,'Sung-heok','Lee',19,'Male'),(161,'Weida','Lu',19,'Male'),(162,'Eui-seok','Lee',20,'Male'),(163,'Min-seong','Bae',19,'Male'),(164,'Jin-kyeok','Yang',19,'Male'),(165,'Young-jin','Jin',21,'Male'),(166,'Jun-hwan','Jo',20,'Male'),(167,'Seong-hyeon','Yang',21,'Male'),(168,'Kyung-woo','Son',23,'Male'),(169,'Youngjin','Noh',24,'Male'),(170,'Kang-jae','Lee',21,'Male'),(171,'Seh-yeon','Park',20,'Male'),(172,'Gyeong-mu','Jo',27,'Male'),(173,'Jae-yoon','Go',25,'Male'),(174,'Jun-sung','Choi',23,'Male'),(175,'Joo-seong','Park',20,'Male'),(176,'Jin','Hong',19,'Male'),(177,'Hyo-jong','Kim',18,'Male'),(178,'Dongeun','Lee',22,'Male'),(179,'Min-soo','Seo',18,'Male'),(180,'Chung-hui','Lee',21,'Male'),(181,'Hyeon-woo','Choi',21,'Male'),(182,'Jung-geun','Kim',21,'Male'),(183,'Sung-jun','Kim',19,'Male'),(184,'Ju-seok','Lee',29,'Male'),(185,'Corey','Nigra',18,'Male'),(186,'Ethan','Yankel',18,'Male'),(187,'Hyang-ki','Kim',20,'Male'),(188,'Gi-hyeon','Chon',19,'Male'),(189,'Riley','Taylor',22,'Male'),(190,'Gido','Moon',19,'Male'),(191,'Hyeon-woo','Cho',22,'Male'),(192,'Yeon-joon','Hong',21,'Male');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playerstats`
--

DROP TABLE IF EXISTS `playerstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `playerstats` (
  `PLAYERSTATS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CHARACTER_ID` int(11) DEFAULT NULL,
  `PLAYER_ID` int(11) DEFAULT NULL,
  `PLAYERSTATS_DAMAGE` int(100) DEFAULT NULL,
  `PLAYERSTATS_HEALING` int(100) DEFAULT NULL,
  `PLAYERSTATS_KILLS` int(100) DEFAULT NULL,
  PRIMARY KEY (`PLAYERSTATS_ID`),
  KEY `CHARACTER_ID` (`CHARACTER_ID`),
  KEY `PLAYER` (`PLAYER_ID`),
  CONSTRAINT `CHARACTER_ID` FOREIGN KEY (`CHARACTER_ID`) REFERENCES `characters` (`character_id`),
  CONSTRAINT `PLAYER` FOREIGN KEY (`PLAYER_ID`) REFERENCES `players` (`player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playerstats`
--

LOCK TABLES `playerstats` WRITE;
/*!40000 ALTER TABLE `playerstats` DISABLE KEYS */;
INSERT INTO `playerstats` VALUES (1,1,4,10000,0,20),(2,2,5,20000,0,10);
/*!40000 ALTER TABLE `playerstats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roster`
--

DROP TABLE IF EXISTS `roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `roster` (
  `ROSTER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PLAYER_ID` int(11) DEFAULT NULL,
  `TEAM_ID` int(11) DEFAULT NULL,
  `ROSTER_STARTDATE` date DEFAULT NULL,
  `ROSTER_ENDDATE` date DEFAULT NULL,
  PRIMARY KEY (`ROSTER_ID`),
  KEY `PLAYER_ID` (`PLAYER_ID`),
  KEY `TEAM` (`TEAM_ID`),
  CONSTRAINT `PLAYER_ID` FOREIGN KEY (`PLAYER_ID`) REFERENCES `players` (`player_id`),
  CONSTRAINT `TEAM` FOREIGN KEY (`TEAM_ID`) REFERENCES `teams` (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roster`
--

LOCK TABLES `roster` WRITE;
/*!40000 ALTER TABLE `roster` DISABLE KEYS */;
INSERT INTO `roster` VALUES (2,4,2,'2019-02-15','2019-04-04'),(3,5,2,'2019-02-15','2019-04-04'),(4,6,2,'2019-02-15','2019-04-04'),(5,7,2,'2019-02-15','2019-04-04'),(6,8,2,'2019-02-15','2019-04-04'),(7,9,2,'2019-02-15','2019-04-04'),(8,10,2,'2019-02-15','2019-04-04'),(9,11,2,'2019-02-15','2019-04-04'),(10,12,2,'2019-02-15','2019-04-04'),(11,13,2,'2019-02-15','2019-04-04'),(12,14,1,'2019-04-02','2019-04-04'),(13,15,3,'2018-11-28','2019-04-04'),(14,16,4,'2017-10-05','2019-04-04'),(15,17,5,'2019-02-15','2019-04-04'),(16,18,6,'2018-10-17','2019-04-04'),(17,19,7,'2018-11-20','2019-04-04'),(18,20,8,'2017-10-31','2019-04-04'),(19,21,9,'2017-11-04','2019-04-04'),(20,22,10,'2018-10-25','2019-04-04'),(21,23,11,'2018-09-13','2019-04-04'),(22,24,12,'2017-10-30','2019-04-04'),(23,25,13,'2018-10-23','2019-04-04'),(24,26,14,'2019-02-15','2019-04-04'),(25,27,15,'2019-02-15','2019-04-04'),(26,28,17,'2019-02-15','2019-04-04'),(27,29,18,'2019-02-15','2019-04-04'),(28,30,19,'2019-02-15','2019-04-04'),(29,31,20,'2019-02-15','2019-04-04'),(30,32,21,'2019-02-15','2019-04-04'),(31,33,1,'2018-10-22','2019-04-04'),(32,34,1,'2018-04-03','2019-04-04'),(33,35,1,'2018-10-30','2019-04-04'),(34,36,1,'2017-10-26','2019-04-04'),(35,37,1,'2018-10-30','2019-04-04'),(36,38,1,'2018-11-05','2019-04-04'),(37,39,1,'2018-12-05','2019-04-04'),(38,40,1,'2019-04-02','2019-04-04'),(39,41,3,'2018-11-28','2019-04-04'),(40,42,3,'2018-11-29','2019-04-04'),(41,43,3,'2018-11-28','2019-04-04'),(42,44,3,'2018-11-29','2019-04-04'),(43,45,3,'2018-11-29','2019-04-04'),(44,46,3,'2018-11-30','2019-04-04'),(45,47,3,'2018-11-30','2019-04-04'),(46,48,3,'2018-11-30','2019-04-04'),(47,49,3,'2019-01-16','2019-04-04'),(48,50,5,'2018-09-10','2019-04-04'),(49,51,5,'2018-02-13','2019-04-04'),(50,52,5,'2018-02-13','2019-04-04'),(51,53,5,'2015-10-14','2019-04-04'),(52,54,5,'2018-10-14','2019-04-04'),(53,55,5,'2018-10-14','2019-04-04'),(54,56,8,'2017-10-31','2019-04-04'),(55,57,8,'2017-10-31','2019-04-04'),(56,58,8,'2017-10-31','2019-04-04'),(57,59,8,'2017-10-31','2019-04-04'),(58,60,8,'2017-10-31','2019-04-04'),(59,61,8,'2017-10-31','2019-04-04'),(60,62,8,'2017-10-31','2019-04-04'),(61,63,8,'2018-03-30','2019-04-04'),(62,64,8,'2018-09-18','2019-04-04'),(63,65,9,'2017-11-04','2019-04-04'),(64,66,9,'2017-11-04','2019-04-04'),(65,67,9,'2017-11-04','2019-04-04'),(66,68,9,'2017-11-04','2019-04-04'),(67,69,9,'2017-11-04','2019-04-04'),(68,70,9,'2018-10-16','2019-04-04'),(69,71,9,'2018-10-17','2019-04-04'),(70,72,12,'2017-10-30','2019-04-04'),(71,73,12,'2017-10-30','2019-04-04'),(72,74,12,'2017-10-30','2019-04-04'),(73,75,12,'2017-10-30','2019-04-04'),(74,76,12,'2017-10-30','2019-04-04'),(75,77,12,'2018-03-31','2019-04-04'),(76,78,12,'2018-10-29','2019-04-04'),(77,79,12,'2018-11-08','2019-04-04'),(78,80,4,'2017-10-05','2019-04-04'),(79,81,4,'2017-10-05','2019-04-04'),(80,82,4,'2017-10-05','2019-04-04'),(81,83,4,'2018-02-13','2019-04-04'),(82,84,4,'2018-03-08','2019-04-04'),(83,85,4,'2018-04-02','2019-04-04'),(84,86,4,'2018-10-15','2019-04-04'),(85,87,4,'2018-12-03','2019-04-04'),(86,88,4,'2019-04-02','2019-04-04'),(87,89,6,'2018-11-22','2019-04-04'),(88,90,6,'2018-11-22','2019-04-04'),(89,91,6,'2018-11-22','2019-04-04'),(90,92,6,'2018-11-22','2019-04-04'),(91,93,6,'2018-11-22','2019-04-04'),(92,94,6,'2018-11-22','2019-04-04'),(93,95,6,'2018-11-22','2019-04-04'),(94,96,7,'2018-11-16','2019-04-04'),(95,97,7,'2018-11-16','2019-04-04'),(96,98,7,'2018-11-17','2019-04-04'),(97,99,7,'2018-11-17','2019-04-04'),(98,100,7,'2018-11-18','2019-04-04'),(99,101,7,'2018-11-18','2019-04-04'),(100,102,7,'2018-11-19','2019-04-04'),(101,103,7,'2018-11-19','2019-04-04'),(102,104,7,'2018-11-20','2019-04-04'),(103,105,7,'2019-02-22','2019-04-04'),(104,106,10,'2017-11-02','2019-04-04'),(105,107,10,'2017-11-02','2019-04-04'),(106,108,10,'2017-11-02','2019-04-04'),(107,109,10,'2017-11-02','2019-04-04'),(108,110,10,'2017-11-02','2019-04-04'),(109,111,10,'2018-03-25','2019-04-04'),(110,112,10,'2018-10-25','2019-04-04'),(111,113,10,'2018-11-08','2019-04-04'),(112,114,10,'2018-12-10','2019-04-04'),(113,115,11,'2017-10-31','2019-04-04'),(114,116,11,'2017-11-01','2019-04-04'),(115,117,11,'2017-11-02','2019-04-04'),(116,118,11,'2017-11-02','2019-04-04'),(117,119,11,'2018-03-31','2019-04-04'),(118,120,11,'2018-04-02','2019-04-04'),(119,121,11,'2018-04-04','2019-04-04'),(120,122,11,'2018-04-13','2019-04-04'),(121,123,13,'2018-10-23','2019-04-04');
/*!40000 ALTER TABLE `roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seasons`
--

DROP TABLE IF EXISTS `seasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `seasons` (
  `SEASON_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SEASON_SCHEDULE` int(11) DEFAULT NULL,
  PRIMARY KEY (`SEASON_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seasons`
--

LOCK TABLES `seasons` WRITE;
/*!40000 ALTER TABLE `seasons` DISABLE KEYS */;
INSERT INTO `seasons` VALUES (1,2019);
/*!40000 ALTER TABLE `seasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `series` (
  `SERIES_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SEASON_ID` int(11) DEFAULT NULL,
  `SERIES_STARTDATE` date DEFAULT NULL,
  `SERIES_ENDDATE` date DEFAULT NULL,
  `SERIES_VOD` date DEFAULT NULL,
  PRIMARY KEY (`SERIES_ID`),
  KEY `SEASON_ID` (`SEASON_ID`),
  CONSTRAINT `SEASON_ID` FOREIGN KEY (`SEASON_ID`) REFERENCES `seasons` (`season_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series`
--

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
INSERT INTO `series` VALUES (1,1,'2019-01-01','2019-06-06','2019-12-12');
/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsors`
--

DROP TABLE IF EXISTS `sponsors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sponsors` (
  `SPONSOR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TEAM_ID` int(11) DEFAULT NULL,
  `SPONSOR_NAME` varchar(128) DEFAULT NULL,
  `SPONSOR_BUSINESS` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`SPONSOR_ID`),
  KEY `TEAM_ID` (`TEAM_ID`),
  CONSTRAINT `TEAM_ID` FOREIGN KEY (`TEAM_ID`) REFERENCES `teams` (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsors`
--

LOCK TABLES `sponsors` WRITE;
/*!40000 ALTER TABLE `sponsors` DISABLE KEYS */;
INSERT INTO `sponsors` VALUES (1,1,'Nike','Shoes'),(2,2,'Sony','Electronics and Digital Media'),(3,3,'Keebler','Cookies');
/*!40000 ALTER TABLE `sponsors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `teams` (
  `TEAM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `OWNER_ID` int(11) DEFAULT NULL,
  `TEAM_NAME` varchar(128) DEFAULT NULL,
  `TEAM_CITY` varchar(128) DEFAULT NULL,
  `TEAM_DIVISION` varchar(128) DEFAULT NULL,
  `TEAM_COlORS` varchar(128) DEFAULT NULL,
  `TEAM_LOGO` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`TEAM_ID`),
  KEY `OWNER_ID` (`OWNER_ID`),
  CONSTRAINT `OWNER_ID` FOREIGN KEY (`OWNER_ID`) REFERENCES `owners` (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,1,'Boston Uprising','Boston, MA','Atlantic Division','Blue, Yellow, Black','boston_uprising.png'),(2,2,'Atlanta Reign','Atlanta, GA','Atlantic Division','Light gray, Red, Charcoal Gray','atlanta_reign.png'),(3,3,'Chengu Hunters','Chengdu','Pacific Division','Yellow, Gold, Black','chengdu_hunters.png'),(4,4,'Dallas Fuel','Dallas, TX','Pacific Division','Blue, Grey, Black','dallas_fuel.png'),(5,5,'Florida Mayhem','Florida','Atlantic Division','Red, Gold, Black','florida_mayhem.png'),(6,6,'Guangzhou Charge','Guangzhou','Pacific Division','Dark Blue, Light Blue, Teal','guangzhou_charge.png'),(7,7,'Hangzhou Spark','Hangzhou','Pacific Division','Pink, Blue, White','hangzhou_spark.png'),(8,8,'Houston Outlaws','Houston, TX','Atlantic Division','Green, Black, White','houston_outlaws.png'),(9,9,'London Spitfire','London','Atlantic Division','Orange, Black, Teal','london_spitfire.png'),(10,10,'Los Angeles Gladiators','Los Angeles, CA','Pacific Division','Purple, Black, White','los_angeles_gladiators.png'),(11,11,'Los Angeles Valiant','Los Angeles, CA','Pacific Division','Yellow, Green, White','los_angeles_valiant.png'),(12,12,'New York Excelsior','New York City, NY','Atlantic Division','Red, Blue, Dark Blue','new_york_excelsior.png'),(13,13,'Paris Eternal','Paris','Atlantic Division','Red, Gold, Black','paris_eternal.png'),(14,14,'Philadelphia Fusion','Philadelphia, PA','Atlantic Division','Orange, Black, White','philadelphia_fusion.png'),(15,15,'San Francisco Shock','San Francisco, CA','Pacific Division','Red, Gold, White','san_francisco_shock.png'),(17,16,'Seoul Dynasty','Seoul','Pacific Division','Black, Gold, White','seoul_dynasty.png'),(18,17,'Shanghai Dragons','Shanghai','Pacific Division','Red, Black, Yellow','shanghai_dragons.png'),(19,18,'Toronto Defiant','Toronto','Atlantic Division','Red, Black, light blue','toronto_defiant.png'),(20,19,'Vancouver Titans','Vancouver','Pacific Division','Green, Blue, White','vancouver_titans.png'),(21,20,'Washington Justice','Washington, DC','Atlantic Division','Red, White, Blue','washington_justice.png'),(26,NULL,'scooby','scoobydo','Atlantic','Orange','scoobydoo.jpg');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-11 16:11:29

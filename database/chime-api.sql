-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 34.27.176.23    Database: chime-api
-- ------------------------------------------------------
-- Server version	8.0.26-google

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '12779731-77d2-11ed-a8ae-42010a400002:1-20596';

--
-- Table structure for table `active_number`
--

DROP TABLE IF EXISTS `active_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `active_number` (
  `active_number_id` int NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(20) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `date_send` date DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`active_number_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `active_number_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_number`
--

LOCK TABLES `active_number` WRITE;
/*!40000 ALTER TABLE `active_number` DISABLE KEYS */;
INSERT INTO `active_number` VALUES (1,'6283120005090','szfefsd6521','2022-12-09',1),(3,'6283120005090','szfefsd6521','2022-12-09',1),(4,'6283120005090','szfefsd6521','2022-12-09',1),(5,'6283120005090','szfefsd6521','2022-12-09',1);
/*!40000 ALTER TABLE `active_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hashtag`
--

DROP TABLE IF EXISTS `hashtag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hashtag` (
  `hashtag_id` int NOT NULL AUTO_INCREMENT,
  `script_id` int DEFAULT NULL,
  `sent_amount` int DEFAULT NULL,
  `tag` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`hashtag_id`),
  KEY `script_id` (`script_id`),
  CONSTRAINT `hashtag_ibfk_1` FOREIGN KEY (`script_id`) REFERENCES `script` (`script_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hashtag`
--

LOCK TABLES `hashtag` WRITE;
/*!40000 ALTER TABLE `hashtag` DISABLE KEYS */;
INSERT INTO `hashtag` VALUES (1,1,25,'best parfume'),(2,1,0,'beli 1 gratis 1'),(5,1,0,'asd'),(6,1,0,'asdaa'),(7,1,0,'best parfume 1'),(8,1,0,'best parfume 2'),(9,1,0,'best parfume 5');
/*!40000 ALTER TABLE `hashtag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Gaiya Opium'),(2,'Gaiya Baccarat'),(3,'Baccarat'),(4,'YSL Opium');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `script`
--

DROP TABLE IF EXISTS `script`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `script` (
  `script_id` int NOT NULL AUTO_INCREMENT,
  `script_alias` varchar(30) DEFAULT NULL,
  `script_text` text,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`script_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `script_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `script`
--

LOCK TABLES `script` WRITE;
/*!40000 ALTER TABLE `script` DISABLE KEYS */;
INSERT INTO `script` VALUES (1,'gaiya opium 1','Hallo%20ka%20%F0%9F%98%8D%0ASaya%20Dari%20*GAIYA%20Inspired%20Perfume*%0AMenawarkan%20produk%20paling%20*BEST%20SELLER*%20kami%20di%20bulan%20ini%20%F0%9F%A4%A9%0A%0AYaitu%20Varian%20*BLACK%20OPIUM%20by%20YsL*%20Diformulasikan%20untuk%20laki-laki%20dan%20perempuan%20(unisex).%20Paduan%20vanilla%20dan%20kopi%20yang%20mantap.%20Super%20sexy%20dan%20misterius.%20Wanginya%20unik%2C%20mewah%2C%20berkelas%2C%20dan%20exclusive%2C%20punya%20ciri%20khas%20tersendiri.%0A%0AKarena%20kaka%20dapat%20penawaran%20langsung%20Via%20whatsapp%20jadi%20kami%20berikan%20promo%0A*BELI%201%20GRATIS%201*%20Dari%20harga%20normal%20250rb%2C%0A*sekarang%20jadi%20Hanya%2099rb%20saja*%20dapat%202%20Parfume%20dengan%20ukuran%20Botol%2060ml%2C%20%20WOOWWW!!!%20%F0%9F%A5%B0%F0%9F%98%8D%0A%0AInspired%20BLACK%20OPIUM%20by%20YsL%20%0Ahttps%3A%2F%2Fbit.ly%2FGaiyaParfume%0A%0A%23',1);
/*!40000 ALTER TABLE `script` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `uid` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('U0001','Vierry');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-11  2:36:07

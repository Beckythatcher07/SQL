-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: localhost    Database: hair
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Asos`
--

DROP TABLE IF EXISTS `Asos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Asos` (
  `Product_ID` int NOT NULL,
  `Product_Name` varchar(75) DEFAULT NULL,
  `Product_Price` decimal(4,2) DEFAULT NULL,
  `Product_Hair_Texture` varchar(10) DEFAULT NULL,
  `Product_Hair_Type` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Asos`
--

LOCK TABLES `Asos` WRITE;
/*!40000 ALTER TABLE `Asos` DISABLE KEYS */;
INSERT INTO `Asos` VALUES (1,'Hair Cotton Blend Shampoo',11.99,'Straight','1A'),(5,'Make It Last Wash N’ Go Conditioner',10.99,'Wavy','2C'),(7,'The Pure ',14.99,'Wavy','2A'),(18,'Mongongo Oil',9.99,'Coily','4A'),(19,'Anti-Frizz Gel',5.99,'Curly','3A'),(20,'The Replenisher Cleansing Conditioner',11.99,'Curly','3B'),(23,'Gel Ultimate Hold With Frizz Control',12.99,'Wavy','2A'),(26,'Super Dry Shampoo',7.99,'Straight','1A'),(27,'Nutriplenish Leave-In Conditioner',17.99,'Straight','1A'),(28,'Matcha + Apple Replenishing Superfood Shampoo',19.99,'Wavy','2A');
/*!40000 ALTER TABLE `Asos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Boots`
--

DROP TABLE IF EXISTS `Boots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Boots` (
  `Product_ID` int NOT NULL,
  `Product_Name` varchar(75) DEFAULT NULL,
  `Product_Price` decimal(4,2) DEFAULT NULL,
  `Product_Hair_Texture` varchar(10) DEFAULT NULL,
  `Product_Hair_Type` varchar(2) DEFAULT NULL,
  `Shipping_Price` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Boots`
--

LOCK TABLES `Boots` WRITE;
/*!40000 ALTER TABLE `Boots` DISABLE KEYS */;
INSERT INTO `Boots` VALUES (4,'Shea Butter Leave-In Conditioning Repair Cream',7.99,'Wavy','2C',2.99),(6,'Don\'t Shrink Elongating Gel',11.99,'Coily','4B',1.99),(10,'Care Between Washes Dry Shampoo Foam',2.99,'Straight','1A',2.99),(11,'Quenching Coconut Curls Mousse',6.99,'Curly','3A',2.99),(12,'Knot Today Leave-In Conditioner',13.99,'Curly','3B',1.99),(13,'Leave-In Conditioner',11.99,'Curly','3C',1.99),(14,'Curling Custard Gel',12.99,'Coily','4A',1.99),(15,'Natural Curl Love Milk',15.99,'Coily','4B',1.99),(22,'Moisture Rich Sulfate Free For Natural Hair',7.99,'Curly','3C',2.99),(24,'Ultra Defining Gel',9.99,'Wavy ','2B',2.99),(25,'Melt Into Moisture Matcha Green Tea Butter Mask',11.99,'Wavy','2C',1.99);
/*!40000 ALTER TABLE `Boots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Chemicals`
--

DROP TABLE IF EXISTS `Chemicals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Chemicals` (
  `Product_ID` int NOT NULL,
  `Product_Name` varchar(75) DEFAULT NULL,
  `Parabens` varchar(3) DEFAULT NULL,
  `Sulphates` varchar(3) DEFAULT NULL,
  `Silicones` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Chemicals`
--

LOCK TABLES `Chemicals` WRITE;
/*!40000 ALTER TABLE `Chemicals` DISABLE KEYS */;
INSERT INTO `Chemicals` VALUES (1,'Hair Cotton Blend Shampoo','No','Yes','Yes'),(2,' Rosewater Sulfate-Free Miracle Moisture Boost ','Yes','Yes','Yes'),(3,'Coconut Oil Formula Leave-In Conditioner','No','Yes','Yes'),(4,'Shea Butter Leave-In Conditioning Repair Cream','No','Yes','No'),(5,'Make It Last Wash N’ Go Conditioner','No','Yes','Yes'),(6,'Don\'t Shrink Elongating Gel','Yes','Yes','No'),(7,'The Pure','Yes','No','Yes'),(8,'Dream Lengths Restoring Conditioner','No','Yes','Yes'),(9,'Propure Light Moisture Conditioner','Yes','No','Yes'),(10,'Care Between Washes Dry Shampoo Foam','No','No','No'),(11,'Quenching Coconut Curls Mousse','Yes','Yes','No'),(12,'Knot Today Leave-In Conditioner','No','Yes','No'),(13,'Leave-In Conditioner','Yes','Yes','Yes'),(14,'Curling Custard Gel','No','No','Yes'),(15,'Natural Curl Love Milk','Yes','No','Yes'),(16,'Twist Defining Cream','Yes','No','Yes'),(17,'Argan Buttermilk Leave-In Milk','Yes','Yes','No'),(18,'Mongongo Oil','No','No','No'),(19,'Anti-Frizz Gel','Yes','Yes','No'),(20,'The Replenisher Cleansing Conditioner','No','No ','No'),(21,'Bouncy Curls Defining Gel','No','Yes','No'),(22,'Moisture Rich Sulfate Free For Natural Hair','Yes','No','No'),(23,'Gel Ultimate Hold With Frizz Control','No','Yes','No'),(24,'Ultra Defining Gel','No','No','No'),(25,'Melt Into Moisture Matcha Green Tea Butter Mask','Yes','No','No'),(26,'Super Dry Shampoo','Yes','No','No'),(27,'Nutriplenish Leave-In Conditioner','Yes','No','Yes'),(28,'Matcha + Apple Replenishing Superfood Shampoo','No','No','No');
/*!40000 ALTER TABLE `Chemicals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ethics`
--

DROP TABLE IF EXISTS `Ethics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ethics` (
  `Product_ID` int NOT NULL,
  `Product_Name` varchar(75) DEFAULT NULL,
  `Cruelty_Free` varchar(3) DEFAULT NULL,
  `Vegan` varchar(3) DEFAULT NULL,
  `Natural_Ingredients` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ethics`
--

LOCK TABLES `Ethics` WRITE;
/*!40000 ALTER TABLE `Ethics` DISABLE KEYS */;
INSERT INTO `Ethics` VALUES (1,'Hair Cotton Blend Shampoo','Yes','No','Yes'),(2,' Rosewater Sulfate-Free Miracle Moisture Boost ','Yes','No','Yes'),(3,'Coconut Oil Formula Leave-In Conditioner','Yes','No','No'),(4,'Shea Butter Leave-In Conditioning Repair Cream','Yes','No','No'),(5,'Make It Last Wash N’ Go Conditioner','Yes','No','No'),(6,'Don\'t Shrink Elongating Gel','Yes','No','Yes'),(7,'The Pure','Yes','No','Yes'),(8,'Dream Lengths Restoring Conditioner','Yes','No','No'),(9,'Propure Light Moisture Conditioner','Yes','No','Yes'),(10,'Care Between Washes Dry Shampoo Foam','Yes','No','No'),(11,'Quenching Coconut Curls Mousse','Yes','No','Yes'),(12,'Knot Today Leave-In Conditioner','Yes','Yes','Yes'),(13,'Leave-In Conditioner','Yes','No','No'),(14,'Curling Custard Gel','Yes','Yes','No'),(15,'Natural Curl Love Milk','Yes','No','Yes'),(16,'Twist Defining Cream','Yes','No','No'),(17,'Argan Buttermilk Leave-In Milk','No','No','No'),(18,'Mongongo Oil','No','Yes','Yes'),(19,'Anti-Frizz Gel','Yes','Yes','No'),(20,'The Replenisher Cleansing Conditioner','Yes','Yes','No'),(21,'Bouncy Curls Defining Gel','No','No','Yes'),(22,'Moisture Rich Sulfate Free For Natural Hair','No','Yes','Yes'),(23,'Gel Ultimate Hold With Frizz Control','Yes','Yes','Yes'),(24,'Ultra Defining Gel','Yes','No','Yes'),(25,'Melt Into Moisture Matcha Green Tea Butter Mask','Yes','No','No'),(26,'Super Dry Shampoo','No','Yes','No'),(27,'Nutriplenish Leave-In Conditioner','No','Yes','Yes'),(28,'Matcha + Apple Replenishing Superfood Shampoo','Yes','Yes','No');
/*!40000 ALTER TABLE `Ethics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `product_asos`
--

DROP TABLE IF EXISTS `product_asos`;
/*!50001 DROP VIEW IF EXISTS `product_asos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `product_asos` AS SELECT 
 1 AS `product_id`,
 1 AS `product_name`,
 1 AS `order_id`,
 1 AS `retail_store`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `product_boots`
--

DROP TABLE IF EXISTS `product_boots`;
/*!50001 DROP VIEW IF EXISTS `product_boots`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `product_boots` AS SELECT 
 1 AS `product_name`,
 1 AS `product_hair_type`,
 1 AS `product_price`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Product_Masterlist`
--

DROP TABLE IF EXISTS `Product_Masterlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Product_Masterlist` (
  `Product_ID` int NOT NULL AUTO_INCREMENT,
  `Product_Name` varchar(75) DEFAULT NULL,
  `Product_Category` varchar(50) DEFAULT NULL,
  `Product_Hair_Texture` varchar(10) DEFAULT NULL,
  `Product_Hair_Type` varchar(2) DEFAULT NULL,
  `Product_Brand` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Product_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product_Masterlist`
--

LOCK TABLES `Product_Masterlist` WRITE;
/*!40000 ALTER TABLE `Product_Masterlist` DISABLE KEYS */;
INSERT INTO `Product_Masterlist` VALUES (1,'Hair Cotten Blend Shampoo','Shampoo','Straight','1A','Aveeno'),(2,'Rosewater Sulfate-Free Miracle Moisture Boost','Shampoo','Straight','1A','Pantene'),(3,'Coconut Oil Formula Leave-In Conditioner','Leave-In Conditioner','Wavy','2B','Palmers'),(4,'Shea Butter Leave-In Conditioning Repair Cream','Leave-In Conditioner','Wavy','2C','Cantu'),(5,'Make It Last Wash N’ Go Conditioner','Conditioner','Wavy','2C','Sheamoisture'),(6,'Dont Shrink Elongating Gel','Gel','Coily','4B','Aunt Jackies'),(7,'The Pure','Shampoo','Wavy','2A','One Atelier Fekkai'),(8,'Dream Lengths Restoring Conditioner','Conditioner','Straight','1A','LOreal'),(9,'Propure Light Moisture Conditioner','Conditioner','Straight','1A','Tresemmé'),(10,'Care Between Washes Dry Shampoo Foam','Shampoo','Straight','1A','Dove'),(11,'Quenching Coconut Curls Mousse','Mousse','Curly','3A','Ogx'),(12,'Knot Today Leave-In Conditioner','Leave-In Conditioner','Curly','3B','Kinky Curly'),(13,'Leave-In Conditioner','Leave-In Conditioner','Curly','3C','Mixed Chicks'),(14,'Curling Custard Gel','Gel','Coily','4A','Kinky Curly'),(15,'Natural Curl Love Milk','Shampoo','Coily','4B','Camille Rose'),(16,'Twist Defining Cream','Cream','Coily','4C','As I Am'),(17,'Argan Buttermilk Leave-In Milk','Leave-In Conditioner','Coily','4C','Creme Of Nature'),(18,'Mongongo Oil','Oil','Coily','4A','Ouidad'),(19,'Anti-Frizz Gel','Gel','Curly','3A','Moptop'),(20,'The Replenisher Cleansing Conditioner','Conditioner','Curly','3B','Apothecare'),(21,'Bouncy Curls Defining Gel','Gel','Curly','3B','Tresemmé'),(22,'Moisture Rich Sulfate Free For Natural Hair','Shampoo','Curly','3C','Tgin'),(23,'Gel Ultimate Hold With Frizz Control','Gel','Wavy','2A','Curl Keeper'),(24,'Ultra Defining Gel','Gel','Wavy','2B','Devacurl'),(25,'Melt Into Moisture Matcha Green Tea Butter Mask','Conditioner','Wavy','2C','Devacurl'),(26,'Super Dry Shampoo','Shampoo','Straight','1A','Ouai'),(27,'Nutriplenish Leave-In Conditioner','Conditioner','Straight','1A','Aveda'),(28,'Matcha + Apple Replenishing Superfood Shampoo','Shampoo','Wavy','2A','Briogeo'),(29,'Regina',NULL,NULL,NULL,'is the best');
/*!40000 ALTER TABLE `Product_Masterlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_insert_product_m` BEFORE INSERT ON `product_masterlist` FOR EACH ROW SET NEW.product_brand = UPPER(NEW.product_brand) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_update_product_m` BEFORE UPDATE ON `product_masterlist` FOR EACH ROW SET NEW.product_brand = LOWER(NEW.product_brand) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `product_order`
--

DROP TABLE IF EXISTS `product_order`;
/*!50001 DROP VIEW IF EXISTS `product_order`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `product_order` AS SELECT 
 1 AS `product_id`,
 1 AS `product_name`,
 1 AS `order_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Rating`
--

DROP TABLE IF EXISTS `Rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Rating` (
  `Product_ID` int NOT NULL,
  `Product_Name` varchar(75) DEFAULT NULL,
  `Rating` int DEFAULT NULL,
  PRIMARY KEY (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rating`
--

LOCK TABLES `Rating` WRITE;
/*!40000 ALTER TABLE `Rating` DISABLE KEYS */;
INSERT INTO `Rating` VALUES (1,'Hair Cotton Blend Shampoo',3),(2,' Rosewater Sulfate-Free Miracle Moisture Boost ',4),(3,'Coconut Oil Formula Leave-In Conditioner',5),(4,'Shea Butter Leave-In Conditioning Repair Cream',3),(5,'Make It Last Wash N’ Go Conditioner',5),(6,'Don\'t Shrink Elongating Gel',2),(7,'The Pure',5),(8,'Dream Lengths Restoring Conditioner',3),(9,'Propure Light Moisture Conditioner',2),(10,'Care Between Washes Dry Shampoo Foam',5),(11,'Quenching Coconut Curls Mousse',3),(12,'Knot Today Leave-In Conditioner',3),(13,'Leave-In Conditioner',2),(14,'Curling Custard Gel',5),(15,'Natural Curl Love Milk',4),(16,'Twist Defining Cream',4),(17,'Argan Buttermilk Leave-In Milk',5),(18,'Mongongo Oil',5),(19,'Anti-Frizz Gel',2),(20,'The Replenisher Cleansing Conditioner',1),(21,'Bouncy Curls Defining Gel',1),(22,'Moisture Rich Sulfate Free For Natural Hair',3),(23,'Gel Ultimate Hold With Frizz Control',1),(24,'Ultra Defining Gel',3),(25,'Melt Into Moisture Matcha Green Tea Butter Mask',2),(26,'Super Dry Shampoo',5),(27,'Nutriplenish Leave-In Conditioner',2),(28,'Matcha + Apple Replenishing Superfood Shampoo',3);
/*!40000 ALTER TABLE `Rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Retail_store`
--

DROP TABLE IF EXISTS `Retail_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Retail_store` (
  `Product_ID` int DEFAULT NULL,
  `Product_Name` varchar(75) DEFAULT NULL,
  `Order_Id` int NOT NULL,
  `Product_Brand` varchar(50) DEFAULT NULL,
  `Retail_Store` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Order_Id`),
  KEY `Product_ID` (`Product_ID`),
  CONSTRAINT `retail_store_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `product_masterlist` (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Retail_store`
--

LOCK TABLES `Retail_store` WRITE;
/*!40000 ALTER TABLE `Retail_store` DISABLE KEYS */;
INSERT INTO `Retail_store` VALUES (14,'Curling Custard Gel',6000567,'Kinky Curly ','Boots'),(28,'Matcha + Apple Replenishing Superfood Shampoo',6009876,'Briogeo','Asos'),(12,'Knot Today Leave-In Conditioner',6023456,'Kinky Curly ','Boots'),(19,'Anti-Frizz Gel',6311112,'Moptop','Asos'),(13,'Leave-In Conditioner',6333424,'Mixed Chicks','Boots'),(18,'Mongongo Oil',6543211,'Ouidad','Asos'),(21,'Bouncy Curls Defining Gel',6590843,'Tresemmé','Superdrug'),(22,'Moisture Rich Sulfate Free For Natural Hair',6598432,'Tgin','Boots'),(2,' Rosewater Sulfate-Free Miracle Moisture Boost ',6700952,'Pantene','Superdrug'),(4,'Shea Butter Leave-In Conditioning Repair Cream',6754321,'Cantu','Boots'),(27,'Nutriplenish Leave-In Conditioner',6759998,'Aveda','Asos'),(25,'Melt Into Moisture Matcha Green Tea Butter Mask',6767676,'Devacurl','Boots'),(15,'Natural Curl Love Milk',6789043,'Camille Rose','Boots'),(16,'Twist Defining Cream',6789954,'As I Am','Superdrug'),(24,'Ultra Defining Gel',6790865,'Devacurl','Boots'),(23,'Gel Ultimate Hold With Frizz Control',6799890,'Curl Keeper','Asos'),(1,'Hair Cotton Blend Shampoo',6810543,'Aveeno','Asos'),(17,'Argan Buttermilk Leave-In Milk',6879999,'Creme Of Nature ','Superdrug'),(7,'The Pure',6887564,'One Atelier Fekkai','Asos'),(3,'Coconut Oil Formula Leave-In Conditioner',6890001,'Palmers','Superdrug'),(5,'Make It Last Wash N’ Go Conditioner',6897543,'Sheamoisture','Asos'),(10,'Care Between Washes Dry Shampoo Foam',6899722,'Dove','Boots'),(20,'The Replenisher Cleansing Conditioner',6908456,'Apothecare','Asos'),(6,'Don\'t Shrink Elongating Gel',6980654,'Aunt Jackie\'s','Boots'),(8,'Dream Lengths Restoring Conditioner',6987659,'L\'Oreal','Superdrug'),(26,'Super Dry Shampoo',6987978,'Ouai','Asos'),(11,'Quenching Coconut Curls Mousse',6999990,'Ogx','Boots'),(9,'Propure Light Moisture Conditioner',6999991,'Tresemmé','Superdrug');
/*!40000 ALTER TABLE `Retail_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Superdrug`
--

DROP TABLE IF EXISTS `Superdrug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Superdrug` (
  `Product_ID` int NOT NULL,
  `Product_Name` varchar(75) DEFAULT NULL,
  `Product_Price` decimal(4,2) DEFAULT NULL,
  `Product_Hair_Texture` varchar(10) DEFAULT NULL,
  `Product_Hair_Type` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Superdrug`
--

LOCK TABLES `Superdrug` WRITE;
/*!40000 ALTER TABLE `Superdrug` DISABLE KEYS */;
INSERT INTO `Superdrug` VALUES (2,' Rosewater Sulfate-Free Miracle Moisture Boost ',3.99,'Straight','1A'),(3,'Coconut Oil Formula Leave-In Conditioner',4.99,'Wavy','2B'),(8,'Dream Lengths Restoring Conditioner',4.99,'Straight','1A'),(9,'Propure Light Moisture Conditioner',2.99,'Straight','1A'),(16,'Twist Defining Cream',6.99,'Coily','4C'),(17,'Argan Buttermilk Leave-In Milk',13.99,'Coily','4C'),(21,'Bouncy Curls Defining Gel',4.99,'Curly','3B');
/*!40000 ALTER TABLE `Superdrug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `product_asos`
--

/*!50001 DROP VIEW IF EXISTS `product_asos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `product_asos` AS select `product_masterlist`.`Product_ID` AS `product_id`,`product_masterlist`.`Product_Name` AS `product_name`,`retail_store`.`Order_Id` AS `order_id`,`retail_store`.`Retail_Store` AS `retail_store` from (`product_masterlist` join `retail_store` on((`product_masterlist`.`Product_ID` = `retail_store`.`Product_ID`))) where (`retail_store`.`Retail_Store` = 'ASOS') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `product_boots`
--

/*!50001 DROP VIEW IF EXISTS `product_boots`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `product_boots` AS select `boots`.`Product_Name` AS `product_name`,`boots`.`Product_Hair_Type` AS `product_hair_type`,`boots`.`Product_Price` AS `product_price` from `boots` where (`boots`.`Product_Price` <= '5') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `product_order`
--

/*!50001 DROP VIEW IF EXISTS `product_order`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `product_order` AS select `product_masterlist`.`Product_ID` AS `product_id`,`product_masterlist`.`Product_Name` AS `product_name`,`retail_store`.`Order_Id` AS `order_id` from (`product_masterlist` join `retail_store` on((`product_masterlist`.`Product_ID` = `retail_store`.`Product_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-16  0:25:41

-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: onemorepage
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `AuthorID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `BirthYear` int(11) NOT NULL,
  PRIMARY KEY (`AuthorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Paulo Coelho',1947),(2,'Charles Duhigg',1974),(3,'Colleen Hoover',1979),(4,'James Clear',1986),(5,'Robert Kiyosaki',1947),(6,'Haisley Richard',1990);
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `book_categories`
--

DROP TABLE IF EXISTS `book_categories`;
/*!50001 DROP VIEW IF EXISTS `book_categories`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `book_categories` AS SELECT 
 1 AS `CategoryName`,
 1 AS `BookID`,
 1 AS `Title`,
 1 AS `Price`,
 1 AS `PublicationYear`,
 1 AS `AuthorID`,
 1 AS `CategoryID`,
 1 AS `PublisherID`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `BookID` int(11) NOT NULL,
  `Title` varchar(35) NOT NULL,
  `Price` varchar(10) NOT NULL,
  `PublicationYear` int(11) NOT NULL,
  `AuthorID` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `PublisherID` int(11) NOT NULL,
  PRIMARY KEY (`BookID`),
  KEY `Books_Authors` (`AuthorID`),
  KEY `Books_Categories` (`CategoryID`),
  KEY `Books_Publishers` (`PublisherID`),
  KEY `books_title` (`Title`),
  CONSTRAINT `Books_Authors` FOREIGN KEY (`AuthorID`) REFERENCES `authors` (`AuthorID`),
  CONSTRAINT `Books_Categories` FOREIGN KEY (`CategoryID`) REFERENCES `categories` (`CategoryID`),
  CONSTRAINT `Books_Publishers` FOREIGN KEY (`PublisherID`) REFERENCES `publishers` (`PublisherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (10001,'It ends with us','$20',2016,2,4001,1001),(10002,'Atomatic Habits','$18',2018,1,4002,1002),(10003,'The Power of habit','$18',2012,3,4003,1001),(10004,'Rich Dad Poor Dad','$11',1997,4,4003,1004),(10005,'Th Alchemist','$20',1988,5,4002,1005);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(30) NOT NULL,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (4001,'Fiction'),(4002,'Science Fiction'),(4003,'Romance');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `order_summary`
--

DROP TABLE IF EXISTS `order_summary`;
/*!50001 DROP VIEW IF EXISTS `order_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_summary` AS SELECT 
 1 AS `OrderID`,
 1 AS `OrderDate`,
 1 AS `TotalAmount`,
 1 AS `UserName`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `OrderDetailID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` varchar(10) NOT NULL,
  `OrderID` int(11) NOT NULL,
  `BookID` int(11) NOT NULL,
  PRIMARY KEY (`OrderDetailID`),
  KEY `OrderDetails_Books` (`BookID`),
  KEY `OrderDetails_Orders` (`OrderID`),
  CONSTRAINT `OrderDetails_Books` FOREIGN KEY (`BookID`) REFERENCES `books` (`BookID`),
  CONSTRAINT `OrderDetails_Orders` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (601,20,'$20',501,10001),(602,15,'$15',502,10002),(603,10,'$18',503,10003),(604,5,'$11',504,10004),(605,3,'$20',505,10005),(606,2,'25',501,10005);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Order_details_total_amount` AFTER INSERT ON `orderdetails` FOR EACH ROW begin
		declare amt decimal(10,2);
		select sum(Price*Quantity) into amt
		from OrderDetails
		where OrderID=new.OrderID;
		
		update Orders
		set TotalAmount= amt
		where OrderID=new.OrderID;
		
       end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `OrderDate` date NOT NULL,
  `TotalAmount` varchar(10) NOT NULL,
  `UserID` int(11) NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `Orders_Users` (`UserID`),
  KEY `order_total_amount` (`TotalAmount`),
  CONSTRAINT `Orders_Users` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (501,'2024-01-10','50.00',101),(502,'2024-01-12','$50',102),(503,'2024-01-13','$39',103),(504,'2024-01-15','$23',104),(505,'2024-01-15','$16',105);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishers`
--

DROP TABLE IF EXISTS `publishers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publishers` (
  `PublisherID` int(11) NOT NULL,
  `Name` varchar(35) NOT NULL,
  `PhoneNumber` int(11) NOT NULL,
  `Address` varchar(40) NOT NULL,
  PRIMARY KEY (`PublisherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishers`
--

LOCK TABLES `publishers` WRITE;
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;
INSERT INTO `publishers` VALUES (1001,'Random House',301123567,'13 Kerma Crescent Ben Bullen'),(1002,'Atria Books',954235678,'5 Raglan Street Wrattens Forest'),(1003,'Plata Publishing',617346789,'38 Elizabeth Street Wallu'),(1004,'Original Brazalian Publications',415567890,'96 South Molle Boulevard Feluga'),(1005,'Wholesale Liquidation Lots',214567901,'33 Mcgregor Street MENINDEE'),(1006,'Wholesale Liquidation Lots',214567901,'33 Mcgregor Street MENINDEE');
/*!40000 ALTER TABLE `publishers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `ReviewID` int(11) NOT NULL,
  `Rating` int(11) NOT NULL,
  `BookID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  PRIMARY KEY (`ReviewID`),
  KEY `Reviews_Books` (`BookID`),
  KEY `Reviews_Users` (`UserID`),
  CONSTRAINT `Reviews_Books` FOREIGN KEY (`BookID`) REFERENCES `books` (`BookID`),
  CONSTRAINT `Reviews_Users` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (701,5,10001,101),(702,4,10002,102),(704,3,10004,104),(705,2,10005,105);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Phone` int(11) NOT NULL,
  `Address` varchar(30) NOT NULL,
  PRIMARY KEY (`UserID`),
  KEY `users_email` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (101,'Carlos Rose','carloscrose@gmail.com','F64#jvj',973618995,'3175 Deer Ridge Drive Caldwell'),(102,'Alicia Teague','aliciateague@gmail.com','Kih^9gj',267119462,'29 Chester Street Yelgun'),(103,'Lachlan Goyder','lachlangoyder@gmail.com','goy@837',756963555,'47 Shirley Street Highland'),(104,'Finn Felan','finnfelan@gmail.com','NF79r@9',261764408,'79 Grayson Street Munderoo'),(105,'Ben Brumby','benbrumby@gmail.com','MO0#9#',393383073,'8 Cornish Street Keilor East');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `book_categories`
--

/*!50001 DROP VIEW IF EXISTS `book_categories`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `book_categories` AS select `cat`.`CategoryName` AS `CategoryName`,`bok`.`BookID` AS `BookID`,`bok`.`Title` AS `Title`,`bok`.`Price` AS `Price`,`bok`.`PublicationYear` AS `PublicationYear`,`bok`.`AuthorID` AS `AuthorID`,`bok`.`CategoryID` AS `CategoryID`,`bok`.`PublisherID` AS `PublisherID` from (`books` `bok` join `categories` `cat` on((`bok`.`CategoryID` = `cat`.`CategoryID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `order_summary`
--

/*!50001 DROP VIEW IF EXISTS `order_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_summary` AS select `od`.`OrderID` AS `OrderID`,`od`.`OrderDate` AS `OrderDate`,`od`.`TotalAmount` AS `TotalAmount`,`usr`.`UserName` AS `UserName` from ((`orders` `od` join `users` `usr` on((`od`.`UserID` = `usr`.`UserID`))) join `orderdetails` `ords` on((`ords`.`OrderID` = `od`.`OrderID`))) */;
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

-- Dump completed on 2024-02-29 10:17:59

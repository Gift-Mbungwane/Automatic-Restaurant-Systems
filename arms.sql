use arms;
-- Host: localhost    Database: arms
-- ------------------------------------------------------
-- Server version	8.0.13
--

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

-- Table structure for table `employees`
--
DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employees` (
  `EmployeeLogin` int(4) NOT NULL AUTO_INCREMENT,
  `reportsTo` int(4) DEFAULT NULL,
  `RestaurantCode` int(4) NOT NULL,
  `LastName` varchar(20) CHARACTER SET utf16 COLLATE utf16_polish_ci NOT NULL,
  `FirstName` varchar(20) CHARACTER SET utf16 COLLATE utf16_polish_ci NOT NULL,
  `Position` enum('waiter','cook','manager') CHARACTER SET utf16 COLLATE utf16_polish_ci NOT NULL,
  `Password` int(5) NOT NULL,
  `WorkingHoursPerWeek` int(4) DEFAULT NULL,
  PRIMARY KEY (`EmployeeLogin`),
  KEY `RestaurantCode` (`RestaurantCode`),
  KEY `reportsTo` (`reportsTo`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`RestaurantCode`) REFERENCES `restaurant` (`code`),
  CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`reportsTo`) REFERENCES `employees` (`employeelogin`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf16 COLLATE=utf16_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees`
VALUES (1,NULL,1,'Gift','Mbungwane','manager',98234,6),(2,1,1,'Skha','Mcunu','waiter',56565,11),(3,NULL,1,'Kagiso','Mfusi','manager',99123,33),(4,3,1,'Thando','Mbuyazi','waiter',11223,42),(5,1,1,'Pfano','Mbedzi','waiter',66654,13),(6,3,1,'Tebogo','Mofokeng','waiter',54545,28),(7,1,1,'Onica','Losta','waiter',54321,23),(8,3,1,'Gordon','Gordon','cook',99991,0),(9,3,1,'Katlego','Katlego','cook',43212,4),(10,1,1,'Siya','Sibindi','manager',12345,12),(11,1,1,'Ncediswa','Ncediswa','waiter',12312,10),(12,3,1,'Lerato','Lerato','cook',56783,22),(13,1,1,'Melba','Melba','waiter',1199,0);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `menu` (
  `IDmenu` int(4) NOT NULL AUTO_INCREMENT,
  `RestaurantCode` int(4) NOT NULL,
  `Title` varchar(25) CHARACTER SET utf16 COLLATE utf16_polish_ci NOT NULL,
  `Type` varchar(20) CHARACTER SET utf16 COLLATE utf16_polish_ci NOT NULL,
  `Status` enum('used','unused') CHARACTER SET utf16 COLLATE utf16_polish_ci NOT NULL,
  PRIMARY KEY (`IDmenu`),
  KEY `RestaurantCode` (`RestaurantCode`),
  KEY `RestaurantCode_2` (`RestaurantCode`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`RestaurantCode`) REFERENCES `restaurant` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf16 COLLATE=utf16_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,1,'Starters','Dish Menu','used'),(2,1,'Salads','Dish Menu','used'),(3,1,'Soups','Dish Menu','used'),(4,1,'Pastas','Dish Menu','used'),(5,1,'FishAndMediterranean','Dish Menu','used'),(6,1,'MainDishes','Dish Menu','used'),(7,1,'IceCream','Desert Menu','used'),(8,1,'Cakes','Desert Menu','used'),(9,1,'Pancakes','Desert Menu','unused'),(10,1,'ColdDrinks','Drink Menu','used'),(11,1,'Tea','Drink Menu','unused'),(12,1,'Coffee','Drink Menu','used'),(13,1,'Smoothes','Drink Menu','unused'),(14,1,'Coctails','Drink Menu','unused'),(15,1,'SpainAndPortuguese','Wine Menu','unused'),(16,1,'AustriaAndGermany','Wine Menu','unused'),(17,1,'Italy','Wine Menu','used'),(18,1,'France','Wine Menu','used'),(19,1,'AustraliaAndNewZealand','Wine Menu','unused'),(20,1,'ChampagneAndSparklingWine','Wine Menu','unused');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;

--
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `order_product` (
  `productsID` int(4) NOT NULL,
  `OrderID` int(4) NOT NULL,
  `quantity` int(4) NOT NULL,
  KEY `OrderID` (`OrderID`),
  KEY `productsID` (`productsID`),
  CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`productsID`) REFERENCES `products` (`idproduct`),
  CONSTRAINT `order_product_ibfk_2` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`idorder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product`
--
/*!40000 ALTER TABLE `order_product` DISABLE KEYS */;
INSERT INTO `order_product` VALUES (10,1,1),(30,1,2),(10,1,1),(30,1,2),(21,1,1),(1,1,12),(3,1,4),(5,1,1),(1,1,12),(3,1,4),(3,1,4),(16,37,1),(16,38,20),(10,2,1),(25,41,2),(14,41,4),(28,16,1),(28,16,1),(43,18,4),(3,50,4),(9,51,2),(1,17,1),(21,66,3),(29,66,4),(24,70,1),(6,70,2),(15,70,1),(25,70,1),(19,71,3),(19,71,5);
/*!40000 ALTER TABLE `order_product` ENABLE KEYS */;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orders` (
  `IDorder` int(4) NOT NULL AUTO_INCREMENT,
  `IDTable` int(4) NOT NULL,
  `Status` enum('in progress','finished') CHARACTER SET utf16 COLLATE utf16_polish_ci NOT NULL,
  `Amount` double(5,2) DEFAULT NULL,
  `Discount` int(3) DEFAULT NULL,
  `StartTime` int(2) NOT NULL,
  `CreationDate` date DEFAULT NULL,
  PRIMARY KEY (`IDorder`),
  KEY `IDTable` (`IDTable`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`IDTable`) REFERENCES `tables` (`idtable`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf16 COLLATE=utf16_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,7,'finished',545.00,NULL,16,'2019-01-03'),(2,12,'finished',NULL,NULL,11,'2019-01-06'),(3,11,'finished',0.00,NULL,17,'2019-01-06'),(5,1,'finished',0.00,NULL,15,'2019-01-05'),(7,2,'in progress',111.00,20,19,'2019-01-02'),(9,20,'finished',0.00,NULL,18,'2019-01-06'),(12,2,'finished',0.00,NULL,19,'2019-01-05'),(13,1,'finished',34.00,0,15,'2019-01-05'),(14,9,'finished',0.00,NULL,20,'2019-01-05'),(15,1,'finished',0.00,NULL,15,'2019-01-05'),(16,9,'in progress',36.00,5,20,'2019-01-03'),(17,8,'in progress',184.00,24,21,'2019-01-03'),(18,8,'in progress',48.00,0,21,'2019-01-03'),(33,7,'finished',18.00,10,16,'2019-01-03'),(37,7,'in progress',92.00,0,16,'2019-01-03'),(38,8,'in progress',447.00,0,21,'2019-01-03'),(41,8,'in progress',90.00,0,21,'2019-01-06'),(42,2,'in progress',0.00,0,19,'2019-01-06'),(43,1,'in progress',0.00,0,15,'2019-01-02'),(46,10,'in progress',0.00,0,22,'2019-01-02'),(47,3,'finished',0.00,0,22,'2019-01-02'),(48,4,'in progress',0.00,0,23,'2019-01-07'),(50,5,'finished',52.00,24,11,'2019-01-09'),(51,7,'in progress',24.00,0,11,'2019-01-09'),(53,17,'in progress',0.00,0,0,'2019-01-10'),(55,18,'in progress',40.00,0,0,'2019-01-10'),(56,17,'in progress',0.00,0,19,'2019-01-14'),(57,20,'in progress',0.00,0,19,'2019-01-14'),(58,23,'in progress',0.00,0,19,'2019-01-14'),(59,6,'in progress',0.00,0,19,'2019-01-14'),(63,13,'in progress',0.00,0,20,'2019-01-14'),(64,17,'in progress',0.00,0,20,'2019-01-14'),(66,17,'in progress',0.00,0,9,'2019-01-15'),(70,7,'in progress',0.00,0,9,'2019-01-15'),(71,17,'in progress',0.00,0,9,'2019-01-15');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `payment` (
  `paymentID` int(4) NOT NULL AUTO_INCREMENT,
  `orderID` int(4) NOT NULL,
  `paymentData` date NOT NULL,
  PRIMARY KEY (`paymentID`),
  KEY `orderID` (`orderID`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `orders` (`idorder`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf16 COLLATE=utf16_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,2,'2018-11-13');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `products` (
  `IDproduct` int(4) NOT NULL AUTO_INCREMENT,
  `MenuID` int(4) NOT NULL,
  `Name` varchar(40) CHARACTER SET utf16 COLLATE utf16_polish_ci NOT NULL,
  `Price` float NOT NULL,
  `Description` varchar(250) CHARACTER SET utf16 COLLATE utf16_polish_ci DEFAULT NULL,
  `QuantityInStock` int(5) NOT NULL,
  `ChangeInStock` int(5) DEFAULT '0',
  PRIMARY KEY (`IDproduct`),
  KEY `MenuID` (`MenuID`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`MenuID`) REFERENCES `menu` (`idmenu`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf16 COLLATE=utf16_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (null,1,'Main',25.99,'Grilled Beef with Potatoes',5,-5),
(null,1,'Main',30.99,'Tuna Roast Source',5,-5),
(null,1,'Main',40.00,'Roast Beef(4 Sticks)',5,-5),
(null,1,'Main',20.50,'Salted Fried Chicken',5,-5),
(null,1,'Main',20.50,'Sunny sideup Egg',5,-5),
(null,1,'Main',20.50,'Chicken Adobo',5,-5),
(null,1,'Main',20.50,'Lumpia Shanghai',5,-5),
(null,1,'Main',20.50,'Fried Pork',5,-5),
(null,1,'Main',20.50,'Chopsuey',5,-5),
(null,1,'Main',40.00,'Letson Kawali',5,-5),
(null,1,'Main',30.99,'Fried Tokwa',5,-5),
(null,1,'Main',25.99,'Marinated Beef',5,-5),
(null,2,'Desserts',25.99,'Special Cake',4,-2),
(null,2,'Desserts',30.99,'Froost Sweeten Vanilla',4,-2),
(null,2,'Desserts',40.00,'Halo Halo',4,-2),
(null,2,'Desserts',20.50,'Nicker Backer',4,-2),
(null,2,'Desserts',20.50,'Choco Cake',4,-2),
(null,2,'Desserts',20.50,'Sweet Caramel Bread',4,-2),
(null,2,'Desserts',25.99,'Choco Bread',4,-2),
(null,2,'Desserts',30.99,'Cream Puffs Delicious',4,-2),
(null,2,'Desserts',40.00,'Fruit Salad',4,-2),
(null,2,'Desserts',20.50,'Special Macaronni',4,-2),
(null,2,'Desserts',20.50,'Biko Sweet',4,-2),
(null,2,'Desserts',20.50,'Burger King',4,-2),
(null,3,'Drinks',20.50,'Coconut Juice',15,0),
(null,3,'Drinks',20.50,'Orange Juice',15,0),
(null,3,'Drinks',20.50,'Fresh Fruits Juice',15,0),
(null,3,'Drinks',20.50,'Choco Juice',15,-7),
(null,3,'Drinks',20.50,'Softdrinks Pepsi',15,0),
(null,3,'Drinks',20.50,'Can Juice',15,0),
(null,3,'Drinks',40.00,'Ice Ta JUice',12,0),
(null,3,'Drinks',40.00,'Softdrinks Coke',25,0),
(null,3,'Drinks',30.99,'May Wine',9,0),
(null,3,'Drinks',30.99,'Lemon Juice',22,0),
(null,3,'Drinks',25.99,'Cold Lemonade Juice',15,0),
(null,3,'Drinks',25.99,'Mango Juice',15,-4);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `reservations` (
  `IDreservation` int(4) NOT NULL,
  `TableID` int(4) NOT NULL,
  `Date` date NOT NULL,
  `Status` enum('for use','used') CHARACTER SET utf16 COLLATE utf16_polish_ci NOT NULL,
  `Pin` int(4) NOT NULL,
  PRIMARY KEY (`IDreservation`),
  KEY `TableID` (`TableID`),
  CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`TableID`) REFERENCES `tables` (`idtable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (1,9,'2018-11-13','for use',1122),(2,2,'2018-11-29','for use',1111),(3,7,'2019-01-06','for use',7878),(8,5,'2019-01-03','for use',1265),(10,12,'2019-01-07','for use',1010),(11,13,'2019-01-07','used',1212),(12,8,'2019-01-07','for use',1231),(16,6,'2019-01-05','for use',1234),(17,5,'2019-01-07','for use',7895),(20,3,'2019-01-15','for use',7854);
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `restaurant` (
  `Code` int(4) NOT NULL,
  `Name` varchar(40) COLLATE utf16_polish_ci DEFAULT NULL,
  `Phone` varchar(25) CHARACTER SET ucs2 COLLATE ucs2_polish_ci DEFAULT NULL,
  `Address` varchar(25) CHARACTER SET ucs2 COLLATE ucs2_polish_ci DEFAULT NULL,
  `City` varchar(25) CHARACTER SET ucs2 COLLATE ucs2_polish_ci DEFAULT NULL,
  `State` varchar(25) CHARACTER SET utf16 COLLATE utf16_polish_ci DEFAULT NULL,
  `Country` varchar(25) CHARACTER SET ucs2 COLLATE ucs2_polish_ci NOT NULL,
  `PostalCode` int(5) NOT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'G_Eats','+27 74 507 7164','6008 Moshoeshoe Street Orlando East (Soweto)','Johannesburg','Gauteng','South Africa',1804);
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
--
-- Table structure for table `tables`
--

DROP TABLE IF EXISTS `tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tables` (
  `IDtable` int(4) NOT NULL AUTO_INCREMENT,
  `EmployeeID` int(4) NOT NULL,
  `IDRoom` int(4) NOT NULL,
  `Status` enum('free','taken') CHARACTER SET utf16 COLLATE utf16_polish_ci NOT NULL,
  `Size` int(2) NOT NULL,
  PRIMARY KEY (`IDtable`),
  KEY `EmployeeID` (`EmployeeID`),
  KEY `IDRoom` (`IDRoom`),
  CONSTRAINT `tables_ibfk_2` FOREIGN KEY (`IDRoom`) REFERENCES `rooms` (`idroom`),
  CONSTRAINT `tables_ibfk_3` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`employeelogin`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf16 COLLATE=utf16_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tables`
--
/*!40000 ALTER TABLE `tables` DISABLE KEYS */;
INSERT INTO `tables`
VALUES (1,2,1,'free',4),
(2,2,1,'taken',2),
(3,2,1,'free',6),
(4,2,1,'taken',8),
(5,2,1,'free',2),
(6,4,2,'taken',4),
(7,4,2,'free',2),
(8,4,2,'taken',8),
(9,4,2,'taken',2),
(10,4,2,'taken',4),
(11,5,3,'free',4),
(12,5,3,'free',4),
(13,5,3,'free',10),
(14,5,3,'free',2),
(15,5,3,'free',4),
(16,6,4,'free',4),
(17,6,4,'taken',6),
(18,6,4,'free',2),
(19,6,4,'free',8),
(20,6,4,'taken',2),
(21,7,4,'free',4),
(22,7,4,'free',6),
(23,7,4,'taken',2),
(24,7,4,'free',8),
(25,7,4,'free',2);
/*!40000 ALTER TABLE `tables` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



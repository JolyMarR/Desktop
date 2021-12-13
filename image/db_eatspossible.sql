-- MySQL dump 10.13  Distrib 5.6.26, for Win32 (x86)
--
-- Host: localhost    Database: db_eatspossible
-- ------------------------------------------------------
-- Server version	5.6.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_cashadvance`
--

DROP TABLE IF EXISTS `tbl_cashadvance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cashadvance` (
  `Employee_Id` int(11) DEFAULT NULL,
  `CashAdvance_Id` int(11) NOT NULL AUTO_INCREMENT,
  `CashAdvance_Amount` decimal(13,4) DEFAULT NULL,
  `CashAdvance_Date` date DEFAULT NULL,
  PRIMARY KEY (`CashAdvance_Id`),
  KEY `fk_cashadvance` (`Employee_Id`),
  CONSTRAINT `fk_cashadvance` FOREIGN KEY (`Employee_Id`) REFERENCES `tbl_employees` (`Employee_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cashadvance`
--

LOCK TABLES `tbl_cashadvance` WRITE;
/*!40000 ALTER TABLE `tbl_cashadvance` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cashadvance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cashadvancepayment`
--

DROP TABLE IF EXISTS `tbl_cashadvancepayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cashadvancepayment` (
  `Employee_Id` int(11) DEFAULT NULL,
  `Payment_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Payment_Amount` decimal(13,4) DEFAULT NULL,
  `Payment_Date` date DEFAULT NULL,
  PRIMARY KEY (`Payment_Id`),
  KEY `fk_cashadvancepayment` (`Employee_Id`),
  CONSTRAINT `fk_cashadvancepayment` FOREIGN KEY (`Employee_Id`) REFERENCES `tbl_employees` (`Employee_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cashadvancepayment`
--

LOCK TABLES `tbl_cashadvancepayment` WRITE;
/*!40000 ALTER TABLE `tbl_cashadvancepayment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cashadvancepayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_deductions`
--

DROP TABLE IF EXISTS `tbl_deductions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_deductions` (
  `Employee_Id` int(11) DEFAULT NULL,
  `Deduction_Description` varchar(255) DEFAULT NULL,
  `Deduction_Amount` decimal(13,4) DEFAULT NULL,
  `Deduction_Date` datetime DEFAULT NULL,
  KEY `fk_deductions` (`Employee_Id`),
  CONSTRAINT `fk_deductions` FOREIGN KEY (`Employee_Id`) REFERENCES `tbl_employees` (`Employee_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_deductions`
--

LOCK TABLES `tbl_deductions` WRITE;
/*!40000 ALTER TABLE `tbl_deductions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_deductions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_deleteditems`
--

DROP TABLE IF EXISTS `tbl_deleteditems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_deleteditems` (
  `Item_Id` int(11) DEFAULT NULL,
  KEY `fk_DeletedItems` (`Item_Id`),
  CONSTRAINT `fk_DeletedItems` FOREIGN KEY (`Item_Id`) REFERENCES `tbl_items` (`Item_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_deleteditems`
--

LOCK TABLES `tbl_deleteditems` WRITE;
/*!40000 ALTER TABLE `tbl_deleteditems` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_deleteditems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_deletedlist`
--

DROP TABLE IF EXISTS `tbl_deletedlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_deletedlist` (
  `PurchaseItem_Id` int(11) DEFAULT NULL,
  KEY `fk_deleted` (`PurchaseItem_Id`),
  CONSTRAINT `fk_deleted` FOREIGN KEY (`PurchaseItem_Id`) REFERENCES `tbl_purchaselist` (`PurchaseItem_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_deletedlist`
--

LOCK TABLES `tbl_deletedlist` WRITE;
/*!40000 ALTER TABLE `tbl_deletedlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_deletedlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_deletedmenu`
--

DROP TABLE IF EXISTS `tbl_deletedmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_deletedmenu` (
  `MenuItem_Id` int(11) DEFAULT NULL,
  KEY `fk_deletedmenu` (`MenuItem_Id`),
  CONSTRAINT `fk_deletedmenu` FOREIGN KEY (`MenuItem_Id`) REFERENCES `tbl_menuitems` (`MenuItem_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_deletedmenu`
--

LOCK TABLES `tbl_deletedmenu` WRITE;
/*!40000 ALTER TABLE `tbl_deletedmenu` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_deletedmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_deletedparticulars`
--

DROP TABLE IF EXISTS `tbl_deletedparticulars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_deletedparticulars` (
  `VoucherItem_Id` int(11) DEFAULT NULL,
  KEY `fk_deletedparticulars` (`VoucherItem_Id`),
  CONSTRAINT `fk_deletedparticulars` FOREIGN KEY (`VoucherItem_Id`) REFERENCES `tbl_voucheritem` (`VoucherItem_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_deletedparticulars`
--

LOCK TABLES `tbl_deletedparticulars` WRITE;
/*!40000 ALTER TABLE `tbl_deletedparticulars` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_deletedparticulars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_discount`
--

DROP TABLE IF EXISTS `tbl_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_discount` (
  `Discount_Id` int(11) NOT NULL DEFAULT '0',
  `DiscountType_Id` int(11) DEFAULT NULL,
  `Discount_NoOfCustomer` int(11) DEFAULT NULL,
  `Discount_NoOfSenior` int(11) DEFAULT NULL,
  PRIMARY KEY (`Discount_Id`),
  KEY `fk_discounttype` (`DiscountType_Id`),
  CONSTRAINT `fk_discounttype` FOREIGN KEY (`DiscountType_Id`) REFERENCES `tbl_discounttype` (`DiscountType_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_discount`
--

LOCK TABLES `tbl_discount` WRITE;
/*!40000 ALTER TABLE `tbl_discount` DISABLE KEYS */;
INSERT INTO `tbl_discount` VALUES (1,1,0,0),(2,1,0,0),(3,1,0,0),(4,1,0,0),(5,1,0,0),(6,1,0,0),(7,1,0,0),(8,1,0,0),(9,1,0,0),(10,1,0,0),(11,1,0,0),(12,1,0,0);
/*!40000 ALTER TABLE `tbl_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_discounttype`
--

DROP TABLE IF EXISTS `tbl_discounttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_discounttype` (
  `DiscountType_Id` int(11) NOT NULL AUTO_INCREMENT,
  `DiscountType_Type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`DiscountType_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_discounttype`
--

LOCK TABLES `tbl_discounttype` WRITE;
/*!40000 ALTER TABLE `tbl_discounttype` DISABLE KEYS */;
INSERT INTO `tbl_discounttype` VALUES (1,'none'),(2,'sibling'),(3,'senior');
/*!40000 ALTER TABLE `tbl_discounttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_employees`
--

DROP TABLE IF EXISTS `tbl_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_employees` (
  `Employee_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Employee_Name` varchar(100) DEFAULT NULL,
  `Employee_Address` varchar(255) DEFAULT NULL,
  `Employee_ContactNo` varchar(100) DEFAULT NULL,
  `Employee_HourlyRate` decimal(11,4) DEFAULT NULL,
  `Employee_DateHired` date DEFAULT NULL,
  `Employee_Position` varchar(100) DEFAULT NULL,
  `Employee_SSSNo` varchar(100) DEFAULT NULL,
  `EmployeeStatus_Id` int(11) DEFAULT NULL,
  `Employee_TimeIn` time DEFAULT NULL,
  `Employee_TimeOut` time DEFAULT NULL,
  `Employee_TimeInPassword` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Employee_Id`),
  KEY `fk_employeestatus` (`EmployeeStatus_Id`),
  CONSTRAINT `fk_employeestatus` FOREIGN KEY (`EmployeeStatus_Id`) REFERENCES `tbl_employeestatus` (`EmployeeStatus_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_employees`
--

LOCK TABLES `tbl_employees` WRITE;
/*!40000 ALTER TABLE `tbl_employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_employeestatus`
--

DROP TABLE IF EXISTS `tbl_employeestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_employeestatus` (
  `EmployeeStatus_Id` int(11) NOT NULL AUTO_INCREMENT,
  `EmployeeStatus_Status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`EmployeeStatus_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_employeestatus`
--

LOCK TABLES `tbl_employeestatus` WRITE;
/*!40000 ALTER TABLE `tbl_employeestatus` DISABLE KEYS */;
INSERT INTO `tbl_employeestatus` VALUES (1,'active'),(2,'inactive');
/*!40000 ALTER TABLE `tbl_employeestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ingredients`
--

DROP TABLE IF EXISTS `tbl_ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ingredients` (
  `MenuItem_Id` int(11) DEFAULT NULL,
  `Item_Id` int(11) DEFAULT NULL,
  `Ingredient_Unit` varchar(100) NOT NULL,
  KEY `fk_menuitems` (`MenuItem_Id`),
  KEY `fk_ingredients` (`Item_Id`),
  CONSTRAINT `fk_ingredients` FOREIGN KEY (`Item_Id`) REFERENCES `tbl_inventory` (`Item_Id`),
  CONSTRAINT `fk_menuitems` FOREIGN KEY (`MenuItem_Id`) REFERENCES `tbl_menuitems` (`MenuItem_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ingredients`
--

LOCK TABLES `tbl_ingredients` WRITE;
/*!40000 ALTER TABLE `tbl_ingredients` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_inventory`
--

DROP TABLE IF EXISTS `tbl_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_inventory` (
  `Item_Id` int(11) NOT NULL,
  KEY `Item_Id` (`Item_Id`),
  CONSTRAINT `tbl_inventory_ibfk_1` FOREIGN KEY (`Item_Id`) REFERENCES `tbl_items` (`Item_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_inventory`
--

LOCK TABLES `tbl_inventory` WRITE;
/*!40000 ALTER TABLE `tbl_inventory` DISABLE KEYS */;
INSERT INTO `tbl_inventory` VALUES (1);
/*!40000 ALTER TABLE `tbl_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_items`
--

DROP TABLE IF EXISTS `tbl_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_items` (
  `Item_Id` int(11) NOT NULL,
  `Item_Name` varchar(100) NOT NULL,
  `Item_Description` varchar(100) DEFAULT NULL,
  `Item_Remaining` varchar(100) NOT NULL,
  `Item_MinOrder` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Item_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_items`
--

LOCK TABLES `tbl_items` WRITE;
/*!40000 ALTER TABLE `tbl_items` DISABLE KEYS */;
INSERT INTO `tbl_items` VALUES (1,'ribs ','','7','4 pcs.');
/*!40000 ALTER TABLE `tbl_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_list`
--

DROP TABLE IF EXISTS `tbl_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_list` (
  `PurchaseItem_Id` int(11) DEFAULT NULL,
  KEY `fk_itemsToPurchase` (`PurchaseItem_Id`),
  CONSTRAINT `fk_itemsToPurchase` FOREIGN KEY (`PurchaseItem_Id`) REFERENCES `tbl_purchaselist` (`PurchaseItem_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_list`
--

LOCK TABLES `tbl_list` WRITE;
/*!40000 ALTER TABLE `tbl_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_menu`
--

DROP TABLE IF EXISTS `tbl_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_menu` (
  `MenuItem_Id` int(11) DEFAULT NULL,
  KEY `fk_menu` (`MenuItem_Id`),
  CONSTRAINT `fk_menu` FOREIGN KEY (`MenuItem_Id`) REFERENCES `tbl_menuitems` (`MenuItem_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_menu`
--

LOCK TABLES `tbl_menu` WRITE;
/*!40000 ALTER TABLE `tbl_menu` DISABLE KEYS */;
INSERT INTO `tbl_menu` VALUES (1);
/*!40000 ALTER TABLE `tbl_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_menuitems`
--

DROP TABLE IF EXISTS `tbl_menuitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_menuitems` (
  `MenuItem_Id` int(11) NOT NULL DEFAULT '0',
  `MenuItem_Name` varchar(100) NOT NULL,
  `MenuItem_Price` decimal(11,4) NOT NULL,
  PRIMARY KEY (`MenuItem_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_menuitems`
--

LOCK TABLES `tbl_menuitems` WRITE;
/*!40000 ALTER TABLE `tbl_menuitems` DISABLE KEYS */;
INSERT INTO `tbl_menuitems` VALUES (1,'boneless lechon belly 1/4 kilo',120.0000);
/*!40000 ALTER TABLE `tbl_menuitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_particulars`
--

DROP TABLE IF EXISTS `tbl_particulars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_particulars` (
  `VoucherItem_Id` int(11) DEFAULT NULL,
  KEY `fk_particulars` (`VoucherItem_Id`),
  CONSTRAINT `fk_particulars` FOREIGN KEY (`VoucherItem_Id`) REFERENCES `tbl_voucheritem` (`VoucherItem_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_particulars`
--

LOCK TABLES `tbl_particulars` WRITE;
/*!40000 ALTER TABLE `tbl_particulars` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_particulars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_purchaseitems`
--

DROP TABLE IF EXISTS `tbl_purchaseitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_purchaseitems` (
  `PurchaseOrder_No` int(11) DEFAULT NULL,
  `PurchaseItem_Id` int(11) DEFAULT NULL,
  `PurchaseItem_Order` varchar(100) DEFAULT NULL,
  `PurchaseItem_ItemAmount` decimal(11,4) DEFAULT NULL,
  KEY `fk_PurchaseOrder` (`PurchaseOrder_No`),
  KEY `fk_PurchaseItems` (`PurchaseItem_Id`),
  CONSTRAINT `fk_PurchaseItems` FOREIGN KEY (`PurchaseItem_Id`) REFERENCES `tbl_purchaselist` (`PurchaseItem_Id`),
  CONSTRAINT `fk_PurchaseOrder` FOREIGN KEY (`PurchaseOrder_No`) REFERENCES `tbl_purchaseorder` (`PurchaseOrder_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_purchaseitems`
--

LOCK TABLES `tbl_purchaseitems` WRITE;
/*!40000 ALTER TABLE `tbl_purchaseitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_purchaseitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_purchaselist`
--

DROP TABLE IF EXISTS `tbl_purchaselist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_purchaselist` (
  `PurchaseItem_Id` int(11) NOT NULL AUTO_INCREMENT,
  `PurchaseItem_Name` varchar(100) DEFAULT NULL,
  `Store_Id` int(11) DEFAULT NULL,
  `PurchaseItem_MinOrder` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PurchaseItem_Id`),
  KEY `fk_stores` (`Store_Id`),
  CONSTRAINT `fk_stores` FOREIGN KEY (`Store_Id`) REFERENCES `tbl_store` (`Store_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_purchaselist`
--

LOCK TABLES `tbl_purchaselist` WRITE;
/*!40000 ALTER TABLE `tbl_purchaselist` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_purchaselist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_purchaseorder`
--

DROP TABLE IF EXISTS `tbl_purchaseorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_purchaseorder` (
  `PurchaseOrder_No` int(11) NOT NULL DEFAULT '0',
  `PurchaseOrder_Date` date DEFAULT NULL,
  `PurchaseOrder_TotalAmount` decimal(13,4) DEFAULT NULL,
  PRIMARY KEY (`PurchaseOrder_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_purchaseorder`
--

LOCK TABLES `tbl_purchaseorder` WRITE;
/*!40000 ALTER TABLE `tbl_purchaseorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_purchaseorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sales`
--

DROP TABLE IF EXISTS `tbl_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_sales` (
  `Purchase_No` int(11) NOT NULL DEFAULT '0',
  `Purchase_Date` datetime DEFAULT NULL,
  `Purchase_Total` decimal(11,4) DEFAULT '0.0000',
  `Purchase_CashTendered` decimal(11,4) DEFAULT '0.0000',
  `Purchase_Change` decimal(11,4) DEFAULT '0.0000',
  `Discount_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Purchase_No`),
  KEY `fk_discount` (`Discount_Id`),
  CONSTRAINT `fk_discount` FOREIGN KEY (`Discount_Id`) REFERENCES `tbl_discount` (`Discount_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sales`
--

LOCK TABLES `tbl_sales` WRITE;
/*!40000 ALTER TABLE `tbl_sales` DISABLE KEYS */;
INSERT INTO `tbl_sales` VALUES (100,'2015-09-07 15:33:09',120.0000,120.0000,0.0000,1),(101,'2015-09-07 15:41:31',120.0000,120.0000,0.0000,2),(102,'2015-09-07 15:45:48',120.0000,200.0000,80.0000,3),(103,'2015-09-07 15:48:48',120.0000,200.0000,80.0000,4),(104,'2015-09-07 15:55:58',120.0000,120.0000,0.0000,5),(105,'2015-09-07 16:06:13',120.0000,200.0000,80.0000,6),(106,'2015-09-07 16:07:13',120.0000,120.0000,0.0000,7),(107,'2015-09-07 16:18:23',120.0000,120.0000,0.0000,8),(108,'2015-09-07 16:23:57',120.0000,200.0000,80.0000,9),(109,'2015-09-07 16:25:50',120.0000,200.0000,80.0000,10),(110,'2015-09-07 16:28:00',120.0000,150.0000,30.0000,11),(111,'2015-09-07 16:32:15',120.0000,150.0000,30.0000,12);
/*!40000 ALTER TABLE `tbl_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_salesitems`
--

DROP TABLE IF EXISTS `tbl_salesitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_salesitems` (
  `Purchase_No` int(11) DEFAULT NULL,
  `MenuItem_Id` int(11) DEFAULT NULL,
  `Purchase_Order` int(11) DEFAULT NULL,
  `Purchase_SubTotal` decimal(11,4) DEFAULT NULL,
  KEY `fk_salesitems` (`Purchase_No`),
  KEY `fk_menuitem` (`MenuItem_Id`),
  CONSTRAINT `fk_menuitem` FOREIGN KEY (`MenuItem_Id`) REFERENCES `tbl_menuitems` (`MenuItem_Id`),
  CONSTRAINT `fk_salesitems` FOREIGN KEY (`Purchase_No`) REFERENCES `tbl_sales` (`Purchase_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_salesitems`
--

LOCK TABLES `tbl_salesitems` WRITE;
/*!40000 ALTER TABLE `tbl_salesitems` DISABLE KEYS */;
INSERT INTO `tbl_salesitems` VALUES (100,1,1,120.0000),(101,1,1,120.0000),(102,1,1,120.0000),(103,1,1,120.0000),(104,1,1,120.0000),(105,1,1,120.0000),(106,1,1,120.0000),(107,1,1,120.0000),(108,1,1,120.0000),(109,1,1,120.0000),(110,1,1,120.0000),(111,1,1,120.0000);
/*!40000 ALTER TABLE `tbl_salesitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_store`
--

DROP TABLE IF EXISTS `tbl_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_store` (
  `Store_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Store_Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Store_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_store`
--

LOCK TABLES `tbl_store` WRITE;
/*!40000 ALTER TABLE `tbl_store` DISABLE KEYS */;
INSERT INTO `tbl_store` VALUES (1,'grocery'),(2,'wet market');
/*!40000 ALTER TABLE `tbl_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_time`
--

DROP TABLE IF EXISTS `tbl_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_time` (
  `Employee_Id` int(11) DEFAULT NULL,
  `Time_In` datetime DEFAULT NULL,
  `Time_Out` datetime DEFAULT NULL,
  KEY `fk_time` (`Employee_Id`),
  CONSTRAINT `fk_time` FOREIGN KEY (`Employee_Id`) REFERENCES `tbl_employees` (`Employee_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_time`
--

LOCK TABLES `tbl_time` WRITE;
/*!40000 ALTER TABLE `tbl_time` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_userhex`
--

DROP TABLE IF EXISTS `tbl_userhex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_userhex` (
  `User_Id` int(11) NOT NULL,
  `User_PlainPassword` varchar(255) DEFAULT NULL,
  KEY `User_Id` (`User_Id`),
  CONSTRAINT `fk_UserPass` FOREIGN KEY (`User_Id`) REFERENCES `tbl_users` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_userhex`
--

LOCK TABLES `tbl_userhex` WRITE;
/*!40000 ALTER TABLE `tbl_userhex` DISABLE KEYS */;
INSERT INTO `tbl_userhex` VALUES (1,'earl'),(2,'hunter'),(3,'doe');
/*!40000 ALTER TABLE `tbl_userhex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_users` (
  `User_Id` int(11) NOT NULL DEFAULT '0',
  `UserTypeId` int(11) DEFAULT NULL,
  `User_Name` varchar(255) DEFAULT NULL,
  `User_Username` varchar(100) DEFAULT NULL,
  `User_Password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`User_Id`),
  KEY `UserTypeId` (`UserTypeId`),
  CONSTRAINT `tbl_users_ibfk_1` FOREIGN KEY (`UserTypeId`) REFERENCES `tbl_usertype` (`UserTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` VALUES (1,1,'Earl Denamarca','earl.denamarca','c1213481b3a3e795619'),(2,1,'Jose Michael Galanza','josemichael.galanza','bb63550b1944e415ef7a'),(3,2,'John Doe','john.doe','894653745b5963572705153c');
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usertype`
--

DROP TABLE IF EXISTS `tbl_usertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_usertype` (
  `UserTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `UserType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`UserTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usertype`
--

LOCK TABLES `tbl_usertype` WRITE;
/*!40000 ALTER TABLE `tbl_usertype` DISABLE KEYS */;
INSERT INTO `tbl_usertype` VALUES (1,'Admin'),(2,'User');
/*!40000 ALTER TABLE `tbl_usertype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_voucher`
--

DROP TABLE IF EXISTS `tbl_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_voucher` (
  `Voucher_No` int(11) NOT NULL DEFAULT '0',
  `Voucher_Date` datetime DEFAULT NULL,
  `Voucher_TotalAmount` decimal(11,4) DEFAULT NULL,
  `Voucher_IssuedTo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Voucher_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_voucher`
--

LOCK TABLES `tbl_voucher` WRITE;
/*!40000 ALTER TABLE `tbl_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_voucheritem`
--

DROP TABLE IF EXISTS `tbl_voucheritem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_voucheritem` (
  `VoucherItem_Id` int(11) NOT NULL DEFAULT '0',
  `VoucherItem_Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`VoucherItem_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_voucheritem`
--

LOCK TABLES `tbl_voucheritem` WRITE;
/*!40000 ALTER TABLE `tbl_voucheritem` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_voucheritem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_voucherorder`
--

DROP TABLE IF EXISTS `tbl_voucherorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_voucherorder` (
  `Voucher_No` int(11) DEFAULT NULL,
  `VoucherItem_Id` int(11) DEFAULT NULL,
  `VoucherItem_Amount` decimal(11,4) DEFAULT NULL,
  KEY `fk_voucherorder` (`VoucherItem_Id`),
  KEY `fk_vouchers` (`Voucher_No`),
  CONSTRAINT `fk_voucherorder` FOREIGN KEY (`VoucherItem_Id`) REFERENCES `tbl_voucheritem` (`VoucherItem_Id`),
  CONSTRAINT `fk_vouchers` FOREIGN KEY (`Voucher_No`) REFERENCES `tbl_voucher` (`Voucher_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_voucherorder`
--

LOCK TABLES `tbl_voucherorder` WRITE;
/*!40000 ALTER TABLE `tbl_voucherorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_voucherorder` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-09  9:27:47

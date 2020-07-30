-- MySQL dump 10.13  Distrib 5.7.29, for osx10.14 (x86_64)
--
-- Host: localhost    Database: dailyfresh
-- ------------------------------------------------------
-- Server version	5.7.29

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add User',6,'add_user'),(22,'Can change User',6,'change_user'),(23,'Can delete User',6,'delete_user'),(24,'Can view User',6,'view_user'),(25,'Can add Address',7,'add_address'),(26,'Can change Address',7,'change_address'),(27,'Can delete Address',7,'delete_address'),(28,'Can view Address',7,'view_address'),(29,'Can add IndexPromotionBanner',8,'add_indexpromotionbanner'),(30,'Can change IndexPromotionBanner',8,'change_indexpromotionbanner'),(31,'Can delete IndexPromotionBanner',8,'delete_indexpromotionbanner'),(32,'Can view IndexPromotionBanner',8,'view_indexpromotionbanner'),(33,'Can add IndexGoodsBanner',9,'add_indexgoodsbanner'),(34,'Can change IndexGoodsBanner',9,'change_indexgoodsbanner'),(35,'Can delete IndexGoodsBanner',9,'delete_indexgoodsbanner'),(36,'Can view IndexGoodsBanner',9,'view_indexgoodsbanner'),(37,'Can add GoodsType',10,'add_goodstype'),(38,'Can change GoodsType',10,'change_goodstype'),(39,'Can delete GoodsType',10,'delete_goodstype'),(40,'Can view GoodsType',10,'view_goodstype'),(41,'Can add IndexTypeGoodsBanner',11,'add_indextypegoodsbanner'),(42,'Can change IndexTypeGoodsBanner',11,'change_indextypegoodsbanner'),(43,'Can delete IndexTypeGoodsBanner',11,'delete_indextypegoodsbanner'),(44,'Can view IndexTypeGoodsBanner',11,'view_indextypegoodsbanner'),(45,'Can add GoodsImage',12,'add_goodsimage'),(46,'Can change GoodsImage',12,'change_goodsimage'),(47,'Can delete GoodsImage',12,'delete_goodsimage'),(48,'Can view GoodsImage',12,'view_goodsimage'),(49,'Can add GoodsSKU',13,'add_goodssku'),(50,'Can change GoodsSKU',13,'change_goodssku'),(51,'Can delete GoodsSKU',13,'delete_goodssku'),(52,'Can view GoodsSKU',13,'view_goodssku'),(53,'Can add Goods',14,'add_goods'),(54,'Can change Goods',14,'change_goods'),(55,'Can delete Goods',14,'delete_goods'),(56,'Can view Goods',14,'view_goods'),(57,'Can add OrderGoods',15,'add_ordergoods'),(58,'Can change OrderGoods',15,'change_ordergoods'),(59,'Can delete OrderGoods',15,'delete_ordergoods'),(60,'Can view OrderGoods',15,'view_ordergoods'),(61,'Can add OrderInfo',16,'add_orderinfo'),(62,'Can change OrderInfo',16,'change_orderinfo'),(63,'Can delete OrderInfo',16,'delete_orderinfo'),(64,'Can view OrderInfo',16,'view_orderinfo');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_address`
--

DROP TABLE IF EXISTS `df_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` date NOT NULL,
  `update_time` date NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `addr` varchar(256) NOT NULL,
  `zip_code` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_address_user_id_5e6a5c8a` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_address`
--

LOCK TABLES `df_address` WRITE;
/*!40000 ALTER TABLE `df_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `df_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_goods`
--

DROP TABLE IF EXISTS `df_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` date NOT NULL,
  `update_time` date NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `detail` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_goods`
--

LOCK TABLES `df_goods` WRITE;
/*!40000 ALTER TABLE `df_goods` DISABLE KEYS */;
INSERT INTO `df_goods` VALUES (1,'2017-11-15','2017-11-15',0,'草莓','<p><strong>很不错的草莓</strong></p>'),(2,'2017-11-15','2017-11-15',0,'葡萄',''),(3,'2017-11-15','2017-11-15',0,'柠檬',''),(4,'2017-11-15','2017-11-15',0,'奇异果',''),(5,'2017-11-15','2017-11-15',0,'大青虾',''),(6,'2017-11-15','2017-11-15',0,'秋刀鱼',''),(7,'2017-11-15','2017-11-15',0,'扇贝',''),(8,'2017-11-15','2017-11-15',0,'基围虾',''),(9,'2017-11-15','2017-11-15',0,'猪肉',''),(10,'2017-11-15','2017-11-15',0,'牛肉',''),(11,'2017-11-15','2017-11-15',0,'羊肉',''),(12,'2017-11-15','2017-11-15',0,'牛排',''),(13,'2017-11-15','2017-11-15',0,'鸡蛋',''),(14,'2017-11-15','2017-11-15',0,'鸡肉',''),(15,'2017-11-15','2017-11-15',0,'鸭蛋',''),(16,'2017-11-15','2017-11-15',0,'鸡腿',''),(17,'2017-11-15','2017-11-15',0,'白菜',''),(18,'2017-11-15','2017-11-15',0,'芹菜',''),(19,'2017-11-15','2017-11-15',0,'香菜',''),(20,'2017-11-15','2017-11-15',0,'冬瓜',''),(21,'2017-11-15','2017-11-15',0,'鱼丸',''),(22,'2017-11-15','2017-11-15',0,'蟹棒',''),(23,'2017-11-15','2017-11-15',0,'虾丸',''),(24,'2017-11-15','2017-11-15',0,'速冻水饺',''),(25,'2017-11-14','2017-11-14',0,'芒果',''),(26,'2017-11-17','2017-11-17',0,'鹌鹑蛋',''),(27,'2017-11-17','2017-11-17',0,'鹅蛋',''),(28,'2017-11-17','2017-11-17',0,'红辣椒','');
/*!40000 ALTER TABLE `df_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_goods_image`
--

DROP TABLE IF EXISTS `df_goods_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_goods_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` date NOT NULL,
  `update_time` date NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `image` varchar(100) NOT NULL,
  `goods_sku_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goodsimage_goods_sku_id_816e14dc` (`goods_sku_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_goods_image`
--

LOCK TABLES `df_goods_image` WRITE;
/*!40000 ALTER TABLE `df_goods_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `df_goods_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_goods_sku`
--

DROP TABLE IF EXISTS `df_goods_sku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_goods_sku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` date NOT NULL,
  `update_time` date NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `desc` varchar(256) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `sales` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` smallint(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `goods_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_goods_sku_goods_id_31622280` (`goods_id`),
  KEY `df_goods_sku_goods_type_id_39bd1cf2` (`goods_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_goods_sku`
--

LOCK TABLES `df_goods_sku` WRITE;
/*!40000 ALTER TABLE `df_goods_sku` DISABLE KEYS */;
INSERT INTO `df_goods_sku` VALUES (1,'2017-11-15','2017-11-14',0,'草莓 500g','草莓简介',10.00,'500g',98,0,'group1/M00/00/00/rBCzg1oKqFGAR2tjAAAljHPuXJg4272079',1,1,1),(2,'2017-11-15','2017-11-14',0,'盒装草莓','草莓简介',20.00,'盒',10,0,'group1/M00/00/00/rBCzg1oKrPuAKse1AAEc8FlxEvU2553153',1,1,1),(3,'2017-11-15','2017-11-14',0,'葡萄','葡萄简介',20.00,'500g',7,0,'group1/M00/00/00/rBCzg1oKqHKAYfXaAAAjjiYTEkw5436358',1,2,1),(4,'2017-11-15','2017-11-14',0,'柠檬','简介',32.00,'500g',12,0,'group1/M00/00/00/rBCzg1oKqH6AMZt_AAAgnaeGwNQ6246033',1,3,1),(5,'2017-11-15','2017-11-14',0,'奇异果','简介',12.12,'500g',12,0,'group1/M00/00/00/rBCzg1oKqJSAS1xIAAAeuLYy0pU6253560',1,4,1),(6,'2017-11-15','2017-11-14',0,'大青虾','简介',34.00,'500g',12,0,'group1/M00/00/00/rBCzg1oKqKGAFAV-AAA5OS4Kl4c4097622',1,5,2),(7,'2017-11-15','2017-11-14',0,'北海道秋刀鱼','简介',50.00,'500g',15,0,'group1/M00/00/00/rBCzg1oKqKuAavf8AAAkaP_7_187862565',1,6,2),(8,'2017-11-15','2017-11-14',0,'扇贝','简介',56.60,'500g',13,0,'group1/M00/00/00/rBCzg1oKqLeATLQAAAAk8WCqqmI2968215',1,7,2),(9,'2017-11-15','2017-11-14',0,'基围虾','简介',100.90,'500g',14,0,'group1/M00/00/00/rBCzg1oKqNKANQKOAAAk0DN4-yE7007770',1,8,2),(10,'2017-11-15','2017-11-14',0,'猪肉','简介',23.99,'500g',100,0,'group1/M00/00/00/rBCzg1oKqYSASWr0AAEVpb1YHUE4011268',1,9,3),(11,'2017-11-15','2017-11-14',0,'牛肉','简介',34.99,'500g',100,0,'group1/M00/00/00/rBCzg1oKqd-AUsoBAAEExAU4yXU2908730',1,10,3),(12,'2017-11-15','2017-11-14',0,'羊肉','简介',56.99,'500g',100,0,'group1/M00/00/00/rBCzg1oKqhaAKgwkAAB6NOQDrpk3374052',1,11,3),(13,'2017-11-15','2017-11-14',0,'牛排','简介',99.99,'500g',100,0,'group1/M00/00/00/rBCzg1oKqkuAUD0WAACwa3rCDPQ3064181',1,12,3),(14,'2017-11-15','2017-11-14',0,'盒装鸡蛋','简介',23.00,'500g',100,0,'group1/M00/00/00/rBCzg1oKqpeAZnSEAADUKbwLSqY1972845',1,13,4),(15,'2017-11-15','2017-11-14',0,'鸡肉','简介',32.00,'500g',100,0,'group1/M00/00/00/rBCzg1oKqsmAVxzcAADUY5hC_sI5143658',1,14,4),(16,'2017-11-15','2017-11-14',0,'鸭蛋','简介',45.00,'盒',121,0,'group1/M00/00/00/rBCzg1oKq0eAMxKFAAFC_2tSkFo4950479',1,15,4),(17,'2017-11-15','2017-11-14',0,'鸡腿','简介',45.00,'500g',12,0,'group1/M00/00/00/rBCzg1oKq3CADiewAAA2_p7G96w3860045',1,16,4),(18,'2017-11-15','2017-11-14',0,'白菜','简介',4.50,'500g',100,0,'group1/M00/00/00/rBCzg1oKq5WAQnWDAADWHYeKaNI7952227',1,17,5),(19,'2017-11-15','2017-11-14',0,'芹菜','简介',3.50,'500g',12,0,'group1/M00/00/00/rBCzg1oKq8yAa_CvAACIrzuaK646641688',1,18,5),(20,'2017-11-15','2017-11-14',0,'香菜','简介',7.90,'500g',100,0,'group1/M00/00/00/rBCzg1oKq-iAUG8xAACNpHC0IEY3849954',1,19,5),(21,'2017-11-15','2017-11-14',0,'冬瓜','简介',12.99,'500g',100,0,'group1/M00/00/00/rBCzg1oKrAaAN1Z6AAENHrNG1-s8874196',1,20,5),(22,'2017-11-15','2017-11-14',0,'鱼丸','简介',66.00,'500g',12,0,'group1/M00/00/00/rBCzg1oKrC-ACdOBAADZQphQJ2o3748807',1,21,6),(23,'2017-11-15','2017-11-14',0,'蟹棒','简介',68.00,'500g',100,0,'group1/M00/00/00/rBCzg1oKrFeAJ9PuAABxy5vKkgY2006901',1,22,6),(24,'2017-11-15','2017-11-14',0,'虾丸','简介',89.99,'500g',100,0,'group1/M00/00/00/rBCzg1oKrHGADF7jAABICav_wjk1418828',1,23,6),(25,'2017-11-15','2017-11-14',0,'速冻水饺','简介',20.00,'袋',100,0,'group1/M00/00/00/rBCzg1oKrKaAFrRTAACMoBJXjDs3577358',1,24,6),(26,'2017-11-14','2017-11-14',0,'越南芒果','新鲜越南芒果',29.90,'2.5kg',100,0,'group1/M00/00/00/rBCzg1oKruyABIIzAAByzTJcTjM7085820',1,25,1),(27,'2017-11-17','2017-11-17',0,'鹌鹑蛋','简介',39.80,'126枚',100,0,'group1/M00/00/00/rBCzg1oOlkyAHiH3AAGZ6KapWiA5556935',1,26,4),(28,'2017-11-17','2017-11-17',0,'鹅蛋','简介',49.90,'6枚',80,0,'group1/M00/00/00/rBCzg1oOlpqAOZ8gAADg_NUp5b47679136',1,27,4),(29,'2017-11-17','2017-11-17',0,'红辣椒','简介',11.00,'2.5kg',150,0,'group1/M00/00/00/rBCzg1oOlvWAB6BMAAHXO8pdocY9345486',1,28,5);
/*!40000 ALTER TABLE `df_goods_sku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_goods_type`
--

DROP TABLE IF EXISTS `df_goods_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_goods_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` date NOT NULL,
  `update_time` date NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_goods_type`
--

LOCK TABLES `df_goods_type` WRITE;
/*!40000 ALTER TABLE `df_goods_type` DISABLE KEYS */;
INSERT INTO `df_goods_type` VALUES (1,'2017-11-14','2017-11-14',0,'新鲜水果','fruit','group1/M00/00/00/rBCzg1oKeNKAEl87AAAmv27pX4k4942898'),(2,'2017-11-14','2017-11-14',0,'海鲜水产','seafood','group1/M00/00/00/rBCzg1oKeWCAOQBsAABHr3RQqFs4497074'),(3,'2017-11-14','2017-11-14',0,'猪牛羊肉','meet','group1/M00/00/00/rBCzg1oKeZ6AA5HjAAAy1Tlm9So7276786'),(4,'2017-11-14','2017-11-14',0,'禽类蛋品','egg','group1/M00/00/00/rBCzg1oKebaAcEWVAAAqR4DoSUg3788077'),(5,'2017-11-14','2017-11-14',0,'新鲜蔬菜','vegetables','group1/M00/00/00/rBCzg1oKediAdUaaAAA-0ZoYkpM9419116'),(6,'2017-11-14','2017-11-14',0,'速冻食品','ice','group1/M00/00/00/rBCzg1oKee-AGMXLAAA3sZPrVzQ0297876');
/*!40000 ALTER TABLE `df_goods_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_index_goods_banner`
--

DROP TABLE IF EXISTS `df_index_goods_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_index_goods_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` date NOT NULL,
  `update_time` date NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `image` varchar(100) NOT NULL,
  `index` smallint(6) NOT NULL,
  `goods_sku_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_index_goods_banner_goods_sku_id_cecbc34d` (`goods_sku_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_index_goods_banner`
--

LOCK TABLES `df_index_goods_banner` WRITE;
/*!40000 ALTER TABLE `df_index_goods_banner` DISABLE KEYS */;
INSERT INTO `df_index_goods_banner` VALUES (1,'2017-11-14','2017-11-14',0,'group1/M00/00/00/rBCzg1oKrcWAX7y-AACpB-LsCdE6038911',0,5),(2,'2017-11-14','2017-11-14',0,'group1/M00/00/00/rBCzg1oKrwaAUerYAAC3B-z8J2c2488703',1,26),(3,'2017-11-14','2017-11-14',0,'group1/M00/00/00/rBCzg1oKrxSAac1BAAETwXb_pso9132934',2,13),(4,'2017-11-14','2017-11-14',0,'group1/M00/00/00/rBCzg1oKryqAPjmzAAD0akkXmFo4923405',3,9);
/*!40000 ALTER TABLE `df_index_goods_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_index_promotion_banner`
--

DROP TABLE IF EXISTS `df_index_promotion_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_index_promotion_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` date NOT NULL,
  `update_time` date NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `index` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_index_promotion_banner`
--

LOCK TABLES `df_index_promotion_banner` WRITE;
/*!40000 ALTER TABLE `df_index_promotion_banner` DISABLE KEYS */;
INSERT INTO `df_index_promotion_banner` VALUES (1,'2017-11-14','2017-11-17',0,'吃货暑假趴','group1/M00/00/00/rBCzg1oKr7aAdR-2AAA2pLUeB609027808','#',0),(2,'2017-11-14','2017-11-14',0,'盛夏尝鲜季','group1/M00/00/00/rBCzg1oKr9WADLksAAA98yvCs1I5148432','#',1);
/*!40000 ALTER TABLE `df_index_promotion_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_index_type_goods_banner`
--

DROP TABLE IF EXISTS `df_index_type_goods_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_index_type_goods_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` date NOT NULL,
  `update_time` date NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `index` smallint(6) NOT NULL,
  `display_type` smallint(6) NOT NULL,
  `goods_sku_id` int(11) NOT NULL,
  `goods_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_index_type_goods_banner_goods_sku_id_8a5ba808` (`goods_sku_id`),
  KEY `df_index_type_goods_banner_goods_type_id_2be8b68a` (`goods_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_index_type_goods_banner`
--

LOCK TABLES `df_index_type_goods_banner` WRITE;
/*!40000 ALTER TABLE `df_index_type_goods_banner` DISABLE KEYS */;
INSERT INTO `df_index_type_goods_banner` VALUES (1,'2017-11-14','2017-11-14',0,1,0,1,1),(2,'2017-11-14','2017-11-14',0,1,1,3,1),(3,'2017-11-14','2017-11-14',0,1,2,5,1),(4,'2017-11-14','2017-11-14',0,1,3,4,1),(5,'2017-11-14','2017-11-14',0,0,0,2,1),(6,'2017-11-14','2017-11-14',0,0,1,4,1),(7,'2017-11-14','2017-11-14',0,1,0,6,2),(8,'2017-11-14','2017-11-14',0,1,1,7,2),(9,'2017-11-14','2017-11-14',0,1,2,8,2),(10,'2017-11-14','2017-11-14',0,1,3,9,2),(11,'2017-11-14','2017-11-14',0,0,0,9,2),(12,'2017-11-14','2017-11-14',0,0,1,8,2),(13,'2017-11-14','2017-11-14',0,1,0,10,3),(15,'2017-11-14','2017-11-14',0,1,2,12,3),(16,'2017-11-14','2017-11-14',0,1,3,13,3),(17,'2017-11-14','2017-11-14',0,0,0,15,3),(18,'2017-11-14','2017-11-14',0,1,1,17,3),(19,'2017-11-14','2017-11-14',0,1,0,14,4),(20,'2017-11-14','2017-11-14',0,1,1,16,4),(21,'2017-11-14','2017-11-14',0,0,0,14,4),(22,'2017-11-14','2017-11-14',0,0,1,16,4),(23,'2017-11-14','2017-11-14',0,1,0,18,5),(24,'2017-11-14','2017-11-14',0,1,1,19,5),(25,'2017-11-14','2017-11-14',0,1,2,20,5),(26,'2017-11-14','2017-11-14',0,0,0,20,5),(27,'2017-11-14','2017-11-14',0,0,1,19,5),(28,'2017-11-14','2017-11-14',0,1,0,22,6),(29,'2017-11-14','2017-11-14',0,1,1,23,6),(30,'2017-11-14','2017-11-14',0,1,2,24,6),(31,'2017-11-14','2017-11-14',0,1,3,25,6),(32,'2017-11-14','2017-11-14',0,0,0,23,6),(33,'2017-11-14','2017-11-14',0,0,1,25,6),(34,'2017-11-17','2017-11-17',0,1,2,27,4),(35,'2017-11-17','2017-11-17',0,1,3,28,4),(36,'2017-11-17','2017-11-17',0,1,3,29,5);
/*!40000 ALTER TABLE `df_index_type_goods_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_order_goods`
--

DROP TABLE IF EXISTS `df_order_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_order_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` date NOT NULL,
  `update_time` date NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `count` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `comment` varchar(256) NOT NULL,
  `goods_sku_id` int(11) NOT NULL,
  `order_info_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_order_goods_goods_sku_id_23e49c7b` (`goods_sku_id`),
  KEY `df_order_goods_order_info_id_f97c589f` (`order_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_order_goods`
--

LOCK TABLES `df_order_goods` WRITE;
/*!40000 ALTER TABLE `df_order_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `df_order_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_order_info`
--

DROP TABLE IF EXISTS `df_order_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_order_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` date NOT NULL,
  `update_time` date NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `order_id` varchar(128) NOT NULL,
  `pay_method` smallint(6) NOT NULL,
  `total_count` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `transit_price` decimal(5,2) NOT NULL,
  `order_status` smallint(6) NOT NULL,
  `trade_no` varchar(256) NOT NULL,
  `address_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_order_info_address_id_9bd365b2` (`address_id`),
  KEY `df_order_info_user_id_ac1e5bf5` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_order_info`
--

LOCK TABLES `df_order_info` WRITE;
/*!40000 ALTER TABLE `df_order_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `df_order_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_user`
--

DROP TABLE IF EXISTS `df_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `create_time` date NOT NULL,
  `update_time` date NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_user`
--

LOCK TABLES `df_user` WRITE;
/*!40000 ALTER TABLE `df_user` DISABLE KEYS */;
INSERT INTO `df_user` VALUES (1,'pbkdf2_sha256$180000$udZKDgZB3pjH$w9qtFZaiyqMF8eSeQNPgxR6XDyrZrpro1jHNCFy9YPo=','2020-07-30 05:16:09.374013',1,'admin','','','awsbreathpanda@163.com',1,1,'2020-07-30 05:15:20.492885','2020-07-30','2020-07-30',0);
/*!40000 ALTER TABLE `df_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_user_groups`
--

DROP TABLE IF EXISTS `df_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `df_user_groups_user_id_group_id_80e5ab91_uniq` (`user_id`,`group_id`),
  KEY `df_user_groups_group_id_36f24e94_fk_auth_group_id` (`group_id`),
  CONSTRAINT `df_user_groups_group_id_36f24e94_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `df_user_groups_user_id_a816b098_fk_df_user_id` FOREIGN KEY (`user_id`) REFERENCES `df_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_user_groups`
--

LOCK TABLES `df_user_groups` WRITE;
/*!40000 ALTER TABLE `df_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `df_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_user_user_permissions`
--

DROP TABLE IF EXISTS `df_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `df_user_user_permissions_user_id_permission_id_b22997de_uniq` (`user_id`,`permission_id`),
  KEY `df_user_user_permiss_permission_id_40a6cb2d_fk_auth_perm` (`permission_id`),
  CONSTRAINT `df_user_user_permiss_permission_id_40a6cb2d_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `df_user_user_permissions_user_id_b5f6551b_fk_df_user_id` FOREIGN KEY (`user_id`) REFERENCES `df_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_user_user_permissions`
--

LOCK TABLES `df_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `df_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `df_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_df_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_df_user_id` FOREIGN KEY (`user_id`) REFERENCES `df_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(14,'goods','goods'),(12,'goods','goodsimage'),(13,'goods','goodssku'),(10,'goods','goodstype'),(9,'goods','indexgoodsbanner'),(8,'goods','indexpromotionbanner'),(11,'goods','indextypegoodsbanner'),(15,'order','ordergoods'),(16,'order','orderinfo'),(5,'sessions','session'),(7,'user','address'),(6,'user','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-07-29 13:07:50.425934'),(2,'contenttypes','0002_remove_content_type_name','2020-07-29 13:07:50.649739'),(3,'auth','0001_initial','2020-07-29 13:07:50.867726'),(4,'auth','0002_alter_permission_name_max_length','2020-07-29 13:07:51.203848'),(5,'auth','0003_alter_user_email_max_length','2020-07-29 13:07:51.217793'),(6,'auth','0004_alter_user_username_opts','2020-07-29 13:07:51.227758'),(7,'auth','0005_alter_user_last_login_null','2020-07-29 13:07:51.241860'),(8,'auth','0006_require_contenttypes_0002','2020-07-29 13:07:51.250916'),(9,'auth','0007_alter_validators_add_error_messages','2020-07-29 13:07:51.260113'),(10,'auth','0008_alter_user_username_max_length','2020-07-29 13:07:51.271657'),(11,'auth','0009_alter_user_last_name_max_length','2020-07-29 13:07:51.280631'),(12,'auth','0010_alter_group_name_max_length','2020-07-29 13:07:51.339463'),(13,'auth','0011_update_proxy_permissions','2020-07-29 13:07:51.350209'),(14,'user','0001_initial','2020-07-29 13:07:51.497044'),(15,'admin','0001_initial','2020-07-29 13:07:51.860259'),(16,'admin','0002_logentry_remove_auto_add','2020-07-29 13:07:52.002972'),(17,'admin','0003_logentry_add_action_flag_choices','2020-07-29 13:07:52.016023'),(18,'sessions','0001_initial','2020-07-29 13:07:52.075360'),(19,'goods','0001_initial','2020-07-30 04:33:06.186108'),(20,'user','0002_address','2020-07-30 04:33:06.439659'),(21,'order','0001_initial','2020-07-30 04:33:06.608943'),(22,'goods','0002_auto_20200730_1235','2020-07-30 04:35:50.907852');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('z3wnsu6a8nz958ow5f5igbqwux508f0a','YjEwMjcyNGZjNWQ5NzdjMGQ1ZTFkZTk5NGVkNDlkZDlkZTNmODU3MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyOWQxN2E5NjY0MzczNDk3YmFjYzkwM2IwOWNlYjQ3ZjFmZWNlOTYxIn0=','2020-08-13 05:16:09.383141');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-30 13:35:00

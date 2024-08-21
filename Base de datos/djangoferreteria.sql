CREATE DATABASE  IF NOT EXISTS `djangoferreteria` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `djangoferreteria`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: djangoferreteria
-- ------------------------------------------------------
-- Server version	8.4.2

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

--
-- Table structure for table `accounts_shopper`
--

DROP TABLE IF EXISTS `accounts_shopper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_shopper` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_shopper`
--

LOCK TABLES `accounts_shopper` WRITE;
/*!40000 ALTER TABLE `accounts_shopper` DISABLE KEYS */;
INSERT INTO `accounts_shopper` VALUES (1,'pbkdf2_sha256$870000$55PzRd11CPBnpy14ekHh68$mqXbvxjBuFO489b7rYQ8dDyehz58m2vmqmUT8+yDAuk=','2024-08-21 01:57:11.666997',1,'soyadmin','','','hola@construmole.com',1,1,'2024-08-10 18:15:08.422480'),(2,'pbkdf2_sha256$870000$ISgVVIGiaVSEx3epXoAKma$auE413YvUdcUQTGMye9uW2fUfY/koH/gLzFfsMt6vMA=','2024-08-13 14:03:40.322920',0,'usertest10','','','',0,1,'2024-08-10 18:33:37.298805'),(4,'pbkdf2_sha256$870000$osHu7pNuNT4INhZ8AyEHuy$QDO0rGy0rUfnN5va0cB/e0TKSr3WMP50uspj7VIuDjA=','2024-08-12 05:03:07.579170',0,'Blessur','','','',0,1,'2024-08-12 05:02:11.434278');
/*!40000 ALTER TABLE `accounts_shopper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_shopper_groups`
--

DROP TABLE IF EXISTS `accounts_shopper_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_shopper_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `shopper_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `accounts_shopper_groups_shopper_id_group_id_81387419_uniq` (`shopper_id`,`group_id`),
  KEY `accounts_shopper_groups_group_id_e3f091d4_fk_auth_group_id` (`group_id`),
  CONSTRAINT `accounts_shopper_gro_shopper_id_b0fc95fd_fk_accounts_` FOREIGN KEY (`shopper_id`) REFERENCES `accounts_shopper` (`id`),
  CONSTRAINT `accounts_shopper_groups_group_id_e3f091d4_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_shopper_groups`
--

LOCK TABLES `accounts_shopper_groups` WRITE;
/*!40000 ALTER TABLE `accounts_shopper_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_shopper_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_shopper_user_permissions`
--

DROP TABLE IF EXISTS `accounts_shopper_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_shopper_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `shopper_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `accounts_shopper_user_pe_shopper_id_permission_id_53b66cc3_uniq` (`shopper_id`,`permission_id`),
  KEY `accounts_shopper_use_permission_id_0d51f125_fk_auth_perm` (`permission_id`),
  CONSTRAINT `accounts_shopper_use_permission_id_0d51f125_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `accounts_shopper_use_shopper_id_1f93d8af_fk_accounts_` FOREIGN KEY (`shopper_id`) REFERENCES `accounts_shopper` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_shopper_user_permissions`
--

LOCK TABLES `accounts_shopper_user_permissions` WRITE;
/*!40000 ALTER TABLE `accounts_shopper_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_shopper_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add category',6,'add_category'),(22,'Can change category',6,'change_category'),(23,'Can delete category',6,'delete_category'),(24,'Can view category',6,'view_category'),(25,'Can add product',7,'add_product'),(26,'Can change product',7,'change_product'),(27,'Can delete product',7,'delete_product'),(28,'Can view product',7,'view_product'),(29,'Can add order',8,'add_order'),(30,'Can change order',8,'change_order'),(31,'Can delete order',8,'delete_order'),(32,'Can view order',8,'view_order'),(33,'Can add user',9,'add_shopper'),(34,'Can change user',9,'change_shopper'),(35,'Can delete user',9,'delete_shopper'),(36,'Can view user',9,'view_shopper'),(37,'Can add cart',10,'add_cart'),(38,'Can change cart',10,'change_cart'),(39,'Can delete cart',10,'delete_cart'),(40,'Can view cart',10,'view_cart');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_accounts_shopper_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_shopper_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_shopper` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-08-10 18:24:42.692974','1','Martillo',1,'[{\"added\": {}}]',6,1),(2,'2024-08-10 18:28:07.228916','1','Martillo de goma',1,'[{\"added\": {}}]',7,1),(3,'2024-08-10 18:32:32.453401','2','Martillo de Metal',1,'[{\"added\": {}}]',7,1),(4,'2024-08-10 18:34:46.681896','1','Martillo de goma (4)',1,'[{\"added\": {}}]',8,1),(5,'2024-08-10 19:57:26.872026','2','Martillo de Metal (6)',1,'[{\"added\": {}}]',8,1),(6,'2024-08-10 19:58:15.033804','1','usertest10',1,'[{\"added\": {}}]',10,1),(7,'2024-08-10 21:20:43.014934','1','usertest10',3,'',10,1),(8,'2024-08-10 21:20:54.367709','2','soyadmin',3,'',10,1),(9,'2024-08-10 21:21:04.466822','3','Martillo de goma (1)',3,'',8,1),(10,'2024-08-10 21:21:04.466822','2','Martillo de Metal (6)',3,'',8,1),(11,'2024-08-10 21:21:04.466822','1','Martillo de goma (4)',3,'',8,1),(12,'2024-08-11 02:36:02.372387','5','Martillo de goma (2)',3,'',8,1),(13,'2024-08-11 02:36:22.635531','4','usertest10',3,'',10,1),(14,'2024-08-11 02:36:22.635531','3','soyadmin',3,'',10,1),(15,'2024-08-11 02:36:34.222950','4','Martillo de Metal (2)',3,'',8,1),(16,'2024-08-11 03:39:06.512047','9','Martillo de Metal (1)',3,'',8,1),(17,'2024-08-11 03:39:06.512047','8','Martillo de goma (2)',3,'',8,1),(18,'2024-08-11 05:25:18.814269','1','Martillo',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',6,1),(19,'2024-08-11 06:23:26.406228','1','Martillo',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',6,1),(20,'2024-08-12 01:31:39.927993','16','Martillo de Metal (3)',3,'',8,1),(21,'2024-08-12 01:31:39.927993','15','Martillo de goma (1)',3,'',8,1),(22,'2024-08-12 01:31:39.929994','14','Martillo de goma (3)',3,'',8,1),(23,'2024-08-12 01:31:39.929994','13','Martillo de Metal (5)',3,'',8,1),(24,'2024-08-12 01:31:39.929994','12','Martillo de goma (2)',3,'',8,1),(25,'2024-08-12 01:31:39.930993','11','Martillo de Metal (2)',3,'',8,1),(26,'2024-08-12 01:31:39.930993','10','Martillo de goma (3)',3,'',8,1),(27,'2024-08-12 03:51:11.507507','20','Martillo de Metal (1)',3,'',8,1),(28,'2024-08-12 03:51:11.507507','19','Martillo de goma (1)',3,'',8,1),(29,'2024-08-12 03:51:11.507507','18','Martillo de Metal (2)',3,'',8,1),(30,'2024-08-12 03:51:11.507507','17','Martillo de Metal (3)',3,'',8,1),(31,'2024-08-12 04:53:25.165674','28','Martillo de goma (1)',3,'',8,1),(32,'2024-08-12 04:53:25.165674','27','Martillo de Metal (4)',3,'',8,1),(33,'2024-08-12 04:53:25.166822','26','Martillo de goma (3)',3,'',8,1),(34,'2024-08-12 04:53:25.168181','25','Martillo de goma (4)',3,'',8,1),(35,'2024-08-12 04:53:25.168181','24','Martillo de Metal (2)',3,'',8,1),(36,'2024-08-12 04:53:25.168181','23','Martillo de Metal (2)',3,'',8,1),(37,'2024-08-12 04:53:25.169181','22','Martillo de goma (6)',3,'',8,1),(38,'2024-08-12 04:53:25.169181','21','Martillo de Metal (3)',3,'',8,1),(39,'2024-08-12 04:55:38.210232','3','Libros',1,'[{\"added\": {}}]',7,1),(40,'2024-08-12 04:56:39.050215','3','Blessur',1,'[{\"added\": {}}]',9,1),(41,'2024-08-12 05:01:50.218644','3','Blessur',3,'',9,1),(42,'2024-08-13 14:57:50.462193','34','Libros (3)',3,'',8,1),(43,'2024-08-13 14:57:50.463194','33','Martillo de Metal (6)',3,'',8,1),(44,'2024-08-13 14:57:50.463194','32','Martillo de Metal (2)',3,'',8,1),(45,'2024-08-13 14:57:50.463194','31','Martillo de Metal (5)',3,'',8,1),(46,'2024-08-13 14:57:50.464169','30','Libros (2)',3,'',8,1),(47,'2024-08-13 14:57:50.464318','29','Martillo de goma (1)',3,'',8,1),(48,'2024-08-13 14:58:02.980689','21','usertest10',3,'',10,1),(49,'2024-08-13 14:58:02.981690','18','soyadmin',3,'',10,1),(50,'2024-08-13 15:02:06.241899','37','Martillo de Metal (3)',3,'',8,1),(51,'2024-08-13 15:02:06.241899','36','Libros (8)',3,'',8,1),(52,'2024-08-13 15:02:06.241899','35','Martillo de goma (4)',3,'',8,1),(53,'2024-08-13 15:09:50.926450','42','Libros (1)',3,'',8,1),(54,'2024-08-13 15:09:50.926450','41','Martillo de Metal (2)',3,'',8,1),(55,'2024-08-13 15:09:50.926450','40','Martillo de goma (6)',3,'',8,1),(56,'2024-08-13 15:09:50.926450','39','Libros (1)',3,'',8,1),(57,'2024-08-13 15:09:50.926450','38','Martillo de Metal (2)',3,'',8,1),(58,'2024-08-13 16:31:50.388989','46','Libros (2)',3,'',8,1),(59,'2024-08-13 16:31:50.388989','45','Libros (1)',3,'',8,1),(60,'2024-08-13 16:31:50.388989','44','Martillo de Metal (3)',3,'',8,1),(61,'2024-08-13 16:31:50.389988','43','Martillo de goma (4)',3,'',8,1),(62,'2024-08-13 16:32:02.215470','22','soyadmin',3,'',10,1),(63,'2024-08-13 20:07:12.222414','66','Libros (1)',3,'',8,1),(64,'2024-08-13 20:07:12.223413','63','Martillo de goma (3)',3,'',8,1),(65,'2024-08-13 20:07:12.223413','61','Martillo de goma (2)',3,'',8,1),(66,'2024-08-13 20:07:12.223413','60','Martillo de Metal (2)',3,'',8,1),(67,'2024-08-13 20:07:12.223413','59','Libros (3)',3,'',8,1),(68,'2024-08-13 20:07:12.223413','56','Martillo de goma (2)',3,'',8,1),(69,'2024-08-13 20:07:12.223413','55','Martillo de Metal (1)',3,'',8,1),(70,'2024-08-13 20:07:12.223413','54','Libros (1)',3,'',8,1),(71,'2024-08-13 21:10:29.342584','69','Libros (1)',3,'',8,1),(72,'2024-08-13 21:10:29.342584','68','Martillo de Metal (1)',3,'',8,1),(73,'2024-08-13 21:22:52.470108','2','Martillo de Metal',2,'[{\"changed\": {\"fields\": [\"Is active\"]}}]',7,1),(74,'2024-08-14 00:47:59.906386','74','Martillo de goma (1)',3,'',8,1),(75,'2024-08-14 00:47:59.907383','73','Libros (1)',3,'',8,1),(76,'2024-08-14 00:47:59.907383','71','Libros (4)',3,'',8,1),(77,'2024-08-14 01:02:16.610966','1','Martillo de goma',2,'[{\"changed\": {\"fields\": [\"Price\"]}}]',7,1),(78,'2024-08-14 01:04:22.788252','3','Libros',2,'[{\"changed\": {\"fields\": [\"Price\"]}}]',7,1),(79,'2024-08-14 01:04:43.656056','2','Martillo de Metal',2,'[{\"changed\": {\"fields\": [\"Price\"]}}]',7,1),(80,'2024-08-15 20:16:32.162529','82','Martillo de Metal (1)',3,'',8,1),(81,'2024-08-15 20:16:32.162529','81','Martillo de goma (1)',3,'',8,1),(82,'2024-08-15 20:17:41.345069','2','Cierras',1,'[{\"added\": {}}]',6,1),(83,'2024-08-15 20:18:47.109074','3','Cinta Metrica',2,'[{\"changed\": {\"fields\": [\"Name\", \"Description\"]}}]',7,1),(84,'2024-08-15 20:20:34.432408','4','Taladro de mano',1,'[{\"added\": {}}]',7,1),(85,'2024-08-15 20:21:25.102729','5','Cierra electrica',1,'[{\"added\": {}}]',7,1),(86,'2024-08-15 20:22:39.726771','89','Cierra electrica (1)',3,'',8,1),(87,'2024-08-15 20:22:39.726771','88','Taladro de mano (1)',3,'',8,1),(88,'2024-08-16 22:04:58.086621','1','Martillo de goma',3,'',7,1),(89,'2024-08-17 16:30:48.250140','98','Cierra electrica (2)',3,'',8,1),(90,'2024-08-17 16:30:48.250140','97','Martillo de Metal (2)',3,'',8,1),(91,'2024-08-17 16:30:48.250140','96','Cinta Metrica (4)',3,'',8,1),(92,'2024-08-17 16:30:48.250140','95','Cinta Metrica (1)',3,'',8,1),(93,'2024-08-17 16:30:48.251146','93','Martillo de Metal (1)',3,'',8,1),(94,'2024-08-17 16:30:48.251146','90','Martillo de Metal (2)',3,'',8,1),(95,'2024-08-17 16:32:33.374586','5','Cierra electrica',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(96,'2024-08-17 16:33:52.475996','4','Taladro de mano',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(97,'2024-08-18 20:47:07.868633','3','Cinta Metrica',2,'[{\"changed\": {\"fields\": [\"Stock\"]}}]',7,1),(98,'2024-08-18 20:48:02.231894','3','Cinta Metrica',2,'[{\"changed\": {\"fields\": [\"Is active\"]}}]',7,1),(99,'2024-08-18 21:13:32.951284','101','Cinta Metrica (2)',3,'',8,1),(100,'2024-08-18 21:13:32.951284','100','Cinta Metrica (2)',3,'',8,1),(101,'2024-08-18 21:13:32.951284','99','Cinta Metrica (2)',3,'',8,1),(102,'2024-08-18 21:13:46.546879','3','Cinta Metrica',2,'[{\"changed\": {\"fields\": [\"Stock\"]}}]',7,1),(103,'2024-08-18 21:21:03.385891','3','Cinta Metrica',2,'[{\"changed\": {\"fields\": [\"Stock\"]}}]',7,1),(104,'2024-08-18 21:22:52.771660','104','Cinta Metrica (2)',3,'',8,1),(105,'2024-08-18 21:22:52.771660','103','Cierra electrica (1)',3,'',8,1),(106,'2024-08-18 21:22:52.771660','102','Cinta Metrica (2)',3,'',8,1),(107,'2024-08-18 21:23:17.233118','3','Cinta Metrica',2,'[{\"changed\": {\"fields\": [\"Stock\"]}}]',7,1),(108,'2024-08-18 21:24:14.575395','105','Cinta Metrica (1)',3,'',8,1),(109,'2024-08-18 21:24:30.883357','3','Cinta Metrica',2,'[{\"changed\": {\"fields\": [\"Stock\"]}}]',7,1),(110,'2024-08-18 21:26:20.154800','5','Cierra electrica',3,'',7,1),(111,'2024-08-18 21:26:20.154800','4','Taladro de mano',3,'',7,1),(112,'2024-08-18 21:26:20.154800','3','Cinta Metrica',3,'',7,1),(113,'2024-08-18 21:26:20.154800','2','Martillo de Metal',3,'',7,1),(114,'2024-08-18 21:28:15.813469','6','Cierra electrica',1,'[{\"added\": {}}]',7,1),(115,'2024-08-18 21:29:13.517972','7','Martillo',1,'[{\"added\": {}}]',7,1),(116,'2024-08-18 21:31:17.277599','8','Taladro de mano',1,'[{\"added\": {}}]',7,1),(117,'2024-08-18 21:32:28.360021','8','Taladro de mano',2,'[{\"changed\": {\"fields\": [\"Stock\"]}}]',7,1),(118,'2024-08-18 21:32:51.851904','108','Taladro de mano (2)',3,'',8,1),(119,'2024-08-18 22:05:18.650523','110','Martillo (2)',3,'',8,1),(120,'2024-08-18 22:05:29.233683','6','Cierra electrica',2,'[{\"changed\": {\"fields\": [\"Stock\"]}}]',7,1),(121,'2024-08-18 22:05:41.612264','7','Martillo',2,'[{\"changed\": {\"fields\": [\"Stock\"]}}]',7,1),(122,'2024-08-18 22:05:51.096536','8','Taladro de mano',2,'[{\"changed\": {\"fields\": [\"Stock\"]}}]',7,1),(123,'2024-08-18 22:07:23.021065','9','Mazo de goma',1,'[{\"added\": {}}]',7,1),(124,'2024-08-18 22:08:06.751499','3','Cinta Metrica',1,'[{\"added\": {}}]',6,1),(125,'2024-08-18 22:08:20.454866','3','Cinta Metrica',3,'',6,1),(126,'2024-08-18 22:08:37.998505','4','Cinta Metrica',1,'[{\"added\": {}}]',6,1),(127,'2024-08-18 22:12:02.478075','10','Flexometro 8 m',1,'[{\"added\": {}}]',7,1),(128,'2024-08-21 03:00:24.742620','116','Mazo de goma (1)',3,'',8,1),(129,'2024-08-21 03:00:24.742620','113','Mazo de goma (3)',3,'',8,1),(130,'2024-08-21 03:00:24.742620','112','Martillo (2)',3,'',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (9,'accounts','shopper'),(1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session'),(10,'store','cart'),(6,'store','category'),(8,'store','order'),(7,'store','product');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-08-10 18:10:46.305053'),(2,'contenttypes','0002_remove_content_type_name','2024-08-10 18:10:53.407985'),(3,'auth','0001_initial','2024-08-10 18:11:07.154233'),(4,'auth','0002_alter_permission_name_max_length','2024-08-10 18:11:11.109770'),(5,'auth','0003_alter_user_email_max_length','2024-08-10 18:11:11.294054'),(6,'auth','0004_alter_user_username_opts','2024-08-10 18:11:11.514976'),(7,'auth','0005_alter_user_last_login_null','2024-08-10 18:11:11.751839'),(8,'auth','0006_require_contenttypes_0002','2024-08-10 18:11:11.875828'),(9,'auth','0007_alter_validators_add_error_messages','2024-08-10 18:11:12.008931'),(10,'auth','0008_alter_user_username_max_length','2024-08-10 18:11:12.145881'),(11,'auth','0009_alter_user_last_name_max_length','2024-08-10 18:11:12.287821'),(12,'auth','0010_alter_group_name_max_length','2024-08-10 18:11:12.784974'),(13,'auth','0011_update_proxy_permissions','2024-08-10 18:11:12.950856'),(14,'auth','0012_alter_user_first_name_max_length','2024-08-10 18:11:13.164817'),(15,'accounts','0001_initial','2024-08-10 18:11:28.974150'),(16,'admin','0001_initial','2024-08-10 18:11:35.670981'),(17,'admin','0002_logentry_remove_auto_add','2024-08-10 18:11:35.999799'),(18,'admin','0003_logentry_add_action_flag_choices','2024-08-10 18:11:36.242927'),(19,'sessions','0001_initial','2024-08-10 18:11:38.193585'),(20,'store','0001_initial','2024-08-10 18:11:50.450768'),(21,'store','0002_cart','2024-08-10 19:54:27.990492'),(22,'store','0003_remove_cart_ordered_remove_cart_ordered_date_and_more','2024-08-11 03:16:43.734520'),(23,'store','0004_category_slug','2024-08-11 05:18:55.496617'),(24,'store','0005_alter_product_price','2024-08-14 01:00:39.435302');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('ldaslnqkooi6agobrewqktxvmd68t1u2','.eJxVjEEOwiAQRe_C2hAoFMGl-56BDDOMVA0kpV0Z765NutDtf-_9l4iwrSVuPS9xJnERWpx-twT4yHUHdId6axJbXZc5yV2RB-1yapSf18P9OyjQy7f2iVIyoMgBKnA8GJs4kHJsWAWLaEcYBzIqILMCOJPOxmsE74GtteL9AREHONo:1sctUG:RnYaNTWe8K8aeE_GGrH7OonhNTBQs-g7EFz-6-fhPwQ','2024-08-24 21:18:56.215368'),('s9t3aq1vlfrbvyvow0o1lncilslwximg','.eJxVjEEOwiAQRe_C2hAoFMGl-56BDDOMVA0kpV0Z765NutDtf-_9l4iwrSVuPS9xJnERWpx-twT4yHUHdId6axJbXZc5yV2RB-1yapSf18P9OyjQy7f2iVIyoMgBKnA8GJs4kHJsWAWLaEcYBzIqILMCOJPOxmsE74GtteL9AREHONo:1sdxue:AKEOrAulVt3a-ib8EKt2RFWL3xyiWAH6aAwpdGZpUno','2024-08-27 20:14:36.992665');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_cart`
--

DROP TABLE IF EXISTS `store_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `store_cart_user_id_99e99107_fk_accounts_shopper_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_shopper` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_cart`
--

LOCK TABLES `store_cart` WRITE;
/*!40000 ALTER TABLE `store_cart` DISABLE KEYS */;
INSERT INTO `store_cart` VALUES (23,1);
/*!40000 ALTER TABLE `store_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_cart_orders`
--

DROP TABLE IF EXISTS `store_cart_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_cart_orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cart_id` bigint NOT NULL,
  `order_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `store_cart_orders_cart_id_order_id_a1c5cc0e_uniq` (`cart_id`,`order_id`),
  KEY `store_cart_orders_order_id_5cd21146_fk_store_order_id` (`order_id`),
  CONSTRAINT `store_cart_orders_cart_id_22f6138e_fk_store_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `store_cart` (`id`),
  CONSTRAINT `store_cart_orders_order_id_5cd21146_fk_store_order_id` FOREIGN KEY (`order_id`) REFERENCES `store_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_cart_orders`
--

LOCK TABLES `store_cart_orders` WRITE;
/*!40000 ALTER TABLE `store_cart_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_cart_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_category`
--

DROP TABLE IF EXISTS `store_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `store_category_name_150032c6` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_category`
--

LOCK TABLES `store_category` WRITE;
/*!40000 ALTER TABLE `store_category` DISABLE KEYS */;
INSERT INTO `store_category` VALUES (1,'Martillo','Hammerhead'),(2,'Cierras','Cierras_construccion'),(4,'Cinta Metrica','Cinta_metrica');
/*!40000 ALTER TABLE `store_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_order`
--

DROP TABLE IF EXISTS `store_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `ordered` tinyint(1) NOT NULL,
  `user_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `ordered_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `store_order_user_id_ae5f7a5f_fk_accounts_shopper_id` (`user_id`),
  KEY `store_order_product_id_11796f0f_fk_store_product_id` (`product_id`),
  CONSTRAINT `store_order_product_id_11796f0f_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  CONSTRAINT `store_order_user_id_ae5f7a5f_fk_accounts_shopper_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_shopper` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_order`
--

LOCK TABLES `store_order` WRITE;
/*!40000 ALTER TABLE `store_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_product`
--

DROP TABLE IF EXISTS `store_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `description` longtext NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `stock` int NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_product_category_id_574bae65_fk_store_category_id` (`category_id`),
  KEY `store_product_slug_6de8ee4b` (`slug`),
  CONSTRAINT `store_product_category_id_574bae65_fk_store_category_id` FOREIGN KEY (`category_id`) REFERENCES `store_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_product`
--

LOCK TABLES `store_product` WRITE;
/*!40000 ALTER TABLE `store_product` DISABLE KEYS */;
INSERT INTO `store_product` VALUES (6,'Cierra electrica','Esto es una cierra circular',100000.00,'products/sierra_circular_VAF18Ga.png','Cierra_electrica',15,1,2),(7,'Martillo','Martillo con cabeza de acero',30000.00,'products/hammer_MBCFMH5.jpg','iron_hammer',23,1,1),(8,'Taladro de mano','Esto es una taladro de mano',70000.00,'products/taladro_manual_7SL5ukq.jpg','talladro_mano',32,1,2),(9,'Mazo de goma','Esto es un martillo de goma',30000.00,'products/mazo-de-goma_b9tPBv6.jpg','martillo_goma',6,1,1),(10,'Flexometro 8 m','Cinta métrica con gancho cero-absoluto permite mayor precisión',36900.00,'products/flexometro_TizZVCN.jpg','flexometro_8m',34,1,4);
/*!40000 ALTER TABLE `store_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-20 22:04:53

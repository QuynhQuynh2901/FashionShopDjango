-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: fashionshopdb
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add setting',7,'add_setting'),(26,'Can change setting',7,'change_setting'),(27,'Can delete setting',7,'delete_setting'),(28,'Can view setting',7,'view_setting'),(29,'Can add contact message',8,'add_contactmessage'),(30,'Can change contact message',8,'change_contactmessage'),(31,'Can delete contact message',8,'delete_contactmessage'),(32,'Can view contact message',8,'view_contactmessage'),(33,'Can add faq',9,'add_faq'),(34,'Can change faq',9,'change_faq'),(35,'Can delete faq',9,'delete_faq'),(36,'Can view faq',9,'view_faq'),(37,'Can add category',10,'add_category'),(38,'Can change category',10,'change_category'),(39,'Can delete category',10,'delete_category'),(40,'Can view category',10,'view_category'),(41,'Can add product',11,'add_product'),(42,'Can change product',11,'change_product'),(43,'Can delete product',11,'delete_product'),(44,'Can view product',11,'view_product'),(45,'Can add images',12,'add_images'),(46,'Can change images',12,'change_images'),(47,'Can delete images',12,'delete_images'),(48,'Can view images',12,'view_images'),(49,'Can add comment',13,'add_comment'),(50,'Can change comment',13,'change_comment'),(51,'Can delete comment',13,'delete_comment'),(52,'Can view comment',13,'view_comment'),(53,'Can add color',14,'add_color'),(54,'Can change color',14,'change_color'),(55,'Can delete color',14,'delete_color'),(56,'Can view color',14,'view_color'),(57,'Can add size',15,'add_size'),(58,'Can change size',15,'change_size'),(59,'Can delete size',15,'delete_size'),(60,'Can view size',15,'view_size'),(61,'Can add variants',16,'add_variants'),(62,'Can change variants',16,'change_variants'),(63,'Can delete variants',16,'delete_variants'),(64,'Can view variants',16,'view_variants'),(65,'Can add shop cart',17,'add_shopcart'),(66,'Can change shop cart',17,'change_shopcart'),(67,'Can delete shop cart',17,'delete_shopcart'),(68,'Can view shop cart',17,'view_shopcart'),(69,'Can add order',18,'add_order'),(70,'Can change order',18,'change_order'),(71,'Can delete order',18,'delete_order'),(72,'Can view order',18,'view_order'),(73,'Can add order product',19,'add_orderproduct'),(74,'Can change order product',19,'change_orderproduct'),(75,'Can delete order product',19,'delete_orderproduct'),(76,'Can view order product',19,'view_orderproduct'),(77,'Can add user profile',20,'add_userprofile'),(78,'Can change user profile',20,'change_userprofile'),(79,'Can delete user profile',20,'delete_userprofile'),(80,'Can view user profile',20,'view_userprofile');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$Ukz6GwJmHmeXQWDLNAcIST$MEZphJeancs1aArDCTJCJME+nyVp4QMBQk3AdV6AZi8=','2022-01-14 09:11:08.022864',1,'admin','','','admin@gmail.com',1,1,'2022-01-05 17:01:26.457616'),(2,'pbkdf2_sha256$260000$3ptlbSRrfkeJrsUPSY9n4b$3qW8SxCirRnF6U2kJKdUrVPPfVkKVH4cFkGUdPkBC9s=','2022-01-14 08:21:21.177485',0,'khachhang1','Khách','Hàng','khachhang1@gmail.com',0,1,'2022-01-14 08:04:30.515062');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
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
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-01-05 17:03:17.024342','1','Fashion Shop',1,'[{\"added\": {}}]',7,1),(2,'2022-01-12 09:11:52.592890','1','Đỏ',1,'[{\"added\": {}}]',14,1),(3,'2022-01-12 09:29:28.082551','2','Vàng',1,'[{\"added\": {}}]',14,1),(4,'2022-01-12 09:58:23.633607','1','Áo',1,'[{\"added\": {}}]',10,1),(5,'2022-01-12 09:59:08.042972','2','Áo / Áo khoát',1,'[{\"added\": {}}]',10,1),(6,'2022-01-12 09:59:20.073746','2','Áo khoát',2,'[{\"changed\": {\"fields\": [\"Parent\"]}}]',10,1),(7,'2022-01-12 09:59:24.692849','2','Áo khoát',2,'[]',10,1),(8,'2022-01-12 09:59:28.341650','1','Áo',2,'[]',10,1),(9,'2022-01-12 09:59:33.031721','2','Áo / Áo khoát',2,'[{\"changed\": {\"fields\": [\"Parent\"]}}]',10,1),(10,'2022-01-12 09:59:51.008780','3','Quần',1,'[{\"added\": {}}]',10,1),(11,'2022-01-12 09:59:58.543372','3','Quần',2,'[]',10,1),(12,'2022-01-12 10:00:02.156176','1','Áo',2,'[]',10,1),(13,'2022-01-12 10:00:18.621897','4','Quần / Quần bò',1,'[{\"added\": {}}]',10,1),(14,'2022-01-12 11:47:11.724429','1','Áo khoát dù chống nắng',1,'[{\"added\": {}}]',11,1),(15,'2022-01-12 11:49:32.198868','2','Áo nỉ lót lông đôi nam nữ',1,'[{\"added\": {}}]',11,1),(16,'2022-01-13 11:00:52.650975','1','Size 28',1,'[{\"added\": {}}]',15,1),(17,'2022-01-13 11:01:10.167356','2','Size 29',1,'[{\"added\": {}}]',15,1),(18,'2022-01-13 11:01:22.230318','3','Size 30',1,'[{\"added\": {}}]',15,1),(19,'2022-01-13 11:01:31.240464','4','Size 31',1,'[{\"added\": {}}]',15,1),(20,'2022-01-13 11:03:19.739179','5','Size M',1,'[{\"added\": {}}]',15,1),(21,'2022-01-13 11:03:29.699182','6','Size S',1,'[{\"added\": {}}]',15,1),(22,'2022-01-13 11:03:39.558017','7','Size L',1,'[{\"added\": {}}]',15,1),(23,'2022-01-14 06:39:25.385524','3','ÁO KHOÁC U1AKN12101FOSBB',1,'[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"\\u00c1O KHO\\u00c1C U1AKN12101FOSBB\"}}, {\"added\": {\"name\": \"images\", \"object\": \"\\u00c1O KHO\\u00c1C U1AKN12101FOSBB\"}}, {\"added\": {\"name\": \"images\", \"object\": \"\\u00c1O KHO\\u00c1C U1AKN12101FOSBB\"}}]',11,1),(24,'2022-01-14 06:41:11.555469','3','ÁO KHOÁC U1AKN12101FOSBB',2,'[{\"added\": {\"name\": \"variants\", \"object\": \"\\u00c1O KHO\\u00c1C U1AKN12101FOSBB \\u0110\\u1ece\"}}]',11,1),(25,'2022-01-14 06:42:30.321956','3','ÁO KHOÁC U1AKN12101FOSBB',2,'[{\"added\": {\"name\": \"images\", \"object\": \"\"}}]',11,1),(26,'2022-01-14 06:42:54.580373','3','ÁO KHOÁC U1AKN12101FOSBB',2,'[{\"added\": {\"name\": \"variants\", \"object\": \"\\u00c1O KHO\\u00c1C U1AKN12101FOSBB \\u0110\\u1ece\"}}]',11,1),(27,'2022-01-14 06:44:35.484591','3','Lục bảo',1,'[{\"added\": {}}]',14,1),(28,'2022-01-14 06:44:50.803930','3','ÁO KHOÁC U1AKN12101FOSBB',2,'[]',11,1),(29,'2022-01-14 06:45:23.113458','3','ÁO KHOÁC U1AKN12101FOSBB',2,'[{\"added\": {\"name\": \"variants\", \"object\": \"\\u00c1O KHO\\u00c1C U1AKN12101FOSBB XANH\"}}]',11,1),(30,'2022-01-14 06:46:05.042960','3','ÁO KHOÁC U1AKN12101FOSBB',2,'[{\"deleted\": {\"name\": \"variants\", \"object\": \"\\u00c1O KHO\\u00c1C U1AKN12101FOSBB \\u0110\\u1ece\"}}]',11,1),(31,'2022-01-14 06:48:28.735742','4','Đen',1,'[{\"added\": {}}]',14,1),(32,'2022-01-14 06:49:00.522102','3','ÁO KHOÁC U1AKN12101FOSBB',2,'[{\"added\": {\"name\": \"variants\", \"object\": \"\\u00c1O KHO\\u00c1C U1AKN12101FOSBB \\u0110EN\"}}]',11,1),(33,'2022-01-14 06:50:32.355307','4','Quần / Quần Kaki',2,'[{\"changed\": {\"fields\": [\"Title\", \"Description\", \"Slug\"]}}]',10,1),(34,'2022-01-14 06:51:51.622497','1','Đỏ',2,'[{\"changed\": {\"fields\": [\"Code\"]}}]',14,1),(35,'2022-01-14 06:53:43.763405','4','QUẦN KAKI M1QKK11101BSFTR',1,'[{\"added\": {}}]',11,1),(36,'2022-01-14 06:54:51.098379','5','QUẦN KAKI M1QKK11101BSFTR ĐEN',1,'[{\"added\": {}}]',12,1),(37,'2022-01-14 06:57:00.561340','6','QUẦN KAKI M1QKK11101BSFTR XANH',1,'[{\"added\": {}}]',12,1),(38,'2022-01-14 06:57:17.310461','7','QUẦN KAKI M1QKK11101BSFTR HỒNG',1,'[{\"added\": {}}]',12,1),(39,'2022-01-14 06:57:35.479978','5','Xanh berin',1,'[{\"added\": {}}]',14,1),(40,'2022-01-14 06:58:04.340412','6','Hồng',1,'[{\"added\": {}}]',14,1),(41,'2022-01-14 06:59:32.968655','4','QUẦN KAKI M1QKK11101BSFTR',2,'[{\"added\": {\"name\": \"variants\", \"object\": \"QU\\u1ea6N KAKI M1QKK11101BSFTR XANH\"}}, {\"added\": {\"name\": \"variants\", \"object\": \"QU\\u1ea6N KAKI M1QKK11101BSFTR \\u0110EN\"}}, {\"added\": {\"name\": \"variants\", \"object\": \"QU\\u1ea6N KAKI M1QKK11101BSFTR H\\u1ed2NG\"}}]',11,1),(42,'2022-01-14 07:03:19.742336','4','ÁO KHOÁC U1AKN12101FOSBB ĐEN',2,'[{\"changed\": {\"fields\": [\"Quantity\"]}}]',16,1),(43,'2022-01-14 07:03:46.323892','4','QUẦN KAKI M1QKK11101BSFTR',2,'[]',11,1),(44,'2022-01-14 07:09:13.350773','4','Size 31',3,'',15,1),(45,'2022-01-14 07:09:18.024553','3','Size 30',3,'',15,1),(46,'2022-01-14 07:09:20.852366','2','Size 29',3,'',15,1),(47,'2022-01-14 07:09:24.158216','1','Size 28',3,'',15,1),(48,'2022-01-14 07:26:17.110065','4','QUẦN KAKI M1QKK11101BSFTR',2,'[{\"deleted\": {\"name\": \"variants\", \"object\": \"QU\\u1ea6N KAKI M1QKK11101BSFTR XANH\"}}, {\"deleted\": {\"name\": \"variants\", \"object\": \"QU\\u1ea6N KAKI M1QKK11101BSFTR \\u0110EN\"}}, {\"deleted\": {\"name\": \"variants\", \"object\": \"QU\\u1ea6N KAKI M1QKK11101BSFTR H\\u1ed2NG\"}}]',11,1),(49,'2022-01-14 07:26:44.571779','4','QUẦN KAKI M1QKK11101BSFTR',2,'[{\"added\": {\"name\": \"variants\", \"object\": \"QU\\u1ea6N KAKI M1QKK11101BSFTR H\\u1ed2NG\"}}]',11,1),(50,'2022-01-14 07:27:29.393310','3','ÁO KHOÁC U1AKN12101FOSBB',2,'[{\"deleted\": {\"name\": \"variants\", \"object\": \"\\u00c1O KHO\\u00c1C U1AKN12101FOSBB XANH\"}}]',11,1),(51,'2022-01-14 07:30:07.515777','4','QUẦN KAKI M1QKK11101BSFTR',3,'',11,1),(52,'2022-01-14 07:32:17.664797','3','ÁO KHOÁC U1AKN12101FOSBB',2,'[{\"added\": {\"name\": \"variants\", \"object\": \"\\u00c1O KHO\\u00c1C U1AKN12101FOSBB XANH\"}}]',11,1),(53,'2022-01-14 07:33:42.981984','3','ÁO KHOÁC U1AKN12101FOSBB',2,'[{\"changed\": {\"fields\": [\"Variant\"]}}]',11,1),(54,'2022-01-14 07:36:26.521093','5','QUẦN KAKI M1QKK11101BSFTR',1,'[{\"added\": {}}]',11,1),(55,'2022-01-14 07:37:10.149153','5','QUẦN KAKI M1QKK11101BSFTR',2,'[{\"added\": {\"name\": \"images\", \"object\": \"QU\\u1ea6N KAKI M1QKK11101BSFTR\"}}, {\"added\": {\"name\": \"images\", \"object\": \"QU\\u1ea6N KAKI M1QKK11101BSFTR\"}}, {\"added\": {\"name\": \"images\", \"object\": \"QU\\u1ea6N KAKI M1QKK11101BSFTR\"}}]',11,1),(56,'2022-01-14 07:38:35.121381','5','QUẦN KAKI M1QKK11101BSFTR',2,'[{\"changed\": {\"name\": \"images\", \"object\": \"QU\\u1ea6N KAKI M1QKK11101BSFTR XANH\", \"fields\": [\"Title\"]}}, {\"changed\": {\"name\": \"images\", \"object\": \"QU\\u1ea6N KAKI M1QKK11101BSFTR H\\u1ed2NG\", \"fields\": [\"Title\"]}}, {\"changed\": {\"name\": \"images\", \"object\": \"QU\\u1ea6N KAKI M1QKK11101BSFTR \\u0110EN\", \"fields\": [\"Title\"]}}, {\"added\": {\"name\": \"variants\", \"object\": \"QU\\u1ea6N KAKI M1QKK11101BSFTR XANH\"}}, {\"added\": {\"name\": \"variants\", \"object\": \"QU\\u1ea6N KAKI M1QKK11101BSFTR \\u0110EN\"}}, {\"added\": {\"name\": \"variants\", \"object\": \"QU\\u1ea6N KAKI M1QKK11101BSFTR H\\u1ed2NG\"}}]',11,1),(57,'2022-01-14 07:40:44.276599','5','Áo / Áo thun',1,'[{\"added\": {}}]',10,1),(58,'2022-01-14 07:42:42.523620','7','Trắng',1,'[{\"added\": {}}]',14,1),(59,'2022-01-14 07:43:00.554896','6','ÁO THUN U1ATN12102SOSHT',1,'[{\"added\": {}}]',11,1),(60,'2022-01-14 07:43:25.253818','6','ÁO THUN U1ATN12102SOSHT',2,'[{\"added\": {\"name\": \"images\", \"object\": \"\\u00c1O THUN U1ATN12102SOSHT TR\\u1eaeNG\"}}, {\"added\": {\"name\": \"images\", \"object\": \"\\u00c1O THUN U1ATN12102SOSHT \\u0110EN\"}}]',11,1),(61,'2022-01-14 07:44:02.529976','6','ÁO THUN U1ATN12102SOSHT',2,'[{\"added\": {\"name\": \"variants\", \"object\": \"\\u00c1O THUN U1ATN12102SOSHT \\u0110EN\"}}, {\"added\": {\"name\": \"variants\", \"object\": \"\\u00c1O THUN U1ATN12102SOSHT TR\\u1eaeNG\"}}]',11,1),(62,'2022-01-14 07:45:48.942716','6','Quần / Quần short',1,'[{\"added\": {}}]',10,1),(63,'2022-01-14 07:47:40.196244','7','QUẦN SHORT M1SJN2051002',1,'[{\"added\": {}}]',11,1),(64,'2022-01-14 07:48:51.554370','8','Xám',1,'[{\"added\": {}}]',14,1),(65,'2022-01-14 07:49:04.347054','7','QUẦN SHORT M1SJN2051002',2,'[{\"added\": {\"name\": \"images\", \"object\": \"QU\\u1ea6N SHORT M1SJN2051002 X\\u00c1M\"}}]',11,1),(66,'2022-01-14 07:49:28.793724','7','QUẦN SHORT M1SJN2051002',2,'[{\"added\": {\"name\": \"variants\", \"object\": \"QU\\u1ea6N SHORT M1SJN2051002 X\\u00c1M\"}}]',11,1),(67,'2022-01-14 07:50:52.763541','7','QUẦN SHORT M1SJN2051002',2,'[{\"changed\": {\"fields\": [\"Variant\"]}}, {\"changed\": {\"name\": \"variants\", \"object\": \"QU\\u1ea6N SHORT M1SJN2051002 X\\u00c1M\", \"fields\": [\"Size\"]}}]',11,1),(68,'2022-01-14 08:20:51.925972','1','Khách',2,'[{\"changed\": {\"fields\": [\"Status\"]}}, {\"changed\": {\"name\": \"order product\", \"object\": \"QU\\u1ea6N SHORT M1SJN2051002\", \"fields\": [\"Status\"]}}]',18,1),(69,'2022-01-14 08:22:19.929670','1','QUẦN SHORT M1SJN2051002',2,'[]',19,1),(70,'2022-01-14 08:22:39.267500','1','Khách',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',18,1),(71,'2022-01-14 08:22:53.770680','1','Khách',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',18,1),(72,'2022-01-14 08:23:21.923415','1','Khách',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',18,1),(73,'2022-01-14 08:23:28.003597','1','Khách',2,'[]',18,1);
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
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'home','contactmessage'),(9,'home','faq'),(7,'home','setting'),(18,'order','order'),(19,'order','orderproduct'),(17,'order','shopcart'),(10,'product','category'),(14,'product','color'),(13,'product','comment'),(12,'product','images'),(11,'product','product'),(15,'product','size'),(16,'product','variants'),(6,'sessions','session'),(20,'user','userprofile');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-01-05 16:53:35.366444'),(2,'auth','0001_initial','2022-01-05 16:54:09.877648'),(3,'admin','0001_initial','2022-01-05 16:54:18.184218'),(4,'admin','0002_logentry_remove_auto_add','2022-01-05 16:54:18.281212'),(5,'admin','0003_logentry_add_action_flag_choices','2022-01-05 16:54:18.377207'),(6,'contenttypes','0002_remove_content_type_name','2022-01-05 16:54:22.794002'),(7,'auth','0002_alter_permission_name_max_length','2022-01-05 16:54:26.277922'),(8,'auth','0003_alter_user_email_max_length','2022-01-05 16:54:27.642849'),(9,'auth','0004_alter_user_username_opts','2022-01-05 16:54:27.833841'),(10,'auth','0005_alter_user_last_login_null','2022-01-05 16:54:34.011909'),(11,'auth','0006_require_contenttypes_0002','2022-01-05 16:54:34.189901'),(12,'auth','0007_alter_validators_add_error_messages','2022-01-05 16:54:34.331895'),(13,'auth','0008_alter_user_username_max_length','2022-01-05 16:54:37.110225'),(14,'auth','0009_alter_user_last_name_max_length','2022-01-05 16:54:40.584000'),(15,'auth','0010_alter_group_name_max_length','2022-01-05 16:54:41.421004'),(16,'auth','0011_update_proxy_permissions','2022-01-05 16:54:41.674989'),(17,'auth','0012_alter_user_first_name_max_length','2022-01-05 16:54:44.203099'),(18,'home','0001_initial','2022-01-05 16:54:45.303077'),(19,'home','0002_contactmessage','2022-01-05 16:54:47.902904'),(20,'home','0003_faq','2022-01-05 16:54:50.015377'),(21,'product','0001_initial','2022-01-05 16:54:55.951623'),(22,'product','0002_product','2022-01-05 16:55:00.309397'),(23,'product','0003_images','2022-01-05 16:55:04.143211'),(24,'product','0004_auto_20201217_1452','2022-01-05 16:55:04.402670'),(25,'product','0005_auto_20201217_1855','2022-01-05 16:55:30.418053'),(26,'product','0006_comment','2022-01-05 16:55:36.685785'),(27,'product','0007_auto_20201219_0855','2022-01-05 16:55:40.235089'),(28,'product','0008_color_size_variants','2022-01-05 16:55:55.959545'),(29,'order','0001_initial','2022-01-05 16:56:04.077667'),(30,'order','0002_order_orderproduct','2022-01-05 16:56:21.761144'),(31,'order','0003_auto_20201220_1905','2022-01-05 16:56:22.935147'),(32,'order','0004_auto_20201221_2142','2022-01-05 16:56:32.183166'),(33,'sessions','0001_initial','2022-01-05 16:56:34.180138'),(34,'user','0001_initial','2022-01-05 16:56:38.541470');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('8v0lrpzx0iszcqse4959kw01ojtqyt26','.eJxVjDsOwjAQBe_iGllrO_5R0nMGy-vd4ACypXwqxN0hUgpo38y8l0h5W2vaFp7TROIslDj9bpjLg9sO6J7brcvS2zpPKHdFHnSR1078vBzu30HNS_3WDBQQQOFowWvyEKLX0WivnB0GFwjRYrTRKVMoGAd58KyM82iBeQzi_QG0Qza8:1n8Ic0:MxBMhxa02klvHE_uvpU4w_eWi7-NV7QGpYRTUvwBITY','2022-01-28 09:11:08.188855'),('bqvr0qiseecrcvu7g3f3qsrexdxd2x5n','.eJxVjMFugzAQRP_FErfK2OCFwi1IOeYbLHu9BjeJibCRIlX99wLi0B5n3sz7ZtqsedJrokUHx3pWsY-_nTV4p7gD92XiOHOcY16C5fuEnzTx2-zoMZzbf4LJpGl7d4hV6xXJT9GCtYiqsW0nUFQCPEiBzngLoAClA9U0LdSkOnDCutoT-U2668LTjLTpyvX1mI1L5VGkcmepzMVVFsOluNRBv9cjDEUn48hfcdwMaJasQ6ZnYr34-QXtSVJg:1n8fnN:pcb6Z8QeSKyhd9nMKeLqalnJN2aRh4E58HlYdZzY1iY','2022-01-29 09:56:25.294957'),('qnsenfjb0kiq528z13f0iz96gy7e38ap','.eJxVjDsOwjAQBe_iGllrO_5R0nMGy-vd4ACypXwqxN0hUgpo38y8l0h5W2vaFp7TROIslDj9bpjLg9sO6J7brcvS2zpPKHdFHnSR1078vBzu30HNS_3WDBQQQOFowWvyEKLX0WivnB0GFwjRYrTRKVMoGAd58KyM82iBeQzi_QG0Qza8:1n8HqF:iXjoQmlVmImb-b1RHinGU7cS9cL8BLSxvlMx_HnKZUc','2022-01-28 08:21:47.376553');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_contactmessage`
--

DROP TABLE IF EXISTS `home_contactmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_contactmessage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `update_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_contactmessage`
--

LOCK TABLES `home_contactmessage` WRITE;
/*!40000 ALTER TABLE `home_contactmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_contactmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_faq`
--

DROP TABLE IF EXISTS `home_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_faq` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ordernumber` int NOT NULL,
  `question` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `update_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_faq`
--

LOCK TABLES `home_faq` WRITE;
/*!40000 ALTER TABLE `home_faq` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_setting`
--

DROP TABLE IF EXISTS `home_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_setting` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtpserver` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtpemail` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtppassword` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtpport` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aboutus` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `references` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `update_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_setting`
--

LOCK TABLES `home_setting` WRITE;
/*!40000 ALTER TABLE `home_setting` DISABLE KEYS */;
INSERT INTO `home_setting` VALUES (1,'Fashion Shop','FS','Bán quần xà lỏn','Fashion Shop','371 Nguyễn Kiệm','0713124131','','','','','','','images/tải_xuống.png','','','','','','','','True','2022-01-05 17:03:16.995343','2022-01-05 17:03:16.995343');
/*!40000 ALTER TABLE `home_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_order`
--

DROP TABLE IF EXISTS `order_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` double NOT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adminnote` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `update_at` datetime(6) NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_order_user_id_7cf9bc2b_fk_auth_user_id` (`user_id`),
  CONSTRAINT `order_order_user_id_7cf9bc2b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_order`
--

LOCK TABLES `order_order` WRITE;
/*!40000 ALTER TABLE `order_order` DISABLE KEYS */;
INSERT INTO `order_order` VALUES (1,'NETGG','Khách','Hàng','','','Hà Nội','',236000,'Hoàn Thành','127.0.0.1','','2022-01-14 08:05:52.759277','2022-01-14 08:23:27.963665',2),(5,'TTSNX','Khách','Hàng','','','HCM','',325000,'New','127.0.0.1','','2022-01-14 09:12:13.712309','2022-01-14 09:12:13.712309',2),(6,'FKRDN','Khách','Hàng','0713124131','gò vấp','HCM','',305000,'New','127.0.0.1','','2022-01-15 09:56:23.622989','2022-01-15 09:56:23.622989',2);
/*!40000 ALTER TABLE `order_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_orderproduct`
--

DROP TABLE IF EXISTS `order_orderproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_orderproduct` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `price` double NOT NULL,
  `amount` double NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `update_at` datetime(6) NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `variant_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_orderproduct_order_id_18dae3b0_fk_order_order_id` (`order_id`),
  KEY `order_orderproduct_product_id_54ab3eb7_fk_product_product_id` (`product_id`),
  KEY `order_orderproduct_user_id_d5f4875a_fk_auth_user_id` (`user_id`),
  KEY `order_orderproduct_variant_id_d1ffe6be_fk_product_variants_id` (`variant_id`),
  CONSTRAINT `order_orderproduct_order_id_18dae3b0_fk_order_order_id` FOREIGN KEY (`order_id`) REFERENCES `order_order` (`id`),
  CONSTRAINT `order_orderproduct_product_id_54ab3eb7_fk_product_product_id` FOREIGN KEY (`product_id`) REFERENCES `product_product` (`id`),
  CONSTRAINT `order_orderproduct_user_id_d5f4875a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `order_orderproduct_variant_id_d1ffe6be_fk_product_variants_id` FOREIGN KEY (`variant_id`) REFERENCES `product_variants` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_orderproduct`
--

LOCK TABLES `order_orderproduct` WRITE;
/*!40000 ALTER TABLE `order_orderproduct` DISABLE KEYS */;
INSERT INTO `order_orderproduct` VALUES (1,1,236000,236000,'Mới','2022-01-14 08:05:52.890271','2022-01-14 08:22:19.915616',1,7,2,15),(5,1,325000,325000,'New','2022-01-14 09:12:13.970239','2022-01-14 09:12:13.970239',5,5,2,11),(6,1,69000,69000,'New','2022-01-15 09:56:23.819029','2022-01-15 09:56:23.819029',6,1,2,NULL),(7,1,236000,236000,'New','2022-01-15 09:56:24.256960','2022-01-15 09:56:24.256960',6,7,2,15);
/*!40000 ALTER TABLE `order_orderproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_shopcart`
--

DROP TABLE IF EXISTS `order_shopcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_shopcart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `variant_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_shopcart_product_id_705aaf05_fk_product_product_id` (`product_id`),
  KEY `order_shopcart_user_id_c0c0f3c1_fk_auth_user_id` (`user_id`),
  KEY `order_shopcart_variant_id_6f10d0f1_fk_product_variants_id` (`variant_id`),
  CONSTRAINT `order_shopcart_product_id_705aaf05_fk_product_product_id` FOREIGN KEY (`product_id`) REFERENCES `product_product` (`id`),
  CONSTRAINT `order_shopcart_user_id_c0c0f3c1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `order_shopcart_variant_id_6f10d0f1_fk_product_variants_id` FOREIGN KEY (`variant_id`) REFERENCES `product_variants` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_shopcart`
--

LOCK TABLES `order_shopcart` WRITE;
/*!40000 ALTER TABLE `order_shopcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_shopcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `update_at` datetime(6) NOT NULL,
  `parent_id` int DEFAULT NULL,
  `level` int unsigned NOT NULL,
  `lft` int unsigned NOT NULL,
  `rght` int unsigned NOT NULL,
  `tree_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `product_category_parent_id_f6860923_fk_product_category_id` (`parent_id`),
  KEY `product_category_tree_id_f3c46461` (`tree_id`),
  CONSTRAINT `product_category_parent_id_f6860923_fk_product_category_id` FOREIGN KEY (`parent_id`) REFERENCES `product_category` (`id`),
  CONSTRAINT `product_category_chk_1` CHECK ((`level` >= 0)),
  CONSTRAINT `product_category_chk_2` CHECK ((`lft` >= 0)),
  CONSTRAINT `product_category_chk_3` CHECK ((`rght` >= 0)),
  CONSTRAINT `product_category_chk_4` CHECK ((`tree_id` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (1,'Áo','A','Áo','','True','ao','2022-01-12 09:58:23.582611','2022-01-12 10:00:02.129172',NULL,0,1,6,1),(2,'Áo khoát','AK','Áo khoát','','True','ao-khoat','2022-01-12 09:59:08.029915','2022-01-12 09:59:33.028663',1,1,2,3,1),(3,'Quần','Q','Quần','','True','qun','2022-01-12 09:59:50.990796','2022-01-12 09:59:58.539426',NULL,0,1,6,2),(4,'Quần Kaki','QB','Quần Kaki','','True','qun-kaki','2022-01-12 10:00:18.609897','2022-01-14 06:50:32.332308',3,1,2,3,2),(5,'Áo thun','AT','Áo thun','','True','ao-thun','2022-01-14 07:40:44.268594','2022-01-14 07:40:44.268594',1,1,4,5,1),(6,'Quần short','QS','Quần short','','True','qun-short','2022-01-14 07:45:48.933657','2022-01-14 07:45:48.933657',3,1,4,5,2);
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_color`
--

DROP TABLE IF EXISTS `product_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_color` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_color`
--

LOCK TABLES `product_color` WRITE;
/*!40000 ALTER TABLE `product_color` DISABLE KEYS */;
INSERT INTO `product_color` VALUES (1,'Đỏ','#FF2400'),(2,'Vàng','#FFFF00'),(3,'Lục bảo','#50C878'),(4,'Đen','#000000'),(5,'Xanh berin','#7FFFD4'),(6,'Hồng','#FFC0CB'),(7,'Trắng','#FFFFFF'),(8,'Xám','#808080');
/*!40000 ALTER TABLE `product_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_comment`
--

DROP TABLE IF EXISTS `product_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subject` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` int NOT NULL,
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `update_at` datetime(6) NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_comment_product_id_b32e96a2_fk_product_product_id` (`product_id`),
  KEY `product_comment_user_id_ac70fe86_fk_auth_user_id` (`user_id`),
  CONSTRAINT `product_comment_product_id_b32e96a2_fk_product_product_id` FOREIGN KEY (`product_id`) REFERENCES `product_product` (`id`),
  CONSTRAINT `product_comment_user_id_ac70fe86_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_comment`
--

LOCK TABLES `product_comment` WRITE;
/*!40000 ALTER TABLE `product_comment` DISABLE KEYS */;
INSERT INTO `product_comment` VALUES (1,'','sản phẩm đẹp',5,'127.0.0.1','New','2022-01-14 09:41:23.598876','2022-01-14 09:41:23.598876',7,2);
/*!40000 ALTER TABLE `product_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_images_product_id_28ebf5f0_fk_product_product_id` (`product_id`),
  CONSTRAINT `product_images_product_id_28ebf5f0_fk_product_product_id` FOREIGN KEY (`product_id`) REFERENCES `product_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (1,'ÁO KHOÁC U1AKN12101FOSBB','images/29122021091243_ao_khoac_bomber_nam_U1AKN12101FOSBB_toto_shop__2_.jpg',3),(2,'ÁO KHOÁC U1AKN12101FOSBB','images/29122021091248_ao_khoac_bomber_nam_U1AKN12101FOSBB_toto_shop__4_.jpg',3),(3,'ÁO KHOÁC U1AKN12101FOSBB','images/29122021091252_ao_khoac_bomber_nam_U1AKN12101FOSBB_toto_shop__3_.jpg',3),(4,'','images/AO_KHOAC_U1AKN12101FOSBB_ao_khoac_bomber_nam_u1akn12101fosbb_toto_shop_6_Z1TFizB.jpg',3),(8,'QUẦN KAKI M1QKK11101BSFTR XANH','images/25112021071115_quan_ka_ki_nam_M1QKK11101BSFTR_toto_shop__12__ghtWIf6.jpg',5),(9,'QUẦN KAKI M1QKK11101BSFTR HỒNG','images/25112021071108_quan_ka_ki_nam_M1QKK11101BSFTR_toto_shop__13__Ss3xkLD.jpg',5),(10,'QUẦN KAKI M1QKK11101BSFTR ĐEN','images/25112021071103_quan_ka_ki_nam_M1QKK11101BSFTR_toto_shop__11__2goEc4Z.jpg',5),(11,'ÁO THUN U1ATN12102SOSHT TRẮNG','images/08122021071233_ao_thun_nam_U1ATN12102SOSHT_toto_shop__9_.jpg',6),(12,'ÁO THUN U1ATN12102SOSHT ĐEN','images/08122021071229_ao_thun_nam_U1ATN12102SOSHT_toto_shop__8_.jpg',6),(13,'QUẦN SHORT M1SJN2051002 XÁM','images/14052021030513_IMG_8726.jpg',7);
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_product`
--

DROP TABLE IF EXISTS `product_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(12,3) NOT NULL,
  `amount` int NOT NULL,
  `minamount` int NOT NULL,
  `variant` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `update_at` datetime(6) NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `product_product_category_id_0c725779_fk_product_category_id` (`category_id`),
  CONSTRAINT `product_product_category_id_0c725779_fk_product_category_id` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_product`
--

LOCK TABLES `product_product` WRITE;
/*!40000 ALTER TABLE `product_product` DISABLE KEYS */;
INSERT INTO `product_product` VALUES (1,'Áo khoát dù chống nắng','AK001','Áo khoát dù chống nắng','images/c28f5a1b308b47ff98f0cf27850f3582.jpg',69000.000,49,3,'None','<p>&Aacute;o kho&aacute;t d&ugrave; chống nắng&nbsp;</p>','ao-khoat-du-chng-nng','True','2022-01-12 11:47:11.702425','2022-01-15 09:56:24.050972',2),(2,'Áo nỉ lót lông đôi nam nữ','AK002','Áo nỉ lót lông đôi nam nữ','images/c45af19d85e5f704ca542e1b11ab9af9.jpg',120000.000,50,3,'None','<p>&Aacute;o nỉ l&oacute;t l&ocirc;ng đ&ocirc;i nam nữ</p>','ao-n-lot-long-djoi-nam-n','True','2022-01-12 11:49:32.182866','2022-01-12 11:49:32.182866',2),(3,'ÁO KHOÁC U1AKN12101FOSBB','AK001','ÁO KHOÁC U1AKN12101FOSBB','images/AO_KHOAC_U1AKN12101FOSBB_ao_khoac_bomber_nam_u1akn12101fosbb_toto_shop_6.jpg',650.000,50,3,'Size-Color','<p>&Aacute;O KHO&Aacute;C U1AKN12101FOSBB</p>','ao-khoac-u1akn12101fosbb','True','2022-01-14 06:39:25.284524','2022-01-14 07:33:42.973930',2),(5,'QUẦN KAKI M1QKK11101BSFTR','QKK001','QUẦN KAKI M1QKK11101BSFTR','images/25112021071159_quan_ka_ki_nam_M1QKK11101BSFTR_toto_shop__1__9UHkjFx.jpg',325000.000,50,3,'Size-Color','<p>QUẦN KAKI M1QKK11101BSFTR</p>','qun-kaki-m1qkk11101bsftr','True','2022-01-14 07:36:26.492094','2022-01-14 07:38:35.088381',4),(6,'ÁO THUN U1ATN12102SOSHT','AT001','ÁO THUN U1ATN12102SOSHT','images/08122021071253_ao_thun_nam_U1ATN12102SOSHT_toto_shop__1_.jpg',285000.000,50,3,'Size-Color','<h1>&Aacute;O THUN U1ATN12102SOSHT</h1>','ao-thun-u1atn12102sosht','True','2022-01-14 07:43:00.538897','2022-01-14 07:44:02.487013',5),(7,'QUẦN SHORT M1SJN2051002','QS001','QUẦN SHORT M1SJN2051002','images/14052021030525_dai_dien.jpg',236000.000,50,3,'Size-Color','<h1>QUẦN SHORT M1SJN2051002</h1>','qun-short-m1sjn2051002','True','2022-01-14 07:47:40.172262','2022-01-14 07:50:52.731542',6);
/*!40000 ALTER TABLE `product_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_size`
--

DROP TABLE IF EXISTS `product_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_size` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_size`
--

LOCK TABLES `product_size` WRITE;
/*!40000 ALTER TABLE `product_size` DISABLE KEYS */;
INSERT INTO `product_size` VALUES (5,'Size M','SM'),(6,'Size S','SS'),(7,'Size L','SL');
/*!40000 ALTER TABLE `product_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variants`
--

DROP TABLE IF EXISTS `product_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variants` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int DEFAULT NULL,
  `quantity` int NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `color_id` int DEFAULT NULL,
  `product_id` int NOT NULL,
  `size_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_variants_color_id_fa0a2408_fk_product_color_id` (`color_id`),
  KEY `product_variants_product_id_019d9f04_fk_product_product_id` (`product_id`),
  KEY `product_variants_size_id_38cd471b_fk_product_size_id` (`size_id`),
  CONSTRAINT `product_variants_color_id_fa0a2408_fk_product_color_id` FOREIGN KEY (`color_id`) REFERENCES `product_color` (`id`),
  CONSTRAINT `product_variants_product_id_019d9f04_fk_product_product_id` FOREIGN KEY (`product_id`) REFERENCES `product_product` (`id`),
  CONSTRAINT `product_variants_size_id_38cd471b_fk_product_size_id` FOREIGN KEY (`size_id`) REFERENCES `product_size` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variants`
--

LOCK TABLES `product_variants` WRITE;
/*!40000 ALTER TABLE `product_variants` DISABLE KEYS */;
INSERT INTO `product_variants` VALUES (1,'ÁO KHOÁC U1AKN12101FOSBB ĐỎ',2,15,650000.00,1,3,5),(4,'ÁO KHOÁC U1AKN12101FOSBB ĐEN',1,20,650000.00,4,3,5),(9,'ÁO KHOÁC U1AKN12101FOSBB XANH',3,15,650000.00,3,3,5),(10,'QUẦN KAKI M1QKK11101BSFTR XANH',8,15,325000.00,5,5,5),(11,'QUẦN KAKI M1QKK11101BSFTR ĐEN',10,19,325000.00,4,5,5),(12,'QUẦN KAKI M1QKK11101BSFTR HỒNG',9,15,325000.00,6,5,5),(13,'ÁO THUN U1ATN12102SOSHT ĐEN',12,25,285000.00,4,6,5),(14,'ÁO THUN U1ATN12102SOSHT TRẮNG',11,25,285000.00,7,6,5),(15,'QUẦN SHORT M1SJN2051002 XÁM',13,23,236000.00,8,7,5);
/*!40000 ALTER TABLE `product_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_userprofile`
--

DROP TABLE IF EXISTS `user_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_userprofile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_userprofile_user_id_2474538d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_userprofile`
--

LOCK TABLES `user_userprofile` WRITE;
/*!40000 ALTER TABLE `user_userprofile` DISABLE KEYS */;
INSERT INTO `user_userprofile` VALUES (1,'','','Hà Nội','','images/users/tải_xuống.png',2);
/*!40000 ALTER TABLE `user_userprofile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-15 17:18:40

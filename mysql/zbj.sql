-- MySQL dump 10.13  Distrib 5.6.23, for Win32 (x86)
--
-- Host: localhost    Database: zbj
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_58c48ba9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_51277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_30a071c9_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_30a071c9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_24702650_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `district` (
  `district_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `create_date` date NOT NULL,
  `valid_date` date NOT NULL,
  `expire_date` date NOT NULL,
  PRIMARY KEY (`district_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  KEY `django_admin__content_type_id_5151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_1c5f563_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_5151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_1c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  UNIQUE KEY `django_content_type_app_label_3ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `feishou`
--

DROP TABLE IF EXISTS `feishou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feishou` (
  `feishou_id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `sex` varchar(4) NOT NULL,
  `education` varchar(10) NOT NULL,
  `birthday` date NOT NULL,
  `own_company` varchar(10) NOT NULL,
  `create_date` date NOT NULL,
  `employ_date` date NOT NULL,
  `phone` int(11) NOT NULL,
  `mobile_phone` int(11) NOT NULL,
  `id_card` varchar(18) NOT NULL,
  `address` varchar(20) NOT NULL,
  `cert_no` varchar(20) NOT NULL,
  `agency` varchar(20) NOT NULL,
  `cert_gain_date` date NOT NULL,
  `cert_expire_date` date NOT NULL,
  PRIMARY KEY (`feishou_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fly_rec`
--

DROP TABLE IF EXISTS `fly_rec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fly_rec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zhibaoji_id` int(11) NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `pos_x` double NOT NULL,
  `pos_y` double NOT NULL,
  `pos_z` double NOT NULL,
  `speed` double NOT NULL,
  `record_time` datetime(6) NOT NULL,
  `relat_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owner` (
  `owner_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `phone` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `valid_date` date NOT NULL,
  `expire_date` date NOT NULL,
  PRIMARY KEY (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zbj_dis_relat`
--

DROP TABLE IF EXISTS `zbj_dis_relat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zbj_dis_relat` (
  `relat_id` int(11) NOT NULL,
  `zhibaoji_id_id` int(11) NOT NULL,
  `district_id_id` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `valid_date` date NOT NULL,
  `expire_date` date NOT NULL,
  PRIMARY KEY (`relat_id`),
  KEY `Zbj_Dis_Relat_zhibaoji_id_id_1027a230_fk_Zhibaoji_zhibaoji_id` (`zhibaoji_id_id`),
  KEY `Zbj_Dis_Relat_district_id_id_4976516e_fk_District_district_id` (`district_id_id`),
  CONSTRAINT `Zbj_Dis_Relat_district_id_id_4976516e_fk_District_district_id` FOREIGN KEY (`district_id_id`) REFERENCES `district` (`district_id`),
  CONSTRAINT `Zbj_Dis_Relat_zhibaoji_id_id_1027a230_fk_Zhibaoji_zhibaoji_id` FOREIGN KEY (`zhibaoji_id_id`) REFERENCES `zhibaoji` (`zhibaoji_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zbj_owner_relat`
--

DROP TABLE IF EXISTS `zbj_owner_relat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zbj_owner_relat` (
  `relat_id` int(11) NOT NULL,
  `zhibaoji_id_id` int(11) NOT NULL,
  `owner_id_id` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `valid_date` date NOT NULL,
  `expire_date` date NOT NULL,
  PRIMARY KEY (`relat_id`),
  KEY `Zbj_Owner_Relat_zhibaoji_id_id_5dbc9d9b_fk_Zhibaoji_zhibaoji_id` (`zhibaoji_id_id`),
  KEY `Zbj_Owner_Relat_owner_id_id_2b0d4f45_fk_District_district_id` (`owner_id_id`),
  CONSTRAINT `Zbj_Owner_Relat_owner_id_id_2b0d4f45_fk_District_district_id` FOREIGN KEY (`owner_id_id`) REFERENCES `district` (`district_id`),
  CONSTRAINT `Zbj_Owner_Relat_zhibaoji_id_id_5dbc9d9b_fk_Zhibaoji_zhibaoji_id` FOREIGN KEY (`zhibaoji_id_id`) REFERENCES `zhibaoji` (`zhibaoji_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zhibaoji`
--

DROP TABLE IF EXISTS `zhibaoji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhibaoji` (
  `zhibaoji_id` int(11) NOT NULL,
  `serial_no` varchar(20) NOT NULL,
  `user_group` varchar(20) NOT NULL,
  `manufacture` varchar(20) NOT NULL,
  `model_name` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `capacity` varchar(20) NOT NULL,
  `standard` varchar(20) NOT NULL,
  `production_date` date NOT NULL,
  `purchase_date` date NOT NULL,
  `sim_no` varchar(20) NOT NULL,
  PRIMARY KEY (`zhibaoji_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zhibaoji_illegal`
--

DROP TABLE IF EXISTS `zhibaoji_illegal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhibaoji_illegal` (
  `zhibaoji_id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `pos_x` double NOT NULL,
  `pos_y` double NOT NULL,
  `pos_z` double NOT NULL,
  `speed` double NOT NULL,
  `record_date` datetime(6) NOT NULL,
  `feishou_id_id` int(11) NOT NULL,
  PRIMARY KEY (`zhibaoji_id`),
  KEY `Zhibaoji_illegal_feishou_id_id_7a3d1500_fk_Feishou_feishou_id` (`feishou_id_id`),
  CONSTRAINT `Zhibaoji_illegal_feishou_id_id_7a3d1500_fk_Feishou_feishou_id` FOREIGN KEY (`feishou_id_id`) REFERENCES `feishou` (`feishou_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zhibaoji_inuse`
--

DROP TABLE IF EXISTS `zhibaoji_inuse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhibaoji_inuse` (
  `zhibaoji_id` int(11) NOT NULL,
  `feishou_id_id` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `valid_date` date NOT NULL,
  `expire_date` date NOT NULL,
  `ext1` varchar(20) NOT NULL,
  `ext2` varchar(20) NOT NULL,
  PRIMARY KEY (`zhibaoji_id`),
  KEY `Zhibaoji_inuse_feishou_id_id_6fea729a_fk_Feishou_feishou_id` (`feishou_id_id`),
  CONSTRAINT `Zhibaoji_inuse_feishou_id_id_6fea729a_fk_Feishou_feishou_id` FOREIGN KEY (`feishou_id_id`) REFERENCES `feishou` (`feishou_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zhibaoji_maintain`
--

DROP TABLE IF EXISTS `zhibaoji_maintain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhibaoji_maintain` (
  `zhibaoji_id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `describe` longtext NOT NULL,
  `quality` varchar(10) NOT NULL,
  `response` varchar(10) NOT NULL,
  `remark` longtext NOT NULL,
  `record_date` date NOT NULL,
  PRIMARY KEY (`zhibaoji_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-30 21:48:15

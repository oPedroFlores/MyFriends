-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2023-03-27 18:55:22','2023-03-27 18:55:22','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'post-trashed','','comment',0,0);
INSERT INTO `wp_comments` VALUES (2,39,'pedro','','','','2023-03-28 19:09:08','2023-03-28 19:09:08','Teste de comentario',0,'post-trashed','','comment',0,2);
INSERT INTO `wp_comments` VALUES (3,108,'pedro','','','','2023-04-03 20:05:44','2023-04-03 20:05:44','test',0,'post-trashed','','comment',0,2);
INSERT INTO `wp_comments` VALUES (4,108,'pedro','','','','2023-04-03 20:05:51','2023-04-03 20:05:51','test',0,'post-trashed','','comment',0,2);
INSERT INTO `wp_comments` VALUES (5,108,'pedro','','','','2023-04-03 20:05:51','2023-04-03 20:05:51','test',0,'post-trashed','','comment',0,2);
INSERT INTO `wp_comments` VALUES (6,108,'pedro','','','','2023-04-03 20:05:51','2023-04-03 20:05:51','test',0,'post-trashed','','comment',0,2);
INSERT INTO `wp_comments` VALUES (7,108,'pedro','','','','2023-04-03 20:10:01','2023-04-03 20:10:01','pedro',0,'post-trashed','','comment',0,2);
INSERT INTO `wp_comments` VALUES (8,108,'pedro','','','','2023-04-03 20:10:20','2023-04-03 20:10:20','😁',0,'post-trashed','','comment',0,2);
INSERT INTO `wp_comments` VALUES (9,108,'pedro','','','','2023-04-03 20:11:54','2023-04-03 20:11:54','tt',0,'post-trashed','','comment',0,2);
INSERT INTO `wp_comments` VALUES (10,108,'pedro','','','','2023-04-03 20:12:30','2023-04-03 20:12:30','dsgfs',0,'post-trashed','','comment',0,2);
INSERT INTO `wp_comments` VALUES (11,108,'pedro','','','','2023-04-03 20:14:38','2023-04-03 20:14:38','dfgh',0,'post-trashed','','comment',0,2);
INSERT INTO `wp_comments` VALUES (12,108,'pedro','','','','2023-04-03 20:14:40','2023-04-03 20:14:40','sdfdfghghs',0,'post-trashed','','comment',0,2);
INSERT INTO `wp_comments` VALUES (13,102,'pedro','','','','2023-04-03 20:18:03','2023-04-03 20:18:03','dfgdfg',0,'post-trashed','','comment',0,2);
INSERT INTO `wp_comments` VALUES (14,102,'pedro','','','','2023-04-03 20:18:08','2023-04-03 20:18:08','sdfggggggggggggggggggggggggggggggggggggggggggggggggggggggg',0,'post-trashed','','comment',0,2);
INSERT INTO `wp_comments` VALUES (15,108,'pedro','','','','2023-04-03 20:20:17','2023-04-03 20:20:17','ggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg',0,'post-trashed','','comment',0,2);
INSERT INTO `wp_comments` VALUES (16,108,'pedro','','','','2023-04-03 20:20:24','2023-04-03 20:20:24','fghfg',0,'post-trashed','','comment',0,2);
INSERT INTO `wp_comments` VALUES (17,108,'pedro','','','','2023-04-03 20:20:25','2023-04-03 20:20:25','fghfghfg',0,'post-trashed','','comment',0,2);
INSERT INTO `wp_comments` VALUES (18,108,'pedro','','','','2023-04-03 20:20:26','2023-04-03 20:20:26','fghfghfgh',0,'post-trashed','','comment',0,2);
INSERT INTO `wp_comments` VALUES (19,108,'pedro','','','','2023-04-03 20:34:47','2023-04-03 20:34:47','zxczxczx',0,'post-trashed','','comment',0,2);
INSERT INTO `wp_comments` VALUES (20,108,'pedro','','','','2023-04-03 20:34:50','2023-04-03 20:34:50','sdf',0,'post-trashed','','comment',0,2);
INSERT INTO `wp_comments` VALUES (21,108,'pedro','','','','2023-04-03 20:35:17','2023-04-03 20:35:17','sdfsdf',0,'post-trashed','','comment',0,2);
INSERT INTO `wp_comments` VALUES (22,108,'pedro','','','','2023-04-03 20:43:38','2023-04-03 20:43:38','gdfgj',0,'post-trashed','','comment',0,2);
INSERT INTO `wp_comments` VALUES (25,108,'lucas','','','','2023-04-04 02:10:11','2023-04-04 02:10:11','sdgsdfg',0,'post-trashed','','comment',0,16);
INSERT INTO `wp_comments` VALUES (26,102,'lucas','','','','2023-04-04 02:10:14','2023-04-04 02:10:14','23r23r',0,'post-trashed','','comment',0,16);
INSERT INTO `wp_comments` VALUES (31,111,'Claudineia','','','','2023-04-04 23:43:38','2023-04-04 23:43:38','sdfsdfsdf',0,'post-trashed','','comment',0,15);
INSERT INTO `wp_comments` VALUES (32,111,'joao2','','','','2023-04-05 02:07:08','2023-04-05 02:07:08','sdfgsdfgsdf',0,'post-trashed','','comment',0,18);
INSERT INTO `wp_comments` VALUES (33,111,'joao2','','','','2023-04-05 02:07:10','2023-04-05 02:07:10','gsdfg',0,'post-trashed','','comment',0,18);
INSERT INTO `wp_comments` VALUES (113,316,'lucas','','','','2023-04-12 22:00:34','2023-04-12 22:00:34','sdfgsdfgsdfg',0,'1','','comment',0,16);
INSERT INTO `wp_comments` VALUES (114,316,'lucas','','','','2023-04-12 22:00:36','2023-04-12 22:00:36','sdfgsdfgsdfg',0,'1','','comment',0,16);
INSERT INTO `wp_comments` VALUES (115,312,'lucas','','','','2023-04-12 22:00:45','2023-04-12 22:00:45','fdgdsfg',0,'1','','comment',0,16);
INSERT INTO `wp_comments` VALUES (144,316,'pedro','','','','2023-04-13 00:52:20','2023-04-13 00:52:20','12e12e',0,'1','','comment',0,2);
INSERT INTO `wp_comments` VALUES (147,323,'pedro','','','','2023-04-15 23:00:04','2023-04-15 23:00:04','123123',0,'1','','comment',0,2);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=974 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://myfriends.test','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://myfriends.test','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','myfriends','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@wpengine.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:93:{s:8:\"^json/?$\";s:22:\"index.php?rest_route=/\";s:11:\"^json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:18:\"^index.php/json/?$\";s:22:\"index.php?rest_route=/\";s:21:\"^index.php/json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:2:{i:0;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:1;s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','api','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','api','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','53496','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','posts','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1000','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1000','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','0','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1695495321','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','53496','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'user_count','18','no');
INSERT INTO `wp_options` VALUES (103,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (105,'cron','a:8:{i:1681753593;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1681757723;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1681757753;a:3:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1681757755;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1681774878;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1681794198;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1681844123;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'nonce_key','i`P?ArSxY/TJR36s =AuUx~Qs]>f|bYsqT|rKQ kI[W1ss[ Hwf.Kp,PBJ2mN*Sb','no');
INSERT INTO `wp_options` VALUES (116,'nonce_salt','Y0Z2*5KP(oqlFqVD^`5r8f/q%r$Kbog&m;l:=aa6Q6bvI`PHDbiqeX^tbv~M7@BL','no');
INSERT INTO `wp_options` VALUES (117,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (123,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (126,'theme_mods_twentytwentythree','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1679944126;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (129,'https_detection_errors','a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (136,'auth_key','cEo[eY:fhm$W!!f,2dR}o.BXHW1lDqO[fAL-T^X; W,3{g?3^C#YIz7K<+;i&:ZU','no');
INSERT INTO `wp_options` VALUES (137,'auth_salt','={G}#x{jR-B?pnqg4(qRfOY<+YLMxQQj`v31F:*zHa>W($Iu(Ia%x:)P{yex:8<e','no');
INSERT INTO `wp_options` VALUES (138,'logged_in_key','Vq-hQ&Sw(ADl/QJX](/beoFRJVyP*g{ig0b27_C|-^~Omdn^f>nRFpil:cN_7vZU','no');
INSERT INTO `wp_options` VALUES (139,'logged_in_salt','zx{yf~|XYAZA1 :pG7+!n=wp$NV)$SG1}>I?g,8:05}Vj[,x/u@D-XdcFh EZXcV','no');
INSERT INTO `wp_options` VALUES (158,'can_compress_scripts','0','no');
INSERT INTO `wp_options` VALUES (161,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (168,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (169,'current_theme','Api','yes');
INSERT INTO `wp_options` VALUES (170,'theme_mods_api','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (171,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (195,'recovery_mode_email_last_sent','1680713688','yes');
INSERT INTO `wp_options` VALUES (196,'wp_calendar_block_has_published_posts','1','yes');
INSERT INTO `wp_options` VALUES (221,'large_crop','1','yes');
INSERT INTO `wp_options` VALUES (309,'ai1wm_updater','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (625,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (626,'new_admin_email','dev-email@wpengine.local','yes');
INSERT INTO `wp_options` VALUES (946,'ai1wm_secret_key','Jz54miASlc7z','yes');
INSERT INTO `wp_options` VALUES (947,'ai1wm_backups_labels','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (948,'ai1wm_sites_links','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (950,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.2.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.2-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.2\";s:7:\"version\";s:3:\"6.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1681751666;s:15:\"version_checked\";s:3:\"6.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (952,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1681750997;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.73\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.73.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2458334\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2458334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2837281\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2837281\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";}s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:48:\"w.org/plugins/jwt-authentication-for-wp-rest-api\";s:4:\"slug\";s:34:\"jwt-authentication-for-wp-rest-api\";s:6:\"plugin\";s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";s:11:\"new_version\";s:5:\"1.3.2\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/jwt-authentication-for-wp-rest-api/\";s:7:\"package\";s:83:\"https://downloads.wordpress.org/plugin/jwt-authentication-for-wp-rest-api.1.3.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:79:\"https://ps.w.org/jwt-authentication-for-wp-rest-api/assets/icon.svg?rev=2787935\";s:3:\"svg\";s:79:\"https://ps.w.org/jwt-authentication-for-wp-rest-api/assets/icon.svg?rev=2787935\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:89:\"https://ps.w.org/jwt-authentication-for-wp-rest-api/assets/banner-772x250.jpg?rev=2787935\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.2\";}}}','no');
INSERT INTO `wp_options` VALUES (955,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1681750998;s:7:\"checked\";a:1:{s:3:\"api\";s:0:\"\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (956,'_site_transient_ai1wm_last_check_for_updates','1681750997','no');
INSERT INTO `wp_options` VALUES (957,'ai1wm_status','a:2:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:306:\"<a href=\"http://myfriends.test/wp-content/ai1wm-backups/myfriends.test-20230415-230205-j2u9nm.wpress\" class=\"ai1wm-button-green ai1wm-emphasize ai1wm-button-download\" title=\"myfriends.test\" download=\"myfriends.test-20230415-230205-j2u9nm.wpress\"><span>Download myfriends.test</span><em>Size: 77 MB</em></a>\";}','yes');
INSERT INTO `wp_options` VALUES (958,'swift_performance_plugin_organizer','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (959,'jetpack_active_modules','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (969,'_site_transient_timeout_theme_roots','1681752798','no');
INSERT INTO `wp_options` VALUES (971,'_site_transient_theme_roots','a:1:{s:3:\"api\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=1221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (7,1,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (8,1,'_wp_trash_meta_time','1679948207');
INSERT INTO `wp_postmeta` VALUES (9,1,'_wp_desired_post_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (10,1,'_wp_trash_meta_comments_status','a:1:{i:1;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES (97,39,'_edit_lock','1680046798:1');
INSERT INTO `wp_postmeta` VALUES (101,39,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (104,42,'_edit_lock','1680033151:1');
INSERT INTO `wp_postmeta` VALUES (110,42,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (113,46,'legenda','Esse é um teste de legenda');
INSERT INTO `wp_postmeta` VALUES (114,46,'acessos','26');
INSERT INTO `wp_postmeta` VALUES (115,46,'curtidas','0');
INSERT INTO `wp_postmeta` VALUES (120,46,'img','47');
INSERT INTO `wp_postmeta` VALUES (121,46,'_edit_lock','1680039473:1');
INSERT INTO `wp_postmeta` VALUES (122,48,'legenda','Maicon');
INSERT INTO `wp_postmeta` VALUES (123,48,'acessos','28');
INSERT INTO `wp_postmeta` VALUES (124,48,'curtidas','0');
INSERT INTO `wp_postmeta` VALUES (129,48,'img','49');
INSERT INTO `wp_postmeta` VALUES (130,48,'_edit_lock','1680196730:1');
INSERT INTO `wp_postmeta` VALUES (133,39,'acessos','25');
INSERT INTO `wp_postmeta` VALUES (136,50,'legenda','t');
INSERT INTO `wp_postmeta` VALUES (137,50,'acessos','0');
INSERT INTO `wp_postmeta` VALUES (138,50,'curtidas','0');
INSERT INTO `wp_postmeta` VALUES (143,50,'img','51');
INSERT INTO `wp_postmeta` VALUES (144,50,'_edit_lock','1680296647:1');
INSERT INTO `wp_postmeta` VALUES (145,50,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (146,50,'_wp_trash_meta_time','1680297006');
INSERT INTO `wp_postmeta` VALUES (147,50,'_wp_desired_post_slug','t');
INSERT INTO `wp_postmeta` VALUES (148,48,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (149,48,'_wp_trash_meta_time','1680297008');
INSERT INTO `wp_postmeta` VALUES (150,48,'_wp_desired_post_slug','maicon');
INSERT INTO `wp_postmeta` VALUES (151,46,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (152,46,'_wp_trash_meta_time','1680297009');
INSERT INTO `wp_postmeta` VALUES (153,46,'_wp_desired_post_slug','esse-e-um-teste-de-legenda');
INSERT INTO `wp_postmeta` VALUES (154,42,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (155,42,'_wp_trash_meta_time','1680297010');
INSERT INTO `wp_postmeta` VALUES (156,42,'_wp_desired_post_slug','42-2');
INSERT INTO `wp_postmeta` VALUES (157,39,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (158,39,'_wp_trash_meta_time','1680297011');
INSERT INTO `wp_postmeta` VALUES (159,39,'_wp_desired_post_slug','test');
INSERT INTO `wp_postmeta` VALUES (160,39,'_wp_trash_meta_comments_status','a:1:{i:2;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES (161,55,'legenda','t');
INSERT INTO `wp_postmeta` VALUES (162,55,'acessos','43');
INSERT INTO `wp_postmeta` VALUES (163,55,'curtidas','0');
INSERT INTO `wp_postmeta` VALUES (168,55,'img','56');
INSERT INTO `wp_postmeta` VALUES (169,57,'legenda','Fotografa');
INSERT INTO `wp_postmeta` VALUES (170,57,'acessos','0');
INSERT INTO `wp_postmeta` VALUES (171,57,'curtidas','0');
INSERT INTO `wp_postmeta` VALUES (176,57,'img','58');
INSERT INTO `wp_postmeta` VALUES (177,59,'legenda','Fotografa');
INSERT INTO `wp_postmeta` VALUES (178,59,'acessos','4');
INSERT INTO `wp_postmeta` VALUES (179,59,'curtidas','0');
INSERT INTO `wp_postmeta` VALUES (184,59,'img','60');
INSERT INTO `wp_postmeta` VALUES (185,59,'_edit_lock','1680454675:1');
INSERT INTO `wp_postmeta` VALUES (186,59,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (187,59,'_wp_trash_meta_time','1680482875');
INSERT INTO `wp_postmeta` VALUES (188,59,'_wp_desired_post_slug','fotografa-2');
INSERT INTO `wp_postmeta` VALUES (189,57,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (190,57,'_wp_trash_meta_time','1680482876');
INSERT INTO `wp_postmeta` VALUES (191,57,'_wp_desired_post_slug','fotografa');
INSERT INTO `wp_postmeta` VALUES (192,63,'legenda','21341234');
INSERT INTO `wp_postmeta` VALUES (193,63,'acessos','0');
INSERT INTO `wp_postmeta` VALUES (194,63,'curtidas','0');
INSERT INTO `wp_postmeta` VALUES (197,63,'img','O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:12:\"upload_error\";a:1:{i:0;s:34:\"Specified file failed upload test.\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}');
INSERT INTO `wp_postmeta` VALUES (198,64,'legenda','test');
INSERT INTO `wp_postmeta` VALUES (199,64,'acessos','0');
INSERT INTO `wp_postmeta` VALUES (200,64,'curtidas','0');
INSERT INTO `wp_postmeta` VALUES (203,64,'img','O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:12:\"upload_error\";a:1:{i:0;s:34:\"Specified file failed upload test.\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}');
INSERT INTO `wp_postmeta` VALUES (204,65,'legenda','1234');
INSERT INTO `wp_postmeta` VALUES (205,65,'acessos','0');
INSERT INTO `wp_postmeta` VALUES (206,65,'curtidas','0');
INSERT INTO `wp_postmeta` VALUES (209,65,'img','O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:12:\"upload_error\";a:1:{i:0;s:34:\"Specified file failed upload test.\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}');
INSERT INTO `wp_postmeta` VALUES (210,66,'legenda','selfie');
INSERT INTO `wp_postmeta` VALUES (211,66,'acessos','1');
INSERT INTO `wp_postmeta` VALUES (212,66,'curtidas','0');
INSERT INTO `wp_postmeta` VALUES (215,66,'img','O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:12:\"upload_error\";a:1:{i:0;s:34:\"Specified file failed upload test.\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}');
INSERT INTO `wp_postmeta` VALUES (216,66,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (217,66,'_wp_trash_meta_time','1680489204');
INSERT INTO `wp_postmeta` VALUES (218,66,'_wp_desired_post_slug','selfie');
INSERT INTO `wp_postmeta` VALUES (219,65,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (220,65,'_wp_trash_meta_time','1680489211');
INSERT INTO `wp_postmeta` VALUES (221,65,'_wp_desired_post_slug','1234-2');
INSERT INTO `wp_postmeta` VALUES (222,64,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (223,64,'_wp_trash_meta_time','1680489214');
INSERT INTO `wp_postmeta` VALUES (224,64,'_wp_desired_post_slug','test');
INSERT INTO `wp_postmeta` VALUES (225,63,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (226,63,'_wp_trash_meta_time','1680489216');
INSERT INTO `wp_postmeta` VALUES (227,63,'_wp_desired_post_slug','21341234-2');
INSERT INTO `wp_postmeta` VALUES (228,71,'legenda','teste selfie');
INSERT INTO `wp_postmeta` VALUES (229,71,'acessos','0');
INSERT INTO `wp_postmeta` VALUES (230,71,'curtidas','0');
INSERT INTO `wp_postmeta` VALUES (233,71,'img','O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:12:\"upload_error\";a:1:{i:0;s:34:\"Specified file failed upload test.\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}');
INSERT INTO `wp_postmeta` VALUES (234,72,'legenda','teste selfie');
INSERT INTO `wp_postmeta` VALUES (235,72,'acessos','0');
INSERT INTO `wp_postmeta` VALUES (236,72,'curtidas','0');
INSERT INTO `wp_postmeta` VALUES (239,72,'img','O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:12:\"upload_error\";a:1:{i:0;s:34:\"Specified file failed upload test.\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}');
INSERT INTO `wp_postmeta` VALUES (240,72,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (241,72,'_wp_trash_meta_time','1680489306');
INSERT INTO `wp_postmeta` VALUES (242,72,'_wp_desired_post_slug','teste-selfie-2');
INSERT INTO `wp_postmeta` VALUES (243,74,'legenda','test');
INSERT INTO `wp_postmeta` VALUES (244,74,'acessos','0');
INSERT INTO `wp_postmeta` VALUES (245,74,'curtidas','0');
INSERT INTO `wp_postmeta` VALUES (248,74,'img','O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:12:\"upload_error\";a:1:{i:0;s:34:\"Specified file failed upload test.\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}');
INSERT INTO `wp_postmeta` VALUES (249,75,'legenda','t');
INSERT INTO `wp_postmeta` VALUES (250,75,'acessos','0');
INSERT INTO `wp_postmeta` VALUES (251,75,'curtidas','0');
INSERT INTO `wp_postmeta` VALUES (256,75,'img','76');
INSERT INTO `wp_postmeta` VALUES (257,77,'legenda','japones');
INSERT INTO `wp_postmeta` VALUES (258,77,'acessos','31');
INSERT INTO `wp_postmeta` VALUES (259,77,'curtidas','0');
INSERT INTO `wp_postmeta` VALUES (264,77,'img','78');
INSERT INTO `wp_postmeta` VALUES (265,74,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (266,74,'_wp_trash_meta_time','1680489573');
INSERT INTO `wp_postmeta` VALUES (267,74,'_wp_desired_post_slug','test');
INSERT INTO `wp_postmeta` VALUES (268,75,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (269,75,'_wp_trash_meta_time','1680489576');
INSERT INTO `wp_postmeta` VALUES (270,75,'_wp_desired_post_slug','t-2');
INSERT INTO `wp_postmeta` VALUES (271,71,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (272,71,'_wp_trash_meta_time','1680489579');
INSERT INTO `wp_postmeta` VALUES (273,71,'_wp_desired_post_slug','teste-selfie');
INSERT INTO `wp_postmeta` VALUES (274,82,'legenda','gato');
INSERT INTO `wp_postmeta` VALUES (275,82,'acessos','0');
INSERT INTO `wp_postmeta` VALUES (276,82,'curtidas','0');
INSERT INTO `wp_postmeta` VALUES (281,82,'img','83');
INSERT INTO `wp_postmeta` VALUES (282,82,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (283,82,'_wp_trash_meta_time','1680545856');
INSERT INTO `wp_postmeta` VALUES (284,82,'_wp_desired_post_slug','gato');
INSERT INTO `wp_postmeta` VALUES (285,85,'legenda','test quadrado');
INSERT INTO `wp_postmeta` VALUES (286,85,'acessos','0');
INSERT INTO `wp_postmeta` VALUES (287,85,'curtidas','0');
INSERT INTO `wp_postmeta` VALUES (290,85,'img','O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:12:\"upload_error\";a:1:{i:0;s:52:\"Sorry, you are not allowed to upload this file type.\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}');
INSERT INTO `wp_postmeta` VALUES (291,86,'legenda','wertw');
INSERT INTO `wp_postmeta` VALUES (292,86,'acessos','0');
INSERT INTO `wp_postmeta` VALUES (293,86,'curtidas','0');
INSERT INTO `wp_postmeta` VALUES (296,86,'img','O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:12:\"upload_error\";a:1:{i:0;s:52:\"Sorry, you are not allowed to upload this file type.\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}');
INSERT INTO `wp_postmeta` VALUES (297,87,'legenda','tzdfsd');
INSERT INTO `wp_postmeta` VALUES (298,87,'acessos','4');
INSERT INTO `wp_postmeta` VALUES (299,87,'curtidas','0');
INSERT INTO `wp_postmeta` VALUES (304,87,'img','88');
INSERT INTO `wp_postmeta` VALUES (307,90,'legenda','asfasf');
INSERT INTO `wp_postmeta` VALUES (308,90,'acessos','2');
INSERT INTO `wp_postmeta` VALUES (309,90,'curtidas','0');
INSERT INTO `wp_postmeta` VALUES (314,90,'img','91');
INSERT INTO `wp_postmeta` VALUES (315,92,'legenda','234');
INSERT INTO `wp_postmeta` VALUES (316,92,'acessos','14');
INSERT INTO `wp_postmeta` VALUES (317,92,'curtidas','0');
INSERT INTO `wp_postmeta` VALUES (322,92,'img','93');
INSERT INTO `wp_postmeta` VALUES (323,85,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (324,85,'_wp_trash_meta_time','1680549752');
INSERT INTO `wp_postmeta` VALUES (325,85,'_wp_desired_post_slug','test-quadrado');
INSERT INTO `wp_postmeta` VALUES (326,86,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (327,86,'_wp_trash_meta_time','1680549755');
INSERT INTO `wp_postmeta` VALUES (328,86,'_wp_desired_post_slug','wertw');
INSERT INTO `wp_postmeta` VALUES (329,55,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (330,55,'_wp_trash_meta_time','1680549766');
INSERT INTO `wp_postmeta` VALUES (331,55,'_wp_desired_post_slug','t');
INSERT INTO `wp_postmeta` VALUES (332,90,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (333,90,'_wp_trash_meta_time','1680549775');
INSERT INTO `wp_postmeta` VALUES (334,90,'_wp_desired_post_slug','asfasf');
INSERT INTO `wp_postmeta` VALUES (335,87,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (336,87,'_wp_trash_meta_time','1680549775');
INSERT INTO `wp_postmeta` VALUES (337,87,'_wp_desired_post_slug','tzdfsd');
INSERT INTO `wp_postmeta` VALUES (338,77,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (339,77,'_wp_trash_meta_time','1680549792');
INSERT INTO `wp_postmeta` VALUES (340,77,'_wp_desired_post_slug','japones');
INSERT INTO `wp_postmeta` VALUES (341,100,'legenda','homem');
INSERT INTO `wp_postmeta` VALUES (342,100,'acessos','45678594');
INSERT INTO `wp_postmeta` VALUES (343,100,'curtidas','0');
INSERT INTO `wp_postmeta` VALUES (348,100,'img','101');
INSERT INTO `wp_postmeta` VALUES (349,102,'legenda','selfie');
INSERT INTO `wp_postmeta` VALUES (350,102,'acessos','44');
INSERT INTO `wp_postmeta` VALUES (351,102,'curtidas','0');
INSERT INTO `wp_postmeta` VALUES (356,102,'img','103');
INSERT INTO `wp_postmeta` VALUES (357,104,'legenda','casal');
INSERT INTO `wp_postmeta` VALUES (358,104,'acessos','45');
INSERT INTO `wp_postmeta` VALUES (359,104,'curtidas','18');
INSERT INTO `wp_postmeta` VALUES (364,104,'img','105');
INSERT INTO `wp_postmeta` VALUES (373,108,'legenda','pedro quadrado');
INSERT INTO `wp_postmeta` VALUES (374,108,'acessos','98');
INSERT INTO `wp_postmeta` VALUES (375,108,'curtidas','0');
INSERT INTO `wp_postmeta` VALUES (380,108,'img','109');
INSERT INTO `wp_postmeta` VALUES (381,100,'_edit_lock','1680551335:1');
INSERT INTO `wp_postmeta` VALUES (384,100,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (387,111,'legenda','sol');
INSERT INTO `wp_postmeta` VALUES (388,111,'acessos','78');
INSERT INTO `wp_postmeta` VALUES (389,111,'curtidas','0');
INSERT INTO `wp_postmeta` VALUES (394,111,'img','112');
INSERT INTO `wp_postmeta` VALUES (395,114,'legenda','urso');
INSERT INTO `wp_postmeta` VALUES (396,114,'acessos','20');
INSERT INTO `wp_postmeta` VALUES (397,114,'curtidas','5');
INSERT INTO `wp_postmeta` VALUES (402,114,'img','115');
INSERT INTO `wp_postmeta` VALUES (403,114,'_edit_lock','1680731079:1');
INSERT INTO `wp_postmeta` VALUES (406,114,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (467,131,'_edit_lock','1680732337:1');
INSERT INTO `wp_postmeta` VALUES (471,131,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (490,131,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (491,131,'_wp_trash_meta_time','1680732337');
INSERT INTO `wp_postmeta` VALUES (492,131,'_wp_desired_post_slug','34234-2');
INSERT INTO `wp_postmeta` VALUES (501,140,'legenda','4');
INSERT INTO `wp_postmeta` VALUES (502,140,'acessos','4');
INSERT INTO `wp_postmeta` VALUES (503,140,'curtidas','a:3:{i:0;s:5:\"Teste\";i:1;s:5:\"test2\";i:2;s:5:\"test3\";}');
INSERT INTO `wp_postmeta` VALUES (508,140,'img','141');
INSERT INTO `wp_postmeta` VALUES (509,142,'legenda','f');
INSERT INTO `wp_postmeta` VALUES (510,142,'acessos','8');
INSERT INTO `wp_postmeta` VALUES (511,142,'curtidas','');
INSERT INTO `wp_postmeta` VALUES (516,142,'img','143');
INSERT INTO `wp_postmeta` VALUES (517,129,'curtidas',NULL);
INSERT INTO `wp_postmeta` VALUES (518,144,'legenda','6');
INSERT INTO `wp_postmeta` VALUES (519,144,'acessos','0');
INSERT INTO `wp_postmeta` VALUES (520,144,'curtidas','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (525,144,'img','145');
INSERT INTO `wp_postmeta` VALUES (526,146,'legenda','4');
INSERT INTO `wp_postmeta` VALUES (527,146,'acessos','0');
INSERT INTO `wp_postmeta` VALUES (528,146,'curtidas','a:1:{i:0;a:0:{}}');
INSERT INTO `wp_postmeta` VALUES (533,146,'img','147');
INSERT INTO `wp_postmeta` VALUES (534,148,'legenda','6');
INSERT INTO `wp_postmeta` VALUES (535,148,'acessos','2');
INSERT INTO `wp_postmeta` VALUES (536,148,'curtidas','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (541,148,'img','149');
INSERT INTO `wp_postmeta` VALUES (542,150,'legenda','555');
INSERT INTO `wp_postmeta` VALUES (543,150,'acessos','0');
INSERT INTO `wp_postmeta` VALUES (544,150,'curtidas','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (549,150,'img','151');
INSERT INTO `wp_postmeta` VALUES (550,152,'legenda','sdfs');
INSERT INTO `wp_postmeta` VALUES (551,152,'acessos','4');
INSERT INTO `wp_postmeta` VALUES (552,152,'curtidas','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (557,152,'img','153');
INSERT INTO `wp_postmeta` VALUES (558,154,'legenda','g');
INSERT INTO `wp_postmeta` VALUES (559,154,'acessos','4');
INSERT INTO `wp_postmeta` VALUES (560,154,'curtidas','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (565,154,'img','155');
INSERT INTO `wp_postmeta` VALUES (566,156,'legenda','ff');
INSERT INTO `wp_postmeta` VALUES (567,156,'acessos','2');
INSERT INTO `wp_postmeta` VALUES (568,156,'curtidas','a:1:{i:0;s:5:\"Teste\";}');
INSERT INTO `wp_postmeta` VALUES (573,156,'img','157');
INSERT INTO `wp_postmeta` VALUES (574,158,'legenda','j');
INSERT INTO `wp_postmeta` VALUES (575,158,'acessos','4');
INSERT INTO `wp_postmeta` VALUES (576,158,'curtidas','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (581,158,'img','159');
INSERT INTO `wp_postmeta` VALUES (582,160,'legenda','hhhhhh');
INSERT INTO `wp_postmeta` VALUES (583,160,'acessos','4');
INSERT INTO `wp_postmeta` VALUES (584,160,'curtidas','a:3:{i:0;i:0;i:1;i:1;i:2;i:2;}');
INSERT INTO `wp_postmeta` VALUES (589,160,'img','161');
INSERT INTO `wp_postmeta` VALUES (590,162,'legenda','b');
INSERT INTO `wp_postmeta` VALUES (591,162,'acessos','6');
INSERT INTO `wp_postmeta` VALUES (592,162,'curtidas','');
INSERT INTO `wp_postmeta` VALUES (597,162,'img','163');
INSERT INTO `wp_postmeta` VALUES (598,164,'legenda','66');
INSERT INTO `wp_postmeta` VALUES (599,164,'acessos','4');
INSERT INTO `wp_postmeta` VALUES (600,164,'curtidas','');
INSERT INTO `wp_postmeta` VALUES (605,164,'img','165');
INSERT INTO `wp_postmeta` VALUES (606,166,'legenda','fg');
INSERT INTO `wp_postmeta` VALUES (607,166,'acessos','2');
INSERT INTO `wp_postmeta` VALUES (608,166,'curtidas','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (613,166,'img','167');
INSERT INTO `wp_postmeta` VALUES (614,168,'legenda','hgfh');
INSERT INTO `wp_postmeta` VALUES (615,168,'acessos','0');
INSERT INTO `wp_postmeta` VALUES (616,168,'curtidas','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (621,168,'img','169');
INSERT INTO `wp_postmeta` VALUES (622,170,'legenda','gfhjfghj');
INSERT INTO `wp_postmeta` VALUES (623,170,'acessos','4');
INSERT INTO `wp_postmeta` VALUES (624,170,'curtidas','');
INSERT INTO `wp_postmeta` VALUES (629,170,'img','171');
INSERT INTO `wp_postmeta` VALUES (630,172,'legenda','dfgsdf');
INSERT INTO `wp_postmeta` VALUES (631,172,'acessos','6');
INSERT INTO `wp_postmeta` VALUES (632,172,'curtidas','');
INSERT INTO `wp_postmeta` VALUES (637,172,'img','173');
INSERT INTO `wp_postmeta` VALUES (638,172,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (639,172,'_wp_trash_meta_time','1680733622');
INSERT INTO `wp_postmeta` VALUES (640,172,'_wp_desired_post_slug','dfgsdf');
INSERT INTO `wp_postmeta` VALUES (641,170,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (642,170,'_wp_trash_meta_time','1680733622');
INSERT INTO `wp_postmeta` VALUES (643,170,'_wp_desired_post_slug','gfhjfghj');
INSERT INTO `wp_postmeta` VALUES (644,168,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (645,168,'_wp_trash_meta_time','1680733622');
INSERT INTO `wp_postmeta` VALUES (646,168,'_wp_desired_post_slug','hgfh');
INSERT INTO `wp_postmeta` VALUES (647,166,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (648,166,'_wp_trash_meta_time','1680733622');
INSERT INTO `wp_postmeta` VALUES (649,166,'_wp_desired_post_slug','fg');
INSERT INTO `wp_postmeta` VALUES (650,164,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (651,164,'_wp_trash_meta_time','1680733622');
INSERT INTO `wp_postmeta` VALUES (652,164,'_wp_desired_post_slug','66-2');
INSERT INTO `wp_postmeta` VALUES (653,162,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (654,162,'_wp_trash_meta_time','1680733622');
INSERT INTO `wp_postmeta` VALUES (655,162,'_wp_desired_post_slug','b');
INSERT INTO `wp_postmeta` VALUES (656,160,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (657,160,'_wp_trash_meta_time','1680733622');
INSERT INTO `wp_postmeta` VALUES (658,160,'_wp_desired_post_slug','hhhhhh');
INSERT INTO `wp_postmeta` VALUES (659,158,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (660,158,'_wp_trash_meta_time','1680733622');
INSERT INTO `wp_postmeta` VALUES (661,158,'_wp_desired_post_slug','j');
INSERT INTO `wp_postmeta` VALUES (662,156,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (663,156,'_wp_trash_meta_time','1680733622');
INSERT INTO `wp_postmeta` VALUES (664,156,'_wp_desired_post_slug','ff');
INSERT INTO `wp_postmeta` VALUES (665,154,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (666,154,'_wp_trash_meta_time','1680733622');
INSERT INTO `wp_postmeta` VALUES (667,154,'_wp_desired_post_slug','g');
INSERT INTO `wp_postmeta` VALUES (668,152,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (669,152,'_wp_trash_meta_time','1680733622');
INSERT INTO `wp_postmeta` VALUES (670,152,'_wp_desired_post_slug','sdfs');
INSERT INTO `wp_postmeta` VALUES (671,150,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (672,150,'_wp_trash_meta_time','1680733622');
INSERT INTO `wp_postmeta` VALUES (673,150,'_wp_desired_post_slug','555-2');
INSERT INTO `wp_postmeta` VALUES (674,148,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (675,148,'_wp_trash_meta_time','1680733622');
INSERT INTO `wp_postmeta` VALUES (676,148,'_wp_desired_post_slug','6-3');
INSERT INTO `wp_postmeta` VALUES (677,146,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (678,146,'_wp_trash_meta_time','1680733622');
INSERT INTO `wp_postmeta` VALUES (679,146,'_wp_desired_post_slug','4-3');
INSERT INTO `wp_postmeta` VALUES (680,144,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (681,144,'_wp_trash_meta_time','1680733622');
INSERT INTO `wp_postmeta` VALUES (682,144,'_wp_desired_post_slug','6-2');
INSERT INTO `wp_postmeta` VALUES (683,142,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (684,142,'_wp_trash_meta_time','1680733622');
INSERT INTO `wp_postmeta` VALUES (685,142,'_wp_desired_post_slug','f');
INSERT INTO `wp_postmeta` VALUES (686,140,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (687,140,'_wp_trash_meta_time','1680733622');
INSERT INTO `wp_postmeta` VALUES (688,140,'_wp_desired_post_slug','4-2');
INSERT INTO `wp_postmeta` VALUES (689,191,'legenda','Guepardo');
INSERT INTO `wp_postmeta` VALUES (690,191,'acessos','6');
INSERT INTO `wp_postmeta` VALUES (691,191,'curtidas','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (696,191,'img','192');
INSERT INTO `wp_postmeta` VALUES (699,194,'legenda','fghdfgh');
INSERT INTO `wp_postmeta` VALUES (700,194,'acessos','6');
INSERT INTO `wp_postmeta` VALUES (701,194,'curtidas','a:3:{i:0;i:0;i:1;i:1;i:2;i:2;}');
INSERT INTO `wp_postmeta` VALUES (706,194,'img','195');
INSERT INTO `wp_postmeta` VALUES (709,197,'legenda','nbvmn');
INSERT INTO `wp_postmeta` VALUES (710,197,'acessos','4');
INSERT INTO `wp_postmeta` VALUES (711,197,'curtidas','0');
INSERT INTO `wp_postmeta` VALUES (716,197,'img','198');
INSERT INTO `wp_postmeta` VALUES (717,199,'legenda','ere');
INSERT INTO `wp_postmeta` VALUES (718,199,'acessos','4');
INSERT INTO `wp_postmeta` VALUES (719,199,'curtidas','a:1:{s:5:\"likes\";a:3:{i:0;s:3:\"Red\";i:1;s:5:\"Green\";i:2;s:4:\"Blue\";}}');
INSERT INTO `wp_postmeta` VALUES (724,199,'img','200');
INSERT INTO `wp_postmeta` VALUES (725,201,'legenda','fghjfgh');
INSERT INTO `wp_postmeta` VALUES (726,201,'acessos','4');
INSERT INTO `wp_postmeta` VALUES (727,201,'curtidas','');
INSERT INTO `wp_postmeta` VALUES (732,201,'img','202');
INSERT INTO `wp_postmeta` VALUES (733,203,'legenda','gfhdfgh');
INSERT INTO `wp_postmeta` VALUES (734,203,'acessos','2');
INSERT INTO `wp_postmeta` VALUES (735,203,'curtidas','test');
INSERT INTO `wp_postmeta` VALUES (740,203,'img','204');
INSERT INTO `wp_postmeta` VALUES (741,205,'legenda','tax');
INSERT INTO `wp_postmeta` VALUES (742,205,'acessos','1');
INSERT INTO `wp_postmeta` VALUES (743,205,'curtidas','0');
INSERT INTO `wp_postmeta` VALUES (748,205,'img','206');
INSERT INTO `wp_postmeta` VALUES (749,207,'legenda','tax');
INSERT INTO `wp_postmeta` VALUES (750,207,'acessos','6');
INSERT INTO `wp_postmeta` VALUES (751,207,'curtidas','0');
INSERT INTO `wp_postmeta` VALUES (756,207,'img','208');
INSERT INTO `wp_postmeta` VALUES (757,209,'legenda','3234r');
INSERT INTO `wp_postmeta` VALUES (758,209,'acessos','2');
INSERT INTO `wp_postmeta` VALUES (759,209,'curtidas','a:2:{s:4:\"Test\";i:1;s:5:\"Test2\";i:2;}');
INSERT INTO `wp_postmeta` VALUES (764,209,'img','210');
INSERT INTO `wp_postmeta` VALUES (765,211,'legenda','32r23r');
INSERT INTO `wp_postmeta` VALUES (766,211,'acessos','6');
INSERT INTO `wp_postmeta` VALUES (767,211,'curtidas','s:51:\"a:3:{i:0;s:3:\"Red\";i:1;s:5:\"Green\";i:2;s:4:\"Blue\";}\";');
INSERT INTO `wp_postmeta` VALUES (772,211,'img','212');
INSERT INTO `wp_postmeta` VALUES (773,213,'legenda','3');
INSERT INTO `wp_postmeta` VALUES (774,213,'acessos','14');
INSERT INTO `wp_postmeta` VALUES (775,213,'curtidas','');
INSERT INTO `wp_postmeta` VALUES (780,213,'img','214');
INSERT INTO `wp_postmeta` VALUES (781,213,'_edit_lock','1680737645:1');
INSERT INTO `wp_postmeta` VALUES (784,213,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (787,216,'legenda','454');
INSERT INTO `wp_postmeta` VALUES (788,216,'acessos','4');
INSERT INTO `wp_postmeta` VALUES (794,216,'img','217');
INSERT INTO `wp_postmeta` VALUES (795,216,'_edit_lock','1680739615:1');
INSERT INTO `wp_postmeta` VALUES (797,216,'curtidas','s:14:\"a:1:{i:0;i:0;}\";');
INSERT INTO `wp_postmeta` VALUES (798,218,'legenda','3f');
INSERT INTO `wp_postmeta` VALUES (799,218,'acessos','4');
INSERT INTO `wp_postmeta` VALUES (800,218,'curtidas','a:1:{i:0;i:0;}');
INSERT INTO `wp_postmeta` VALUES (805,218,'img','219');
INSERT INTO `wp_postmeta` VALUES (806,220,'legenda','32423');
INSERT INTO `wp_postmeta` VALUES (807,220,'acessos','4');
INSERT INTO `wp_postmeta` VALUES (808,220,'curtidas','s:70:\"a:8:{i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:7;i:7;i:8;i:8;}\";');
INSERT INTO `wp_postmeta` VALUES (813,220,'img','221');
INSERT INTO `wp_postmeta` VALUES (814,220,'_edit_lock','1680739506:1');
INSERT INTO `wp_postmeta` VALUES (815,220,'curtidas','s:70:\"a:8:{i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:7;i:7;i:8;i:8;}\";');
INSERT INTO `wp_postmeta` VALUES (816,222,'legenda','asdfas');
INSERT INTO `wp_postmeta` VALUES (817,222,'acessos','4');
INSERT INTO `wp_postmeta` VALUES (818,222,'curtidas','s:70:\"a:8:{i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:7;i:7;i:8;i:8;}\";');
INSERT INTO `wp_postmeta` VALUES (823,222,'img','223');
INSERT INTO `wp_postmeta` VALUES (824,224,'legenda','asdf');
INSERT INTO `wp_postmeta` VALUES (825,224,'acessos','17');
INSERT INTO `wp_postmeta` VALUES (826,224,'curtidas','a:9:{i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:7;i:7;i:8;i:8;i:9;i:0;}');
INSERT INTO `wp_postmeta` VALUES (831,224,'img','225');
INSERT INTO `wp_postmeta` VALUES (832,224,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (833,224,'_wp_trash_meta_time','1680741034');
INSERT INTO `wp_postmeta` VALUES (834,224,'_wp_desired_post_slug','asdf');
INSERT INTO `wp_postmeta` VALUES (835,222,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (836,222,'_wp_trash_meta_time','1680741034');
INSERT INTO `wp_postmeta` VALUES (837,222,'_wp_desired_post_slug','asdfas');
INSERT INTO `wp_postmeta` VALUES (838,220,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (839,220,'_wp_trash_meta_time','1680741034');
INSERT INTO `wp_postmeta` VALUES (840,220,'_wp_desired_post_slug','32423-2');
INSERT INTO `wp_postmeta` VALUES (841,218,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (842,218,'_wp_trash_meta_time','1680741034');
INSERT INTO `wp_postmeta` VALUES (843,218,'_wp_desired_post_slug','3f');
INSERT INTO `wp_postmeta` VALUES (844,216,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (845,216,'_wp_trash_meta_time','1680741034');
INSERT INTO `wp_postmeta` VALUES (846,216,'_wp_desired_post_slug','454-2');
INSERT INTO `wp_postmeta` VALUES (847,213,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (848,213,'_wp_trash_meta_time','1680741034');
INSERT INTO `wp_postmeta` VALUES (849,213,'_wp_desired_post_slug','3-2');
INSERT INTO `wp_postmeta` VALUES (850,211,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (851,211,'_wp_trash_meta_time','1680741034');
INSERT INTO `wp_postmeta` VALUES (852,211,'_wp_desired_post_slug','32r23r');
INSERT INTO `wp_postmeta` VALUES (853,209,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (854,209,'_wp_trash_meta_time','1680741034');
INSERT INTO `wp_postmeta` VALUES (855,209,'_wp_desired_post_slug','3234r');
INSERT INTO `wp_postmeta` VALUES (856,207,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (857,207,'_wp_trash_meta_time','1680741034');
INSERT INTO `wp_postmeta` VALUES (858,207,'_wp_desired_post_slug','tax-2');
INSERT INTO `wp_postmeta` VALUES (859,205,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (860,205,'_wp_trash_meta_time','1680741034');
INSERT INTO `wp_postmeta` VALUES (861,205,'_wp_desired_post_slug','tax');
INSERT INTO `wp_postmeta` VALUES (862,203,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (863,203,'_wp_trash_meta_time','1680741034');
INSERT INTO `wp_postmeta` VALUES (864,203,'_wp_desired_post_slug','gfhdfgh');
INSERT INTO `wp_postmeta` VALUES (865,201,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (866,201,'_wp_trash_meta_time','1680741034');
INSERT INTO `wp_postmeta` VALUES (867,201,'_wp_desired_post_slug','fghjfgh');
INSERT INTO `wp_postmeta` VALUES (868,199,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (869,199,'_wp_trash_meta_time','1680741034');
INSERT INTO `wp_postmeta` VALUES (870,199,'_wp_desired_post_slug','ere');
INSERT INTO `wp_postmeta` VALUES (871,197,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (872,197,'_wp_trash_meta_time','1680741034');
INSERT INTO `wp_postmeta` VALUES (873,197,'_wp_desired_post_slug','nbvmn');
INSERT INTO `wp_postmeta` VALUES (874,194,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (875,194,'_wp_trash_meta_time','1680741034');
INSERT INTO `wp_postmeta` VALUES (876,194,'_wp_desired_post_slug','fghdfgh');
INSERT INTO `wp_postmeta` VALUES (877,191,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (878,191,'_wp_trash_meta_time','1680741034');
INSERT INTO `wp_postmeta` VALUES (879,191,'_wp_desired_post_slug','guepardo');
INSERT INTO `wp_postmeta` VALUES (880,114,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (881,114,'_wp_trash_meta_time','1680741034');
INSERT INTO `wp_postmeta` VALUES (882,114,'_wp_desired_post_slug','urso');
INSERT INTO `wp_postmeta` VALUES (883,111,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (884,111,'_wp_trash_meta_time','1680741034');
INSERT INTO `wp_postmeta` VALUES (885,111,'_wp_desired_post_slug','sol');
INSERT INTO `wp_postmeta` VALUES (886,111,'_wp_trash_meta_comments_status','a:3:{i:31;s:1:\"1\";i:32;s:1:\"1\";i:33;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES (887,108,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (888,108,'_wp_trash_meta_time','1680741034');
INSERT INTO `wp_postmeta` VALUES (889,108,'_wp_desired_post_slug','pedro-quadrado');
INSERT INTO `wp_postmeta` VALUES (890,108,'_wp_trash_meta_comments_status','a:19:{i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";i:7;s:1:\"1\";i:8;s:1:\"1\";i:9;s:1:\"1\";i:10;s:1:\"1\";i:11;s:1:\"1\";i:12;s:1:\"1\";i:15;s:1:\"1\";i:16;s:1:\"1\";i:17;s:1:\"1\";i:18;s:1:\"1\";i:19;s:1:\"1\";i:20;s:1:\"1\";i:21;s:1:\"1\";i:22;s:1:\"1\";i:25;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES (891,104,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (892,104,'_wp_trash_meta_time','1680741034');
INSERT INTO `wp_postmeta` VALUES (893,104,'_wp_desired_post_slug','casal');
INSERT INTO `wp_postmeta` VALUES (894,102,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (895,102,'_wp_trash_meta_time','1680741043');
INSERT INTO `wp_postmeta` VALUES (896,102,'_wp_desired_post_slug','selfie');
INSERT INTO `wp_postmeta` VALUES (897,102,'_wp_trash_meta_comments_status','a:3:{i:13;s:1:\"1\";i:14;s:1:\"1\";i:26;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES (898,100,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (899,100,'_wp_trash_meta_time','1680741043');
INSERT INTO `wp_postmeta` VALUES (900,100,'_wp_desired_post_slug','homem');
INSERT INTO `wp_postmeta` VALUES (901,92,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (902,92,'_wp_trash_meta_time','1680741043');
INSERT INTO `wp_postmeta` VALUES (903,92,'_wp_desired_post_slug','234-2');
INSERT INTO `wp_postmeta` VALUES (904,246,'legenda','1');
INSERT INTO `wp_postmeta` VALUES (905,246,'acessos','0');
INSERT INTO `wp_postmeta` VALUES (906,246,'curtidas','a:9:{i:0;i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:7;i:7;i:8;i:8;}');
INSERT INTO `wp_postmeta` VALUES (911,246,'img','247');
INSERT INTO `wp_postmeta` VALUES (912,248,'legenda','2');
INSERT INTO `wp_postmeta` VALUES (913,248,'acessos','0');
INSERT INTO `wp_postmeta` VALUES (914,248,'curtidas','a:9:{i:0;i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:7;i:7;i:8;i:8;}');
INSERT INTO `wp_postmeta` VALUES (919,248,'img','249');
INSERT INTO `wp_postmeta` VALUES (920,246,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (921,246,'_wp_trash_meta_time','1680741090');
INSERT INTO `wp_postmeta` VALUES (922,246,'_wp_desired_post_slug','1-2');
INSERT INTO `wp_postmeta` VALUES (923,248,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (924,248,'_wp_trash_meta_time','1680741096');
INSERT INTO `wp_postmeta` VALUES (925,248,'_wp_desired_post_slug','2-2');
INSERT INTO `wp_postmeta` VALUES (926,252,'legenda','1');
INSERT INTO `wp_postmeta` VALUES (927,252,'acessos','10');
INSERT INTO `wp_postmeta` VALUES (928,252,'curtidas','a:9:{i:0;i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:7;i:7;i:8;i:8;}');
INSERT INTO `wp_postmeta` VALUES (933,252,'img','253');
INSERT INTO `wp_postmeta` VALUES (934,254,'legenda','2');
INSERT INTO `wp_postmeta` VALUES (935,254,'acessos','14');
INSERT INTO `wp_postmeta` VALUES (936,254,'curtidas','a:9:{i:0;i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:7;i:7;i:8;i:8;}');
INSERT INTO `wp_postmeta` VALUES (941,254,'img','255');
INSERT INTO `wp_postmeta` VALUES (942,256,'legenda','3');
INSERT INTO `wp_postmeta` VALUES (943,256,'acessos','56');
INSERT INTO `wp_postmeta` VALUES (944,256,'curtidas','a:9:{i:0;i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:7;i:7;i:8;i:8;}');
INSERT INTO `wp_postmeta` VALUES (949,256,'img','257');
INSERT INTO `wp_postmeta` VALUES (950,258,'legenda','4');
INSERT INTO `wp_postmeta` VALUES (951,258,'acessos','14');
INSERT INTO `wp_postmeta` VALUES (952,258,'curtidas','a:9:{i:0;i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:7;i:7;i:8;i:8;}');
INSERT INTO `wp_postmeta` VALUES (957,258,'img','259');
INSERT INTO `wp_postmeta` VALUES (958,260,'legenda','23232');
INSERT INTO `wp_postmeta` VALUES (959,260,'acessos','18');
INSERT INTO `wp_postmeta` VALUES (960,260,'curtidas','0');
INSERT INTO `wp_postmeta` VALUES (961,260,'curtidasHidden','a:9:{i:0;i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:7;i:7;i:8;i:8;}');
INSERT INTO `wp_postmeta` VALUES (966,260,'img','261');
INSERT INTO `wp_postmeta` VALUES (967,258,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (968,258,'_wp_trash_meta_time','1680742231');
INSERT INTO `wp_postmeta` VALUES (969,258,'_wp_desired_post_slug','4-2');
INSERT INTO `wp_postmeta` VALUES (970,256,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (971,256,'_wp_trash_meta_time','1680742231');
INSERT INTO `wp_postmeta` VALUES (972,256,'_wp_desired_post_slug','3-2');
INSERT INTO `wp_postmeta` VALUES (973,254,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (974,254,'_wp_trash_meta_time','1680742231');
INSERT INTO `wp_postmeta` VALUES (975,254,'_wp_desired_post_slug','2-2');
INSERT INTO `wp_postmeta` VALUES (976,252,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (977,252,'_wp_trash_meta_time','1680742231');
INSERT INTO `wp_postmeta` VALUES (978,252,'_wp_desired_post_slug','1-2');
INSERT INTO `wp_postmeta` VALUES (988,268,'legenda','rgds');
INSERT INTO `wp_postmeta` VALUES (989,268,'acessos','0');
INSERT INTO `wp_postmeta` VALUES (990,268,'curtidas','a:9:{i:0;i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:7;i:7;i:8;i:8;}');
INSERT INTO `wp_postmeta` VALUES (995,268,'img','269');
INSERT INTO `wp_postmeta` VALUES (996,268,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (997,268,'_wp_trash_meta_time','1680787516');
INSERT INTO `wp_postmeta` VALUES (998,268,'_wp_desired_post_slug','rgds');
INSERT INTO `wp_postmeta` VALUES (999,260,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (1000,260,'_wp_trash_meta_time','1680787519');
INSERT INTO `wp_postmeta` VALUES (1001,260,'_wp_desired_post_slug','23232-2');
INSERT INTO `wp_postmeta` VALUES (1002,272,'legenda','4');
INSERT INTO `wp_postmeta` VALUES (1003,272,'acessos','0');
INSERT INTO `wp_postmeta` VALUES (1004,272,'curtidas','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1009,272,'img','273');
INSERT INTO `wp_postmeta` VALUES (1010,272,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (1011,272,'_wp_trash_meta_time','1680787594');
INSERT INTO `wp_postmeta` VALUES (1012,272,'_wp_desired_post_slug','4-2');
INSERT INTO `wp_postmeta` VALUES (1015,276,'legenda','j');
INSERT INTO `wp_postmeta` VALUES (1016,276,'acessos','0');
INSERT INTO `wp_postmeta` VALUES (1017,276,'curtidas','2');
INSERT INTO `wp_postmeta` VALUES (1022,276,'img','277');
INSERT INTO `wp_postmeta` VALUES (1023,276,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (1024,276,'_wp_trash_meta_time','1680787726');
INSERT INTO `wp_postmeta` VALUES (1025,276,'_wp_desired_post_slug','j');
INSERT INTO `wp_postmeta` VALUES (1026,279,'legenda','8');
INSERT INTO `wp_postmeta` VALUES (1027,279,'acessos','2');
INSERT INTO `wp_postmeta` VALUES (1028,279,'curtidas','2');
INSERT INTO `wp_postmeta` VALUES (1033,279,'img','280');
INSERT INTO `wp_postmeta` VALUES (1034,279,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (1035,279,'_wp_trash_meta_time','1680788321');
INSERT INTO `wp_postmeta` VALUES (1036,279,'_wp_desired_post_slug','8-2');
INSERT INTO `wp_postmeta` VALUES (1037,282,'legenda','q1');
INSERT INTO `wp_postmeta` VALUES (1038,282,'acessos','2');
INSERT INTO `wp_postmeta` VALUES (1039,282,'curtidas','0');
INSERT INTO `wp_postmeta` VALUES (1042,283,'_wp_attached_file','2023/04/433566-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (1043,283,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:25:\"2023/04/433566-scaled.jpg\";s:8:\"filesize\";i:779954;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"433566-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14987;}s:5:\"large\";a:5:{s:4:\"file\";s:20:\"433566-1000x1000.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:220774;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"433566-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7364;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"433566-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:78593;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:20:\"433566-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:296500;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:20:\"433566-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:514906;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:18:\"Tambako the Jaguar\";s:6:\"camera\";s:10:\"NIKON D700\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1333194718\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"400\";s:3:\"iso\";s:3:\"250\";s:13:\"shutter_speed\";s:6:\"0.0025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:10:\"433566.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (1044,282,'img','283');
INSERT INTO `wp_postmeta` VALUES (1045,284,'legenda','1');
INSERT INTO `wp_postmeta` VALUES (1046,284,'acessos','2');
INSERT INTO `wp_postmeta` VALUES (1047,284,'curtidas','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1050,285,'_wp_attached_file','2023/04/433566-1-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (1051,285,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:27:\"2023/04/433566-1-scaled.jpg\";s:8:\"filesize\";i:779954;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"433566-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14987;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"433566-1-1000x1000.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:220774;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"433566-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7364;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"433566-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:78593;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"433566-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:296500;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:22:\"433566-1-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:514906;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:18:\"Tambako the Jaguar\";s:6:\"camera\";s:10:\"NIKON D700\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1333194718\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"400\";s:3:\"iso\";s:3:\"250\";s:13:\"shutter_speed\";s:6:\"0.0025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"433566-1.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (1052,284,'img','285');
INSERT INTO `wp_postmeta` VALUES (1053,282,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (1054,282,'_wp_trash_meta_time','1680788538');
INSERT INTO `wp_postmeta` VALUES (1055,282,'_wp_desired_post_slug','q1');
INSERT INTO `wp_postmeta` VALUES (1056,287,'legenda','5');
INSERT INTO `wp_postmeta` VALUES (1057,287,'acessos','13');
INSERT INTO `wp_postmeta` VALUES (1058,287,'curtidas','a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}');
INSERT INTO `wp_postmeta` VALUES (1061,288,'_wp_attached_file','2023/04/433566-2-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (1062,288,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:27:\"2023/04/433566-2-scaled.jpg\";s:8:\"filesize\";i:779954;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"433566-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14987;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"433566-2-1000x1000.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:220774;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"433566-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7364;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"433566-2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:78593;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"433566-2-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:296500;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:22:\"433566-2-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:514906;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:18:\"Tambako the Jaguar\";s:6:\"camera\";s:10:\"NIKON D700\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1333194718\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"400\";s:3:\"iso\";s:3:\"250\";s:13:\"shutter_speed\";s:6:\"0.0025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"433566-2.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (1063,287,'img','288');
INSERT INTO `wp_postmeta` VALUES (1064,287,'_edit_lock','1680788642:1');
INSERT INTO `wp_postmeta` VALUES (1065,284,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (1066,284,'_wp_trash_meta_time','1680789687');
INSERT INTO `wp_postmeta` VALUES (1067,284,'_wp_desired_post_slug','1-2');
INSERT INTO `wp_postmeta` VALUES (1068,287,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (1069,287,'_wp_trash_meta_time','1680789687');
INSERT INTO `wp_postmeta` VALUES (1070,287,'_wp_desired_post_slug','5-2');
INSERT INTO `wp_postmeta` VALUES (1071,291,'_wp_attached_file','2023/04/433566-3-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (1072,291,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:27:\"2023/04/433566-3-scaled.jpg\";s:8:\"filesize\";i:779954;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"433566-3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14987;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"433566-3-1000x1000.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:220774;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"433566-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7364;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"433566-3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:78593;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"433566-3-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:296500;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:22:\"433566-3-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:514906;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:18:\"Tambako the Jaguar\";s:6:\"camera\";s:10:\"NIKON D700\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1333194718\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"400\";s:3:\"iso\";s:3:\"250\";s:13:\"shutter_speed\";s:6:\"0.0025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"433566-3.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (1139,306,'legenda','546');
INSERT INTO `wp_postmeta` VALUES (1140,306,'acessos','0');
INSERT INTO `wp_postmeta` VALUES (1141,306,'curtidas','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1142,306,'totalCurtidas','0');
INSERT INTO `wp_postmeta` VALUES (1145,306,'img','O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:12:\"upload_error\";a:1:{i:0;s:52:\"Sorry, you are not allowed to upload this file type.\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}');
INSERT INTO `wp_postmeta` VALUES (1155,306,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (1156,306,'_wp_trash_meta_time','1681241220');
INSERT INTO `wp_postmeta` VALUES (1157,306,'_wp_desired_post_slug','546-2');
INSERT INTO `wp_postmeta` VALUES (1167,312,'legenda','cavalo');
INSERT INTO `wp_postmeta` VALUES (1168,312,'acessos','15');
INSERT INTO `wp_postmeta` VALUES (1169,312,'curtidas','a:2:{i:0;i:16;i:1;i:2;}');
INSERT INTO `wp_postmeta` VALUES (1170,312,'totalCurtidas','2');
INSERT INTO `wp_postmeta` VALUES (1173,313,'_wp_attached_file','2023/04/347516-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (1174,313,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1610;s:4:\"file\";s:25:\"2023/04/347516-scaled.jpg\";s:8:\"filesize\";i:528441;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"347516-300x189.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:189;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11767;}s:5:\"large\";a:5:{s:4:\"file\";s:20:\"347516-1000x1000.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:158785;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"347516-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6175;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"347516-768x483.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:483;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:60978;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:19:\"347516-1536x966.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:966;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:213541;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:20:\"347516-2048x1288.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1288;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:356806;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:10:\"347516.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (1175,312,'img','313');
INSERT INTO `wp_postmeta` VALUES (1185,316,'legenda','felino');
INSERT INTO `wp_postmeta` VALUES (1186,316,'acessos','70');
INSERT INTO `wp_postmeta` VALUES (1187,316,'curtidas','a:2:{i:0;i:16;i:1;i:2;}');
INSERT INTO `wp_postmeta` VALUES (1188,316,'totalCurtidas','2');
INSERT INTO `wp_postmeta` VALUES (1191,317,'_wp_attached_file','2023/04/598768-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (1192,317,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:25:\"2023/04/598768-scaled.jpg\";s:8:\"filesize\";i:530557;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"598768-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16226;}s:5:\"large\";a:5:{s:4:\"file\";s:20:\"598768-1000x1000.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:206908;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"598768-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9173;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"598768-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:77095;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:19:\"598768-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:235800;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:20:\"598768-2048x1152.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:371044;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:10:\"598768.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (1193,316,'img','317');
INSERT INTO `wp_postmeta` VALUES (1194,318,'legenda','urso');
INSERT INTO `wp_postmeta` VALUES (1195,318,'acessos','29');
INSERT INTO `wp_postmeta` VALUES (1196,318,'curtidas','a:1:{i:0;i:2;}');
INSERT INTO `wp_postmeta` VALUES (1197,318,'totalCurtidas','1');
INSERT INTO `wp_postmeta` VALUES (1200,319,'_wp_attached_file','2023/04/871898-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (1201,319,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:25:\"2023/04/871898-scaled.jpg\";s:8:\"filesize\";i:705276;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"871898-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21472;}s:5:\"large\";a:5:{s:4:\"file\";s:20:\"871898-1000x1000.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:207056;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"871898-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9100;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"871898-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:100318;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:20:\"871898-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:309279;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:20:\"871898-2048x1366.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1366;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:492972;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:10:\"871898.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (1202,318,'img','319');
INSERT INTO `wp_postmeta` VALUES (1212,323,'legenda','cachorro');
INSERT INTO `wp_postmeta` VALUES (1213,323,'acessos','3');
INSERT INTO `wp_postmeta` VALUES (1214,323,'curtidas','a:1:{i:0;i:2;}');
INSERT INTO `wp_postmeta` VALUES (1215,323,'totalCurtidas','1');
INSERT INTO `wp_postmeta` VALUES (1218,324,'_wp_attached_file','2023/04/media_142f9cf5285c2cdcda8375c1041d273a3f0383e5f.png');
INSERT INTO `wp_postmeta` VALUES (1219,324,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:651;s:6:\"height\";i:502;s:4:\"file\";s:59:\"2023/04/media_142f9cf5285c2cdcda8375c1041d273a3f0383e5f.png\";s:8:\"filesize\";i:478537;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:59:\"media_142f9cf5285c2cdcda8375c1041d273a3f0383e5f-300x231.png\";s:5:\"width\";i:300;s:6:\"height\";i:231;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:113562;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:59:\"media_142f9cf5285c2cdcda8375c1041d273a3f0383e5f-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:46026;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1220,323,'img','324');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=325 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2023-03-27 18:55:22','2023-03-27 18:55:22','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','trash','open','open','','hello-world__trashed','','','2023-03-27 20:16:47','2023-03-27 20:16:47','',0,'http://myfriends.test/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2023-03-27 18:55:22','2023-03-27 18:55:22','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://myfriends.test/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2023-03-27 18:55:22','2023-03-27 18:55:22','',0,'http://myfriends.test/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2023-03-27 18:55:22','2023-03-27 18:55:22','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://myfriends.test.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2023-03-27 18:55:22','2023-03-27 18:55:22','',0,'http://myfriends.test/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2023-03-27 20:16:47','2023-03-27 20:16:47','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2023-03-27 20:16:47','2023-03-27 20:16:47','',1,'http://myfriends.test/?p=6',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2023-03-28 19:03:33','2023-03-28 19:03:33','','test','','trash','open','open','','test__trashed','','','2023-03-31 21:10:11','2023-03-31 21:10:11','',0,'http://myfriends.test/?p=39',0,'post','',1);
INSERT INTO `wp_posts` VALUES (41,1,'2023-03-28 19:03:33','2023-03-28 19:03:33','','test','','inherit','closed','closed','','39-revision-v1','','','2023-03-28 19:03:33','2023-03-28 19:03:33','',39,'http://myfriends.test/?p=41',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2023-03-28 19:49:09','2023-03-28 19:49:09','<!-- wp:image {\"id\":44,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://myfriends.test/wp-content/uploads/2023/03/Capture-3-768x758-1.png\" alt=\"\" class=\"wp-image-44\"/></figure>\n<!-- /wp:image -->','','','trash','open','open','','42-2__trashed','','','2023-03-31 21:10:10','2023-03-31 21:10:10','',0,'http://myfriends.test/?p=42',0,'post','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2023-03-28 19:49:09','2023-03-28 19:49:09','<!-- wp:image {\"id\":44,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://myfriends.test/wp-content/uploads/2023/03/Capture-3-768x758-1.png\" alt=\"\" class=\"wp-image-44\"/></figure>\n<!-- /wp:image -->','','','inherit','closed','closed','','42-revision-v1','','','2023-03-28 19:49:09','2023-03-28 19:49:09','',42,'http://myfriends.test/?p=45',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (46,2,'2023-03-28 19:52:45','2023-03-28 19:52:45','Esse é um teste de legenda','Esse é um teste de legenda','','trash','open','open','','esse-e-um-teste-de-legenda__trashed','','','2023-03-31 21:10:09','2023-03-31 21:10:09','',0,'http://myfriends.test/esse-e-um-teste-de-legenda/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (48,5,'2023-03-28 21:56:50','2023-03-28 21:56:50','Maicon','Maicon','','trash','open','open','','maicon__trashed','','','2023-03-31 21:10:08','2023-03-31 21:10:08','',0,'http://myfriends.test/maicon/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (50,2,'2023-03-31 21:01:05','2023-03-31 21:01:05','t','t','','trash','open','open','','t__trashed','','','2023-03-31 21:10:06','2023-03-31 21:10:06','',0,'http://myfriends.test/t/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2023-03-31 21:10:06','2023-03-31 21:10:06','t','t','','inherit','closed','closed','','50-revision-v1','','','2023-03-31 21:10:06','2023-03-31 21:10:06','',50,'http://myfriends.test/?p=52',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2023-03-31 21:10:08','2023-03-31 21:10:08','Maicon','Maicon','','inherit','closed','closed','','48-revision-v1','','','2023-03-31 21:10:08','2023-03-31 21:10:08','',48,'http://myfriends.test/?p=53',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2023-03-31 21:10:09','2023-03-31 21:10:09','Esse é um teste de legenda','Esse é um teste de legenda','','inherit','closed','closed','','46-revision-v1','','','2023-03-31 21:10:09','2023-03-31 21:10:09','',46,'http://myfriends.test/?p=54',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (55,2,'2023-03-31 21:10:34','2023-03-31 21:10:34','t','t','','trash','open','open','','t__trashed-2','','','2023-04-03 19:22:46','2023-04-03 19:22:46','',0,'http://myfriends.test/t/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (57,15,'2023-04-02 16:57:22','2023-04-02 16:57:22','Fotografa','Fotografa','','trash','open','open','','fotografa__trashed','','','2023-04-03 00:47:56','2023-04-03 00:47:56','',0,'http://myfriends.test/fotografa/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (59,15,'2023-04-02 16:57:36','2023-04-02 16:57:36','Fotografa','Fotografa','','trash','open','open','','fotografa-2__trashed','','','2023-04-03 00:47:55','2023-04-03 00:47:55','',0,'http://myfriends.test/fotografa-2/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2023-04-03 00:47:55','2023-04-03 00:47:55','Fotografa','Fotografa','','inherit','closed','closed','','59-revision-v1','','','2023-04-03 00:47:55','2023-04-03 00:47:55','',59,'http://myfriends.test/?p=61',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2023-04-03 00:47:56','2023-04-03 00:47:56','Fotografa','Fotografa','','inherit','closed','closed','','57-revision-v1','','','2023-04-03 00:47:56','2023-04-03 00:47:56','',57,'http://myfriends.test/?p=62',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (63,2,'2023-04-03 00:48:02','2023-04-03 00:48:02','21341234','21341234','','trash','open','open','','21341234-2__trashed','','','2023-04-03 02:33:36','2023-04-03 02:33:36','',0,'http://myfriends.test/21341234-2/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (64,2,'2023-04-03 00:48:08','2023-04-03 00:48:08','test','test','','trash','open','open','','test__trashed-2','','','2023-04-03 02:33:34','2023-04-03 02:33:34','',0,'http://myfriends.test/test/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (65,2,'2023-04-03 00:48:19','2023-04-03 00:48:19','1234','1234','','trash','open','open','','1234-2__trashed','','','2023-04-03 02:33:31','2023-04-03 02:33:31','',0,'http://myfriends.test/1234-2/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (66,2,'2023-04-03 00:49:08','2023-04-03 00:49:08','selfie','selfie','','trash','open','open','','selfie__trashed','','','2023-04-03 02:33:24','2023-04-03 02:33:24','',0,'http://myfriends.test/selfie/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2023-04-03 02:33:24','2023-04-03 02:33:24','selfie','selfie','','inherit','closed','closed','','66-revision-v1','','','2023-04-03 02:33:24','2023-04-03 02:33:24','',66,'http://myfriends.test/?p=67',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2023-04-03 02:33:31','2023-04-03 02:33:31','1234','1234','','inherit','closed','closed','','65-revision-v1','','','2023-04-03 02:33:31','2023-04-03 02:33:31','',65,'http://myfriends.test/?p=68',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2023-04-03 02:33:34','2023-04-03 02:33:34','test','test','','inherit','closed','closed','','64-revision-v1','','','2023-04-03 02:33:34','2023-04-03 02:33:34','',64,'http://myfriends.test/?p=69',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2023-04-03 02:33:36','2023-04-03 02:33:36','21341234','21341234','','inherit','closed','closed','','63-revision-v1','','','2023-04-03 02:33:36','2023-04-03 02:33:36','',63,'http://myfriends.test/?p=70',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (71,2,'2023-04-03 02:34:29','2023-04-03 02:34:29','teste selfie','teste selfie','','trash','open','open','','teste-selfie__trashed','','','2023-04-03 02:39:39','2023-04-03 02:39:39','',0,'http://myfriends.test/teste-selfie/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (72,2,'2023-04-03 02:34:45','2023-04-03 02:34:45','teste selfie','teste selfie','','trash','open','open','','teste-selfie-2__trashed','','','2023-04-03 02:35:06','2023-04-03 02:35:06','',0,'http://myfriends.test/teste-selfie-2/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2023-04-03 02:35:06','2023-04-03 02:35:06','teste selfie','teste selfie','','inherit','closed','closed','','72-revision-v1','','','2023-04-03 02:35:06','2023-04-03 02:35:06','',72,'http://myfriends.test/?p=73',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (74,2,'2023-04-03 02:35:59','2023-04-03 02:35:59','test','test','','trash','open','open','','test__trashed-3','','','2023-04-03 02:39:33','2023-04-03 02:39:33','',0,'http://myfriends.test/test/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (75,2,'2023-04-03 02:38:38','2023-04-03 02:38:38','t','t','','trash','open','open','','t-2__trashed','','','2023-04-03 02:39:36','2023-04-03 02:39:36','',0,'http://myfriends.test/t-2/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (77,2,'2023-04-03 02:39:08','2023-04-03 02:39:08','japones','japones','','trash','open','open','','japones__trashed','','','2023-04-03 19:23:12','2023-04-03 19:23:12','',0,'http://myfriends.test/japones/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2023-04-03 02:39:33','2023-04-03 02:39:33','test','test','','inherit','closed','closed','','74-revision-v1','','','2023-04-03 02:39:33','2023-04-03 02:39:33','',74,'http://myfriends.test/?p=79',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2023-04-03 02:39:36','2023-04-03 02:39:36','t','t','','inherit','closed','closed','','75-revision-v1','','','2023-04-03 02:39:36','2023-04-03 02:39:36','',75,'http://myfriends.test/?p=80',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2023-04-03 02:39:39','2023-04-03 02:39:39','teste selfie','teste selfie','','inherit','closed','closed','','71-revision-v1','','','2023-04-03 02:39:39','2023-04-03 02:39:39','',71,'http://myfriends.test/?p=81',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (82,16,'2023-04-03 02:40:30','2023-04-03 02:40:30','gato','gato','','trash','open','open','','gato__trashed','','','2023-04-03 18:17:36','2023-04-03 18:17:36','',0,'http://myfriends.test/gato/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2023-04-03 18:17:36','2023-04-03 18:17:36','gato','gato','','inherit','closed','closed','','82-revision-v1','','','2023-04-03 18:17:36','2023-04-03 18:17:36','',82,'http://myfriends.test/?p=84',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (85,2,'2023-04-03 19:17:53','2023-04-03 19:17:53','test quadrado','test quadrado','','trash','open','open','','test-quadrado__trashed','','','2023-04-03 19:22:32','2023-04-03 19:22:32','',0,'http://myfriends.test/test-quadrado/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (86,2,'2023-04-03 19:18:14','2023-04-03 19:18:14','wertw','wertw','','trash','open','open','','wertw__trashed','','','2023-04-03 19:22:35','2023-04-03 19:22:35','',0,'http://myfriends.test/wertw/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (87,2,'2023-04-03 19:19:18','2023-04-03 19:19:18','tzdfsd','tzdfsd','','trash','open','open','','tzdfsd__trashed','','','2023-04-03 19:22:55','2023-04-03 19:22:55','',0,'http://myfriends.test/tzdfsd/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (90,2,'2023-04-03 19:21:07','2023-04-03 19:21:07','asfasf','asfasf','','trash','open','open','','asfasf__trashed','','','2023-04-03 19:22:55','2023-04-03 19:22:55','',0,'http://myfriends.test/asfasf/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (92,2,'2023-04-03 19:21:56','2023-04-03 19:21:56','234','234','','trash','open','open','','234-2__trashed','','','2023-04-06 00:30:43','2023-04-06 00:30:43','',0,'http://myfriends.test/234-2/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2023-04-03 19:22:32','2023-04-03 19:22:32','test quadrado','test quadrado','','inherit','closed','closed','','85-revision-v1','','','2023-04-03 19:22:32','2023-04-03 19:22:32','',85,'http://myfriends.test/?p=94',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2023-04-03 19:22:35','2023-04-03 19:22:35','wertw','wertw','','inherit','closed','closed','','86-revision-v1','','','2023-04-03 19:22:35','2023-04-03 19:22:35','',86,'http://myfriends.test/?p=95',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2023-04-03 19:22:46','2023-04-03 19:22:46','t','t','','inherit','closed','closed','','55-revision-v1','','','2023-04-03 19:22:46','2023-04-03 19:22:46','',55,'http://myfriends.test/?p=96',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2023-04-03 19:22:55','2023-04-03 19:22:55','asfasf','asfasf','','inherit','closed','closed','','90-revision-v1','','','2023-04-03 19:22:55','2023-04-03 19:22:55','',90,'http://myfriends.test/?p=97',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2023-04-03 19:22:55','2023-04-03 19:22:55','tzdfsd','tzdfsd','','inherit','closed','closed','','87-revision-v1','','','2023-04-03 19:22:55','2023-04-03 19:22:55','',87,'http://myfriends.test/?p=98',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2023-04-03 19:23:12','2023-04-03 19:23:12','japones','japones','','inherit','closed','closed','','77-revision-v1','','','2023-04-03 19:23:12','2023-04-03 19:23:12','',77,'http://myfriends.test/?p=99',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (100,2,'2023-04-03 19:23:54','2023-04-03 19:23:54','homem','homem','','trash','open','open','','homem__trashed','','','2023-04-06 00:30:43','2023-04-06 00:30:43','',0,'http://myfriends.test/homem/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (102,2,'2023-04-03 19:24:03','2023-04-03 19:24:03','selfie','selfie','','trash','open','open','','selfie__trashed-2','','','2023-04-06 00:30:43','2023-04-06 00:30:43','',0,'http://myfriends.test/selfie/',0,'post','',3);
INSERT INTO `wp_posts` VALUES (104,2,'2023-04-03 19:24:13','2023-04-03 19:24:13','casal','casal','','trash','open','open','','casal__trashed','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',0,'http://myfriends.test/casal/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (108,2,'2023-04-03 19:25:58','2023-04-03 19:25:58','pedro quadrado','pedro quadrado','','trash','open','open','','pedro-quadrado__trashed','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',0,'http://myfriends.test/pedro-quadrado/',0,'post','',19);
INSERT INTO `wp_posts` VALUES (110,1,'2023-04-03 19:48:54','2023-04-03 19:48:54','homem','homem','','inherit','closed','closed','','100-revision-v1','','','2023-04-03 19:48:54','2023-04-03 19:48:54','',100,'http://myfriends.test/?p=110',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (111,15,'2023-04-04 02:08:17','2023-04-04 02:08:17','sol','sol','','trash','open','open','','sol__trashed','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',0,'http://myfriends.test/sol/',0,'post','',3);
INSERT INTO `wp_posts` VALUES (114,18,'2023-04-05 02:10:34','2023-04-05 02:10:34','urso','urso','','trash','open','open','','urso__trashed','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',0,'http://myfriends.test/urso/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (116,1,'2023-04-05 21:27:17','2023-04-05 21:27:17','urso','urso','','inherit','closed','closed','','114-revision-v1','','','2023-04-05 21:27:17','2023-04-05 21:27:17','',114,'http://myfriends.test/?p=116',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (131,1,'2023-04-05 22:03:01','2023-04-05 22:03:01','','34234','','trash','open','open','','34234-2__trashed','','','2023-04-05 22:05:37','2023-04-05 22:05:37','',0,'http://myfriends.test/?p=131',0,'post','',0);
INSERT INTO `wp_posts` VALUES (133,1,'2023-04-05 22:03:01','2023-04-05 22:03:01','','34234','','inherit','closed','closed','','131-revision-v1','','','2023-04-05 22:03:01','2023-04-05 22:03:01','',131,'http://myfriends.test/?p=133',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (140,18,'2023-04-05 22:09:50','2023-04-05 22:09:50','4','4','','trash','open','open','','4-2__trashed','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',0,'http://myfriends.test/4-2/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (142,18,'2023-04-05 22:10:20','2023-04-05 22:10:20','f','f','','trash','open','open','','f__trashed','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',0,'http://myfriends.test/f/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (144,18,'2023-04-05 22:12:48','2023-04-05 22:12:48','6','6','','trash','open','open','','6-2__trashed','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',0,'http://myfriends.test/6-2/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (146,18,'2023-04-05 22:14:27','2023-04-05 22:14:27','4','4','','trash','open','open','','4-3__trashed','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',0,'http://myfriends.test/4-3/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (148,18,'2023-04-05 22:15:31','2023-04-05 22:15:31','6','6','','trash','open','open','','6-3__trashed','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',0,'http://myfriends.test/6-3/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (150,18,'2023-04-05 22:15:53','2023-04-05 22:15:53','555','555','','trash','open','open','','555-2__trashed','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',0,'http://myfriends.test/555-2/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (152,18,'2023-04-05 22:16:11','2023-04-05 22:16:11','sdfs','sdfs','','trash','open','open','','sdfs__trashed','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',0,'http://myfriends.test/sdfs/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (154,18,'2023-04-05 22:17:24','2023-04-05 22:17:24','g','g','','trash','open','open','','g__trashed','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',0,'http://myfriends.test/g/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (156,18,'2023-04-05 22:18:47','2023-04-05 22:18:47','ff','ff','','trash','open','open','','ff__trashed','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',0,'http://myfriends.test/ff/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (158,18,'2023-04-05 22:19:11','2023-04-05 22:19:11','j','j','','trash','open','open','','j__trashed','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',0,'http://myfriends.test/j/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (160,18,'2023-04-05 22:20:11','2023-04-05 22:20:11','hhhhhh','hhhhhh','','trash','open','open','','hhhhhh__trashed','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',0,'http://myfriends.test/hhhhhh/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (162,18,'2023-04-05 22:23:14','2023-04-05 22:23:14','b','b','','trash','open','open','','b__trashed','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',0,'http://myfriends.test/b/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (164,18,'2023-04-05 22:24:14','2023-04-05 22:24:14','66','66','','trash','open','open','','66-2__trashed','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',0,'http://myfriends.test/66-2/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (166,18,'2023-04-05 22:24:46','2023-04-05 22:24:46','fg','fg','','trash','open','open','','fg__trashed','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',0,'http://myfriends.test/fg/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (168,18,'2023-04-05 22:25:25','2023-04-05 22:25:25','hgfh','hgfh','','trash','open','open','','hgfh__trashed','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',0,'http://myfriends.test/hgfh/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (170,18,'2023-04-05 22:25:50','2023-04-05 22:25:50','gfhjfghj','gfhjfghj','','trash','open','open','','gfhjfghj__trashed','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',0,'http://myfriends.test/gfhjfghj/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (172,18,'2023-04-05 22:26:22','2023-04-05 22:26:22','dfgsdf','dfgsdf','','trash','open','open','','dfgsdf__trashed','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',0,'http://myfriends.test/dfgsdf/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (174,1,'2023-04-05 22:27:02','2023-04-05 22:27:02','dfgsdf','dfgsdf','','inherit','closed','closed','','172-revision-v1','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',172,'http://myfriends.test/?p=174',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (175,1,'2023-04-05 22:27:02','2023-04-05 22:27:02','gfhjfghj','gfhjfghj','','inherit','closed','closed','','170-revision-v1','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',170,'http://myfriends.test/?p=175',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (176,1,'2023-04-05 22:27:02','2023-04-05 22:27:02','hgfh','hgfh','','inherit','closed','closed','','168-revision-v1','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',168,'http://myfriends.test/?p=176',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (177,1,'2023-04-05 22:27:02','2023-04-05 22:27:02','fg','fg','','inherit','closed','closed','','166-revision-v1','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',166,'http://myfriends.test/?p=177',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (178,1,'2023-04-05 22:27:02','2023-04-05 22:27:02','66','66','','inherit','closed','closed','','164-revision-v1','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',164,'http://myfriends.test/?p=178',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (179,1,'2023-04-05 22:27:02','2023-04-05 22:27:02','b','b','','inherit','closed','closed','','162-revision-v1','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',162,'http://myfriends.test/?p=179',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (180,1,'2023-04-05 22:27:02','2023-04-05 22:27:02','hhhhhh','hhhhhh','','inherit','closed','closed','','160-revision-v1','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',160,'http://myfriends.test/?p=180',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (181,1,'2023-04-05 22:27:02','2023-04-05 22:27:02','j','j','','inherit','closed','closed','','158-revision-v1','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',158,'http://myfriends.test/?p=181',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (182,1,'2023-04-05 22:27:02','2023-04-05 22:27:02','ff','ff','','inherit','closed','closed','','156-revision-v1','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',156,'http://myfriends.test/?p=182',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (183,1,'2023-04-05 22:27:02','2023-04-05 22:27:02','g','g','','inherit','closed','closed','','154-revision-v1','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',154,'http://myfriends.test/?p=183',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (184,1,'2023-04-05 22:27:02','2023-04-05 22:27:02','sdfs','sdfs','','inherit','closed','closed','','152-revision-v1','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',152,'http://myfriends.test/?p=184',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (185,1,'2023-04-05 22:27:02','2023-04-05 22:27:02','555','555','','inherit','closed','closed','','150-revision-v1','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',150,'http://myfriends.test/?p=185',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (186,1,'2023-04-05 22:27:02','2023-04-05 22:27:02','6','6','','inherit','closed','closed','','148-revision-v1','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',148,'http://myfriends.test/?p=186',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (187,1,'2023-04-05 22:27:02','2023-04-05 22:27:02','4','4','','inherit','closed','closed','','146-revision-v1','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',146,'http://myfriends.test/?p=187',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (188,1,'2023-04-05 22:27:02','2023-04-05 22:27:02','6','6','','inherit','closed','closed','','144-revision-v1','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',144,'http://myfriends.test/?p=188',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (189,1,'2023-04-05 22:27:02','2023-04-05 22:27:02','f','f','','inherit','closed','closed','','142-revision-v1','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',142,'http://myfriends.test/?p=189',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (190,1,'2023-04-05 22:27:02','2023-04-05 22:27:02','4','4','','inherit','closed','closed','','140-revision-v1','','','2023-04-05 22:27:02','2023-04-05 22:27:02','',140,'http://myfriends.test/?p=190',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (191,18,'2023-04-05 22:29:06','2023-04-05 22:29:06','Guepardo','Guepardo','','trash','open','open','','guepardo__trashed','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',0,'http://myfriends.test/guepardo/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (194,18,'2023-04-05 22:30:36','2023-04-05 22:30:36','fghdfgh','fghdfgh','','trash','open','open','','fghdfgh__trashed','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',0,'http://myfriends.test/fghdfgh/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (197,18,'2023-04-05 22:31:46','2023-04-05 22:31:46','nbvmn','nbvmn','','trash','open','open','','nbvmn__trashed','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',0,'http://myfriends.test/nbvmn/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (199,18,'2023-04-05 22:35:09','2023-04-05 22:35:09','ere','ere','','trash','open','open','','ere__trashed','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',0,'http://myfriends.test/ere/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (201,18,'2023-04-05 22:35:53','2023-04-05 22:35:53','fghjfgh','fghjfgh','','trash','open','open','','fghjfgh__trashed','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',0,'http://myfriends.test/fghjfgh/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (203,18,'2023-04-05 22:37:35','2023-04-05 22:37:35','gfhdfgh','gfhdfgh','','trash','open','open','','gfhdfgh__trashed','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',0,'http://myfriends.test/gfhdfgh/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (205,18,'2023-04-05 22:40:26','2023-04-05 22:40:26','tax','tax','','trash','open','open','','tax__trashed','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',0,'http://myfriends.test/tax/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (207,18,'2023-04-05 22:41:21','2023-04-05 22:41:21','tax','tax','','trash','open','open','','tax-2__trashed','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',0,'http://myfriends.test/tax-2/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (209,18,'2023-04-05 22:44:15','2023-04-05 22:44:15','3234r','3234r','','trash','open','open','','3234r__trashed','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',0,'http://myfriends.test/3234r/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (211,18,'2023-04-05 22:46:17','2023-04-05 22:46:17','32r23r','32r23r','','trash','open','open','','32r23r__trashed','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',0,'http://myfriends.test/32r23r/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (213,18,'2023-04-05 22:47:51','2023-04-05 22:47:51','3','3','','trash','open','open','','3-2__trashed','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',0,'http://myfriends.test/3-2/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (215,1,'2023-04-05 23:33:08','2023-04-05 23:33:08','3','3','','inherit','closed','closed','','213-revision-v1','','','2023-04-05 23:33:08','2023-04-05 23:33:08','',213,'http://myfriends.test/?p=215',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (216,18,'2023-04-05 23:34:21','2023-04-05 23:34:21','454','454','','trash','open','open','','454-2__trashed','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',0,'http://myfriends.test/454-2/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (218,18,'2023-04-05 23:59:54','2023-04-05 23:59:54','3f','3f','','trash','open','open','','3f__trashed','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',0,'http://myfriends.test/3f/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (220,18,'2023-04-06 00:07:00','2023-04-06 00:07:00','32423','32423','','trash','open','open','','32423-2__trashed','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',0,'http://myfriends.test/32423-2/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (222,18,'2023-04-06 00:10:33','2023-04-06 00:10:33','asdfas','asdfas','','trash','open','open','','asdfas__trashed','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',0,'http://myfriends.test/asdfas/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (224,18,'2023-04-06 00:12:08','2023-04-06 00:12:08','asdf','asdf','','trash','open','open','','asdf__trashed','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',0,'http://myfriends.test/asdf/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (226,1,'2023-04-06 00:30:34','2023-04-06 00:30:34','asdf','asdf','','inherit','closed','closed','','224-revision-v1','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',224,'http://myfriends.test/?p=226',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (227,1,'2023-04-06 00:30:34','2023-04-06 00:30:34','asdfas','asdfas','','inherit','closed','closed','','222-revision-v1','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',222,'http://myfriends.test/?p=227',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (228,1,'2023-04-06 00:30:34','2023-04-06 00:30:34','32423','32423','','inherit','closed','closed','','220-revision-v1','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',220,'http://myfriends.test/?p=228',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (229,1,'2023-04-06 00:30:34','2023-04-06 00:30:34','3f','3f','','inherit','closed','closed','','218-revision-v1','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',218,'http://myfriends.test/?p=229',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (230,1,'2023-04-06 00:30:34','2023-04-06 00:30:34','454','454','','inherit','closed','closed','','216-revision-v1','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',216,'http://myfriends.test/?p=230',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (231,1,'2023-04-06 00:30:34','2023-04-06 00:30:34','32r23r','32r23r','','inherit','closed','closed','','211-revision-v1','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',211,'http://myfriends.test/?p=231',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (232,1,'2023-04-06 00:30:34','2023-04-06 00:30:34','3234r','3234r','','inherit','closed','closed','','209-revision-v1','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',209,'http://myfriends.test/?p=232',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (233,1,'2023-04-06 00:30:34','2023-04-06 00:30:34','tax','tax','','inherit','closed','closed','','207-revision-v1','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',207,'http://myfriends.test/?p=233',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (234,1,'2023-04-06 00:30:34','2023-04-06 00:30:34','tax','tax','','inherit','closed','closed','','205-revision-v1','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',205,'http://myfriends.test/?p=234',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (235,1,'2023-04-06 00:30:34','2023-04-06 00:30:34','gfhdfgh','gfhdfgh','','inherit','closed','closed','','203-revision-v1','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',203,'http://myfriends.test/?p=235',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (236,1,'2023-04-06 00:30:34','2023-04-06 00:30:34','fghjfgh','fghjfgh','','inherit','closed','closed','','201-revision-v1','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',201,'http://myfriends.test/?p=236',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (237,1,'2023-04-06 00:30:34','2023-04-06 00:30:34','ere','ere','','inherit','closed','closed','','199-revision-v1','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',199,'http://myfriends.test/?p=237',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (238,1,'2023-04-06 00:30:34','2023-04-06 00:30:34','nbvmn','nbvmn','','inherit','closed','closed','','197-revision-v1','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',197,'http://myfriends.test/?p=238',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (239,1,'2023-04-06 00:30:34','2023-04-06 00:30:34','fghdfgh','fghdfgh','','inherit','closed','closed','','194-revision-v1','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',194,'http://myfriends.test/?p=239',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (240,1,'2023-04-06 00:30:34','2023-04-06 00:30:34','Guepardo','Guepardo','','inherit','closed','closed','','191-revision-v1','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',191,'http://myfriends.test/?p=240',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (241,1,'2023-04-06 00:30:34','2023-04-06 00:30:34','sol','sol','','inherit','closed','closed','','111-revision-v1','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',111,'http://myfriends.test/?p=241',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (242,1,'2023-04-06 00:30:34','2023-04-06 00:30:34','pedro quadrado','pedro quadrado','','inherit','closed','closed','','108-revision-v1','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',108,'http://myfriends.test/?p=242',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (243,1,'2023-04-06 00:30:34','2023-04-06 00:30:34','casal','casal','','inherit','closed','closed','','104-revision-v1','','','2023-04-06 00:30:34','2023-04-06 00:30:34','',104,'http://myfriends.test/?p=243',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (244,1,'2023-04-06 00:30:43','2023-04-06 00:30:43','selfie','selfie','','inherit','closed','closed','','102-revision-v1','','','2023-04-06 00:30:43','2023-04-06 00:30:43','',102,'http://myfriends.test/?p=244',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (245,1,'2023-04-06 00:30:43','2023-04-06 00:30:43','234','234','','inherit','closed','closed','','92-revision-v1','','','2023-04-06 00:30:43','2023-04-06 00:30:43','',92,'http://myfriends.test/?p=245',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (246,2,'2023-04-06 00:30:52','2023-04-06 00:30:52','1','1','','trash','open','open','','1-2__trashed','','','2023-04-06 00:31:30','2023-04-06 00:31:30','',0,'http://myfriends.test/1-2/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (248,2,'2023-04-06 00:30:58','2023-04-06 00:30:58','2','2','','trash','open','open','','2-2__trashed','','','2023-04-06 00:31:36','2023-04-06 00:31:36','',0,'http://myfriends.test/2-2/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (250,1,'2023-04-06 00:31:30','2023-04-06 00:31:30','1','1','','inherit','closed','closed','','246-revision-v1','','','2023-04-06 00:31:30','2023-04-06 00:31:30','',246,'http://myfriends.test/?p=250',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (251,1,'2023-04-06 00:31:36','2023-04-06 00:31:36','2','2','','inherit','closed','closed','','248-revision-v1','','','2023-04-06 00:31:36','2023-04-06 00:31:36','',248,'http://myfriends.test/?p=251',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (252,2,'2023-04-06 00:31:51','2023-04-06 00:31:51','1','1','','trash','open','open','','1-2__trashed-2','','','2023-04-06 00:50:31','2023-04-06 00:50:31','',0,'http://myfriends.test/1-2/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (254,2,'2023-04-06 00:32:07','2023-04-06 00:32:07','2','2','','trash','open','open','','2-2__trashed-2','','','2023-04-06 00:50:31','2023-04-06 00:50:31','',0,'http://myfriends.test/2-2/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (256,2,'2023-04-06 00:32:17','2023-04-06 00:32:17','3','3','','trash','open','open','','3-2__trashed-2','','','2023-04-06 00:50:31','2023-04-06 00:50:31','',0,'http://myfriends.test/3-2/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (258,2,'2023-04-06 00:32:29','2023-04-06 00:32:29','4','4','','trash','open','open','','4-2__trashed-2','','','2023-04-06 00:50:31','2023-04-06 00:50:31','',0,'http://myfriends.test/4-2/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (260,18,'2023-04-06 00:49:35','2023-04-06 00:49:35','23232','23232','','trash','open','open','','23232-2__trashed','','','2023-04-06 13:25:19','2023-04-06 13:25:19','',0,'http://myfriends.test/23232-2/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (262,1,'2023-04-06 00:50:31','2023-04-06 00:50:31','4','4','','inherit','closed','closed','','258-revision-v1','','','2023-04-06 00:50:31','2023-04-06 00:50:31','',258,'http://myfriends.test/?p=262',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (263,1,'2023-04-06 00:50:31','2023-04-06 00:50:31','3','3','','inherit','closed','closed','','256-revision-v1','','','2023-04-06 00:50:31','2023-04-06 00:50:31','',256,'http://myfriends.test/?p=263',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (264,1,'2023-04-06 00:50:31','2023-04-06 00:50:31','2','2','','inherit','closed','closed','','254-revision-v1','','','2023-04-06 00:50:31','2023-04-06 00:50:31','',254,'http://myfriends.test/?p=264',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (265,1,'2023-04-06 00:50:31','2023-04-06 00:50:31','1','1','','inherit','closed','closed','','252-revision-v1','','','2023-04-06 00:50:31','2023-04-06 00:50:31','',252,'http://myfriends.test/?p=265',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (268,2,'2023-04-06 13:24:51','2023-04-06 13:24:51','rgds','rgds','','trash','open','open','','rgds__trashed','','','2023-04-06 13:25:16','2023-04-06 13:25:16','',0,'http://myfriends.test/rgds/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (270,1,'2023-04-06 13:25:16','2023-04-06 13:25:16','rgds','rgds','','inherit','closed','closed','','268-revision-v1','','','2023-04-06 13:25:16','2023-04-06 13:25:16','',268,'http://myfriends.test/?p=270',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (271,1,'2023-04-06 13:25:19','2023-04-06 13:25:19','23232','23232','','inherit','closed','closed','','260-revision-v1','','','2023-04-06 13:25:19','2023-04-06 13:25:19','',260,'http://myfriends.test/?p=271',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (272,2,'2023-04-06 13:25:30','2023-04-06 13:25:30','4','4','','trash','open','open','','4-2__trashed-3','','','2023-04-06 13:26:34','2023-04-06 13:26:34','',0,'http://myfriends.test/4-2/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (274,1,'2023-04-06 13:26:34','2023-04-06 13:26:34','4','4','','inherit','closed','closed','','272-revision-v1','','','2023-04-06 13:26:34','2023-04-06 13:26:34','',272,'http://myfriends.test/?p=274',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (276,2,'2023-04-06 13:27:47','2023-04-06 13:27:47','j','j','','trash','open','open','','j__trashed-2','','','2023-04-06 13:28:46','2023-04-06 13:28:46','',0,'http://myfriends.test/j/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (278,1,'2023-04-06 13:28:46','2023-04-06 13:28:46','j','j','','inherit','closed','closed','','276-revision-v1','','','2023-04-06 13:28:46','2023-04-06 13:28:46','',276,'http://myfriends.test/?p=278',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (279,2,'2023-04-06 13:28:53','2023-04-06 13:28:53','8','8','','trash','open','open','','8-2__trashed','','','2023-04-06 13:38:41','2023-04-06 13:38:41','',0,'http://myfriends.test/8-2/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (281,1,'2023-04-06 13:38:41','2023-04-06 13:38:41','8','8','','inherit','closed','closed','','279-revision-v1','','','2023-04-06 13:38:41','2023-04-06 13:38:41','',279,'http://myfriends.test/?p=281',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (282,2,'2023-04-06 13:38:59','2023-04-06 13:38:59','q1','q1','','trash','open','open','','q1__trashed','','','2023-04-06 13:42:18','2023-04-06 13:42:18','',0,'http://myfriends.test/q1/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (283,2,'2023-04-06 13:38:59','2023-04-06 13:38:59','','433566','','inherit','open','closed','','433566','','','2023-04-06 13:38:59','2023-04-06 13:38:59','',282,'http://myfriends.test/wp-content/uploads/2023/04/433566.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (284,2,'2023-04-06 13:39:47','2023-04-06 13:39:47','1','1','','trash','open','open','','1-2__trashed-3','','','2023-04-06 14:01:27','2023-04-06 14:01:27','',0,'http://myfriends.test/1-2/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (285,2,'2023-04-06 13:39:47','2023-04-06 13:39:47','','433566','','inherit','open','closed','','433566-2','','','2023-04-06 13:39:47','2023-04-06 13:39:47','',284,'http://myfriends.test/wp-content/uploads/2023/04/433566-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (286,1,'2023-04-06 13:42:18','2023-04-06 13:42:18','q1','q1','','inherit','closed','closed','','282-revision-v1','','','2023-04-06 13:42:18','2023-04-06 13:42:18','',282,'http://myfriends.test/?p=286',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (287,2,'2023-04-06 13:43:28','2023-04-06 13:43:28','5','5','','trash','open','open','','5-2__trashed','','','2023-04-06 14:01:27','2023-04-06 14:01:27','',0,'http://myfriends.test/5-2/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (288,2,'2023-04-06 13:43:28','2023-04-06 13:43:28','','433566','','inherit','open','closed','','433566-3','','','2023-04-06 13:43:28','2023-04-06 13:43:28','',287,'http://myfriends.test/wp-content/uploads/2023/04/433566-2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (289,1,'2023-04-06 14:01:27','2023-04-06 14:01:27','1','1','','inherit','closed','closed','','284-revision-v1','','','2023-04-06 14:01:27','2023-04-06 14:01:27','',284,'http://myfriends.test/?p=289',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (290,1,'2023-04-06 14:01:27','2023-04-06 14:01:27','5','5','','inherit','closed','closed','','287-revision-v1','','','2023-04-06 14:01:27','2023-04-06 14:01:27','',287,'http://myfriends.test/?p=290',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (291,2,'2023-04-06 14:01:34','2023-04-06 14:01:34','','433566','','inherit','open','closed','','433566-4','','','2023-04-06 14:01:34','2023-04-06 14:01:34','',0,'http://myfriends.test/wp-content/uploads/2023/04/433566-3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (306,2,'2023-04-11 19:26:26','2023-04-11 19:26:26','546','546','','trash','open','open','','546-2__trashed','','','2023-04-11 19:27:00','2023-04-11 19:27:00','',0,'http://myfriends.test/546-2/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (309,1,'2023-04-11 19:27:00','2023-04-11 19:27:00','546','546','','inherit','closed','closed','','306-revision-v1','','','2023-04-11 19:27:00','2023-04-11 19:27:00','',306,'http://myfriends.test/?p=309',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (312,2,'2023-04-12 20:58:02','2023-04-12 20:58:02','cavalo','cavalo','','publish','open','open','','cavalo','','','2023-04-12 20:58:02','2023-04-12 20:58:02','',0,'http://myfriends.test/cavalo/',0,'post','',1);
INSERT INTO `wp_posts` VALUES (313,2,'2023-04-12 20:58:02','2023-04-12 20:58:02','','347516','','inherit','open','closed','','347516','','','2023-04-12 20:58:02','2023-04-12 20:58:02','',312,'http://myfriends.test/wp-content/uploads/2023/04/347516.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (316,2,'2023-04-12 20:58:26','2023-04-12 20:58:26','felino','felino','','publish','open','open','','felino','','','2023-04-12 20:58:26','2023-04-12 20:58:26','',0,'http://myfriends.test/felino/',0,'post','',3);
INSERT INTO `wp_posts` VALUES (317,2,'2023-04-12 20:58:26','2023-04-12 20:58:26','','598768','','inherit','open','closed','','598768','','','2023-04-12 20:58:26','2023-04-12 20:58:26','',316,'http://myfriends.test/wp-content/uploads/2023/04/598768.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (318,2,'2023-04-12 20:58:53','2023-04-12 20:58:53','urso','urso','','publish','open','open','','urso','','','2023-04-12 20:58:53','2023-04-12 20:58:53','',0,'http://myfriends.test/urso/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (319,2,'2023-04-12 20:58:53','2023-04-12 20:58:53','','871898','','inherit','open','closed','','871898','','','2023-04-12 20:58:53','2023-04-12 20:58:53','',318,'http://myfriends.test/wp-content/uploads/2023/04/871898.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (320,1,'2023-04-12 21:41:57','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2023-04-12 21:41:57','0000-00-00 00:00:00','',0,'http://myfriends.test/?p=320',0,'post','',0);
INSERT INTO `wp_posts` VALUES (323,2,'2023-04-15 22:56:46','2023-04-15 22:56:46','cachorro','cachorro','','publish','open','open','','cachorro','','','2023-04-15 22:56:46','2023-04-15 22:56:46','',0,'http://myfriends.test/cachorro/',0,'post','',1);
INSERT INTO `wp_posts` VALUES (324,2,'2023-04-15 22:56:46','2023-04-15 22:56:46','','media_142f9cf5285c2cdcda8375c1041d273a3f0383e5f','','inherit','open','closed','','media_142f9cf5285c2cdcda8375c1041d273a3f0383e5f','','','2023-04-15 22:56:46','2023-04-15 22:56:46','',323,'http://myfriends.test/wp-content/uploads/2023/04/media_142f9cf5285c2cdcda8375c1041d273a3f0383e5f.png',0,'attachment','image/png',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (39,1,0);
INSERT INTO `wp_term_relationships` VALUES (42,1,0);
INSERT INTO `wp_term_relationships` VALUES (46,1,0);
INSERT INTO `wp_term_relationships` VALUES (48,1,0);
INSERT INTO `wp_term_relationships` VALUES (50,1,0);
INSERT INTO `wp_term_relationships` VALUES (55,1,0);
INSERT INTO `wp_term_relationships` VALUES (57,1,0);
INSERT INTO `wp_term_relationships` VALUES (59,1,0);
INSERT INTO `wp_term_relationships` VALUES (63,1,0);
INSERT INTO `wp_term_relationships` VALUES (64,1,0);
INSERT INTO `wp_term_relationships` VALUES (65,1,0);
INSERT INTO `wp_term_relationships` VALUES (66,1,0);
INSERT INTO `wp_term_relationships` VALUES (71,1,0);
INSERT INTO `wp_term_relationships` VALUES (72,1,0);
INSERT INTO `wp_term_relationships` VALUES (74,1,0);
INSERT INTO `wp_term_relationships` VALUES (75,1,0);
INSERT INTO `wp_term_relationships` VALUES (77,1,0);
INSERT INTO `wp_term_relationships` VALUES (82,1,0);
INSERT INTO `wp_term_relationships` VALUES (85,1,0);
INSERT INTO `wp_term_relationships` VALUES (86,1,0);
INSERT INTO `wp_term_relationships` VALUES (87,1,0);
INSERT INTO `wp_term_relationships` VALUES (90,1,0);
INSERT INTO `wp_term_relationships` VALUES (92,1,0);
INSERT INTO `wp_term_relationships` VALUES (100,1,0);
INSERT INTO `wp_term_relationships` VALUES (102,1,0);
INSERT INTO `wp_term_relationships` VALUES (104,1,0);
INSERT INTO `wp_term_relationships` VALUES (108,1,0);
INSERT INTO `wp_term_relationships` VALUES (111,1,0);
INSERT INTO `wp_term_relationships` VALUES (114,1,0);
INSERT INTO `wp_term_relationships` VALUES (131,1,0);
INSERT INTO `wp_term_relationships` VALUES (140,1,0);
INSERT INTO `wp_term_relationships` VALUES (142,1,0);
INSERT INTO `wp_term_relationships` VALUES (144,1,0);
INSERT INTO `wp_term_relationships` VALUES (146,1,0);
INSERT INTO `wp_term_relationships` VALUES (148,1,0);
INSERT INTO `wp_term_relationships` VALUES (150,1,0);
INSERT INTO `wp_term_relationships` VALUES (152,1,0);
INSERT INTO `wp_term_relationships` VALUES (154,1,0);
INSERT INTO `wp_term_relationships` VALUES (156,1,0);
INSERT INTO `wp_term_relationships` VALUES (158,1,0);
INSERT INTO `wp_term_relationships` VALUES (160,1,0);
INSERT INTO `wp_term_relationships` VALUES (162,1,0);
INSERT INTO `wp_term_relationships` VALUES (164,1,0);
INSERT INTO `wp_term_relationships` VALUES (166,1,0);
INSERT INTO `wp_term_relationships` VALUES (168,1,0);
INSERT INTO `wp_term_relationships` VALUES (170,1,0);
INSERT INTO `wp_term_relationships` VALUES (172,1,0);
INSERT INTO `wp_term_relationships` VALUES (191,1,0);
INSERT INTO `wp_term_relationships` VALUES (194,1,0);
INSERT INTO `wp_term_relationships` VALUES (197,1,0);
INSERT INTO `wp_term_relationships` VALUES (199,1,0);
INSERT INTO `wp_term_relationships` VALUES (201,1,0);
INSERT INTO `wp_term_relationships` VALUES (203,1,0);
INSERT INTO `wp_term_relationships` VALUES (205,1,0);
INSERT INTO `wp_term_relationships` VALUES (207,1,0);
INSERT INTO `wp_term_relationships` VALUES (209,1,0);
INSERT INTO `wp_term_relationships` VALUES (211,1,0);
INSERT INTO `wp_term_relationships` VALUES (213,1,0);
INSERT INTO `wp_term_relationships` VALUES (216,1,0);
INSERT INTO `wp_term_relationships` VALUES (218,1,0);
INSERT INTO `wp_term_relationships` VALUES (220,1,0);
INSERT INTO `wp_term_relationships` VALUES (222,1,0);
INSERT INTO `wp_term_relationships` VALUES (224,1,0);
INSERT INTO `wp_term_relationships` VALUES (246,1,0);
INSERT INTO `wp_term_relationships` VALUES (248,1,0);
INSERT INTO `wp_term_relationships` VALUES (252,1,0);
INSERT INTO `wp_term_relationships` VALUES (254,1,0);
INSERT INTO `wp_term_relationships` VALUES (256,1,0);
INSERT INTO `wp_term_relationships` VALUES (258,1,0);
INSERT INTO `wp_term_relationships` VALUES (260,1,0);
INSERT INTO `wp_term_relationships` VALUES (268,1,0);
INSERT INTO `wp_term_relationships` VALUES (272,1,0);
INSERT INTO `wp_term_relationships` VALUES (276,1,0);
INSERT INTO `wp_term_relationships` VALUES (279,1,0);
INSERT INTO `wp_term_relationships` VALUES (282,1,0);
INSERT INTO `wp_term_relationships` VALUES (284,1,0);
INSERT INTO `wp_term_relationships` VALUES (287,1,0);
INSERT INTO `wp_term_relationships` VALUES (306,1,0);
INSERT INTO `wp_term_relationships` VALUES (312,1,0);
INSERT INTO `wp_term_relationships` VALUES (316,1,0);
INSERT INTO `wp_term_relationships` VALUES (318,1,0);
INSERT INTO `wp_term_relationships` VALUES (323,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,4);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=259 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','myfriends');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:2:{s:64:\"891d211b788e5f303cb8b1ebabd61392656a19e051578a96b18877ee622303c3\";a:4:{s:10:\"expiration\";i:1682450815;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\";s:5:\"login\";i:1681241215;}s:64:\"d8f244269c02d6774ba62f6d9c0aeb958c26a2d0495094fb0e5824ed48730ff1\";a:4:{s:10:\"expiration\";i:1682808367;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36\";s:5:\"login\";i:1681598767;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','320');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (19,2,'nickname','pedro');
INSERT INTO `wp_usermeta` VALUES (20,2,'first_name','');
INSERT INTO `wp_usermeta` VALUES (21,2,'last_name','');
INSERT INTO `wp_usermeta` VALUES (22,2,'description','');
INSERT INTO `wp_usermeta` VALUES (23,2,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (24,2,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (25,2,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (26,2,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (27,2,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (28,2,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (29,2,'locale','');
INSERT INTO `wp_usermeta` VALUES (30,2,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (31,2,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (45,1,'wp_persisted_preferences','a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:1:{i:0;s:11:\"post-status\";}}s:9:\"_modified\";s:24:\"2023-03-27T20:18:28.083Z\";}');
INSERT INTO `wp_usermeta` VALUES (46,1,'enable_custom_fields','1');
INSERT INTO `wp_usermeta` VALUES (47,4,'nickname','test3');
INSERT INTO `wp_usermeta` VALUES (48,4,'first_name','Test3');
INSERT INTO `wp_usermeta` VALUES (49,4,'last_name','Tres');
INSERT INTO `wp_usermeta` VALUES (50,4,'description','');
INSERT INTO `wp_usermeta` VALUES (51,4,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (52,4,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (53,4,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (54,4,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (55,4,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (56,4,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (57,4,'locale','');
INSERT INTO `wp_usermeta` VALUES (58,4,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (59,4,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (60,4,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (61,5,'nickname','test4');
INSERT INTO `wp_usermeta` VALUES (62,5,'first_name','Test 4');
INSERT INTO `wp_usermeta` VALUES (63,5,'last_name','Quatro');
INSERT INTO `wp_usermeta` VALUES (64,5,'description','');
INSERT INTO `wp_usermeta` VALUES (65,5,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (66,5,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (67,5,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (68,5,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (69,5,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (70,5,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (71,5,'locale','');
INSERT INTO `wp_usermeta` VALUES (72,5,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (73,5,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (74,5,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (75,6,'nickname','pedro5');
INSERT INTO `wp_usermeta` VALUES (76,6,'first_name','');
INSERT INTO `wp_usermeta` VALUES (77,6,'last_name','');
INSERT INTO `wp_usermeta` VALUES (78,6,'description','');
INSERT INTO `wp_usermeta` VALUES (79,6,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (80,6,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (81,6,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (82,6,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (83,6,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (84,6,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (85,6,'locale','');
INSERT INTO `wp_usermeta` VALUES (86,6,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (87,6,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (88,7,'nickname','pedro53');
INSERT INTO `wp_usermeta` VALUES (89,7,'first_name','');
INSERT INTO `wp_usermeta` VALUES (90,7,'last_name','');
INSERT INTO `wp_usermeta` VALUES (91,7,'description','');
INSERT INTO `wp_usermeta` VALUES (92,7,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (93,7,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (94,7,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (95,7,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (96,7,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (97,7,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (98,7,'locale','');
INSERT INTO `wp_usermeta` VALUES (99,7,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (100,7,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (101,8,'nickname','pedro523');
INSERT INTO `wp_usermeta` VALUES (102,8,'first_name','');
INSERT INTO `wp_usermeta` VALUES (103,8,'last_name','');
INSERT INTO `wp_usermeta` VALUES (104,8,'description','');
INSERT INTO `wp_usermeta` VALUES (105,8,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (106,8,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (107,8,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (108,8,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (109,8,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (110,8,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (111,8,'locale','');
INSERT INTO `wp_usermeta` VALUES (112,8,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (113,8,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (114,9,'nickname','1244');
INSERT INTO `wp_usermeta` VALUES (115,9,'first_name','');
INSERT INTO `wp_usermeta` VALUES (116,9,'last_name','');
INSERT INTO `wp_usermeta` VALUES (117,9,'description','');
INSERT INTO `wp_usermeta` VALUES (118,9,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (119,9,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (120,9,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (121,9,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (122,9,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (123,9,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (124,9,'locale','');
INSERT INTO `wp_usermeta` VALUES (125,9,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (126,9,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (127,10,'nickname','testttttt');
INSERT INTO `wp_usermeta` VALUES (128,10,'first_name','');
INSERT INTO `wp_usermeta` VALUES (129,10,'last_name','');
INSERT INTO `wp_usermeta` VALUES (130,10,'description','');
INSERT INTO `wp_usermeta` VALUES (131,10,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (132,10,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (133,10,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (134,10,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (135,10,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (136,10,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (137,10,'locale','');
INSERT INTO `wp_usermeta` VALUES (138,10,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (139,10,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (140,11,'nickname','testttttt4');
INSERT INTO `wp_usermeta` VALUES (141,11,'first_name','');
INSERT INTO `wp_usermeta` VALUES (142,11,'last_name','');
INSERT INTO `wp_usermeta` VALUES (143,11,'description','');
INSERT INTO `wp_usermeta` VALUES (144,11,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (145,11,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (146,11,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (147,11,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (148,11,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (149,11,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (150,11,'locale','');
INSERT INTO `wp_usermeta` VALUES (151,11,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (152,11,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (153,12,'nickname','joao');
INSERT INTO `wp_usermeta` VALUES (154,12,'first_name','');
INSERT INTO `wp_usermeta` VALUES (155,12,'last_name','');
INSERT INTO `wp_usermeta` VALUES (156,12,'description','');
INSERT INTO `wp_usermeta` VALUES (157,12,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (158,12,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (159,12,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (160,12,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (161,12,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (162,12,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (163,12,'locale','');
INSERT INTO `wp_usermeta` VALUES (164,12,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (165,12,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (166,13,'nickname','peixe');
INSERT INTO `wp_usermeta` VALUES (167,13,'first_name','');
INSERT INTO `wp_usermeta` VALUES (168,13,'last_name','');
INSERT INTO `wp_usermeta` VALUES (169,13,'description','');
INSERT INTO `wp_usermeta` VALUES (170,13,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (171,13,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (172,13,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (173,13,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (174,13,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (175,13,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (176,13,'locale','');
INSERT INTO `wp_usermeta` VALUES (177,13,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (178,13,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (179,14,'nickname','maria');
INSERT INTO `wp_usermeta` VALUES (180,14,'first_name','');
INSERT INTO `wp_usermeta` VALUES (181,14,'last_name','');
INSERT INTO `wp_usermeta` VALUES (182,14,'description','');
INSERT INTO `wp_usermeta` VALUES (183,14,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (184,14,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (185,14,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (186,14,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (187,14,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (188,14,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (189,14,'locale','');
INSERT INTO `wp_usermeta` VALUES (190,14,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (191,14,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (192,15,'nickname','Claudineia');
INSERT INTO `wp_usermeta` VALUES (193,15,'first_name','');
INSERT INTO `wp_usermeta` VALUES (194,15,'last_name','');
INSERT INTO `wp_usermeta` VALUES (195,15,'description','');
INSERT INTO `wp_usermeta` VALUES (196,15,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (197,15,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (198,15,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (199,15,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (200,15,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (201,15,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (202,15,'locale','');
INSERT INTO `wp_usermeta` VALUES (203,15,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (204,15,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (205,16,'nickname','lucas');
INSERT INTO `wp_usermeta` VALUES (206,16,'first_name','');
INSERT INTO `wp_usermeta` VALUES (207,16,'last_name','');
INSERT INTO `wp_usermeta` VALUES (208,16,'description','');
INSERT INTO `wp_usermeta` VALUES (209,16,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (210,16,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (211,16,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (212,16,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (213,16,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (214,16,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (215,16,'locale','');
INSERT INTO `wp_usermeta` VALUES (216,16,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (217,16,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (218,17,'nickname','pedroflores');
INSERT INTO `wp_usermeta` VALUES (219,17,'first_name','');
INSERT INTO `wp_usermeta` VALUES (220,17,'last_name','');
INSERT INTO `wp_usermeta` VALUES (221,17,'description','');
INSERT INTO `wp_usermeta` VALUES (222,17,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (223,17,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (224,17,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (225,17,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (226,17,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (227,17,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (228,17,'locale','');
INSERT INTO `wp_usermeta` VALUES (229,17,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (230,17,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (231,17,'default_password_nag','');
INSERT INTO `wp_usermeta` VALUES (232,18,'nickname','joao2');
INSERT INTO `wp_usermeta` VALUES (233,18,'first_name','');
INSERT INTO `wp_usermeta` VALUES (234,18,'last_name','');
INSERT INTO `wp_usermeta` VALUES (235,18,'description','');
INSERT INTO `wp_usermeta` VALUES (236,18,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (237,18,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (238,18,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (239,18,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (240,18,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (241,18,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (242,18,'locale','');
INSERT INTO `wp_usermeta` VALUES (243,18,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (244,18,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (245,1,'wp_media_library_mode','list');
INSERT INTO `wp_usermeta` VALUES (246,19,'nickname','Pedro1235577');
INSERT INTO `wp_usermeta` VALUES (247,19,'first_name','');
INSERT INTO `wp_usermeta` VALUES (248,19,'last_name','');
INSERT INTO `wp_usermeta` VALUES (249,19,'description','');
INSERT INTO `wp_usermeta` VALUES (250,19,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (251,19,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (252,19,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (253,19,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (254,19,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (255,19,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (256,19,'locale','');
INSERT INTO `wp_usermeta` VALUES (257,19,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (258,19,'wp_user_level','0');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'myfriends','$P$BmaiMNf2KsEenWSX39EaunmncYQZYA0','myfriends','dev-email@wpengine.local','http://myfriends.test','2023-03-27 18:55:22','',0,'myfriends');
INSERT INTO `wp_users` VALUES (2,'pedro','$P$B930t1TdvBuG6vPshqcM8wzHLQ3GNc.','pedro','pedro@gmail.com','','2023-03-27 19:56:43','1680644739:$P$B1KdlyvpNWnq2weMxYqFUgz5/yM4fu0',0,'pedro');
INSERT INTO `wp_users` VALUES (4,'test3','$P$BpD3ZG50bSoWgTejEA36tm0KSzRzmH0','test3','test@gmail.com','','2023-03-28 21:52:17','1680040337:$P$BCu8axaWvjYxI3LKgZ.lPpb67lWRaK/',0,'Test3 Tres');
INSERT INTO `wp_users` VALUES (5,'test4','$P$BpCq7VbUqcIzLA8V796dLV6yyC2jmF.','test4','test4@gmail.com','','2023-03-28 21:54:26','1680040466:$P$BJtgAn8Hoo4wu5VmWXCKMERSp5YikM1',0,'Test 4 Quatro');
INSERT INTO `wp_users` VALUES (6,'pedro5','$P$BF2XjzamnJCUIvxINmZK6bDw2Qn60b0','pedro5','pedro55@gmail.com','','2023-03-31 19:22:32','',0,'pedro5');
INSERT INTO `wp_users` VALUES (7,'pedro53','$P$Bwt01n37qL2cxFogbwcaAD6cb0meCz/','pedro53','pedro553@gmail.com','','2023-03-31 19:29:09','',0,'pedro53');
INSERT INTO `wp_users` VALUES (8,'pedro523','$P$BZfBW9ol7CLAKNLDDgBN2fG97HQy/K/','pedro523','pedro5523@gmail.com','','2023-03-31 19:29:45','',0,'pedro523');
INSERT INTO `wp_users` VALUES (9,'1244','$P$BN8aarPhfnFmwQR8MNKi0nO7GkMkEV1','1244','1@g.com','','2023-03-31 19:30:06','',0,'1244');
INSERT INTO `wp_users` VALUES (10,'testttttt','$P$B8Pb20rMXvPDkHTSJOy6GnwFXwO9Ni.','testttttt','testttttt@gmai.com','','2023-03-31 20:28:09','',0,'testttttt');
INSERT INTO `wp_users` VALUES (11,'testttttt4','$P$B9vravnXoJvjHGXXX9RNI4H2bq/Ama1','testttttt4','testttttt4@gmai.com','','2023-03-31 20:33:08','',0,'testttttt4');
INSERT INTO `wp_users` VALUES (12,'joao','$P$Bs8bJJdaeGmDmVD7l4PspCBvQ2TE1I1','joao','joao@gmail.com','','2023-04-01 20:44:57','',0,'joao');
INSERT INTO `wp_users` VALUES (13,'peixe','$P$BOEBoIQCoaBPUV4vAcSm93UZ3FoYEz1','peixe','peixe@gmail.com','','2023-04-01 20:47:40','',0,'peixe');
INSERT INTO `wp_users` VALUES (14,'maria','$P$B9Ta4BBkjxtv8iIG4N3D/YFtXMmZ5p0','maria','maria@gmail.com','','2023-04-02 16:17:11','',0,'maria');
INSERT INTO `wp_users` VALUES (15,'Claudineia','$P$Bla6TEzei/uREHXlwubNrDiCW6YXLd/','claudineia','claudineia@gmail.com','','2023-04-02 16:46:58','',0,'Claudineia');
INSERT INTO `wp_users` VALUES (16,'lucas','$P$BGaE.ZChSsj2BqPQzVjvFRaYYB//gg0','lucas','lucas@gmail.com','','2023-04-03 02:40:00','',0,'lucas');
INSERT INTO `wp_users` VALUES (17,'pedroflores','$P$Ba/dhqTOYC8YVGB9WYrKY7cniHo36h/','pedroflores','pedrolucaspflores@gmail.com','','2023-04-04 21:49:46','',0,'pedroflores');
INSERT INTO `wp_users` VALUES (18,'joao2','$P$BCn2VacuRVygBVCSPWG5BKm2NvkwWv0','joao2','joao2@gmail.com','','2023-04-05 02:06:43','',0,'joao2');
INSERT INTO `wp_users` VALUES (19,'Pedro1235577','$P$B7E.Ux90DL0qz2b2NZAXBLGoV5B/mU/','pedro1235577','pedro1235577@g.com','','2023-04-15 23:01:30','',0,'Pedro1235577');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-17 14:15:18

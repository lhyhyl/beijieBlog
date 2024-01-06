-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `blog_article`
--

DROP TABLE IF EXISTS `blog_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `article_title` varchar(255) DEFAULT NULL COMMENT '文章标题 不能为空',
  `author_id` int DEFAULT '1' COMMENT '文章作者 不能为空',
  `category_id` int DEFAULT NULL COMMENT '分类id 不能为空',
  `article_content` text COMMENT '文章内容',
  `article_cover` varchar(1234) DEFAULT '	https://mrzym.gitee.io/blogimg/html/rabbit.png' COMMENT '文章缩略图',
  `is_top` int DEFAULT '2' COMMENT '是否置顶 1 置顶 2 取消置顶',
  `status` int DEFAULT '1' COMMENT '文章状态  1 公开 2 私密 3 草稿箱',
  `type` int DEFAULT '1' COMMENT '文章类型 1 原创 2 转载 3 翻译',
  `origin_url` varchar(255) DEFAULT NULL COMMENT '原文链接 是转载或翻译的情况下提供',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `view_times` int DEFAULT '0' COMMENT '文章访问次数',
  `article_description` varchar(255) DEFAULT NULL COMMENT '描述信息 不能为空',
  `thumbs_up_times` int DEFAULT '0' COMMENT '文章点赞次数',
  `reading_duration` double DEFAULT '0' COMMENT '文章阅读时长',
  `order` int DEFAULT NULL COMMENT '排序 1 最大 往后越小 用于置顶文章的排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_article`
--

LOCK TABLES `blog_article` WRITE;
/*!40000 ALTER TABLE `blog_article` DISABLE KEYS */;
INSERT INTO `blog_article` VALUES (17,'测试文章',239,4,'---\ntitle: hexo+volantis配站实例\ndate: 2024-01-01\n---\n\nTo use MathJax, include the following script in the head of your Markdown file:\n\nThis is the famous Einstein\'s mass-energy equivalence equation:\n\n$$\nE=mc^2\n$$\n\n$$\n\\lfloor i/2 \\rfloor\n$$\n\n\n$$\n\\begin{equation}\n\\begin{cases}\n    n = n_0 + n_1 + n_2 \\\\\n    n_{\\text{分支}} = n_1 + 2n_2 \\\\\n    n_{\\text{分支}} = n - 1\n\\end{cases}\n\\Longrightarrow\nn_1 + 2n_2 = n_0 + n_1 + n_2 - 1\n\\Longrightarrow\nn_0 = n_2 + 1\n\\end{equation}\n$$\n\n$$\n\\lceil log_2(N+1)\\rceil\n$$\n\n$$\n\\sum_{i=1}^{n}p_i(n-i) = \\sum_{i=1}^{n}\\frac{1}{n}{(n-i)} = \\frac{1}{n}\\chi\\frac{n(n-1)}{2} = \\frac{n-1}{2}\n$$\n\n','http://s6qloxhg7.hn-bkt.clouddn.com/Fq8k0fV5ApCAXR5yIQCuDnWKG6L_',1,1,1,NULL,'2024-01-05 19:40:14','2024-01-05 20:40:43',3,'测试文章',0,0,1);
/*!40000 ALTER TABLE `blog_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_article_tag`
--

DROP TABLE IF EXISTS `blog_article_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_article_tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `article_id` int DEFAULT NULL COMMENT '文章id',
  `tag_id` int DEFAULT NULL COMMENT '标签id',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_article_tag`
--

LOCK TABLES `blog_article_tag` WRITE;
/*!40000 ALTER TABLE `blog_article_tag` DISABLE KEYS */;
INSERT INTO `blog_article_tag` VALUES (239,17,18,'2024-01-05 19:40:14','2024-01-05 19:40:14');
/*!40000 ALTER TABLE `blog_article_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_category`
--

DROP TABLE IF EXISTS `blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(55) DEFAULT NULL COMMENT '分类名称 唯一',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `category_name` (`category_name`) USING BTREE,
  UNIQUE KEY `category_name_2` (`category_name`) USING BTREE,
  UNIQUE KEY `category_name_3` (`category_name`) USING BTREE,
  UNIQUE KEY `category_name_4` (`category_name`) USING BTREE,
  UNIQUE KEY `category_name_5` (`category_name`) USING BTREE,
  UNIQUE KEY `category_name_6` (`category_name`) USING BTREE,
  UNIQUE KEY `category_name_7` (`category_name`) USING BTREE,
  UNIQUE KEY `category_name_8` (`category_name`) USING BTREE,
  UNIQUE KEY `category_name_9` (`category_name`) USING BTREE,
  UNIQUE KEY `category_name_10` (`category_name`) USING BTREE,
  UNIQUE KEY `category_name_11` (`category_name`) USING BTREE,
  UNIQUE KEY `category_name_12` (`category_name`) USING BTREE,
  UNIQUE KEY `category_name_13` (`category_name`) USING BTREE,
  UNIQUE KEY `category_name_14` (`category_name`) USING BTREE,
  UNIQUE KEY `category_name_15` (`category_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_category`
--

LOCK TABLES `blog_category` WRITE;
/*!40000 ALTER TABLE `blog_category` DISABLE KEYS */;
INSERT INTO `blog_category` VALUES (4,'讲义','2024-01-04 19:48:26','2024-01-04 19:48:26');
/*!40000 ALTER TABLE `blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_comment`
--

DROP TABLE IF EXISTS `blog_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int DEFAULT NULL COMMENT '评论父级id',
  `for_id` int DEFAULT NULL COMMENT '评论的对象id 比如说说id、文章id等',
  `type` int DEFAULT NULL COMMENT '评论类型 1 文章 2 说说 3 留言 ...',
  `from_id` int DEFAULT NULL COMMENT '评论人id',
  `from_name` varchar(255) DEFAULT NULL COMMENT '评论人昵称',
  `from_avatar` varchar(555) DEFAULT NULL COMMENT '评论人头像',
  `to_id` int DEFAULT NULL COMMENT '被回复的人id',
  `to_name` varchar(255) DEFAULT NULL COMMENT '被回复人的昵称',
  `to_avatar` varchar(555) DEFAULT NULL COMMENT '被回复人的头像',
  `content` varchar(555) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论内容',
  `thumbs_up` int DEFAULT '0' COMMENT '评论点赞数',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL COMMENT 'ip地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=380 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_comment`
--

LOCK TABLES `blog_comment` WRITE;
/*!40000 ALTER TABLE `blog_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_config`
--

DROP TABLE IF EXISTS `blog_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_config` (
  `id` int NOT NULL AUTO_INCREMENT,
  `blog_name` varchar(55) DEFAULT '小张的博客' COMMENT '博客名称',
  `blog_avatar` varchar(255) DEFAULT 'https://mrzym.gitee.io/blogimg/html/rabbit.png' COMMENT '博客头像',
  `avatar_bg` varchar(255) DEFAULT NULL COMMENT '博客头像背景图',
  `personal_say` varchar(255) DEFAULT NULL COMMENT '个人签名',
  `blog_notice` varchar(255) DEFAULT NULL COMMENT '博客公告',
  `qq_link` varchar(255) DEFAULT NULL COMMENT 'qq链接',
  `we_chat_link` varchar(255) DEFAULT NULL COMMENT '微信链接',
  `github_link` varchar(255) DEFAULT NULL COMMENT 'github链接',
  `git_ee_link` varchar(255) DEFAULT NULL COMMENT 'git_ee链接',
  `bilibili_link` varchar(255) DEFAULT NULL COMMENT 'bilibili链接',
  `view_time` bigint DEFAULT '0' COMMENT '博客被访问的次数',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `we_chat_group` varchar(255) DEFAULT NULL COMMENT '微信群图片',
  `qq_group` varchar(255) DEFAULT NULL COMMENT 'qq群图片',
  `we_chat_pay` varchar(255) DEFAULT NULL COMMENT '微信收款码',
  `ali_pay` varchar(255) DEFAULT NULL COMMENT '支付宝收款码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_config`
--

LOCK TABLES `blog_config` WRITE;
/*!40000 ALTER TABLE `blog_config` DISABLE KEYS */;
INSERT INTO `blog_config` VALUES (1,'北街学长的博客','http://s6qloxhg7.hn-bkt.clouddn.com/FiGyR1tirgwsg-w1_emah2i4o5SH','http://s6qloxhg7.hn-bkt.clouddn.com/Fp70vVk-qsywQJchh7GSHJCys-5l','抓住机会,纵使前方是万丈深渊,跳下去,因为下落的过程中,你会长出新的翅膀','','http://s6qloxhg7.hn-bkt.clouddn.com/Fm4EDWqrQ1z5Enw2wRXiZdRZ9Ai_','http://s6qloxhg7.hn-bkt.clouddn.com/FlJ_JVzLtV4TeQ_gF4XVNoGEdd3U','https://github.com/lhyhyl','https://gitee.com/seaside_solitude','https://space.bilibili.com/348925757',3,'2024-01-05 20:13:06','2024-01-05 20:35:45','','http://s6qloxhg7.hn-bkt.clouddn.com/FmbUsm4dG7GT9SbROkswfmF9Bn_R','','');
/*!40000 ALTER TABLE `blog_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_header`
--

DROP TABLE IF EXISTS `blog_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_header` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bg_url` varchar(255) DEFAULT NULL COMMENT '背景图',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `route_name` varchar(555) DEFAULT NULL COMMENT '路由名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_header`
--

LOCK TABLES `blog_header` WRITE;
/*!40000 ALTER TABLE `blog_header` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_like`
--

DROP TABLE IF EXISTS `blog_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_like` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` int DEFAULT NULL COMMENT '点赞类型 1 文章 2 说说 3 留言 4 评论',
  `for_id` int DEFAULT NULL COMMENT '点赞的id 文章id 说说id 留言id',
  `user_id` int DEFAULT NULL COMMENT '点赞用户id',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=291 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_like`
--

LOCK TABLES `blog_like` WRITE;
/*!40000 ALTER TABLE `blog_like` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_links`
--

DROP TABLE IF EXISTS `blog_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_links` (
  `id` int NOT NULL AUTO_INCREMENT,
  `site_name` varchar(55) DEFAULT NULL COMMENT '网站名称',
  `site_desc` varchar(255) DEFAULT NULL COMMENT '网站描述',
  `site_avatar` varchar(555) DEFAULT NULL COMMENT '网站头像',
  `url` varchar(255) DEFAULT NULL COMMENT '网站地址',
  `status` int DEFAULT NULL COMMENT '友链状态 1 待审核 2 审核通过',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL COMMENT '申请者id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_links`
--

LOCK TABLES `blog_links` WRITE;
/*!40000 ALTER TABLE `blog_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_message`
--

DROP TABLE IF EXISTS `blog_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) DEFAULT NULL COMMENT '标签',
  `message` varchar(555) DEFAULT NULL COMMENT '留言内容',
  `color` varchar(255) DEFAULT '#676767' COMMENT '字体颜色',
  `font_size` int DEFAULT '12' COMMENT '字体大小',
  `bg_color` varchar(255) DEFAULT NULL COMMENT '背景颜色',
  `bg_url` varchar(255) DEFAULT NULL COMMENT '背景图片',
  `user_id` int DEFAULT NULL COMMENT '留言用户的id',
  `like_times` int DEFAULT '0' COMMENT '点赞次数',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `font_weight` int DEFAULT '500' COMMENT '字体宽度',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '游客用户的昵称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_message`
--

LOCK TABLES `blog_message` WRITE;
/*!40000 ALTER TABLE `blog_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_notify`
--

DROP TABLE IF EXISTS `blog_notify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_notify` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message` varchar(555) DEFAULT NULL COMMENT '通知内容',
  `user_id` int DEFAULT NULL COMMENT '通知给谁',
  `type` int DEFAULT NULL COMMENT '通知类型 1 文章 2 说说 3 留言 4 友链',
  `to_id` int DEFAULT NULL COMMENT '说说或者是文章的id 用于跳转',
  `isView` int DEFAULT '1' COMMENT '是否被查看 1 没有 2 已经查看',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=365 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_notify`
--

LOCK TABLES `blog_notify` WRITE;
/*!40000 ALTER TABLE `blog_notify` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_notify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_photo`
--

DROP TABLE IF EXISTS `blog_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_photo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `album_id` int DEFAULT NULL COMMENT '相册 id 属于哪个相册',
  `url` varchar(555) DEFAULT NULL COMMENT '图片地址',
  `status` int DEFAULT '1' COMMENT '状态 1 正常 2 回收站',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=302 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_photo`
--

LOCK TABLES `blog_photo` WRITE;
/*!40000 ALTER TABLE `blog_photo` DISABLE KEYS */;
INSERT INTO `blog_photo` VALUES (301,12,'http://s6qloxhg7.hn-bkt.clouddn.com/FudfaIPA8hM_rv32z1djW2qAebwf',1,'2024-01-05 19:41:18','2024-01-05 19:41:18');
/*!40000 ALTER TABLE `blog_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_photo_album`
--

DROP TABLE IF EXISTS `blog_photo_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_photo_album` (
  `id` int NOT NULL AUTO_INCREMENT,
  `album_name` varchar(26) DEFAULT NULL COMMENT '相册名称',
  `description` varchar(55) DEFAULT NULL COMMENT '相册描述信息',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `album_cover` varchar(555) DEFAULT NULL COMMENT '相册封面',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_photo_album`
--

LOCK TABLES `blog_photo_album` WRITE;
/*!40000 ALTER TABLE `blog_photo_album` DISABLE KEYS */;
INSERT INTO `blog_photo_album` VALUES (12,'小苹果','小苹果','2024-01-05 19:40:54','2024-01-05 19:40:54','http://s6qloxhg7.hn-bkt.clouddn.com/FpMHZ77L8SYwxfXrAbxFqMz2zGPa');
/*!40000 ALTER TABLE `blog_photo_album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_recommend`
--

DROP TABLE IF EXISTS `blog_recommend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_recommend` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(55) DEFAULT NULL COMMENT '推荐网站标题',
  `link` varchar(255) DEFAULT NULL COMMENT '网站地址',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_recommend`
--

LOCK TABLES `blog_recommend` WRITE;
/*!40000 ALTER TABLE `blog_recommend` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_recommend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_tag`
--

DROP TABLE IF EXISTS `blog_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(55) DEFAULT NULL COMMENT '标签名称 唯一',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `tag_name` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_2` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_3` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_4` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_5` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_6` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_7` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_8` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_9` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_10` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_11` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_12` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_13` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_14` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_15` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_16` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_17` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_18` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_19` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_20` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_21` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_22` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_23` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_24` (`tag_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_tag`
--

LOCK TABLES `blog_tag` WRITE;
/*!40000 ALTER TABLE `blog_tag` DISABLE KEYS */;
INSERT INTO `blog_tag` VALUES (18,'数据结构','2024-01-04 19:48:35','2024-01-04 19:48:35');
/*!40000 ALTER TABLE `blog_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_talk`
--

DROP TABLE IF EXISTS `blog_talk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_talk` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL COMMENT '发布说说的用户id',
  `content` varchar(255) DEFAULT NULL COMMENT '说说内容',
  `status` int DEFAULT '1' COMMENT '说说状态 1 公开 2 私密 3 回收站',
  `is_top` int DEFAULT '2' COMMENT '是否置顶 1 置顶 2 不置顶',
  `like_times` int DEFAULT '0' COMMENT '点赞次数',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_talk`
--

LOCK TABLES `blog_talk` WRITE;
/*!40000 ALTER TABLE `blog_talk` DISABLE KEYS */;
INSERT INTO `blog_talk` VALUES (47,239,'',3,2,0,'2024-01-05 19:09:40','2024-01-05 19:22:42'),(48,239,'',3,2,0,'2024-01-05 19:10:28','2024-01-05 19:22:39'),(49,239,'',3,2,0,'2024-01-05 19:11:19','2024-01-05 19:22:36'),(50,239,'test',1,2,0,'2024-01-05 19:23:06','2024-01-05 19:23:06');
/*!40000 ALTER TABLE `blog_talk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_talk_photo`
--

DROP TABLE IF EXISTS `blog_talk_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_talk_photo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `talk_id` int DEFAULT NULL COMMENT '说说的id',
  `url` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_talk_photo`
--

LOCK TABLES `blog_talk_photo` WRITE;
/*!40000 ALTER TABLE `blog_talk_photo` DISABLE KEYS */;
INSERT INTO `blog_talk_photo` VALUES (84,47,'https://qiniucdn.com/Fq8k0fV5ApCAXR5yIQCuDnWKG6L_','2024-01-05 19:09:40','2024-01-05 19:09:40'),(85,48,'https://qiniucdn.com/Fq8k0fV5ApCAXR5yIQCuDnWKG6L_','2024-01-05 19:10:28','2024-01-05 19:10:28'),(86,49,'https://qiniucdn.com/Fq8k0fV5ApCAXR5yIQCuDnWKG6L_','2024-01-05 19:11:19','2024-01-05 19:11:19'),(87,50,'http://s6qloxhg7.hn-bkt.clouddn.com/lsFdvVDucHogoYHB0wb--F4sYyZX','2024-01-05 19:23:06','2024-01-05 19:23:06');
/*!40000 ALTER TABLE `blog_talk_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_user`
--

DROP TABLE IF EXISTS `blog_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL COMMENT '账号，唯一',
  `password` char(64) NOT NULL COMMENT '密码',
  `role` int NOT NULL DEFAULT '2' COMMENT '用户角色 1 管理员 2 普通用户',
  `nick_name` varchar(255) DEFAULT '' COMMENT '用户昵称',
  `avatar` varchar(255) DEFAULT '' COMMENT '用户头像',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `qq` varchar(255) DEFAULT '' COMMENT '用户QQ 用于联系',
  `ip` varchar(255) DEFAULT '' COMMENT 'ip属地',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `username_2` (`username`) USING BTREE,
  UNIQUE KEY `username_3` (`username`) USING BTREE,
  UNIQUE KEY `username_4` (`username`) USING BTREE,
  UNIQUE KEY `username_5` (`username`) USING BTREE,
  UNIQUE KEY `username_6` (`username`) USING BTREE,
  UNIQUE KEY `username_7` (`username`) USING BTREE,
  UNIQUE KEY `username_8` (`username`) USING BTREE,
  UNIQUE KEY `username_9` (`username`) USING BTREE,
  UNIQUE KEY `username_10` (`username`) USING BTREE,
  UNIQUE KEY `username_11` (`username`) USING BTREE,
  UNIQUE KEY `username_12` (`username`) USING BTREE,
  UNIQUE KEY `username_13` (`username`) USING BTREE,
  UNIQUE KEY `username_14` (`username`) USING BTREE,
  UNIQUE KEY `username_15` (`username`) USING BTREE,
  UNIQUE KEY `username_16` (`username`) USING BTREE,
  UNIQUE KEY `username_17` (`username`) USING BTREE,
  UNIQUE KEY `username_18` (`username`) USING BTREE,
  UNIQUE KEY `username_19` (`username`) USING BTREE,
  UNIQUE KEY `username_20` (`username`) USING BTREE,
  UNIQUE KEY `username_21` (`username`) USING BTREE,
  UNIQUE KEY `username_22` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_user`
--

LOCK TABLES `blog_user` WRITE;
/*!40000 ALTER TABLE `blog_user` DISABLE KEYS */;
INSERT INTO `blog_user` VALUES (239,'admin01','$2a$10$ddtlZO31ckgCJ6z1TJkIq.IWxxNqHzuLMWe8.XVk4teqePTBCpA/u',1,'admin01','http://mrzym.top/online/9bb507f4bd065759a3d093d04.webp','2024-01-04 19:38:55','2024-01-05 18:38:08','','127.0.0.1'),(240,'admin02','$2a$10$AK6wIfGmpKbdhVdW2ZRjwOAGchGq2clC.SAvwP9jKNTMU.uWOvjZ6',2,'admin02','http://mrzym.top/online/9bb507f4bd065759a3d093d04.webp','2024-01-05 19:52:54','2024-01-05 19:52:54','','1');
/*!40000 ALTER TABLE `blog_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-06 10:13:13

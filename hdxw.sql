-- MySQL dump 10.19  Distrib 10.3.28-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: hdxw
-- ------------------------------------------------------
-- Server version	10.3.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `title` char(200) NOT NULL,
  `url` char(200) NOT NULL,
  PRIMARY KEY (`title`,`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES ('全国政协副主席何厚铧接见校党委书记徐西鹏一行','https://news.hqu.edu.cn/info/1018/379402.htm'),('华侨大学境内外留校学子共享暖心年夜饭','https://news.hqu.edu.cn/info/1018/379612.htm'),('我校东盟国家留学生受邀参加2024“中国—东盟人文交流年”活动','https://news.hqu.edu.cn/info/1018/379472.htm'),('我校作品在第五届中华经典诵写讲大赛全国总决赛上获奖','https://news.hqu.edu.cn/info/1018/379492.htm'),('我校召开第十二届学位评定委员会第十六次会议','https://news.hqu.edu.cn/info/1018/379512.htm'),('我校承办2024四川南向开放（厦门）国际投资合作对接会','https://news.hqu.edu.cn/info/1018/379542.htm'),('校领导慰问假期留校教职员工','https://news.hqu.edu.cn/info/1018/379572.htm'),('校领导走访在闽校董 送新春祝福','https://news.hqu.edu.cn/info/1018/379582.htm'),('省市区两会上的“华大声音”','https://news.hqu.edu.cn/info/1018/379482.htm');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-17  0:10:01

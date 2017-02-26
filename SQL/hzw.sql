# Host: localhost  (Version: 5.5.47)
# Date: 2017-02-26 15:27:59
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "hzw_relation_similar_radical"
#

DROP TABLE IF EXISTS `hzw_relation_similar_radical`;
CREATE TABLE `hzw_relation_similar_radical` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `radical_id1` varchar(255) DEFAULT NULL,
  `radical_id2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

#
# Data for table "hzw_relation_similar_radical"
#

INSERT INTO `hzw_relation_similar_radical` VALUES (1,'4','5'),(2,'5','7'),(3,'4','8'),(4,'7','8'),(5,'7','10'),(6,'14','15'),(7,'11','12'),(8,'11','13'),(9,'12','13'),(10,'6','16'),(11,'20','21');

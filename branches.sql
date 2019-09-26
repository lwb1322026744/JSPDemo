/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.5.20 : Database - branchesdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`branchesdb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `branchesdb`;

/*Table structure for table `branches` */

DROP TABLE IF EXISTS `branches`;

CREATE TABLE `branches` (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '网点编号',
  `businessNo` varchar(50) NOT NULL COMMENT '营业执照号',
  `name` varchar(50) NOT NULL COMMENT '网点名称',
  `cityArea` varchar(50) NOT NULL COMMENT '所在城区',
  `address` varchar(50) NOT NULL COMMENT '网点地址',
  `telephone` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `summary` varchar(50) DEFAULT NULL COMMENT '网点简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `branches` */

LOCK TABLES `branches` WRITE;

insert  into `branches`(`id`,`businessNo`,`name`,`cityArea`,`address`,`telephone`,`summary`) values (1,'SC180000','海定路支行','海定区','海定区xx路128号','88997024','环境优越，交通便利'),(2,'AC180300','南海路支行','南海区','南海区xx路149号','12345677','环境优越，交通便利'),(3,'SC180000','光泽路支行','关鼎区','关鼎区xx路208号','23470986','环境优越，交通便利'),(4,'SC180000','茂名路支行','贸铭区','贸铭区xx路118号','64859959','环境优越，交通便利'),(5,'SC18000078','海淀路知行','海淀','海淀xx路28号','13185202225','成立于2012年，占地200平方米'),(6,'SC18000001','东城路知行','海淀','海淀xx路28号','13185278225','成立于2013年，占地267平方米'),(7,'SC18000002','北城路知行','北城','海淀xx路30号','13014522225','成立于2012年，占地400平方米'),(8,'SC18000003','西城路知行','西城','海淀xx路1号','13188202225','成立于2048年，占地289平方米'),(9,'SC18000004','海淀路知行','海淀','海淀2号','13185244225','成立于2012年，占地200平方米'),(10,'SC18000005','海淀路知行','海淀','海淀xx路28号','13185203335','成立于2012年，占地400平方米'),(11,'SC18000006','路知行','海淀','海淀xx路18号','13255202225','成立于2019年，占地200平方米'),(12,'SC18000007','海淀路','海淀','海淀xx路29号','18745202225','成立于2000年，占地200平方米'),(13,'SC18000008','海淀东路','海淀','海淀xx路10号','13185202212','成立于2000年，占地225平方米'),(14,'SC18000009','海淀路知行','海淀','海淀xx路201号','10232025874','成立于2012年，占地233平方米');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

/*
SQLyog Ultimate v8.55 
MySQL - 5.5.40 : Database - user
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`user` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `user`;

/*Table structure for table `user_info` */

DROP TABLE IF EXISTS `user_info`;

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `ROLE` varchar(25) DEFAULT 'user',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_EmailID` (`ROLE`,`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `user_info` */

insert  into `user_info`(`id`,`first`,`Email`,`Password`,`ROLE`) values (6,'Nishi Jain','workspot1992@gmail.com','475e8ebbc3cf5681ff90434de138d7f18c559473','user'),(8,'vartika','vartika.sinha11@gmail.com','adcedd0652b832a11f28dcd7efc91b83c3bf85ee','user'),(9,'Rachit ','rachit.gulati@comprotechnologies.com','7a7aacc9176f00cbd78135ae301fdfd47075061b','user'),(10,'Sanjoli Jain','sanjoli_jain@ymail.com','23670b650a8c70171d5f3497448d9fff04485ca3','user'),(11,'Ashi','Ashi_jain@gmail.com','2e06a74af46bb2ef5acbecff46de4ec0fde725d0','user'),(12,'Ankush','Ankush.garg@gmail.com','a2437485f71a3d24313c46379dfcd915044c1b82','user'),(13,'jyoti','jyoti.bhandari@gmail.com','7735107062de9358b5edc6c41cfc9b4fc1e62937','user'),(14,'Sahil','sahil.gupta@comprotechnologies.com','0920bfc483fe5a1f87a66cca1fab8cd0976e58e9','user');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

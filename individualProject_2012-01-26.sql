# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.9)
# Database: individualProject
# Generation Time: 2012-01-26 19:13:41 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table answers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `answers`;

CREATE TABLE `answers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `questionId` int(11) DEFAULT NULL,
  `answer` varchar(128) DEFAULT NULL,
  `surveyId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `createdat` date DEFAULT NULL,
  `updatedat` date DEFAULT NULL,
  `deletedat` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;

INSERT INTO `answers` (`id`, `questionId`, `answer`, `surveyId`, `userId`, `createdat`, `updatedat`, `deletedat`)
VALUES
	(1,1,'1',1,20,'2012-01-26','2012-01-26',NULL),
	(2,2,'2',1,20,'2012-01-26','2012-01-26',NULL),
	(3,3,'3',1,20,'2012-01-26','2012-01-26',NULL),
	(4,4,'4',1,20,'2012-01-26','2012-01-26',NULL),
	(5,5,'2',1,20,'2012-01-26','2012-01-26',NULL),
	(6,6,'3',1,20,'2012-01-26','2012-01-26',NULL),
	(7,7,'1',1,20,'2012-01-26','2012-01-26',NULL),
	(8,8,'1',1,20,'2012-01-26','2012-01-26',NULL),
	(9,9,'2',1,20,'2012-01-26','2012-01-26',NULL),
	(10,10,'1',1,20,'2012-01-26','2012-01-26',NULL),
	(11,1,'4',1,30,'2012-01-26','2012-01-26',NULL),
	(12,2,'3',1,30,'2012-01-26','2012-01-26',NULL),
	(13,3,'1',1,30,'2012-01-26','2012-01-26',NULL),
	(14,4,'1',1,30,'2012-01-26','2012-01-26',NULL),
	(15,5,'1',1,30,'2012-01-26','2012-01-26',NULL),
	(16,6,'3',1,30,'2012-01-26','2012-01-26',NULL),
	(17,7,'2',1,30,'2012-01-26','2012-01-26',NULL),
	(18,8,'4',1,30,'2012-01-26','2012-01-26',NULL),
	(19,9,'1',1,30,'2012-01-26','2012-01-26',NULL),
	(20,10,'1',1,30,'2012-01-26','2012-01-26',NULL),
	(21,1,'3',1,43,'2012-01-26','2012-01-26',NULL),
	(22,2,'1',1,43,'2012-01-26','2012-01-26',NULL),
	(23,3,'2',1,43,'2012-01-26','2012-01-26',NULL),
	(24,4,'4',1,43,'2012-01-26','2012-01-26',NULL),
	(25,5,'1',1,43,'2012-01-26','2012-01-26',NULL),
	(26,6,'2',1,43,'2012-01-26','2012-01-26',NULL),
	(27,7,'4',1,43,'2012-01-26','2012-01-26',NULL),
	(28,8,'1',1,43,'2012-01-26','2012-01-26',NULL),
	(29,9,'1',1,43,'2012-01-26','2012-01-26',NULL),
	(30,10,'4',1,43,'2012-01-26','2012-01-26',NULL),
	(31,1,'1',1,37,'2012-01-26','2012-01-26',NULL),
	(32,2,'2',1,37,'2012-01-26','2012-01-26',NULL),
	(33,3,'3',1,37,'2012-01-26','2012-01-26',NULL),
	(34,4,'4',1,37,'2012-01-26','2012-01-26',NULL),
	(35,5,'2',1,37,'2012-01-26','2012-01-26',NULL),
	(36,1,'1',1,37,'2012-01-26','2012-01-26',NULL),
	(37,2,'2',1,37,'2012-01-26','2012-01-26',NULL),
	(38,3,'3',1,37,'2012-01-26','2012-01-26',NULL),
	(39,4,'4',1,37,'2012-01-26','2012-01-26',NULL),
	(40,5,'2',1,37,'2012-01-26','2012-01-26',NULL);

/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table questions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `questions`;

CREATE TABLE `questions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `surveyId` int(11) DEFAULT NULL,
  `answer` int(11) DEFAULT NULL,
  `choices` varchar(50) DEFAULT NULL,
  `question` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;

INSERT INTO `questions` (`id`, `surveyId`, `answer`, `choices`, `question`)
VALUES
	(1,1,2,'answer 1,answer 2,answer 3,answer 4','question one'),
	(2,1,1,'first,second,third,fourth','question two'),
	(3,1,4,'uno,dos,thres,quattro','question 3'),
	(4,1,2,'I,II,III,IV','question IV'),
	(5,1,1,'5,55,555,5555','question FIVE'),
	(6,1,4,'hello,hi,yo,hola','question cinco'),
	(7,1,1,'7777777,777777,77777,7777','lucky Seven'),
	(8,1,2,'11111111,22222222,33333333,44444444','Eight yo'),
	(9,1,3,'yeah,yes,si,uhhuh','question #nine'),
	(10,1,1,'rofl,lmfao,haha,lol','10'),
	(16,2,1,'uh,kuhk,k,uhkuh','faewaewwef'),
	(17,3,1,'kuhukh,uhuhu,huhukqqqqgggggg,idsl','afweawef'),
	(18,4,1,'dsafddsafd,jjyg,jygjyg,jygjyg','afewfewffew'),
	(19,5,1,'answer,oijadf,oij,oij','question one'),
	(20,5,1,'lidufh,kuhdfskuhsdf,kuhdskuhsd,kuh','aifoweij'),
	(21,5,2,'awfe,kuhkuhn,nnnnn,jjjjjjs','fdawaa');

/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table questiontypes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `questiontypes`;

CREATE TABLE `questiontypes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `questiontypes` WRITE;
/*!40000 ALTER TABLE `questiontypes` DISABLE KEYS */;

INSERT INTO `questiontypes` (`id`, `type`)
VALUES
	(1,'multiple choice'),
	(2,'true or false'),
	(3,'input'),
	(4,'check box');

/*!40000 ALTER TABLE `questiontypes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table surveys
# ------------------------------------------------------------

DROP TABLE IF EXISTS `surveys`;

CREATE TABLE `surveys` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(25) DEFAULT NULL,
  `description` text,
  `userId` int(11) DEFAULT NULL,
  `createdat` date DEFAULT NULL,
  `updatedat` date DEFAULT NULL,
  `deletedat` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `surveys` WRITE;
/*!40000 ALTER TABLE `surveys` DISABLE KEYS */;

INSERT INTO `surveys` (`id`, `title`, `description`, `userId`, `createdat`, `updatedat`, `deletedat`)
VALUES
	(1,'new survey','enter description in here.',37,'2012-01-26','2012-01-26',NULL),
	(2,'asdf','wafeaw',37,'2012-01-26','2012-01-26',NULL),
	(3,'aefhuluh','ulfhaeuhwe',37,'2012-01-26','2012-01-26',NULL),
	(4,'afewfew','awfeawwefwaefwaef',37,'2012-01-26','2012-01-26',NULL),
	(5,'new survey','description',20,'2012-01-26','2012-01-26',NULL);

/*!40000 ALTER TABLE `surveys` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `firstName` varchar(25) DEFAULT NULL,
  `lastName` varchar(25) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `createdat` date DEFAULT NULL,
  `updatedat` date DEFAULT NULL,
  `deletedat` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `firstName`, `lastName`, `username`, `email`, `password`, `createdat`, `updatedat`, `deletedat`)
VALUES
	(13,'caleb','barrera','caleb222','cb@gmail.com','1382DC1EA3A1EE6CA8970ED35F39E82F53BDD6B2F77DFE5E7856A223DC9E32FBD799FCE16C027DC7F250B9B8B25087EECCACBC226778808825D6EA9E52F0A50C','2012-01-20','2012-01-20',NULL),
	(14,'Russel','Peters','rpeters','rpeters@gmail.com','F28A9BDE951571592CCEE61FD3A274D0','2012-01-20','2012-01-20',NULL),
	(16,'New','Guy','nguy','guy@hotmail.com','EA275C323850B1D893F885D45872B7F9','2012-01-20','2012-01-20',NULL),
	(17,'fred','jones','fjones','fjones@email.com','B7B58AC81B97305786540603C7F63513','2012-01-20','2012-01-20',NULL),
	(18,'jen','turner','jturner','jturner@ymail.com','83234657C5DF8232839AC8C0572E158D','2012-01-20','2012-01-20',NULL),
	(19,'holly','white','hwhite','hwhite@email.com','B97EDFC2BF43E61075DEB4611D44935D','2012-01-20','2012-01-20',NULL),
	(20,'new','user','user','nuser@email.com','83234657C5DF8232839AC8C0572E158D','2012-01-20','2012-01-20',NULL),
	(22,'first','last','test','test@email.com','83234657C5DF8232839AC8C0572E158D','2012-01-23','2012-01-23',NULL),
	(23,'yahoo','google','search','bing@gmail.com','FA92420C5BC09181725890E00CF9EC4D','2012-01-23','2012-01-23',NULL),
	(24,'first','last','flast','flast@gmail.com','83234657C5DF8232839AC8C0572E158D','2012-01-23','2012-01-23',NULL),
	(27,'jean','grey','jgrey','jgrey@hotmail.com','B305CADBB3BCE54F3AA59C64FEC00DEA','2012-01-24','2012-01-24',NULL),
	(28,'scott','summers','slim','ssummers@gmail.com','83234657C5DF8232839AC8C0572E158D','2012-01-24','2012-01-24',NULL),
	(29,'kurt','warner','kwarner','kwarner@yahoo.com','83234657C5DF8232839AC8C0572E158D','2012-01-24','2012-01-24',NULL),
	(30,'emma','frost','efrost','efrost@email.com','83234657C5DF8232839AC8C0572E158D','2012-01-25','2012-01-25',NULL),
	(31,'free','bird','fbird','fbird@fmail.com','83234657C5DF8232839AC8C0572E158D','2012-01-25','2012-01-25',NULL),
	(37,'Orcun','Tagtekin','Orcun','otagtekin@fullsail.com','B305CADBB3BCE54F3AA59C64FEC00DEA','2012-01-26','2012-01-26',NULL),
	(38,'monico','salvador','msalvador','msalvador@gmail.com','83234657C5DF8232839AC8C0572E158D','2012-01-26','2012-01-26',NULL),
	(39,'owiajef','aiojfsdoij','oaijwef','saodifj@ijd.com','83234657C5DF8232839AC8C0572E158D','2012-01-26','2012-01-26',NULL),
	(40,'afewuh','ksduh','fds','kuhds@ias.com','83234657C5DF8232839AC8C0572E158D','2012-01-26','2012-01-26',NULL),
	(41,'uewafhliuh','ulihsdiluh','oifwej','uihlsd@lukfhd.com','83234657C5DF8232839AC8C0572E158D','2012-01-26','2012-01-26',NULL),
	(42,'iaofjewioj','ijsldijf','jaifewj','ijdd@fhs.com','83234657C5DF8232839AC8C0572E158D','2012-01-26','2012-01-26',NULL),
	(43,'afwawaa','aaaa','oaijwe','eea@email.com','83234657C5DF8232839AC8C0572E158D','2012-01-26','2012-01-26',NULL),
	(44,'uhuhkuh','kuhkuh','dliafej','khdus@dkja.com','83234657C5DF8232839AC8C0572E158D','2012-01-26','2012-01-26',NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

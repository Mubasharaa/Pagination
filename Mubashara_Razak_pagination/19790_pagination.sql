/*
SQLyog Ultimate v12.5.0 (64 bit)
MySQL - 10.4.27-MariaDB : Database - pagination
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pagination` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `pagination`;

/*Table structure for table `posts` */

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `POST_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(50) NOT NULL,
  `Summary` text NOT NULL,
  `Description` longtext NOT NULL,
  `Author` longtext NOT NULL,
  PRIMARY KEY (`POST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `posts` */

insert  into `posts`(`POST_ID`,`TITLE`,`Summary`,`Description`,`Author`) values 
(1,'POST 1','Programmer life very difficult.','you work hard so you get fruit other wise not. ok got it','John Remy'),
(2,'POST 2','There comes a time','There comes a time when you lose motivation for coding because, at the moment, you can’t solve a particular problem.','John Remy'),
(3,'POST 3','ome code is not working','My experience working in a bespoke software development company ','Josh'),
(4,'POST 4','taught me the importance ',' That’s what online communities are for - you can find direct answers on how to fix your code or at least find ','Steph'),
(5,'POST 5','which is just a part of being human. ','So in case you’ve ever found yourself short of motivation, know that you’re not alone.','Joseph'),
(6,'POST 6','Let’s see how to keep going','Let’s see how to keep going and motivate yourself even when you face programming challenges:','Elon'),
(7,'POST 7','How you face challenges ','This way, you are both doing the work and holding yourself accountable because you want to enjoy the satisfaction of achieving results. ','Hary'),
(8,'POST 8','the satisfaction of achieving results. \r\n\r\n','Many young IT professionals prefer to handle programming issues independently, hoping that they would achieve the desired outcome without any external help','Guillaume Apollinaire'),
(9,'POST 9',' You can even reward yourself ','Maybe you experience issues with your code’s deployment, or it just keeps reporting bugs: whatever the matter, chances are that you’re not the first one to struggle with it.','Jovi’s'),
(10,'POST 10','This way, you','For this reason, it is crucial to be smart and seek assistance. The first instance can be your teammates because they know the project as well as you, and can often come up with solutions to your problems if they are mid- or senior-level developers.','HOPH'),
(11,'POST 11','what you','Another suggestion is to share a snippet of your code or a full section on software developer communities like GitHub, StackOverflow, HackersNews, HashNode etc. Describe which functions or code lines are broken and what you’ve tried already to fix them. ','Serem'),
(12,'POST 12','let see','Instead of busting your head around the same problem over and over again throughout the course of the day, just get some fresh air. You can literally get up and go for a walk.','Neil'),
(13,'POST 13','sure no','This will set your body in motion and trigger blood and oxygen flow, which will keep you awake and hopefully increase your motivation','Michael Connelly'),
(14,'POST 14','yourself accountable','Alternatively, you can just go on your balcony and deeply inhale some fresh air. ','Julia Quinn'),
(15,'POST 15','because you want to enjoy','Filling your lungs with fresh air will energise and rejuvenate your whole being. ','Robyn Carr'),
(16,'POST 16','An enormous and time-consuming','Nowadays, with the popular hustle culture that promotes constant working, it is considered a luxury to have a couple of minutes to disconnect from work.','. Lee Child'),
(17,'POST 17','It is in the very ','Especially during Covid-19 lockdowns and remote work, it is vital to deliberately schedule a few minutes and just breathe the work tension out. ','Harlan Coben'),
(18,'POST 18','change perspectives ','If you’ve tried everything so far and nothing seems to work for you, just go to bed and sleep on it.','John Grisham'),
(19,'POST 19','languages com','Our brain has excellent problem-solving skills when we give it the well-deserved rest it craves instead of drinking coffee to stay awake.','Stuart Woods'),
(20,'POST 20','problems down ','These magic brain powers are well researched and evidence-based.','David');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

/*
SQLyog Trial v12.11 (64 bit)
MySQL - 5.6.21 : Database - mumscrum
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mumscrum` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `mumscrum`;

/*Table structure for table `developer` */

DROP TABLE IF EXISTS `developer`;

CREATE TABLE `developer` (
  `endDate` date DEFAULT NULL,
  `id` int(11) NOT NULL,
  `startDate` date DEFAULT NULL,
  `roleId` int(11) NOT NULL,
  PRIMARY KEY (`roleId`),
  CONSTRAINT `FK_i0p85rh1cdk2re4nelj3mo266` FOREIGN KEY (`roleId`) REFERENCES `role` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `developer` */

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `birthDate` date DEFAULT NULL,
  `dateOfJoin` date DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `empcode` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `salary` double NOT NULL,
  `ssnNo` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `upperPos_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_hsj8ejx3hmv4ohdxjjrc9oyxn` (`upperPos_id`),
  CONSTRAINT `FK_hsj8ejx3hmv4ohdxjjrc9oyxn` FOREIGN KEY (`upperPos_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `employee` */

insert  into `employee`(`id`,`address`,`birthDate`,`dateOfJoin`,`department`,`designation`,`email`,`empcode`,`enabled`,`firstname`,`gender`,`lastname`,`mobile`,`password`,`salary`,`ssnNo`,`username`,`upperPos_id`) values (1,'1000 N. 4th Street','2016-07-05','2016-03-05','Dept','Desg','masudjbd@gmail.com','52557','','product ','M','owner','17027632261','$2a$10$CtSxnoFhXPsMFeJOX8/CF.Owid/z3d43GpJQchNQ6pu/HfG3BIdZu',0,'6665151','powner',NULL),(2,'1000 N. 4th Street','2016-06-05','2016-06-05','Dept','Desg','masudjbd@gmail.com','001','','scrum','M','master','17027632261','$2a$10$CtSxnoFhXPsMFeJOX8/CF.Owid/z3d43GpJQchNQ6pu/HfG3BIdZu',0,'545454','smaster',NULL),(3,'1000 N. 4th Street','2016-07-05','2016-03-05','Dept','Desg','masudjbd@gmail.com','52557','','developer','M','dev','17027632261','$2a$10$CtSxnoFhXPsMFeJOX8/CF.Owid/z3d43GpJQchNQ6pu/HfG3BIdZu',0,'6665151','developer',NULL),(4,'1000 N. 4th Street','2016-07-05','2016-03-05','Dept','Desg','masudjbd@gmail.com','52557','','tester','M','test','17027632261','$2a$10$CtSxnoFhXPsMFeJOX8/CF.Owid/z3d43GpJQchNQ6pu/HfG3BIdZu',0,'6665151','tester',NULL),(5,'1000 N. 4th Street','2016-07-05','2016-03-05','Dept','Desg','masudjbd@gmail.com','52557','','admin','M','adm','17027632261','$2a$10$CtSxnoFhXPsMFeJOX8/CF.Owid/z3d43GpJQchNQ6pu/HfG3BIdZu',0,'6665151','admin',NULL),(6,'1000 N. 4th Street','2016-07-05','2016-03-05','Dept','Desg','masudjbd@gmail.com','52557','','Masudur','M','Rahman','17027632261','$2a$10$CtSxnoFhXPsMFeJOX8/CF.Owid/z3d43GpJQchNQ6pu/HfG3BIdZu',0,'6665151','masud',NULL),(7,'1000 N. 4th Street','2016-06-05','2016-06-05','Dept','Desg','masudjbd@gmail.com','52557','','Masudur','M','Rahman','17027632261','$2a$10$CtSxnoFhXPsMFeJOX8/CF.Owid/z3d43GpJQchNQ6pu/HfG3BIdZu',4444,'6665151','rhyhan88',NULL),(10,'1000 N. 4th Street','2015-11-05','2016-08-05','Dept','Desg','habib@gmail.com','51515','','Habib','M','Rahman','5514','$2a$10$khtbSR00iox09qLtLArYuugJyoO3Pthjv4c50DH6esh7UaqbZxIMq',180000,'6665151','habib',NULL);

/*Table structure for table `employee_role` */

DROP TABLE IF EXISTS `employee_role`;

CREATE TABLE `employee_role` (
  `Employee_id` int(11) NOT NULL,
  `roles_roleId` int(11) NOT NULL,
  KEY `FK_1uqrdpgkyeargl9kxjtd72036` (`roles_roleId`),
  KEY `FK_4vqaddmrsrw29lq94bqwhfpo6` (`Employee_id`),
  CONSTRAINT `FK_1uqrdpgkyeargl9kxjtd72036` FOREIGN KEY (`roles_roleId`) REFERENCES `role` (`roleId`),
  CONSTRAINT `FK_4vqaddmrsrw29lq94bqwhfpo6` FOREIGN KEY (`Employee_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `employee_role` */

insert  into `employee_role`(`Employee_id`,`roles_roleId`) values (1,2),(2,3),(3,4),(4,5),(5,1),(6,1),(7,2),(7,3),(10,4);

/*Table structure for table `employee_roles_relation` */

DROP TABLE IF EXISTS `employee_roles_relation`;

CREATE TABLE `employee_roles_relation` (
  `employee_id` int(11) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`),
  KEY `FK_4168n7o67hi1d24ea98wmmjy6` (`employee_id`),
  CONSTRAINT `FK_4168n7o67hi1d24ea98wmmjy6` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  CONSTRAINT `FK_jluu1um8vdndvtvid4e9l4iby` FOREIGN KEY (`role_id`) REFERENCES `role` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `employee_roles_relation` */

/*Table structure for table `employeevacation` */

DROP TABLE IF EXISTS `employeevacation`;

CREATE TABLE `employeevacation` (
  `leaveId` int(11) NOT NULL AUTO_INCREMENT,
  `availabeleave` int(11) NOT NULL,
  `enddate` date DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `leavetype_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`leaveId`),
  KEY `FK_pgewjmd9gkxn1y6ycdj589wav` (`employee_id`),
  KEY `FK_np6jy4v53hhdwpbttvxgpw2yc` (`leavetype_Id`),
  CONSTRAINT `FK_np6jy4v53hhdwpbttvxgpw2yc` FOREIGN KEY (`leavetype_Id`) REFERENCES `leavetype` (`Id`),
  CONSTRAINT `FK_pgewjmd9gkxn1y6ycdj589wav` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `employeevacation` */

/*Table structure for table `insurance` */

DROP TABLE IF EXISTS `insurance`;

CREATE TABLE `insurance` (
  `inId` int(11) NOT NULL AUTO_INCREMENT,
  `enddate` date DEFAULT NULL,
  `payAmount` double NOT NULL,
  `startdate` date DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `insurancetype_typeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`inId`),
  KEY `FK_ny7h43tykl9xbwfr1l9k86feg` (`employee_id`),
  KEY `FK_92kaba9eswu7kuejxu57nd0ax` (`insurancetype_typeId`),
  CONSTRAINT `FK_92kaba9eswu7kuejxu57nd0ax` FOREIGN KEY (`insurancetype_typeId`) REFERENCES `insurancetype` (`typeId`),
  CONSTRAINT `FK_ny7h43tykl9xbwfr1l9k86feg` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `insurance` */

insert  into `insurance`(`inId`,`enddate`,`payAmount`,`startdate`,`employee_id`,`insurancetype_typeId`) values (1,'2015-11-05',214500,'2015-01-05',1,1),(2,'2015-11-05',214500,'2015-01-05',1,1),(3,'2015-06-05',245000,'2015-01-05',1,1);

/*Table structure for table `insurancetype` */

DROP TABLE IF EXISTS `insurancetype`;

CREATE TABLE `insurancetype` (
  `typeId` int(11) NOT NULL AUTO_INCREMENT,
  `companyName` varchar(255) DEFAULT NULL,
  `typeName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `insurancetype` */

insert  into `insurancetype`(`typeId`,`companyName`,`typeName`) values (1,'Alico Group','Health Insurance');

/*Table structure for table `leavetype` */

DROP TABLE IF EXISTS `leavetype`;

CREATE TABLE `leavetype` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `defaultvalue` int(11) NOT NULL,
  `typename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `leavetype` */

/*Table structure for table `productbacklog` */

DROP TABLE IF EXISTS `productbacklog`;

CREATE TABLE `productbacklog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createDate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_565vukh6h72rj8xe6sbfc35vy` (`owner_id`),
  CONSTRAINT `FK_565vukh6h72rj8xe6sbfc35vy` FOREIGN KEY (`owner_id`) REFERENCES `role` (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `productbacklog` */

insert  into `productbacklog`(`id`,`createDate`,`name`,`owner_id`) values (1,'2016-07-05','Spring MVC Framework ',NULL);

/*Table structure for table `productowner` */

DROP TABLE IF EXISTS `productowner`;

CREATE TABLE `productowner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `productowner` */

/*Table structure for table `releasebacklog` */

DROP TABLE IF EXISTS `releasebacklog`;

CREATE TABLE `releasebacklog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createDate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `productBacklog_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_5bxi17suui5sgehenndotky18` (`productBacklog_id`),
  CONSTRAINT `FK_5bxi17suui5sgehenndotky18` FOREIGN KEY (`productBacklog_id`) REFERENCES `productbacklog` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `releasebacklog` */

insert  into `releasebacklog`(`id`,`createDate`,`name`,`productBacklog_id`) values (1,'2016-07-05','Release Backlog A',1);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `roleId` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `role` */

/*Table structure for table `scrummaster` */

DROP TABLE IF EXISTS `scrummaster`;

CREATE TABLE `scrummaster` (
  `endDate` date DEFAULT NULL,
  `id` int(11) NOT NULL,
  `startDate` date DEFAULT NULL,
  `roleId` int(11) NOT NULL,
  PRIMARY KEY (`roleId`),
  CONSTRAINT `FK_fpd643ipjehn5rnf00954lpvc` FOREIGN KEY (`roleId`) REFERENCES `role` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `scrummaster` */

/*Table structure for table `sprint` */

DROP TABLE IF EXISTS `sprint`;

CREATE TABLE `sprint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createDate` date DEFAULT NULL,
  `sprintName` varchar(255) DEFAULT NULL,
  `releaseBacklog_id` int(11) DEFAULT NULL,
  `scrumMaster_roleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_j80d33ajgm28soeq8uilhe9n1` (`releaseBacklog_id`),
  KEY `FK_grslosamh1j4h02a2hkk56579` (`scrumMaster_roleId`),
  CONSTRAINT `FK_grslosamh1j4h02a2hkk56579` FOREIGN KEY (`scrumMaster_roleId`) REFERENCES `scrummaster` (`roleId`),
  CONSTRAINT `FK_j80d33ajgm28soeq8uilhe9n1` FOREIGN KEY (`releaseBacklog_id`) REFERENCES `releasebacklog` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `sprint` */

insert  into `sprint`(`id`,`createDate`,`sprintName`,`releaseBacklog_id`,`scrumMaster_roleId`) values (1,'2016-07-05','Sprint A',1,NULL);

/*Table structure for table `user_roles` */

DROP TABLE IF EXISTS `user_roles`;

CREATE TABLE `user_roles` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `ROLE` varchar(45) NOT NULL,
  PRIMARY KEY (`user_role_id`),
  UNIQUE KEY `uni_username_role` (`ROLE`,`username`),
  KEY `fk_username_idx` (`username`),
  CONSTRAINT `fk_username` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `user_roles` */

insert  into `user_roles`(`user_role_id`,`username`,`ROLE`) values (3,'admin','ROLE_ADMIN'),(2,'mkyong','ROLE_ADMIN'),(6,'developer','ROLE_DEVELOPER'),(4,'powner','ROLE_PRODUCT_OWNER'),(5,'smaster','ROLE_SCRUM_MASTER'),(7,'tester','ROLE_TESTER'),(1,'mkyong','ROLE_USER');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `username` varchar(45) NOT NULL,
  `password` varchar(60) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`username`,`password`,`enabled`) values ('admin','$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.',1),('developer','$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.',1),('mkyong','$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.',1),('powner','$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.',1),('smaster','$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.',1),('tester','$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.',1);

/*Table structure for table `userstory` */

DROP TABLE IF EXISTS `userstory`;

CREATE TABLE `userstory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createDate` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `developerEstimateTime` double NOT NULL,
  `developerRemainingTime` double NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `testerEstimateTime` double NOT NULL,
  `testerRemainingTime` double NOT NULL,
  `developer_roleId` int(11) DEFAULT NULL,
  `productBacklog_id` int(11) DEFAULT NULL,
  `productOwner_id` int(11) DEFAULT NULL,
  `releaseBacklog_id` int(11) DEFAULT NULL,
  `sprint_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_9jxanud6par4n7rj5jy1rogts` (`developer_roleId`),
  KEY `FK_1gl6ghal4vqf0j0k22hu16abi` (`productBacklog_id`),
  KEY `FK_jjir3h2oxeqfigahc6tn4npd2` (`productOwner_id`),
  KEY `FK_4uekjwcvbdoe8x4sw6qubhmju` (`releaseBacklog_id`),
  KEY `FK_8e7xym4ydd9nd6ct7ewr15blk` (`sprint_id`),
  CONSTRAINT `FK_1gl6ghal4vqf0j0k22hu16abi` FOREIGN KEY (`productBacklog_id`) REFERENCES `productbacklog` (`id`),
  CONSTRAINT `FK_4uekjwcvbdoe8x4sw6qubhmju` FOREIGN KEY (`releaseBacklog_id`) REFERENCES `releasebacklog` (`id`),
  CONSTRAINT `FK_8e7xym4ydd9nd6ct7ewr15blk` FOREIGN KEY (`sprint_id`) REFERENCES `sprint` (`id`),
  CONSTRAINT `FK_9jxanud6par4n7rj5jy1rogts` FOREIGN KEY (`developer_roleId`) REFERENCES `developer` (`roleId`),
  CONSTRAINT `FK_jjir3h2oxeqfigahc6tn4npd2` FOREIGN KEY (`productOwner_id`) REFERENCES `productowner` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userstory` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

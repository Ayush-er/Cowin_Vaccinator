/*
SQLyog Community Edition- MySQL GUI v6.03
Host - 5.0.22-community-nt : Database - covid
*********************************************************************
Server version : 5.0.22-community-nt
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `covid`;

USE `covid`;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `admin` */

CREATE TABLE `admin` (
  `Name` varchar(50) default NULL,
  `Email` varchar(50) default NULL,
  `Password` varchar(50) default NULL,
  `S.No.` int(50) NOT NULL auto_increment,
  UNIQUE KEY `S.No.` (`S.No.`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `hospital` */

CREATE TABLE `hospital` (
  `Hname` varchar(20) default NULL,
  `Hpin` int(11) default NULL,
  `Hstate` varchar(20) default NULL,
  `Hdistrict` varchar(20) default NULL,
  `Hmail` varchar(30) default NULL,
  `Hpass` varchar(10) default NULL,
  `Hslots` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `user` */

CREATE TABLE `user` (
  `Name` varchar(20) default NULL,
  `password` varchar(10) default NULL,
  `username` varchar(30) default NULL,
  `aadharno` varchar(14) default NULL,
  `conpass` varchar(10) default NULL,
  `User_ID` int(11) NOT NULL auto_increment,
  `dob` varchar(11) default NULL,
  `dose` int(11) default NULL,
  `Hname` varchar(20) default NULL,
  PRIMARY KEY  (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
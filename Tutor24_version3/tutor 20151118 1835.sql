-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.6.15


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema tutor
--

CREATE DATABASE IF NOT EXISTS tutor;
USE tutor;

--
-- Definition of table `tbllanguage`
--

DROP TABLE IF EXISTS `tbllanguage`;
CREATE TABLE `tbllanguage` (
  `LanguageId` int(11) NOT NULL AUTO_INCREMENT,
  `LanguageName` varchar(100) NOT NULL,
  PRIMARY KEY (`LanguageId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllanguage`
--

/*!40000 ALTER TABLE `tbllanguage` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbllanguage` ENABLE KEYS */;


--
-- Definition of table `tblstudent`
--

DROP TABLE IF EXISTS `tblstudent`;
CREATE TABLE `tblstudent` (
  `StudentId` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(80) NOT NULL,
  `Password` varchar(80) NOT NULL,
  `FirstName` varchar(80) NOT NULL,
  `LastName` varchar(80) NOT NULL,
  `DateOfBirth` varchar(80) DEFAULT NULL,
  `Sex` varchar(50) NOT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `PostalCode` varchar(50) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `StudentType` varchar(50) NOT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Class` varchar(100) DEFAULT NULL,
  `LessonType` varchar(50) NOT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `Image` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`StudentId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudent`
--



--
-- Definition of table `tblstudentmessage`
--

DROP TABLE IF EXISTS `tblstudentmessage`;
CREATE TABLE `tblstudentmessage` (
  `StudentMessageId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `StudentId` int(11) NOT NULL,
  `Message` varchar(800) DEFAULT NULL,
  `TutorId` int(11) unsigned NOT NULL,
  PRIMARY KEY (`StudentMessageId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudentmessage`
--




--
-- Definition of table `tblsubject`
--

DROP TABLE IF EXISTS `tblsubject`;
CREATE TABLE `tblsubject` (
  `SubjectId` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  PRIMARY KEY (`SubjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubject`
--

/*!40000 ALTER TABLE `tblsubject` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsubject` ENABLE KEYS */;


--
-- Definition of table `tbltutor`
--

DROP TABLE IF EXISTS `tbltutor`;
CREATE TABLE `tbltutor` (
  `TutorId` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(80) NOT NULL,
  `Password` varchar(80) NOT NULL,
  `FirstName` varchar(80) NOT NULL,
  `LastName` varchar(80) NOT NULL,
  `DateOfBirth` varchar(80) DEFAULT NULL,
  `Sex` varchar(50) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `PostalCode` varchar(50) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `MembershipType` varchar(50) DEFAULT NULL,
  `Education` int(11) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `a69m` tinyint(1) DEFAULT NULL,
  `a69t` tinyint(1) DEFAULT NULL,
  `a69w` tinyint(1) DEFAULT NULL,
  `a69th` tinyint(1) DEFAULT NULL,
  `a69f` tinyint(1) DEFAULT NULL,
  `a69sa` tinyint(1) DEFAULT NULL,
  `a69su` tinyint(1) DEFAULT NULL,
  `a912m` tinyint(1) DEFAULT NULL,
  `a912t` tinyint(1) DEFAULT NULL,
  `a912w` tinyint(1) DEFAULT NULL,
  `a912th` tinyint(1) DEFAULT NULL,
  `a912f` tinyint(1) DEFAULT NULL,
  `a912sa` tinyint(1) DEFAULT NULL,
  `a912su` tinyint(1) DEFAULT NULL,
  `p123m` tinyint(1) DEFAULT NULL,
  `p123t` tinyint(1) DEFAULT NULL,
  `p123w` tinyint(1) DEFAULT NULL,
  `p123th` tinyint(1) DEFAULT NULL,
  `p123f` tinyint(1) DEFAULT NULL,
  `p123sa` tinyint(1) DEFAULT NULL,
  `p123su` tinyint(1) DEFAULT NULL,
  `p36m` tinyint(1) DEFAULT NULL,
  `p36t` tinyint(1) DEFAULT NULL,
  `p36w` tinyint(1) DEFAULT NULL,
  `p36th` tinyint(1) DEFAULT NULL,
  `p36f` tinyint(1) DEFAULT NULL,
  `p36sa` tinyint(1) DEFAULT NULL,
  `p36su` tinyint(1) DEFAULT NULL,
  `p69m` tinyint(1) DEFAULT NULL,
  `p69t` tinyint(1) DEFAULT NULL,
  `p69w` tinyint(1) DEFAULT NULL,
  `p69th` tinyint(1) DEFAULT NULL,
  `p69f` tinyint(1) DEFAULT NULL,
  `p69sa` tinyint(1) DEFAULT NULL,
  `p69su` tinyint(1) DEFAULT NULL,
  `SubjectExperience` varchar(200) DEFAULT NULL,
  `SubjectsOffered` varchar(200) DEFAULT NULL,
  `LanguageAbility` varchar(200) DEFAULT NULL,
  `Rate` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`TutorId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltutor`
--



--
-- Definition of table `tbltutoravailability`
--

DROP TABLE IF EXISTS `tbltutoravailability`;
CREATE TABLE `tbltutoravailability` (
  `AvailabilityId` int(11) NOT NULL AUTO_INCREMENT,
  `TutorId` int(11) NOT NULL,
  `Day` varchar(50) DEFAULT NULL,
  `Time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`AvailabilityId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltutoravailability`
--

/*!40000 ALTER TABLE `tbltutoravailability` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltutoravailability` ENABLE KEYS */;


--
-- Definition of table `tbltutorlanguage`
--

DROP TABLE IF EXISTS `tbltutorlanguage`;
CREATE TABLE `tbltutorlanguage` (
  `TutorId` int(11) NOT NULL,
  `LanguageId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltutorlanguage`
--

/*!40000 ALTER TABLE `tbltutorlanguage` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltutorlanguage` ENABLE KEYS */;


--
-- Definition of table `tbltutormessage`
--

DROP TABLE IF EXISTS `tbltutormessage`;
CREATE TABLE `tbltutormessage` (
  `TutorMessageId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `TutorId` int(11) NOT NULL,
  `Message` varchar(800) DEFAULT NULL,
  `StudentId` int(11) unsigned NOT NULL,
  PRIMARY KEY (`TutorMessageId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltutormessage`
--




--
-- Definition of table `tbltutorsubjects`
--

DROP TABLE IF EXISTS `tbltutorsubjects`;
CREATE TABLE `tbltutorsubjects` (
  `TutorId` int(11) NOT NULL,
  `SubjectId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltutorsubjects`
--

/*!40000 ALTER TABLE `tbltutorsubjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltutorsubjects` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

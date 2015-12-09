-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.28


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
  `Class` varchar(100) DEFAULT '',
  `LessonType` varchar(50) NOT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `Image` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`StudentId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudent`
--

/*!40000 ALTER TABLE `tblstudent` DISABLE KEYS */;
INSERT INTO `tblstudent` (`StudentId`,`Email`,`Password`,`FirstName`,`LastName`,`DateOfBirth`,`Sex`,`City`,`Address`,`PostalCode`,`Phone`,`StudentType`,`Subject`,`Class`,`LessonType`,`Description`,`Image`) VALUES 
 (5,'maik-steven@hotmail.com','maik654321','Maik','Steven','7-3-1982','M','City','Address','10002','9999999999','M','Computer Science','MCA','I','Need tutor urgently',NULL),
 (6,'a','a','a','c','07/05/1985','M','Bern','Address','7777','76458932','M','Computer Science',NULL,'I','asdad',NULL);
/*!40000 ALTER TABLE `tblstudent` ENABLE KEYS */;


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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudentmessage`
--

/*!40000 ALTER TABLE `tblstudentmessage` DISABLE KEYS */;
INSERT INTO `tblstudentmessage` (`StudentMessageId`,`StudentId`,`Message`,`TutorId`) VALUES 
 (4,5,'I am very experienced tutor for Computer graphics. If interested, please contact.',11),
 (5,5,'i can be best tutor for you',11),
 (6,6,'aaaaa',11);
/*!40000 ALTER TABLE `tblstudentmessage` ENABLE KEYS */;


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
  `a69m` varchar(10) DEFAULT NULL,
  `a69t` varchar(10) DEFAULT NULL,
  `a69w` varchar(10) DEFAULT NULL,
  `a69th` varchar(10) DEFAULT NULL,
  `a69f` varchar(10) DEFAULT NULL,
  `a69sa` varchar(10) DEFAULT NULL,
  `a69su` varchar(10) DEFAULT NULL,
  `a912m` varchar(10) DEFAULT NULL,
  `a912t` varchar(10) DEFAULT NULL,
  `a912w` varchar(10) DEFAULT NULL,
  `a912th` varchar(10) DEFAULT NULL,
  `a912f` varchar(10) DEFAULT NULL,
  `a912sa` varchar(10) DEFAULT NULL,
  `a912su` varchar(10) DEFAULT NULL,
  `p123m` varchar(10) DEFAULT NULL,
  `p123t` varchar(10) DEFAULT NULL,
  `p123w` varchar(10) DEFAULT NULL,
  `p123th` varchar(10) DEFAULT NULL,
  `p123f` varchar(10) DEFAULT NULL,
  `p123sa` varchar(10) DEFAULT NULL,
  `p123su` varchar(10) DEFAULT NULL,
  `p36m` varchar(10) DEFAULT NULL,
  `p36t` varchar(10) DEFAULT NULL,
  `p36w` varchar(10) DEFAULT NULL,
  `p36th` varchar(10) DEFAULT NULL,
  `p36f` varchar(10) DEFAULT NULL,
  `p36sa` varchar(10) DEFAULT NULL,
  `p36su` varchar(10) DEFAULT NULL,
  `p69m` varchar(10) DEFAULT NULL,
  `p69t` varchar(10) DEFAULT NULL,
  `p69w` varchar(10) DEFAULT NULL,
  `p69th` varchar(10) DEFAULT NULL,
  `p69f` varchar(10) DEFAULT NULL,
  `p69sa` varchar(10) DEFAULT NULL,
  `p69su` varchar(10) DEFAULT NULL,
  `SubjectExperience` varchar(200) DEFAULT NULL,
  `SubjectsOffered` varchar(200) DEFAULT NULL,
  `LanguageAbility` varchar(200) DEFAULT NULL,
  `Rate` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`TutorId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltutor`
--

/*!40000 ALTER TABLE `tbltutor` DISABLE KEYS */;
INSERT INTO `tbltutor` (`TutorId`,`Email`,`Password`,`FirstName`,`LastName`,`DateOfBirth`,`Sex`,`City`,`Address`,`PostalCode`,`Phone`,`MembershipType`,`Education`,`Description`,`a69m`,`a69t`,`a69w`,`a69th`,`a69f`,`a69sa`,`a69su`,`a912m`,`a912t`,`a912w`,`a912th`,`a912f`,`a912sa`,`a912su`,`p123m`,`p123t`,`p123w`,`p123th`,`p123f`,`p123sa`,`p123su`,`p36m`,`p36t`,`p36w`,`p36th`,`p36f`,`p36sa`,`p36su`,`p69m`,`p69t`,`p69w`,`p69th`,`p69f`,`p69sa`,`p69su`,`SubjectExperience`,`SubjectsOffered`,`LanguageAbility`,`Rate`) VALUES 
 (19,'b','b','Maik','Stefen','Birthday ','M','Bern','777777777','7777777','777777777','I',1,'sdsdfsfsf','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','1','0','0','0','Computer','Computer','1','30chf');
/*!40000 ALTER TABLE `tbltutor` ENABLE KEYS */;


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
  `German` varchar(10) DEFAULT NULL,
  `French` varchar(10) DEFAULT NULL,
  `Italian` varchar(10) DEFAULT NULL,
  `English` varchar(10) DEFAULT NULL,
  `Romanic` varchar(10) DEFAULT NULL,
  `Spanish` varchar(10) DEFAULT NULL,
  `Portuguese` varchar(10) DEFAULT NULL,
  `Serbian` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltutorlanguage`
--

/*!40000 ALTER TABLE `tbltutorlanguage` DISABLE KEYS */;
INSERT INTO `tbltutorlanguage` (`TutorId`,`German`,`French`,`Italian`,`English`,`Romanic`,`Spanish`,`Portuguese`,`Serbian`) VALUES 
 (11,'1','1','1','1','1','1','1','1'),
 (18,'0','0','1','0','0','0','0','0'),
 (19,'1','1','1','0','0','0','0','0');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltutormessage`
--

/*!40000 ALTER TABLE `tbltutormessage` DISABLE KEYS */;
INSERT INTO `tbltutormessage` (`TutorMessageId`,`TutorId`,`Message`,`StudentId`) VALUES 
 (9,11,'I need a very good tutor for Java beans',5),
 (10,11,'Hello i want a tution from u',5),
 (11,11,'qqqqq',6);
/*!40000 ALTER TABLE `tbltutormessage` ENABLE KEYS */;


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

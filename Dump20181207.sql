CREATE DATABASE  IF NOT EXISTS `utility` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `utility`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: utility
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `data_recharge`
--

DROP TABLE IF EXISTS `data_recharge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_recharge` (
  `operator` varchar(15) NOT NULL,
  `offer_details` varchar(200) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_recharge`
--

LOCK TABLES `data_recharge` WRITE;
/*!40000 ALTER TABLE `data_recharge` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_recharge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dth`
--

DROP TABLE IF EXISTS `dth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dth` (
  `card_no` varchar(10) NOT NULL,
  `offer` varchar(200) NOT NULL,
  `operator` varchar(15) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`card_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dth`
--

LOCK TABLES `dth` WRITE;
/*!40000 ALTER TABLE `dth` DISABLE KEYS */;
/*!40000 ALTER TABLE `dth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `electricity`
--

DROP TABLE IF EXISTS `electricity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `electricity` (
  `bill` int(11) NOT NULL,
  `customer_id` varchar(20) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electricity`
--

LOCK TABLES `electricity` WRITE;
/*!40000 ALTER TABLE `electricity` DISABLE KEYS */;
INSERT INTO `electricity` VALUES (400,'1001'),(550,'1002'),(600,'1003'),(700,'1004'),(1000,'1005');
/*!40000 ALTER TABLE `electricity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landline`
--

DROP TABLE IF EXISTS `landline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `landline` (
  `user_id` varchar(15) NOT NULL,
  `bill` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landline`
--

LOCK TABLES `landline` WRITE;
/*!40000 ALTER TABLE `landline` DISABLE KEYS */;
INSERT INTO `landline` VALUES ('08738238066',1500),('08738238750',1500),('08738239698',1000);
/*!40000 ALTER TABLE `landline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metro`
--

DROP TABLE IF EXISTS `metro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metro` (
  `state` varchar(20) NOT NULL,
  `card_no` varchar(20) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`card_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metro`
--

LOCK TABLES `metro` WRITE;
/*!40000 ALTER TABLE `metro` DISABLE KEYS */;
/*!40000 ALTER TABLE `metro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mobile`
--

DROP TABLE IF EXISTS `mobile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mobile` (
  `state` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL,
  `operator` varchar(30) NOT NULL,
  `offer_details` varchar(200) NOT NULL,
  `pre_post_paid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobile`
--

LOCK TABLES `mobile` WRITE;
/*!40000 ALTER TABLE `mobile` DISABLE KEYS */;
INSERT INTO `mobile` VALUES ('Delhi NCR',15,'Airtel','Full talktime validity 2 days','prepaid'),('Delhi NCR',25,'Airtel','Full talktime validity 3 days- 5 free local sms -1day free sms validity','prepaid'),('Delhi NCR',55,'Airtel','Full talktime validity 5 days- 5 free local sms -1day free sms validity','prepaid'),('Delhi NCR',65,'Airtel','Full talktime validity 28 days- 5 free local sms -1day free sms validity-applicable only for 4g','prepaid'),('Delhi NCR',150,'Airtel','Full talktime validity unlimited days- applicable only for 4g','prepaid'),('Delhi NCR',198,'Airtel','Full talktime validity unlimited days- 5 free local sms and national sms-2days free sms validity','prepaid'),('Delhi NCR',500,'Airtel','Full talktime validity unlimite days','prepaid'),('Delhi NCR',555,'Airtel','Full talktime validity unlimited days- 5 free local sms -3day free sms validity','prepaid'),('Delhi NCR',15,'Jio','Full talktime validity 2 days','prepaid'),('Delhi NCR',25,'Jio','Full talktime validity 3 days- 5 free local sms -1day free sms validity','prepaid'),('Delhi NCR',55,' Jio','Full talktime validity 5 days- 5 free local sms -1day free sms validity','prepaid'),('Delhi NCR',65,' Jio','Full talktime validity 28 days- 5 free local sms -1day free sms validity-applicable only for 4g','prepaid'),('Delhi NCR',150,' Jio','Full talktime validity unlimited days- applicable only for 4g','prepaid'),('Delhi NCR',198,' Jio','Full talktime validity unlimited days- 5 free local sms and national sms-2days free sms validity','prepaid'),('Delhi NCR',500,' Jio','Full talktime validity unlimite days','prepaid'),('Delhi NCR',555,' Jio','Full talktime validity unlimited days- 5 free local sms -3day free sms validity','prepaid'),('Delhi NCR',15,'BSNL','Full talktime validity 2 days','prepaid'),('Delhi NCR',25,'BSNL','Full talktime validity 3 days- 5 free local sms -1day free sms validity','prepaid'),('Delhi NCR',55,' BSNL','Full talktime validity 5 days- 5 free local sms -1day free sms validity','prepaid'),('Delhi NCR',65,' BSNL','Full talktime validity 28 days- 5 free local sms -1day free sms validity-applicable only for 4g','prepaid'),('Delhi NCR',150,'BSNL','Full talktime validity unlimited days- applicable only for 4g','prepaid'),('Delhi NCR',198,' BSNL','Full talktime validity unlimited days- 5 free local sms and national sms-2days free sms validity','prepaid'),('Delhi NCR',500,' BSNL','Full talktime validity unlimite days','prepaid'),('Delhi NCR',555,' BSNL','Full talktime validity unlimited days- 5 free local sms -3day free sms validity','prepaid'),('Delhi NCR',15,'Vodafone','Full talktime validity 2 days','prepaid'),('Delhi NCR',25,'Vodafone','Full talktime validity 3 days- 5 free local sms -1day free sms validity','prepaid'),('Delhi NCR',55,'Vodafone','Full talktime validity 5 days- 5 free local sms -1day free sms validity','prepaid'),('Delhi NCR',65,'Vodafone','Full talktime validity 28 days- 5 free local sms -1day free sms validity-applicable only for 4g','prepaid'),('Delhi NCR',150,'Vodafone','Full talktime validity unlimited days- applicable only for 4g','prepaid'),('Delhi NCR',198,'Vodafone','Full talktime validity unlimited days- 5 free local sms and national sms-2days free sms validity','prepaid'),('Delhi NCR',500,' Vodafone','Full talktime validity unlimite days','prepaid'),('Delhi NCR',555,' Vodafone','Full talktime validity unlimited days- 5 free local sms -3day free sms validity','prepaid'),('Chennai',15,'Airtel','Full talktime validity 2 days','prepaid'),('Chennai',25,'Airtel','Full talktime validity 3 days- 5 free local sms -1day free sms validity','prepaid'),('Chennai',55,'Airtel','Full talktime validity 5 days- 5 free local sms -1day free sms validity','prepaid'),('Chennai',65,'Airtel','Full talktime validity 28 days- 5 free local sms -1day free sms validity-applicable only for 4g','prepaid'),('Chennai',150,'Airtel','Full talktime validity unlimited days- applicable only for 4g','prepaid'),('Chennai',198,'Airtel','Full talktime validity unlimited days- 5 free local sms and national sms-2days free sms validity','prepaid'),('Chennai',500,'Airtel','Full talktime validity unlimite days','prepaid'),('Chennai',555,'Airtel','Full talktime validity unlimited days- 5 free local sms -3day free sms validity','prepaid'),('Chennai',15,'Jio','Full talktime validity 2 days','prepaid'),('Chennai',25,'Jio','Full talktime validity 3 days- 5 free local sms -1day free sms validity','prepaid'),('Chennai',55,' Jio','Full talktime validity 5 days- 5 free local sms -1day free sms validity','prepaid'),('Chennai',65,' Jio','Full talktime validity 28 days- 5 free local sms -1day free sms validity-applicable only for 4g','prepaid'),('Chennai',150,' Jio','Full talktime validity unlimited days- applicable only for 4g','prepaid'),('Chennai',198,' Jio','Full talktime validity unlimited days- 5 free local sms and national sms-2days free sms validity','prepaid'),('Chennai',500,' Jio','Full talktime validity unlimite days','prepaid'),('Chennai',555,' Jio','Full talktime validity unlimited days- 5 free local sms -3day free sms validity','prepaid'),('Chennai',15,'BSNL','Full talktime validity 2 days','prepaid'),('Chennai',25,'BSNL','Full talktime validity 3 days- 5 free local sms -1day free sms validity','prepaid'),('Chennai',55,' BSNL','Full talktime validity 5 days- 5 free local sms -1day free sms validity','prepaid'),('Chennai',65,' BSNL','Full talktime validity 28 days- 5 free local sms -1day free sms validity-applicable only for 4g','prepaid'),('Chennai',150,'BSNL','Full talktime validity unlimited days- applicable only for 4g','prepaid'),('Chennai',198,' BSNL','Full talktime validity unlimited days- 5 free local sms and national sms-2days free sms validity','prepaid'),('Chennai',500,' BSNL','Full talktime validity unlimite days','prepaid'),('Chennai',555,' BSNL','Full talktime validity unlimited days- 5 free local sms -3day free sms validity','prepaid'),('Chennai',15,'Vodafone','Full talktime validity 2 days','prepaid'),('Chennai',25,'Vodafone','Full talktime validity 3 days- 5 free local sms -1day free sms validity','prepaid'),('Chennai',55,'Vodafone','Full talktime validity 5 days- 5 free local sms -1day free sms validity','prepaid'),('Chennai',65,'Vodafone','Full talktime validity 28 days- 5 free local sms -1day free sms validity-applicable only for 4g','prepaid'),('Chennai',150,'Vodafone','Full talktime validity unlimited days- applicable only for 4g','prepaid'),('Chennai',198,'Vodafone','Full talktime validity unlimited days- 5 free local sms and national sms-2days free sms validity','prepaid'),('Chennai',500,' Vodafone','Full talktime validity unlimite days','prepaid'),('Chennai',555,' Vodafone','Full talktime validity unlimited days- 5 free local sms -3day free sms validity','prepaid'),('Kolkata',15,'Airtel','Full talktime validity 2 days','prepaid'),('Kolkata',25,'Airtel','Full talktime validity 3 days- 5 free local sms -1day free sms validity','prepaid'),('Kolkata',55,'Airtel','Full talktime validity 5 days- 5 free local sms -1day free sms validity','prepaid'),('Kolkata',65,'Airtel','Full talktime validity 28 days- 5 free local sms -1day free sms validity-applicable only for 4g','prepaid'),('Kolkata',150,'Airtel','Full talktime validity unlimited days- applicable only for 4g','prepaid'),('Kolkata',198,'Airtel','Full talktime validity unlimited days- 5 free local sms and national sms-2days free sms validity','prepaid'),('Kolkata',500,'Airtel','Full talktime validity unlimite days','prepaid'),('Kolkata',555,'Airtel','Full talktime validity unlimited days- 5 free local sms -3day free sms validity','prepaid'),('Kolkata',15,'Jio','Full talktime validity 2 days','prepaid'),('Kolkata',25,'Jio','Full talktime validity 3 days- 5 free local sms -1day free sms validity','prepaid'),('Kolkata',55,' Jio','Full talktime validity 5 days- 5 free local sms -1day free sms validity','prepaid'),('Kolkata',65,' Jio','Full talktime validity 28 days- 5 free local sms -1day free sms validity-applicable only for 4g','prepaid'),('Kolkata',150,' Jio','Full talktime validity unlimited days- applicable only for 4g','prepaid'),('Kolkata',198,' Jio','Full talktime validity unlimited days- 5 free local sms and national sms-2days free sms validity','prepaid'),('Kolkata',500,' Jio','Full talktime validity unlimite days','prepaid'),('Kolkata',555,' Jio','Full talktime validity unlimited days- 5 free local sms -3day free sms validity','prepaid'),('Kolkata',15,'BSNL','Full talktime validity 2 days','prepaid'),('Kolkata',25,'BSNL','Full talktime validity 3 days- 5 free local sms -1day free sms validity','prepaid'),('Kolkata',55,' BSNL','Full talktime validity 5 days- 5 free local sms -1day free sms validity','prepaid'),('Kolkata',65,' BSNL','Full talktime validity 28 days- 5 free local sms -1day free sms validity-applicable only for 4g','prepaid'),('Kolkata',150,'BSNL','Full talktime validity unlimited days- applicable only for 4g','prepaid'),('Kolkata',198,' BSNL','Full talktime validity unlimited days- 5 free local sms and national sms-2days free sms validity','prepaid'),('Kolkata',500,' BSNL','Full talktime validity unlimite days','prepaid'),('Kolkata',555,' BSNL','Full talktime validity unlimited days- 5 free local sms -3day free sms validity','prepaid'),('Kolkata',15,'Vodafone','Full talktime validity 2 days','prepaid'),('Kolkata',25,'Vodafone','Full talktime validity 3 days- 5 free local sms -1day free sms validity','prepaid'),('Kolkata',55,'Vodafone','Full talktime validity 5 days- 5 free local sms -1day free sms validity','prepaid'),('Kolkata',65,'Vodafone','Full talktime validity 28 days- 5 free local sms -1day free sms validity-applicable only for 4g','prepaid'),('Kolkata',150,'Vodafone','Full talktime validity unlimited days- applicable only for 4g','prepaid'),('Kolkata',198,'Vodafone','Full talktime validity unlimited days- 5 free local sms and national sms-2days free sms validity','prepaid'),('Kolkata',500,' Vodafone','Full talktime validity unlimite days','prepaid'),('Kolkata',555,' Vodafone','Full talktime validity unlimited days- 5 free local sms -3day free sms validity','prepaid');
/*!40000 ALTER TABLE `mobile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `date` date NOT NULL,
  `amount` varchar(10) NOT NULL,
  `recharge_type` varchar(20) NOT NULL,
  `transac_id` varchar(15) NOT NULL,
  `Number_or_id` varchar(25) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`transac_id`),
  KEY `email` (`email`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES ('2018-04-20','1000','Mobile Recharge','201231012','8639398717','saipraneeth596@gmail.com'),('2018-04-20','1000','Landline Bill','201231013','08738239698','saipraneeth596@gmail.com'),('2018-04-20','500','Water Bill','201231014','5454','saipraneeth596@gmail.com'),('2018-04-20','200','DTH recharge','201231015','9852431','mousumi@gmail.com'),('2018-04-20','400','Electricity Bill','201231016','1001','mousumi@gmail.com'),('2018-04-24','100','mobile recharge','201231017','9441247378','rp@gmail.com'),('2018-04-24','400','Electricity Bill','201231018','1001','rp@gmail.com'),('2018-04-24','45','mobile recharge','201231019','8910275995','rp@gmail.com'),('2018-04-24','400','Electricity Bill','201231020','1001','rp@gmail.com'),('2018-04-24','78','mobile recharge','201231021','8985671234','rp@gmail.com'),('2018-04-24','5','mobile recharge','201231022','8985671234','rp@gmail.com'),('2018-04-24','400','Electricity Bill','201231023','1001','rp@gmail.com'),('2018-04-24','400','Electricity Bill','201231024','1001','rp@gmail.com'),('2018-04-24','500','mobile recharge','201231025','8910275995','priya@gmail.com'),('2018-04-24','400','Electricity Bill','201231026','1001','priya@gmail.com'),('2018-04-24','1','mobile recharge','201231027','8252326574','nitesh@gmail.com'),('2018-04-24','400','Electricity Bill','201231028','1001','nitesh@gmail.com'),('2018-05-10','100','mobile recharge','201231029','8639398717','priyanka.rakshit@st.niituniversity.in'),('2018-05-10','400','Electricity Bill','201231030','1001','priyanka.rakshit@st.niituniversity.in'),('2018-05-10','100','Metro Recharge','201231031','536978','priyanka.rakshit@st.niituniversity.in'),('2018-05-10','100','mobile recharge','201231032','8639398717','priyanka.rakshit@st.niituniversity.in'),('2018-05-10','550','Electricity Bill','201231033','1002','priyanka.rakshit@st.niituniversity.in'),('2018-05-10','100','Metro Recharge','201231034','526369','priyanka.rakshit@st.niituniversity.in'),('2018-12-07','100','mobile recharge','201231035','8639398717','s@gmail.com'),('2018-12-07','400','Electricity Bill','201231036','1001','s@gmail.com');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phno` varchar(10) NOT NULL,
  `passcode` varchar(20) NOT NULL,
  `secret_answer` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('as','a@gmail.com','7894562310','as','vb'),('amit kumar','amit@gmail.com','7894562310','amit','sunny'),('mousumi laha','mousumi@gmail.com','9007209995','mou','moti'),('kumar nitesh','nitesh@gmail.com','8910275995','nitesh','kumar'),('priya','priya@gmail.com','7894569782','piyu','piyu'),('Priyanka Rakshit','priyanka.rakshit@st.niituniversity.in','8910275995','piku@12','piku'),('rohan patnaik','rp@gmail.com','9441247378','rpp','pattu'),('shivam','s@gmail.com','8639398717','1234','golu'),('sai praneeth','saipraneeth596@gmail.com','8639398717','piku','sunny'),('sai thapan','saithapan@st.niituniversity.in','980426580','suki','asdf');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `water`
--

DROP TABLE IF EXISTS `water`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `water` (
  `bill` int(11) NOT NULL,
  `consumer_no` varchar(20) NOT NULL,
  PRIMARY KEY (`consumer_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `water`
--

LOCK TABLES `water` WRITE;
/*!40000 ALTER TABLE `water` DISABLE KEYS */;
INSERT INTO `water` VALUES (450,'1234'),(300,'1236'),(500,'5454');
/*!40000 ALTER TABLE `water` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'utility'
--

--
-- Dumping routines for database 'utility'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-07  0:22:42

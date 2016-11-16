-- MySQL dump 10.16  Distrib 10.1.16-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: quiz
-- ------------------------------------------------------
-- Server version	10.1.16-MariaDB

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
-- Table structure for table `acciones`
--

DROP TABLE IF EXISTS `acciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acciones` (
  `identificadorAccion` int(11) NOT NULL AUTO_INCREMENT,
  `identificadorConexion` int(11) DEFAULT NULL,
  `correoUsuario` varchar(50) DEFAULT NULL,
  `tipoAccion` varchar(50) DEFAULT NULL,
  `hora` datetime DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`identificadorAccion`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acciones`
--

LOCK TABLES `acciones` WRITE;
/*!40000 ALTER TABLE `acciones` DISABLE KEYS */;
INSERT INTO `acciones` VALUES (1,1,'ima000@ikasle.ehu.es','InsertarPregunta','2016-10-19 20:26:03','::1'),(2,NULL,NULL,'VisualizarPreguntas','2016-10-19 20:26:42','::1'),(3,3,'ima000@ikasle.ehu.es','InsertarPregunta','2016-10-22 21:02:17','::1'),(4,NULL,NULL,'VisualizarPreguntas','2016-10-22 21:02:24','::1'),(5,7,'ima000@ikasle.ehu.es','InsertarPregunta','2016-10-22 22:04:05','::1'),(6,7,'ima000@ikasle.ehu.es','InsertarPregunta','2016-10-22 22:06:13','::1'),(7,7,'ima000@ikasle.ehu.es','InsertarPregunta','2016-10-22 22:06:24','::1'),(8,8,'ima000@ikasle.ehu.es','InsertarPregunta','2016-10-22 22:38:12','::1'),(9,NULL,NULL,'VisualizarPreguntas','2016-10-30 02:42:04','::1'),(10,10,'ima000@ikasle.ehu.es','InsertarPregunta','2016-10-30 02:12:48','::1'),(11,13,'ima000@ikasle.ehu.es','InsertarPregunta','2016-10-30 17:49:01','::1'),(12,13,'ima000@ikasle.ehu.es','InsertarPregunta','2016-10-30 17:49:05','::1'),(13,13,'ima000@ikasle.ehu.es','InsertarPregunta','2016-10-30 17:49:10','::1'),(14,13,'ima000@ikasle.ehu.es','InsertarPregunta','2016-10-30 17:49:11','::1'),(15,13,'ima000@ikasle.ehu.es','InsertarPregunta','2016-10-30 17:49:13','::1'),(16,13,'ima000@ikasle.ehu.es','InsertarPregunta','2016-10-30 17:49:14','::1'),(17,13,'ima000@ikasle.ehu.es','InsertarPregunta','2016-10-30 18:10:51','::1'),(18,14,'ima000@ikasle.ehu.es','InsertarPregunta','2016-10-30 18:17:31','::1'),(19,15,'ima000@ikasle.ehu.es','InsertarPregunta','2016-10-30 18:32:24','::1'),(20,15,'ima000@ikasle.ehu.es','InsertarPregunta','2016-10-30 19:44:08','::1'),(21,15,'ima000@ikasle.ehu.es','InsertarPregunta','2016-10-30 19:44:17','::1'),(22,15,'ima000@ikasle.ehu.es','InsertarPregunta','2016-10-30 20:18:23','::1'),(23,15,'ima000@ikasle.ehu.es','InsertarPregunta','2016-10-30 20:20:22','::1'),(24,NULL,NULL,'VisualizarPreguntas','2016-11-09 18:46:08','::1'),(25,16,'ima000@ikasle.ehu.es','InsertarPregunta','2016-11-09 18:47:49','::1'),(26,NULL,NULL,'VisualizarPreguntas','2016-11-09 19:22:35','::1'),(27,17,'jgonzalez201@ikasle.ehu.eus','InsertarPregunta','2016-11-09 19:26:52','::1'),(28,NULL,NULL,'VisualizarPreguntas','2016-11-12 21:59:34','::1'),(29,28,'ima000@ikasle.ehu.es','InsertarPregunta','2016-11-12 22:04:11','::1'),(30,47,'igomez134@ikasle.ehu.eus','InsertarPregunta','2016-11-16 12:45:14','::1');
/*!40000 ALTER TABLE `acciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conexiones`
--

DROP TABLE IF EXISTS `conexiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conexiones` (
  `conexion` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_conexion` datetime DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`conexion`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conexiones`
--

LOCK TABLES `conexiones` WRITE;
/*!40000 ALTER TABLE `conexiones` DISABLE KEYS */;
INSERT INTO `conexiones` VALUES (1,'2016-10-19 20:25:01','ima000@ikasle.ehu.es'),(2,'2016-10-22 21:01:09','ima000@ikasle.ehu.es'),(3,'2016-10-22 21:01:34','ima000@ikasle.ehu.es'),(4,'2016-10-22 21:49:02','ima000@ikasle.ehu.es'),(5,'2016-10-22 21:54:30','ima000@ikasle.ehu.es'),(6,'2016-10-22 22:03:04','ima000@ikasle.ehu.es'),(7,'2016-10-22 22:03:45','ima000@ikasle.ehu.es'),(8,'2016-10-22 22:37:41','ima000@ikasle.ehu.es'),(9,'2016-10-30 02:44:00','ima000@ikasle.ehu.es'),(10,'2016-10-30 02:51:14','ima000@ikasle.ehu.es'),(11,'2016-10-30 17:46:58','ima000@ikasle.ehu.es'),(12,'2016-10-30 17:48:11','ima000@ikasle.ehu.es'),(13,'2016-10-30 17:48:52','ima000@ikasle.ehu.es'),(14,'2016-10-30 18:15:24','ima000@ikasle.ehu.es'),(15,'2016-10-30 18:21:23','ima000@ikasle.ehu.es'),(16,'2016-11-09 18:47:00','ima000@ikasle.ehu.es'),(17,'2016-11-09 19:26:37','jgonzalez201@ikasle.ehu.eus'),(18,'2016-11-11 12:08:21','web000@ehu.es'),(19,'2016-11-11 12:09:22','web000@ehu.es'),(20,'2016-11-11 13:05:16','web000@ehu.es'),(21,'2016-11-11 20:42:34','web000@ehu.es'),(22,'2016-11-11 21:34:17','web000@ehu.es'),(23,'2016-11-11 22:18:22','web000@ehu.es'),(24,'2016-11-11 22:19:04','ima000@ikasle.ehu.es'),(25,'2016-11-11 22:19:16','ima000@ikasle.ehu.es'),(26,'2016-11-11 22:20:27','ima000@ikasle.ehu.es'),(27,'2016-11-12 21:50:08','web000@ehu.es'),(28,'2016-11-12 21:59:48','ima000@ikasle.ehu.es'),(29,'2016-11-12 22:05:22','web000@ehu.es'),(30,'2016-11-13 02:35:04','ima000@ikasle.ehu.es'),(31,'2016-11-13 03:20:09','ima000@ikasle.ehu.es'),(32,'2016-11-13 03:28:38','ima000@ikasle.ehu.es'),(33,'2016-11-13 03:29:16','ima000@ikasle.ehu.es'),(34,'2016-11-13 03:57:41','ima000@ikasle.ehu.es'),(35,'2016-11-13 04:04:46','ima000@ikasle.ehu.es'),(36,'2016-11-13 04:08:50','ima000@ikasle.ehu.es'),(37,'2016-11-13 04:11:14','ima000@ikasle.ehu.es'),(38,'2016-11-16 12:04:50','jgonzalez201@ikasle.ehu.eus'),(39,'2016-11-16 12:05:04','jgonzalez201@ikasle.ehu.eus'),(40,'2016-11-16 12:12:09','jgonzalez201@ikasle.ehu.eus'),(41,'2016-11-16 12:14:43','jgonzalez201@ikasle.ehu.eus'),(42,'2016-11-16 12:16:25','jgonzalez201@ikasle.ehu.eus'),(43,'2016-11-16 12:23:26','jgonzalez201@ikasle.ehu.eus'),(44,'2016-11-16 12:24:30','jgonzalez201@ikasle.ehu.eus'),(45,'2016-11-16 12:27:31','jgonzalez201@ikasle.ehu.eus'),(46,'2016-11-16 12:32:49','jgonzalez201@ikasle.ehu.eus'),(47,'2016-11-16 12:44:46','igomez134@ikasle.ehu.eus'),(48,'2016-11-16 13:01:27','web000@ehu.es'),(49,'2016-11-16 13:18:18','web000@ehu.es'),(50,'2016-11-16 13:19:05','jgonzalez201@ikasle.ehu.eus'),(51,'2016-11-16 13:21:00','igomez134@ikasle.ehu.eus'),(52,'2016-11-16 13:21:28','igomez134@ikasle.ehu.eus'),(53,'2016-11-16 13:21:46','igomez134@ikasle.ehu.eus'),(54,'2016-11-16 13:23:29','web000@ehu.es');
/*!40000 ALTER TABLE `conexiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pregunta`
--

DROP TABLE IF EXISTS `pregunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pregunta` (
  `indice` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(140) NOT NULL,
  `respuesta` varchar(140) DEFAULT NULL,
  `dificultad` int(11) DEFAULT NULL,
  `email_autor` varchar(50) DEFAULT NULL,
  `tematica` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`indice`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pregunta`
--

LOCK TABLES `pregunta` WRITE;
/*!40000 ALTER TABLE `pregunta` DISABLE KEYS */;
INSERT INTO `pregunta` VALUES (1,'toma','que no lo quiero',3,'ima000@ikasle.ehu.es',NULL),(2,'funkalo','yeah',5,'jgonzalez001@ikasle.ehu.es',NULL),(3,'0','pum',3,'ima000@ikasle.ehu.es',NULL),(4,'donde se lia?','doka',2,'ima000@ikasle.ehu.es','fiesta'),(9,'martes de ...','bata',3,'ima000@ikasle.ehu.es','fiesta'),(10,'se lia?','si',2,'ima000@ikasle.ehu.es','fieston'),(11,'ei?','jeje',4,'ima000@ikasle.ehu.es',''),(12,'the big bang...','theory',2,'ima000@ikasle.ehu.es','series'),(26,'Monte o Playa?','aja',2,'ima000@ikasle.ehu.es','verano'),(27,'hola?','hola',1,'ima000@ikasle.ehu.es','saludar'),(28,'e','e',1,'jgonzalez201@ikasle.ehu.eus','e'),(29,'yeah?','aha',4,'ima000@ikasle.ehu.es','nigga'),(30,'funka?','siiiiiiii',3,'igomez134@ikasle.ehu.eus','claro');
/*!40000 ALTER TABLE `pregunta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `NOMBRE` varchar(20) DEFAULT NULL,
  `APELLIDO1` varchar(20) DEFAULT NULL,
  `APELLIDO2` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `TELEFONO` varchar(9) DEFAULT NULL,
  `PASSWORD` varchar(100) DEFAULT NULL,
  `ESPECIALIDAD` varchar(50) DEFAULT NULL,
  `TECNOLOGIAS` varchar(200) DEFAULT NULL,
  `imagen` mediumblob,
  `bloqueado` varchar(2) DEFAULT 'NO',
  PRIMARY KEY (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('ima','gomez','martinez','igomez134@ikasle.ehu.eus','987654321','eec48484a54789bdea655d5a97462dd8afd27fe2','Ingenieria del Software','aaa		','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	\Z( \Z%!1!\'*+...383-7(-.+\n\n\n\r\Z-%&/-----6----------/----/-/---/-----/-/-------------ÿÀ\0\0¸\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0J\0	\0\0\0!1AQ\"aq2‘¡±#Br²Á$3Rb‚Ñð%4CSsÂáñ&’¢t„³5cÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\01\0\0\0\0\0\0\0!12AQ\"±3Baq¡ÑRð#‘ÁÿÚ\0\0\0?\0Üh¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢±J;õ´°˜×ÃÚuµk*µ²ª¥ÙX	,\\¬iVRÚ²2ª’Ú¢Šæ¿A§>7<²0Ž³–9M8¿¾;NÃe8Ëó\0‰!Á$zÃ†¢—ã#oÿ\06Ïuüÿ\0GKQYG¢ïÇc1-ßº·-¥¼Úª+†,ú€H‰ŸejôØË+&+kuËk\n(¢¤XQE4ÆíV¿IqWÀ}€k@è¨Þì$Ær|”Ò¶7£\nÚvh0ü(\'k&h¤ìÞW•ƒÌG¼R”QE\0QE\0QE\0QE\0QE\0QE\0QE\0ßŒK6ÞíÃ€³€SŠa·ì+á¯#ÆSm¦dˆÊu1¯º€E>ï¥</÷k>,À|\04ôžœ…¿k\ZÄñÝžc”û§ñE¤¸Gt¼}=äU95xQ6äô©`zê#öXüˆ«VíoNáÞJFu>²æ˜\'ÀÁ÷W/2®³œùEm¾‚ðÈ0÷Ýmd,êîI¿TÍu©E,„b²iÔQEX@W;zrºÇi•ni2ù\'ã5Ñ5ŒzØÕS»BËd¡Œ¤\0í#Iš¤ÖPý=‘®{¤dÊxÇçŸ*WhúÞ¶a\0 Â€\0A¨\ZSZA=$À\ZAöÓ½½‰su¥ÃÀ@A¦P~¦œë>Ó¤þ\'O\\ÿ\0Ñ|ôt¢T}kO>C)ù]Xß Þ´ÉùqfíšÞ]2ê£S¤Ì\ZÙ+Ekæêl“Ý¢Š*â\0Ö/·0·^ëŸÊæoÒ	uƒÓ„{\"¶k\0ž‚}ÕÏX­â¼·ªZklÅ…»½åY$Âž4»3è>Šå6ö’Ö6f4I[ØmN²ñÏ/3tŽ#Šç¿†žÖ,c„@\0\"‘µ·Ë$”¦>²_¸ƒOÙÍâ}õ\r{oG÷ž\rx´{$Ò÷HÓàZ½\rÑÛÿ\0”73&RX|¾>5©V7èƒl³âÝ\Zt!B4ïI=4>úÙ)Ñë“±q–QEaaECÞù6o5›}Üš\"I1õgH\rà”²_(¬…÷Ô“ÞÄ¾¼¦5ýÒ?Ÿ‡«{ØÂ?9aûÍÔé®5ñóƒrá3\\¢³7¤¶À;ªyhLŒ¼üëIÃ_Šëê²†L$|èM1m4+ETQE\0QE\0¼˜W»…½md!JúÓ\ZEIPM\0r~ÔÂ\\´ånÊ°:çO·8¼ÚÄYËž½«	ö\nê4¶¬ä0@H -þÂ½•‡ãØZÿ\0±?…Q\Z<oÈå™Ì/>\0ÞèÔÖÑè?woX[÷®£ º(`Ë˜)c0ÐyóøšÐö†ÌF²öÐ*fRPRF„GCÙ^7rùk ž2OsG¹€öQžpVVn‰)EUÄ…aúˆÚ™¯aðÀèŠn°ñs•~\nÞúÝ+˜½3ßwÚ×ùå£È ?Vo‚%ÑQÂ¬L\"<è¹j–¾4*p§A^qÅÐ€R$Mfå¼£;O&©ÿ\0§Í¨Võü1::‡QûH`ü÷Vç\\ÉèsËµ,LÙ”ûQ¿€®›­è|z\n(¢®XøÂDV½»¡ˆÃ]qi{[zd)†:„ùVïU\rä\\÷òySØuoüsQŒ¦ÙVóLóigf]rG®0ùÁñyTyØ8Ø‘‚º‚bZÐ¶$ø´WHa\0Q^±Öó[e:È>øÒ£ÃHÓöû=‘žz\'ÜÛ¶[ò»æ	Rß1:cÃ¨<xÖŸL6úðîŠ©2NnO,(¢Š\ncž¡q·J””ž™²‰™Òkc¬k{ìµœ]ÞÑHWbÊOV3¡:˜ãJ·Ê2¾ÊÒbÏø6›Ä…=:7‡Æ“»µcû«Kû‰Ôó\'ÈTÖØc&Õ¦ó¶çâ€Ó,Mää·mGìÚ›(¬¹EÚÄe‘¤‰ä9p?æº?ª- A\neêç{eî\\T¶»F¤Ÿ\0$×Cà,”µm	’¨ªOR\0µUÐ‹è¢Šh°¢Š(\0¢Š(\0¤±&ÇOž”­4ÚwBÛ,t\0‰= OÆ«7ˆ¶‰]‘chöEšè+:æ\0²è\"4áíŽ5ào6ÿ\0|žúvÔÝ­)ÔªŸ0\rpç«µz›c\\=Qñ7ŽÓil›‡¢+7¼Ä3žê`šÉe,ÐòÊ¬C‹Ì°\Z9ðãNV•Â~‘}¿*m\Z›\'dSel„T^	j(¢»&0®cô¸±µ±>%¾Ú×NW8úsÃdÚ…¿Ä´î•?v—gE\'å*˜lqV,’D	\0åÕL‰ç¡Úó¼xæ¼ÈÍÄ\"§± øL”×Í ¤@}àÆ³Áa™¢¾l–¯DãúÓöÜjéúæ¯BÖ3mK?²½ÈÃñ®•­ôi‡AESž.Ü\n1€’yT´Ç¡¼o7	$	\'AÇ¢Ï¾•Þ=¼u,OÑ«\rf\r9uâþìç–ÃÝGSÊ}ÚëA)\nð\nBJõ\r¬û¢a·Çæ2‘ð¨Á°®[Ã0kKœI ê5z\n¬YÆ36OÉ‚þÙÆ}Ôe“„im¥\Z•ñ\0ô:ðq©šÉp¦õ»¡×R9Ž<ëNÙ˜áuàßXt?ÂŒÐòŠ( €ª¾üØKˆŠÊ­ÇÖ\0À1$t:T¶ÚÛ)‡Q=çoQ¬ßÀxÕC„ÄÞSx\\x’J°=ž_ª«3cŽ³¬Ò¬ºñ&2Ê\\¢¹ŒÝ›(@l!§ëÚÌë®°aÌG—Áî¶ÇæX‡?´×-2IQñ¤,à1#­‰·u†oXý\"‰âa	©fðÛÃ³†Ã3(×:v–Æ¢L4i\Zê:UUµ¾xþºåÑ+º[5pø–-\"\0‰g9„	fåÇ™â<jÿ\0Xv/z.\\²ÆÉ)lfÖd’I«Öâï ÄµxÅÎ\nß¯àÝççÆñ¶2xBå\\’Éw¢Š)‚‚Š( Š( ›í8¹iÐðe#Þ)ÅFoÔL=†¸Æ9/‹ÇÙUœ”bÛ&)·„@n®m]q•Ó³’¬‰‡«Æ§\nÖ}†ßÉ¦euå˜G´S¿ÿ\0<nv‡ýÍr¼íšˆIçMi¬]\\´®Ï²s–\'–ƒÏþ*ˆß›¤ˆƒÄçoÀWÔÞ÷\\GÓ»8ºBè°Î„Êt>ún–úÕ‹%lÓY±š¥ðÔWÚïœÑ®ÒÚì[k·X*/~C©ð®dô›·N;\Z×­èB âr¬ê|I&¯þ›v³œE¼0\'\"ÛGí9a\'Ø>5™-‰¬¶ßµà\\çŽt¹s\\Á‰ˆ<û¦G»Î’Ä=Æ#;@\0O@ àZËŸi:e“ŸH5´0ñ•âß¢|ôHz=Û\'Œ·|÷•d2õVcÇŸ²º‡díKX›KvË†Fæ9„r5È–V­+Ñ.ßk´²Iìï„r}Sïí­³œRçûUÝíÛ&Òöië°Ôþª4ñ:ÕŠ³ýõr1\'ìÆžÆ\"¸ViÅ´`4$yiIZÄ	ÔTÖ\r¢ª\\Ýëª¹$¤Ÿt\0V#¡¥¬ZÂßâ\Z8Ô•ÛÃ€kêâZËf^\\zÐÒÆ‘ÆÆB|5 n\ZðuVO¾£vî×ìŠZ¶_»9Œ(\0Ivð9Òû¾Ó‡´gñ5CÚ·óm¥Ì}BG€·?6cT¶n1Ê&Ì‹g„&ã±¹u½kÇÉGÕ_NóÑu€H©áM†*Ù0IèÆ¸““o\'B)c» \"¡ö¦Ü@B\ZÛêXcßR÷)ž iIV8<¡›w# ÃaÊ5ëgIÐÄ${Æ¾1áL°¸¶C™L2š¸o®Ì2·íŽõ½HJñöÁTŒZ€s¯ªã0ð×QæÖú­R{½þ¢œqÁ½z?ÞµÆÙ†?MlCÖ›øÿ\0½Zëž7+Ö/¦!IÐÁƒ/øMt2™8\Zè×bŸìb¶½õ>ÑEÑAEPìZÚ¶×Â¨“ü+2ÄïÈ¸ÍÚZ,¹»°DÈAçOý(mSÝ°¦óÿ\0ŠÎ¸¿·{ðý¦Ž…ìºa·‡qÂ®‹Ams q,:ÔˆÆØïaX$`{³\"ÔLMPö.=l¹bŒÄ‚£)Q2Hn^ê’þ—›W¾Šë\'Ö*Q@EO\0€xW/ìÐf·ŸBÛvò)#òWÐIîÙ52s8Óº}Ô¾e¤ T#B¤*°>Í˜j„Ø»¦Þ-»½ª’äþ’YˆQ¤“ÞŽ<	¨Üv$½Æx*I˜%‰_	mtá­RZUéÀ,¾ÍfíÞÊúX¸{—tB~£«äÃ‡BZ¶×8¾2á‰rr™up\"·ÖÚG…µtúÅ@o´8×{á¶Ëg‡7–¾‡7YJ‹ÜŒgÒûNÓvÇÀŸÆªör‘\Zžubôºÿ\0Ö—|ßÝV¶jš…ó³“\'óŽYQ©ræx@V<yŸ…6Û8D[ÜfÌÅ2÷c‡¼q¤ã–$ÄÏ´ü+ÖÖº×{½Ú8#œBN¾|©tÇˆ¬\n²n¯öÌ<oï­VÔU“tÛóÌ?ùÖþúÖ¿Ä‹þ$u\rf>‘1¦Þ(ÀèÔÇ9£iÕ”zOF8“\nOÑ,9f˜óá[gÑ²”œðÈ|>ÔE-Ú+.PÌ£6]$sïUeÙë/¢ÜR@ÌDÁ\n@2AÖ }P/7é\0.3p\0ÛÔÏÖÆ¤Ž#/å	eT&\"á.¶”²ÇÕÔÈâ•½š]1}½f’‘8W¾Ò³=œŠ\'egY¼	Ve“a²Û‘Ò9xÒ_Òg°ÃŸÊ±˜·hÅ˜ah0\nO˜ëÄÕ¼BMÏýçú5ÓHbÿ\0Fþ\n~U»ø—8{mv{FPZx“c–‘Nñ£¹öOÊ®™¬<­ÜþÍgì\nÍ·±òã¯¾ «,%H”\Z‚9Ö•»Ãók?å¯Ê³=õþÙ‰óO¸´»¼¥ªó˜Ì{\\Õ‹\\n]¡$  {øÔ}×?ª‡÷\0ø‚Æ”&£vâ€q1¦‚…bäÓ‚S¶.ZõâŠs§ý2|X°;Ô|\0?ÄIÉÓ¾§¼ŸT|+’²5\" DçÝN-\\#Q#Àÿ\0<<)s®2âH´d×E÷q[Õ ù~Uží2­ËÖÖ4`ê?W8¾1Níef\0¢kÐÌt­FÚbo¼™îF¼L2K;’e÷îi4>À\0AËO~µ¾l³ô6¿Ë_º+ÁzçÏð­ûf¡µöîŠÝ¤mîÈRÂCš(¢¶˜ÂŠ( ³Ò›ìžH¿lŠÐ÷äÅöò!T§¾„Lˆ˜Ÿ\ZâêjÌÛ;\Zyâ‹°á\\JuHG	:|ÛI\r»€–ÌÅ«>³¡Í :NžþÖåÛñÉåI#Û2‰ž:F§”ÌR£Dß	•í²BîÖR¦3Ë:¼!\n~«L‘©.šµÚ7ÝÝ&‹À3#BzÒí)ï&\"gž£—H§lpëÌÔJ‰§ÊÙ²˜–\nÎDpë[nâZË…\n8~KY6èh\"µÍÉþÍûÇäµ³E\r³f]d³až™1¥vµáÝ·÷TkGøÿ\0µ[½(aVöÞ¹m¤+dSt´Î–Áú=²[´¸À09NH0Aƒ§\nf¦Ý=rÿ\0‘òÿ\0S;Ÿ)üysZÃŸ¬ì¨#¯}—J{¼[‡°—/ÚdêD2‚t2’ôšºíÜ;ÝT[b\0™S åŒðþf¬*3aÍÕÍJ²ñR‚ûü&±ÃY\r›ÜW}z¥î9é\"žÏÂ§w7N3\r§÷ÖþúÕœz3±Îíï\"SðZ­nîmm;vÖr¦%\0LJÛMô\\ß†óÔDépÃgWU}‡çìÆ¯õAßAùÁûñ­Ì”UãåÆšÙÚv\Zð¶m’{¿K9†U-33—N±Mïíao9Q2Ð	&$ö¯8 mägAêæQ¨0Ä“ žz‰áJ”ÒxfˆW&·\"wú13fRA‡ç\"ozÆ<õãQ—v%â¶­»#¥¬ÀhTåkeF†dƒãS¢þ`Œš†ƒ¯ê‘>þ¾Z¶ÔB¶q\Zìql[GÑ•BgÕÓ—•9¾ç+}“JIâ=Vû5d-¼¼šÁ›Yÿ\0-~è¬Ë~?¶â?pÿ\0à•§ìQù½ŸòÓîŠÌwïûn#ì§Ý·K»ÊyˆwÎ8ƒ€h0N‡ðó¨ÜfÌa´ÈX“ÍA °#”A9Ç-]ÝYR<)É$.UÊ\r±ß»Î^Ú¸c1¡f@àG+<^V0n©íyOEÙ·€™g„f\0HdB¤´	Ìê=ºS‘9CD|sGÝo8¯%.åÍÚj°\0$êý&™ºvJcökÆó5±š=n€8Y>ßáÒ«8Ç¬Ëç)úp:Ãúãùæ´ÂÚý+Ÿ÷–Ÿa¿H<ÿ\0¦ˆÃ3bgÈ²ÇãIŸ‘‹™à}sæ~UÐÑ[ûòÏøXùŸ•t}\Z}‘ò§Gø…êý¨¢ŠÚc\n(¢€3Íü²\râ|G!Ò³­¢¢Ó,©âAb	D‘¯¶´ÝöJ|‡Ê³¹l‚Æc2¤2œÍ<¾¯ï“\\Æó~ÖtcÅ9CLNÄH*×ÁÀæÊTƒõ³IÕOêéÀFe±w­µœ½µ¼Æc³îd]!u$èG	çà*/\r‡bZ°š¬!VÖËÈ[C—¾N9ƒ[µÙÁt·lÂ]ÂæG*rÉ\0æ\\º¬r#JÒÚÊç‘1†{ìæ¶¶Êö¨\\¯ß²I~·	åâj6ÞÅHWmÉ.TK·D\0ó&iK6­¢…42ÑYœ^ïiN×‘<58\0¦n#ÛÑFµ†C˜ÅÃûÜ4¡4Ûç”v¾:&62ˆÑÄO°ð­wt0ãÄŸÀVI»6›)/Ìð×MIç©Ð\']5­ƒuÿ\0³¯™¬ú^.’©yª,Á·ðÿ\0ÔMö×ÿ\0ª­qý¶*2ýY‰ÕgàÂª[øÿ\0õžŽ>êwŒÌ%ìß{ ¨>®šõ?\nÉñ:÷YúÇþ‘¥’K÷=ì-«Û»¶FPHlÁÁ\\é€e°om/ko: ‡f(2°7A I#‚jNn]*³»8–\n©m™K\\0rÞì×.t˜˜Ô„åüK+]t[ŽYH€\0+D²å:jt§BNQÇüÎ´¡TfÞÕN_¾=ÉŸµ­â:<G0GO\nÌöqþ¶û”ûéV­Ú¾–­Ío]$™ \0™£†§ŽŠ\'Ärª–ÿ\0[ýÊ}ô§|:¥]–%×\']Œá{³«jƒ¾ê\ræõÈô«õg;ó	‹‡ )Eƒã¯\Zí³ì¡á0\nÎÀ™]NS™HïDÈãÖ¡íåí_ŽYÐx)#ðúº:®¿>5MÄáÍ»ý˜–Ö$sÎ³Ã¬Å\"äÙ¯OŒ²{eb\ZÒ	®¹Oì©#_Õ3<|*zÍâ@&j;³Ÿ-¡0aU†Pà\'Y#M9Sûv€\0È\r\0öSRàDž^G	sZóuû¯å^­ZÖ¼bR¼ªJšvÉAküµû¢³\rýþÛì/Ý·Z–\0E«a~B²ßHƒóË¼»‹þáT»ÊM~b«ˆg¸ë>GñŠŒÄ8$¶VC\Z˜Ðê9éÌŠ‘³vAø\Z|Å5ÄBñ:ùEaÎ\ri´ò„—I`×Ç{ÖXèTêâF…„Ž¦#\0G€¦Š¸Aòƒ¯»¶½Ú°ŠCÄ\ZŸ)ÒHä=ÔIä–Ûcü7®?žkQöIsËýB”LaÍ6Ô¹“¡\Zû8R8\'ÌYºõ/ûÕ\'ä-4Ócì¬|ÏÊº;«ä>UÏ{;Öo3]ƒAåZt}HN¯ÐõEVÓQEHßUú_`¬ãx“1D:\0nD‚Aû\'Ç…iðbàû#ñ¬ëmµ¶¹eÂ–x$ŒÃ.¼GBÙG‡\ZåKIÒÜðÌ:ÛH½vUËZxba‹\'Y^ff¢$í1\rvÖ[Ò e\Z\\H+¨!ÏYy·Å…fAx¨!X†a/†\0\Zkä9Ò;è³ˆK­)–AÇÔqãà†šhÆž¸nB½v}¾ÇqîºZf’N`4 °LÐXëÆe6õë,·åÎR&Û°9t\"2™•<:Ÿ\Z€Æ]E{·3‹ŒZáVÌ!‰P¼\0Ó1èÓ„ÔêlÛW-£îu.X,®D‚<}½jZù·§\"»´Óiu˜$pŽ:Är‰ek[²?7_oÎ²]ÝŽÅ\nêXIŽmÏåÊÖ÷h~n“ãó¤é>ú¿Ô¶§î¢Ž}ßcÿ\0P1ÿ\0úü–¤ö“=»ÖÒÊa\'¾É =àÂ#ï\ZŠßOÿ\0|äÿ\0þš·²Û¸2Ü²n(:@ÚÖ_ˆÏm‘}¬2Ú\'ÈªîþNyH$g[r2\0À‚ƒ®¼£Ÿ\nž±‹·Ú]lÀ&PíH@Q\0‚8TÕ–ìÀD¶Ç¤DÏCGô}žÎ pO$V_´)e´ÍÎøÊRßœ?N\nææá”‹®Ê´ &H4‘\'‡z=õPÂëoþJ}ä­Jã/´SºT€:\nÊ0zm1á}>+_Ãfçe’‘ƒ_59nGYVoé._ÊOÕ\'Ÿ	­\"²ßI œG’HÒu*Ë<GÓì®ÛèÀ»\"í¯\0@áåLñ\nF*Ó•à ê[0:õ=ôësö-Ì[33•¶§#þŒ‰‚DÀÆ,x}ÝtÃ½Û„ƒhUU»ÆÖa*®N„\0Gòj1‘‰íb­Ók­–Ü´öÕžã¨¨\\.Ve7c!…$ý`8t<5¦[OfË”¼æÛˆî°`LÄ\"Ã‡:†™QÍ4Ž<wËñ¥ð¸„eÌ„2õ\rEâö¢2\\\0èÔé:™©\\Ââý‘ò¬Ï}mfÚh¤³RWC\rÝÒ´Ûªù•g;ñf6§èªÃÄÛÎÀ{rÇ¶—{Ä2ZŸ1·÷Y­)u9×™ž,B:$s‘Tm¤ªÝÖ2g_•løÍ±e.vnÐHÀ†ñáPXýÏÂÞ&å¦6¸›diã*|uÒ+™G™.=ÍØølÌ0–MÌÀ+L\"L:\ryW®È0C3ÏêhxGÖ8ÕÝ}2“m·‹£ÏÁéÂn_^é#õm¨´<‰ÄTJú×9\Z¸â£ZÂ1`·3AŽî¡L¡ëÄñ“_0à`:|3GáW|FÅ²&\rÅò¸ññ& 1Û>Ú0eadË¤®S “<Éÿ\0š\\¯ŒÖHQ–îF›)eÏÚ?:èZÁ6=©º>Øö­î·è¼¬Í«íQ[LaEPwyG}dˆ#ó5BÞ\ro¶µw,d%BèÀC¨‰ÑÆ£‰Z¼o’7r•ƒ$	ƒÇQTœH·”†œ§Ž¡\"‚3‚\Zæ]	+÷ÄÙ^xc-™…D\n˜£HËsU`©b\'0&`±Ð\Zôû&ÊÞ¹nÛ5¸Ñ€.WP4\ZpU#ý\rˆ :¸¸“š/êÒG6‚ésyÒ-ƒ¾nµÓØfn_K?XS2¿?ä…¹tþƒÎÃ±g¸Kög/~@ï6sÊÌkÌM}Å¤–Sw8Xî•L®·sš}@\nû@çO°Û\"ø[€[²À°\'½yHÐ\0ÓSNínÕÈ›ŽŠ¦3\" \02çs0`OeK’0ßg½ÚÂ[±`hV%„‘$\0û@ÛWý‰ú=gQ™\nO)\"=Š¿‰\"¯˜ØBüN¾ÉÒ£I[ŽMòÂé\'‘Î‘X«}—FíZŽVãÓ¼ÛBÚÇfä–H>Ü¤SHà¡‰‘?Hß:¬[°•,§ª˜¦ÎÏ‰¬™Õ®	—øÞ\Z½•>AþÕ9ŽÞæ[!“\'‡‰ šÏ­^¼8_¾<®?ñ§ØŒMãlMûçÎãŸÆ“öm?·Ô·ÚXç¼ÛFàÒËÀ}€:NQL6yœr±2{Tžz÷\'ã5vÀc,YV2iþÄ¶õ¨Ðg_¼)ÐpX‚À¹ZåÛ:èVméÉü ´HìÇmi©»û… ‹ÐJ…Êc‘“àgáZÉ]Û¢è·¤21!{@s\"1+$så&¬Ëµ‹FE3=åVÄq²™ð5PØ×¾`‡,}]5å\'ýÅHc{G†`ð8Ox±3\ZU“X-É/Ž¿hK–L<H)ÙæËªÁ¶]N‘U}üÂ‹öIƒ«+‚ÃÕ ã˜ÇN\"ê‘’é\Z&4“˜k•xÅÞÄ8 ¸ õÊÑQ¹±·`!ƒëËSFg³1AÄ æðþxSÄÀ¹KxøõÔÓ­ÝÀÞ|HT ‚íÁrtñ&Š«NQT?Iö™;J‰ÈÀÝ9”{{Õ|ßi`-ß¶Ö®®da|ˆèG\Z¬ãº8\"Úòe6q&ëweS³‚a²ƒ(ÃX\',+kÄ´¥Ë7Ô:otŽ|«ÖÐÜ|N–°;tB?H‚gÔëÊV|…E5Ý ¢mÚ9…efh`|ÅfSœ>]£Ýq—)’ö¶­õâÓä|¿Xyó¯X¼Ë˜3$0UÄÏˆÈ¨ŒÕrˆ¸±ôW-Añ$÷OÎ™â6Õ²{ÖUŒë”²Ã„“$GÂ‡:¥æ_Á,]2scm\0¹‘«p1¦µMµúF-¡s<uÒtéÎ¦ÎÖ²È- !Rt:¸“3¬“Qû7~ëÁINµÍ±G|¶ôl©¼,öJn½œøÛj9Ü_\nÁ‰÷[µfþŒ·e•Î*à DZ‰, ¿”HdÖ‘]]$q&ª{§`¢Š+I˜(¢Š\0K‡[ŠU„ƒT½£¹N	kG€1ðçWš)VS<Åád¡Ñ—¶ÈÚ6ô@êƒý4›xâ þãZ¥YžüfÑ¡j½âŒÂÊc[ˆ%oÆa¶9ø³ óË§˜Ö´Z*…7™I°z¿ñŠEcbîŠZl÷	vêI\'ÚjÌ}¢¶W\\`±fœå\'–rÇ¤›ooibCi7	×˜:‚<\"«ÖññåuNõnvh.\\M©aêÜ^íÅòaËÀÈð¬Ëhúç‡Æ:]¶þHGÊªëL£Y1öÄ7(§7Y»%3ÌýiéË•]ñ~„¶šžãáÜuÎÊ}Å(µè_k4l2ŒcþÔ5*+´Î¿(o\nØ¥žý¥]K:€\0âK\nÒð>o;lmµÅ»lÇØX•h[èÓ³Ø\\@×o.Á+ö\0Ï;K˜¡”H<}¢˜X®mßp¤aYTLöl;“á¦•g`âJËB7ê†#Ÿ¬¿*º×Ê	ÉœbðW-<°Þ±xÄ|¤W–2‚Iú¼çÀqÿ\0šÒb€*0NJ^ÍØnnm<}sä3Vì&-(DP2zšZ¾Ô‘¢Š( )¶/gÚ»úKjÝ	G‘â)Í^Çî‹‚3\\_ÙÇºàj¨âý©rÉ‰Ê#liîaò­>Š¤«Œ»Eãd£Ó3%ôVúN,G?¢×ïÔîÇô{…²Ê÷^eášùå}¤ÕÂŠ¯ƒðO‹?pŠ(¦‹\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€?ÿÙ','NO'),('asier','gonzalez','martinez','jgonzalez201@ikasle.ehu.eus','123456789','be949382d8cac177e839107051bda29dbc8a11cc','Ingenieria del Software','aaa		','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	\Z( \Z%!1!\'*+...383-7(-.+\n\n\n\r\Z-%&/-----6----------/----/-/---/-----/-/-------------ÿÀ\0\0¸\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0J\0	\0\0\0!1AQ\"aq2‘¡±#Br²Á$3Rb‚Ñð%4CSsÂáñ&’¢t„³5cÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\01\0\0\0\0\0\0\0!12AQ\"±3Baq¡ÑRð#‘ÁÿÚ\0\0\0?\0Üh¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢±J;õ´°˜×ÃÚuµk*µ²ª¥ÙX	,\\¬iVRÚ²2ª’Ú¢Šæ¿A§>7<²0Ž³–9M8¿¾;NÃe8Ëó\0‰!Á$zÃ†¢—ã#oÿ\06Ïuüÿ\0GKQYG¢ïÇc1-ßº·-¥¼Úª+†,ú€H‰ŸejôØË+&+kuËk\n(¢¤XQE4ÆíV¿IqWÀ}€k@è¨Þì$Ær|”Ò¶7£\nÚvh0ü(\'k&h¤ìÞW•ƒÌG¼R”QE\0QE\0QE\0QE\0QE\0QE\0QE\0ßŒK6ÞíÃ€³€SŠa·ì+á¯#ÆSm¦dˆÊu1¯º€E>ï¥</÷k>,À|\04ôžœ…¿k\ZÄñÝžc”û§ñE¤¸Gt¼}=äU95xQ6äô©`zê#öXüˆ«VíoNáÞJFu>²æ˜\'ÀÁ÷W/2®³œùEm¾‚ðÈ0÷Ýmd,êîI¿TÍu©E,„b²iÔQEX@W;zrºÇi•ni2ù\'ã5Ñ5ŒzØÕS»BËd¡Œ¤\0í#Iš¤ÖPý=‘®{¤dÊxÇçŸ*WhúÞ¶a\0 Â€\0A¨\ZSZA=$À\ZAöÓ½½‰su¥ÃÀ@A¦P~¦œë>Ó¤þ\'O\\ÿ\0Ñ|ôt¢T}kO>C)ù]Xß Þ´ÉùqfíšÞ]2ê£S¤Ì\ZÙ+Ekæêl“Ý¢Š*â\0Ö/·0·^ëŸÊæoÒ	uƒÓ„{\"¶k\0ž‚}ÕÏX­â¼·ªZklÅ…»½åY$Âž4»3è>Šå6ö’Ö6f4I[ØmN²ñÏ/3tŽ#Šç¿†žÖ,c„@\0\"‘µ·Ë$”¦>²_¸ƒOÙÍâ}õ\r{oG÷ž\rx´{$Ò÷HÓàZ½\rÑÛÿ\0”73&RX|¾>5©V7èƒl³âÝ\Zt!B4ïI=4>úÙ)Ñë“±q–QEaaECÞù6o5›}Üš\"I1õgH\rà”²_(¬…÷Ô“ÞÄ¾¼¦5ýÒ?Ÿ‡«{ØÂ?9aûÍÔé®5ñóƒrá3\\¢³7¤¶À;ªyhLŒ¼üëIÃ_Šëê²†L$|èM1m4+ETQE\0QE\0¼˜W»…½md!JúÓ\ZEIPM\0r~ÔÂ\\´ånÊ°:çO·8¼ÚÄYËž½«	ö\nê4¶¬ä0@H -þÂ½•‡ãØZÿ\0±?…Q\Z<oÈå™Ì/>\0ÞèÔÖÑè?woX[÷®£ º(`Ë˜)c0ÐyóøšÐö†ÌF²öÐ*fRPRF„GCÙ^7rùk ž2OsG¹€öQžpVVn‰)EUÄ…aúˆÚ™¯aðÀèŠn°ñs•~\nÞúÝ+˜½3ßwÚ×ùå£È ?Vo‚%ÑQÂ¬L\"<è¹j–¾4*p§A^qÅÐ€R$Mfå¼£;O&©ÿ\0§Í¨Võü1::‡QûH`ü÷Vç\\ÉèsËµ,LÙ”ûQ¿€®›­è|z\n(¢®XøÂDV½»¡ˆÃ]qi{[zd)†:„ùVïU\rä\\÷òySØuoüsQŒ¦ÙVóLóigf]rG®0ùÁñyTyØ8Ø‘‚º‚bZÐ¶$ø´WHa\0Q^±Öó[e:È>øÒ£ÃHÓöû=‘žz\'ÜÛ¶[ò»æ	Rß1:cÃ¨<xÖŸL6úðîŠ©2NnO,(¢Š\ncž¡q·J””ž™²‰™Òkc¬k{ìµœ]ÞÑHWbÊOV3¡:˜ãJ·Ê2¾ÊÒbÏø6›Ä…=:7‡Æ“»µcû«Kû‰Ôó\'ÈTÖØc&Õ¦ó¶çâ€Ó,Mää·mGìÚ›(¬¹EÚÄe‘¤‰ä9p?æº?ª- A\neêç{eî\\T¶»F¤Ÿ\0$×Cà,”µm	’¨ªOR\0µUÐ‹è¢Šh°¢Š(\0¢Š(\0¤±&ÇOž”­4ÚwBÛ,t\0‰= OÆ«7ˆ¶‰]‘chöEšè+:æ\0²è\"4áíŽ5ào6ÿ\0|žúvÔÝ­)ÔªŸ0\rpç«µz›c\\=Qñ7ŽÓil›‡¢+7¼Ä3žê`šÉe,ÐòÊ¬C‹Ì°\Z9ðãNV•Â~‘}¿*m\Z›\'dSel„T^	j(¢»&0®cô¸±µ±>%¾Ú×NW8úsÃdÚ…¿Ä´î•?v—gE\'å*˜lqV,’D	\0åÕL‰ç¡Úó¼xæ¼ÈÍÄ\"§± øL”×Í ¤@}àÆ³Áa™¢¾l–¯DãúÓöÜjéúæ¯BÖ3mK?²½ÈÃñ®•­ôi‡AESž.Ü\n1€’yT´Ç¡¼o7	$	\'AÇ¢Ï¾•Þ=¼u,OÑ«\rf\r9uâþìç–ÃÝGSÊ}ÚëA)\nð\nBJõ\r¬û¢a·Çæ2‘ð¨Á°®[Ã0kKœI ê5z\n¬YÆ36OÉ‚þÙÆ}Ôe“„im¥\Z•ñ\0ô:ðq©šÉp¦õ»¡×R9Ž<ëNÙ˜áuàßXt?ÂŒÐòŠ( €ª¾üØKˆŠÊ­ÇÖ\0À1$t:T¶ÚÛ)‡Q=çoQ¬ßÀxÕC„ÄÞSx\\x’J°=ž_ª«3cŽ³¬Ò¬ºñ&2Ê\\¢¹ŒÝ›(@l!§ëÚÌë®°aÌG—Áî¶ÇæX‡?´×-2IQñ¤,à1#­‰·u†oXý\"‰âa	©fðÛÃ³†Ã3(×:v–Æ¢L4i\Zê:UUµ¾xþºåÑ+º[5pø–-\"\0‰g9„	fåÇ™â<jÿ\0Xv/z.\\²ÆÉ)lfÖd’I«Öâï ÄµxÅÎ\nß¯àÝççÆñ¶2xBå\\’Éw¢Š)‚‚Š( Š( ›í8¹iÐðe#Þ)ÅFoÔL=†¸Æ9/‹ÇÙUœ”bÛ&)·„@n®m]q•Ó³’¬‰‡«Æ§\nÖ}†ßÉ¦euå˜G´S¿ÿ\0<nv‡ýÍr¼íšˆIçMi¬]\\´®Ï²s–\'–ƒÏþ*ˆß›¤ˆƒÄçoÀWÔÞ÷\\GÓ»8ºBè°Î„Êt>ún–úÕ‹%lÓY±š¥ðÔWÚïœÑ®ÒÚì[k·X*/~C©ð®dô›·N;\Z×­èB âr¬ê|I&¯þ›v³œE¼0\'\"ÛGí9a\'Ø>5™-‰¬¶ßµà\\çŽt¹s\\Á‰ˆ<û¦G»Î’Ä=Æ#;@\0O@ àZËŸi:e“ŸH5´0ñ•âß¢|ôHz=Û\'Œ·|÷•d2õVcÇŸ²º‡díKX›KvË†Fæ9„r5È–V­+Ñ.ßk´²Iìï„r}Sïí­³œRçûUÝíÛ&Òöië°Ôþª4ñ:ÕŠ³ýõr1\'ìÆžÆ\"¸ViÅ´`4$yiIZÄ	ÔTÖ\r¢ª\\Ýëª¹$¤Ÿt\0V#¡¥¬ZÂßâ\Z8Ô•ÛÃ€kêâZËf^\\zÐÒÆ‘ÆÆB|5 n\ZðuVO¾£vî×ìŠZ¶_»9Œ(\0Ivð9Òû¾Ó‡´gñ5CÚ·óm¥Ì}BG€·?6cT¶n1Ê&Ì‹g„&ã±¹u½kÇÉGÕ_NóÑu€H©áM†*Ù0IèÆ¸““o\'B)c» \"¡ö¦Ü@B\ZÛêXcßR÷)ž iIV8<¡›w# ÃaÊ5ëgIÐÄ${Æ¾1áL°¸¶C™L2š¸o®Ì2·íŽõ½HJñöÁTŒZ€s¯ªã0ð×QæÖú­R{½þ¢œqÁ½z?ÞµÆÙ†?MlCÖ›øÿ\0½Zëž7+Ö/¦!IÐÁƒ/øMt2™8\Zè×bŸìb¶½õ>ÑEÑAEPìZÚ¶×Â¨“ü+2ÄïÈ¸ÍÚZ,¹»°DÈAçOý(mSÝ°¦óÿ\0ŠÎ¸¿·{ðý¦Ž…ìºa·‡qÂ®‹Ams q,:ÔˆÆØïaX$`{³\"ÔLMPö.=l¹bŒÄ‚£)Q2Hn^ê’þ—›W¾Šë\'Ö*Q@EO\0€xW/ìÐf·ŸBÛvò)#òWÐIîÙ52s8Óº}Ô¾e¤ T#B¤*°>Í˜j„Ø»¦Þ-»½ª’äþ’YˆQ¤“ÞŽ<	¨Üv$½Æx*I˜%‰_	mtá­RZUéÀ,¾ÍfíÞÊúX¸{—tB~£«äÃ‡BZ¶×8¾2á‰rr™up\"·ÖÚG…µtúÅ@o´8×{á¶Ëg‡7–¾‡7YJ‹ÜŒgÒûNÓvÇÀŸÆªör‘\Zžubôºÿ\0Ö—|ßÝV¶jš…ó³“\'óŽYQ©ræx@V<yŸ…6Û8D[ÜfÌÅ2÷c‡¼q¤ã–$ÄÏ´ü+ÖÖº×{½Ú8#œBN¾|©tÇˆ¬\n²n¯öÌ<oï­VÔU“tÛóÌ?ùÖþúÖ¿Ä‹þ$u\rf>‘1¦Þ(ÀèÔÇ9£iÕ”zOF8“\nOÑ,9f˜óá[gÑ²”œðÈ|>ÔE-Ú+.PÌ£6]$sïUeÙë/¢ÜR@ÌDÁ\n@2AÖ }P/7é\0.3p\0ÛÔÏÖÆ¤Ž#/å	eT&\"á.¶”²ÇÕÔÈâ•½š]1}½f’‘8W¾Ò³=œŠ\'egY¼	Ve“a²Û‘Ò9xÒ_Òg°ÃŸÊ±˜·hÅ˜ah0\nO˜ëÄÕ¼BMÏýçú5ÓHbÿ\0Fþ\n~U»ø—8{mv{FPZx“c–‘Nñ£¹öOÊ®™¬<­ÜþÍgì\nÍ·±òã¯¾ «,%H”\Z‚9Ö•»Ãók?å¯Ê³=õþÙ‰óO¸´»¼¥ªó˜Ì{\\Õ‹\\n]¡$  {øÔ}×?ª‡÷\0ø‚Æ”&£vâ€q1¦‚…bäÓ‚S¶.ZõâŠs§ý2|X°;Ô|\0?ÄIÉÓ¾§¼ŸT|+’²5\" DçÝN-\\#Q#Àÿ\0<<)s®2âH´d×E÷q[Õ ù~Uží2­ËÖÖ4`ê?W8¾1Níef\0¢kÐÌt­FÚbo¼™îF¼L2K;’e÷îi4>À\0AËO~µ¾l³ô6¿Ë_º+ÁzçÏð­ûf¡µöîŠÝ¤mîÈRÂCš(¢¶˜ÂŠ( ³Ò›ìžH¿lŠÐ÷äÅöò!T§¾„Lˆ˜Ÿ\ZâêjÌÛ;\Zyâ‹°á\\JuHG	:|ÛI\r»€–ÌÅ«>³¡Í :NžþÖåÛñÉåI#Û2‰ž:F§”ÌR£Dß	•í²BîÖR¦3Ë:¼!\n~«L‘©.šµÚ7ÝÝ&‹À3#BzÒí)ï&\"gž£—H§lpëÌÔJ‰§ÊÙ²˜–\nÎDpë[nâZË…\n8~KY6èh\"µÍÉþÍûÇäµ³E\r³f]d³až™1¥vµáÝ·÷TkGøÿ\0µ[½(aVöÞ¹m¤+dSt´Î–Áú=²[´¸À09NH0Aƒ§\nf¦Ý=rÿ\0‘òÿ\0S;Ÿ)üysZÃŸ¬ì¨#¯}—J{¼[‡°—/ÚdêD2‚t2’ôšºíÜ;ÝT[b\0™S åŒðþf¬*3aÍÕÍJ²ñR‚ûü&±ÃY\r›ÜW}z¥î9é\"žÏÂ§w7N3\r§÷ÖþúÕœz3±Îíï\"SðZ­nîmm;vÖr¦%\0LJÛMô\\ß†óÔDépÃgWU}‡çìÆ¯õAßAùÁûñ­Ì”UãåÆšÙÚv\Zð¶m’{¿K9†U-33—N±Mïíao9Q2Ð	&$ö¯8 mägAêæQ¨0Ä“ žz‰áJ”ÒxfˆW&·\"wú13fRA‡ç\"ozÆ<õãQ—v%â¶­»#¥¬ÀhTåkeF†dƒãS¢þ`Œš†ƒ¯ê‘>þ¾Z¶ÔB¶q\Zìql[GÑ•BgÕÓ—•9¾ç+}“JIâ=Vû5d-¼¼šÁ›Yÿ\0-~è¬Ë~?¶â?pÿ\0à•§ìQù½ŸòÓîŠÌwïûn#ì§Ý·K»ÊyˆwÎ8ƒ€h0N‡ðó¨ÜfÌa´ÈX“ÍA °#”A9Ç-]ÝYR<)É$.UÊ\r±ß»Î^Ú¸c1¡f@àG+<^V0n©íyOEÙ·€™g„f\0HdB¤´	Ìê=ºS‘9CD|sGÝo8¯%.åÍÚj°\0$êý&™ºvJcökÆó5±š=n€8Y>ßáÒ«8Ç¬Ëç)úp:Ãúãùæ´ÂÚý+Ÿ÷–Ÿa¿H<ÿ\0¦ˆÃ3bgÈ²ÇãIŸ‘‹™à}sæ~UÐÑ[ûòÏøXùŸ•t}\Z}‘ò§Gø…êý¨¢ŠÚc\n(¢€3Íü²\râ|G!Ò³­¢¢Ó,©âAb	D‘¯¶´ÝöJ|‡Ê³¹l‚Æc2¤2œÍ<¾¯ï“\\Æó~ÖtcÅ9CLNÄH*×ÁÀæÊTƒõ³IÕOêéÀFe±w­µœ½µ¼Æc³îd]!u$èG	çà*/\r‡bZ°š¬!VÖËÈ[C—¾N9ƒ[µÙÁt·lÂ]ÂæG*rÉ\0æ\\º¬r#JÒÚÊç‘1†{ìæ¶¶Êö¨\\¯ß²I~·	åâj6ÞÅHWmÉ.TK·D\0ó&iK6­¢…42ÑYœ^ïiN×‘<58\0¦n#ÛÑFµ†C˜ÅÃûÜ4¡4Ûç”v¾:&62ˆÑÄO°ð­wt0ãÄŸÀVI»6›)/Ìð×MIç©Ð\']5­ƒuÿ\0³¯™¬ú^.’©yª,Á·ðÿ\0ÔMö×ÿ\0ª­qý¶*2ýY‰ÕgàÂª[øÿ\0õžŽ>êwŒÌ%ìß{ ¨>®šõ?\nÉñ:÷YúÇþ‘¥’K÷=ì-«Û»¶FPHlÁÁ\\é€e°om/ko: ‡f(2°7A I#‚jNn]*³»8–\n©m™K\\0rÞì×.t˜˜Ô„åüK+]t[ŽYH€\0+D²å:jt§BNQÇüÎ´¡TfÞÕN_¾=ÉŸµ­â:<G0GO\nÌöqþ¶û”ûéV­Ú¾–­Ío]$™ \0™£†§ŽŠ\'Ärª–ÿ\0[ýÊ}ô§|:¥]–%×\']Œá{³«jƒ¾ê\ræõÈô«õg;ó	‹‡ )Eƒã¯\Zí³ì¡á0\nÎÀ™]NS™HïDÈãÖ¡íåí_ŽYÐx)#ðúº:®¿>5MÄáÍ»ý˜–Ö$sÎ³Ã¬Å\"äÙ¯OŒ²{eb\ZÒ	®¹Oì©#_Õ3<|*zÍâ@&j;³Ÿ-¡0aU†Pà\'Y#M9Sûv€\0È\r\0öSRàDž^G	sZóuû¯å^­ZÖ¼bR¼ªJšvÉAküµû¢³\rýþÛì/Ý·Z–\0E«a~B²ßHƒóË¼»‹þáT»ÊM~b«ˆg¸ë>GñŠŒÄ8$¶VC\Z˜Ðê9éÌŠ‘³vAø\Z|Å5ÄBñ:ùEaÎ\ri´ò„—I`×Ç{ÖXèTêâF…„Ž¦#\0G€¦Š¸Aòƒ¯»¶½Ú°ŠCÄ\ZŸ)ÒHä=ÔIä–Ûcü7®?žkQöIsËýB”LaÍ6Ô¹“¡\Zû8R8\'ÌYºõ/ûÕ\'ä-4Ócì¬|ÏÊº;«ä>UÏ{;Öo3]ƒAåZt}HN¯ÐõEVÓQEHßUú_`¬ãx“1D:\0nD‚Aû\'Ç…iðbàû#ñ¬ëmµ¶¹eÂ–x$ŒÃ.¼GBÙG‡\ZåKIÒÜðÌ:ÛH½vUËZxba‹\'Y^ff¢$í1\rvÖ[Ò e\Z\\H+¨!ÏYy·Å…fAx¨!X†a/†\0\Zkä9Ò;è³ˆK­)–AÇÔqãà†šhÆž¸nB½v}¾ÇqîºZf’N`4 °LÐXëÆe6õë,·åÎR&Û°9t\"2™•<:Ÿ\Z€Æ]E{·3‹ŒZáVÌ!‰P¼\0Ó1èÓ„ÔêlÛW-£îu.X,®D‚<}½jZù·§\"»´Óiu˜$pŽ:Är‰ek[²?7_oÎ²]ÝŽÅ\nêXIŽmÏåÊÖ÷h~n“ãó¤é>ú¿Ô¶§î¢Ž}ßcÿ\0P1ÿ\0úü–¤ö“=»ÖÒÊa\'¾É =àÂ#ï\ZŠßOÿ\0|äÿ\0þš·²Û¸2Ü²n(:@ÚÖ_ˆÏm‘}¬2Ú\'ÈªîþNyH$g[r2\0À‚ƒ®¼£Ÿ\nž±‹·Ú]lÀ&PíH@Q\0‚8TÕ–ìÀD¶Ç¤DÏCGô}žÎ pO$V_´)e´ÍÎøÊRßœ?N\nææá”‹®Ê´ &H4‘\'‡z=õPÂëoþJ}ä­Jã/´SºT€:\nÊ0zm1á}>+_Ãfçe’‘ƒ_59nGYVoé._ÊOÕ\'Ÿ	­\"²ßI œG’HÒu*Ë<GÓì®ÛèÀ»\"í¯\0@áåLñ\nF*Ó•à ê[0:õ=ôësö-Ì[33•¶§#þŒ‰‚DÀÆ,x}ÝtÃ½Û„ƒhUU»ÆÖa*®N„\0Gòj1‘‰íb­Ók­–Ü´öÕžã¨¨\\.Ve7c!…$ý`8t<5¦[OfË”¼æÛˆî°`LÄ\"Ã‡:†™QÍ4Ž<wËñ¥ð¸„eÌ„2õ\rEâö¢2\\\0èÔé:™©\\Ââý‘ò¬Ï}mfÚh¤³RWC\rÝÒ´Ûªù•g;ñf6§èªÃÄÛÎÀ{rÇ¶—{Ä2ZŸ1·÷Y­)u9×™ž,B:$s‘Tm¤ªÝÖ2g_•løÍ±e.vnÐHÀ†ñáPXýÏÂÞ&å¦6¸›diã*|uÒ+™G™.=ÍØølÌ0–MÌÀ+L\"L:\ryW®È0C3ÏêhxGÖ8ÕÝ}2“m·‹£ÏÁéÂn_^é#õm¨´<‰ÄTJú×9\Z¸â£ZÂ1`·3AŽî¡L¡ëÄñ“_0à`:|3GáW|FÅ²&\rÅò¸ññ& 1Û>Ú0eadË¤®S “<Éÿ\0š\\¯ŒÖHQ–îF›)eÏÚ?:èZÁ6=©º>Øö­î·è¼¬Í«íQ[LaEPwyG}dˆ#ó5BÞ\ro¶µw,d%BèÀC¨‰ÑÆ£‰Z¼o’7r•ƒ$	ƒÇQTœH·”†œ§Ž¡\"‚3‚\Zæ]	+÷ÄÙ^xc-™…D\n˜£HËsU`©b\'0&`±Ð\Zôû&ÊÞ¹nÛ5¸Ñ€.WP4\ZpU#ý\rˆ :¸¸“š/êÒG6‚ésyÒ-ƒ¾nµÓØfn_K?XS2¿?ä…¹tþƒÎÃ±g¸Kög/~@ï6sÊÌkÌM}Å¤–Sw8Xî•L®·sš}@\nû@çO°Û\"ø[€[²À°\'½yHÐ\0ÓSNínÕÈ›ŽŠ¦3\" \02çs0`OeK’0ßg½ÚÂ[±`hV%„‘$\0û@ÛWý‰ú=gQ™\nO)\"=Š¿‰\"¯˜ØBüN¾ÉÒ£I[ŽMòÂé\'‘Î‘X«}—FíZŽVãÓ¼ÛBÚÇfä–H>Ü¤SHà¡‰‘?Hß:¬[°•,§ª˜¦ÎÏ‰¬™Õ®	—øÞ\Z½•>AþÕ9ŽÞæ[!“\'‡‰ šÏ­^¼8_¾<®?ñ§ØŒMãlMûçÎãŸÆ“öm?·Ô·ÚXç¼ÛFàÒËÀ}€:NQL6yœr±2{Tžz÷\'ã5vÀc,YV2iþÄ¶õ¨Ðg_¼)ÐpX‚À¹ZåÛ:èVméÉü ´HìÇmi©»û… ‹ÐJ…Êc‘“àgáZÉ]Û¢è·¤21!{@s\"1+$så&¬Ëµ‹FE3=åVÄq²™ð5PØ×¾`‡,}]5å\'ýÅHc{G†`ð8Ox±3\ZU“X-É/Ž¿hK–L<H)ÙæËªÁ¶]N‘U}üÂ‹öIƒ«+‚ÃÕ ã˜ÇN\"ê‘’é\Z&4“˜k•xÅÞÄ8 ¸ õÊÑQ¹±·`!ƒëËSFg³1AÄ æðþxSÄÀ¹KxøõÔÓ­ÝÀÞ|HT ‚íÁrtñ&Š«NQT?Iö™;J‰ÈÀÝ9”{{Õ|ßi`-ß¶Ö®®da|ˆèG\Z¬ãº8\"Úòe6q&ëweS³‚a²ƒ(ÃX\',+kÄ´¥Ë7Ô:otŽ|«ÖÐÜ|N–°;tB?H‚gÔëÊV|…E5Ý ¢mÚ9…efh`|ÅfSœ>]£Ýq—)’ö¶­õâÓä|¿Xyó¯X¼Ë˜3$0UÄÏˆÈ¨ŒÕrˆ¸±ôW-Añ$÷OÎ™â6Õ²{ÖUŒë”²Ã„“$GÂ‡:¥æ_Á,]2scm\0¹‘«p1¦µMµúF-¡s<uÒtéÎ¦ÎÖ²È- !Rt:¸“3¬“Qû7~ëÁINµÍ±G|¶ôl©¼,öJn½œøÛj9Ü_\nÁ‰÷[µfþŒ·e•Î*à DZ‰, ¿”HdÖ‘]]$q&ª{§`¢Š+I˜(¢Š\0K‡[ŠU„ƒT½£¹N	kG€1ðçWš)VS<Åád¡Ñ—¶ÈÚ6ô@êƒý4›xâ þãZ¥YžüfÑ¡j½âŒÂÊc[ˆ%oÆa¶9ø³ óË§˜Ö´Z*…7™I°z¿ñŠEcbîŠZl÷	vêI\'ÚjÌ}¢¶W\\`±fœå\'–rÇ¤›ooibCi7	×˜:‚<\"«ÖññåuNõnvh.\\M©aêÜ^íÅòaËÀÈð¬Ëhúç‡Æ:]¶þHGÊªëL£Y1öÄ7(§7Y»%3ÌýiéË•]ñ~„¶šžãáÜuÎÊ}Å(µè_k4l2ŒcþÔ5*+´Î¿(o\nØ¥žý¥]K:€\0âK\nÒð>o;lmµÅ»lÇØX•h[èÓ³Ø\\@×o.Á+ö\0Ï;K˜¡”H<}¢˜X®mßp¤aYTLöl;“á¦•g`âJËB7ê†#Ÿ¬¿*º×Ê	ÉœbðW-<°Þ±xÄ|¤W–2‚Iú¼çÀqÿ\0šÒb€*0NJ^ÍØnnm<}sä3Vì&-(DP2zšZ¾Ô‘¢Š( )¶/gÚ»úKjÝ	G‘â)Í^Çî‹‚3\\_ÙÇºàj¨âý©rÉ‰Ê#liîaò­>Š¤«Œ»Eãd£Ó3%ôVúN,G?¢×ïÔîÇô{…²Ê÷^eášùå}¤ÕÂŠ¯ƒðO‹?pŠ(¦‹\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€?ÿÙ','NO'),(NULL,NULL,NULL,'web000@ehu.es',NULL,'9dfab044e4cfcdea8048af43640b6d2f832707bc',NULL,NULL,NULL,'NO');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-16 13:25:32

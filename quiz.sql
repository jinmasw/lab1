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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acciones`
--

LOCK TABLES `acciones` WRITE;
/*!40000 ALTER TABLE `acciones` DISABLE KEYS */;
INSERT INTO `acciones` VALUES (1,1,'ima000@ikasle.ehu.es','InsertarPregunta','2016-10-19 20:26:03','::1'),(2,NULL,NULL,'VisualizarPreguntas','2016-10-19 20:26:42','::1'),(3,3,'ima000@ikasle.ehu.es','InsertarPregunta','2016-10-22 21:02:17','::1'),(4,NULL,NULL,'VisualizarPreguntas','2016-10-22 21:02:24','::1'),(5,7,'ima000@ikasle.ehu.es','InsertarPregunta','2016-10-22 22:04:05','::1'),(6,7,'ima000@ikasle.ehu.es','InsertarPregunta','2016-10-22 22:06:13','::1'),(7,7,'ima000@ikasle.ehu.es','InsertarPregunta','2016-10-22 22:06:24','::1'),(8,8,'ima000@ikasle.ehu.es','InsertarPregunta','2016-10-22 22:38:12','::1');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conexiones`
--

LOCK TABLES `conexiones` WRITE;
/*!40000 ALTER TABLE `conexiones` DISABLE KEYS */;
INSERT INTO `conexiones` VALUES (1,'2016-10-19 20:25:01','ima000@ikasle.ehu.es'),(2,'2016-10-22 21:01:09','ima000@ikasle.ehu.es'),(3,'2016-10-22 21:01:34','ima000@ikasle.ehu.es'),(4,'2016-10-22 21:49:02','ima000@ikasle.ehu.es'),(5,'2016-10-22 21:54:30','ima000@ikasle.ehu.es'),(6,'2016-10-22 22:03:04','ima000@ikasle.ehu.es'),(7,'2016-10-22 22:03:45','ima000@ikasle.ehu.es'),(8,'2016-10-22 22:37:41','ima000@ikasle.ehu.es');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pregunta`
--

LOCK TABLES `pregunta` WRITE;
/*!40000 ALTER TABLE `pregunta` DISABLE KEYS */;
INSERT INTO `pregunta` VALUES (1,'Â¿tomalo...?','que no lo quiero',3,'ima000@ikasle.ehu.es',NULL),(2,'Â¿funka?','pues claro',2,'jgonzalez001@ikasle.ehu.es',NULL),(3,'Ã‚Â¿pim, pam, ...?','pum',3,'ima000@ikasle.ehu.es',NULL),(4,'Ã‚Â¿donde se lia?','doka',2,'ima000@ikasle.ehu.es','fiesta'),(9,'martes de ...','bata',3,'ima000@ikasle.ehu.es','fiesta'),(10,'se lia?','si',2,'ima000@ikasle.ehu.es','fieston'),(11,'jaja?','jeje',0,'ima000@ikasle.ehu.es',''),(12,'the big bang...','theory',2,'ima000@ikasle.ehu.es','series');
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
  `PASSWORD` varchar(20) DEFAULT NULL,
  `ESPECIALIDAD` varchar(50) DEFAULT NULL,
  `TECNOLOGIAS` varchar(200) DEFAULT NULL,
  `imagen` mediumblob,
  PRIMARY KEY (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('Imanol','gomez','martinez','ima000@ikasle.ehu.es','343456757','imanol','Ingenieria del Software','aqui sinmas	','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	\Z( \Z%!1!\'*+...383-7(-.+\n\n\n\r\Z-%&/-----6----------/----/-/---/-----/-/-------------ÿÀ\0\0¸\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0J\0	\0\0\0!1AQ\"aq2‘¡±#Br²Á$3Rb‚Ñð%4CSsÂáñ&’¢t„³5cÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\01\0\0\0\0\0\0\0!12AQ\"±3Baq¡ÑRð#‘ÁÿÚ\0\0\0?\0Üh¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢±J;õ´°˜×ÃÚuµk*µ²ª¥ÙX	,\\¬iVRÚ²2ª’Ú¢Šæ¿A§>7<²0Ž³–9M8¿¾;NÃe8Ëó\0‰!Á$zÃ†¢—ã#oÿ\06Ïuüÿ\0GKQYG¢ïÇc1-ßº·-¥¼Úª+†,ú€H‰ŸejôØË+&+kuËk\n(¢¤XQE4ÆíV¿IqWÀ}€k@è¨Þì$Ær|”Ò¶7£\nÚvh0ü(\'k&h¤ìÞW•ƒÌG¼R”QE\0QE\0QE\0QE\0QE\0QE\0QE\0ßŒK6ÞíÃ€³€SŠa·ì+á¯#ÆSm¦dˆÊu1¯º€E>ï¥</÷k>,À|\04ôžœ…¿k\ZÄñÝžc”û§ñE¤¸Gt¼}=äU95xQ6äô©`zê#öXüˆ«VíoNáÞJFu>²æ˜\'ÀÁ÷W/2®³œùEm¾‚ðÈ0÷Ýmd,êîI¿TÍu©E,„b²iÔQEX@W;zrºÇi•ni2ù\'ã5Ñ5ŒzØÕS»BËd¡Œ¤\0í#Iš¤ÖPý=‘®{¤dÊxÇçŸ*WhúÞ¶a\0 Â€\0A¨\ZSZA=$À\ZAöÓ½½‰su¥ÃÀ@A¦P~¦œë>Ó¤þ\'O\\ÿ\0Ñ|ôt¢T}kO>C)ù]Xß Þ´ÉùqfíšÞ]2ê£S¤Ì\ZÙ+Ekæêl“Ý¢Š*â\0Ö/·0·^ëŸÊæoÒ	uƒÓ„{\"¶k\0ž‚}ÕÏX­â¼·ªZklÅ…»½åY$Âž4»3è>Šå6ö’Ö6f4I[ØmN²ñÏ/3tŽ#Šç¿†žÖ,c„@\0\"‘µ·Ë$”¦>²_¸ƒOÙÍâ}õ\r{oG÷ž\rx´{$Ò÷HÓàZ½\rÑÛÿ\0”73&RX|¾>5©V7èƒl³âÝ\Zt!B4ïI=4>úÙ)Ñë“±q–QEaaECÞù6o5›}Üš\"I1õgH\rà”²_(¬…÷Ô“ÞÄ¾¼¦5ýÒ?Ÿ‡«{ØÂ?9aûÍÔé®5ñóƒrá3\\¢³7¤¶À;ªyhLŒ¼üëIÃ_Šëê²†L$|èM1m4+ETQE\0QE\0¼˜W»…½md!JúÓ\ZEIPM\0r~ÔÂ\\´ånÊ°:çO·8¼ÚÄYËž½«	ö\nê4¶¬ä0@H -þÂ½•‡ãØZÿ\0±?…Q\Z<oÈå™Ì/>\0ÞèÔÖÑè?woX[÷®£ º(`Ë˜)c0ÐyóøšÐö†ÌF²öÐ*fRPRF„GCÙ^7rùk ž2OsG¹€öQžpVVn‰)EUÄ…aúˆÚ™¯aðÀèŠn°ñs•~\nÞúÝ+˜½3ßwÚ×ùå£È ?Vo‚%ÑQÂ¬L\"<è¹j–¾4*p§A^qÅÐ€R$Mfå¼£;O&©ÿ\0§Í¨Võü1::‡QûH`ü÷Vç\\ÉèsËµ,LÙ”ûQ¿€®›­è|z\n(¢®XøÂDV½»¡ˆÃ]qi{[zd)†:„ùVïU\rä\\÷òySØuoüsQŒ¦ÙVóLóigf]rG®0ùÁñyTyØ8Ø‘‚º‚bZÐ¶$ø´WHa\0Q^±Öó[e:È>øÒ£ÃHÓöû=‘žz\'ÜÛ¶[ò»æ	Rß1:cÃ¨<xÖŸL6úðîŠ©2NnO,(¢Š\ncž¡q·J””ž™²‰™Òkc¬k{ìµœ]ÞÑHWbÊOV3¡:˜ãJ·Ê2¾ÊÒbÏø6›Ä…=:7‡Æ“»µcû«Kû‰Ôó\'ÈTÖØc&Õ¦ó¶çâ€Ó,Mää·mGìÚ›(¬¹EÚÄe‘¤‰ä9p?æº?ª- A\neêç{eî\\T¶»F¤Ÿ\0$×Cà,”µm	’¨ªOR\0µUÐ‹è¢Šh°¢Š(\0¢Š(\0¤±&ÇOž”­4ÚwBÛ,t\0‰= OÆ«7ˆ¶‰]‘chöEšè+:æ\0²è\"4áíŽ5ào6ÿ\0|žúvÔÝ­)ÔªŸ0\rpç«µz›c\\=Qñ7ŽÓil›‡¢+7¼Ä3žê`šÉe,ÐòÊ¬C‹Ì°\Z9ðãNV•Â~‘}¿*m\Z›\'dSel„T^	j(¢»&0®cô¸±µ±>%¾Ú×NW8úsÃdÚ…¿Ä´î•?v—gE\'å*˜lqV,’D	\0åÕL‰ç¡Úó¼xæ¼ÈÍÄ\"§± øL”×Í ¤@}àÆ³Áa™¢¾l–¯DãúÓöÜjéúæ¯BÖ3mK?²½ÈÃñ®•­ôi‡AESž.Ü\n1€’yT´Ç¡¼o7	$	\'AÇ¢Ï¾•Þ=¼u,OÑ«\rf\r9uâþìç–ÃÝGSÊ}ÚëA)\nð\nBJõ\r¬û¢a·Çæ2‘ð¨Á°®[Ã0kKœI ê5z\n¬YÆ36OÉ‚þÙÆ}Ôe“„im¥\Z•ñ\0ô:ðq©šÉp¦õ»¡×R9Ž<ëNÙ˜áuàßXt?ÂŒÐòŠ( €ª¾üØKˆŠÊ­ÇÖ\0À1$t:T¶ÚÛ)‡Q=çoQ¬ßÀxÕC„ÄÞSx\\x’J°=ž_ª«3cŽ³¬Ò¬ºñ&2Ê\\¢¹ŒÝ›(@l!§ëÚÌë®°aÌG—Áî¶ÇæX‡?´×-2IQñ¤,à1#­‰·u†oXý\"‰âa	©fðÛÃ³†Ã3(×:v–Æ¢L4i\Zê:UUµ¾xþºåÑ+º[5pø–-\"\0‰g9„	fåÇ™â<jÿ\0Xv/z.\\²ÆÉ)lfÖd’I«Öâï ÄµxÅÎ\nß¯àÝççÆñ¶2xBå\\’Éw¢Š)‚‚Š( Š( ›í8¹iÐðe#Þ)ÅFoÔL=†¸Æ9/‹ÇÙUœ”bÛ&)·„@n®m]q•Ó³’¬‰‡«Æ§\nÖ}†ßÉ¦euå˜G´S¿ÿ\0<nv‡ýÍr¼íšˆIçMi¬]\\´®Ï²s–\'–ƒÏþ*ˆß›¤ˆƒÄçoÀWÔÞ÷\\GÓ»8ºBè°Î„Êt>ún–úÕ‹%lÓY±š¥ðÔWÚïœÑ®ÒÚì[k·X*/~C©ð®dô›·N;\Z×­èB âr¬ê|I&¯þ›v³œE¼0\'\"ÛGí9a\'Ø>5™-‰¬¶ßµà\\çŽt¹s\\Á‰ˆ<û¦G»Î’Ä=Æ#;@\0O@ àZËŸi:e“ŸH5´0ñ•âß¢|ôHz=Û\'Œ·|÷•d2õVcÇŸ²º‡díKX›KvË†Fæ9„r5È–V­+Ñ.ßk´²Iìï„r}Sïí­³œRçûUÝíÛ&Òöië°Ôþª4ñ:ÕŠ³ýõr1\'ìÆžÆ\"¸ViÅ´`4$yiIZÄ	ÔTÖ\r¢ª\\Ýëª¹$¤Ÿt\0V#¡¥¬ZÂßâ\Z8Ô•ÛÃ€kêâZËf^\\zÐÒÆ‘ÆÆB|5 n\ZðuVO¾£vî×ìŠZ¶_»9Œ(\0Ivð9Òû¾Ó‡´gñ5CÚ·óm¥Ì}BG€·?6cT¶n1Ê&Ì‹g„&ã±¹u½kÇÉGÕ_NóÑu€H©áM†*Ù0IèÆ¸““o\'B)c» \"¡ö¦Ü@B\ZÛêXcßR÷)ž iIV8<¡›w# ÃaÊ5ëgIÐÄ${Æ¾1áL°¸¶C™L2š¸o®Ì2·íŽõ½HJñöÁTŒZ€s¯ªã0ð×QæÖú­R{½þ¢œqÁ½z?ÞµÆÙ†?MlCÖ›øÿ\0½Zëž7+Ö/¦!IÐÁƒ/øMt2™8\Zè×bŸìb¶½õ>ÑEÑAEPìZÚ¶×Â¨“ü+2ÄïÈ¸ÍÚZ,¹»°DÈAçOý(mSÝ°¦óÿ\0ŠÎ¸¿·{ðý¦Ž…ìºa·‡qÂ®‹Ams q,:ÔˆÆØïaX$`{³\"ÔLMPö.=l¹bŒÄ‚£)Q2Hn^ê’þ—›W¾Šë\'Ö*Q@EO\0€xW/ìÐf·ŸBÛvò)#òWÐIîÙ52s8Óº}Ô¾e¤ T#B¤*°>Í˜j„Ø»¦Þ-»½ª’äþ’YˆQ¤“ÞŽ<	¨Üv$½Æx*I˜%‰_	mtá­RZUéÀ,¾ÍfíÞÊúX¸{—tB~£«äÃ‡BZ¶×8¾2á‰rr™up\"·ÖÚG…µtúÅ@o´8×{á¶Ëg‡7–¾‡7YJ‹ÜŒgÒûNÓvÇÀŸÆªör‘\Zžubôºÿ\0Ö—|ßÝV¶jš…ó³“\'óŽYQ©ræx@V<yŸ…6Û8D[ÜfÌÅ2÷c‡¼q¤ã–$ÄÏ´ü+ÖÖº×{½Ú8#œBN¾|©tÇˆ¬\n²n¯öÌ<oï­VÔU“tÛóÌ?ùÖþúÖ¿Ä‹þ$u\rf>‘1¦Þ(ÀèÔÇ9£iÕ”zOF8“\nOÑ,9f˜óá[gÑ²”œðÈ|>ÔE-Ú+.PÌ£6]$sïUeÙë/¢ÜR@ÌDÁ\n@2AÖ }P/7é\0.3p\0ÛÔÏÖÆ¤Ž#/å	eT&\"á.¶”²ÇÕÔÈâ•½š]1}½f’‘8W¾Ò³=œŠ\'egY¼	Ve“a²Û‘Ò9xÒ_Òg°ÃŸÊ±˜·hÅ˜ah0\nO˜ëÄÕ¼BMÏýçú5ÓHbÿ\0Fþ\n~U»ø—8{mv{FPZx“c–‘Nñ£¹öOÊ®™¬<­ÜþÍgì\nÍ·±òã¯¾ «,%H”\Z‚9Ö•»Ãók?å¯Ê³=õþÙ‰óO¸´»¼¥ªó˜Ì{\\Õ‹\\n]¡$  {øÔ}×?ª‡÷\0ø‚Æ”&£vâ€q1¦‚…bäÓ‚S¶.ZõâŠs§ý2|X°;Ô|\0?ÄIÉÓ¾§¼ŸT|+’²5\" DçÝN-\\#Q#Àÿ\0<<)s®2âH´d×E÷q[Õ ù~Uží2­ËÖÖ4`ê?W8¾1Níef\0¢kÐÌt­FÚbo¼™îF¼L2K;’e÷îi4>À\0AËO~µ¾l³ô6¿Ë_º+ÁzçÏð­ûf¡µöîŠÝ¤mîÈRÂCš(¢¶˜ÂŠ( ³Ò›ìžH¿lŠÐ÷äÅöò!T§¾„Lˆ˜Ÿ\ZâêjÌÛ;\Zyâ‹°á\\JuHG	:|ÛI\r»€–ÌÅ«>³¡Í :NžþÖåÛñÉåI#Û2‰ž:F§”ÌR£Dß	•í²BîÖR¦3Ë:¼!\n~«L‘©.šµÚ7ÝÝ&‹À3#BzÒí)ï&\"gž£—H§lpëÌÔJ‰§ÊÙ²˜–\nÎDpë[nâZË…\n8~KY6èh\"µÍÉþÍûÇäµ³E\r³f]d³až™1¥vµáÝ·÷TkGøÿ\0µ[½(aVöÞ¹m¤+dSt´Î–Áú=²[´¸À09NH0Aƒ§\nf¦Ý=rÿ\0‘òÿ\0S;Ÿ)üysZÃŸ¬ì¨#¯}—J{¼[‡°—/ÚdêD2‚t2’ôšºíÜ;ÝT[b\0™S åŒðþf¬*3aÍÕÍJ²ñR‚ûü&±ÃY\r›ÜW}z¥î9é\"žÏÂ§w7N3\r§÷ÖþúÕœz3±Îíï\"SðZ­nîmm;vÖr¦%\0LJÛMô\\ß†óÔDépÃgWU}‡çìÆ¯õAßAùÁûñ­Ì”UãåÆšÙÚv\Zð¶m’{¿K9†U-33—N±Mïíao9Q2Ð	&$ö¯8 mägAêæQ¨0Ä“ žz‰áJ”ÒxfˆW&·\"wú13fRA‡ç\"ozÆ<õãQ—v%â¶­»#¥¬ÀhTåkeF†dƒãS¢þ`Œš†ƒ¯ê‘>þ¾Z¶ÔB¶q\Zìql[GÑ•BgÕÓ—•9¾ç+}“JIâ=Vû5d-¼¼šÁ›Yÿ\0-~è¬Ë~?¶â?pÿ\0à•§ìQù½ŸòÓîŠÌwïûn#ì§Ý·K»ÊyˆwÎ8ƒ€h0N‡ðó¨ÜfÌa´ÈX“ÍA °#”A9Ç-]ÝYR<)É$.UÊ\r±ß»Î^Ú¸c1¡f@àG+<^V0n©íyOEÙ·€™g„f\0HdB¤´	Ìê=ºS‘9CD|sGÝo8¯%.åÍÚj°\0$êý&™ºvJcökÆó5±š=n€8Y>ßáÒ«8Ç¬Ëç)úp:Ãúãùæ´ÂÚý+Ÿ÷–Ÿa¿H<ÿ\0¦ˆÃ3bgÈ²ÇãIŸ‘‹™à}sæ~UÐÑ[ûòÏøXùŸ•t}\Z}‘ò§Gø…êý¨¢ŠÚc\n(¢€3Íü²\râ|G!Ò³­¢¢Ó,©âAb	D‘¯¶´ÝöJ|‡Ê³¹l‚Æc2¤2œÍ<¾¯ï“\\Æó~ÖtcÅ9CLNÄH*×ÁÀæÊTƒõ³IÕOêéÀFe±w­µœ½µ¼Æc³îd]!u$èG	çà*/\r‡bZ°š¬!VÖËÈ[C—¾N9ƒ[µÙÁt·lÂ]ÂæG*rÉ\0æ\\º¬r#JÒÚÊç‘1†{ìæ¶¶Êö¨\\¯ß²I~·	åâj6ÞÅHWmÉ.TK·D\0ó&iK6­¢…42ÑYœ^ïiN×‘<58\0¦n#ÛÑFµ†C˜ÅÃûÜ4¡4Ûç”v¾:&62ˆÑÄO°ð­wt0ãÄŸÀVI»6›)/Ìð×MIç©Ð\']5­ƒuÿ\0³¯™¬ú^.’©yª,Á·ðÿ\0ÔMö×ÿ\0ª­qý¶*2ýY‰ÕgàÂª[øÿ\0õžŽ>êwŒÌ%ìß{ ¨>®šõ?\nÉñ:÷YúÇþ‘¥’K÷=ì-«Û»¶FPHlÁÁ\\é€e°om/ko: ‡f(2°7A I#‚jNn]*³»8–\n©m™K\\0rÞì×.t˜˜Ô„åüK+]t[ŽYH€\0+D²å:jt§BNQÇüÎ´¡TfÞÕN_¾=ÉŸµ­â:<G0GO\nÌöqþ¶û”ûéV­Ú¾–­Ío]$™ \0™£†§ŽŠ\'Ärª–ÿ\0[ýÊ}ô§|:¥]–%×\']Œá{³«jƒ¾ê\ræõÈô«õg;ó	‹‡ )Eƒã¯\Zí³ì¡á0\nÎÀ™]NS™HïDÈãÖ¡íåí_ŽYÐx)#ðúº:®¿>5MÄáÍ»ý˜–Ö$sÎ³Ã¬Å\"äÙ¯OŒ²{eb\ZÒ	®¹Oì©#_Õ3<|*zÍâ@&j;³Ÿ-¡0aU†Pà\'Y#M9Sûv€\0È\r\0öSRàDž^G	sZóuû¯å^­ZÖ¼bR¼ªJšvÉAküµû¢³\rýþÛì/Ý·Z–\0E«a~B²ßHƒóË¼»‹þáT»ÊM~b«ˆg¸ë>GñŠŒÄ8$¶VC\Z˜Ðê9éÌŠ‘³vAø\Z|Å5ÄBñ:ùEaÎ\ri´ò„—I`×Ç{ÖXèTêâF…„Ž¦#\0G€¦Š¸Aòƒ¯»¶½Ú°ŠCÄ\ZŸ)ÒHä=ÔIä–Ûcü7®?žkQöIsËýB”LaÍ6Ô¹“¡\Zû8R8\'ÌYºõ/ûÕ\'ä-4Ócì¬|ÏÊº;«ä>UÏ{;Öo3]ƒAåZt}HN¯ÐõEVÓQEHßUú_`¬ãx“1D:\0nD‚Aû\'Ç…iðbàû#ñ¬ëmµ¶¹eÂ–x$ŒÃ.¼GBÙG‡\ZåKIÒÜðÌ:ÛH½vUËZxba‹\'Y^ff¢$í1\rvÖ[Ò e\Z\\H+¨!ÏYy·Å…fAx¨!X†a/†\0\Zkä9Ò;è³ˆK­)–AÇÔqãà†šhÆž¸nB½v}¾ÇqîºZf’N`4 °LÐXëÆe6õë,·åÎR&Û°9t\"2™•<:Ÿ\Z€Æ]E{·3‹ŒZáVÌ!‰P¼\0Ó1èÓ„ÔêlÛW-£îu.X,®D‚<}½jZù·§\"»´Óiu˜$pŽ:Är‰ek[²?7_oÎ²]ÝŽÅ\nêXIŽmÏåÊÖ÷h~n“ãó¤é>ú¿Ô¶§î¢Ž}ßcÿ\0P1ÿ\0úü–¤ö“=»ÖÒÊa\'¾É =àÂ#ï\ZŠßOÿ\0|äÿ\0þš·²Û¸2Ü²n(:@ÚÖ_ˆÏm‘}¬2Ú\'ÈªîþNyH$g[r2\0À‚ƒ®¼£Ÿ\nž±‹·Ú]lÀ&PíH@Q\0‚8TÕ–ìÀD¶Ç¤DÏCGô}žÎ pO$V_´)e´ÍÎøÊRßœ?N\nææá”‹®Ê´ &H4‘\'‡z=õPÂëoþJ}ä­Jã/´SºT€:\nÊ0zm1á}>+_Ãfçe’‘ƒ_59nGYVoé._ÊOÕ\'Ÿ	­\"²ßI œG’HÒu*Ë<GÓì®ÛèÀ»\"í¯\0@áåLñ\nF*Ó•à ê[0:õ=ôësö-Ì[33•¶§#þŒ‰‚DÀÆ,x}ÝtÃ½Û„ƒhUU»ÆÖa*®N„\0Gòj1‘‰íb­Ók­–Ü´öÕžã¨¨\\.Ve7c!…$ý`8t<5¦[OfË”¼æÛˆî°`LÄ\"Ã‡:†™QÍ4Ž<wËñ¥ð¸„eÌ„2õ\rEâö¢2\\\0èÔé:™©\\Ââý‘ò¬Ï}mfÚh¤³RWC\rÝÒ´Ûªù•g;ñf6§èªÃÄÛÎÀ{rÇ¶—{Ä2ZŸ1·÷Y­)u9×™ž,B:$s‘Tm¤ªÝÖ2g_•løÍ±e.vnÐHÀ†ñáPXýÏÂÞ&å¦6¸›diã*|uÒ+™G™.=ÍØølÌ0–MÌÀ+L\"L:\ryW®È0C3ÏêhxGÖ8ÕÝ}2“m·‹£ÏÁéÂn_^é#õm¨´<‰ÄTJú×9\Z¸â£ZÂ1`·3AŽî¡L¡ëÄñ“_0à`:|3GáW|FÅ²&\rÅò¸ññ& 1Û>Ú0eadË¤®S “<Éÿ\0š\\¯ŒÖHQ–îF›)eÏÚ?:èZÁ6=©º>Øö­î·è¼¬Í«íQ[LaEPwyG}dˆ#ó5BÞ\ro¶µw,d%BèÀC¨‰ÑÆ£‰Z¼o’7r•ƒ$	ƒÇQTœH·”†œ§Ž¡\"‚3‚\Zæ]	+÷ÄÙ^xc-™…D\n˜£HËsU`©b\'0&`±Ð\Zôû&ÊÞ¹nÛ5¸Ñ€.WP4\ZpU#ý\rˆ :¸¸“š/êÒG6‚ésyÒ-ƒ¾nµÓØfn_K?XS2¿?ä…¹tþƒÎÃ±g¸Kög/~@ï6sÊÌkÌM}Å¤–Sw8Xî•L®·sš}@\nû@çO°Û\"ø[€[²À°\'½yHÐ\0ÓSNínÕÈ›ŽŠ¦3\" \02çs0`OeK’0ßg½ÚÂ[±`hV%„‘$\0û@ÛWý‰ú=gQ™\nO)\"=Š¿‰\"¯˜ØBüN¾ÉÒ£I[ŽMòÂé\'‘Î‘X«}—FíZŽVãÓ¼ÛBÚÇfä–H>Ü¤SHà¡‰‘?Hß:¬[°•,§ª˜¦ÎÏ‰¬™Õ®	—øÞ\Z½•>AþÕ9ŽÞæ[!“\'‡‰ šÏ­^¼8_¾<®?ñ§ØŒMãlMûçÎãŸÆ“öm?·Ô·ÚXç¼ÛFàÒËÀ}€:NQL6yœr±2{Tžz÷\'ã5vÀc,YV2iþÄ¶õ¨Ðg_¼)ÐpX‚À¹ZåÛ:èVméÉü ´HìÇmi©»û… ‹ÐJ…Êc‘“àgáZÉ]Û¢è·¤21!{@s\"1+$så&¬Ëµ‹FE3=åVÄq²™ð5PØ×¾`‡,}]5å\'ýÅHc{G†`ð8Ox±3\ZU“X-É/Ž¿hK–L<H)ÙæËªÁ¶]N‘U}üÂ‹öIƒ«+‚ÃÕ ã˜ÇN\"ê‘’é\Z&4“˜k•xÅÞÄ8 ¸ õÊÑQ¹±·`!ƒëËSFg³1AÄ æðþxSÄÀ¹KxøõÔÓ­ÝÀÞ|HT ‚íÁrtñ&Š«NQT?Iö™;J‰ÈÀÝ9”{{Õ|ßi`-ß¶Ö®®da|ˆèG\Z¬ãº8\"Úòe6q&ëweS³‚a²ƒ(ÃX\',+kÄ´¥Ë7Ô:otŽ|«ÖÐÜ|N–°;tB?H‚gÔëÊV|…E5Ý ¢mÚ9…efh`|ÅfSœ>]£Ýq—)’ö¶­õâÓä|¿Xyó¯X¼Ë˜3$0UÄÏˆÈ¨ŒÕrˆ¸±ôW-Añ$÷OÎ™â6Õ²{ÖUŒë”²Ã„“$GÂ‡:¥æ_Á,]2scm\0¹‘«p1¦µMµúF-¡s<uÒtéÎ¦ÎÖ²È- !Rt:¸“3¬“Qû7~ëÁINµÍ±G|¶ôl©¼,öJn½œøÛj9Ü_\nÁ‰÷[µfþŒ·e•Î*à DZ‰, ¿”HdÖ‘]]$q&ª{§`¢Š+I˜(¢Š\0K‡[ŠU„ƒT½£¹N	kG€1ðçWš)VS<Åád¡Ñ—¶ÈÚ6ô@êƒý4›xâ þãZ¥YžüfÑ¡j½âŒÂÊc[ˆ%oÆa¶9ø³ óË§˜Ö´Z*…7™I°z¿ñŠEcbîŠZl÷	vêI\'ÚjÌ}¢¶W\\`±fœå\'–rÇ¤›ooibCi7	×˜:‚<\"«ÖññåuNõnvh.\\M©aêÜ^íÅòaËÀÈð¬Ëhúç‡Æ:]¶þHGÊªëL£Y1öÄ7(§7Y»%3ÌýiéË•]ñ~„¶šžãáÜuÎÊ}Å(µè_k4l2ŒcþÔ5*+´Î¿(o\nØ¥žý¥]K:€\0âK\nÒð>o;lmµÅ»lÇØX•h[èÓ³Ø\\@×o.Á+ö\0Ï;K˜¡”H<}¢˜X®mßp¤aYTLöl;“á¦•g`âJËB7ê†#Ÿ¬¿*º×Ê	ÉœbðW-<°Þ±xÄ|¤W–2‚Iú¼çÀqÿ\0šÒb€*0NJ^ÍØnnm<}sä3Vì&-(DP2zšZ¾Ô‘¢Š( )¶/gÚ»úKjÝ	G‘â)Í^Çî‹‚3\\_ÙÇºàj¨âý©rÉ‰Ê#liîaò­>Š¤«Œ»Eãd£Ó3%ôVúN,G?¢×ïÔîÇô{…²Ê÷^eášùå}¤ÕÂŠ¯ƒðO‹?pŠ(¦‹\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€?ÿÙ'),('jorge','gonzalez','mecias','jgonzalez001@ikasle.ehu.es','757575757','ndjfdbfhdbfh','Ingenieria del Software','		','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0		\n\n	\r\r\r \"\" $(4,$&1\'-=-157:::#+?D?8C49:7\n\n\n\r\r\Z\Z7%%77777777777777777777777777777777777777777777777777ÿÀ\0\0 \0È\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0<\0\0\0!\01A\"Qaq‘2¡±#BÁÑðá$Rñ3bÂ\'r”ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0&\0\0\0\0\0\0\0\0!1AQa\"2¡ðÿÚ\0\0\0?\0ô&¬sÀ°Ô-!~N°[Ô}õ°¾ÚöRŠ<g9>ç\0J­h-øÖö‘¬éI£W$ñ®ÆFu¸â‘ˆØ¤ýšÑÒFC{[QÉ(ÅÆ§6/Š!ÑÐtåfµ—ÛïEbòÂ?Ø\r¿_¾¤Q.èœ0½®¦ù×$³§ØìŽ*îGò¯åR.4]q°düÆŠ’0¾o0näwÐ×*Jù™I¾u¢ÚÝšIz\0–(ïkcõÔOOëîÆ’4`J¿–ù·mC%+[«Ç%’q@1²ßé­škv:˜FU¯b5ÂuJIgZt¨V—u‚¯\'ûc7Ë¦É4Ð4òGHªF‚¨?ÔN¥ðïo~úYñ#ÈõBH©V_y2[Ù@ý~£M•ŒTAçð£eAp	ïmsâêÓ”Ô»!¥µ¢6ã}\Zöï¥´Ýf:ºÿ\0–‚5hÒþ$ÂAµOçoöú°ÓÒ;µ­åõÕ±õ0ÉQ`xÝÓ@ôÔþ<»8Î™:°Qv=ô\\qÇ\0(¾»`Œ3©O3“×bØð¨­‚Ó;-÷}µßŠØ\rHÊ}4=ÀkéÊ½8Ú¬Ú\rXÈM†§p$üLmé¬›Œ\rU:D›m‘Ø ¹ÖjY|ÉÛY­Ü\"u@ØòçL©:A“Í5Ñ{Xó ãaen{\rY\"hö\0q}6|’Š¤G§Ç;ðŠ{á¤·¥õ³Ói£á~çF—\0a†¡i}Æ¹~Iû:þ8.ÈQÿ\0Ü}\"žfŠJˆ£@l²ã‚=.47XøžZvˆtºx«€ZÒX’{|¶—|[GAAWµ8ž¦_åÄ$#joùsõ:¡u:¡X­¶2ÑÄ<H¼2l‡Þ×¾={ëÎÏÔJ2âÆT‹ŸÅ	Òz}5•ÉáÖÔÄbµK’Àœ±o¥‡nÃ°\Z¦üFý+©,’$²ôæÚZXÜX^Ê^Àen0tŠ»®SV’Wg*ïS Gøþ÷÷ÒÚŠ™§k0ŠEhvIøØq`=y¿}s<Íä¸è6zFø«øÿ\0Q’.\n½,nœ·ó,xm˜ ]=«…ÑZö \rxŸEëtj™*ééDsF3¼DÙM­c`\0±7þú¹t?Žeª™Ù]ªn¶œ\"\\rr?¾»qõ|aZMÑõOˆHé¥ÜÔ;+DÏs%–÷\0qk~úaIñ9mß1Dñ¢ÈT²¾àƒ±?S\'øŠy++ézšŸ—#‹° çh\\Ø÷ï¡z_ªªZ©\r-FEV˜Â„`7\r‚3íùÏU8ÅÅ?èW=–©ºí1…×h2ì\'Ãf·o¸ÈÕRžÆº#™%›ñJ¢Þ8Î1È°×SõZßáqË,-R¦ÑáÄ	°¹ì-kÎ‘ÓÖK#üÀ˜FâþFA›[×\ZäÍžy¦›}€¢’h°ÉICHÅ¦2É(¸\nâÅƒŸcsúMOYÔ©›§Ã/ˆÁT‰<[²vÉ#œËÛK§•êÅþoÆR¢î©u\\{ØZ×?¶’­jRÔ¤-	˜îÜC£+6/Àã“lzjswö)¢ËÐÒ8EüJwc1•WÂ,²‚Ö`=pn=ýuv øš†YDJ)ç¾Ñãè/ëlÛ^@ÝN²2šm‘Í74L,Eý¹ä÷7¾­±õJÎ«ò”Ôô¬ˆSæv_Åf8-kàŒXúÛ]Ý.WX²öz7â¹ðÙZØ67¶¤%Â·Bü5ðí7C¡0#¼²±Ý$­Ë›óþþšpávØnúõc“[@àû‰žFnçX»Û\0jiÂ	Ar…AÍÿ\0-tÞ´rÞöÍü¼¼ãï¨ßz°\rO¼p¯¢a§¡¥Éì4ŽuÜ~\n_¨†l(¹Öiº¢`\0\ZÍOåú-ñ?b(b¶Ñk¹E•ïõÑÆ=-ùk>^0;èË*`Ž\'\'‘!‰¤™‘UEË\0ÒÉúïGŠ©)¥êp,Ò\0QC~+ñž/®z¿Xè1FÉÔ\'\'m÷F‹Ç¯9êU·«M=k:\\ì,Š@$þ[¿7Ï¶¸³u.ð¢•CŠºëuÏO§U’œI¹\\©\\[žùÕ-éS#>Ø£k·`Ê¼Üæý¿Ûé¯Uzv™Ÿ¤blïs»½Í°}³Û×BÈÒK\Z‘+³z Lã¿Ê=={ëÊÉ9ÊvÌ,Ž¾?\Zf	\"BËbÅ	%ÖùïöÔUñBÏ”RF$¸ßÊ vü]Æ;ÿ\0PÖæJz‘³Áu8Ï¾qí­ÈZv*a§ˆ#e6éÆ9ö÷>Úx¯&\"ð«V›gP¬hÓ}¶3:œ‚ík3é´ñB°FÒÔ>í«½B[–cŽù\'?ó¥ÍB”Ô­5\Zª KÉ¸¶ë-—Œfþ¹\ZŠ£$Ô²E’)U¸àdŸaïí—”y!‹už†j)¤\n‘Ä¶ìÇ…¿­ýþšÉR:ƒM,¢Ä*$ŠæG\\‹oC|éU8§2IÑx¥ÖÐ”mƒy°ËkÛúé—M«¨ª¦fT]ˆU›)¸Ãý½ïÎƒüabl’’¢Y£‘dY®Š©â\rª _ð’M†N/ëéa®ž9iVEw¥™˜ZÞ\\ónxÔUéªÃ×¬NX((²fC`AØ3aÇ¾˜ÁU#ÍIQ:…_€„’6µÍøí¨B\\_$‚Õœñ…¯\"\r÷Š\ZvVA›g››r;j½_fY©ä_‰‘÷0bî>¢Ùú}5fê•[`1Àð3ìÚB\0Æà^ÂüZÿ\0[\rW©ÌQVÏ+¤Ñòï•. q´Y­è{ñßB\ròrÜ«<ôB¦3â/qnW`›ÚöÅÈm/‹©=S\"Õ(sÜ<$nîs{ZÞú¦²”š\Z9\ZF‹ Ê\09ô¿˜ÏÜJ*Ö3U>Õ‹ù’3[ÃÎÛ÷±ï¦Ç	U£6køSâ´ë,Ð5%L{¢JP²°±b0.\'\Z±O 8×ˆü3%BV\nYç’–)7$òøé†½òW6<ù¯ÔzÇO¨h¼&¬’¢%$¤“uRnöÈµÍÏ:ö:vÞ¥àYäI5·	Ög>^uÖÆ\"áqë£ …cìo®ÙN–ŽXcs‘ºzpˆê{MBÒ€n°T§v¶ íììŠŒU\"\\úk5UÄ?¬k4)hë#^ÕKâ?Žß¥U†‹tjl|BU¤½ò¶íŽltÂz™{©ûimT4õn¯SÈëb¬Fqý´óÁ)/ÁÑ”AÖ:ÕR¢=BNŒÛä“eŒäÙM®ÅR.?¾ªuÉ\ZE5ý5Fë®å[oŽ,mX:ô	WÖˆ§hiTF	,\rÿ\0·Úßž«õ‘“P Á,p€¦_ÍaÁc|ßØ_^&VÖJ±Ô¬ßMêPÓÌŸô$JÊ	ÚEâì·¹ãòÆ»¨¯Z§2SM$V¾Ò„†7[bØóÎuOq;!eO*„‘¹cÁ¿µô\\/G:ø³´Âò¬{[‘eçŽú”é¾Û¾Jº€c3E¹È­°Ü[w?ÞãÔiUD«USü’ vm>fE¶,M‰?çNf­¦’¦FÚ¡XÏrlx·a¡~^š*§6\nÅc°bÖ³w¿ï«czz0L´Sü<1‰¢pd”›%G”[\r¤U°%%S$ò¬S,P¨ds{‹[\0o¿å¦sM(SRÔFßÁ’bïŸ6ëñßŒé:ÊZ*E\\ÉµQ­kZÀƒÍ½-ªbŒ¼šÆ)\'QžœÄ´î—	d{b.Î~;~¯â†Iéž(¶¬\0â¼y½…üØ°>¼j	êzDhë]M*¼a¥O	TFÄûãüûú\r9é´DQÊÕ*ŒCX‚£ÓŒ0uÍž|cö\Zu	è£½/ó§@¤4+eiîoôý9Î‹š¾¡z|,²øm(Ü‘ªµ¡\'¶ÛƒŸÏ6çQTôÙÒ¬©tGìÝ¬;æìMÁ6À·ö\raªéudž¥ò”æÂRíøÈ>]·’\0ö±úh¨ÅÅ+ê3ËòhYÜ(þmŒ¡ar·?‹Ð\\ûãBõZ:ÉY¾ZžV(±2œ_–*O9µÆ‰ùxé§«¨I!š×$nfP-œbø=®Mõ•	G§AM;nP<y·]Y¯´X`sí¤„’Ò1U’*„‘…\\-O)\0©Wl`‘ßü[SÇHe Ö)ì>#†±\'·9íééë£kkf¥«†­%Yç¶Ç2†f>ãÛ‘|2¦ë\r$5Œ³Óµ@S¶\Zt³KÚù¶\0=õÓ)M%H5bnõqMNifT‰d²¼™nw°<jÝÕú¥&útê~%@˜ÿ\0;ÁvÛ9 [\0í\'›‹[7ôÕoáÊjéª¤êÔV)C1“Ëå¿uóbäî-£ª«ë«g&	!6K‚$S~äg²yµ­Î–S—*‹KÉèŸuX¨:]L—‘á»*Š¯ÊŒ¶,@µÀ¸ÕÓø•(¦Žz™…:J.¾3¾¼ˆ*:L^±¯Žîo5ãf ßÊ›“ŸslgNº_éÓµ=G^¬©¡g ƒÆ/EÎ»0å—¤Ñì.­×#Kêl/›j9º½5m=>¥Bºy&Œ_mý®¨\r×¥=qèeëá®ï\"2È},ð5ÖçÅ+Ñr2+ÜÇ*ºßZúÍW:oZèÔô«sÅßÄ\rÖçÖöôÖj±É\ZÛD¬¼„ðö:G×âêRÈcéA!²î•ÁlâÖ8ãN‘o”’=õ¶Ú·1PÉ½¬?=‘ä»‹G™õ¸\'§«-\\!iÊ­¤Ú?þÕ°­Ÿñ¡*~Z¦K\\’HêTØÝ®¶öÆGoO{jðz-E›Ûçæy.ÍÊ88¹°íïª5UI0FÒÏ*Üù,pÍ›÷¾¼LØ¸Jß’ŠV„‹AJ­\\¬¬X=“ÌÊ-Ín½õÍgMª¥†‰ä¦O–›qyaó[÷\"øïØŒûhªÚWéÑ¤O,nÑ©Cr6œÝCãßž;ê8ÇHÉQMá4à\râMƒ\'\0‘ý?–3‘¤†žÂAS5e­jKªS·°P1‚ŸQ¥’Ò¢×À´UJ“®Ó–U*­´rslÜq£ã–tˆ™wEäü#üDß‹ñùh©¡§ùwYãg¨b%,\\*-Å®×Ü=À ãœßWÝŒ1²G(ˆ|Àä™r²BÂã×ÒÃPõš±ªºx¦–/òor$^0ÖæäóénÖÓ¸ßÇyÄUÑ”\Z*Ûk;‹ryÏ¾‡¢®ŠiVßTªoŒêÍÎ	6\nA¾-r©ËÁ…ý&Z™ë$ˆE,L¥¦¯á\"ƒ‹6-~~Ã¶žuºKNîÂœ©º†%³sry¹Æ}\r­{j\Z¨ëÁ\ZªT…YŠÉ|®ÓœZÞÃ9¾˜JÖéÑÈXÏ.Ï9MÖ7k`q~Ãß<jS’rR ‹zeU¥©ž8í°‘žC‹G\'\"öÏÔê*©&¸aÔia>ic3&ô”0à€§>›­œk„†oáSÿ\0\nŠ–5ŠapÊZø¹úÛœqï !êU› žiâ@‘ˆ P’,¾ù<ß…Õã|S¡M¬¨“¢,eL•›Û{—˜~»þ‡CË[óp|¹Š	ê—ÄØÍåQqÁ>cr3ÿ\0:Ž‚¦”ê5D#wâú†è{sÞÖçJœÏÓke,ÀO#eµÛ7â×¿}oØ2ÕªAƒi#ÂØ6¨7¶{ßœý5T±G+ÇÔdª”ÛÈ¼žG®…«©èä1ôÒQlõHÄ`-Á#Œœ{é5KM5H–¢YÖÖY­kys‘Æš-¶½®’)è(jÄT›ï¹”6ç½®\r¯{}<i_Q¥~Ÿ:«I4¨lX–ÂùÝwFž¢hç¡ŒÔS0òøÛAcèE‰úgF§OÒÎ²ºA `»ÜÈ¹ïrEñý7ÑUÜ U3tõ¦Ò§‘@TGR›<Œ\r±o\\k¥õyèÈÑ#I^6”y	¹¾à{ää~º^ÐËORRQ ’ü«p¸8ö¾¦†J¡Q‚Þžlÿ\0PãÓ§:¼Æ.2zêÄ¨’)\"¤Y74³E)+%îNwc¾-¶‘-kÐÔMF)wÙ”¹»rlAò¾t³Ã…&zE”ª˜Iåvöí÷¿¦4gH­Hfx‰‰ÞAå%Ô <zq ù]Ù©N’ðVôõ¡Š´Hm¤ÞˆKärrO®³JaQ2Í<Ž$3\0ÓFÈ| `Xr\r±õ÷ÖjŸ2ò„peâþ£ÕT´TñÄE˜œÛ›ÿ\0Æ·Yñcõ	#‚¾œXÈ”þ]ß¡Ç¦¨#§UUÌ­,r-9_<‘º³m9¿ÛV¹) ¤3³JC·—p8EöPËšWVS‰_>«tê™jßMäU”EÍ±qùzè\n~±QÊµ¦™È\n©\Z0Ú3sƒb~¸û—†‘ªÉ#!¬	#ªúÞæýô\rjÃE<Ñ¨_9°%Ü[mé{}‡:ƒÉr¦„¦ˆÛ¨Q£ÃÔ¯S€F¡¼D/rw9>Þ˜¿¦™õ)I¦«á¨RG„@!l\'Ü_§}\"£–aR\Zí.òbò_½¬¢ø_{öãÚrõÆ¥Rš8Ÿld9[5ñqÍ…ÎnMÏ:IFÚ`B™ƒÇ9o\n±	#«\\’IœçÑUÞ\r,þ“åFÓ`HfµÃœµŽ}\0ÆŠC-Lu‘*)}×ŽU¢±±\"æØ°à{éeTÌexëlUŒù–×àqk~¿MtEÞ†4±ÓTÁ\ZÏ)ŽdÚÆÑ¯$(]½}tö:êéS§t©•›x»˜nCvã Þú§UÒÅf–…¥–073˜ìîµ¯Ç§ß\\ž¥ÔéáHa­•\"EÂ%…·^äzyÓ¼nOL×eÒš\núH¢ >t‚äÛQ†NI¿õg×S%GÍDÉ5tÒ•¨³$3\0§p €ÍcøOkÚøÎ«]?¯ÓÐô˜þTÊz®|j™\\«éØý½o¦ß­tfJÐÂ8\\3Mf,Þ÷×·<ú›kžp”möF\'®šŠŠž*X&”³»Ï)‹âÙ~º_Y†ÐÓPBc{$ÆY™ûØßÞ¾øÑu£ÐSK±y#6\rà†º•ÆHüBÃøÅõ^VEªù¸mñ6(ý=íîNžR[A,ÒõzutZ:bòÉ{Å\"‚âÞ½ù±Ç|iUlUCd³¢-8%ãae“=Èµí|[ƒï}%†¶hº’Î²˜ªÿ\0˜ößý¶4OR¯IdšyT­çå­a‘è	Æž8x½\Zõ:Ê§ƒÃj¿²ñ’H6äþÝ´RD•Nî{Ûê?¦ú6x~V?2‚_iÚ\'O~yÔS—•\"xÑ7ÀŸØv?ùÕ$j æ©iáX|%Ý …‰ck\rÙ\'w=½uuM,qK*•¸¶}pTúq¨gvl¤¹!\nOíŸMA(’¦`ó6æ#$òNŠQ1=©†æ!¥òŸ:©{ëÏ|1Zªz¸Ö †hÒò.Ù6n`¼nî~‡:O²zU ¿‚À•`,Hç¿mòÇÔ§†j©á€,aBÆ\rÀQlÜsù›úú½&cQ¤ÔæWx¼1•a¶ç½íôÿ\0\Z•jæBóGj¢Û[i;l/ÎtL“Da¦IÑÊm†°±ûþš_4uQlF“hl¸±ú\r!†Uâ8£glî,-ž?mf³¦O? 9Ú»)·|‘Ï¿<ë5)I&ì²«J¡2YöyœqoÛÏCEYO91NÎÌmÚÖïß@CZ•0,0¸ØE£fn,?ñ¥Õ•‰I3xÖÏ¼… µìmŸ¶£ÛÆß?\ZÔbB¾Dt$]±·¹Ð0ERÕ,mÈT4¥òÍˆïéûéDu~É*¿ó²ÆáGúu\"üC$2R\'{ÍÝÜZÄ\\ð-|[ÓüOÀ¬±TÅ#I$‹\n\"˜ÿ\0”²‹‚Ý‰ÇýMµ5´‰DËÙ)bò…,A<c›cý7Õ/ª|ESZ±D¤$1©QŒ‘õçÓí£º<´­ÓŒu‡{¬³Êª2\0\0µÉµÏöK.ž\\?\"mj)êh(ç\"!½÷+²æë`Ê	äÛüi\rMEgL¨ð¥¨q\"aì÷Û~@¿\'û>èU¯UÑºôÓTÐ¬,’“ˆÀ{/9üµZ¨š^¡Óêú„Ð—H*¤’\n\r…¯ßŸ®«‹ò$ÕÝfZŠpÉLpð³y^Ä~äß\':†IéjŸæj%\n]Hðv5ƒv\"ÂÞùýµjUeiÀšA¹ÖÂ÷<oaþ9ö×r/Qâˆ©)»ólskê•NGCG$0«[î;ÕÅ³nmùh¯‘¬‰#Žj³¾I´\0MÎ8±Ç$ØgJŒÆŽ¨Tßiu%›<qŒwúéŠõ£–i–¢8äPå£*EŽ8\'>œè¾F®«’> ò+$‚&Ú\n-³‚l3cn5e¤éqÔAEL ‰?˜È·÷A{ò}ý½t®’T®ê¦Hi••¤»C\"‡Mƒ¹ýôÎ§©U-2-:ÒÁ\"ËüÕÛqËqÅìü‡¦¥‘·IUWÒ¼\nhk&Ú”õÉã¸Ü{¨<‚öÐP¤$´u&8Ws¬¥N@ÿ\0Ú}OµïmZºíDñôŽ…4îÞ5m ivsÁÀàÉµ¯ùê¤ð—«ªtûdk[ØöÇ¦¨¾Æ’AtðµKAí(a½G™Ç­ÏØiÏÊRÍ\0JòÅÐ*@›À*£°¶„é1TC$³33­ü5“È?LèŠýÐTHðÙZL\06’[Üöó¨N\\&\0yz„Ž¢§|w³y<Ì9±#’xôöÐ\rC4‘Ë\nÅ¸t}¶-k‹{_ûiªüÍ4Jd\0«3\rïØ_ó×!åŽ#µ3\"’w–÷Áö×ÑR•IU4¡âŽýª§jîÚM¿oí­KÓÁ€3:\\+“n0E¸ïqë§]jZ9é£ŠUa6åU%6ï<_×žä~š:zRC$”ìºÉµ­rVã žF3]Qd¥`²»%;ÒˆË-Ø”ó\0;Y¯ë¦tµtõ°I2TDÂV¡¸»‚ÖÙÿ\0Gm4i©R	%1	ÓÃ\06ÐÌmêÇ9õûê³Ô|	M:Ó#—?ú¨xN,>ƒ¾ž2åÝ{ÓU\Z•@b6uc~Eûñžq¬ÖúT2RªI#²†Stcc‹ÏY®<òÐlŒK53M\0VeÊÞÄ¯>—Î‚é½VâšH÷Eß°çï÷ÕÚ£áˆjlíS\"¸á“Ðð/NyYä©©bÆüªþÃZF*Ù¬óÞ¡Y4•L_Ãp\r¬˜¦‚å‰A“ŒëÔ‡À!ËTŸþ5\"üÐ\0Áœýgm[ù¸P,òBÚöï©Ts¾ÄûëÖ—à‡ÍÉ¦|vi[\Zí>øv1w¢Þ®ÇAÿ\0ÐÅöb•ð‹»t‰¢^ô#›î\'PÂßþ>¯”Ü4N4Aÿ\0ùkÑGEéT3¨?N¦Žx­¸“ØÏ]u•Ò §étqÐSŠIë$g‡`ÚÄFlHïÀÑ]\\Òÿ\0\"ž†f·\Z<V³Â­k9¶½qz@Cåèô_ÿ\0:Jiú-\rô}>þä ¿é¤þ|%Ú$Ï\ZzÒ‘Æþ,-ÏçÎŒé´¿¥õz³(_‘%UÞKmµûzëÖ…GFeù·q\Z¨«º‡K^›RÉ4\rm„*½…þ†Ú1êùKŠƒ\Zg•ÓuÑê\'4¢6¿òîíqkƒÇ~:õ&’WS\"›œfÀ_^·ASÓ©RXb©…’:‰HÜã»–¸·×E\ZÈ¶øÔÆF\nŒ¤—V“ÜEe\'ã	é\nHÍµ§&ÙþûñŽÚ[KW&iV™%š7oæ›ùïsŸ¿kkÑº×PJX:MyÜbxdŽÀ/qßÛõÕcâ)ÍLëT•#sÔÝƒïUu/ÚàcLòr¥^†’Øq$8–_ë\0«‘Ì›úêsJ©†Y*±–,\rÅ³©)~3Š:\"j&,H‡ùƒ66¶¥?ÛðQ0>ìOö×<¾KÔD´\'—q€“–Ap]nOÛêuÝs¼c¦`c—l`%–À’sÉÀÇF·Ç³“å‚%¬ÇX¿\ZUºŠ>{µˆûéï%~ mõ*VjQYQÙ]lê/–¿O¾¸­¡Ž)]¼9åY@ñ”«bA¿ÔZÞ¸×=gâzÊÚaµ>ÏÑäÝXûh“ñuk)NˆF|±fú7‘EhÚ•|\Zv§†žG!@†ì°ÏÚ\n†3Ó Z‰\"s[mÅ\Z3¸fÀŒ~Ã¾ŽõFa¶­˜ÿ\0úñ¡ª:×P–±g’¦DqMàìÅïkã¾©	K³_Ù“Ó$µeR¦Û#ÉÚ¯ÇÔžÚÍ-þ-Ô¾¤z†?ßY©8»7#ÐLÌ¢êÛØð ß[w1&çÁà©(\rñƒrNº4ò³y^öÆ¸xŒ*.»†æ¶0u¤uk†Œí¾¡ùiK“ãyyÚ¨9úß[hímîÊÀg\"ç[‰¨ŸÄ!F}BŒë»n×°Å†¡NÒ¹#’I×~\"ƒ´ Üsûèqf£U{ª¨ü£4‘Ésœ+_ûk&C##8S°yY“q¶ôÆ¹o{,C›mJ©!Axö“œ/\Zk•PvfÀ¶»é¤_E#UÂ))Zp\",Á\r³ÞäiáEf»¶ãa¨åLÊèEöì&×÷Ób—	Y¨©šjÞGJ™{ùb‹üê9©«¦ŠXÏO«\nä~ŒXúúêæ°²‹x×¿kk‡„m²Jëî„_]K¬’}€S–\ZÒw«\'¹)¿®¬}=\"ùD°UlDƒð›ûji¨£š2%–§\'‘®5ÇðZbMæ”!k­‰Æ“.o‘S0]rÉThÊíÀ\nÍ¬@Žøýu”‘UUÉS4Jó¾Û’.,Û{\rqB¤\05S[±“N¡Š0nÀ’þkêNN´Æ°?àô_ˆÑÑù½cþúíúM%Yè bÇý¯¦IMCeoÏ—:èKM·ówØ¯÷ãSn~Å¤ü¦›3tê@}~Y?Æ¤^@ *ÑÀ1ƒòéÓFø°“vI¸*HèÖšztk­|±úzh\\ý†ÐS‹…³pÓ[^“DKnéð0õeÉÑ‹Z¡€2ldŸ×[5(Cm1ŽøkgG~ÍHtÚ@Fê8®8N5Ñ ¢u³RCêm\Zêt™w0*¥¹\"ÃüjAQsaru­û6€¿…PÚÔÑú•Ø?Æ·¢DÈç	‚?íÖh\\½‡BÐdV¾äÚ}ï©|O-Š†?}’l#3®Ðz}N²z½Ò&ü)ÿ\0\Z~ ¶v¢Ü€ïÊ‚5Îø™Ç‹à³ð‰¶t’îbm¿·áÆ·)”\\Æ«oê±µ€çÿ\0\Z	Y­‡,Š¬¶C¿éºíj\0ÃÆJgAÜ°$0“b\0–·µFë… ©6ÿ\0Æ³Ð-„KXà]œFÃmhT–3]¸ ¨L±mb‹c¸\rÊœë¨ÖW.XíC½ý\\h\ZÙ .2·Ø€8ãQ‰j6X\0£†ƒ×Q˜/Îâ·ï©¼Ê­¸ß¹·?ïöÖ¶\rš@âãz¥”\rnYHdPMûmþ¡®&¹RŒwdµ€õÖÕAðÒÖ=±ù_cQÓ9Ž@ÊÌVÖ¾íÈÖ£ñ^À™\\)µˆàà½õIÜ°ŽBpÅŽqÜh•f\'ùEw }nüôMFƒ:ŸÂ×\0Ü9ÈíþýuÑ“lH¥AÅî2,3®PJló•!•l#ÿ\0\ZÝF¥ÈM¶\0ûèQ¨æFf³F†ö°<kJM”:®ïëmà\\úþÚØC&Ôh‚ŽN/Ma§‰K-ØÀ_¶ˆhçqve1ù…À?ˆœë¥ÄäpNyýõ\"¾Ë0³ÕAãüëfHËØ²ç¿ûýõHäÓ©R«SêàXêGª*|XzûëR4GnÒ9\"Ãv$ˆ¸39ÙmÜñôÖ¦\Z3rîü[Aœu,xÆì¹²÷Ö·¥šGÜ7`7íþûëµ–šRÎÆHÚ.\r\rÄäïUR7XçuÀÖk¶x0nn/ÉÖhQ¸£ÿÙ'),('jinma','jinma','jinma','jinma007@ikasle.ehu.es','768654323','jurhffhfh','Ingenieria del Software','		','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0		\n\n	\r\r\r \"\" $(4,$&1\'-=-157:::#+?D?8C49:7\n\n\n\r\r\Z\Z7%%77777777777777777777777777777777777777777777777777ÿÀ\0\0 \0È\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0<\0\0\0!\01A\"Qaq‘2¡±#BÁÑðá$Rñ3bÂ\'r”ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0&\0\0\0\0\0\0\0\0!1AQa\"2¡ðÿÚ\0\0\0?\0ô&¬sÀ°Ô-!~N°[Ô}õ°¾ÚöRŠ<g9>ç\0J­h-øÖö‘¬éI£W$ñ®ÆFu¸â‘ˆØ¤ýšÑÒFC{[QÉ(ÅÆ§6/Š!ÑÐtåfµ—ÛïEbòÂ?Ø\r¿_¾¤Q.èœ0½®¦ù×$³§ØìŽ*îGò¯åR.4]q°düÆŠ’0¾o0näwÐ×*Jù™I¾u¢ÚÝšIz\0–(ïkcõÔOOëîÆ’4`J¿–ù·mC%+[«Ç%’q@1²ßé­škv:˜FU¯b5ÂuJIgZt¨V—u‚¯\'ûc7Ë¦É4Ð4òGHªF‚¨?ÔN¥ðïo~úYñ#ÈõBH©V_y2[Ù@ý~£M•ŒTAçð£eAp	ïmsâêÓ”Ô»!¥µ¢6ã}\Zöï¥´Ýf:ºÿ\0–‚5hÒþ$ÂAµOçoöú°ÓÒ;µ­åõÕ±õ0ÉQ`xÝÓ@ôÔþ<»8Î™:°Qv=ô\\qÇ\0(¾»`Œ3©O3“×bØð¨­‚Ó;-÷}µßŠØ\rHÊ}4=ÀkéÊ½8Ú¬Ú\rXÈM†§p$üLmé¬›Œ\rU:D›m‘Ø ¹ÖjY|ÉÛY­Ü\"u@ØòçL©:A“Í5Ñ{Xó ãaen{\rY\"hö\0q}6|’Š¤G§Ç;ðŠ{á¤·¥õ³Ói£á~çF—\0a†¡i}Æ¹~Iû:þ8.ÈQÿ\0Ü}\"žfŠJˆ£@l²ã‚=.47XøžZvˆtºx«€ZÒX’{|¶—|[GAAWµ8ž¦_åÄ$#joùsõ:¡u:¡X­¶2ÑÄ<H¼2l‡Þ×¾={ëÎÏÔJ2âÆT‹ŸÅ	Òz}5•ÉáÖÔÄbµK’Àœ±o¥‡nÃ°\Z¦üFý+©,’$²ôæÚZXÜX^Ê^Àen0tŠ»®SV’Wg*ïS Gøþ÷÷ÒÚŠ™§k0ŠEhvIøØq`=y¿}s<Íä¸è6zFø«øÿ\0Q’.\n½,nœ·ó,xm˜ ]=«…ÑZö \rxŸEëtj™*ééDsF3¼DÙM­c`\0±7þú¹t?Žeª™Ù]ªn¶œ\"\\rr?¾»qõ|aZMÑõOˆHé¥ÜÔ;+DÏs%–÷\0qk~úaIñ9mß1Dñ¢ÈT²¾àƒ±?S\'øŠy++ézšŸ—#‹° çh\\Ø÷ï¡z_ªªZ©\r-FEV˜Â„`7\r‚3íùÏU8ÅÅ?èW=–©ºí1…×h2ì\'Ãf·o¸ÈÕRžÆº#™%›ñJ¢Þ8Î1È°×SõZßáqË,-R¦ÑáÄ	°¹ì-kÎ‘ÓÖK#üÀ˜FâþFA›[×\ZäÍžy¦›}€¢’h°ÉICHÅ¦2É(¸\nâÅƒŸcsúMOYÔ©›§Ã/ˆÁT‰<[²vÉ#œËÛK§•êÅþoÆR¢î©u\\{ØZ×?¶’­jRÔ¤-	˜îÜC£+6/Àã“lzjswö)¢ËÐÒ8EüJwc1•WÂ,²‚Ö`=pn=ýuv øš†YDJ)ç¾Ñãè/ëlÛ^@ÝN²2šm‘Í74L,Eý¹ä÷7¾­±õJÎ«ò”Ôô¬ˆSæv_Åf8-kàŒXúÛ]Ý.WX²öz7â¹ðÙZØ67¶¤%Â·Bü5ðí7C¡0#¼²±Ý$­Ë›óþþšpávØnúõc“[@àû‰žFnçX»Û\0jiÂ	Ar…AÍÿ\0-tÞ´rÞöÍü¼¼ãï¨ßz°\rO¼p¯¢a§¡¥Éì4ŽuÜ~\n_¨†l(¹Öiº¢`\0\ZÍOåú-ñ?b(b¶Ñk¹E•ïõÑÆ=-ùk>^0;èË*`Ž\'\'‘!‰¤™‘UEË\0ÒÉúïGŠ©)¥êp,Ò\0QC~+ñž/®z¿Xè1FÉÔ\'\'m÷F‹Ç¯9êU·«M=k:\\ì,Š@$þ[¿7Ï¶¸³u.ð¢•CŠºëuÏO§U’œI¹\\©\\[žùÕ-éS#>Ø£k·`Ê¼Üæý¿Ûé¯Uzv™Ÿ¤blïs»½Í°}³Û×BÈÒK\Z‘+³z Lã¿Ê=={ëÊÉ9ÊvÌ,Ž¾?\Zf	\"BËbÅ	%ÖùïöÔUñBÏ”RF$¸ßÊ vü]Æ;ÿ\0PÖæJz‘³Áu8Ï¾qí­ÈZv*a§ˆ#e6éÆ9ö÷>Úx¯&\"ð«V›gP¬hÓ}¶3:œ‚ík3é´ñB°FÒÔ>í«½B[–cŽù\'?ó¥ÍB”Ô­5\Zª KÉ¸¶ë-—Œfþ¹\ZŠ£$Ô²E’)U¸àdŸaïí—”y!‹už†j)¤\n‘Ä¶ìÇ…¿­ýþšÉR:ƒM,¢Ä*$ŠæG\\‹oC|éU8§2IÑx¥ÖÐ”mƒy°ËkÛúé—M«¨ª¦fT]ˆU›)¸Ãý½ïÎƒüabl’’¢Y£‘dY®Š©â\rª _ð’M†N/ëéa®ž9iVEw¥™˜ZÞ\\ónxÔUéªÃ×¬NX((²fC`AØ3aÇ¾˜ÁU#ÍIQ:…_€„’6µÍøí¨B\\_$‚Õœñ…¯\"\r÷Š\ZvVA›g››r;j½_fY©ä_‰‘÷0bî>¢Ùú}5fê•[`1Àð3ìÚB\0Æà^ÂüZÿ\0[\rW©ÌQVÏ+¤Ñòï•. q´Y­è{ñßB\ròrÜ«<ôB¦3â/qnW`›ÚöÅÈm/‹©=S\"Õ(sÜ<$nîs{ZÞú¦²”š\Z9\ZF‹ Ê\09ô¿˜ÏÜJ*Ö3U>Õ‹ù’3[ÃÎÛ÷±ï¦Ç	U£6køSâ´ë,Ð5%L{¢JP²°±b0.\'\Z±O 8×ˆü3%BV\nYç’–)7$òøé†½òW6<ù¯ÔzÇO¨h¼&¬’¢%$¤“uRnöÈµÍÏ:ö:vÞ¥àYäI5·	Ög>^uÖÆ\"áqë£ …cìo®ÙN–ŽXcs‘ºzpˆê{MBÒ€n°T§v¶ íììŠŒU\"\\úk5UÄ?¬k4)hë#^ÕKâ?Žß¥U†‹tjl|BU¤½ò¶íŽltÂz™{©ûimT4õn¯SÈëb¬Fqý´óÁ)/ÁÑ”AÖ:ÕR¢=BNŒÛä“eŒäÙM®ÅR.?¾ªuÉ\ZE5ý5Fë®å[oŽ,mX:ô	WÖˆ§hiTF	,\rÿ\0·Úßž«õ‘“P Á,p€¦_ÍaÁc|ßØ_^&VÖJ±Ô¬ßMêPÓÌŸô$JÊ	ÚEâì·¹ãòÆ»¨¯Z§2SM$V¾Ò„†7[bØóÎuOq;!eO*„‘¹cÁ¿µô\\/G:ø³´Âò¬{[‘eçŽú”é¾Û¾Jº€c3E¹È­°Ü[w?ÞãÔiUD«USü’ vm>fE¶,M‰?çNf­¦’¦FÚ¡XÏrlx·a¡~^š*§6\nÅc°bÖ³w¿ï«czz0L´Sü<1‰¢pd”›%G”[\r¤U°%%S$ò¬S,P¨ds{‹[\0o¿å¦sM(SRÔFßÁ’bïŸ6ëñßŒé:ÊZ*E\\ÉµQ­kZÀƒÍ½-ªbŒ¼šÆ)\'QžœÄ´î—	d{b.Î~;~¯â†Iéž(¶¬\0â¼y½…üØ°>¼j	êzDhë]M*¼a¥O	TFÄûãüûú\r9é´DQÊÕ*ŒCX‚£ÓŒ0uÍž|cö\Zu	è£½/ó§@¤4+eiîoôý9Î‹š¾¡z|,²øm(Ü‘ªµ¡\'¶ÛƒŸÏ6çQTôÙÒ¬©tGìÝ¬;æìMÁ6À·ö\raªéudž¥ò”æÂRíøÈ>]·’\0ö±úh¨ÅÅ+ê3ËòhYÜ(þmŒ¡ar·?‹Ð\\ûãBõZ:ÉY¾ZžV(±2œ_–*O9µÆ‰ùxé§«¨I!š×$nfP-œbø=®Mõ•	G§AM;nP<y·]Y¯´X`sí¤„’Ò1U’*„‘…\\-O)\0©Wl`‘ßü[SÇHe Ö)ì>#†±\'·9íééë£kkf¥«†­%Yç¶Ç2†f>ãÛ‘|2¦ë\r$5Œ³Óµ@S¶\Zt³KÚù¶\0=õÓ)M%H5bnõqMNifT‰d²¼™nw°<jÝÕú¥&útê~%@˜ÿ\0;ÁvÛ9 [\0í\'›‹[7ôÕoáÊjéª¤êÔV)C1“Ëå¿uóbäî-£ª«ë«g&	!6K‚$S~äg²yµ­Î–S—*‹KÉèŸuX¨:]L—‘á»*Š¯ÊŒ¶,@µÀ¸ÕÓø•(¦Žz™…:J.¾3¾¼ˆ*:L^±¯Žîo5ãf ßÊ›“ŸslgNº_éÓµ=G^¬©¡g ƒÆ/EÎ»0å—¤Ñì.­×#Kêl/›j9º½5m=>¥Bºy&Œ_mý®¨\r×¥=qèeëá®ï\"2È},ð5ÖçÅ+Ñr2+ÜÇ*ºßZúÍW:oZèÔô«sÅßÄ\rÖçÖöôÖj±É\ZÛD¬¼„ðö:G×âêRÈcéA!²î•ÁlâÖ8ãN‘o”’=õ¶Ú·1PÉ½¬?=‘ä»‹G™õ¸\'§«-\\!iÊ­¤Ú?þÕ°­Ÿñ¡*~Z¦K\\’HêTØÝ®¶öÆGoO{jðz-E›Ûçæy.ÍÊ88¹°íïª5UI0FÒÏ*Üù,pÍ›÷¾¼LØ¸Jß’ŠV„‹AJ­\\¬¬X=“ÌÊ-Ín½õÍgMª¥†‰ä¦O–›qyaó[÷\"øïØŒûhªÚWéÑ¤O,nÑ©Cr6œÝCãßž;ê8ÇHÉQMá4à\râMƒ\'\0‘ý?–3‘¤†žÂAS5e­jKªS·°P1‚ŸQ¥’Ò¢×À´UJ“®Ó–U*­´rslÜq£ã–tˆ™wEäü#üDß‹ñùh©¡§ùwYãg¨b%,\\*-Å®×Ü=À ãœßWÝŒ1²G(ˆ|Àä™r²BÂã×ÒÃPõš±ªºx¦–/òor$^0ÖæäóénÖÓ¸ßÇyÄUÑ”\Z*Ûk;‹ryÏ¾‡¢®ŠiVßTªoŒêÍÎ	6\nA¾-r©ËÁ…ý&Z™ë$ˆE,L¥¦¯á\"ƒ‹6-~~Ã¶žuºKNîÂœ©º†%³sry¹Æ}\r­{j\Z¨ëÁ\ZªT…YŠÉ|®ÓœZÞÃ9¾˜JÖéÑÈXÏ.Ï9MÖ7k`q~Ãß<jS’rR ‹zeU¥©ž8í°‘žC‹G\'\"öÏÔê*©&¸aÔia>ic3&ô”0à€§>›­œk„†oáSÿ\0\nŠ–5ŠapÊZø¹úÛœqï !êU› žiâ@‘ˆ P’,¾ù<ß…Õã|S¡M¬¨“¢,eL•›Û{—˜~»þ‡CË[óp|¹Š	ê—ÄØÍåQqÁ>cr3ÿ\0:Ž‚¦”ê5D#wâú†è{sÞÖçJœÏÓke,ÀO#eµÛ7â×¿}oØ2ÕªAƒi#ÂØ6¨7¶{ßœý5T±G+ÇÔdª”ÛÈ¼žG®…«©èä1ôÒQlõHÄ`-Á#Œœ{é5KM5H–¢YÖÖY­kys‘Æš-¶½®’)è(jÄT›ï¹”6ç½®\r¯{}<i_Q¥~Ÿ:«I4¨lX–ÂùÝwFž¢hç¡ŒÔS0òøÛAcèE‰úgF§OÒÎ²ºA `»ÜÈ¹ïrEñý7ÑUÜ U3tõ¦Ò§‘@TGR›<Œ\r±o\\k¥õyèÈÑ#I^6”y	¹¾à{ää~º^ÐËORRQ ’ü«p¸8ö¾¦†J¡Q‚Þžlÿ\0PãÓ§:¼Æ.2zêÄ¨’)\"¤Y74³E)+%îNwc¾-¶‘-kÐÔMF)wÙ”¹»rlAò¾t³Ã…&zE”ª˜Iåvöí÷¿¦4gH­Hfx‰‰ÞAå%Ô <zq ù]Ù©N’ðVôõ¡Š´Hm¤ÞˆKärrO®³JaQ2Í<Ž$3\0ÓFÈ| `Xr\r±õ÷ÖjŸ2ò„peâþ£ÕT´TñÄE˜œÛ›ÿ\0Æ·Yñcõ	#‚¾œXÈ”þ]ß¡Ç¦¨#§UUÌ­,r-9_<‘º³m9¿ÛV¹) ¤3³JC·—p8EöPËšWVS‰_>«tê™jßMäU”EÍ±qùzè\n~±QÊµ¦™È\n©\Z0Ú3sƒb~¸û—†‘ªÉ#!¬	#ªúÞæýô\rjÃE<Ñ¨_9°%Ü[mé{}‡:ƒÉr¦„¦ˆÛ¨Q£ÃÔ¯S€F¡¼D/rw9>Þ˜¿¦™õ)I¦«á¨RG„@!l\'Ü_§}\"£–aR\Zí.òbò_½¬¢ø_{öãÚrõÆ¥Rš8Ÿld9[5ñqÍ…ÎnMÏ:IFÚ`B™ƒÇ9o\n±	#«\\’IœçÑUÞ\r,þ“åFÓ`HfµÃœµŽ}\0ÆŠC-Lu‘*)}×ŽU¢±±\"æØ°à{éeTÌexëlUŒù–×àqk~¿MtEÞ†4±ÓTÁ\ZÏ)ŽdÚÆÑ¯$(]½}tö:êéS§t©•›x»˜nCvã Þú§UÒÅf–…¥–073˜ìîµ¯Ç§ß\\ž¥ÔéáHa­•\"EÂ%…·^äzyÓ¼nOL×eÒš\núH¢ >t‚äÛQ†NI¿õg×S%GÍDÉ5tÒ•¨³$3\0§p €ÍcøOkÚøÎ«]?¯ÓÐô˜þTÊz®|j™\\«éØý½o¦ß­tfJÐÂ8\\3Mf,Þ÷×·<ú›kžp”möF\'®šŠŠž*X&”³»Ï)‹âÙ~º_Y†ÐÓPBc{$ÆY™ûØßÞ¾øÑu£ÐSK±y#6\rà†º•ÆHüBÃøÅõ^VEªù¸mñ6(ý=íîNžR[A,ÒõzutZ:bòÉ{Å\"‚âÞ½ù±Ç|iUlUCd³¢-8%ãae“=Èµí|[ƒï}%†¶hº’Î²˜ªÿ\0˜ößý¶4OR¯IdšyT­çå­a‘è	Æž8x½\Zõ:Ê§ƒÃj¿²ñ’H6äþÝ´RD•Nî{Ûê?¦ú6x~V?2‚_iÚ\'O~yÔS—•\"xÑ7ÀŸØv?ùÕ$j æ©iáX|%Ý …‰ck\rÙ\'w=½uuM,qK*•¸¶}pTúq¨gvl¤¹!\nOíŸMA(’¦`ó6æ#$òNŠQ1=©†æ!¥òŸ:©{ëÏ|1Zªz¸Ö †hÒò.Ù6n`¼nî~‡:O²zU ¿‚À•`,Hç¿mòÇÔ§†j©á€,aBÆ\rÀQlÜsù›úú½&cQ¤ÔæWx¼1•a¶ç½íôÿ\0\Z•jæBóGj¢Û[i;l/ÎtL“Da¦IÑÊm†°±ûþš_4uQlF“hl¸±ú\r!†Uâ8£glî,-ž?mf³¦O? 9Ú»)·|‘Ï¿<ë5)I&ì²«J¡2YöyœqoÛÏCEYO91NÎÌmÚÖïß@CZ•0,0¸ØE£fn,?ñ¥Õ•‰I3xÖÏ¼… µìmŸ¶£ÛÆß?\ZÔbB¾Dt$]±·¹Ð0ERÕ,mÈT4¥òÍˆïéûéDu~É*¿ó²ÆáGúu\"üC$2R\'{ÍÝÜZÄ\\ð-|[ÓüOÀ¬±TÅ#I$‹\n\"˜ÿ\0”²‹‚Ý‰ÇýMµ5´‰DËÙ)bò…,A<c›cý7Õ/ª|ESZ±D¤$1©QŒ‘õçÓí£º<´­ÓŒu‡{¬³Êª2\0\0µÉµÏöK.ž\\?\"mj)êh(ç\"!½÷+²æë`Ê	äÛüi\rMEgL¨ð¥¨q\"aì÷Û~@¿\'û>èU¯UÑºôÓTÐ¬,’“ˆÀ{/9üµZ¨š^¡Óêú„Ð—H*¤’\n\r…¯ßŸ®«‹ò$ÕÝfZŠpÉLpð³y^Ä~äß\':†IéjŸæj%\n]Hðv5ƒv\"ÂÞùýµjUeiÀšA¹ÖÂ÷<oaþ9ö×r/Qâˆ©)»ólskê•NGCG$0«[î;ÕÅ³nmùh¯‘¬‰#Žj³¾I´\0MÎ8±Ç$ØgJŒÆŽ¨Tßiu%›<qŒwúéŠõ£–i–¢8äPå£*EŽ8\'>œè¾F®«’> ò+$‚&Ú\n-³‚l3cn5e¤éqÔAEL ‰?˜È·÷A{ò}ý½t®’T®ê¦Hi••¤»C\"‡Mƒ¹ýôÎ§©U-2-:ÒÁ\"ËüÕÛqËqÅìü‡¦¥‘·IUWÒ¼\nhk&Ú”õÉã¸Ü{¨<‚öÐP¤$´u&8Ws¬¥N@ÿ\0Ú}OµïmZºíDñôŽ…4îÞ5m ivsÁÀàÉµ¯ùê¤ð—«ªtûdk[ØöÇ¦¨¾Æ’AtðµKAí(a½G™Ç­ÏØiÏÊRÍ\0JòÅÐ*@›À*£°¶„é1TC$³33­ü5“È?LèŠýÐTHðÙZL\06’[Üöó¨N\\&\0yz„Ž¢§|w³y<Ì9±#’xôöÐ\rC4‘Ë\nÅ¸t}¶-k‹{_ûiªüÍ4Jd\0«3\rïØ_ó×!åŽ#µ3\"’w–÷Áö×ÑR•IU4¡âŽýª§jîÚM¿oí­KÓÁ€3:\\+“n0E¸ïqë§]jZ9é£ŠUa6åU%6ï<_×žä~š:zRC$”ìºÉµ­rVã žF3]Qd¥`²»%;ÒˆË-Ø”ó\0;Y¯ë¦tµtõ°I2TDÂV¡¸»‚ÖÙÿ\0Gm4i©R	%1	ÓÃ\06ÐÌmêÇ9õûê³Ô|	M:Ó#—?ú¨xN,>ƒ¾ž2åÝ{ÓU\Z•@b6uc~Eûñžq¬ÖúT2RªI#²†Stcc‹ÏY®<òÐlŒK53M\0VeÊÞÄ¯>—Î‚é½VâšH÷Eß°çï÷ÕÚ£áˆjlíS\"¸á“Ðð/NyYä©©bÆüªþÃZF*Ù¬óÞ¡Y4•L_Ãp\r¬˜¦‚å‰A“ŒëÔ‡À!ËTŸþ5\"üÐ\0Áœýgm[ù¸P,òBÚöï©Ts¾ÄûëÖ—à‡ÍÉ¦|vi[\Zí>øv1w¢Þ®ÇAÿ\0ÐÅöb•ð‹»t‰¢^ô#›î\'PÂßþ>¯”Ü4N4Aÿ\0ùkÑGEéT3¨?N¦Žx­¸“ØÏ]u•Ò §étqÐSŠIë$g‡`ÚÄFlHïÀÑ]\\Òÿ\0\"ž†f·\Z<V³Â­k9¶½qz@Cåèô_ÿ\0:Jiú-\rô}>þä ¿é¤þ|%Ú$Ï\ZzÒ‘Æþ,-ÏçÎŒé´¿¥õz³(_‘%UÞKmµûzëÖ…GFeù·q\Z¨«º‡K^›RÉ4\rm„*½…þ†Ú1êùKŠƒ\Zg•ÓuÑê\'4¢6¿òîíqkƒÇ~:õ&’WS\"›œfÀ_^·ASÓ©RXb©…’:‰HÜã»–¸·×E\ZÈ¶øÔÆF\nŒ¤—V“ÜEe\'ã	é\nHÍµ§&ÙþûñŽÚ[KW&iV™%š7oæ›ùïsŸ¿kkÑº×PJX:MyÜbxdŽÀ/qßÛõÕcâ)ÍLëT•#sÔÝƒïUu/ÚàcLòr¥^†’Øq$8–_ë\0«‘Ì›úêsJ©†Y*±–,\rÅ³©)~3Š:\"j&,H‡ùƒ66¶¥?ÛðQ0>ìOö×<¾KÔD´\'—q€“–Ap]nOÛêuÝs¼c¦`c—l`%–À’sÉÀÇF·Ç³“å‚%¬ÇX¿\ZUºŠ>{µˆûéï%~ mõ*VjQYQÙ]lê/–¿O¾¸­¡Ž)]¼9åY@ñ”«bA¿ÔZÞ¸×=gâzÊÚaµ>ÏÑäÝXûh“ñuk)NˆF|±fú7‘EhÚ•|\Zv§†žG!@†ì°ÏÚ\n†3Ó Z‰\"s[mÅ\Z3¸fÀŒ~Ã¾ŽõFa¶­˜ÿ\0úñ¡ª:×P–±g’¦DqMàìÅïkã¾©	K³_Ù“Ó$µeR¦Û#ÉÚ¯ÇÔžÚÍ-þ-Ô¾¤z†?ßY©8»7#ÐLÌ¢êÛØð ß[w1&çÁà©(\rñƒrNº4ò³y^öÆ¸xŒ*.»†æ¶0u¤uk†Œí¾¡ùiK“ãyyÚ¨9úß[hímîÊÀg\"ç[‰¨ŸÄ!F}BŒë»n×°Å†¡NÒ¹#’I×~\"ƒ´ Üsûèqf£U{ª¨ü£4‘Ésœ+_ûk&C##8S°yY“q¶ôÆ¹o{,C›mJ©!Axö“œ/\Zk•PvfÀ¶»é¤_E#UÂ))Zp\",Á\r³ÞäiáEf»¶ãa¨åLÊèEöì&×÷Ób—	Y¨©šjÞGJ™{ùb‹üê9©«¦ŠXÏO«\nä~ŒXúúêæ°²‹x×¿kk‡„m²Jëî„_]K¬’}€S–\ZÒw«\'¹)¿®¬}=\"ùD°UlDƒð›ûji¨£š2%–§\'‘®5ÇðZbMæ”!k­‰Æ“.o‘S0]rÉThÊíÀ\nÍ¬@Žøýu”‘UUÉS4Jó¾Û’.,Û{\rqB¤\05S[±“N¡Š0nÀ’þkêNN´Æ°?àô_ˆÑÑù½cþúíúM%Yè bÇý¯¦IMCeoÏ—:èKM·ówØ¯÷ãSn~Å¤ü¦›3tê@}~Y?Æ¤^@ *ÑÀ1ƒòéÓFø°“vI¸*HèÖšztk­|±úzh\\ý†ÐS‹…³pÓ[^“DKnéð0õeÉÑ‹Z¡€2ldŸ×[5(Cm1ŽøkgG~ÍHtÚ@Fê8®8N5Ñ ¢u³RCêm\Zêt™w0*¥¹\"ÃüjAQsaru­û6€¿…PÚÔÑú•Ø?Æ·¢DÈç	‚?íÖh\\½‡BÐdV¾äÚ}ï©|O-Š†?}’l#3®Ðz}N²z½Ò&ü)ÿ\0\Z~ ¶v¢Ü€ïÊ‚5Îø™Ç‹à³ð‰¶t’îbm¿·áÆ·)”\\Æ«oê±µ€çÿ\0\Z	Y­‡,Š¬¶C¿éºíj\0ÃÆJgAÜ°$0“b\0–·µFë… ©6ÿ\0Æ³Ð-„KXà]œFÃmhT–3]¸ ¨L±mb‹c¸\rÊœë¨ÖW.XíC½ý\\h\ZÙ .2·Ø€8ãQ‰j6X\0£†ƒ×Q˜/Îâ·ï©¼Ê­¸ß¹·?ïöÖ¶\rš@âãz¥”\rnYHdPMûmþ¡®&¹RŒwdµ€õÖÕAðÒÖ=±ù_cQÓ9Ž@ÊÌVÖ¾íÈÖ£ñ^À™\\)µˆàà½õIÜ°ŽBpÅŽqÜh•f\'ùEw }nüôMFƒ:ŸÂ×\0Ü9ÈíþýuÑ“lH¥AÅî2,3®PJló•!•l#ÿ\0\ZÝF¥ÈM¶\0ûèQ¨æFf³F†ö°<kJM”:®ïëmà\\úþÚØC&Ôh‚ŽN/Ma§‰K-ØÀ_¶ˆhçqve1ù…À?ˆœë¥ÄäpNyýõ\"¾Ë0³ÕAãüëfHËØ²ç¿ûýõHäÓ©R«SêàXêGª*|XzûëR4GnÒ9\"Ãv$ˆ¸39ÙmÜñôÖ¦\Z3rîü[Aœu,xÆì¹²÷Ö·¥šGÜ7`7íþûëµ–šRÎÆHÚ.\r\rÄäïUR7XçuÀÖk¶x0nn/ÉÖhQ¸£ÿÙ'),('juanmi','aqui','de trankas','juanmi009@ikasle.ehu.es','456787876','dfrtujh','robotica','		','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0		\n\n	\r\r\r \"\" $(4,$&1\'-=-157:::#+?D?8C49:7\n\n\n\r\r\Z\Z7%%77777777777777777777777777777777777777777777777777ÿÀ\0\0Z\0’\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\03\0\0\0\0\0\0\0\0!1AQq\"a2B‘±3R¡Á#’ÑñÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0!A1\"2ÿÚ\0\0\0?\0Òâ©ØéãƒÊ%,$Ùî~B`bOV?„NHã®“I±™Ù‰Œöç²Ê•}£è\Zõ?õ*ãÕf[›m$“×ÚÇ¤ ?¤ðî†8Å£ç<Ö¹ëêeÚ°W”6$ô.„¶‚2ˆöCF%i¡Ê?Irº+—^ÑªzÉJ$$›dÃ›P£€Aò3=Å8QÄ³uõ¨ö0ú<ìŽ[êdNžñÓD%1Wb3ùJv`k¸šß•Øí!»Ó¼.)hÆÝˆToR‹ÐIí5÷á7)\'Å=\"¨$Á@Ü,^fë¸Q(¦Œµ‡ÈÛÔ¹ò§ÈJq<VW¨\\…Óv—Î1×iW\'Šý1$Ðä7÷#ùK}\"Il%ð)möí(q°×ç\nÎù+j¨Ç\n:\rLÏn^%zæ’µ¤_ýÇeE\0\rK•‘Òì›Ö+“ÞLê •l5\'W²òªó1ÔcäÑCa\rƒVËàîHH6¬7×Ò]®ÂA‡`8“ÔUÎÇ¬~JÖÜ¥´c¨â„sZûn\r8ý§x É±ìK“™d¼²ªG+TÊb+)ÚîV|°ÉQ¨ÎA` `ÃQùd‹Œ”½áÎä‚ÌPluô‘6\"Ÿ(OÃœkô ¿“Ê\"Â~è´j\Z©Òc¾)¯åø§>´-@fÔL×ÆÔµ‹’D~Vö?ù¾ÇÉ(;EØò—+¯—¬£„Û`”&Šhô“:Šùy‰C[g;òöDRÄûÔÊ4çql”,8cÐ‡·ŠÊé¸zœTS°:žæHÜ:‹??ò3tdâ€§5²z­g]Æúÿ\0cÐlN·“J¹ëGÇ>r–>PCñÜllJÙe¶è¦e]ú°\Z>Ž£ºàS‰ð³uë–¹é¯	Hýejx=î\røv±{ºæ:þ›‰_³*äÇ—70ÚÜ r©ûïûB;=ÞÆªáËb7q’Aœ\n>YB¨Òë¶åñÚPªý¯Yr›‰±å,¨ášwl|è³£Ñ1\'j,é¨Âjv¢Î‚‚\',HéÓ„L×Å\\[\ry¸fQe,õé©¥9ñW\rK^¬Ð€²ý-þ$äp¶-wý\0ëäªÕ5\\,Fìu£ãÙ×¼	›‹’üR«1˜%H›uòhGÎ‚LìqSbë¬œÜ\0ê`us¾ñÍâ?D=uÓpì.–K}µdäéÈÒzúÁÜO3…aóÕX=××ú@<Câ‹Ú®e4©\'v>ØïÚTáßéæqÌ\\WŠ6C¶BzodëÚ4U¢ðŒSë/Æÿ\0à¦×Ø8¬ëö–sxîeueðë•˜z~a\"â\0ðŽ(Õ6U%EkÊ–(§ÜÖX«àÞƒŒF2ÖËøX£SIpW,Wh%ƒÄ\ZÚ”‘¢}D=Âmæf_Q¸ÍiRƒ­ÖøyÚÛÝµôªëõ‹ú!™-4bNÜê8qAa¡Ó£9âsEr5N‘óN‹°hŒ0‰b%¨RÁÌ¤hƒw0Žo¿”/‰WüÀLÕ9´¾U”VÇ™:ûÏCæ\ZëÚd8ïZóV\"ž­¯#&ñßÂøóxÈ…„ˆê2\nYÔÈQÔ¦›J´eŠÛNÇÚMÅ*H5C¡´YÛc¼º¤odý&e>fôa­èKÅ,Uú•„hºDÚ¶iCÒ‡¯I_;.¬z™ØŽ½†ælçßký;ûhC<;€>hKø›·‡Ý*÷šÜ¸%õ‚kñ¸ŽO…ˆ¥ØŸ.ÃÜÍ·Â\\QX<ÌNÝ½L~5b×áãÔµ¯¢‰/4xCWg>LŽ|ð~âŒ-\ZZQ²T;š4´i1ŒÐ<¾£M’hÂÑh%t¯Í:j0¢Øálª#Œ`– ,«Œ7ïDu½·/H›ú\0âxŒl©ÝDˆmOøšì¯à¡ó™¾ ñå\0mNõç#–)téÅ6øS`S¡\r\"³›ÈM@ßhÛ\0ôe¬ƒ‡ã±YÇMöõ›u!QFºÒeñ{§¼ÓÀ¾Ðã#“£‰².}N£ø\"³ñ™R^’c\ZéHšcø±¥ä1`0òÒ2Ñæþo¼YéŒÿÙ');
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

-- Dump completed on 2016-10-22 22:44:46

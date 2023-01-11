-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: carental
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbladmin`
--
create database carental;
use carental;
DROP TABLE IF EXISTS `tbladmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbladmin` (
  `name` varchar(200) DEFAULT NULL,
  `adminid` int DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `about` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `createdat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updateat` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladmin`
--

LOCK TABLES `tbladmin` WRITE;
/*!40000 ALTER TABLE `tbladmin` DISABLE KEYS */;
INSERT INTO `tbladmin` VALUES ('Admin',2005,'admin@gmail.com','java@2005','9378154363','Admin Of CarBook','BBSR','2022-08-19 00:12:07','2022-08-18 17:12:07');
/*!40000 ALTER TABLE `tbladmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbooking`
--

DROP TABLE IF EXISTS `tblbooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblbooking` (
  `bookid` int NOT NULL,
  `custid` int DEFAULT NULL,
  `cname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `carid` varchar(45) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bookid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbooking`
--

LOCK TABLES `tblbooking` WRITE;
/*!40000 ALTER TABLE `tblbooking` DISABLE KEYS */;
INSERT INTO `tblbooking` VALUES (7570,795193,'Java','javatechnocrat@gmail.com','721139',13,'Pending');
/*!40000 ALTER TABLE `tblbooking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcaptcha`
--

DROP TABLE IF EXISTS `tblcaptcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcaptcha` (
  `captcha` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcaptcha`
--

LOCK TABLES `tblcaptcha` WRITE;
/*!40000 ALTER TABLE `tblcaptcha` DISABLE KEYS */;
INSERT INTO `tblcaptcha` VALUES ('mjrJ0O4Gc');
/*!40000 ALTER TABLE `tblcaptcha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcar`
--

DROP TABLE IF EXISTS `tblcar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcar` (
  `carid` bigint NOT NULL,
  `model` varchar(200) DEFAULT NULL,
  `regno` varchar(200) DEFAULT NULL,
  `seat` varchar(200) DEFAULT NULL,
  `lug` varchar(200) DEFAULT NULL,
  `fule` varchar(200) DEFAULT NULL,
  `oned` bigint DEFAULT NULL,
  `onew` bigint DEFAULT NULL,
  `onem` bigint DEFAULT NULL,
  `image` mediumblob,
  `milea` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`carid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcar`
--

LOCK TABLES `tblcar` WRITE;
/*!40000 ALTER TABLE `tblcar` DISABLE KEYS */;
INSERT INTO `tblcar` VALUES (721139,'fasdfas','sdfa','sdfa','sadfs','sdaf',13,13,11,_binary 'ÿ\Øÿ\à\0JFIF\0\0H\0H\0\0ÿ\Û\0C\0\r2!=,.$2I@LKG@FEPZsbPUmVEFdemw{N`}s~|ÿ\Û\0C\Z;!!;|SFS||||||||||||||||||||||||||||||||||||||||||||||||||ÿÀ\0Xô\0ÿ\Ä\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0:\0\0!1AQ\"a2q¡#B±3ÁR\Ñ\á$Cbð4Drñÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0&\0\0\0\01!AQaq2\"±B¡ÿ\Ú\0\0\0?\0û8d\êð\ã$²;.ó7\Î«3õ`\ÐVoÄq¯j£ù; ¬Ly\ÃÚ§ó{\0­~#\Î\Õ?cº\Ð÷\â<\á\íT½ö<y\ÃÚ§ñ\è9G8{U\ê9G¤y\ÃÚ¡ú\0	GüG=ª0M7\é½óµAõ+~\×ø8{TPF\ãþ\Ñ\çj\êxGý£\Î\Õ@úCþ\Ñ\çj¤}EW¦ÿ\0´y\ÃÚ§óº\Ðß´y\ÃÚ¡úZö8{U\'¯@kC~\Ñ\çj¯@\Ò\Ûö\Ú<\á\íSù:Koø3Ú¨?P\Æ\ê\Ñ\æ{Tþa*\ÃóQ\æ{Tþcº°3Úª·\Ôñ¯ñ/=ª\æôß¦õþ$óµAõLd1¹¯\Äy\ÃÚª«\â#þ7ý£\Î/³P>±øò\ÍG=«ö¬b&ÿ\0ó³~\Ò\ßX\ÄþüG=ö°ú¦3_\Ó}ÿ\0\çjý­ü\Ç5¡¯üGOj¤ýC5¥¯üG=ª7\Ô1­{[ö8{T?P\Æ\0:[\Äy\ÃÚªÿ\03\Åÿ\0_£\Î\ÕOó,TIV\çj\êX¯uaù3Ú¨þgÅ£{ó=ª3Ç±\Ðô{Ç=ª©\ã«\äy8¾\ÕOó,}\Ïø8\Õ@ú2iq¹1\çj\ÌñKñ´y\ÃÚ§ó<`\Ñ\Æ÷þ#\Î/µ~\Æú/8\ßö8\Õ\êHµx}ûG=«ö2M½7£ø8{Tþfuzo_\â<\á\íP}K\èm¾Dy\ÃÚ§ó<ø7\çÚ ú3^\Æø8{T?T\Ä\ro\Ú<\ÓÚ«©`\'}C\æ¢sô¹:q\åL¢ñ¸aðf¥ËmyPÁTh$\Ë\Ì\êz·\ÊJ/µx\ær¼²ôñô\äsKU­ÿ\0i\Óz>\Â	\"+(`ß¾\Ð=õ~ [eõ\0H±\Þ\0K±\ãh³y	¶\0\Z\Ó\Ú]\îI\Ó|@^«¢tÂ¢õ¦\ë¿\Ì\"I\Ôily;Eß´\n0µ¿ö\Ü	\ãz\Ýt.ý\Ä¾!Af¡P+»Yrq}\ÄU@¦£µ·³ñ\n¡oi*NG\à&»±Ö¾\ÛM4À®¨Ñ²ø.A`t\n\Ø2\×e,\ÐP\Û\î¸E÷]VªN\êlM@­i\nÆ¬ö\ß÷¸I`\ÌX\n\r«\î`6°¶\Ð#VÁK{o\Ä&\0\ä­ó\n±m$\èbEo@¡,R\Ñm]\á$n1k\'\Ûz *,ó]±Tñp!÷ª\í~a\n,X¡RÀ5l\r¬»°.\åV?\Útóu¨R\Ô	W|95#\0k,ªõú>¬gP¬@\ÉW·y×,¼\Üøx\ëN©§2õ\Æ\Æ%\î.s\ç~ý.?.24ö\Û0\ìý0ÆüöÍ¬Çb*Ç¼©\'\ê+VCwÛ]n7phù©7èµeE·KS\î¶,(Db5\0@z³J V\ïm^\Ûý`A6HV49I6k?0\"À\ÙXÜ\à1_p®XñÁY-\ê\æ\ä0\Ój­\É2\é&Á&\î\àH\äX\è\ï\0Eb>\âE\n*I\àUW03$\0­>`g*¦+Sk|&\ÍX\Ë%\ÜTTVõR\Z,Uµ\Ø\ã\æ\ád\rMÁ\ã\æ³µM\Ôûu2²\Ñh«\Z6?h\Z\rµ»\×\é\'u£P¢\îA`?Ì¨¥«9Ç¢}úAüñ&W\"÷:vñcZ\ê%BZr¡W×¢ô° \"\ÒA\r\ÛÄªØ\Þÿ\0Hö&\îA»k,2\É\ÕU\0\r1h\ÐGöx¸DpI*T|À[6õ\ætJ7BºabFÁP;-Tc-\ÑÖ\ÂY\æ6%\È8a;K\Å\ÃIP\âfk\Ê\îlÓ\Û\Ù\ÆbEN\Öh<	\\Ø©K¡\ß\æ\ãX\è\n/\â]iÜL%S/\Óû©aó.!\Z2\âmQó3b\íÕ)\ÑLED\rù;PN\í[©Ewj\0²4©À;R.OµCj«sg\r\ÔR©Ò ó#X\Ã\\]\'¯U\Ýþ%¶·þ¦£¥²)ü\Íb1Nv\é\ß\r}`\ÉbË\Ñ\ìQ$·\Â\à\ê5f\àZ\ÃwbT.\Å(\ÝÔù\Ú\Z´)ªV\Â\0+´\Õl\ã\Æ.\â\Öñ1\Ût\è,W!³\ÈYdfòú7Dª´¡«\äË\\1{Ñ±%\â×\Û4e\Ê×\Åv\æ{5³¶\Ö\Ùñ/ñ\Zc%\Û§Ä\Âô\Ù{½#\ÇiSK\ì\Ö\Ë`\\¨¿$;0${· ¿X¹úÀ6Z\Ô?X\\#ù÷gô\í\ÞC8v\'\Ó:`=íæ¦¦¼¹2\ËôôQý,®¿rôN\\¾\\\Åòô\íY}\ë\æbñúk2ºQõª^yRÅ¸\Z¹6WWPõ{\âSHe7\ÞEGk¾üT\"\Ô^ó\ÞQ\Ìù²ÓNF\ã\àIVIò\×I\Ô8¼¹\Æ?,ycQv\è{©r~D\Ö#>W\éFËT\âO¥Ì»B8#Q$\Z\Þe¬}4Z4tÿ\0r²5j·²jÿ\0q\ØUHhQEl\n\ê},ÿ\0A°m§^?«;Ë¶mÄá½bN\×8=³IP3¹?6söã°\ä\Ã~Cº©2\È\Ç.xu®,§cõ*¬r&\Ì\"ñY\Ï.g\È/\ç:\í;Se ðfK©ð;J\Ê\ßq\ZD¡\È\Z@7T j¸v\Ï\0±\æE¹2\æ%¬\î;oGf7À3l\ÌC+\r\Ü\â\å}E\Ý3&\ä¯zÙ²/*DÅM²Èk°¾\ê5\ÌFR\r,([i³w	 Tpm¹±;#\Z\ß\æ+R-\ã\é\×Hÿ\0\'Ì·\Ê\ãØ´%[#VÁ­\ÒqË¹d\"Á1xµ=G\Ôc!\Ã@s1c¯Åz¥\ÉP¼Lw:[>Z\ã.riªÆ£ôø\Î~\ÛEû.\ák\â,<A¶yòfP<l^³ûI¶.]À\Ò<f\Ùk\Ò1»M\È\Å\ç3tl«³|I\ê<\Ü\Úñ\Øqbf\ÇIec\é7Ê\Ó§bÓ¡\Ø\r\å\Ë:\\Ýµ\ÕT&{\âS[TmB\Ä©½ \Ùwûgòs´\0\È1(6ÿ\0r.cL\ïÀ\Ò>eKdj\Ý&b>\é©ó¥2c4E\Ëxµ9J\ælÝ©\Î\Ê\é$n`u<I4Î«`5\0\Ûó*hû¯j7\Çr@¥? ¨+\ÚA\èý(V<×­¸ô&\Ü+ý\Ì	Ø\Å\ìpuýE¿¦§a#r|²Ã1d[H\Ü\ãy7O¨;\å\Óð¹töc¤u\ä\Ô\æ\\±\ìFÃ­\ÆqXo\Ú\\¹_FË§`¬Ä¦\à÷[\Å\ãXÞ¹ok\àbÆüH\Ò7¢~\ãÌ¬(T#bT{¯G/R)\É;j99mF\Zh¹\Â\í`II\è\çn}J×·!Ê¥ÿ\0\Ïz\ä]?2ùV/þ|i²õXºV\Å\ÉkÓ¼\\]Aôrû\"\éeødV­ñ2¸u¡:A±\Î\Ñ©½·>\ëýf\îõ\Ï\ï q°6O\Ä\Z&®\á¦~¦$oh\Öÿ\0<jqË§^P{\àK\Z¾«ÿ\0\ê>¡k\É\Îú.§3\ã}Î¥\Ö=Áºy»\Ì\å$±l\Z5\ÚWFú«F¥\ì{%¥:iZùcö´Àt\î	}µ\Ó\ÞûJmV#rvHÒ§\Zú¹wð<\Æ\ÖLõü\Ã&«,xÿ\0g£\Z¯\Õ\ä\ÆRú¿ó4lc\ÜuwMJ\å}+3P¼òfð¼\\y\ár\Ãp{E^5®,ü«¦GecI\0\Ý-]Jk`\ìjýFl\Z\æ\áX\årZ\æ\Z¾T\é¸\Z²\ÚI3\ÝY\ÆòÐ¿Td\åø.\ÆZ¯\ÖV­\ÇÄ¾L_üó\á©\ê±gªo\Ö<Ü¯¥c«\é\Ä]H±\Ú%;\âòñfly72rz³\ZP¦SNaIK\æRô¶\ÖF÷R§õ#r\ß×¥ô¡Xòs\Ì\éÁ\Ã\Ö\ÜwÎ%\Ö@HÏ\ê]Ø9&WH\àl±£´\í\ã1\æF25s\\y÷\Ã|}AÁ©¼eÛ·L\Ý\é£/7/Nñ\î*Ø?»ük¶\"K\"XÒ«p;\Í\"kPA¾<BiÅ\É7{ðÛªr£¼;ú\\~\\Á\Ïsr=\0\ÈÀ\íë»Ñ>\àð|Èe·©\êXÙ/7?KÆj,s\ÏÃ§\0\ï\È\î<H½\rW2²©³aª\àÒ¹K.3FÚ¥a\ê\î¶a\Ósú\çr6¸zxñ\Äfrn]30#y.ùrn		Ë\äñ7.\rc\âuô\ÝS ôÛyIf]\êBm«U\ÍJ\Æ2\Ô\ß\Ü7mË^@\Ç\ÃQ\çõ\Ù\ËfÒ§e\Ú5KYsú9\Ù+\r=R7A\Ô\rE,n\êFA¥\Í2w~~;mHn\ìv\å?[a\Î[\ØMx2h³.´{!U}\Õú\Ê\ÏWm\Ê\ÏõGfE$ó\r9F@²0\àm­G;;O1^\Î<dnF`\\f#¼h:¼\n\ê°aÏ§909y\ïÁ¢e8û\í&Û»Vmñ\Z\ëWW½,Oý\Â,\r\Ð$\ÝBÿ\0^Ò¿\ã\É\Ï\"u\àóúÛBmÀ\áe¿zm\Ï3\Ùn`\á2Wq¼vó\\Ic\×\ä\Ð`\Ìa<\Ò1¥\ÔU\\§q\Äa©TV\"F\â\ÊT\Ø0=\ê\\%[s\ÚI\Ó\Ë\êzx\î*­¹p\ç·V,\î½þa,_ql¤×Yq\ç°\â\Ïxn<Î±\×bw\á\éô\ïJ&fp\Õ\ä\ÐbQÌ¸<øZÊ³*dm¶<ÁG£\Óu*øý6\ä<þ§§óh|^\äº3{p\ídrF­\ä[\Z±\Ü\êþ!\Ú\Æþ*QÁÔ¨|l>%Í¼\ä\ÂI÷q%\Û\Õ\å\ÓQ\ïLÚM9S5D+¸\ågª¦[_Yß2¸`\Ä<¼øx÷{Jûx2¹:úWôÐ©\Z\ï\âD®\å½ê¸¹2\ä¬\ÃÄ­Gl\ìO\Ë{z¸ò\Ä=4Au&+Rmð½§\"jJK1%Z:m:»Nö4¿i\Ç\Ôôó\Ük@5´\Ö\Þi~\ÝX³£\r\ïW\Çy:R½¶\rQ\\Äv\Øm*<î¡c*;\Ë8\íÊ¸EoÌEä·±6mN­®|¨TüF@\Ó-.\ßÄx\Ë;\\f¥y9ðñk\Ó\ä\Ðhe\è\ã`ýÃ1\Ç\Åt\Ý\Õ7º¥O\ë\ÒúWüy\'N?­¸\ïq   xY6fofq{&ºsdZovÀ\ZÁt9Y^71Òo}\árÚV9R·CR¨­S-¶Ç©±#5¹\êF%/>7-1f%S\Þ+/B\É\Züü\ÄaPûUÇX\r_X\ëÆ²\ÐE\í*\åUµ;È¹W&0\Â\Ç0²\á\Ïd,ujA°fG³ôþ±]=<wi4òú¾\ÌFuÑP\é·)W\Ã\î»<	i}!y>\ï-j9tµ	]¸Ü¨\Ê\ï\re= C¹r\ä\ÄCX\â+¤\ä©`	6+\ÈY\ÆB²¼\\øøWgGß\ÒT½½@\nYU»_\Ç7/Pc\Å\Í,®G\ZO\æ¸\ÕH±F@\Zx)¸\å\Æ|\ÊÔ¸rSFf\ÇY\ÚCwZ®SUpóú¾\Ìk)»Wõ°=\ã@\Çy\Í\Úïºl\ï7pºS\\\ËZ\Î\ÃKev*\ï\Èe+&\"¦+¯YFª\ØL´\Õ	d³£¿¼\\¸ø\Ü=8Q \ï\ã\âgô\Û\Ò\Ó\nº1{zJÿ\0ü\Ø\Út\àóúÛù\ÑÄ\á¶ÅµrI^¿\ã¸uo½ó\rf|8ú,¶\âxrÃuI\ÞQR7ù\ÊA¾\Ò+\ëp!¹Y\î([j\å3]¢(ùôöRiSdòb1{_R¢EÔ¨\ç\ê0û|*ñ¸y\ç\Ú\ÅO\"÷\Ù(p¹VÊ2.\ÔÉX±\Ì5.a3c¦R2\ìA[\'V66{\Ç\\5\éý÷·ù²\Ú\Ã¡H¡ÏFYðZ\êA¿Yp\äÊWqDC|nú\Ê\ìBÂ¤\ÕT+.\"»\"ºNL®e±\Ð\ç\êqò¯§µº\ÛÌ\äø{hN£dÄ±\Íb\àln]+?N@>%k\ÅpYV\Ò\Ü\ÃÑ¹®\Ï. \ã\æV¥Ã\Ú\Z36:Ë\ê\ÞAl-ýB<øø×¹\Ñp-\ïo&\Üù:!ME\Í3\Èl\ã&=ZM\\s5x_87\r¦0T5.yq68º\ÎJ2\Ò\í/Sc³ \È!=Eyc\Ý[Ze­UÇ\ÞÞÒ¬\ã\ÈO:ðyým\Ç|Û\Ãr5Wvg³ZPófþ Ö¶1\ny^~l%X(ÿ\0¹]¸òûd\r\Ê\è­\ìs\"\å ¶¦5+bbh<£¯§Ç¾µÉ\íÚ·J¥\ç\àC;lMQhf¶À#Ñ¿\ÞTpu}5n¼v2ºp\å;\Ñ\ØÃ²Ò¢ð °CF\Z¬@\æ¤WD!\Í®oM°z@k\Ó|L\á\Ã\Õ\Æ^·H­ ò.W\Ð\ÔFw\Ü\ÂT\r Dù0¦L~¢Ji\çuYN 7\ï+·_Øð	Deq\å\ÆC\ZEvQA\\ºþ`\è\Åx¹o§³\ß\ÜöAÛ¾+\î[\0\ï4@§R¤¹4Ó¬\éHm¿ÁÓ<mÆ­½6\ÆVBxks\èoe\×-p \rg}W·Ò¢¦%\É^Möe²\ÛM\í\ã¤Y÷0$Ä\Ê\ë¡ñ¦d¡D\ÔJºy9ñ6;{føòòr*eRYA\Â\Ê\ãÈ´Æ¤®²©Dó2®ß§cl\Ö÷%x¹LW·TTw½yá§ô­ñ¹®H88zÛù\ÑÀ\á9·rN÷8½¨¾\ì{v&  £iu	¤½þ#J\ã\Ï\ÓSxo÷+§nw\Æ\É÷	]e¨\â\È Ã³\\J56mñ#\Ï{©³\Ö\Ë\ß~dýUñO{²ciZØO\ï++Þ¥õDó©\è÷:üJ\éÇ0ÿ\00\ëtC¼*n@¡\â|+ê¾¥Ó7¤\Î5 4KXª\ê\ï	{TÐ­Î¯õ³bO<@¾Dlú\Â\é\çfé¢Sc\âW^<þ\Ø\Ñ0£\r© 0e\r@F­Ó®2	\'3\\k\Ñ\ÄK¨F/üÜµ-«Û½f\Æ;T[1dYö\Ê\áY¾,F\Ç\ÕtbõðD­ñ\çc«&\Ì!\×2¨ L4i\nd\Ì\çÎ½]\05+\ê-¸ -ñ\æS]RÉ¾\Â@µkj¤hÉ:1):yyºgÀ\ÛN\Üy\å\â\ZL@©Æ§\Ò\rÀXuôS}8r¹®\Ð*\Â\ê¿YzI¯O!Èx<þ¶\ãÐq   xO»µ\ìD\âöN¢\Î\ÛH¨\'ø]:«\àfê¨}\Ì\Äó\Ù9e\ZjU]£|\Æ[¬bý>Z\Ô\\_dX_8\ë\ÃÑö§\É\ã\Ä\Î\Üùs\Ê\Ä6oùQT\Þ\Ð\Ä\ÄX\ßk0¹]¥\ê\ÓPQ½\ëO/*TN¯iRv02¡¨­j²±\ÉÒ£ci>¹t\ë\é²&õc\È2·9JÆ\ìdk-qt¹³4/fó\é`À¬wp\år·ºÇ¸WP\î4c¼\n\Û\ï|\×`EÙ¿\Ò5\ÒÄ\Ì\n\æ\È\Ñ\È\Â\ÆD©ö\åKù5+7\éT\ï\Ç\àË\ç&ñý\Â¥gg°$\Âô±ÅiwÄË._¢¨\È\ÅE-os,iÜ¨K¡\\\Ë\Õ\ËAÀ*TýAøa\Ì©Ù[\Ñüs\0H!µñ\ànH\Ô<B\å¦\Âã.ksbý¯\Ú\Ê\Ãó.cSB¦³ñ\rf4\Ç\Ò\å\Í\Èô\Ó\É\ï&RóN¬QBi$	r\Ð/µ¾ò}\×B0Ôu\Ð)Gù[H@esÇeõ±÷]FF9:uºu\Ò|[¿En8ø-ù°(\ÊH \ÃYR`\Ë|X¶¾?\îK\\\ï,ºG%wª\í#\r\Ó-YZzI¯O%y¯\Öøzn$	Ç©Ø©\Å\ìP[pdT +½@\ê%µù¨RÚ¸\Ó\Z\á¿s1=\Ì.~USyj\Ûh«i\Û\nF\×\ÚEH,=\æ\Æ>À	Q\Z±õ\0j\æ\æcs\Åj¸ù}\"zø0¨õZ²4±:\n\r\Ì*YZ\Z<ÀH ¬t*)\ï\Þ\áR=¡\îH¹A\Âlg~ÀË\ÊÉUuúcü6ep¤\ä\r»x¾\ÉP\0Æ©@¨\06Pº0\n*\àA\î/\Ä\n°¢i®ù5ý¤\ÙÀ¡U!hû¼W\n0\ë\ï\n¸l«bm^n\×>V8\ÉAi=ü\Ç\é;c¤¢o2m¦\Ôk\n\é!]Áµµ]\åep\0\Ò\ÕÊ7¹\Zy5«V\ê+\Ä	¿Q©F\ÜÀ6\Ê]\â4O¾n¸VL6H[Q\â\ÔÇ¬cù/LEºP\ÕóT.\î4bTÀ7z\Ì ªF]ó\0P¬¿<ÀÀÁ¥½\Ä5Û±<@\ÏJ0\Z|UO\áñ«g\Ýó!²¢ \Ø)W°0«^¢Eöý`H4TYª\æA\éý$V<\äN=mÇ¡:8<7þ£µlA^É¦e½@T\ZañÌ\Õ\ìg® §K\ä÷v\Útm;d\Élx\Ú«\ì¿ò=ø\ÚTA;ÿ\0Q\í{mnö» :?h½\àXW¢À\ïoVÀ\ï\\\Ð\"öÛ¿±¤\ÒÑ£i FA\Ñ*N\'x¥RÎ¾\Âk\Ó\ßM\ß\íÊ´C0?\â·\ÕF¯5[i\Ø@Q\É~\Ú\0w0§\Þ@\Ú\0\0Qù¸IH¯M}\àCX½,.·\Zªm\ë°¶¿w V\ÅX¿\Òw\ßQ$\Ü]¦cuó%j3Ñ¨¶+ÌiÑ5¶¨Dfº~\ÛM»|ÊÀö¿\ÖQ:I\r@P0%\ËPQBr+H5ú@}\ÚW\Úd\0¼Á°±P\Êk\Í@öOÈ>Ú§\äo´\0 \ê?\âp5[]Â­±\ÔN­¸$\Ý5Wx÷µm5\n¿i\ÒJ_D5¥\ÚüÀ2Xª\Õ/\Þ\í:õ\0¨¯÷G\ÙT¼\Ô	+A¶V¢@ m\"¥y\0\ÄO\é_ñ\ä\ÜN=o|\è\à@@@ð\ß\Þ\ìF\Ä8=\nÞ±\í\Ò\Ö5\r\Ê\ë@T¹]v\"}EÜ<v:°\åjTEi©\â­³nF#rkP\Ñ\Ä	6=ªÂ»\×hl{q¶\Ý\ê+oP*\ßøM\æ0Q\Õ\æ\00Q \Ùcý¾\æ&?B\Æ+»7¶3f\Íù\í\nªs«\àxk ppH½?\î4\ä\é\ÕUúÂ£\î!UH\0sq ¾/\æ¥h(\Üóp*m\0\ï ,Zl\ÒQ[!Z\Ý@©\Ü),ª\àª?¤²I¶\ïú@l[}¿ý\ÞA]\Zm\Ç?\Ì+U\n\ÔV\Ãõh\ÚVÿ\0\Ü	\ê\Z{\ÊF¯mmhqúB`\Ä4¤Û·=\áSd.ý\åDÞ\ÖT\Ø\í>\Ò¥;B¡M%¿n Gk\Õß&É²L N£ÝH §\Òª\ï/P\0@ùH©Ò¶\0<÷\Ñt\ë[uÛ¼\"\êU¥ÿ\0\æ\0VÓ½Â¤uP¨CÅ\ÄK\é_ñ\äüÓ­¸\ïZ\È\ç\Ó4V\îq{&,NÔ£\\¯\â¸\ÈyÞ¨D/L[¦|\ås³#´~*J\Ô\Ö8¾ñøta\Æ\î¤\ä6É¥1dvc¨(#`/F£pº@0\'r*Þ¥À*(@l¶¯\Ä\×5u	!F².AN )ôþ¡û~%ý1*S+c+\ê\Ý\Ûÿ\0R*z|E1ËS\ã´w¬5ÇV\ï1bx¾Ð,,\Õ\â]QX\Äñu³1\Ó~ I¿ptÀ³\í-\Æðº® \0\n¢\n¯\Ú>\Òw]q\ÍbHÆ¸fù\ë´e¸¨XW¶\×\Ïy4¢\äõ\Ü¼*ui(ak\Ü!\ä\ïó)\äc7|ü\È.7 )Þ·ùe¦\Òm]\à[§{¸\ÈúPª\ÑsÀ&£[11¦\\\ÉY@\Zw\Üg\è\ÂAR¹s½\ê£\Ê#a}M$Yô±}`Ñ A\àùø¦¨= »ý>%DH UB·Oh4\î*@²\ÄU\Ê$ïªiÿ\0p)\"\ãR\Ìôµ¿\Ì`W.b+n,q!û=x\È´ÿ\0\âv\ì4,¸-·ö\Þ\ÆTN<£!+VÀI¥[P4\Ä¶ \ËøOÅ\êPy\åQl,\n\Þ>U?pj_´	±F¤¼¨+\Ï\ï\nô¾=?3§\ÖøwÎ\'¹\Æ\ÕW{N/dÒª«)þ\æw\Ò\éÏ\×\Õ:\È\í4³\Úø\ÖÀ\Ôhx7>- þ²âvt{\Ð\Õø0ª\ëW¤z³\r¦taº¤# x;e§öÞ\îP\ìiwÿ\0P{:hu+Y\Zm¼²z\rc\n¸½Í¤\å­Ú¤\ÛHLù;B\ØÂ­UgñsX¬ôSý~\Òv«\â\È\Ðv¿Ja¹þ G\Äe3\'bº»\Ê$\Ô5sÞ H!xc¸ñ+\î<o\ÅZÛ([&«\'a¿\Äj\Ü\ïñ\âF°u}\ÝAöÍ°:\éR\â¬rf`Gô\ÉF°¦<¾¥¨¥\Ë\ßÿ\0\ÊgI]x\Üé­<\Ë­	8\×J\Û±¦¢r(\Ô\\X £[\Èmt\Ü-5û@®WÓ\îhþep\Ùýl\íø$·\â5&\Ê\Æn¨Â;BË¹c` \éRô`¢u\'q3g\Òÿ\0]¸r\'·\í\ìo%f·«\ØvI­ \îB6³­\0\0 L¨ªkõp¬I\Øy\ÛÙ´§v»¶X»VV,\ç\Çi2·L§\îPý®Ñ|Wb+\'pR1<0\×®dJb2ðG?¦zEs,gõ0	\Ø\ÃI4Á´*o¼\Õ@P= ùó\nô¾öeü×\Ï\ë|=	·k\ÕöIº+\Ù\ÝvaúHw<\ï+R9ð\É4;\Z¹½G§\Óu{QÉ\éruÿ\0®\â\æ¥s¾(\Ç&.(\Ù@?Z³1\åõxN&£\Çiek.<1°¢8>&tXÔ®£ª\Ç±¶:_´¢+Q4 @Õ©?XõF,e¿½¿a#\Î9;ø]3÷nb%\ãË\Ò\Ã\Ô\á\Ä\0ô¬ù\é\érm\ãË\Ôi\'¹ô\Æ9G\Ôt¹wj±\äL\Ü:J1\Æú27\ë1f½»u\àUó+\r\ï\Ô\Ãÿ\0r¦pw\Ü\Ö\Þ!tV\Î\ß\ê\r%E.¢\Û.\à@\á\Ë\Ô\ës¬WýEjE4e\Ø\ìüÈ½½^ú|X£møW;¦\Ù2ôù#ôSo©Å\Ñ\í1qV[n\\l­\Å3u-ún¤V 9\Z¹ø\Æ´/¸\êc\É¥0¸<öñ*^ô\Ð.¬ñ\â\rõ\0\ìU#öñÉ\Ûoh;û\×X\Åk\Ê\ÚWý\Éù\Zva\É\Ò\r\Âÿ\0Q\éò®\Ä\êñUuþ&¥w\Ò\ä\ç\êû\0#\ÆÇ\Ôô\Å>GÄñ¹\Ë\ílM\íû{1coK\ì%gpÁyO\êh\n\Ý\âTG}]\Â\Ïÿ\0³1i¯f7§\r:ðaE\Ò\Ùò\é¾I3K-\Ó\Ð\Æz0·W\äM\Ç+Ã[t¥6Æ¿\àN\Ç?Q\æ.<N	^\'>XË§~\\ùtù=D?2\ë.[t½X`\Ûpd¨\ê\Ü}\î2i$«\Ó&ÿ\0Ü¨C\Õ_¬AºÜªô¾a2\äMðyýo¡:8<RÁ	\"«s8=\ã\å%ò&\ì\Ë]$øb\ÝUµ\Ë\×Çu\ëY8©W\Ç-¯{	\á\Z·#Q.\\±\íñn½Rõ	\é\æÝg8s\ç\éc¸\Ã.]ùðGxs¿O:h\Éþ,nÀÙ¶b{3L@?\Ý\Ä*\ÃI\"\ìP\ß\æ\Ã\×{*\Ê\Ôq\çaûª\Ï\ÄË¿§\Ã=³\È\Þ\èÃ¾nB*Tð±ýC2\ã(\é<,\å9z\\m\Í0õy1?\ÜJø37´\å\é\Ê\éÈ\Ô.¼F\ÄKöó\Ùx\Õú\\\ÅO§o%,Ë¥\Ø?´\Ó\Z+± *\r Y*·B]©\ÂUe#2¢£dtº\à_y6Ü¸q·R\Ìn÷ÿ\0R=\\xH\ëØk\Æ7\Çõ\0©ó.\\ùzR¹³df6¬AK\éJªef\Z_y2\á\ËÓ¼V«¨Ó§\êô¶Àc\ÚKñ\è¦\Ëyn¬o,¹s\å;ÿ\0\í÷»{Ô¦úe\Ý\Ú}8ÊÉ¦½¢J\Þ\\GU\êd#ûF\Â5\Ó\ÓÃYf:C³m#§Z¯_T\Ê\Í\á\Z?Z\Ùj\n\Ã\Äg,\ÏNEGZÿ\0Ý¸Ï£ô¦÷§\ç.33ªc\Êq¶\Òa^,\ê\Äi[cÈ¸\Ó6ym¹J«&\Îz@[úø\Ç:¸x£\Õp\ãõ\ZöüI¶ø\Ì\Ü9?mE\ß\ÌW®pª}A\Æ\ÇyÁ²ýH²|jGóR\á\ÎúS9`rmv¹/eô¥>´\Ò\Üù8òô\ï¸5R±f]]\'X~\Çn<\ÌÙÝ±\Ôq°7\ÏÌ©\æõQ¨­Å#t=/¤£%ù§[\á\èM¸<,â\î\'y\Å\í/©B3\É5ÛúyÊ¤Ì½yi\é1<¢\ÃÁ\å\0\ÅNûB\í \Ë!gOÔû#?O:Q\Év;P¸kn®>\Ú\\\Þ\ÛH:I²4\ro4\Ïô\0\Zk7\Þ.R¡º{En<¯Su9,w§«\Óÿ\0*.&;#~Qe\Â{O$²\å\nò+|9\Î7dcc\ÑoO6 á©c\Ë\Ê^5n>fNüK2Þ m¸Q!v]\ÖB¯ög\Û\Ê\ë28#>\ÞLi\ßÒ9s.6;Ì½Q§¢k\å<q\rÁ\äÄ´\è\Â\ã-&¡¼??O\Ä\Û\Ý.^{t\Ù\Æ9±\ÂÅn¾\"Z\é\ÚY\\\ì\Çù_%R£\Û)Ç­¹!rÞ¤ùt#1\ØK\Ëond,y\ÚC\Éa¿º\ÉV´4x,¹F©|Yt\ç\Âr¡\Ö×eyl¼n*\Î´ùñ.¯O]\Z\Ø\ÝÀ2N\Ò\ßÿ\0-FP?=¦¶Í¸\ê0\êÀ\Þ\\S¿OGWKý8F\'=¦^(· Ý§q²\Æ,ª\ZFp6\ÄÀ2<üý?«u\Úi\ç³-ú^¥\é\ÚÈ£%7\ÓÑ¯\î\Zn¸ñ,\Ò${´ðA·¥ôtd¿\"t\àóú\ßBmÄ\à\ç¬\îg²9]5\á|g¼n\â\å\çipôe0+¨©ø¢\ï.(*lö®W%\Â:º|\è=¹#©\é\æf.\ìû\Z\Ó\Ï?]=>r\çIopm\ÚM%µqMGýJahuqd}ZUl\Û\Ë;\Ü/Xc\rª\Ã{¥H!\Å@\Ç&2§n\"·.@\ÚEwV¸³?3Ë\å,\álJñ\Ùx\ÜV:¦\×Y7Sµ\Å\è±\Ü	4\0\ßÌ¹gn~°Å¯\çÌ°qe@\é¨r$u\ãqY/º ¥µ\ÙüB\ån\Ð1Ë\Ç0\Ü\ä\ç\0©Ó¢\å\ëaC÷\î;\Èóú>cBÉYÃ´\ÔyÞ§F\Ù3biI\Øy}3\æô\ê;¨\Ò6§\ë+r<\Ê\Üq\ï/Jº\ê\îD5*Wm¡R\ÊQ\\9\n0Ü¹V\äi¦,\Å|\'(\èõÕqsQ\â²Ë×¡>W%¾\Ò]¦30ôoY¶<¥\Û:\éQthÊ²GV.»\ïP\é\Âö\ÆÝp¹La{\ãY/¸\ï3[_] o5m\ä\Ó\Ï\êz1\0Úÿ\0ù+\Ó\éC\Z½\ÍûI)cp,«(÷M2ô¾K&BFö\'N?«ð\ïq   xl	fÕ°³¼\âõü0d­\ÑO<\ÃR¸:zP\á¡ß\é6DJªiß\Z\Úr\0\ãhYp\æ\ÝòX\éµýJY:ºVõ±2ln>d\Î+\Ï\ëp\Å\Ìo\Ò;\éU«q-p½½\Òq®øñ+*8Ô;\rÛQ\Í\Ô!8ôòWÓ\í\Ãp\îEmae]X2\ïÌ§>T*lq\rËyi·L\Ê\Ùt± /N^¯Ì®=]\Z\Åq4ò\Êö16¬8ö6F\æf%\Ø\èF[¾\Óqã£bvVR\0\â+r\å\ÊÖG\Ð\í\Æ\æ&\á¤\Ê#yñûmyN7Nû\Ì\×D^>||k\Ø\è\çúi¼W®\ã¸\nR£<\È2T\\JGP5G\"#¯ð\ÄRQ \È!0\ÞW.D\Ð~\"\ÇIr¯\Ì\ËH\×^¯Ìº0\ä+¥ù£\Äm\æ{(Í¼\Û\ày\Û«·62ã´©§;c\0[Z\Â\ãC2»Ë\\Bp1Í·Oót2\ÚuT	\\´Àðòú1^ÓMZpµd»rºv-r*ñ\æklþ=?¤¸ÈZª\ØN^W¬=	·ö\ÎÁ¶PL\ãøõÎ¦~Y H®#KûXf\Æ\Þ\än\\<öRFi\Þ\\¢\'qR.T\Ý?»K\"¸|Ê¬t\Ò\\\êGù°\ç\Å\ét¡9¡ª\Ë^}\0\Ð,O±øö\àY0!C\0!c\Ì\êp¶ºö]ør\ÏLÁ¾%i\"EU\Â\ä:ÑL2b£·[\rc3cn\Ün\Ùr\ë[K4ðòµ\ìa*w¿>$ci4·`\åE3b\\lø\Ú\\«Ó. n¼ya\Ê	S¥¶\"Wm÷\áu\n`c\"\Ç\"\ã\ÉË½\É]BkiýI,zÿ\0LF\ÔI\Ù@Ü+\Én\ÄR®\æÿ\0PÀ\Zh,ò¢l\Ù#\Ç0Ô¯3.3ÿ\0üO\í+\Ñ\ÆùD\nPEC¨a¼,¸qdµb;E²\åYo\Ó\êU;ñ)÷¿]nºHý¢}9^$l-úM&E\Ú2+ªÀXZò;\ÍGN°\ãV\ìy;,%DÈ§09óc\n5\Æ[\ã\É\Ïs.µ°=IõþÊ©É ´w2Y\á\èu:{\Ó[gOO\é$2d+ÅÓ§\Õøzn$	\É.GmFq{\'Ú¸ \ÍÂ Å;ÿ\0¹7Qi?5Ä­NXq¾6C¸\Û\Ì;NYVU9\0\n6R@[¢+×£Óz\ìß¼\Ë\Ì\é@9\Üq+9»-úJ X,H\0©. \ãIª\\<¬øX\Ýez8ó\Î\Ô\áS(\0ÜÀ+\àB\å\ÕÓ*´!\çõ6\íR\ëþ¤a?h$\Ì$6wV\çhWU\Ò\ë¼òºq\ç¹K0\ítDÈ2ª=5»¡\"\æ§`D3\Êô\í\é«AZ[»¯;¬;\ÏÄºg\ì\"o\æS}­©\n$\çÀw7pÔ¸y¹0¾Á)\çÄ¯D\å9 ¼¢{H*ø\ÕùÔ¸J\ãQÀ-ºt_P_W\Íz¯Zh_ÔojP#Y\Ö\Õ\àÀý\ä\\®\0d;\r\Ï0®«£³©vi]8óÃÊ,(vþ&T*0£~\Ýþ\ÒX×Xt\ê\Üm&\åÏ§gD§cAý\Ü\\w\ÓÍ`Ú\ZNÿ\0£\ÓúQR¹J§N?«ðô&\ÜHf^Ú\âöDv«Ä\no\Ä\n_¦l\Û\Zÿ\03d´ö0ºfý<ð¶\àË\ç;6\æ\É\Óe\Ç\Ê<\åt¥c\r µ~a]=Jù[[\ìir\åÏ\ÄzXÐ©[·ù\éª;\Õñ(0»$T@$»WZ,WÉ®\àËºUný£.³ð\ä\Æ}Ë·4\Ü\å+;\Ó \"¶WÐü·	n^\nß¼\Ë\Ïn[/p(\í+!<\Û]_ÀûKú¬Biµrlo´µQ\'\Ì|\ØQ¶u±þ¡¹\Ê\Ç;ô-W\å\Òsûs:¶3N¥OÌ­\Ë*.V\Øz|\n¹|	r\åÏ\Ó\ÐK\0ù\â\ÐZø?0l¢	)´Q&PjA(IÒWó\\þ`cF\ì=\Ëøe`\Ý*e³\èoË¤\çc.l|©#È¹\ÊVP\Ñ\Ç0\nKµ ¿-NW·~,E\Ñ83;p\Ëb/þ;Ì¬ÿ\0S³{V\î]\ÓÀ\0	ýT6@³\Þ+2°qñ&õÏ\Z?·*×+S\èo¼e\Òsûs²²`Aù¬\å«ph\rF¿Y4\å\Ê\åÓ¾\Ð\äm\Üöf¶¤Uhÿ\0_2£\ÔúN9JpH\Þt\àóú\ßBmÄ\á?\Þ\Éòw^\ÈA¤y\0\Ò\nf\æP9\0@\ÏO¹mñó\n¡.v¾@\ÞB¾,þ\ß5m\Òo0Ðò\Â\É\Ò\áúGYs[By[·E(eõÏD\Ð@³4\Ð~`I\0\Ù\0ü@ö0 §m7·\É^\Û&[	¯M\ßaN¥4<4er¡\éQeóuk\ËO§£g\Â2¾\ån@D@¿÷[n\Óma@Z¾aýµ\í»M¨¶L\"I+ª\Ø G\ØÁµc\ÄÛ¥·¬uµñ3of(\Þ!r2d\"ü\Â\åÏ¤!½Ê«}Ä«\çS¤LL]ñ&\Ë\Î\ÖÊ \é%\Ê\à{~\Þü\Â&\rK`wñÌ¦Î<@\ãJjùV!GýÀ`4\0¾|À«\â÷b.U`ø\Í&]C\Ä,ª¶6\ÉZ¸É2þòT\0FWÊ¶\0\0?¼HÍ¹H\Zno\Ä\"Õ¨,xñÌ§ôZfQ¾ü\"PÜa\ZoPºû\ÉQ¿\n·üµ\ì\í½4(1±aé§\æZ¹W0\ÌWI\n\ÒÎ²þ¨_Ì_4\Òad7\Ä\'©*\ÆÊ·ñ%h£u\\Jöþ\äþ*ÀkR\æTzJUU\Ê«´\éÁ\çõ~Û\Âl\ã$]\ç³\á#\Û\ír¿,\Ç\É\0@x$5z\îº|À­\íµ)\æÓ¡H¯\Ç\'\íµR?N \ÙzM#¯$*Ú»z\0³p-{Â7;a¹\0sM\Ä(\È,ñ¨ôx¸+ª\ÛFÀñ|À\0^Îø¾aRAs²\é¡\æ4\n\\)U\n°?\â4\ZhPQw\æÁ¨Àn¯MºQ%N\Òib\Ãñ(6\Ö Áz \ì\0¨nn¶­ @÷{\Z­¶ª¸¨T¨Õ¤[@ûi¾\èE´Ö \×\É\â¦¥SÇ\n\ÙHAufûÀ!£Uù\æJ\ÊÀ]\Ô	$\ãÔ¬«]¾ Ezd¨A°\Ó\nÀ.ñ±@H:½¼ÀfØ\rñ\Z÷¢+Ç\"Ôº¨1¢7¡\Ï\Ä\0#\Ú,\í\Ì\Ø\r;ó¿\Ä.APÁA«AP\r\Ä\×i\Ò\à0$oó¸DWvº\æ¸\n7*+hP cZhÀ\"J\Ê*ùó¡p4\í\'6ô¾¡(X8<þ·Ã¾mÄà±§*ÀX&\í<õ\íB62\ÃD	C¦\ÆGB\î\åJT\"xª)¢lý£N\rÇµ*¿\Ô¬·\Ç]@)ª¶ób½\ÄÀÜ¾!N,ß¶\0\Ö\äD\",Uû*,l\Þ\í»@\ÕLñ\Õl\0¼>\ëe6\Þ&¿§¨P\ÜÂPªÁ@BZüÀ iw¸ZCZüñkI:]@\0WI`* @Î¸¹k\Í\Ôn\Z\ØP\Þ\0\Ä\Û\n\æ\r\0Ù¢Ý V\Ôõ\n\n4U\ÒR\Í\Ü\"~\ÝK¹$sM)\Ø6\âe\nJ]üó4\ì®÷\çGµµ(ù\â\0©¶Ô W\Ï$/r¢«TûIQF\0pÔµ¬	`[Q¡W¹/¤­Vÿ\0ü@3Foh6Tj¯;q\0Q\í&üx¥O%õ\0]í\Ö°f\Ô?\î0A\äv\ÂcföòaS¤Åó\Éö$¨ÀQÿ\0\à@ª\Ó[ùó(¶Àin|Àô>ºW »\Üw¹Ó\Ï\ën;\æ\ÜH­±F ÷\ßiÂ½²ô£.ÕTW9\êkLª¥T\ìOsñ.8úC©X)Cý£j\àúB}À\ì!8ºünú*¨\Þ\Î\ÐaÖ¬oY¨©4\Õ\Ê$m\ÈP± @o@µUÀ©\'q¶\íop\Óþ\àS.u\Â53\Ò®¿ip?P©¡»j\npº«3\ê\ÕK\ØIH\ßS|	Q¬53Q<N:\\G ´,\ÜvZ-wT\0£\î-p©4 \ZÉ{\ÉS`~$bY;yLýK¨¨ûo9?¶P\ßI\ï\è[C¦÷üø]z \Þ\ïpq¼¨Y\ØX¿H\r²@#ö\Ð\0o\Ä*I\ä³¬\"C\Ð`\Íd\ÖÀ8Cl\ÇqÈR\ã\Z\êÈ¤\Ü÷üFô0lús\ËiWc\"\ë¥\Â¨S\Ó#\î\æ£=cm\"\åÒÿ\0.$\ÏÁ\ÜHÈ®\Õ[\ÚQ\"¶Hÿ\0p\"\ßN\×P.\ä{]»EO¶À^G\æ \Úlût\0\rv\í\ÒAOÿ\0·³\äË±\"G!f$\ïU\ÏùuoZc«\\\Îm7\ß\â-\ÇF:_u\Ê\Å\\\é\Ó\Îÿ\0\ê/G\ÂÀj¿\â?\\Òl.¶q\Ø|ÁúZ¥$ùù0&\ÃPK\Õ,l¤ûü\Çô\Ú×¤\ès\ïzz?LVU\È±\Ì\éÁ\çõw\Ón$¨³\Ý\É\Û~g²k§·X,£n|üK/\ë\'ÅD\ÆÁø,\Æ\ëñ&\ê\éþnTµòXÈµ|.K\éðPJ,½*\ê\Ý+\Ä4\Ó¶LjN>$\èé\Øm¿\ï+)PTñúÀ÷\é]&¯0~£à©«Û©4ûolc¡ý=©~`¸\Ù	QG\ßÚÿ\0­I\è\Ê\ß\'\âIY¶\ÓI\Ó/X+}¦¼£]C\"a2`Õ °,8ñûJ:H§\í\ã\ZN¿\Ív\0ºµ¸E{3\êk¸]&jkn6¿û/Ê³¦¼\îL\n\r+º¨Q\ã¼*¯\êö¡ø[2¦1¢\ã¯\é?\åhþ¢A\È:\\\nVñ2\ÖÅaPÿ\0P\í^>eýMô\è4 \Z\ßÄ±\È}£]Yñ\â\ãUo_\ÄÖ±¨hM&\ËY`.\r9ò\äÍ\íJ\Õ\Ø	t¸`zµ\Ðu_µ\ç\æg8k.\Ò\éÆ¸\Ð\nòûþ\Ò\Ìm\Þ\Ð\Ý(+G&#ÿ\0\âR¦(0ý¸|6\ÍiR±\rAþD¦;n\Zÿ\0¦m5i°£Aû¼\Çé´±\í;\ÑúTOf³´~\Â\Õ)¹ü\Æ\ÕË=Bl|\Ë&SñÇ;¶U~\ïmö\ØIl\Æ\Z¶§ ú²7\ávf\ÓN¥úLý¬mò\Ì\ÄËnXeúfb\È\ãù&-\Ê\Ì\Æ\ã\Ì\ì@ûXI^mS36J/s}þb\\|\Ö\Ì^_w<Ë¦gf\Ãu>\îñý]¬\r$\Ï?¢V¨¡·T\éµ\ÈF¢v\íqú=/¥	Q½\Å\Z©Ó\Ï\ën;\æ\ÜH?\Ô)rÁ=\îFûN{fõW	\Æ$\ÂÉ\Ë]$]3_&1·GlÂr8\ÞUv\è±û3XgÏ&\Â\r\rKó1c¯_n[\Z#nó\Ñ*\ÇOS!k>D&ªëÜ\ÍwüJ\Ê\ÃÝ¥h\Ýþ°!¶\Z\r\Ýó\ÐEZ?\ÚQ\\ö[ÿ\0m\ÈÔs+©p\ÙZ\ï\æJ\Þ^N\ØH\ZZ¿Ä²8ò\ä\ê°6Åó~.~uÏ Â \é%\ÌX\×V¸3\áÉÊ¾&0\ë)©ÖZµyó3¢\ÇB9µ² ·Ä¨\×M°¯%\0{\ê{ªý\à	ûm¯0!\ÝY,¤~±\Ä\ÝS{Wo[ÁódÓWÉyW± \ÂT§[|©¯+ð®§tê\è#ÁñIÎ¼Ì¡÷L^8v\ã\Ë,`OmÁñ1[m1Ç©ó½v~e\Û|G@#l½§´»Muò°\Z±ÇÙ£lõ\Û\âS[CpofXü5\Û\ÏË\ç\0n1|´¦\äùi¨\\d*­·úÁk³,Gü4¯:\Èó\Þn\å\Ø}\Û\ÍN)\ç\\¹pzg\Ú\ß\âfñt\ã\Ï\í\ÊÄ«{.û\Î\ÇYÚ\Ó.\Ø\Ðk>{~#úuZ?µW-+uwQ;\í?\"\êtyß´©~¢AØñ5¥5[³Z\Úÿ\0NlúVø\é$û:]q\Ûy½?û÷]5xº£\Ö%ù<MI\å\ÉÖ&L»\ä\ÊBnG\Ï\n\æ\é4W?¬¾+=J\än&\æ,uòA\é°÷°Z \×\"g\r^Ò%\nYr\ßú~ifZÞh=\Þ\Õ/õ/i\ZiYFÿ\0÷s\ÔJ°a¿\Ý¬zJ,x®ð=/¤\ëÑ]]©Ó\Ï\ën=	·\Ïu9]\ÝXn¾\âö\É\Ó\Ë.Y·&J\é\'\ÂÉT\È\í\ÇÒ.¼}j/-¼\Ô/§\ëõ!u¨¯Ì¹bú)þ8§§_+>\×]#&,yÆ¼\'~\âL\å\Ï\ØcoI\é\ÛÁøÆ¶\Ðÿ\0F\Ý=Àûa6\Ô\0}\ÜÊÚ¨ª\å9FóRÇ\Ôg2A¶òß¦\æ6U,&]8pò\Û|=J/\Üet¾øÿ\0\Ã[5/¤»uÑ¥¯ûK\']Æ\ÆTyc\Ð&RQ¬v\").[ôÙµ©]+\ê|÷\Òr?j´?=\æk @¢·ú\Â~¡¬1EO?0m\Ï\Õ\æ¥Ð \n\â\Z\ç\äWQ /s\r\Î>W\r1eT;q#·µ#­z\Ìk\ÃY/¦¹\ë*.Aðf¥ÃôX8<\ÜÍ¬_J\Ä6!ZXñ3´\áu/\Zn¯3;²c?Ô²üFl\Çõ¢\ä-L¤h\ïñ/\ägkõ=Øi÷ð\ÖÜnU\È=¹J²b]/v\å\È\åz\Þb6\î<Ë§K3·¡¨EÜ¸\ËVús\â6pc¤^ý\ênW;\è\Ç>l¤¶\Äµ=¥@õ9 ~&-g\Æñc$]«®»ecF\Âùú\â%\Ô6d\Ò{|Ë´¿ó\ÓU\' :Ð¨Yò\'ùT±C\ïGú´\ã\ÌÅ³0R¥S8¿ý`\ï\ê>C\ÍI¦¸ñò®þ(\Æ\0ZGOn;\\{M\Ê\Åô¥Cõc\"Z5}9\ÎO\ÌÍ©}+4\Ë1\Ô\ÄyIõX«>Zc§ýL\Ø\ÒúW9~\Ñÿ\0qþ],^²\Ù^ÿ\0\Ùz\Ò\â²{ ò?Ð?	.\Õ$d],×¼~\Ã\ÖúC9L\ÅQ\0o{N[q\èÎ\ëÎ¤%@§»\Ê\ÎhP\ßÓô\Ä1G©6n\Ä\r±\ÜÊW%Htb\Ì\ØÎ¤0\Ç.2\íc\å$L¯7.\Ø}­³|L\ÓmÅ¥²o\ÌJÍA5¬ñó5¶\"m¶öþj\Ö\rÜy\Ò8l÷¯oµ!W]\\\Ã@\Äs\Ñr\\%n®4¿ø§ó¬¬;Tm\Ã\Ý\Î\ÇF6Ôµ¦¼ü\Ê\Êÿ\0m®A\äÊpõ;··]~KuÆ»N£\Ó\éO:¾\Õ#²\È\ÌÀ\Z«;&Th¯\\Èt\ã\Ë_r\å\é\ÊÑXj^;;Vh¥oÛ©O ÷tG\Z»vü\ÍKôÅ6\ê\ã `D\Ó\ÞkI1Ë¾N~µ\Ó\"©\ÛVªjýYS¥Hly^7µQ{\\rj\ÜQ!,}R\ÇQ;\Ëjc\rS\'\ë#6fç±\\1\ÜeÙºa\âJ\Ê\Ê2¶OQx¯\î]\"ûgHe\Ó\âk?^ÔV\'£\è¢K·J5U\ìhKv\ÔÓW¸\É^Jt¾³R;\'RS\êF}¾\"\\3x\Ì\åe\ÉF6V\r¼|¸\ÊÐª²\í?J} 2¸;,?\Z:YõýKJ\ãþª\'}&ß¬½¼Kù\rmu\Ó\Ô	)§q&º]vö~Ú±\å@nG3¯	\Ö\Üzs£\æ3dF\ÜSGý\Î/{\Æ2`p\ë{7\Æ\â¸\Æ5¤\Ã\Ó\åV\nT\Ê\ÄX,?7.V\ÆÄ|T1f[\ã:÷\Ü!\æ\å\ÇÆ®rP!bÎ¹»P$\íó1¦¡\È¹Ú»üK¶q3i9½Àb·v\\J¹XÁO]\0À.Vr.­\Ç0Ô¬l]\ækm¨oÌ\éÅ0\Ò\ß\â9ðù2;l|\Ê\á\Ý7PR¹\Z¼÷Ic¦ôlE\ß_\Öq9ú¢V£©Ug\r±$z=:\Ì\"\Â0é°¡\Ä\0\ÃyL±$«Q\Æö\Ñ2TYkq#.9nH#Pã¼¯=\\VZ«*A\\\Ñ\'F¸OLº\ìò%\×lÿ\0»\Ú\Ù´­Ñ\ì\é\Ìý6<tr!Ó²\å\É\é!;\Ã\Ó\åZ*ªð`\ÍY·6ÿ\0¦X¸)½É\å\ÊW%\ÈX\Ý2_0:{[üq\ç\Ã\æ#.;ö#\Ä8 3u\0¦\ênDNº\Ä\î´VB}\Ë\\Ôºgö\Åñ\áRQ¢>*[\Ò\Ëk£¤\\tÃ$\í\ß\Ó\åð\ÈaA\ä\Æ|ª\á\rK\ÍQÐí¥Q\\®\Æe¦©&XòqP\çcok®ð\áË\Õ\è\åû¡\çk>U\Ø´pª»ÿ\0¸ü®\êVºX²\è\ÓÈ®~c]µ\ìý t\Ì½,j«\Út\á0ózÛRtp   |\Æ]ói]:l\Þ\×8^\és;\Æ6 ¡¶5\n\ãÌ28\í4\ï\Æ\æ3´¤0¨YXºúf0Ü¹B½v[\Ú`w/.n¤µ0\Ú2ó^>7I\r­\ÅÖ #\å/\ã¡2kqU\æ³	É2Ny©M8ú¥°2ðe¼/Ã\áÔ¸U«¼,¸`X\ÞûHè²½w+\ÕÀA>õ\Ü|W\Õ\á\å\ésVer.ñXz\àz|\Ù\ÕÄ³¾Ü¿#,\ØD\ê\æÌ«..¸&\âG^<°\Æ\åw À2¹`m\r$±¹\ÛD\ÉFd\ÃqÔcmï´®|øyF/Y\ÒN\Ò\å\æ\Æ}9ºuvnL«\\\ãU5^\æû¾\"ý\ç¤\Ñ\Æ\á!x\Ï\Ô\ã\Ðú\ím\æ§qÛøcp\è°0!aF°t(v\ÇIr{tc\È;±lU»Ë§|1Ú¸\æ\Z\ä\Ð\ÞÑv\çdùu%}-d\äÌ³­³\Üü,1-{WurW!_WC\È\âY\ÕYqÛ\Ø$f«\Ñ.A E\Ú\Ä5+ \Äs#m±\ä£\"a\Ò3\0·q\ïô\Ë\ÕI\rþ#.ts?÷\çó$\é/\ÝM±Ó²¿qÜº\Û/g\èPH,¤¯\Ä\é\ÂXóúÛRtp   |¦P16OIm\Í\ïó8þ½\Ò\çª\ä\ã´\ËFll\Èk\Æ\á\ÉÄ®\é	º\r0\Þ±|eM!¹X±¹_.^¬\ë/K¢Ä¯O(P£q{\Ë\Ýy­\Ã}³7^./\ÔMwWÅK¨Qj67þ\ãIadÔ»\ì%%\Ã\Íu(\Ôeze\ÌD*\Â\Ü*SW\ÂË3¦\ÞL:De6),Ã£§ó\ä\Ã\Åf:{]LÆª\âv\çQöÓ³1]L\Ø6\r	³¼«+\";Ìü9eI]	\Ð0f¼|ÉIr¡bL(	7\Õã«\Òdð±Ub\ÄþóÛµkA©l¹\áI\â7\Ú~/Î9Mx<\Äû,Fl~\Ý7i\Ø\Ë\Z\ÂÀ«ew(¸T\Ü*H±Ð£X\ÇIr«d½¤k\n5	\Êf6\é\Ë;\î&G\ÌW¦§´²¹\èK\'\Ír·\ëJ8\0Õ§Qðvõ­õ\ê{\ÐQäTÓ©Ç«\Þý\ÄÔ¿9c§5Ã±`g\î7¥cev2a½Ì02WWYz\Ý\Æ¸±K{sñ,³o>2Ñ@?\Ã\ãAû·\â\'\ÝOþ=¡ÿ\0Ç\ÕQ\ìjñ:zyùyý}\Ì=Y\Ñ\ç   |¶P:vwEb\Ì\Æ\ï¶ó\Î^\é\Ü\Ãþ/¤=i6\×\â\áP¹\æ£&dMDJ\ßL¸\Õ¸nB+¡oo5dU,\Ø|H\Ç;Ó¯LtjÇ\ä¯>Z_ªBcj\×ó&Ú§3Á÷2\é?h Ò¦ ÿ\0?j\çÄ¹P\Ûü\ÝJ¼ya\ÄT©\ÞWyr\\\nV\äB\æ@\à	0¹k	|\Å\Åyùm\é£YÕ¿ý©?´Î²Ô£\Çi\r\"\ï\Ü	Àñ\Ë&%u$^¯j\\82bld\Ø\ÚW£,©\rÀ°0*À8£*£\n\Òa|ª}%ð9z1ÙS¦\Â1c`\rÀüÉö\ázÞr»\Ú\ÂÔ»\Ó=N¾Y¬B	=¿õ&\Ú\×M0\ç,¥\\\0¿=¤\Ñb¹ðÁü¦¸òÃ©¢%v(Z\áBn-`×­NXHÀ¿2a|Çÿ\0H^^W5Þ¸\Ù@9NZ\Û\â$\Î\Ü\íøJjÊª­{	v\Ó%f\Ä\ÅÝ¶<\0w2Vº\ÆJFaj\r÷M93a Q·q\âk.¼y}°´\"¤\î bø\â\ZL$ó´ù4NO2X\çÏN\Õ\È0¡)1­WµKN\êJ#\ÔÂ\ê\×\ÇÉ}\Õü{?B\Ò\Ê\ÚJ³0&ûÎ-¯?¯¹«:<\ä\Ê}w¶f,hx}¾\Ö\Ò1µ#e?\î6~)¤\ë6­\Ç\ãf¬rcUü]~$Éj\çO3K9X¦^&1zu/.\Ý\'9X\\­ar\Ó\nÛ¤®\\ù|;ÿ\0\ÆE\î.\æ\\§\ê×¯úxjû\×x\ÑýU\ÍZbaª÷#þ£[6\Í\ÉBUX\ïQýU)­w\È^%YlbýV¬^ñ\ã¼Ô­\Înb\n \âWL¤Àv·ü8Â¨½õ|L¼ö\æ·Võvò³ ¹j>T9,R\ì.4c\åQ\ë*	üùÉU¬»{\Æ\Æ6²\á\éO·\Ú\ÞxË¬\ç>L/Ó©ºNR©\r&\à [£K\Ü\É\\yòøu\Æ5±arc.yøùH%r\Ë\éxüY?½ýM` õuµ	õHejQ\è\Ö\Ú\á\ÌPQ©É¡¦aL-Ove\Ã,½«½~9Ë¤õ\'Ë\r:0Í¸!W\È³öÌ¯=¶­\é\Ê\Êu=\ä\ÙoQ£-6LuGa|ËñÒN@\Ç\"\0\Úû\ÉùHÇ\ÑØD^ã´ñ]J\ê\àQ÷\ÞYYÒ\Ó.[(t¿\ÓYns±É\â4\êD®³ªH©\0u¥üÃ;§¦R\Úõv\0l?3;\í\ÏñRõrOn\çó\éu\Ó\Ùú¹3d÷\Ì,\Ä\é\Â\å\åõ\æ,z³£\æz\Ãg\Ìù·¸\Ò\Ô\ágow1_R]#d®ømh\ëVwf6]?to¤ÓO¯§-ºª*/Ò­1u`ªBF\Ç£t¡lz}\Ö`%gúdôrË\È*\Ëf\Í\Ó#Ç¯ñQ\ç:\é?\æm!yÛ¥\è\á\"Rò3½¤\ã*·	û\íÌ¡T(5ÿ\0wzüGõ\n¨Õ­÷\â?iµt\n:}S½xÿ\0\æ?«üR´uk=¤?f;\\Z\Ë^?m|\ÊV®\á\Åg\Âæ¦¹§3ôý;auø\æV\ç: \è\É;^N\Òe|\Ý)Ñ½\03ù=¦X¼²\ÑT\ï´aª[\Ö!\ÑÞªÿ\02\ë¢Od¶Gô\È!Gy4ÒMúh>cFûg\ép\ßp#F\×\\Þ\Ô\Äø\í ÑQþ£inÆ¿Ü¹\Z&l´\è2!ød\Ç\Ò\ä\ßI\Æ~%js\å\íAö9oÿ\0¬7\î}WIj^v¯jA\Þ\íÁ\Êaÿ\0*©\Ã\Øù\áÿ\0\Ó\Ü\ìh/£_¤\î\Õ ³L\Ò/\â\Ï\Õ\r¸HPw\í\Z1óP\ÆÁ\\½\È\ï\Z\Úv\Ùr¢9U!Ú·úúm®<Ï°\ßûI6|9EgÃ¿\ÍW>L=+n\ËñÌ­\Î|£±v&»*\Z÷q\ìXî°\äÉ-·k¬}U\Ô\0l\Îú4º\ÌFC­tö¾e\ßIþQc¨\äÔ¡O\Ú3ñóÚúW¼k¨¸\Çj°\Ö\Å)\0\äÿ\0¸Ñ¾\ê\ØÙ¦<h4ù¿\ÞM\ÛQ·,%GRõ\ZEfK_Ä±0Í±ôylPüJ\Ô\å\Ê9òtø\×\ì\Ì|Z§\ã5\ÆI¥÷\Íaý¬	<V6ºÚ[\Ü	\ï½\Ì\í¯\ÄÖlÏ\×ÿ\0ÿ\0õOo\è\ÃWNùA4\í°=ªvá§\Öÿ\0Xz3n$+\êF<ªfþe\"\ìöùñ\Ë\Ñ\ér\ë\ÅÄ¶\ÍüO¬= ¿`µx÷\Ôv\×I¿\\.d\ÊG+Uúü4Ä\Õi|y\nm\ÅU\ÅúYÒ£«µG8ô7q\Z\éP\ßte\ä\×2h\Úøó²¶6AÜ¯2¦õp\ë!\àÚ£&goQ}Uf.v¡\ÄR@\Ó\ÕkÈ¬Õ¼»\'ð\à¶%bI\Þ\Ï\í?AYñccò/\í\ìü4R\ëó½7\Çÿ\01;\Ù~¢¡4z\ÄXRc{?\"ò\ã¡\áOx\Úÿ\0ý£&`,\Õ\Æ\Å\Ô1tQ\Ø\Ý_\âO\àº>C \ÆT\î\ÕFº\Þ\Â\é7t¨±Bº\ï¹2¢Àh½O<@\Í\ÛUeAù\ï\"º-\ã,\'_\Öe[À	\rÙª]P¸\Æ\ËÓbHûv»P\ÓiÅ©±û\â1òg)d:©±ñö\Æû7Òz\Z!v¾\Ø\Ðf|i©ô`VòOÂ¬3³ `Iø\Þ\\WøjF=[ÿ\0\ä?\Ôd\Ã\rg2\éa ©\æ2¸\\¡¢Á\î$_Õ±\'§ô\æ5¤ýIV\Ô\ZHo·Ìº\Ñý@F%½ÿ\0\Ühý£-½0^}\ß1­\ì\Þ\Ôq¤2\á*_½\ÔSh>\ÂÊ¾©]\êOÚ¿\Ä.¦V\È·´\rÛª\ZS]!=¹&;Kõ8À}¯É3fU\ßb;Ia\êÞ¢±)_lU\Õ}JÈ¬UG+ÿ\0¨\ßF?ú¨_¿Dÿ\0\Ã}I)\ïPu\Ô5\Úú¬\ØQ\\\ïÿ\0f?\Éú%½V;s\æM\íbÛbv\'\Ìh\Û&Q\Ó.B\Ì[s\ê_Ún°x,¾õ&û1Æoz\ä©]\Ä\Ör£°Ñ²ø\à2bü²¹-Bd\í\Ï1n\Z\Ztûs-\0v<H­q£)-oý\Ð\èÇ&\\Ezgj\íø\ßQg\ë\ßÃp\âT@\0´\ï&&W\Ê\æ¯**\è¹£\ÊE{\ÂË\ã\Ë\ê:L\ØsG¦U\â¾\Ñ\âr¼q§§©.ö\ç\ß6Á1¢}\Ë\âgñ½mCÿ\0Ôü6UÇ¡¬¯ó\Z\è\×uF#©,rl§sZu|4¿ª;\Ìø%d­\ßM_\ä\Æ1µ\Ú)5²°r¿x\ä\Æ;\\\çK+Z:|\í`ûÿ\0Q\Ú5S»\äyýG\é´\ßðI÷>@\í\È|~e\ßfúK\à\ÃeSvÿ\0\Çó¾\ÏÁ`\Õ\Ô \È]\éÿ\0\Ç\æ\'iø£ÿ\0\äiP­¾~ck®¢FM9ò+k­º7Ñ­!@\Ì\\\è\Ö\rw\Äo£Z@Mvù5\n?´~CI*\ÌX\åM§cÿ\0¨üWS6¼u¹¹?°$P\ïv«ýa¥zi©\'Wr+L(\à\0\ß~ KjÈ¤t\åC©Þ»\ÇôCX><N6\Ök\îú*\Ù?û\"\Ú~\êý£\î®ô.Q&ù¨E«+þcõ7¥¿UL\ÙC³iôü\Æ3ÙôþY²dõ5¶Àýc}¯\â\\. ù\Û!un¿ùd\Î:@@o¨gbûks&\Í*½B¹­\Ôö\Ï\â?QgUa©Jü4²*\å¬\n<\×2\ZõKbpÀ/\ÄÖÔ\îþu\Íþòh\ßkVq¡ll9¾e\×föÀÕ1ú2 Ä¥z|a·»{ÿ\0?i;U\Ðbéª\Ý\Ç5ø÷Et³¥}r¼\ÒoküB®\'ªG´\î7ü?Îs\é\ÔO¶6%J1\ÎF\Ûÿ\0Þ\ZPKiô\êOâ¬\ë\è\×õ/\äO\è¬\Èø\"¸Wþ\Z\î¤\×P+\è\Òw\Û÷tOº¬ú°cfB§*þLôrXû«ÿ\0¨ÿ\0;7Ú¿ñ\éÀ±aE\çñ\Z\ìÿ\0M\Æ1«1f\å¿\èG\í?\Ó&\Çü*WbOûc}\Ô\ßQoD`\Ô\ä9f\ßK>d\ßgâ¾K#®ºH\Ã\êz þyü\Z«*KpU Gút_P²\çB{\ßÿ\0×\ä}²|\î$øyI\Ý{=/H=\Ú@j¡Þ¿\Ì\íÇ>~¥\ä\és      `ý.&\át\ï~Ý¦o\Ü\ç\Ê2§c5\é³c\ÞÎ72xF§«\È\Éô\ìn\r;#Ù1\áv¡þes±pð\î\Ô-CI\ÈÚªµ\Ð\ÕQ\ázþ©Gª\ìGj\Ç\â<!\î\ÔcúZ\"\é9²?\Ôj<!\ï_¤aúZ\â\Õýl\Ý0<!\ïT\ãúZc\È\Ï\ëdm\\¢\"ð÷®4ô¬c;eõ²{*/	I\ëYð¥c9\ÆS)>,T^µO¤\âËr>\\`µ_¤\â\ÌÀ¾Lq¼xÖ³\à\ÉôY9Éø{\×\é9>\"hg}#|D\áÞ»À~¦Ï¦ª¯÷p÷ª\é8UjrµT{Ç·Þ¿F?¤aÆ¡U»\Ýo÷¯Ð¿IÂY¾\Æ<\"{\×\èþSj(Ì¥´xCÞ¿I?IÀK2WaEK\ázÊ°b\Í\êZ\è\\xCÞ¢ý+E\Ì\ìk,G=\êJÆ©¥ò6@\r@lc\Âõ1ý+\Z×òÞ\n\Â÷$(\Ærl\Ù?\Új£\Â/½O\å)\êõ²l(\rª¤ðÁ\ï_¤¿Ò±¾EW\"\é\áVøLa\'­b2}#Jþ®A^*O¾ÿ\0#\'\Ò1d@§.A]\ÅK8H{\Õ-ôMAË¼\íq8H{\×\èI\Ä1\èõ2W\äI8H_Zß\Òqc\ÆPe\ÉG\ÄxCÞ¿H\ÅôXA&ü\ï/\ÎK\ë[ð\'\Ñðc,\Ê\î	\ï|E\á)\ï_¤¢ô\ã#dú\íO~\ã\Ñzqd,Å¾jK\ÂSÞ¿H?D\é\ÙÕþ%¼2{\Ö|$ý}\Ù\ïñ\'·	\ë\Ùð?Ñ°¸*\Î\åO\ÒøCÞ¿Gòl;o¤\ÓB¤ö\á\ïß }\Ð\\®m§jnýúOò|CHÇ\ÐÂ¥ð¿~\ßG\ÄV#¥5[Ç=ûô³}+\ÆTdu-÷0«18HÖµ\é8\ÂrY[k¨&Vú\Öü	ôh´3d\'\ÛX{÷\èÁô\Ã\Æl{\0\×\í%\á-\É}kf0/\Ò1-\ëd³øð÷®1\'Å¬·­É¾\ÑxJOZÏ¾³­)oÈ	Ö³\á\'\èøI\ÔÉ·ÈÛõ\ï\Ò3}`eË·\Ë\ázý5KÁ¤+k`;}nN¬x\éÆ¡G5$r¼¯+¼¨@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ\Ù','13','Active');
/*!40000 ALTER TABLE `tblcar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcontact`
--

DROP TABLE IF EXISTS `tblcontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcontact` (
  `contact_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontact`
--

LOCK TABLES `tblcontact` WRITE;
/*!40000 ALTER TABLE `tblcontact` DISABLE KEYS */;
INSERT INTO `tblcontact` VALUES (1,'Kishor Balasaheb Kadam','kadamk33@gmail.com','9404308673','Booking','MyBookingIsPending','2022-01-26 05:32:29'),(3,'null','null',NULL,'null','null','2022-08-27 03:11:39'),(4,'prajwal','admin@gmail.com',NULL,'book','null','2022-08-27 03:12:09'),(5,'prajwal','admin@gmail.com','1123456789','book','null','2022-08-27 03:18:09');
/*!40000 ALTER TABLE `tblcontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcustomer`
--

DROP TABLE IF EXISTS `tblcustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcustomer` (
  `cid` bigint NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `occupation` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `mobileno` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcustomer`
--

LOCK TABLES `tblcustomer` WRITE;
/*!40000 ALTER TABLE `tblcustomer` DISABLE KEYS */;
INSERT INTO `tblcustomer` VALUES (795193,'javatechnocrat@gmail.com','Male','Student','NUAGAN GRAM, PO:-GOVINDPUR','2022-08-16','Java','1234','8480288040');
/*!40000 ALTER TABLE `tblcustomer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-26 20:25:02
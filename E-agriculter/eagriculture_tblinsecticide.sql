-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: eagriculture
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
-- Table structure for table `tblinsecticide`
--

DROP TABLE IF EXISTS `tblinsecticide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblinsecticide` (
  `id` int NOT NULL,
  `insecticide_name` varchar(100) DEFAULT NULL,
  `insecticide_cost_range` varchar(100) DEFAULT NULL,
  `description` varchar(900) DEFAULT NULL,
  `insecticide_image` mediumblob,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblinsecticide`
--

LOCK TABLES `tblinsecticide` WRITE;
/*!40000 ALTER TABLE `tblinsecticide` DISABLE KEYS */;
INSERT INTO `tblinsecticide` VALUES (1503,'DSF','deswfdas','deswfdas',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342ÿ\Û\0C			\r\r2!!22222222222222222222222222222222222222222222222222ÿÀ\0,,\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rðbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0÷ú(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n+;P\×t\Í/\"\î\î4ù\æ>fü‡5\Ë_|EE%l,‹z<Íüti\n3ž\Èã¯\Ã\ÐÒ¤\Õûnÿ\0º¤fTR\ÌBÔ“Šò[¿\ëwykòTÿ\0*_Ö±æ¹¸¹m\Ó\Ï,­\ê\î[ù\×LpR{³Ë«\Ä—ð\àß®Ÿ\æ{$\ÚÞ•ú\ÝF\ÕO§š	üª›ø¿A® ‡ý\Ôcü…y¢ÁC«9%\ÄŸ\Ã¾ó\ÕÏ´\ã\íý±ð¥_\Z\è­\é_¬/þ\äôU}NŸvgý½‰\ì¾\çþg°G\â­Sò\ê1÷_\æ*ô\Z•\É\ÛyIì’©?Î¼FŠ—‚Fk ª¾(\'÷žñEx•¶©fGÙ¯gˆ\Ë!ò\é[–~;\Ö-\È˜®Wý´Áü\Æ+)`\æ¶w;igô%¥Hµøž£Er6?Ó®0·qKjÞ¿}1\Ï\é]=­\í­ô^m­\Äs\'ª08ÿ\0\n\æ9\Ã\âG«CB¿ð\äŸ\ç÷\ÑE@QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QTu=^\ËH·ó¯%\ÝA\Ë1ö\ç:ßŒ¯µB\Ñ[“kjxÚ‡\æa\î ýkjT\'SmŽfcG\n­\'yv_Ö‡k«ø»L\ÒwF\íþYDsƒ\îz\ç\\6©\ãWR\Ê,¿e„ÿ\0\'ý[­sôW¡O\ry³\åñY®#¥ùWeþ{$’I\æŠ(­\Ï0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0*H.gµ”Ko4‘H:21ô¨\è i´\îŽ\ÇJñýÝ¾\Øõ…\Ì}<\Äù\\CúWq¦\ë\Z¼[\ì\î\È2~¢¼Z¤†ym¦Y`‘\ã‘NC!Á\ÍS	k\ë\á3ªô}Úžòü~ÿ\0ó=ÒŠ\à´/­¾®2:„ú\Ì~U\ÝE4sÄ²\Ã\"\É«)\È\"¼ú”¥M\ÚG\Ôaq”q1\æ¦þ]Pú(¢³:‚Š( Š( Š( Š( Š( Š( ¹Ÿøº\r 5µ®Ù¯zü1ý}ý«;\Å^1û9{\r1Á—\î\Ë8þe÷÷\íü¼ø’Ä’I$\ä“]´0\×÷¦|öeœ{;\ÒÃ½z¾Þžd÷—·:…\Ë\\]J\Ò\Ê\ÝY¿ôW •´G\Ë\ÊNN\íÝ…Q@‚Š( Š( Š( Š( Š( Š( Š( Š( µôO^\ès~\å¼\Ërrð1ùO\Ó\Ðû\ÖE¥%fiN¬\éIN\ÍÑ¤k6zÕ¯jü¿}\ä>\â´+\Ä,52\í.m%1È¿‘„w\ê¾ñ¾»m‘ˆ\î~ò,þ£\ÔW™_\é\ê¶>»-\Íc‰ý\ÝM\'ùú‘µEW1\ìQ@Q@Q@Q@q0ñQƒ~™§¿\ï:M*Ÿ»þ\È÷õôþWü_\âO\ì›o²Z¿úl£¨ÿ\0–k\ëõô¯/$’I9\'©5Û†¡~G\Ïg“…ðôž½_o/ó\n(¢½å‚Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( §´»ž\Â\ê;›ir\Ær¬?\ÏJ‚Š\Z¾\ãM\Å\Ýnzÿ\0‡µø5\Û-\ã	q±úQ\ìkf¼KM\Ôn4«\è\î\í›‡‘Ù‡p}«\Ø4­N\ßW\Óã»·?+p\Êz£w¼¼Ef\î¶>\Ë+\Ì~³Iükñóÿ\02\íQ\\Ç®QE\0QE\0­j\Ð\è\Úl—ròG§÷Û°­\Zòo\ëgWÕ™\"l\ÚÛ’‘\ã£\íøÿ\0 +j½¤­\Ðóó,o\Õhó/‰\è¿\Ï\äc]\ÝM}w-\ÍÃ––F\ÜÆ¡¢ŠõÒ±ðÍ¶\î÷\n(¢Q@Q@R\0-f\r6þ\éw[\Ø\ÜÊ¿\ÞH‰ž*YtMV,úm\Ð©üªyâ®j¨Uj\ê.ÞüŠ4Pxb¤Ã‚QEQQE\0QE\0QE\0QE\0QE\0QE\0QE\0V\ï…õ\æ\Ñ5!\æm&\ÂÊ¾žøV¥%\Ê\ÍhÕ\ZŠ¤¨÷eeu¤2‘A\àŠuqž\×\rÍ±\Ò\ç\Þ\Â3=\Ó\Óðþ_J\ì\ëÆ©	8³\ïp¸ˆ\â)*±\ëù…QPtQ@×5\ì\ÍÁb\â\ë(¸\êøôük\Ë+g\Å:§ö®»4¨Ù†?\ÝEôÿ\0“X\Õ\ë\á\éòCÍŸ\ršb¾±ˆml´_×˜QE±\çQ@Q@\ârM*E3\È\ç\nª2I¯Eð\ïƒ\á\Ó\Â]\ê\n²\ÝõT\ê±ÿ\0‰÷ÿ\0õ\Ö5«ÆŠ»;pX\Z¸¹\Úu}\Í\è\Þ\r¾\Ô\Õf¸&\Ò\Øò‡°\íõ5\Üi¾Ò´µeyGüµ—\æoþ·áŠ½5\ÚE\ÇVôJK©_¾\Ñ\è+\å±ùõ:r\än\ï²ý¯‘ö˜,¢…x\Æ\ï»þ´þµ5r)¾bg†j’\Êb¶\É\êzU=\Ç9\Ï>µÁÍ–\Â.7oV¯±\èÂ—5\Çk^\Z°\ÖÐ¼‹\å\\\ã\å?¨¯3\Ö4«½\äE|˜\Î#˜}\Çö\Ïc\ìy¯Y´œ¿\Ê\ÝEMwgmi%­\Ü)4\r®Ž2¯w˜78»ÅžF?)£‰»\Ú]\×\êx¥\'‹ü9}\àÛ¡qh\Ïq¤J\ØMü˜÷IþF²­u‹kŒ+Ÿ)ýñù×¹N´j+£\ãñ8*¸y8\É\Z4QÖŠ\Ô\ä\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€,X^Ë§_\ÃwÄ‘0a\ï\ê?\Å{E•\ÜWöP\ÝBsªÂ¼>»ÿ\0‡Ú¦\è§\Ò\änS÷±g\Óø‡\çƒøš\ä\Å\Ó\æ2\è{™+\Ù\Öte´¿?ø\'sEWš}pV?‰õ¦h3+bW\\\ï7 \Éü+b¼û\â%ö\ë›[<\"™\\{ž\è\çZÐ‡=DŽÆ¿°\ÃJk}—«8Š(¢½ƒ\àÂŠ( Š( Ÿ2\ÜÎ@…\å\íUI¦W¢x/@v\ÃR¹Oô‰—÷`ÿ\0\ê•c^²¥fv\à0r\Å\ÖP[u}‘Ã¾\ZƒD„K(Y/X|òv_eÿ\0õ¡sw\ÉH\Ï\Ô\Ò\Þ\\\ã÷hy\îj…~}g\æti=z¿\Ñ¡\á0´\èÁF\n\ÉZ|I\æHaÖ™VS÷?yºW“•Ñ‹›\ÄTøa¯\ÏúýšNU\Ôe\Ã\î}£\î¯\rW\"¼«Õ•Iu.*\Ê\ÄöŸ\ë«WµgØ¦X±­\nûl®“§„„_o\ÏS’£¼™[Q°·\Õt\ë‹¤\èQ‡×¸÷k\æk\ËI4ýB\æ\Êoõ–ò´MõS\é_Q\×\Î\Þ;bñÞ®«À2†üJ‚{˜9{\Í6k\Éõ2mu›L\ß)ý\Æ\äVÕ®µo6_\Ý?¿OÎ¹û{i\î\îhdšg8X\ãR\Ì~€Wk¦ü)\×\ïQdºk{$#;dm\Ïù/­wºÊž\ìðV	\â>ý\ÃzK]§\Â{›Qòø‹oû\"\Ó+ú½Z‡º‚\Ý\ß\ÛH}YY3ü\é\ÇE\îÌªdØ¸\ê£»ü\ÎJŠÚºðŽ·h	6~rŽð°oÓ¯\éXÎ¯†9Q£q\Õ\\`Âº#Rø]\Î\n¸z´´©½P”QEQˆQE\0QE\0QE\0U\íPm/W¶¼\ÄoóU<\Ó5FŠM&¬Ê„\Ü$¥\Ñ\î\êÁ”0 ‚2\ïKX~¾7þ¶f9x‡’\ßðŸ¦+r¼YG–N,ýUVœj.ª\á^9\âKÏ·xŠöl\åD…\è¼\å^¹y8µ²ž\àôŠ6\Èf¼=‰f,NI9&»0Q\Õ\Èðx‚­£\n}\îÿ\0A(¢Š\ï>`(¢Š\0(¢ƒÀ \r\Ï\n\è\ß\Úú²ù‹›h0òúEü5\êˆb\'¿@++\Â\Ú`\Òô(T®&˜y²ù=\à0*k\ÉwË´tZù<ó1öT\å5¾\Ë×¿\ë÷}“`U\n)=Þ¯üˆ	$’zšJ(¯Î’”\åÝ³\Þ$…<\É\0\ì:\Ò\Îû\äÀû«À©\î-ÿ\0\Új­^\Æ>K\rB88ï¼¿¯ë¡œ=\ç\Ì`žSEX´‹Ì“q\è:W_…xš\ê=¯\Óþ	S—*¹z\Ú?. *z@01K_|••Ž0¯œ¼Jd\Õüy©%²™$–õ¡Œ\â \ìÊ½÷[\Õ\"\Ñt[\ÍJll·Œ¸ø›°üN\ã^QðŸF:Ž¹s­\\\Â\×\îüR¾rŸ\ÌW^ò)Mžn:>\ÖP¢º»üDð·…,|+¦…EW¼uýýÁ±\î¢ûVœ—\äœ \ã\ÔÔ·äˆ€	\æ³k\äó¬Î½:¾Ê›¶—lõ°ô!Y-	\Í\Ü\Çø‡\åJ/%ÁªôW‚³Zwö\ï:9#Ø¸·\ä}\åü©—–ºv±•yJ;0\Ëô=EV¢»ðùö*“\\þ÷\àþôgS	®V´9[À“B­6•):˜d 0ú‡ô®E•£‘£‘$S†V ûŠõ¸nž3‚r*¶·\áû?\Û\ï\â+µ$À~\ê?•}®Yž\ÓÄ«7þküýO˜\Ìr\Ù\Ï£\í\Ñúv<²Š’\ê\Úk\Ùl\îWdñ0þD{\ZŽ¾‰4\Õ\ÑòRŒ \Üd¬\ÐQEQE\0QE\0w_nþ{\Û\"x!eQúý–»\êò\Ü}Ÿ\Äö\Ã8YCF‘ú^±^^.6©~\ç\Ù\ä•yðŠ?\Ê\ÚýS\Åsy¿lõ@Ÿ÷\Ñú×W©xñöxe\×ûò¢ÿ\0_\é^[]85û¶ü\Ï>•ñ*=—ù…Q]gˆQE\0kL¶º­¥±\åe™U¾™\çôªµ­\á|\ÂO§ç§˜ôQQ\Ú\r®\Æ\Øh©Ö„^Í¯\Í±+‰ ¬rrI=kRó?gjÊ¯\Ìx†mÔ„:Zÿ\0‰ú…£aRAù9\è*:²so\âj\ä\Ê\éF.XªŸ??\ëó*£û+©\Òo“ŽƒQ\ÑNDijŠ\âQ­Œ®\ÚW”¿¯¸½\"\È\ÛG\ãZ\Ð\Ä#@Gmn\"_z±_i—\àc„§\Ë\Õ\î\ÎYÏ™‹E‘\â]~\ß\ÃzúÁ¨\Ûy\æG=üö½›vFR’Šr{wñw\Ä\"I-ü?nù\ÚD\×8=ÿ\0…¯\å]O\Ã%´ð=¬€a®d’Vÿ\0¾¶\ÑExe\Õ\Ôú…\ì÷·Nd¸Ë»\ä×½|8¹K\éûO1o‡¡¦\ã]µ¡\ÉEDòp•½¶*S}´:‡@ËƒY’AV­U¹¶\ßó/Zñ1\Ô\ëÊ\è=WF–¿y\íA«\êR\Ì\'±büDTl¥b’¾Ry…X\ÉÆ­8\ß\Î6:TFK\å¡\é%Nz85?^ þ:ù]#\è\É|‡ö©­’D“Úª\äŽô¢Gþuµv•ER4šk´¿\ÌNj\×1¾\"ø{ûSBmJ\Ð\Ô,TÈ¬^1\Ë)õ\ã‘\î=\ëÈ­5\æ\0-\Ên\ß^¿•}\rj\æXŠ¿ Œ÷¯™n’8¯®b„\æ$••ª‚q_¡eØ‡:w[hþóå³œ-7%6µg[\Ì7+ºzŽ\ãð©«‰Gh\Ø21V85«k®\Ë\á|\Åþð\àÿ\0õ\ë\ÔUS\æ\êa$µ†§CEAoy\Ò\æ)=\ÔðG\áSÖ—¹\Ê\ÓN\Ì(¢Š\\\Òfû>±e6~\ä\èO\Óp¯l¯V*Á‡Pr+\ÝUƒ¢°\èFkƒ\Zµ‹>Ÿ‡¥\îÔ§\êr¿Ž<?õ¹Qÿ\0Žµyzo\ÄŸD}.Tÿ\0\ã­^e[a?„pgŸ\ïo\Ñ~¡EWI\ã…Q@Mgtlo\í\î\Ôd\Ã\"¾=@=*\Z45ufTd\ã%%º=°4w6\Ë$l\Z92°\î\â²ä£b\rs>ñ0·)¤\ß>#\'ò1\èOðŸ\éùWxñ+ŽE|vm•F¿»\'f¶g\è¸tk\ÒU!ó]™™o’L\ãM™Œ’ƒŽ‚µRŒ`\n<¥\Îq\\o)Œ¨B‡5’\ÕÛ«:ý§¼Ù›«\Èy\àV„P,CR€\0â–»°\ØJXxò\ÓV\"Rr\ÜJZ*««{+Y.n¦H`Œny\à(®’[°·\Ú[Iqq\"\ÅjYÝŽÔšù÷Æž+—\ÅzÇ˜›’\Â­´g¸\î\Ç\Üþƒ{\Ç>;›\Äó+-ñiQ¶@<4\ä{z\ÄóÓŽ\0^Ž‡/½-\ÏöŸ»†ß˜µ\Û|8ñj\è\Z›X^É·O»aó\ÄRt\rô=\à{W;o\á­v\ê\ÜOo¤^\Éte…°~œr*½Æ©Úƒö6ò:ù2ÿ\01[\ÍBiÅ³Š“«FJ¢O\îgÓh¯ ð\Äab‘i:Ü¤ÛŒ,MÏ–;+³\è{}:z\ìr$±¬‘ºº0Ê²œ‚=A¯.¥9Svg\ÒP\ÄB´y¢2HAÈªrY0û¦´©+Ž¾uj‘L\èRq\Ø\Çh$^«L*\ÃøO\å[{A\íMò\Ôö¯.y¿uµó4U¤cmo\îŸÊžH\çH­å§¥(P:\nt²,4$¤\îýAÖ“3u;•\Ñô\ë\Ò@6ö\ï ú…8ýq_3Ç¼õ¯mø³¬­—†WMFýýô€\ÜF¤=£ñ5\â€`W\Õ\à\á\ËŸ9š\Ôæ¨¡\ØZ(¢»(U%H*H#¡¥k­\Ïaæ§©\á¿:Ì¢šmlL\á«Imµý½\ØýÜŸ7÷ƒV«ˆ\èr:Ö®³so…sæ§£:\ÑT\îq\Ô\Â5¬\ÓW¸Ùœ\ØÛŸX\×ùWZ\êv\×X\nû\\ÿ\0pkß­\Û8¤j?J\æ\Æ4\Ôl{e\ÔMvýLG¿\Ã·÷$Fýqýk\Ë+\Ø|QŸ\á›ô\Æqÿ\0û\ä\îþ•\ã\Õx7\î5\æsgÑ¶\"2\î¿&ÂŠ(®³\Ã\n(¢€\n(¢€”0ÁæºŸ\rxùl&K×¥\"3Å½\ët\Ç÷_\éý\ï\ÏÖ¹z­}h·¶\ÍcwU>†±¯F5cfv\àq³\Â\Ô\æŽ\Ïs\ÞU•\Ñ]2°\È \äN¯´?\ë¾s´þd\npm§};¯\àkº³ø\Ëfcn\Ò.#~þDŠ\àþx¯\"xY\Å\é©ö4³\Z3^ó³=>Šò›ßŒÃ•°Ñ˜ú=\Ä\Øÿ\0\Ç@þµ\Èj\Þ?ñ.²$¾û4\r\Ö+Q\åŒ}~ñü\éGQ\ï \êf4#³¹\ëþ#ñÖ‹\á´tšqqx8°_?\ív_\Çò5\âþ&ñv©â»€\×n\"´C˜\íc?\"ûŸ\ïsøb°‚\ÏSN®\ÚXx\Ã]\Ù\ä\âq\Õ+i²(žY(‘žG!UTd±=\0¯lðg\Ã\ËM\Z\ïµH\Ò\ãQ 0V\å ö»{þ^§žøSá¥ži5û¤\ÊB\Æ;`G¿‰¿ƒÜŸJô¹n\ËLŸ”Î¼\ì\Ç0… \Þ\î\ß×§S¿-Á\'k5\èO-\ê\Ç!\\GZ–)\ÖQk.c™XÓ­Ü¤£Þ¾f†mWë®…KrÝ¥\å\Ø÷5\Ét3Yðž‰¯B\ë{a˜Ã‰\ãP²)õ\Ü?®Eydú‡ˆ~k_\Ù\é?Ú´\çù\áIG\È\ëž\ß\Ýa\ß^k\ÛA\È¸ï‰š*\ê¾žu\\\ÜXþý}£ï¦ÜŸÀW\ÔÑ©¯,µLó1T}\×Rž’]ˆtOŠ:©¶;\Æm:s\Ús”\'\Ù\Çž+³·¹‚\î-´ñ\Í\èñ¸e?ˆ¯–x\"¦¶¹¹²“Í³¹š\ÞO\ïC!CùŠ\éž/\ágŸK5’Ò¢¹õ-ó½¯<Uf\0Y™\Çý6U“õ`M^_Š+Qƒsn\Üc&üø¬^gZ\Í(½\Ó=\ê°üA\â\Í#\Ãp3\ß]/Œ¥¼gtô¾§¼Fû\Ç>(\ÔU–m^dCü0™P\ë\\ùœ»±gc’\ÌrI«†\rý¦cW5­M}æ¯ˆüAu\â}jMF\è\Ù@\äFƒ ÷\îIõ5—E\Ý¢¬ss“”·aES (¢Š\0(¢Š\0tH\ÒL‘¯\Þf\0}M}X *…\0\Å|\Í\á›Sy\â*\ßu~›?¦k\éª\å\Ä=R=œª:J^„W0­Å¬°7Ý‘\n¡¯th\äda†RAõ\î\Õ\ãþ*³û‰/+¿š¿F\çù“Z`¥«‰\Ç\Ä¯T\ì\í÷ÿ\0\ÃôQEzË…Q@Q@Q@šÝ–GÚ£ŽZ\Ã\ÅvÌ¡Ô«© ÷®Nþ\Ì\Ù\Ý2\å¨¬jG©\èaj\Ýr2®(¢Š\Ì\ë\ntq¼Ò¤Q)i‚ªŽ¤ž\0¦\×Sð\êÁoüobe \Ý9\ê8ÿ\0Ç±S9rÅ³JPö“P\î{5…Œz‡\ìôØ±û˜\Â;·V?‰\Éüiƒ¨úÕ«\ç\Ý0‚ª÷¯\ÍsC«˜¤ö‹KñWüO·¥\ZvC\äûæš§>´\é>ù¦Ž£\ë\\sºÇ»?\êh¾‘³\Ìb¢½„\\X\\À\Ã\"H™úŒT‘«N\â;yð	?€¯¼G\Øù^3òŠ}2/»O¯lø\ç¸QE\ÄQE\0QE\0QE\0QE\0QE\0vlßŽ-\äÛ•¶ŠI›ò\Ú?V\ï•\å´\â \Ôõ6^–?O™¿š×ªWwyŸC—C–‚}õ\n\à¾\"Xsi¨(\ã˜\\þ«ÿ\0³W{Yšþý«¢\\Ú™\n\îý\á\Èÿ\0Æ•òM2³\n\ß\r(-÷^«SÆ¨£¡Á¢½ƒ\àBŠ( Š( Š( ©\ê6bòÔ¨ÿ\0X¼¡÷ô«”P\Õô*2qwGARA \àƒEl\ëv;\íQ•¸q\è}k\Z¹¤¬\ìz\Ô\æ§d\èc\r\â{\ÉU³`?_ð¯?¯Bø?\"_FO\ÌÖ„ôuÿ\0\ZÂ¿ð\ÙÛÿ\0x‡©\êG7\rP\Ô\×C\rP\×\å•\î±ò¿ó~¨ûUð“\ï\ÒF7H£Þ–O¿S\ÙGºMÝ‡J\í\Ã\á\Ý\\\Î]“oúù‘)Z™¢ƒ\ndø¦ðXxSU¹\'-dþñ©¯^wñ{V\Þ·\Ó¿yy(f\ì\'\'ÿ\0\Ûù\Zû:Q\æšG\"~Î”¥\äx\Êp´\ê@8¥¯dù&QE\0QE\0QE\0QE\0QE\0Q[žÑŽ½\â‹+&\\Ã¿Ì›ý\Å\äþ}?\ZM\Ù\\¨E\ÎJ+©\î>\ÒN\àý>\Ù\×ºy\Òz\î~p~€øWEGJ+\În\î\ç\Õ\Â\nQ]Š(¤Q\äþ1Ò¿³u\Ù\Üþõ=?x~\ÌW?^·\â½ûcFusq\ï\"õ\'¸üG\ëŠòNõ\ëaªs\Ã\Í›a~¯ˆm|2\Õ~«\ï\n(¢·<À¢Š(\0¢Š(\0¢Š(²F²\ÆÑ¸Ê°Á\È\ÞZµ¥\ËD\Ý:©õ\ØU\rV\Ë\ív\ÙQû\Ô\å}ýª\'££W’V{3—®ƒÁ\Zº\è¾.±¹•‚À\ìa”ž[ŒŸ`p\n\ç\è#\"¹¥$\Ó=jsp’’\è}1}\Ütªu\Äø\'\â-£YE¤\ë\Ód‰BCtÿ\0u\Ôt{\ë\Ð÷ç¯¢E½\Â,\ÐJ’\ÄÜ«#Sô\"¾/0\É\',O¶ƒ¶ªÿ\0+m÷a†\ÆB­?t‡\ì\ï#Ž\rhC‰\0\å@ \n$tŠ6’FTE³1ÀÔšô¨a¡E\ÊQZ\ÉÝŽRoq&š;xdšgTŠ5,\î\Ç@\êM|\é\â\ï7‰¼I=øÈ·_\Ý[©\í\éøžO\ã]\'\Ä\rkv¤\È³ÁýôÃ<Ž\ÃýŸ\çô\ëÀ^\Î\Z‹½-\Ï1Å©¿g\r´QEužPQE\0QE\0QE\0QE\0QE\0W³|\"\Ð~É¥O¬Ì˜–\ìùp\ç´jy?‹\è\"¼³\Ã\Ú,\Þ \×-´\Ø2<\Öù\ÜY¿_KZ\ÛCei\r­º†Š;\00+ž¼\ì¹OS-¡\Í7Q\ì¿2j(¢¹l(¢Š\0+\Ëük¡;Rûd+‹k’O…~\ãñ\ëùúW¨UMKOƒT°–\Î\àe$\Ïu=ˆ÷­\Z¾\ÎW\èp\æ5Š¢\á\Õj½\àž%E[Ô´\éô«ùm.‡ƒÙ‡b=ª¥{	¦®…”\\d\ã%f‚Š( ¢Š(\0¢Š(\0¢Š(Ö¬|™¾Ðƒ÷r}ÿ\0^²«³ž¸…¢eXb¹›w¶\â~ªzúZÂ¤l\îzXj¼\Ñ\å{¢«V\Z–¡¥¾ý>ú\âÕ‰\Éò¤*\ÔµZŠÍ¤÷:”œ]\Ó:xþ#ø¶(ö\rWw¡x#$~;k3Tñ6»­§—¨\ês\Í\ë\Â!úª€\re\ÑR©Á;¤k,EY+9?¼@\0\éKEf!EPEPEPEPEPE\Ûü8ð\×õO·^G:Õ`G¿P¿N\çð\êe%viJœª\ÍB;³»øa\ác£h\çSºL^Þ¨ \Ìqu\êzŸ\ÃÒ»\Ú(®	I\ÉÝŸOJ”iAB=Š(©4\n(¢€\n(¢€0|Q\á\ä\×,sy\ÌL‹ý“\í^O,O¯¨RD%YX`ƒ^\í\\§‹<,5X\Ííšzƒ\æQÿ\0-@\íõ®¼5~_r[o–ûe\í©/yn»ÿ\0Áü\Ï2¢••‘Š²•e8 Œi+\Ò>H(¢Š\0(¢Š\0(¢Š\0+3X±ûDj\Þ\Æ?1\éZtRj\ê\ÅBnRGEh\êö_e¸ó~\êNG±ô¬\ê\æj\ÎÇ¯	)\ÅIQAAEPEPEPEPEPE¥¡hw¾!\Ôã±±s·,\ç\îÆ½Ù¥&\í«b\ä\ì·,xc\Ãw~\'\Õ\Ò\Î\ØmŒa§˜Ž#O_¯ ¯¢´\Í6\×GÓ °³ŒG+µGs\êO©=j—†ü9e\á),­,~ie#æ‘½Oô«b¸ª\Ô\çzl}\n¨F\ï\âaEVG`QE\0QE\0QE\0QE\ËxŸ\ÂQ\êÁ®\ì\Â\Çz# —\ë\è}\ë\Ì\æ†[yž£h\äC†V ×º\Ö.½\á»Mr¸ò®”|“(\ç\è}Eu\ÐÄ¸{²\Øðó,¡V½Z:K·Gÿ\0ó<†Š¿ª\è÷º=Ï“w\Üý\×«cT+\ÑM5t|œ\á(I\Æj\ÍQL¢Š(\0¢Š(«tº·x_¡C\ë\\Œ\Ñ<´N0\Êpk´¬j\ËÍ‹\í1\Í\î?úÕH\Ý\\\ê\ÃU\å—+ÙœýQXžˆQE\0QE\0QE\0QE\0QEv~øy\â6K« Öšns\æóH?\Ø\Ôñõ©””U\Ùt\éN¤¹`®\ÌOxgPñ> -l£\Â.³0ù#§\ß\Ðw¯~ðß†¬<1¦‹K$\Ë6³0ù¥oS\í\è;U\Í/I²\Ñl\ËO·X`NÃ©>¤÷>õv¸\êUsÓ¡\ï\ápq ®õQE‘\ÚQE\0QE\0QE\0QE\0QE\0QE\0Awgo}n\Ð]B’\Ä\ÝU‡ùÁ®[ðö\å§\ÒÉš.¦?:ý\çõ¯E¢µ§ZTßºq\âð4qJ\Õ½úž\èñ;$ˆ\È\êpU†4\Úö}OC\Óõt\ÅÝº³\ãAÃÆ¸}WÀ7–\ÄÉ§H.cþ\ãa\\Cú}+¾ž*\Ñ\èÏ™\Åd\Õ\è\ëyyo÷‘\ÈQR\\[Ok)Š\âŠA\Õ]H?­G]\'\ÓN\Ì(¢ŠF\rP+©\Ù;“´~\éù_oj¥]u\í¢\Þ[4G†\ê§\Ð\×&\èÑ»#Œ2œXN6g©‡«\Ï=\Ð\Ú(¢ \Ü(¢Š\0(¢µ4jú\ì›t\ë	§Á ú±\àRm-\Ç¹;%s.¯\é:.£®]‹m:\ÖI\ä\ï´p£Ôž€}k\Ô<?ð†\Þ“\ë·>{õû<ª«u?†+\Ò,¬-4\ëe·²¶Š\Þè‘¨QXNº_	\éP\Ëg-jh¿„ð¯\Â\Û,¥Þ²Rö\ìr\"÷H~‡\ï¯\Õ\è@\0€:\nZ+šRrwg¯JŒ)G–\nÁETš…Q@Q@Q@Q@Q@Q@Q@Q@Q@\\\Ù\Û^\Ç\å\Ý[\Ç2zH \×7}\à.ä–¶ymXöS¹#\Ï\ë]]q©8|,ç­…£_ø‘Oú\îy\ß\ÃýR›i`¸^\Ã;þÖ±®<=¬Z\ç\ÍÓ®0:•M\Ãó¯e¢º#Œš\ßSÌ«\á\åð6¿\Ìð—G¶º²ŸB1M¯vx\ÒE\Ú\è¬=fª¾‘¦\É÷ôûFÿ\0z?Ò´X\Õ\Ö\'¸z_f§\áÿ\0ñ:\Å\Ö\ìwµF98Î¾€ÿ\0„Gÿ\0 e§ýú£@\Ñ\Æ\âWfs\Ç0©þ”K­`§‘V„¹”\×\â|\ÃS\ÛX\Ý\Þ6\Û[Y\ç>‘F[ùW\ÓP\è\Ú]¹6\Î2:lGòt\0\0\0`Õ“\ÄvG|r¯\æ—\à|\ïcðÿ\0\Å\äl\Òe‰OñNDxü\çô®£Mø7x\ä6§©\Ã\n÷Kt.3Œ~F½†Š\Í×“\Ø\è†[F;Ýœ–“ð\ß\ÃZQö3y(þ;³¿ÿ\0\áJ\ê\Ñ(\Õ#EDQ€ª0\0§QY97¹\Û\np‚´‚Š(¤XQE\0QE\0QE\0QE\0QEÿ\Ù','2022-06-21 00:27:25','2022-06-20 17:27:25');
/*!40000 ALTER TABLE `tblinsecticide` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-08 20:48:48

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
INSERT INTO `tblinsecticide` VALUES (1503,'DSF','deswfdas','deswfdas',_binary '�\��\�\0JFIF\0\0\0\0\0\0�\�\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342�\�\0C			\r\r2!!22222222222222222222222222222222222222222222222222��\0,,\"\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\������������\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R�br\�\n$4\�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����������\�\0\0\0?\0��(��\n(��\n(��\n(��\n(��\n(��\n+;P\�t\�/\"\�\�4�\�>f��5\�_|EE%l,�z<͏�t�i\n3�\�㯏\�\�Ҥ\��n�\0��fTR\�B�ԓ��[�\�wyk�T�\0*�_ֱ湸�m\�\�,�\�\�[�\�LpR{�˫\���\�߮�\�{$\�ޕ�\�F\�O��	�����A�����\�c��y��C�9%\��\���\�ύ�\�\����_\Z\��\�_�/�\��U}N�vg���\�\��g�G\�S�\�1��_\�*�\Z��\�\�yI쒩?μF����Fk ��(\'���Ex���fGٯg�\�!�\�[�~;\�-\���W����\�+)`\�w;ig�%�H����Er6?Ӯ0�qKj޿}1\�\�]=�\���^m�\�s\'�08�\0\n\�9\�\�G�CB��\�\��\�E@QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QTu=^\�H��%\�A\�1�\�:ߌ��B\�[�kjxڇ\�a\���kjT\'Sm�fcG\n�\'yv_ևk���L\�wF\��YDs�\�z\�\\6�\�WR\�,�e��\0\'�[�s�W�O\ry�\��Y�#��We�{�$�I\�(�\�0(��\0(��\0(��\0(��\0(��\0*H.g��Ko4�H:21��\�i�\�\�J��ݾ\���\�}<\��\\C�Wq�\�\Z�[\�\�\�2~��Z��ym�Y`�\�NC!�\�S	k\�\�3��}ڞ��~�\0�=Ҋ\�/���2:��\�~U\�E4sĲ\�\"\��)\�\"����M\�G\�aq�q1\��]P�(��:��(��(��(��(��(��(�����\r 5��ٯz�1�}��;\�^1�9{\r1��\�\�8�e��\�����ĒI$\�]�0\���|�e�{;\�ýz�ޞd���:�\�\\]J\�\�\�Y���W���G\�\�NN\�݅Q@��(��(��(��(��(��(��(��(���O^\�s~\�\�rr�1�O\�\��\�E�%fiN�\�IN\�Ѥk6zկ�j���}\�>\�+\�,5�2\�.m%1ȿ��w\����m��\�~�,��\�W�_\�\�>�-\�c��\�M\'����EW1\�Q@Q@Q@Q@q0�Q�~���\�:M*���\�����W�_\�O\�o�Z��l���\0�k\����/$�I9\'�5ۆ�~G\�g������_o/�\n(��傊(��(��(��(��(��(��(��(��(��(��(�����\�\�;�ir\�r�?\�J��\Z�\�M\�\�nz�\0���5\�-\�	q��Q\�kf�KM\�n4�\�\�\���هp}�\�4�N\�W\�㻷?+p\�z�w��Ef\�>\�+\�~�I�k���\02\�Q\\ǮQE\0QE\0��j\�\�\�l�r�G��۰�\Z�o\�gWՙ\"l\�ے�\�\���\0 +j���\���,o\�h�/�\�\�\�c]\�M}w-\�Ö�F\�ơ���ұ�Ͷ\��\n(��Q@Q@R\0-f\r6�\�w[\�\�ʿ\�H��*YtMV,�m\����y❮j�Uj\�.ޏ��4Pxb�ÂQEQ�QE\0QE\0QE\0QE\0QE\0QE\0QE\0V\��\�\�5!\�m&\�ʾ���V�%\�\�h՝\Z����eeu�2��A\��uq�\�\rͱ\�\�\�\�3=\�\���_J\�\�Ʃ	8�\�p��\�)*�\���QPtQ@׍5�\�\��b\�\�(�\�����k\�+g\�:����4�ن?\�E��\0�X\�\�\�\��C͟\r�b���ml�_טQE�\�Q@Q@\�rM*E3\�\�\n�2I�E�\�\�\�\�]\�\n�\��T\��\0���\0�\�5�Ɗ�;pX\Z��\�u}\�\�\�\r�\�\�f�&\�\�����\��5\�i�Ҵ�eyG���\�o��ኽ5\�E\�V�JK�_�\�\�+\���:r\�n\������,��x\�\�����5r)�bg�j�\�b�\�\�zU=\�9\�>���͖\�.7oV��\�5\�k^\Z�\�м�\�\\\�\�?���3\�4��\�E|��\�#�}\��\�c\�y�Y���\�\�EMwgmi%�\�)4\r��2�w�78�ŞF?)���\�]\�\�x�\'��9}\�ۡqh\�q�J\�M����I�F��u�k�+�)���׹N�j+�\��8*�y8\�\Z4Q֊\�\�\n(��\n(��\n(��\n(��\n(��\n(��,X^˧_\�wđ0a\�\�?\�{E�\�W�P\�Bs�¼>��\0�ڦ\�\�\�nS��g\���\���\�\�\�\�2\�{�+\�\�te��?�\'sEW�}pV?���h3+bW\\\�7�\��+b��\�%�\�[<\"�\\{�\�\�ZЇ=D�ƿ�\�Jk}��8�(���\�(��(��2\�ΐ@�\�\�UI�W�x/@v\�R�O��`�\0\��c^��fv\�0r\�\�P[u}�þ\Z�D�K(Y/X|�v_e�\0��sw\�H\�\�\�\�\\\��hy\�j�~}�g\�ti=z�\��\�0�\��F\n\�Z|I\�Ha֙VS�?y�W��ы�\�T�a�\�����NU\�e\�\�}�\�\rW\"��ՕIu.*\�\���\�W�gئX��\n�l�����_o\�S����[Q��\�t\��\�Q�׸�k\�k\�I4�B\�\�o���M�S�\�_Q\�\�\�;�b�ޮ��2��J��{�9{\�6k\��2mu�L\�)�\�\�Vծ�o6_\�?�Oι�{i\�\�hd�g8X\�R\�~�Wk��)\�\�Qd�k{$#;dm\��/�w�ʞ\��V	\�>�\�zK]�\�{�Q���o�\"\�+��Z����\�\�\�H}YY3�\�\�E\�̪dظ\���\�J�ں���h	6~r��oӯ\�Xί�9Q�q\�\\`�º#R�]\�\n�z����P�QEQ�QE\0QE\0QE\0U\�Pm/W��\�o�U<\�5F�M&�ʄ\�$�\�\�\���0 �2\�KX~�7��f9x��\����+r�YG�N,��UV�j.�\�^9\�KϷx��l\�D�\�\�^�y8���\��6\�f�=�f,NI9&�0Q\�\��x���\n}\��\0A(��\�>`(��\0(����\r\�\n\�\�\������h0��E��5\��b\'�@++\�\�`\��(T�&�y��=\�0*k\�w˴tZ�<�1�T\�5�\�׿\��}�`U\n)=ޯ��	$�z�J(�Β�\�ݳ\�$�<\�\0\�:\�\��\������\�-�\0\�j�^\�>K\rB88＿�로=\�\�`�SEX��̓q\�:W_�x�\�=�\��	S�*�z\�?. *z@01K_|���0���Jd\��y�%��$����\� \�ʽ�[\�\"\�t[\�Jll�������N\�^Q�F:��s�\\�\�\�\��R�r�\�W^�)M�n:>\�P�����D�,|+��EW�u����\���V��\� \�\�Է䈀	\�k\��ν:�ʛ��l���!Y-	\�\�\���\�J/%���W��Zw��\�:9#ظ�\�}\������v��yJ;0\��=EV�����*�\\��\���gS	�V�9�[��B�6�)�:�d 0����E�����$S�V ����n�3�r*��\��?\�\�\�+�$�~�\�?�}�Y�\�ī7�k��O�\�r\�\��\�\��v<���\�\�k\�l\�Wd�0�D{\Z���4\�\��R��\�d�\�QEQE\0QE\0w_n�{\�\"x!eQ����\��\�}�\��\�8YCF���^�^^.6�~\�\�\�y��?\�\��S\�sy�l�@��\��אW�x��xe\����\0_\�^[]85���\�>��*=���Q]g�QE\0kL�����\�e�U��\�����\�|\�O�秘�QQ\�\r�\�\�h�ք^ͯ\��+����rrI=kR�?gjʯ\�x�mԄ:Z�\0����aRA�9\�*:�so�\�j\�\�\�F.X��??\��*��+�\�o����Q\�NDij�\�Q���\�W�����\"�\�\�G\�Z\�\�#@Gmn\"_z�_i�\�c��\�\�\�\�Yϙ�E�\�]~\�\�z����\�y\�G=����vFR��r{w�w\�\"I-�?n�\�D\�8=�\0��\�]O\�%��=��a�d�V�\0���\�Exe\�\���\���Nd��˻\�׽|8�K�\��O1o����\�]��\�ED�p���*S}�:�@˃Y�A�V�U��\��/Z�1\�\�ʝ\�=WF��y\�A�\�R\�\'�b�DTl�b��Ry�X\�ƭ8\�\�6:TFK\�\�%Nz85?^��:�]#\�\�|�����D�ڪ\���G�u�v�ER4�k��\�Nj\�1�\"�{�SBmJ\�\�,TȬ�^1\�)�\�\�=\�ȭ5\�\0-\�n\�^��}\rj\�X�� ����n�8��b�\�$����q_�e؇:w[h��峜-7%6�g[\�7+�z�\�𩫉Gh\�21V85�k�\�\�|\���\��\0�\�\�US\�\�a$���CEAoy\�\�)=\��G\�S֗�\�\�N\�(��\\\�f�>�e6~\�\�O\�p�l�V*��Pr+\�U���\�Fk�\Z��>���\�ԏ�\�r��<?��Q�\0��y�zo\��D}.T�\0\�^e[a?�pg�\�o\�~�EWI\�Q@Mgtlo\�\�\�d\�\"�=@=*\Z45ufTd\�%%�=�4w6\�$l\Z92�\�\�䍣b\rs>�0�)�\�>#\'�1\�O�\��Wx�+�E|vm�F��\'f�g\�tk\�U!�]��o�L\�M�������R�`\n<�\�q\\o)��B�5�\�۫:���ٛ�\�y\�V�P,C�R�\0▻�\�JXx�\�V\"Rr\�JZ*��{+Y.n�H`�ny\�(��[��\�[Iqq\"\�jYݎ�Ԛ��ƞ+�\�zǘ��\���g�\�\�\���{\�>;�\��+-�iQ�@<4\�{z\��ӎ\0^��/�-\������ߘ�\�|8�j\�\Z�X^ɷO�a�\�Rt\r�=\�{W;o\�v\�\�Oo�^\�te��~�r*�Ə�ڃ��6�:��2�\01[\�Bių���FJ�O\�gӝh� �\�ab�i:ܤی,Mϖ;+�\�{}:z\�r$�����0ʲ��=A�.�9Svg\�P\�B�y�2HAȪrY0����+���uj�L\�Rq\�\�h$^�L*\��O\�[{A\�M�\���.y�u��4U�cmo\�ʞ�H\�H�姥(P:\nt�,4$�\��A֓3u;�\��\�\�@6�\� ��8�q_3ǝ���m������WMF���\�F�=��5\�`W\�\�\�\��9�\�模\�Z(��(U%H*H#��k�\�a槩\�:̢�mlL\��Im���\��ܟ7��V��\�r:֍��so�s槣:\�T\�q\�\�5�\�W�ٜ\�۟X\��W�Z\�v\�X\n�\\�\0pk߭\�8�j?J\�\�4\�l{e\�Mv�LG�\���$F�q�k\�+\�|Q�\��\�q�\0�\�\���\�\�x7\�5\�sgѶ\"2\�&(��\�\n(��\n(���0�溟\rx�l&�Kץ\"3Ž\�t\��_\��\�\�ֹz�}h��\�cwU>���F5cfv\�q�\�\�\�\�s\�U�\�]2�\� \�N���?\�s��d\npm��};�\�k���\�fcn\�.#~�D�\��x�\"xY\�\��4�\Z3^�=>��ߌÕ�ј�=\�\��\0\�@��\�j\�?�.�$��4\r\�+Q\�}~��\�GQ\�\�f4#��\��#�֋\�t�qqx8��_?\�v_\��5\��&�v�⻀\�n\"�C�\�c?\"��\�s�b���\�SN�\�Xx\�]\�\�\�q\�+i�(�Y(��G!UTd�=\0�l�g\�\�M\Z\�H\�\�Q 0V\� ��{�^���Sᥞi5��\�B\�;`G����ܟJ��n\�L��μ\�\�0��\�\�\�קS�-�\'k5\�O-\�\�!\\GZ�)\�Q�k.c�Xӭܤ�޾f�mW뮅Krݥ\�\��5\�t3Y𞉯B\�{a�É\�P�)�\�?�Eyd���~k_\�\�?ڴ\��\�IG\�\�\�\�a\�^k\�A\��*\��u\\\�X��}�ܟ�W\�ѩ�,�L�1T}\�R��]�tO�:��;\�m:s\�s�\'\�\��+����\�-��\�\��e?���x\"������ͳ��\�O\�C!C��\�/\�g�K5�Ң��-󽯏<Uf\0�Y�\��6U��`M^_�+Q�sn\�c&���^gZ\�(�\�=\��A\�\�#\�p3\�]/����gt�����F�\�>(\�U�m^dC�0�P\�\\����gc�\�rI��\r��cW5��M}毈�Au\�}jMF\�\�@\�F���\�I�5�E\����ss���aES (��\0(��\0tH\�L��\�f\0}M}X�*�\0\�|\�\�Sy\�*\�u~��?�k\�\�\�=R=��:J^�W0�Ŭ�7ݑ\n��th\�da�RA�\�\�\��*���/+���F\���Z`���\�\��T\�\���\0\��QEz˅Q@Q@Q@�ݖGڣ�Z\�\�v̡ԫ� ��N�\�\�\�2\���jG�\�aj\�r2�(��\�\�\ntq�ҤQ)i�����\0�\�S�\��o�obe \�9\�8�\0ǱS9rųJP��P\�{5��z�\��ر��\�;�V?�\��i���ի\�\�0����\�sC�����K�W�O��\ZvC\��暧>�\�>����\�\\s�ǻ?\�h���\�b���\\X\\�\�\"H���T��N\�;y�	?���G\��^3�}2/�O�l�\�QE\�QE\0QE\0QE\0QE\0QE\0vl�ߎ-\�ە��I��\�?V\�\��\� \��6^�?O���תWwy�C�C��}�\n\�\"Xsi�(\�\\���\0�W{Y������\\ځ�\n\��\�\��\0ƕ�M2�\n\�\r(-�^�Sƨ������\�B�(��(��(��\�6b�Ԩ�\0X������P\��*2qwGARA \��El\�v;\�Q���q\�}k\Z���\�z\�\�d\�c\r\�{\�U�`?_�?�B�?\"�_FO\�ք��u�\0\Z¿�\�ہ�\0x��\�G7\rP\�\�C\rP\�\�\���~��U��\�\�F7H�ޖO�S\�G�M݇J\�\�\�\�\\\�]�o���)Z���\nd���XxSU�\'-d����^w�{V\��\��yy(f\�\'\'�\0\��\Z�:Q\�G\"~Δ�\�x\�p�\�@8��d�&QE\0QE\0QE\0QE\0QE\0Q[�ю�\�+&\\ÿ̛�\�\��}?\ZM\�\\�E\�J+�\�>\�N�\��>\�\��y\�z\�~p~���WEGJ+\�n\�\�\�\�\nQ]�(�Q\��1ҿ�u\�\���=?x~\�W?^�\��cFu�sq\�\"�\'��G\��N�\�a�s\�\��a~��m|2\�~�\�\n(��<���(\0��(\0��(�F�\�Ѹʰ�\�\�Z��\�D\�:��\�U\rV\�\�v\�Q�\�\�}��\'��W�V{3����\Z�\�.�����\�a���[��`p\n\�\�#\"��$\�=jsp��\�}1}\�t�u\��\'\�-�YE�\�\�d�BCt�\0u\�t{\�\��篢E�\�,\�J�\�ܫ#S�\"�/0\�\',O�����\0+m�a�\�B�?t�\�\�#�\rhC�\0\�@�\n$t�6�FTE�1�Ԛ��a�E\�QZ\�ݎRoq&�;xd�gT�5,\�\�@\�M|\�\�\�7��I=�ȷ_\�[�\�\���O\�]\'\�\rkv��\�����Ï<�\���\��\���^\�\Z���-\�1ũ�g\r��QEu�PQE\0QE\0QE\0QE\0QE\0W�|\"\�~ɥO�̘�\��p\�jy?�\�\"��\�\�,\� \�-�\�2<\��\�Y�_KZ\�Cei\r����;\00+��\�OS-�\�7Q\�2j(��l(��\0+\��k��;R�d+�k�O�~\��\���W�UMKO�T��\�\�e$\�u=���\Z�\�W\�p\�5��\�\�j�\��%E[Դ\����m.��هb=��{	�����\\d\�%f��(����(\0��(\0��(�֬|��Ѓ�r}��\0^��������eXb��w��\�~�z��Z¤l\�zXj�\�\�{��V\Z�����>�\�Չ\��*\��Z�ͤ�:��]\�:x�#��(�\rWw�x#$~;k3T�6�����\�s\�\�\�!���\re\�R��;�k,EY+9?�@\0\�KEf!EPEPEPEPEPE\��8��\��O�^G�:Ձ`G�P�N\��\�e%viJ��\�B;���a\�c�h\�S�L^ި \�qu\�z�\�һ\�(�	I\�ݟOJ�iAB=�(�4\n(��\n(��0|Q\�\�\�,sy\�L���\�^O,O��RD%YX`�^\�\\��<,5X\�횁z�\�Q�\0-@\����5~_r[o��e\��/yn��\0��\�2�������e8 �i+\�>H(��\0(��\0(��\0+3X��Dj\�\�?1\�ZtRj\�\�BnRGEh\��_e��~\�NG���\�\�j\�ǯ	)\�IQAAEPEPEPEPEPE��hw�!\�㱱�s�,\�\�ƽُ�&\��b\�\�,xc\�w~\'\�\�\�\�m�a���#O_�����\�6\�GӠ���G+�Gs\�O�=j���9e\�),�,~ie#摽O��b��\�\�zl}\n�F\�\�aEVG`QE\0QE\0QE\0QE\�x�\�Q\���\�\�\�z#��\�\�}\�\�\�[y��h\�C�V ׺\�.�\�Mr��|�(\�\�}Eu\�ĸ{�\���,�V�Z:K�G�\0�<����\���=ϓw\��\���cT+\�M5t|�\�(I\�j\�QL���(\0��(�t��x_�C\�\\�\�<�N0\�pk���j\�͋\�1��\�\�?�՝H\�\\\�\�U\�+ٜ�QX��QE\0QE\0QE\0QE\0QEv~�y\�6K��֚ns\��H?\�\������U\�t\�N��`�\�OxgP�>�-l�\�.�0�#�\�\�w�~�߆�<1��K$\�6�0��oS\�\�;U\�/I�\�l\�O�X`Né>��>�v�\�Usӡ\�\�pq����QE�\�QE\0QE\0QE\0QE\0QE\0QE\0Awgo}n\�]B�\�\�U����[��\�\�ɚ.�?:�\���E���ZTߺq\��4qJ\����\��;$�\�\�pU�4\��}OC\��t\�ݺ�\�AÏƸ}W�7�\�ɧH.c�\�a\\C�}+��*\�\�ϙ\�d\�\�\�yyo��\�QR\\[Ok)�\��A\�]H?�G]\'�\�N\�(��F\rP+�\�;��~\��_oj�]u\��\�[4G�\�\�\�&\�ѻ#�2�XN6g���\�=\�\�(��\�(��\0(��4�j�\�t\�	��� ��\�Rm-\��;%s.�\�:.��]�m:\�I\�\�p�Ԟ�}k\�<?��\��\�>{��<��u?�+\�,�-4\�e����\�葨QXN�_	\�P\�g-jh���\�\�,�޲R�\�r\"�H~�\��\�\�@\0�:\nZ+�Rrwg�J�)G�\n�ET��Q@Q@Q@Q@Q@Q@Q@Q@Q@\\\�\�^\�\�\�[\�2zH�\�7}\�.䖶ymX�S�#\�\�]]q�8|,筅�_��O�\�y�\�\��R�i`�^\�;��ֱ�<=�Z\�\�Ӯ0:�M\���e��#��\�S̫�\�\��6�\��G�����B1M�vx\�E\�\�=f����\����F�\0z?ҴX\�\�\'�z_f�\��\0�:\�\�\�w�F98ξ��\0�G�\0�e����@\�\�\�Wfs\�0���K�`��V���\�\�|\�S\�X\�\�6\�[Y\�>�F[�W\�P\�\�]�6\�2:l�G�t\0\0\0`Փ\�vG|r�\�\�|\�c��\0\�\�l\�e�O�NDx�\����M�7x\�6��\�\n�Kt.3�~F���\�ד\�\�[F;ݜ���\�\�ZQ�3y(�;���\0\�J\�\�(\�#EDQ��0\0�QY97�\�\np����(�XQE\0QE\0QE\0QE\0QE�\�','2022-06-21 00:27:25','2022-06-20 17:27:25');
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
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: db.itwillbs.dev    Database: class1_202407013
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `buylist`
--

DROP TABLE IF EXISTS `buylist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buylist` (
  `buy_num` int NOT NULL,
  `buymem_name` varchar(100) DEFAULT NULL,
  `prod_title` varchar(100) DEFAULT NULL,
  `prod_pic` varchar(500) DEFAULT NULL,
  `prod_price` int DEFAULT NULL,
  `buy_date` timestamp NULL DEFAULT NULL,
  `prod_seller` varchar(50) DEFAULT NULL,
  `rev_result` varchar(45) NOT NULL,
  PRIMARY KEY (`buy_num`),
  CONSTRAINT `buylist_ibfk_1` FOREIGN KEY (`buy_num`) REFERENCES `product` (`product_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buylist`
--

LOCK TABLES `buylist` WRITE;
/*!40000 ALTER TABLE `buylist` DISABLE KEYS */;
INSERT INTO `buylist` VALUES (2302001,'admin','코트 팔아요!','coat1.jpg|coat2.jpg|coat3.jpg',20000,'2023-03-13 15:00:00','spring','Y'),(2302002,'admin','대기과학개론','book1.jpg|book2.jpg|book3.jpg|book4.jpg',1000,'2023-03-12 15:00:00','spring','N'),(2302003,'spring','튜브 물놀이 필수품','tube2.png',5000,'2023-03-13 15:00:00','admin','Y'),(2302005,'spring','굴러가는 자전거','bike.jpg',50000,'2023-03-13 15:00:00','Good001','N');
/*!40000 ALTER TABLE `buylist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `product_cate` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES ('여성의류'),('남성의류'),('신발/가방'),('생활용품'),('뷰티/미용'),('도서/티켓'),('디지털/가전'),('스포츠/레저'),('취미/게임/음반'),('기타');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat` (
  `room_id` varchar(100) NOT NULL,
  `product_num` int DEFAULT NULL,
  `buyer_id` varchar(30) DEFAULT NULL,
  `seller_id` varchar(30) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES ('4ef4f91c-bc64-4af2-af97-a1f8ecd32d62',2302008,'spring','spring','2023-03-17 02:30:48'),('581f0e53-a2e0-4613-a9c3-69171917db83',2302011,'spring','summer15','2023-03-17 02:59:54'),('cf6109b0-c0ff-4574-839a-5710a759b817',2302008,'summer15','spring','2023-03-17 02:32:07');
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cs_comment`
--

DROP TABLE IF EXISTS `cs_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cs_comment` (
  `cs_num` int NOT NULL,
  `cs_com_num1` int NOT NULL,
  `cs_com_num2` int NOT NULL,
  `mem_id` varchar(30) NOT NULL,
  `mem_nname` varchar(30) NOT NULL,
  `cs_com_file0` longtext,
  `cs_com_file1` longtext,
  `cs_com_file2` longtext,
  `cs_com_content` varchar(1500) NOT NULL,
  `cs_com_date` varchar(30) NOT NULL,
  PRIMARY KEY (`cs_num`,`cs_com_num1`,`cs_com_num2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cs_comment`
--

LOCK TABLES `cs_comment` WRITE;
/*!40000 ALTER TABLE `cs_comment` DISABLE KEYS */;
INSERT INTO `cs_comment` VALUES (1,1,0,'admin','자리관','9bb6ad11-aaad-48fe-9c8b-c6d6ee84a7ef高사용자설정 방법 안내문.show','','','안내문 확인 부탁드립니다','2023.03.15 11:44'),(1,1,1,'spring','봄바람 휘날리며','','','','감사합니다 해결했습니다 ?','2023.03.15 11:47'),(1,3,0,'Good001','멋지다 연진아','','','','저도 알려주세요','2023.03.15 11:55'),(1,3,1,'admin','자리관','7b909bd4-1150-4f29-ac50-579127abeef7高사용자설정 방법 안내문.show','','','참고 부탁드립니다','2023.03.15 11:56'),(1,5,0,'spring','봄바람 휘날리며','','','','테스트입니다','2023.03.16 09:51'),(2,1,0,'admin','자리관','','','','asdfasd','2023.03.17 10:22'),(2,1,1,'admin','자리관','','','','asdfasdfasdfdasfadsf','2023.03.17 10:22'),(2,2,0,'admin','자리관','','','','asdfafsd','2023.03.17 10:22'),(2,2,1,'admin','자리관','','','','asdfasdf','2023.03.17 10:22'),(2,5,0,'admin','자리관','','','','sdfsds','2023.03.17 10:23'),(2,6,0,'admin','자리관','1bfb2fdd-720e-4dd2-ab0c-182aab848230高공장장병2.jpg','','','dfsfdf','2023.03.17 10:23'),(13,1,0,'admin','자리관','64f4a2ec-d4c8-4f00-add9-e3aa91e93047高안내문.txt','','','test','2023.03.17 11:29'),(13,1,1,'admin','자리관','','','','답글','2023.03.17 11:29');
/*!40000 ALTER TABLE `cs_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerservice`
--

DROP TABLE IF EXISTS `customerservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerservice` (
  `cs_num` int NOT NULL,
  `mem_id` varchar(30) NOT NULL,
  `mem_nname` varchar(30) NOT NULL,
  `cs_category` varchar(10) NOT NULL,
  `cs_process` varchar(5) NOT NULL,
  `cs_file0` longtext,
  `cs_file1` longtext,
  `cs_file2` longtext,
  `cs_sub` varchar(50) NOT NULL,
  `cs_content` varchar(1500) DEFAULT NULL,
  `cs_secret` varchar(1) NOT NULL,
  `cs_date` varchar(30) NOT NULL,
  `cs_readcount` int NOT NULL,
  PRIMARY KEY (`cs_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerservice`
--

LOCK TABLES `customerservice` WRITE;
/*!40000 ALTER TABLE `customerservice` DISABLE KEYS */;
INSERT INTO `customerservice` VALUES (1,'spring','봄바람 휘날리며','계정관리','처리중','','','','집주소변경','이사를 해서 집주소를 변경 할려고하는데 어디서 설정하나요?','N','2023.03.11 15:53',21),(2,'spring','봄바람 휘날리며','게시글','처리중','064326e0-adb5-4edf-b7a1-b936de14f09b高선크림.png','','','상품을 받았는데....','구매 했는데 집 가서 보니 유통기한이 지났어여... 판매자와 연락이 안 돼여...','N','2023.03.11 16:02',47),(3,'summer15','여름이 좋아','계정관리','처리중',NULL,NULL,NULL,'계정에 관해 문의드립니다','이름 변경 가능한가요 개명했습니다.','N','2023.03.15 16:02',1),(4,'summer15','여름이 좋아','게시글','처리중',NULL,NULL,NULL,'게시글수정문의드립니다','게시글 수정이 안돼요','Y','2023.03.15 16:02',1),(5,'Good001','멋지다 연진아','결제환불','처리중',NULL,NULL,NULL,'결제오류','결제 계속 오류나여','N','2023.03.15 16:02',1),(6,'spring','봄바람 휘날리며','계정관리','처리중',NULL,NULL,NULL,'로그인 문제','로그인시 팅겨요','N','2023.03.15 16:02',1),(7,'summer15','여름이 좋아','결제환불','처리중',NULL,NULL,NULL,'결제실패시 해결방법','결제가 됬는데 거래내역에 없어여','Y','2023.03.15 16:02',1),(8,'Good001','멋지다 연진아','게시글','처리중',NULL,NULL,NULL,'사용자 신고방법문의','사기치는거 같은데.... 신고할방법 있나여','N','2023.03.15 16:02',1),(9,'spring','봄바람 휘날리며','계정관리','처리중',NULL,NULL,NULL,'비밀번호 설정문제','특수문자 넣고 싶은데 안되나요?','N','2023.03.15 16:02',1),(10,'summer15','여름이 좋아','게시글','처리중',NULL,NULL,NULL,'결제방법 문의','애플페이로 결재하고싶은데 언제쯤 가능한가요?','Y','2023.03.15 16:02',2),(11,'spring','봄바람 휘날리며','결제환불','처리중',NULL,NULL,NULL,'환불지연','일주일째 지연중.........','N','2023.03.15 16:02',1),(12,'spring','봄바람 휘날리며','계정관리','처리중',NULL,NULL,NULL,'문의드립니다','닉네임 변경하고싶어여.. 어떻게 하나여','Y','2023.03.15 16:02',1),(13,'Good001','멋지다 연진아','게시글','처리완료',NULL,NULL,NULL,'사용자 온도 문의','상품거래 했는데 온도가 그대로에용...','N','2023.03.15 16:02',11);
/*!40000 ALTER TABLE `customerservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `freeboard`
--

DROP TABLE IF EXISTS `freeboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `freeboard` (
  `freeboard_num` int NOT NULL,
  `member_id` varchar(30) DEFAULT NULL,
  `subject` varchar(20) NOT NULL,
  `content` varchar(200) NOT NULL,
  `readcount` int DEFAULT '0',
  `date` timestamp NOT NULL,
  `like_count` int DEFAULT '0',
  PRIMARY KEY (`freeboard_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `freeboard`
--

LOCK TABLES `freeboard` WRITE;
/*!40000 ALTER TABLE `freeboard` DISABLE KEYS */;
INSERT INTO `freeboard` VALUES (5,'admin','test1 yang','tes1',51,'2023-03-03 03:43:49',0),(6,'spring','파일이다','ㅇㅇ',4,'2023-03-08 07:23:22',0),(7,'spring','5151','123124213124',0,'2023-03-08 07:29:50',0),(8,'spring','9999','99999',0,'2023-03-08 07:29:58',0),(9,'spring','글제목','글내용\r\n',0,'2023-03-08 07:30:13',0),(10,'spring','ㅁㅁ','ㄹㄹ',0,'2023-03-08 07:30:32',0),(11,'spring','test1','test1',0,'2023-03-08 07:30:50',0),(12,'spring','test2','test2',0,'2023-03-08 07:31:03',0),(13,'spring','test3','test3',0,'2023-03-08 07:31:12',0),(14,'spring','test4','test4',0,'2023-03-08 07:31:21',0),(15,'spring','test5','test5',0,'2023-03-08 07:31:29',0),(16,'spring','test6','test6',0,'2023-03-08 07:31:38',0),(17,'spring','test7','test7',0,'2023-03-08 07:31:49',0);
/*!40000 ALTER TABLE `freeboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `freeboard_comm`
--

DROP TABLE IF EXISTS `freeboard_comm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `freeboard_comm` (
  `comm_num` int NOT NULL,
  `freeboard_num` int DEFAULT NULL,
  `member_id` varchar(30) DEFAULT NULL,
  `content` varchar(100) NOT NULL,
  `date` varchar(30) NOT NULL,
  PRIMARY KEY (`comm_num`),
  KEY `freeboard_num` (`freeboard_num`),
  CONSTRAINT `freeboard_comm_ibfk_1` FOREIGN KEY (`freeboard_num`) REFERENCES `freeboard` (`freeboard_num`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `freeboard_comm_ibfk_2` FOREIGN KEY (`freeboard_num`) REFERENCES `freeboard` (`freeboard_num`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `freeboard_comm_ibfk_3` FOREIGN KEY (`freeboard_num`) REFERENCES `freeboard` (`freeboard_num`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `freeboard_comm_ibfk_4` FOREIGN KEY (`freeboard_num`) REFERENCES `freeboard` (`freeboard_num`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `freeboard_comm`
--

LOCK TABLES `freeboard_comm` WRITE;
/*!40000 ALTER TABLE `freeboard_comm` DISABLE KEYS */;
INSERT INTO `freeboard_comm` VALUES (10,5,'spring','fsagasgagasfgsagasgasgasgasgasg','2023-03-04 15:57:42.303'),(16,5,'spring','dasdas','2023-03-08 16:18:03.769');
/*!40000 ALTER TABLE `freeboard_comm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `mem_num` int DEFAULT NULL,
  `mem_id` varchar(30) NOT NULL,
  `mem_pass` varchar(30) DEFAULT NULL,
  `mem_phone` varchar(30) DEFAULT NULL,
  `mem_name` varchar(30) DEFAULT NULL,
  `mem_nname` varchar(30) DEFAULT NULL,
  `mem_email` varchar(30) DEFAULT NULL,
  `mem_address` varchar(100) DEFAULT NULL,
  `mem_time` datetime DEFAULT NULL,
  `mem_account` varchar(45) DEFAULT NULL,
  `mem_img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`mem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'admin','1111','010-2222-2222','관리자','자리관','admin@gmail.com','부산광역시,,,,,,','2023-02-23 19:50:00',NULL,NULL),(6,'asdsadsad','yadGdaa89U','90476283','김보규','보규김','asdasd@naver.com','경기 성남시 분당구 판교역로 4, (백현동)','2023-03-17 11:23:28',NULL,NULL),(4,'bogyu','1111','01011112222','조보규','보규','bogyu@naver.com','서울 강남구 가로수길 22, (신사동) 1111,,','2023-03-06 14:58:39',NULL,NULL),(5,'bogyu1','1234','01044441111','조보규','보규','bogyu@naver.com','서울 강남구 가로수길 5, (신사동) 1111','2023-03-13 20:44:26',NULL,NULL),(3,'Good001','1111',NULL,'이길동','멋지다 연진아',NULL,NULL,NULL,NULL,NULL),(0,'spring','1111','010-1111-1111','스프링','봄바람 휘날리며','spring@gmail.com','부산광역시 부산진구','2023-02-23 11:52:01',NULL,NULL),(2,'summer15','1111',NULL,'썸머','여름이 좋아',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `noti_num` int NOT NULL,
  `noti_title` varchar(100) DEFAULT NULL,
  `noti_content` varchar(1000) DEFAULT NULL,
  `noti_date` varchar(20) DEFAULT NULL,
  `noti_readcount` int DEFAULT NULL,
  `noti_image` varchar(100) DEFAULT NULL,
  `noti_image1` varchar(100) DEFAULT NULL,
  `noti_image2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`noti_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,'안녕하세요','1','2023.03.17 10:07',9,'b78967b8-8b87-421a-93ab-87aa5a8ea2dd_레인지로버.png','',''),(2,'안녕하세요2','안녕하세요2','2023.03.17 11:28',3,'146c6b81-b821-4af3-a359-d1bacd05fcce_레인지로버.png','','');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_num` int NOT NULL,
  `product_seller` varchar(30) DEFAULT NULL,
  `product_cate` varchar(50) DEFAULT NULL,
  `product_title` varchar(50) DEFAULT NULL,
  `product_content` varchar(1000) DEFAULT NULL,
  `product_price` int DEFAULT NULL,
  `product_grade` varchar(10) DEFAULT NULL,
  `product_pic` varchar(1000) DEFAULT NULL,
  `product_readcount` int DEFAULT NULL,
  `product_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `product_status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`product_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (2302001,'spring','남성의류','코트 팔아요!','겨울 코트 싸게 내놔요~~채팅 주세요',100000,'상','coat1.jpg|coat2.jpg|coat3.jpg',0,'2023-02-23 08:21:58','판매완료'),(2302002,'spring','도서/티켓','대기과학개론','전공 서적 싸게 팝니다',1000,'하','book1.jpg|book2.jpg|book3.jpg|book4.jpg',3,'2023-02-23 08:22:00','판매완료'),(2302003,'summer15','기타','튜브 물놀이 필수품','유니콘 튜브 물놀이 필수품 아니겠어요?',10000,'상','tube41.png|tube2.png',20,'2023-02-23 08:22:02','판매중'),(2302004,'summer15','뷰티/미용','선크림 햇빛 조심 (새상품)','물놀이 필수품 2 선크림',5000,'상','1234.jpg|suncream.jpg|sun.jpg',50,'2023-02-23 08:22:03','판매중'),(2302005,'Good001','스포츠/레저','굴러가는 자전거','자전거 팔아유',150000,'중','bike.jpg',7,'2023-02-23 08:22:05','판매중'),(2302006,'Good001','도서/티켓','정보처리기사 필기책','2023버전이고 새거입니다!!! 상태 좋아요',25000,'상','정처없이달려1.jpg|정처없이달려2.jpg',30,'2023-02-24 02:39:38','판매중'),(2302007,'admin','도서/티켓','자우림 콘서트티켓','3/14일 화이트데이 특별 콘서트입니다! ',50000,'상','우리우림쒸단독콘쒈트.jpg',1,'2023-02-24 02:39:38','판매중'),(2302008,'spring','남성의류','바람막이 팔아용','신상품입니다 문자만 받아여 전화는 ㄴㄴ',109000,'중','바람막어.jpg',1,'2023-03-15 02:39:38','판매중'),(2302009,'spring','생활용품','곽티슈','집들이 선물 받았는데 남아돌아여 필요하신분만 가져가세여!',0,'하','꽉낌티슈.jpg',1,'2023-03-15 02:39:38','판매중'),(2302010,'spring','뷰티/미용','휴대용 비누','인터넷가 3000원인디 선물받은거라 잘사용안해서 팔아여',1000,'상','비누비누.jpg',1,'2023-03-15 02:39:38','판매중'),(2302011,'summer15','여성의류','men to men ','mens like men to men  just get it  don\'t say anything just buy',30000,'중','쏭옷1.jpg|쏭옷2.jpg',1,'2023-03-15 02:39:38','판매중'),(2302012,'summer15','신발/가방','개편한신발','곧 여름여름이요~ 바람숭숭 여름에 신기 좋아여 미리준비해봐요~',20000,'하','여름신발1.jpg|여름신발2.jpg',1,'2023-03-15 02:39:38','판매중'),(2302013,'summer15','기타','가글','커담 후 필수템!!! 휴대용이라 개편함',1000,'상','가그를그르를.jpg',1,'2023-03-15 02:39:38','판매중'),(2302014,'summer15','디지털/가전','대학생 필수템 LG그램','성능 및 휴대성 다가지고 있어여 노트북 / 운영체제(OS): 윈도우11(설치) /',1200000,'상','노트북1.jpg|노트북2.jpg',1,'2023-03-15 02:39:38','판매중'),(2302015,'Good001','신발/가방','좀비싼지갑','쪼매 비싸긴해도 리얼가죽임',20000000,'상','if(false).jpg|if(true).jpg',1,'2023-03-15 02:03:26','판매중'),(2302016,'Good001','뷰티/미용','공병','비싼상품인디 다썼어여 공병이 아까워서 무료나눔합니다',0,'하','공장장병1.jpg|공장장병2.jpg',1,'2023-03-15 02:03:26','판매중'),(2302017,'Good001','디지털/가전','개발자마우스','햄이 쓰던마우스라 더럽긴해도 쨍쨍합다',5000,'하','눈무루마우스1.jpg|눈무루마우스2.jpg',1,'2023-03-15 02:03:26','판매중'),(2302018,'Good001','신발/가방','나이키가방','가벼워서 개편함',30000,'상','니킥1.jpg|니킥2.jpg',1,'2023-03-15 02:03:26','판매중'),(2302019,'Good001','기타','필통','안에 든것도 같이드립니다 ',1000,'중','잭과콩나물되기전1.jpg|잭과콩나물되기전2.jpg',1,'2023-03-15 02:03:27','판매중'),(2302020,'spring','기타','test11dsa','상품입니다',111111,'상','80b1770b-89cb-4cca-9ad7-6cd570d551e2_식물인가요.jpg|183d446e-3ac1-4e17-8387-fb00396dd70e_식물아닌듯.png',0,'2023-03-17 02:26:20','판매중');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revscore`
--

DROP TABLE IF EXISTS `revscore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revscore` (
  `reviewee` varchar(30) NOT NULL,
  `rev_score` float DEFAULT NULL,
  `rev_total` float DEFAULT NULL,
  `rev_cate` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`reviewee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revscore`
--

LOCK TABLES `revscore` WRITE;
/*!40000 ALTER TABLE `revscore` DISABLE KEYS */;
INSERT INTO `revscore` VALUES ('admin',-0.3,19.7,'bad'),('spring',0.8,20.8,'good');
/*!40000 ALTER TABLE `revscore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wish`
--

DROP TABLE IF EXISTS `wish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wish` (
  `product_num` int NOT NULL,
  `member_id` varchar(10) NOT NULL,
  PRIMARY KEY (`product_num`,`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wish`
--

LOCK TABLES `wish` WRITE;
/*!40000 ALTER TABLE `wish` DISABLE KEYS */;
INSERT INTO `wish` VALUES (2302001,'admin'),(2302001,'bogyu'),(2302001,'spring'),(2302002,'admin'),(2302002,'bogyu'),(2302002,'spring'),(2302003,'admin'),(2302003,'spring'),(2302004,'Good001'),(2302005,'spring'),(2302006,'bogyu'),(2302006,'spring'),(2302007,'spring');
/*!40000 ALTER TABLE `wish` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-17 14:22:09

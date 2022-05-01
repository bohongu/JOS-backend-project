-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: employeesdb
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `course_info`
--

DROP TABLE IF EXISTS `course_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_info` (
  `course_no` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(20) NOT NULL,
  `course_title` varchar(50) NOT NULL,
  `course_intro` varchar(100) NOT NULL,
  `course_reco` varchar(100) NOT NULL,
  `star` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`course_no`),
  KEY `id` (`id`),
  CONSTRAINT `course_info_ibfk_1` FOREIGN KEY (`id`) REFERENCES `member_table` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_info`
--

LOCK TABLES `course_info` WRITE;
/*!40000 ALTER TABLE `course_info` DISABLE KEYS */;
INSERT INTO `course_info` VALUES (1,'test','UX/UI디자인 관련 멘토링','굿','추천','5'),(2,'test2','파이썬, 장고, 개발 면접 관련 멘토링','굿','추천','4'),(3,'test3','C++ 및 게임 프로그래밍 멘토링','굿','추천','3.5'),(4,'test4','개발자 커리큘럼(알고리즘 / 자료구조 + 포트폴리오)','굿','추천','4'),(5,'test5','Spring을 활용한 마이크로서비스 애플리케이션 구현','굿','추천','5'),(6,'test6','데이터 분석가 멘토링','굿','추천','4.5'),(7,'test7','프로덕트 매니저(PM) 멘토링','굿','추천','5'),(10,'test8','알고리즘 입문 멘토링','굿','추천','5');
/*!40000 ALTER TABLE `course_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_intro`
--

DROP TABLE IF EXISTS `member_intro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_intro` (
  `minfo_no` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(20) NOT NULL,
  `minfo_intro` varchar(100) NOT NULL,
  PRIMARY KEY (`minfo_no`),
  KEY `id` (`id`),
  CONSTRAINT `member_intro_ibfk_1` FOREIGN KEY (`id`) REFERENCES `member_table` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_intro`
--

LOCK TABLES `member_intro` WRITE;
/*!40000 ALTER TABLE `member_intro` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_intro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_table`
--

DROP TABLE IF EXISTS `member_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_table` (
  `id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_UNIQUE` (`phone`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_table`
--

LOCK TABLES `member_table` WRITE;
/*!40000 ALTER TABLE `member_table` DISABLE KEYS */;
INSERT INTO `member_table` VALUES ('campus','1234','이재현','010-9797-9797','tbz@naver.com','송도'),('id값','pw값','이름','010-1111-2222','email@a.com','서울'),('id값2','암호값2','이름2','010-7777-6666','eamil2@b.com','제주'),('S111','S111','이찬우','010-8778-8888','213hwa@com','서울시'),('test','1234','이재현','01012341234','test@naver.com','seoul'),('test2','1234','이현재','01011111111','test2@naver.com','seoul'),('test3','1234','이다롱','01011121111','test3@naver.com','seoul'),('test4','1234','이다영','01011113111','test4@naver.com','seoul'),('test5','1234','김다윤','01011113151','test5@naver.com','seoul'),('test6','1234','이윤주','01011113131','test6@naver.com','seoul'),('test7','1234','이보윤','01011113112','test7@naver.com','seoul'),('test8','1234','이진아','01011113113','test8@naver.com','seoul');
/*!40000 ALTER TABLE `member_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minfo_port`
--

DROP TABLE IF EXISTS `minfo_port`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `minfo_port` (
  `minfo_port_no` int(11) NOT NULL AUTO_INCREMENT,
  `minfo_no` int(11) NOT NULL,
  `minfo_port` varchar(100) NOT NULL,
  PRIMARY KEY (`minfo_port_no`),
  KEY `minfo_no` (`minfo_no`),
  CONSTRAINT `minfo_port_ibfk_1` FOREIGN KEY (`minfo_no`) REFERENCES `member_intro` (`minfo_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minfo_port`
--

LOCK TABLES `minfo_port` WRITE;
/*!40000 ALTER TABLE `minfo_port` DISABLE KEYS */;
/*!40000 ALTER TABLE `minfo_port` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `review_no` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(20) NOT NULL,
  `review_content` varchar(100) NOT NULL,
  `review_star` int(11) NOT NULL,
  PRIMARY KEY (`review_no`),
  KEY `id` (`id`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`id`) REFERENCES `member_table` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (2,'test','정말 잘 가르치십니다.',5),(3,'test','너무 어렵습니다.',3),(4,'test','초보자에게 도움이 되는 것 같습니다.',4),(5,'test5','웹크롤링 설명이 빈약합니다.',3),(6,'test2','현역 개발자분이 알려주시는 꿀팁이 많습니다. 완전 추천합니다!',5);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `study_table`
--

DROP TABLE IF EXISTS `study_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `study_table` (
  `studyid` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `category` varchar(10) DEFAULT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `remain` int(10) DEFAULT NULL,
  `total` int(10) DEFAULT NULL,
  `location` varchar(30) DEFAULT '미정',
  `view` int(10) DEFAULT '0',
  `country` varchar(10) DEFAULT '국내',
  `finished` varchar(10) DEFAULT '모집중',
  `detaillocation` varchar(100) DEFAULT '미정',
  `meetingtime` varchar(100) DEFAULT '미정',
  `cost` varchar(100) DEFAULT '미정',
  `contents` varchar(10000) DEFAULT '스터디 모집중',
  `tag` varchar(100) DEFAULT '#스터디',
  PRIMARY KEY (`studyid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `study_table`
--

LOCK TABLES `study_table` WRITE;
/*!40000 ALTER TABLE `study_table` DISABLE KEYS */;
INSERT INTO `study_table` VALUES (1,'ncs 스터디 부지런한 사람만','취업','2022-01-07','2022-03-01',1,2,'서울',34,'국내','모집중','마포구 연남동','	월화수목금 오전 9~18시','미정',' <p>▶ 스터디 종류 : 연남동 ncs스터디 월수금 오전팀 인원충원합니다.</p>\n								<p>\n									<br>\n								</p>\n								<p>▶ 모집 인원 : 2명</p>\n								<p>\n									<br>\n								</p>\n								<p>▶ 장소 : 마포구 연남동</p>\n								<p>\n									<br>\n								</p>\n								<p>▶ 시간 : 월화수목금 오전 9~18시</p>\n								<p>\n									<br>\n								</p>\n								<p>▶ 회비 : 미정&nbsp;</p>\n								<p>\n									<br>\n								</p>\n								<p>▶ 진행 방식 : 봉모풀이 리뷰 진행합니다.</p>\n								<p>\n									<br>\n								</p>\n								<p>▶ 기타 : 봉모는 스터디룸에 있는 자료로 사용하고 팀원들의 의견에 따라 구매후 제본하여 할지는 토론\n									후 진행하고 있습니다.</p>\n								<p>공기업 하반기 ncs준비하시는분 2분 구합니다~!</p> <br>\n							<br>','#스터디'),(2,'[월수금일]토익스터디','어학','2022-01-07','2022-08-21',9,10,'서울',588,'국내','모집완료','미정','미정','미정',NULL,'#스터디'),(3,'은퇴후 공무원 준비','취업','2022-02-22','2032-12-01',0,1,'뉴욕',202205,'국외','모집중','미정','미정','미정',NULL,'#스터디'),(4,'복어 기능사준비','취업','1990-01-01','2022-09-11',0,10,'부산',4877,'국내','모집중','미정','미정','미정',NULL,'#스터디'),(5,'jlpt','어학','1990-01-01','2022-09-11',0,10,'부산',1661,'국내','모집중','미정','미정','미정',NULL,'#스터디'),(6,'[에너지공기업] 수,금,토','취업','2020-01-01','2023-05-11',4,5,'영등포',54,'국내','모집중','미정','수금토 9~14시','미정',NULL,'#스터디'),(7,'(주말) 토스스터디','자격증','2020-05-01','2022-05-01',0,1,'금천구',1235,'국내','모집중','미정','미정','미정',NULL,'#스터디'),(8,'수능스터디 매일9~18시','기타','2020-05-01','2022-05-01',2,2,'천호동',145,'국내','모집완료','미정','미정','미정',NULL,'#스터디'),(9,'전기기사 & 전기공사기사','자격증','2021-11-01','2022-04-12',1,2,'용산',48,'국내','모집중','용산역 3번출구 근처','월 수 금 18시~','월 1만원','<h1>전기기사 준비합니다.</h1>','#스터디'),(10,'(에너지관리기사 필기) ','자격증','2022-03-23','2022-06-18',1,3,'경기',41,'국내','모집중','구리시','미정','미정','스터디모집','#스터디'),(11,'인천 스터디원 구합니다.','	취업','2021-12-31','2021-12-31',1,2,'전국',NULL,'국내','모집완료','	인천','일요일 오후',NULL,' <p>▶ 스터디픽 안내.</p>\n								<p>\n                                1. 모집 분야 : 모의면접 스터디<br>\n                                <br>\n                                2. 지역 : 인천<br>\n                                <br>\n                                3. 모임 일정 : 일요일 오후<br>\n                                <br>\n                                4. 지원 방법 : 신청하기 버튼을 통해 지원, 결과 개별 연락<br>\n                                <br>\n								</p>\n								<p>▶ 기타 전달 사항</p>\n								<p>\n                                국가직 시험을 목표로 주1회 스터디 진행합니다.<br>\n								모의면접 방식으로 진행하려고합니다.<br>\n									<br>\n								</p>\n								\n							<br>',NULL),(12,'모의면접 스터디','취업','2022-03-23','2022-06-23',0,2,'서울',17,'국내','모집중','노원역','미정','미정','스터디모집','#스터디'),(13,'(금6시)컴활1급','자격증','2022-03-23','2022-04-23',1,3,'서울',17,'국내','모집중','마천동','미정','미정','스터디모집','#스터디'),(14,'토스 초보만','어학','2022-03-23','2022-07-03',0,2,'서울',16,'국내','모집중','강동역','미정','미정','스터디모집','#스터디'),(15,'한국사 수요일스터디','자격증','2022-03-23','2022-06-03',2,3,'서울',15,'국내','모집중','군자역','미정','미정','스터디모집','#스터디'),(16,'정보처리기사','자격증','2022-03-23','2022-08-23',1,2,'서울',141,'국내','모집중','잠실역','미정','미정','스터디모집','#스터디'),(17,'개발자면접','취업','2022-03-23','2022-06-23',3,4,'서울',56,'국내','모집중','노원역','미정','미정','스터디모집','#스터디'),(18,'hiphop','기타','2022-03-23','2022-06-23',3,4,'Honkong',95,'국외','모집중','-','미정','미정','스터디모집','#스터디'),(19,'[NCS] 봉투모의고사','취업','2022-03-23','2022-12-15',1,2,'충청',109,'국내','모집중','연남동','월수금','미정',' <p>▶ 스터디 종류 : 연남동 ncs스터디 월수금 오전팀 인원충원합니다.</p>\n								<p>\n									<br>\n								</p>\n								<p>▶ 모집 인원 : 2명</p>\n								<p>\n									<br>\n								</p>\n								<p>▶ 장소 : 마포구 연남동</p>\n								<p>\n									<br>\n								</p>\n								<p>▶ 시간 : 월화수목금 오전 9~18시</p>\n								<p>\n									<br>\n								</p>\n								<p>▶ 회비 : 미정&nbsp;</p>\n								<p>\n									<br>\n								</p>\n								<p>▶ 진행 방식 : 봉모풀이 리뷰 진행합니다.</p>\n								<p>\n									<br>\n								</p>\n								<p>▶ 기타 : 봉모는 스터디룸에 있는 자료로 사용하고 팀원들의 의견에 따라 구매후 제본하여 할지는 토론\n									후 진행하고 있습니다.</p>\n								<p>공기업 하반기 ncs준비하시는분 2분 구합니다~!</p> <br>\n							<br>','#스터디'),(20,'게임프로그래밍스터디','기타','2022-03-24','2023-08-25',3,4,'왕십리',20,'국내','모집중','힙덱','매일 12시','식비10000원','스터디모집','#스터디');
/*!40000 ALTER TABLE `study_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-24 16:23:27

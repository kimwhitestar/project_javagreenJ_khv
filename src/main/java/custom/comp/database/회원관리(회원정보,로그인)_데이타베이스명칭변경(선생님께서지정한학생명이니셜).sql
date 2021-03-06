show tables;
select * from custom_comp;
select * from custom_comp_login;
select * from custom_person;
select * from custom_person_login;

-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        5.7.19-log - MySQL Community Server (GPL)
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- javagreen_khv 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `javagreen_khv` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `javagreen_khv`;

-- 테이블 javagreen_khv.custom_comp 구조 내보내기
CREATE TABLE IF NOT EXISTS `custom_comp` (
  `SEQ` int(15) NOT NULL AUTO_INCREMENT,
  `CUSTOM_ID` int(8) NOT NULL,
  `CUSTOM_NM` varchar(20) NOT NULL,
  `CUSTOM_NM_SHORT` varchar(10) NOT NULL,
  `CUSTOM_KIND_GROUP_CODE` int(1) NOT NULL DEFAULT '2' COMMENT '1 기업고객 2 개인고객',
  `CUSTOM_KIND_CD` int(3) NOT NULL,
  `CUSTOM_GRADE` char(1) NOT NULL,
  `ESTBL_DATE` date NOT NULL,
  `COMPANY_NO` varchar(15) NOT NULL,
  `OFFICE` varchar(100) DEFAULT NULL,
  `TEL_NO` varchar(12) NOT NULL,
  `HP_NO` varchar(13) DEFAULT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `POST_CODE` varchar(5) DEFAULT NULL,
  `ROAD_ADDR` varchar(200) DEFAULT NULL,
  `EXTRA_ADDR` varchar(200) DEFAULT NULL,
  `DETAIL_ADDR` varchar(200) DEFAULT NULL,
  `MEMO` varchar(500) DEFAULT NULL,
  `CUSTOM_IMG_FILE_NAME` varchar(300) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `CREATE_USER` varchar(10) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_USER` varchar(10) DEFAULT NULL,
  `DELETE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `DELETE_USER` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CUSTOM_ID`),
  UNIQUE KEY `SEQ` (`SEQ`),
  UNIQUE KEY `COMPANY_NO` (`COMPANY_NO`),
  KEY `FK_CUSTOM_COMP_CUSTOM_GRADE` (`CUSTOM_GRADE`),
  KEY `FK_CUSTOM_COMP_CUSTOM_KIND_CD` (`CUSTOM_KIND_CD`),
  KEY `FK_CUSTOM_COMP_CUSTOM_KIND_GRP_CD_idx` (`CUSTOM_KIND_GROUP_CODE`),
  CONSTRAINT `FK_CUSTOM_COMP_CUSTOM_GRADE` FOREIGN KEY (`CUSTOM_GRADE`) REFERENCES `custom_grade` (`GRADE_CODE`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CUSTOM_COMP_CUSTOM_KIND_CD` FOREIGN KEY (`CUSTOM_KIND_CD`) REFERENCES `custom_kind` (`CUSTOM_KIND_CD`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CUSTOM_COMP_CUSTOM_KIND_GRP_CD` FOREIGN KEY (`CUSTOM_KIND_GROUP_CODE`) REFERENCES `custom_kind` (`CUSTOM_KIND_CD`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- 테이블 데이터 javagreen_khv.custom_comp:~5 rows (대략적) 내보내기
DELETE FROM `custom_comp`;
/*!40000 ALTER TABLE `custom_comp` DISABLE KEYS */;
INSERT INTO `custom_comp` (`SEQ`, `CUSTOM_ID`, `CUSTOM_NM`, `CUSTOM_NM_SHORT`, `CUSTOM_KIND_GROUP_CODE`, `CUSTOM_KIND_CD`, `CUSTOM_GRADE`, `ESTBL_DATE`, `COMPANY_NO`, `OFFICE`, `TEL_NO`, `HP_NO`, `EMAIL`, `POST_CODE`, `ROAD_ADDR`, `EXTRA_ADDR`, `DETAIL_ADDR`, `MEMO`, `CUSTOM_IMG_FILE_NAME`, `CREATE_DATE`, `CREATE_USER`, `UPDATE_DATE`, `UPDATE_USER`, `DELETE_DATE`, `DELETE_USER`) VALUES
	(1, 10000001, 'Express물산', 'Exp물산', 2, 1, 'O', '2025-12-25', '123-81-33400', NULL, '02-001-0001', '010-0001-0001', 'exp@mulsan.com', '08200', '서울특별시 강남구 잠실동 1길 30', '', 'Express 단지 A동 10F', NULL, NULL, '2022-03-10 12:00:00', '10000001', NULL, NULL, NULL, NULL),
	(2, 10000002, '헤이물산', '헤이물산', 2, 1, 'O', '2022-09-02', '123-81-33418', NULL, '02-001-0009', '010-0009-0008', 'hey@mulsan.com', '08200', '서울특별시 송파구 3길 10', '', '헤이빌딩 6F', NULL, NULL, '2022-03-25 12:25:00', '10000002', NULL, NULL, NULL, NULL),
	(5, 10100001, '자바그린유통산업', '자바그린(유)', 2, 101, 'A', '2022-08-16', '123-81-33001', NULL, '02-001-0005', '010-0003-0005', 'info@green-distribution.co.kr', '08200', '서울특별시 구로구 경인로67나길 52', '', '그린유통 5F', NULL, NULL, '2022-05-01 10:00:00', '10100001', NULL, NULL, NULL, NULL),
	(3, 10300001, '자바그린마트', '자바그린(마)', 2, 103, 'A', '2022-08-25', '123-81-33425', NULL, '02-001-0003', '010-0003-0003', 'info@green-mart.co.kr', '08200', '서울특별시 구로구 경인로67나길 52', '', '그린마트 3F', NULL, NULL, '2022-05-20 10:31:00', '10300001', NULL, NULL, NULL, NULL),
	(16, 30300001, '그린케이스표준위탁업체(주)', '그린케이스표위', 1, 303, 'O', '2018-02-18', '888-34-25008', '기타:위탁전략1팀', '02-0034-1818', '010-3333-3333', 'info@green-deputy.co.kr', NULL, '', '', '', '가나다라마바사아자차카타파하1234567890!@#$%^&*()', 'C:\\fakepath\\nimo.jpg', '2022-06-07 23:26:08', '30300001', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `custom_comp` ENABLE KEYS */;

-- 테이블 javagreen_khv.custom_comp_login 구조 내보내기
CREATE TABLE IF NOT EXISTS `custom_comp_login` (
  `ID` varchar(10) NOT NULL,
  `PWD` varchar(200) NOT NULL,
  `CUSTOM_ID` int(8) NOT NULL,
  `CUSTOM_GRADE` char(1) NOT NULL,
  `POINT` int(9) NOT NULL DEFAULT '1000',
  `VISIT_CNT` int(9) NOT NULL DEFAULT '0',
  `TODAY_CNT` int(9) NOT NULL DEFAULT '0',
  `LOGIN_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LOGIN_USER` varchar(10) DEFAULT NULL,
  `LOGOUT_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LOGOUT_USER` varchar(10) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `CREATE_USER` varchar(10) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_USER` varchar(10) DEFAULT NULL,
  `DELETE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `DELETE_USER` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_CUSTOM_COMP_LOGIN_CUSTOM_ID` (`CUSTOM_ID`),
  KEY `FK_CUSTOM_COMP_LOGIN_CUSTOM_GRADE` (`CUSTOM_GRADE`),
  CONSTRAINT `FK_CUSTOM_COMP_LOGIN_CUSTOM_GRADE` FOREIGN KEY (`CUSTOM_GRADE`) REFERENCES `custom_grade` (`GRADE_CODE`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CUSTOM_COMP_LOGIN_CUSTOM_ID` FOREIGN KEY (`CUSTOM_ID`) REFERENCES `custom_comp` (`CUSTOM_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 javagreen_khv.custom_comp_login:~5 rows (대략적) 내보내기
DELETE FROM `custom_comp_login`;
/*!40000 ALTER TABLE `custom_comp_login` DISABLE KEYS */;
INSERT INTO `custom_comp_login` (`ID`, `PWD`, `CUSTOM_ID`, `CUSTOM_GRADE`, `POINT`, `VISIT_CNT`, `TODAY_CNT`, `LOGIN_DATE`, `LOGIN_USER`, `LOGOUT_DATE`, `LOGOUT_USER`, `CREATE_DATE`, `CREATE_USER`, `UPDATE_DATE`, `UPDATE_USER`, `DELETE_DATE`, `DELETE_USER`) VALUES
	('COMP1', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 10000001, 'O', 1000, 0, 0, NULL, NULL, NULL, NULL, '2022-05-22 10:00:00', 'COMP1', NULL, NULL, NULL, NULL),
	('COMP101', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 10100001, 'A', 2400, 15, 1, '2022-06-05 13:08:27', 'COMP101', '2022-06-07 18:00:00', 'COMP101', '2022-05-22 10:00:00', 'COMP101', '2022-06-07 18:05:00', 'COMP101', NULL, NULL),
	('COMP103', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 10300001, 'A', 1000, 0, 0, NULL, NULL, NULL, NULL, '2022-05-22 10:00:00', 'COMP103', NULL, NULL, NULL, NULL),
	('COMP2', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 10000002, 'O', 1000, 0, 0, NULL, NULL, NULL, NULL, '2022-05-22 10:00:00', 'COMP2', NULL, NULL, NULL, NULL),
	('COMP303', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 30300001, 'O', 2000, 16, 16, '2022-06-08 00:09:55', 'COMP303', '2022-06-08 02:29:22', 'COMP303', '2022-06-07 23:26:08', 'COMP303', '2022-06-08 02:29:08', 'COMP303', NULL, NULL);
/*!40000 ALTER TABLE `custom_comp_login` ENABLE KEYS */;

-- 테이블 javagreen_khv.custom_grade 구조 내보내기
CREATE TABLE IF NOT EXISTS `custom_grade` (
  `GRADE_CODE` char(1) NOT NULL,
  `GRADE_NAME` varchar(20) NOT NULL,
  PRIMARY KEY (`GRADE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 javagreen_khv.custom_grade:~8 rows (대략적) 내보내기
DELETE FROM `custom_grade`;
/*!40000 ALTER TABLE `custom_grade` DISABLE KEYS */;
INSERT INTO `custom_grade` (`GRADE_CODE`, `GRADE_NAME`) VALUES
	('A', '우수기업고객'),
	('B', '정규기업고객'),
	('C', '일반기업고객'),
	('O', '임시기업고객'),
	('P', '임시개인고객'),
	('Q', '일반개인고객'),
	('R', '정규개인고객'),
	('S', '우수개인고객');
/*!40000 ALTER TABLE `custom_grade` ENABLE KEYS */;

-- 테이블 javagreen_khv.custom_kind 구조 내보내기
CREATE TABLE IF NOT EXISTS `custom_kind` (
  `CUSTOM_KIND_CD` int(3) NOT NULL,
  `CUSTOM_KIND_NM` varchar(10) NOT NULL,
  PRIMARY KEY (`CUSTOM_KIND_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 javagreen_khv.custom_kind:~22 rows (대략적) 내보내기
DELETE FROM `custom_kind`;
/*!40000 ALTER TABLE `custom_kind` DISABLE KEYS */;
INSERT INTO `custom_kind` (`CUSTOM_KIND_CD`, `CUSTOM_KIND_NM`) VALUES
	(1, '기업고객'),
	(2, '개인고객'),
	(101, '유통'),
	(102, '대형마트'),
	(103, '중형마트'),
	(104, '소형마트'),
	(105, '편의점'),
	(201, '공장'),
	(202, '택배'),
	(203, '우체국'),
	(301, '컨테이너위탁업체'),
	(302, '트랙카위탁업체'),
	(303, '표준위탁업체'),
	(501, '항공운송'),
	(502, '선박운송'),
	(503, '기차운송'),
	(505, '표준차량운송'),
	(506, '고속버스운송'),
	(507, '개별차량운송'),
	(601, '농업공급자'),
	(602, '수산업공급자'),
	(603, '축산업공급자');
/*!40000 ALTER TABLE `custom_kind` ENABLE KEYS */;

-- 테이블 javagreen_khv.custom_person 구조 내보내기
CREATE TABLE IF NOT EXISTS `custom_person` (
  `SEQ` int(15) NOT NULL AUTO_INCREMENT,
  `CUSTOM_ID` int(8) NOT NULL,
  `CUSTOM_NM` varchar(20) NOT NULL,
  `CUSTOM_KIND_GROUP_CODE` int(1) NOT NULL DEFAULT '2' COMMENT '1 기업고객 2 개인고객',
  `CUSTOM_KIND_CD` int(3) NOT NULL,
  `CUSTOM_GRADE` char(1) NOT NULL,
  `JOB` varchar(100) DEFAULT NULL,
  `HOBBY` varchar(200) DEFAULT NULL,
  `BIRTH_DATE` date NOT NULL,
  `JUMIN_NO` varchar(14) NOT NULL,
  `GENDER` char(1) DEFAULT NULL COMMENT '''M'' 남자  ''W'' 여자',
  `TEL_NO` varchar(12) DEFAULT NULL,
  `HP_NO` varchar(13) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `POST_CODE` varchar(5) DEFAULT NULL,
  `ROAD_ADDR` varchar(200) DEFAULT NULL,
  `EXTRA_ADDR` varchar(200) DEFAULT NULL,
  `DETAIL_ADDR` varchar(200) DEFAULT NULL,
  `MEMO` varchar(500) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `CREATE_USER` varchar(10) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_USER` varchar(10) DEFAULT NULL,
  `DELETE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `DELETE_USER` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CUSTOM_ID`),
  UNIQUE KEY `SEQ` (`SEQ`),
  UNIQUE KEY `JUMIN_NO` (`JUMIN_NO`),
  KEY `FK_CUSTOM_PERSON_CUSTOM_KIND_CD` (`CUSTOM_KIND_CD`),
  KEY `FK_CUSTOM_PERSON_CUSTOM_GRADE` (`CUSTOM_GRADE`),
  KEY `FK_CUSTOM_PERSON_CUSTOM_KIND_GRP_CD_idx` (`CUSTOM_KIND_GROUP_CODE`),
  CONSTRAINT `FK_CUSTOM_PERSON_CUSTOM_GRADE` FOREIGN KEY (`CUSTOM_GRADE`) REFERENCES `custom_grade` (`GRADE_CODE`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CUSTOM_PERSON_CUSTOM_KIND_CD` FOREIGN KEY (`CUSTOM_KIND_CD`) REFERENCES `custom_kind` (`CUSTOM_KIND_CD`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CUSTOM_PERSON_CUSTOM_KIND_GRP_CD` FOREIGN KEY (`CUSTOM_KIND_GROUP_CODE`) REFERENCES `custom_kind` (`CUSTOM_KIND_CD`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- 테이블 데이터 javagreen_khv.custom_person:~5 rows (대략적) 내보내기
DELETE FROM `custom_person`;
/*!40000 ALTER TABLE `custom_person` DISABLE KEYS */;
INSERT INTO `custom_person` (`SEQ`, `CUSTOM_ID`, `CUSTOM_NM`, `CUSTOM_KIND_GROUP_CODE`, `CUSTOM_KIND_CD`, `CUSTOM_GRADE`, `JOB`, `HOBBY`, `BIRTH_DATE`, `JUMIN_NO`, `GENDER`, `TEL_NO`, `HP_NO`, `EMAIL`, `POST_CODE`, `ROAD_ADDR`, `EXTRA_ADDR`, `DETAIL_ADDR`, `MEMO`, `CREATE_DATE`, `CREATE_USER`, `UPDATE_DATE`, `UPDATE_USER`, `DELETE_DATE`, `DELETE_USER`) VALUES
	(8, 10000001, '테스트고객18', 2, 2, 'P', '기타:아르바이트', '애완동물기르기/기타', '2000-02-01', '222222-2222222', 'W', '02-888-0018', '010-8888-0018', 'test18@chuksan.albamoncom', NULL, '', '', '', 'ㄱㄴㄷㄹ1234!@#$', '2022-06-07 23:42:28', '10000001', '2022-06-08 03:37:07', '10000001', NULL, NULL),
	(1, 60200001, '테스트고객1', 2, 602, 'P', NULL, NULL, '1978-08-08', '780808-1234567', NULL, '02-888-3331', '010-8888-8881', 'test1@mypizza.com', NULL, NULL, NULL, NULL, NULL, '2022-02-18 10:00:00', '90000001', NULL, NULL, NULL, NULL),
	(2, 60200002, '테스트고객2', 2, 602, 'P', NULL, NULL, '1980-08-12', '800812-1234567', NULL, '02-888-3333', '010-8888-8883', 'test2@hotmail.com', NULL, NULL, NULL, NULL, NULL, '2022-02-18 10:00:00', '90000002', NULL, NULL, NULL, NULL),
	(3, 60200003, '테스트고객3', 2, 602, 'P', NULL, NULL, '1980-08-11', '800811-1234561', NULL, '02-888-3332', '010-8888-8882', 'test3@naver.com', NULL, NULL, NULL, NULL, NULL, '2022-05-25 11:00:00', '90000003', NULL, NULL, NULL, NULL),
	(9, 60200004, '테스트고객8', 2, 602, 'P', '기타:아르바이트', '조립/쇼핑/여행', '2002-02-18', '333333-3333333', 'W', '', '010-8888-0008', 'tester8@susan.albamon.com', NULL, '', '', '', 'ABCDEFG도라지가나12345678##$@@$!!$', '2022-06-07 23:52:45', '60200004', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `custom_person` ENABLE KEYS */;

-- 테이블 javagreen_khv.custom_person_login 구조 내보내기
CREATE TABLE IF NOT EXISTS `custom_person_login` (
  `ID` varchar(10) NOT NULL,
  `PWD` varchar(200) NOT NULL,
  `CUSTOM_ID` int(8) NOT NULL,
  `CUSTOM_GRADE` char(1) NOT NULL,
  `POINT` int(9) NOT NULL DEFAULT '1000',
  `VISIT_CNT` int(9) NOT NULL DEFAULT '0',
  `TODAY_CNT` int(9) NOT NULL DEFAULT '0',
  `LOGIN_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LOGIN_USER` varchar(10) DEFAULT NULL,
  `LOGOUT_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LOGOUT_USER` varchar(10) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `CREATE_USER` varchar(10) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_USER` varchar(10) DEFAULT NULL,
  `DELETE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `DELETE_USER` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_CUSTOM_PERSON_LOGIN_CUSTOM_ID` (`CUSTOM_ID`),
  KEY `FK_CUSTOM_PERSON_LOGIN_CUSTOM_GRADE` (`CUSTOM_GRADE`),
  CONSTRAINT `FK_CUSTOM_PERSON_LOGIN_CUSTOM_GRADE` FOREIGN KEY (`CUSTOM_GRADE`) REFERENCES `custom_grade` (`GRADE_CODE`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CUSTOM_PERSON_LOGIN_CUSTOM_ID` FOREIGN KEY (`CUSTOM_ID`) REFERENCES `custom_person` (`CUSTOM_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 javagreen_khv.custom_person_login:~5 rows (대략적) 내보내기
DELETE FROM `custom_person_login`;
/*!40000 ALTER TABLE `custom_person_login` DISABLE KEYS */;
INSERT INTO `custom_person_login` (`ID`, `PWD`, `CUSTOM_ID`, `CUSTOM_GRADE`, `POINT`, `VISIT_CNT`, `TODAY_CNT`, `LOGIN_DATE`, `LOGIN_USER`, `LOGOUT_DATE`, `LOGOUT_USER`, `CREATE_DATE`, `CREATE_USER`, `UPDATE_DATE`, `UPDATE_USER`, `DELETE_DATE`, `DELETE_USER`) VALUES
	('USER1', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 60200001, 'P', 1100, 1, 1, '2022-06-03 18:00:00', 'USER1', '2022-06-03 18:01:00', 'USER1', '2022-02-18 11:00:00', 'USER1', '2022-06-03 18:01:00', 'USER1', '2022-06-05 18:20:00', 'USER1'),
	('USER18', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 10000001, 'P', 1500, 5, 5, '2022-06-08 02:29:37', 'USER18', '2022-06-08 03:38:21', 'USER18', '2022-06-07 23:42:28', 'USER18', '2022-06-08 03:38:14', 'USER18', NULL, NULL),
	('USER2', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 60200002, 'P', 1000, 0, 0, '2022-06-07 22:52:45', 'USER2', '2022-06-07 22:52:45', 'USER2', '2022-06-05 18:20:00', 'USER2', '2022-06-07 22:52:45', 'USER2', '2022-06-07 22:52:45', 'USER2'),
	('USER3', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 60200003, 'P', 2100, 11, 2, '2022-06-05 18:04:00', 'USER3', '2022-06-05 18:08:00', 'USER3', '2022-05-25 11:00:00', 'USER3', '2022-06-05 18:20:00', 'USER3', NULL, NULL),
	('USER8', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 60200004, 'P', 1000, 0, 0, NULL, NULL, NULL, NULL, '2022-06-07 23:52:45', 'USER8', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `custom_person_login` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : lms

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2022-03-04 11:18:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `author`
-- ----------------------------
DROP TABLE IF EXISTS `author`;
CREATE TABLE `author` (
  `author_id` int(10) NOT NULL AUTO_INCREMENT,
  `author_name` varchar(255) DEFAULT '',
  `recording_person_id` varchar(50) DEFAULT '',
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of author
-- ----------------------------
INSERT INTO `author` VALUES ('1', 'kausar ahmed', '1010', 'kausar', '2022-02-15 17:15:05');
INSERT INTO `author` VALUES ('5', 'sajib', '1010', 'kausar', '2022-02-15 21:29:51');
INSERT INTO `author` VALUES ('6', 'rah', '899', 'jfdkl', '2022-02-15 17:15:05');
INSERT INTO `author` VALUES ('7', 'nasir', '1010', 'kausar', '2022-02-18 20:28:48');
INSERT INTO `author` VALUES ('8', 'ananda', '1010', 'kausar', '2022-02-18 20:31:47');
INSERT INTO `author` VALUES ('9', 'শেখ মজিবুর রহমান', '1010', 'kausar', '2022-02-25 19:47:33');

-- ----------------------------
-- Table structure for `book_list`
-- ----------------------------
DROP TABLE IF EXISTS `book_list`;
CREATE TABLE `book_list` (
  `book_id` int(10) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(255) DEFAULT '',
  `isbn_number` varchar(255) DEFAULT '',
  `cat_id` int(10) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `author_id` int(10) DEFAULT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `loc_id` int(10) DEFAULT NULL,
  `location_name` varchar(255) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `recording_person_id` varchar(50) DEFAULT '',
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  `available_quantity` int(10) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book_list
-- ----------------------------
INSERT INTO `book_list` VALUES ('1', 'Object Oriented Programming', 'isbn-10-40-200', '1', 'Programming', '1', 'kausar ahmed', '3', 'B1', '40', '1010', 'kausar', '2022-02-17 00:05:21', '40');
INSERT INTO `book_list` VALUES ('2', 'Data Structure & Algorithm', 'isbn-20-10-500', '1', 'Programming', '5', 'sajib', '2', 'A2', '60', '1010', 'kausar', '2022-02-17 00:14:20', '60');
INSERT INTO `book_list` VALUES ('4', 'Chemistry', 'isbn-10-40-2000', '45', 'Science', '1', 'kausar ahmed', '2', 'A2', '100', '1010', 'kausar', '2022-02-17 01:34:16', '100');
INSERT INTO `book_list` VALUES ('5', 'Physics', '234343434', '45', 'Science', '5', 'sajib', '2', 'A2', '10', '1010', 'kausar', '2022-02-17 23:39:16', '10');
INSERT INTO `book_list` VALUES ('7', 'bangla', 'isbn-3243-3434', '13', 'Engineering', '1', 'kausar ahmed', '5', 'B2', '50', '1010', 'kausar', '2022-02-18 17:37:24', '50');
INSERT INTO `book_list` VALUES ('10', 'Software Engineering', 'isbn-20-30-4000', '13', 'Engineering', '7', 'nasir', '2', 'A2', '50', '1010', 'kausar', '2022-02-22 02:04:48', '49');
INSERT INTO `book_list` VALUES ('11', 'networking', 'isbn-12-12-2022', '13', 'Engineering', '7', 'nasir', '3', 'B1', '100', '1010', 'kausar', '2022-02-22 21:02:26', '100');
INSERT INTO `book_list` VALUES ('12', 'বাংলা লেখা', 'isbn-50-50-50000', '13', 'Engineering', '1', 'kausar ahmed', '2', 'A2', '50', '1010', 'kausar', '2022-02-23 09:36:58', '50');
INSERT INTO `book_list` VALUES ('14', 'Artificial Intelligence', 'isbn-60-60-5000', '13', 'Engineering', '1', 'kausar ahmed', '2', 'A2', '100', '1010', 'kausar', '2022-02-24 22:51:19', '100');
INSERT INTO `book_list` VALUES ('15', 'Artificial Intelligence', 'isbn-50-50-5000', '13', 'Engineering', '5', 'sajib', '2', 'A2', '50', '1010', 'kausar', '2022-02-24 22:53:29', '50');
INSERT INTO `book_list` VALUES ('16', 'Digital Electronics', 'isbn-100-100-1000', '13', 'Engineering', '8', 'ananda', '3', 'B1', '50', '1010', 'kausar', '2022-02-25 18:08:51', '48');
INSERT INTO `book_list` VALUES ('17', 'অসমাপ্ত আত্তজীবনি', '1111-2222-3333', '46', 'আত্তজীবনি', '9', 'শেখ মজিবুর রহমান', '2', 'A2', '50', '1010', 'kausar', '2022-02-25 19:48:37', '48');

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cat_id` int(10) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT '',
  `recording_person_id` varchar(50) DEFAULT '',
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'Programming', '1010', 'kausar', '2022-02-15 11:25:44');
INSERT INTO `category` VALUES ('13', 'Engineering', '1010', 'kausar', '2022-02-15 12:57:24');
INSERT INTO `category` VALUES ('19', 'Chemistry', '1010', 'kausar', '2022-02-15 13:01:24');
INSERT INTO `category` VALUES ('20', 'Mathematics', '1010', 'kausar', '2022-02-15 13:01:28');
INSERT INTO `category` VALUES ('22', 'Physics', '1010', 'kausar', '2022-02-15 13:12:13');
INSERT INTO `category` VALUES ('45', 'Science', '1010', 'kausar', '2022-02-17 01:33:52');
INSERT INTO `category` VALUES ('46', 'আত্তজীবনি', '1010', 'kausar', '2022-02-25 19:47:02');

-- ----------------------------
-- Table structure for `department_info`
-- ----------------------------
DROP TABLE IF EXISTS `department_info`;
CREATE TABLE `department_info` (
  `dept_id` int(10) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) DEFAULT '',
  `recording_person_id` varchar(30) DEFAULT '',
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department_info
-- ----------------------------
INSERT INTO `department_info` VALUES ('17', 'Administration', '1010', 'kausar', '2021-12-20 17:18:49');
INSERT INTO `department_info` VALUES ('18', 'Director', '1010', 'kausar', '2021-12-20 17:19:02');
INSERT INTO `department_info` VALUES ('19', 'Finance', '1010', 'kausar', '2021-12-20 17:19:13');
INSERT INTO `department_info` VALUES ('20', 'Hotels', '1010', 'kausar', '2021-12-20 17:19:24');
INSERT INTO `department_info` VALUES ('21', 'Hotels/Services', '1010', 'kausar', '2021-12-20 17:19:34');
INSERT INTO `department_info` VALUES ('22', 'Management', '1010', 'kausar', '2021-12-20 17:19:45');
INSERT INTO `department_info` VALUES ('23', 'Marketing', '1010', 'kausar', '2021-12-20 17:19:57');
INSERT INTO `department_info` VALUES ('24', 'Services', '1010', 'kausar', '2021-12-20 17:20:09');
INSERT INTO `department_info` VALUES ('26', 'ICT', '1010', 'kausar', '2022-02-16 23:01:56');

-- ----------------------------
-- Table structure for `designation_info`
-- ----------------------------
DROP TABLE IF EXISTS `designation_info`;
CREATE TABLE `designation_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) DEFAULT NULL,
  `short_form` varchar(100) DEFAULT NULL,
  `recording_person_id` varchar(30) DEFAULT NULL,
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of designation_info
-- ----------------------------
INSERT INTO `designation_info` VALUES ('1', 'Officer', 'Officer', null, null, null);
INSERT INTO `designation_info` VALUES ('3', 'Junior Officer', 'Jr. Officer', null, null, null);
INSERT INTO `designation_info` VALUES ('4', 'Senior Officer', 'Sr. Officer', null, null, null);
INSERT INTO `designation_info` VALUES ('22', 'Programmer', 'Programmer', null, null, null);
INSERT INTO `designation_info` VALUES ('23', 'Junior Programmer', 'Jr. Programmer', null, null, null);
INSERT INTO `designation_info` VALUES ('5', 'Executive', 'Executive', null, null, null);
INSERT INTO `designation_info` VALUES ('7', 'Junior Executive', 'Jr. Executive', null, null, null);
INSERT INTO `designation_info` VALUES ('8', 'Senior Executive', 'Sr. Executive', null, null, null);
INSERT INTO `designation_info` VALUES ('9', 'General Manager', 'GM', null, null, null);
INSERT INTO `designation_info` VALUES ('24', 'Assistant Programmer', 'Asst. Programmer', null, null, null);
INSERT INTO `designation_info` VALUES ('25', 'Senior Programmer', 'Sr. Programmer', null, null, null);
INSERT INTO `designation_info` VALUES ('10', 'Assistant General Manager', 'AGM', null, null, null);
INSERT INTO `designation_info` VALUES ('11', 'Deputy General Manager', 'DGM', null, null, null);
INSERT INTO `designation_info` VALUES ('12', 'Manager', 'Manager', null, null, null);
INSERT INTO `designation_info` VALUES ('19', 'Junior Application Developer', 'Jr. App. Developer', null, null, null);
INSERT INTO `designation_info` VALUES ('13', 'Assistant Manager', 'Asst. Manager', null, null, null);
INSERT INTO `designation_info` VALUES ('14', 'Deputy Manager', 'Dept. Manager', null, null, null);
INSERT INTO `designation_info` VALUES ('15', 'Senior Manager', 'Sr. Manager', null, null, null);
INSERT INTO `designation_info` VALUES ('2', 'Assistant Officer', 'Asst. Officer', null, null, null);
INSERT INTO `designation_info` VALUES ('20', 'Assistant Application Developer', 'Asst. App. Developer', null, null, null);
INSERT INTO `designation_info` VALUES ('16', 'Head of Department', 'Head of Dept.', null, null, null);
INSERT INTO `designation_info` VALUES ('17', 'Application Implementer', 'App. Implementer', '', '', '0000-00-00 00:00:00');
INSERT INTO `designation_info` VALUES ('18', 'Application Developer', 'App. Developer', null, null, null);
INSERT INTO `designation_info` VALUES ('21', 'Senior Application Developer', 'Sr. App. Developer', null, null, null);
INSERT INTO `designation_info` VALUES ('6', 'Assistant Executive', 'Asst. Executive', null, null, null);
INSERT INTO `designation_info` VALUES ('27', 'Junior Engineer', 'Jr. Engineer', null, null, null);
INSERT INTO `designation_info` VALUES ('26', 'Engineer', 'Engineer', null, null, null);
INSERT INTO `designation_info` VALUES ('28', 'Assistant Engineer', 'Asst. Engineer', null, null, null);
INSERT INTO `designation_info` VALUES ('29', 'Senior Engineer', 'Sr. Engineer', null, null, null);
INSERT INTO `designation_info` VALUES ('30', 'System & Network Engineer', 'System & Network Engineer', null, null, null);
INSERT INTO `designation_info` VALUES ('31', 'Junior System & Network Engineer', 'Jr. System Network Engineer', null, null, null);
INSERT INTO `designation_info` VALUES ('32', 'Assistant System & Network Engineer', 'Asst. System & Network Engineer', null, null, null);
INSERT INTO `designation_info` VALUES ('33', 'Senior System & Network Engineer', 'Sr. System & Network Engineer', null, null, null);
INSERT INTO `designation_info` VALUES ('34', 'Functional Co-ordinator', 'Functional Co-ordinator', null, null, null);
INSERT INTO `designation_info` VALUES ('35', 'Senior Functional Co-ordinator', 'Sr. Functional Co-ordinator', null, null, null);
INSERT INTO `designation_info` VALUES ('36', 'Data Co-ordinator', 'Data Co-ordinator', null, null, null);
INSERT INTO `designation_info` VALUES ('37', 'Senior Data Co-ordinator', 'Sr. Data Co-ordinator', null, null, null);
INSERT INTO `designation_info` VALUES ('38', 'NOC Engineer', 'NOC Engineer', null, null, null);
INSERT INTO `designation_info` VALUES ('39', 'Chief Information Officer', 'CIO', null, null, null);
INSERT INTO `designation_info` VALUES ('40', 'Chief Technical Officer', 'CTO', null, null, null);
INSERT INTO `designation_info` VALUES ('41', 'Database Administrator', 'DBA', null, null, null);
INSERT INTO `designation_info` VALUES ('42', 'System Administrator', 'System Admin', null, null, null);
INSERT INTO `designation_info` VALUES ('43', 'System Analyst', 'System Analyst', null, null, null);
INSERT INTO `designation_info` VALUES ('44', 'Team Leader', 'Team Leader', null, null, null);
INSERT INTO `designation_info` VALUES ('45', 'Project Manager', 'PM', null, null, null);
INSERT INTO `designation_info` VALUES ('46', 'Junior NOC Engineer', 'Jr. NOC Engineer', null, null, null);
INSERT INTO `designation_info` VALUES ('47', 'Electrical Engineer', 'ELec. Engr.', null, null, null);
INSERT INTO `designation_info` VALUES ('48', 'Assistant Manufacturing Engineer', 'Asst. Manufacturing Engr.', null, null, null);

-- ----------------------------
-- Table structure for `issue_info`
-- ----------------------------
DROP TABLE IF EXISTS `issue_info`;
CREATE TABLE `issue_info` (
  `issue_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) DEFAULT '',
  `book_name` varchar(255) DEFAULT '',
  `isbn_number` varchar(255) DEFAULT '',
  `issue_quantity` int(20) DEFAULT NULL,
  `recording_person_id` varchar(50) DEFAULT '',
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  `book_return_date` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`issue_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of issue_info
-- ----------------------------
INSERT INTO `issue_info` VALUES ('1', '1010', 'Digital Electronics', 'isbn-100-100-1000', '1', '1010', 'kausar', '2022-02-25 18:27:30', '2022-03-27', '0');
INSERT INTO `issue_info` VALUES ('2', '1010', 'Digital Electronics', 'isbn-100-100-1000', '1', '1010', 'kausar', '2022-02-25 18:35:44', '2022-03-27', '1');
INSERT INTO `issue_info` VALUES ('3', 'emp', 'Artificial Intelligence', 'isbn-50-50-5000', '1', '1010', 'kausar', '2022-02-25 18:37:54', '2022-03-27', '0');
INSERT INTO `issue_info` VALUES ('4', 'emp', 'Artificial Intelligence', 'isbn-60-60-5000', '1', '1010', 'kausar', '2022-02-25 18:38:02', '2022-03-27', '0');
INSERT INTO `issue_info` VALUES ('5', 'employee', 'bangla', 'isbn-3243-3434', '1', '1010', 'kausar', '2022-02-25 19:11:16', '2022-03-27', '0');
INSERT INTO `issue_info` VALUES ('6', 'employee', 'bangla', 'isbn-3243-3434', '1', '1010', 'kausar', '2022-02-25 19:13:44', '2022-03-27', '0');
INSERT INTO `issue_info` VALUES ('7', '1010', 'Artificial Intelligence', 'isbn-60-60-5000', '1', '1010', 'kausar', '2022-02-25 19:17:39', '2022-03-27', '0');
INSERT INTO `issue_info` VALUES ('8', '1010', 'Artificial Intelligence', 'isbn-50-50-5000', '1', '1010', 'kausar', '2022-02-25 19:22:00', '2022-03-27', '0');
INSERT INTO `issue_info` VALUES ('9', '1010', 'Artificial Intelligence', 'isbn-60-60-5000', '1', '1010', 'kausar', '2022-02-25 19:22:10', '2022-03-27', '0');
INSERT INTO `issue_info` VALUES ('10', '1010', 'অসমাপ্ত আত্তজীবনি', '1111-2222-3333', '1', '1010', 'kausar', '2022-02-25 19:49:07', '2022-03-27', '0');
INSERT INTO `issue_info` VALUES ('13', '11111', 'অসমাপ্ত আত্তজীবনি', '1111-2222-3333', '1', '11111', 'Atik', '2022-03-01 01:10:36', '2022-03-30', '0');
INSERT INTO `issue_info` VALUES ('14', '11111', 'Artificial Intelligence', 'isbn-60-60-5000', '1', '11111', 'Atik', '2022-03-01 01:10:47', '2022-03-30', '0');
INSERT INTO `issue_info` VALUES ('15', '11111', 'Software Engineering', 'isbn-20-30-4000', '1', '11111', 'Atik', '2022-03-01 01:48:36', '2022-03-10', '0');
INSERT INTO `issue_info` VALUES ('16', '11111', 'Digital Electronics', 'isbn-100-100-1000', '1', '11111', 'Atik', '2022-03-01 02:08:41', '2022-03-10', '0');
INSERT INTO `issue_info` VALUES ('17', '9212', 'Chemistry', 'isbn-10-40-2000', '1', '9212', 'Kausar Ahmed', '2022-03-01 09:21:18', '2022-03-11', '0');
INSERT INTO `issue_info` VALUES ('19', '11111', 'Digital Electronics', 'isbn-100-100-1000', '1', '11111', 'Atik', '2022-03-01 22:48:39', '2022-03-11', '1');
INSERT INTO `issue_info` VALUES ('20', '11111', 'Software Engineering', 'isbn-20-30-4000', '1', '11111', 'Atik', '2022-03-01 22:48:53', '2022-03-11', '0');
INSERT INTO `issue_info` VALUES ('21', '9212', 'অসমাপ্ত আত্তজীবনি', '1111-2222-3333', '1', '9212', 'Kausar Ahmed', '2022-03-01 23:02:17', '2022-03-11', '1');
INSERT INTO `issue_info` VALUES ('22', '5555', 'অসমাপ্ত আত্তজীবনি', '1111-2222-3333', '1', '5555', 'Nasir', '2022-03-01 23:28:19', '2022-03-11', '1');
INSERT INTO `issue_info` VALUES ('23', '5555', 'networking', 'isbn-12-12-2022', '1', '5555', 'Nasir', '2022-03-01 23:28:29', '2022-03-11', '0');
INSERT INTO `issue_info` VALUES ('24', '5555', 'Artificial Intelligence', 'isbn-50-50-5000', '1', '5555', 'Nasir', '2022-03-02 00:33:18', '2022-03-11', '0');

-- ----------------------------
-- Table structure for `location_info`
-- ----------------------------
DROP TABLE IF EXISTS `location_info`;
CREATE TABLE `location_info` (
  `loc_id` int(10) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(100) DEFAULT NULL,
  `recording_person_id` varchar(50) DEFAULT NULL,
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  PRIMARY KEY (`loc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of location_info
-- ----------------------------
INSERT INTO `location_info` VALUES ('1', 'A1', '1010', 'kausar', '2022-02-16 23:15:58');
INSERT INTO `location_info` VALUES ('2', 'A2', '1010', 'kausar', '2022-02-16 23:16:08');
INSERT INTO `location_info` VALUES ('3', 'B1', '1010', 'kausar', '2022-02-16 23:16:14');
INSERT INTO `location_info` VALUES ('5', 'B2', '1010', 'kausar', '2022-02-16 23:16:53');

-- ----------------------------
-- Table structure for `return_info`
-- ----------------------------
DROP TABLE IF EXISTS `return_info`;
CREATE TABLE `return_info` (
  `return_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `issue_id` int(10) DEFAULT NULL,
  `isbn_number` varchar(255) DEFAULT NULL,
  `book_name` varchar(255) DEFAULT NULL,
  `recording_persion_id` varchar(50) DEFAULT NULL,
  `recording_persion_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of return_info
-- ----------------------------
INSERT INTO `return_info` VALUES ('1', '1010', '1', 'isbn-100-100-1000', 'Digital Electronics', '1010', 'kausar', '2022-02-25 18:31:05');
INSERT INTO `return_info` VALUES ('2', 'emp', '4', 'isbn-60-60-5000', 'Artificial Intelligence', 'emp', 'kausar', '2022-02-25 18:42:03');
INSERT INTO `return_info` VALUES ('3', 'emp', '3', 'isbn-50-50-5000', 'Artificial Intelligence', 'emp', 'kausar', '2022-02-25 18:42:19');
INSERT INTO `return_info` VALUES ('4', 'emp', '0', '', 'Artificial Intelligence', 'emp', 'kausar', '2022-02-25 18:43:23');
INSERT INTO `return_info` VALUES ('5', 'employee', '5', 'isbn-3243-3434', 'bangla', 'employee', 'kausar', '2022-02-25 19:12:34');
INSERT INTO `return_info` VALUES ('6', 'employee', '6', 'isbn-3243-3434', 'bangla', 'employee', 'kausar', '2022-02-25 19:14:07');
INSERT INTO `return_info` VALUES ('7', '1010', '7', 'isbn-60-60-5000', 'Artificial Intelligence', '1010', 'kausar', '2022-02-25 19:18:07');
INSERT INTO `return_info` VALUES ('8', '1010', '9', 'isbn-60-60-5000', 'Artificial Intelligence', '1010', 'kausar', '2022-02-25 19:24:27');
INSERT INTO `return_info` VALUES ('9', '1010', '8', 'isbn-50-50-5000', 'Artificial Intelligence', '1010', 'kausar', '2022-02-25 19:24:34');
INSERT INTO `return_info` VALUES ('10', '1010', '10', '1111-2222-3333', 'অসমাপ্ত আত্তজীবনি', '1010', 'kausar', '2022-02-25 19:49:35');
INSERT INTO `return_info` VALUES ('11', '11111', '13', '1111-2222-3333', 'অসমাপ্ত আত্তজীবনি', '11111', 'Atik', '2022-03-01 01:39:38');
INSERT INTO `return_info` VALUES ('12', '11111', '15', 'isbn-20-30-4000', 'Software Engineering', '11111', 'Atik', '2022-03-01 01:49:00');
INSERT INTO `return_info` VALUES ('13', '11111', '14', 'isbn-60-60-5000', 'Artificial Intelligence', '11111', 'Atik', '2022-03-01 01:57:37');
INSERT INTO `return_info` VALUES ('14', '11111', '16', 'isbn-100-100-1000', 'Digital Electronics', '11111', 'Atik', '2022-03-01 02:09:08');
INSERT INTO `return_info` VALUES ('15', '9212', '17', 'isbn-10-40-2000', 'Chemistry', '9212', 'Kausar Ahmed', '2022-03-01 09:22:40');
INSERT INTO `return_info` VALUES ('16', '11111', '20', 'isbn-20-30-4000', 'Software Engineering', '11111', 'Atik', '2022-03-01 22:50:04');
INSERT INTO `return_info` VALUES ('17', '5555', '23', 'isbn-12-12-2022', 'networking', '5555', 'Nasir', '2022-03-01 23:28:51');
INSERT INTO `return_info` VALUES ('18', '5555', '24', 'isbn-50-50-5000', 'Artificial Intelligence', '5555', 'Nasir', '2022-03-02 00:33:37');

-- ----------------------------
-- Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL,
  `user_id` varchar(100) DEFAULT '',
  `email` varchar(255) DEFAULT '',
  `contact_no` varchar(20) DEFAULT '',
  `national_id_number` varchar(20) DEFAULT '',
  `gender` varchar(10) DEFAULT '',
  `date_of_birth` varchar(20) DEFAULT '',
  `department_name` varchar(100) DEFAULT '',
  `designation_name` varchar(100) DEFAULT '',
  `user_type` varchar(20) DEFAULT '',
  `status` varchar(10) DEFAULT '',
  `password` varchar(255) DEFAULT '',
  `confirm_password` varchar(255) DEFAULT '',
  `profile_picture` varchar(255) DEFAULT NULL,
  `recording_person_id` varchar(30) DEFAULT NULL,
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', 'Kausar Ahmed', '9212', 'kausarcse@gmail.com', '+8801738128576', '6877010576', 'male', '1991-01-06', 'ICT', 'Application Developer', 'Admin', 'Active', 'kausar@76', 'kausar@76', 'kausarNewPic.jpg', 'atik', 'atik', '2022-02-28 01:19:03');
INSERT INTO `user_info` VALUES ('3', 'Sajib', '8575', 'sajib@gmail.com', '+8801845725656', '652545857', 'male', '2022-02-03', 'Director', 'Assistant Engineer', 'Admin', 'Active', 'sajib#500', 'sajib#500', 'sajib.jpg', 'atik', 'atik', '2022-02-28 01:22:31');
INSERT INTO `user_info` VALUES ('4', 'Nasir', '5555', 'nasir@gmail.com', '+8801548652454', '6545857545', 'male', '2022-02-03', 'ICT', 'Application Implementer', 'Super User', 'Active', 'nasir@76', 'nasir@76', 'default.png', '9212', 'Kausar Ahmed', '2022-02-28 22:36:53');
INSERT INTO `user_info` VALUES ('5', 'Atik', '11111', 'atik@gmail.com', '+8801546857545', '52458565', 'male', '2022-02-28', 'Finance', 'Assistant Executive', 'User', 'Active', 'atik@766', 'atik@766', 'beprc_logo.png', '9212', 'Kausar Ahmed', '2022-02-28 22:56:36');

-- ----------------------------
-- Table structure for `user_info_old`
-- ----------------------------
DROP TABLE IF EXISTS `user_info_old`;
CREATE TABLE `user_info_old` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL,
  `employee_name` varchar(100) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `confirm_password` varchar(50) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `designation` varchar(30) DEFAULT NULL,
  `country_of_origin` varchar(50) DEFAULT NULL,
  `profile_picture` varchar(130) DEFAULT NULL,
  `recording_person_id` varchar(30) DEFAULT NULL,
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info_old
-- ----------------------------
INSERT INTO `user_info_old` VALUES ('39', 'kausar', 'kausar ahmed', '1010', '12345', '12345', 'Admin', 'Active', 'kausarcse@gmail.com', '07138128576', 'Marketing', 'Application Developer', 'Thailand', 'default.png', '1010', 'kausar', '2022-01-02 01:10:25');
INSERT INTO `user_info_old` VALUES ('40', 'emp', 'kausar ahmed', 'emp', '12345', '12345', 'Admin', 'Active', 'arif@gmail.com', '01738128576', 'Administration', 'Assistant Engineer', 'France', 'default.png', '1010', 'kausar', '2022-01-02 01:10:47');
INSERT INTO `user_info_old` VALUES ('41', 'employee', 'kausar ahmed', 'employee', '12345', '12345', 'User', 'Active', 'kausarcse@gmail.com', '01738128576', 'Director', 'Application Implementer', 'Bangladesh', 'default.png', '1010', 'kausar', '2022-01-02 01:10:06');
INSERT INTO `user_info_old` VALUES ('42', 'Engr. Saddam Hossain (Sajib)', 'Engr. Saddam Hossain (Sajib)', '280049843', '12345', '12345', 'Admin', 'Active', 'hossainsajib.ict@gmail.com', '01863903291', 'ICT', 'Assistant Programmer', 'Bangladesh', 'sajib.jpg', '1010', 'kausar', '2022-02-25 21:36:26');

-- ----------------------------
-- Table structure for `user_login`
-- ----------------------------
DROP TABLE IF EXISTS `user_login`;
CREATE TABLE `user_login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL,
  `user_id` varchar(100) DEFAULT '',
  `email` varchar(255) DEFAULT '',
  `contact_no` varchar(20) DEFAULT '',
  `national_id_number` varchar(20) DEFAULT '',
  `gender` varchar(10) DEFAULT '',
  `date_of_birth` varchar(20) DEFAULT '',
  `department_name` varchar(100) DEFAULT '',
  `designation_name` varchar(100) DEFAULT '',
  `user_type` varchar(20) DEFAULT '',
  `status` varchar(10) DEFAULT '',
  `password` varchar(255) DEFAULT '',
  `confirm_password` varchar(255) DEFAULT '',
  `profile_picture` varchar(255) DEFAULT NULL,
  `recording_person_id` varchar(30) DEFAULT NULL,
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_login
-- ----------------------------
INSERT INTO `user_login` VALUES ('1', 'Kausar Ahmed', '9212', 'kausarcse@gmail.com', '+8801738128576', '6877010576', 'male', '1991-01-06', 'ICT', 'Application Developer', 'Admin', 'Active', 'kausar@76', 'kausar@76', 'kausarNewPic.jpg', 'atik', 'atik', '2022-02-28 01:19:03');
INSERT INTO `user_login` VALUES ('3', 'Sajib', '8575', 'sajib@gmail.com', '+8801845725656', '652545857', 'male', '2022-02-03', 'Director', 'Assistant Engineer', 'Admin', 'Active', 'sajib#500', 'sajib#500', 'sajib.jpg', 'atik', 'atik', '2022-02-28 01:22:31');
INSERT INTO `user_login` VALUES ('4', 'Nasir', '5555', 'nasir@gmail.com', '+8801548652454', '6545857545', 'male', '2022-02-03', 'ICT', 'Application Implementer', 'Super User', 'Active', 'nasir@76', 'nasir@76', 'default.png', '9212', 'Kausar Ahmed', '2022-02-28 22:36:53');
INSERT INTO `user_login` VALUES ('5', 'Atik', '11111', 'atik@gmail.com', '+8801546857545', '52458565', 'male', '2022-02-28', 'Finance', 'Assistant Executive', 'User', 'Active', 'atik@766', 'atik@766', 'beprc_logo.png', '9212', 'Kausar Ahmed', '2022-02-28 22:56:36');

-- ----------------------------
-- Table structure for `user_login_old`
-- ----------------------------
DROP TABLE IF EXISTS `user_login_old`;
CREATE TABLE `user_login_old` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact_no` varchar(25) NOT NULL,
  `department` varchar(30) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `country_of_origin` varchar(50) DEFAULT NULL,
  `user_type` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `recording_person_id` varchar(30) NOT NULL,
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_login_old
-- ----------------------------
INSERT INTO `user_login_old` VALUES ('93', 'emp', 'emp', 'kausar ahmed', '', '', '', '12345', 'arif@gmail.com', '01738128576', 'Administration', 'Assistant Engineer', 'France', 'Admin', 'Active', 'default.png', '1010', 'kausar', '2022-01-02 01:10:47');
INSERT INTO `user_login_old` VALUES ('92', '1010', 'kausar', 'kausar ahmed', '', '', '', '12345', 'kausarcse@gmail.com', '07138128576', 'Marketing', 'Application Developer', 'Thailand', 'Admin', 'Active', 'default.png', '1010', 'kausar', '2022-01-02 01:10:25');
INSERT INTO `user_login_old` VALUES ('94', 'employee', 'employee', 'kausar ahmed', '', '', '', '12345', 'kausarcse@gmail.com', '01738128576', 'Director', 'Application Implementer', 'Bangladesh', 'User', 'Active', 'default.png', '1010', 'kausar', '2022-01-02 01:10:06');
INSERT INTO `user_login_old` VALUES ('95', '280049843', 'Engr. Saddam Hossain (Sajib)', 'Engr. Saddam Hossain (Sajib)', '', '', '', '12345', 'hossainsajib.ict@gmail.com', '01863903291', 'ICT', 'Assistant Programmer', 'Bangladesh', 'Admin', 'Active', 'sajib.jpg', '1010', 'kausar', '2022-02-25 21:36:26');

-- ----------------------------
-- View structure for `final`
-- ----------------------------
DROP VIEW IF EXISTS `final`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `final` AS select `x`.`author_id` AS `author_id`,`x`.`author_name` AS `author_name`,`x`.`book_name` AS `book_name`,`x`.`loc_id` AS `loc_id`,`l`.`location_name` AS `location_name` from ((select `a`.`author_id` AS `author_id`,`a`.`author_name` AS `author_name`,`b`.`book_name` AS `book_name`,`b`.`loc_id` AS `loc_id` from (`lms`.`book_list` `b` join `lms`.`author` `a` on(`b`.`author_id` = `a`.`author_id`))) `x` join `lms`.`location_info` `l` on(`x`.`loc_id` = `l`.`loc_id`));

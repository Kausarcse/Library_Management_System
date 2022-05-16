/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : library_management_system

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2022-05-15 23:36:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `author`
-- ----------------------------
DROP TABLE IF EXISTS `author`;
CREATE TABLE `author` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `author_id` varchar(20) DEFAULT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `recording_person_id` varchar(50) DEFAULT NULL,
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of author
-- ----------------------------
INSERT INTO `author` VALUES ('1', 'auth_1', 'Alamgir Kabir', '280049843', 'Admin_ICT', '2022-03-04 23:39:56');
INSERT INTO `author` VALUES ('2', 'auth_2', 'Dr. Mohammed Hannan', '280049843', 'Admin_ICT', '2022-03-04 23:39:56');
INSERT INTO `author` VALUES ('3', 'auth_3', 'Jacob F. Field', '280049843', 'Admin_ICT', '2022-03-04 23:39:56');
INSERT INTO `author` VALUES ('4', 'auth_4', 'Jahanara Imam', '280049843', 'Admin_ICT', '2022-03-04 23:39:56');
INSERT INTO `author` VALUES ('5', 'auth_5', 'KHASHRUZZAMAN CHOUDHURY', '280049843', 'Admin_ICT', '2022-03-04 23:39:56');
INSERT INTO `author` VALUES ('6', 'auth_6', 'Muntassir Momoon/ Mahbubar Rahman', '280049843', 'Admin_ICT', '2022-03-04 23:39:56');
INSERT INTO `author` VALUES ('7', 'auth_7', 'Nuran Nabi', '280049843', 'Admin_ICT', '2022-03-04 23:39:56');
INSERT INTO `author` VALUES ('8', 'auth_8', 'Surma Zahid', '280049843', 'Admin_ICT', '2022-03-04 23:39:56');
INSERT INTO `author` VALUES ('9', 'auth_9', 'Trans. Fakrul Alam', '280049843', 'Admin_ICT', '2022-03-04 23:39:56');
INSERT INTO `author` VALUES ('10', 'auth_10', 'Zahid Hossain', '280049843', 'Admin_ICT', '2022-03-04 23:39:56');
INSERT INTO `author` VALUES ('11', 'auth_11', 'অজয় দাশগুপ্ত', '280049843', 'Admin_ICT', '2022-03-04 23:39:56');
INSERT INTO `author` VALUES ('12', 'auth_12', 'অধাপক ড. জাকিয়া পারভিন', '280049843', 'Admin_ICT', '2022-03-04 23:39:56');
INSERT INTO `author` VALUES ('13', 'auth_13', 'অধ্যক্ষ গোলশান আরা বেগম', '280049843', 'Admin_ICT', '2022-03-04 23:39:56');
INSERT INTO `author` VALUES ('14', 'auth_14', 'অধ্যাপক অজয় রায় ও শামসুজ্জামান খান', '280049843', 'Admin_ICT', '2022-03-04 23:39:56');
INSERT INTO `author` VALUES ('15', 'auth_15', 'অধ্যাপক আবু সাইদ', '280049843', 'Admin_ICT', '2022-03-04 23:39:56');
INSERT INTO `author` VALUES ('16', 'auth_16', 'অধ্যাপক ড. অরূপরতন চৌধুরী', '280049843', 'Admin_ICT', '2022-03-04 23:39:56');
INSERT INTO `author` VALUES ('17', 'auth_17', 'অধ্যাপক ড. মিজানুর রহমান', '280049843', 'Admin_ICT', '2022-03-04 23:39:56');
INSERT INTO `author` VALUES ('18', 'auth_18', 'অনুপম হায়াৎ', '280049843', 'Admin_ICT', '2022-03-04 23:39:56');
INSERT INTO `author` VALUES ('19', 'auth_19', 'আইরিন খান', '280049843', 'Admin_ICT', '2022-03-04 23:39:57');
INSERT INTO `author` VALUES ('20', 'auth_20', 'আতিউর রহমান', '280049843', 'Admin_ICT', '2022-03-04 23:39:57');
INSERT INTO `author` VALUES ('21', 'auth_21', 'আনিসুজ্জামান', '280049843', 'Admin_ICT', '2022-03-04 23:39:57');
INSERT INTO `author` VALUES ('22', 'auth_22', 'আনিসুল হক', '280049843', 'Admin_ICT', '2022-03-04 23:39:57');
INSERT INTO `author` VALUES ('23', 'auth_23', 'আনু মাহমুদ', '280049843', 'Admin_ICT', '2022-03-04 23:39:57');
INSERT INTO `author` VALUES ('24', 'auth_24', 'আবদুল আউয়াল ভূঞা', '280049843', 'Admin_ICT', '2022-03-04 23:39:57');
INSERT INTO `author` VALUES ('25', 'auth_25', 'আবদুল গাফফার চৌধুরী', '280049843', 'Admin_ICT', '2022-03-04 23:39:57');
INSERT INTO `author` VALUES ('26', 'auth_26', 'আবু জাফর জব্বার', '280049843', 'Admin_ICT', '2022-03-04 23:39:57');
INSERT INTO `author` VALUES ('27', 'auth_27', 'আবু মোঃ দেলোয়ার হোসেন', '280049843', 'Admin_ICT', '2022-03-04 23:39:57');
INSERT INTO `author` VALUES ('28', 'auth_28', 'আবু সাইয়িদ', '280049843', 'Admin_ICT', '2022-03-04 23:39:57');
INSERT INTO `author` VALUES ('29', 'auth_29', 'আবুল কাইয়ুম', '280049843', 'Admin_ICT', '2022-03-04 23:39:57');
INSERT INTO `author` VALUES ('30', 'auth_30', 'আবুল কাশেম', '280049843', 'Admin_ICT', '2022-03-04 23:39:57');
INSERT INTO `author` VALUES ('31', 'auth_31', 'আবুল ফজল', '280049843', 'Admin_ICT', '2022-03-04 23:39:57');
INSERT INTO `author` VALUES ('32', 'auth_32', 'আবুল বারাকাত', '280049843', 'Admin_ICT', '2022-03-04 23:39:57');
INSERT INTO `author` VALUES ('33', 'auth_33', 'আবুল মাল আব্দুল মুহিত', '280049843', 'Admin_ICT', '2022-03-04 23:39:57');
INSERT INTO `author` VALUES ('34', 'auth_34', 'আবুল হাসান', '280049843', 'Admin_ICT', '2022-03-04 23:39:57');
INSERT INTO `author` VALUES ('35', 'auth_35', 'আব্দুল গাফফার চৌধুরী', '280049843', 'Admin_ICT', '2022-03-04 23:39:57');
INSERT INTO `author` VALUES ('36', 'auth_36', 'আব্দুল মতিন', '280049843', 'Admin_ICT', '2022-03-04 23:39:57');
INSERT INTO `author` VALUES ('37', 'auth_37', 'আরাফাত তানিম', '280049843', 'Admin_ICT', '2022-03-04 23:39:58');
INSERT INTO `author` VALUES ('38', 'auth_38', 'আসলাম সানি', '280049843', 'Admin_ICT', '2022-03-04 23:39:58');
INSERT INTO `author` VALUES ('39', 'auth_39', 'আসলাম সানী ম.আই রহমান', '280049843', 'Admin_ICT', '2022-03-04 23:39:58');
INSERT INTO `author` VALUES ('40', 'auth_40', 'আসাদ চৌধুরী', '280049843', 'Admin_ICT', '2022-03-04 23:39:58');
INSERT INTO `author` VALUES ('41', 'auth_41', 'আসাদুজ্জামান আসাদ', '280049843', 'Admin_ICT', '2022-03-04 23:39:58');
INSERT INTO `author` VALUES ('42', 'auth_42', 'আহমদ রফিক', '280049843', 'Admin_ICT', '2022-03-04 23:39:58');
INSERT INTO `author` VALUES ('43', 'auth_43', 'আহমেদ ফিরজ', '280049843', 'Admin_ICT', '2022-03-04 23:39:58');
INSERT INTO `author` VALUES ('44', 'auth_44', 'ইমদাদুল হক মিলন', '280049843', 'Admin_ICT', '2022-03-04 23:39:58');
INSERT INTO `author` VALUES ('45', 'auth_45', 'ইয়অসেফ ওসমান', '280049843', 'Admin_ICT', '2022-03-04 23:39:58');
INSERT INTO `author` VALUES ('46', 'auth_46', 'এ.কে. আব্দুল মোমেন', '280049843', 'Admin_ICT', '2022-03-04 23:39:58');
INSERT INTO `author` VALUES ('47', 'auth_47', 'এ.কে. মোহাম্মদ আলী শিকদার পিএসসি (অবঃ)', '280049843', 'Admin_ICT', '2022-03-04 23:39:58');
INSERT INTO `author` VALUES ('48', 'auth_48', 'এ.কে.এম শাহনেওয়াজ', '280049843', 'Admin_ICT', '2022-03-04 23:39:58');
INSERT INTO `author` VALUES ('49', 'auth_49', 'এইচ.টি. ইমাম', '280049843', 'Admin_ICT', '2022-03-04 23:39:58');
INSERT INTO `author` VALUES ('50', 'auth_50', 'এম.আ. আলীম', '280049843', 'Admin_ICT', '2022-03-04 23:39:58');
INSERT INTO `author` VALUES ('51', 'auth_51', 'এম.আর. আখতার মুকুল', '280049843', 'Admin_ICT', '2022-03-04 23:39:58');
INSERT INTO `author` VALUES ('52', 'auth_52', 'এম.আর. ইসলাম', '280049843', 'Admin_ICT', '2022-03-04 23:39:58');
INSERT INTO `author` VALUES ('53', 'auth_53', 'এস.এ. করিম', '280049843', 'Admin_ICT', '2022-03-04 23:39:58');
INSERT INTO `author` VALUES ('54', 'auth_54', 'এস.এম. আব্রাহাম লিংকন', '280049843', 'Admin_ICT', '2022-03-04 23:39:58');
INSERT INTO `author` VALUES ('55', 'auth_55', 'এস.এম. শহিদুল্লাহ', '280049843', 'Admin_ICT', '2022-03-04 23:39:58');
INSERT INTO `author` VALUES ('56', 'auth_56', 'ওবায়দুল কাদের', '280049843', 'Admin_ICT', '2022-03-04 23:39:58');
INSERT INTO `author` VALUES ('57', 'auth_57', 'কবীর চৌধুরী', '280049843', 'Admin_ICT', '2022-03-04 23:39:59');
INSERT INTO `author` VALUES ('58', 'auth_58', 'কাইজার চৌধুরী', '280049843', 'Admin_ICT', '2022-03-04 23:39:59');
INSERT INTO `author` VALUES ('59', 'auth_59', 'কাজী সাজ্জাদ আলী জহির', '280049843', 'Admin_ICT', '2022-03-04 23:39:59');
INSERT INTO `author` VALUES ('60', 'auth_60', 'কাজী হাসান', '280049843', 'Admin_ICT', '2022-03-04 23:39:59');
INSERT INTO `author` VALUES ('61', 'auth_61', 'কামরুল হক', '280049843', 'Admin_ICT', '2022-03-04 23:39:59');
INSERT INTO `author` VALUES ('62', 'auth_62', 'কামাল চৌধুরী', '280049843', 'Admin_ICT', '2022-03-04 23:39:59');
INSERT INTO `author` VALUES ('63', 'auth_63', 'কৃত্তিবাস ওঝা', '280049843', 'Admin_ICT', '2022-03-04 23:39:59');
INSERT INTO `author` VALUES ('64', 'auth_64', 'খায়রুল বাসার', '280049843', 'Admin_ICT', '2022-03-04 23:39:59');
INSERT INTO `author` VALUES ('65', 'auth_65', 'খালেক বিন জয়েনউদদীন', '280049843', 'Admin_ICT', '2022-03-04 23:39:59');
INSERT INTO `author` VALUES ('66', 'auth_66', 'গোবিন্দ হালদার', '280049843', 'Admin_ICT', '2022-03-04 23:39:59');
INSERT INTO `author` VALUES ('67', 'auth_67', 'গোলাম কুদ্দুছ', '280049843', 'Admin_ICT', '2022-03-04 23:39:59');
INSERT INTO `author` VALUES ('68', 'auth_68', 'জালাল ফিরোজ', '280049843', 'Admin_ICT', '2022-03-04 23:39:59');
INSERT INTO `author` VALUES ('69', 'auth_69', 'জাহানারা ইমাম', '280049843', 'Admin_ICT', '2022-03-04 23:39:59');
INSERT INTO `author` VALUES ('70', 'auth_70', 'জিল্লুর রহমান সিদ্দিকী', '280049843', 'Admin_ICT', '2022-03-04 23:39:59');
INSERT INTO `author` VALUES ('71', 'auth_71', 'ড. আলী আসগর', '280049843', 'Admin_ICT', '2022-03-04 23:39:59');
INSERT INTO `author` VALUES ('72', 'auth_72', 'ড. নুরুন নবী', '280049843', 'Admin_ICT', '2022-03-04 23:40:00');
INSERT INTO `author` VALUES ('73', 'auth_73', 'ড. মোঃ আশিকুর রহমান', '280049843', 'Admin_ICT', '2022-03-04 23:40:00');
INSERT INTO `author` VALUES ('74', 'auth_74', 'ড. মোহাম্মদ ফরাসউদ্দিন', '280049843', 'Admin_ICT', '2022-03-04 23:40:00');
INSERT INTO `author` VALUES ('75', 'auth_75', 'ড. শামসুল আলম সাঈদ', '280049843', 'Admin_ICT', '2022-03-04 23:40:00');
INSERT INTO `author` VALUES ('76', 'auth_76', 'ডঃ তৌফিক-ই- ইলাহি চৌধুরী, বীর-বিক্রম', '280049843', 'Admin_ICT', '2022-03-04 23:40:00');
INSERT INTO `author` VALUES ('77', 'auth_77', 'ডা. এস. এ মালেক', '280049843', 'Admin_ICT', '2022-03-04 23:40:00');
INSERT INTO `author` VALUES ('78', 'auth_78', 'তপন পালিত', '280049843', 'Admin_ICT', '2022-03-04 23:40:00');
INSERT INTO `author` VALUES ('79', 'auth_79', 'তাজুল মোহাম্মদ', '280049843', 'Admin_ICT', '2022-03-04 23:40:00');
INSERT INTO `author` VALUES ('80', 'auth_80', 'তারেক মাহমুদ', '280049843', 'Admin_ICT', '2022-03-04 23:40:00');
INSERT INTO `author` VALUES ('81', 'auth_81', 'তোফায়েল আহমেদ', '280049843', 'Admin_ICT', '2022-03-04 23:40:00');
INSERT INTO `author` VALUES ('82', 'auth_82', 'দিব্যদ্যুতি সরকার', '280049843', 'Admin_ICT', '2022-03-04 23:40:00');
INSERT INTO `author` VALUES ('83', 'auth_83', 'দীপক চৌধুরী', '280049843', 'Admin_ICT', '2022-03-04 23:40:00');
INSERT INTO `author` VALUES ('84', 'auth_84', 'দেবদুলাল বঙ্গোপধ্যায়', '280049843', 'Admin_ICT', '2022-03-04 23:40:00');
INSERT INTO `author` VALUES ('85', 'auth_85', 'ধীরেন সোম', '280049843', 'Admin_ICT', '2022-03-04 23:40:00');
INSERT INTO `author` VALUES ('86', 'auth_86', 'নজরুল ইসলাম জামাল', '280049843', 'Admin_ICT', '2022-03-04 23:40:00');
INSERT INTO `author` VALUES ('87', 'auth_87', 'নাছিমা বেগম', '280049843', 'Admin_ICT', '2022-03-04 23:40:00');
INSERT INTO `author` VALUES ('88', 'auth_88', 'নাজনীন হক মিমি', '280049843', 'Admin_ICT', '2022-03-04 23:40:01');
INSERT INTO `author` VALUES ('89', 'auth_89', 'নাফিজ আশরাফ', '280049843', 'Admin_ICT', '2022-03-04 23:40:01');
INSERT INTO `author` VALUES ('90', 'auth_90', 'নির্মলেন্দু গুণ', '280049843', 'Admin_ICT', '2022-03-04 23:40:01');
INSERT INTO `author` VALUES ('91', 'auth_91', 'নীলিমা ইব্রাহিম', '280049843', 'Admin_ICT', '2022-03-04 23:40:01');
INSERT INTO `author` VALUES ('92', 'auth_92', 'নুরুল ইসলাম নাহিদ', '280049843', 'Admin_ICT', '2022-03-04 23:40:01');
INSERT INTO `author` VALUES ('93', 'auth_93', 'নূহ-উল-আলম লেনিন', '280049843', 'Admin_ICT', '2022-03-04 23:40:01');
INSERT INTO `author` VALUES ('94', 'auth_94', 'পান্না কায়সার', '280049843', 'Admin_ICT', '2022-03-04 23:40:01');
INSERT INTO `author` VALUES ('95', 'auth_95', 'পিয়াস মজিদ', '280049843', 'Admin_ICT', '2022-03-04 23:40:01');
INSERT INTO `author` VALUES ('96', 'auth_96', 'পুরবী বসু', '280049843', 'Admin_ICT', '2022-03-04 23:40:01');
INSERT INTO `author` VALUES ('97', 'auth_97', 'প্রফেসর সালাউদ্দিন আহমদ', '280049843', 'Admin_ICT', '2022-03-04 23:40:01');
INSERT INTO `author` VALUES ('98', 'auth_98', 'ফকির আলমগীর', '280049843', 'Admin_ICT', '2022-03-04 23:40:01');
INSERT INTO `author` VALUES ('99', 'auth_99', 'ফজলুর রহমান খান', '280049843', 'Admin_ICT', '2022-03-04 23:40:01');
INSERT INTO `author` VALUES ('100', 'auth_100', 'ফজলে আহমেদ', '280049843', 'Admin_ICT', '2022-03-04 23:40:01');
INSERT INTO `author` VALUES ('101', 'auth_101', 'ফতেহ আখতার', '280049843', 'Admin_ICT', '2022-03-04 23:40:01');
INSERT INTO `author` VALUES ('102', 'auth_102', 'ফারুক চৌধুরী', '280049843', 'Admin_ICT', '2022-03-04 23:40:01');
INSERT INTO `author` VALUES ('103', 'auth_103', 'বহুমাত্রিক বিশ্লেষন', '280049843', 'Admin_ICT', '2022-03-04 23:40:01');
INSERT INTO `author` VALUES ('104', 'auth_104', 'বাশার খান। জাহিদ হাসান।', '280049843', 'Admin_ICT', '2022-03-04 23:40:01');
INSERT INTO `author` VALUES ('105', 'auth_105', 'বাহালুল মজনুন চুন্নু', '280049843', 'Admin_ICT', '2022-03-04 23:40:01');
INSERT INTO `author` VALUES ('106', 'auth_106', 'বিদ্যা প্রকাশ', '280049843', 'Admin_ICT', '2022-03-04 23:40:01');
INSERT INTO `author` VALUES ('107', 'auth_107', 'বীর চৌধুরী', '280049843', 'Admin_ICT', '2022-03-04 23:40:01');
INSERT INTO `author` VALUES ('108', 'auth_108', 'বেগম মুশতারী শফী', '280049843', 'Admin_ICT', '2022-03-04 23:40:01');
INSERT INTO `author` VALUES ('109', 'auth_109', 'বেবী মওদুদ', '280049843', 'Admin_ICT', '2022-03-04 23:40:01');
INSERT INTO `author` VALUES ('110', 'auth_110', 'ভবেশ রায়', '280049843', 'Admin_ICT', '2022-03-04 23:40:01');
INSERT INTO `author` VALUES ('111', 'auth_111', 'মঈনুল হক চৌধুরী', '280049843', 'Admin_ICT', '2022-03-04 23:40:01');
INSERT INTO `author` VALUES ('112', 'auth_112', 'মওলানা আবদুল আঊয়াল', '280049843', 'Admin_ICT', '2022-03-04 23:40:01');
INSERT INTO `author` VALUES ('113', 'auth_113', 'মনি হায়দার', '280049843', 'Admin_ICT', '2022-03-04 23:40:02');
INSERT INTO `author` VALUES ('114', 'auth_114', 'মফিদুল হক', '280049843', 'Admin_ICT', '2022-03-04 23:40:02');
INSERT INTO `author` VALUES ('115', 'auth_115', 'মমতাজউদ্দিন আহম্মেদ', '280049843', 'Admin_ICT', '2022-03-04 23:40:02');
INSERT INTO `author` VALUES ('116', 'auth_116', 'মরেশ দেবনাথ', '280049843', 'Admin_ICT', '2022-03-04 23:40:02');
INSERT INTO `author` VALUES ('117', 'auth_117', 'মসীম সাহা মিলন সব্যসাচী', '280049843', 'Admin_ICT', '2022-03-04 23:40:02');
INSERT INTO `author` VALUES ('118', 'auth_118', 'মহিউদ্দিন আহমেদ খান', '280049843', 'Admin_ICT', '2022-03-04 23:40:02');
INSERT INTO `author` VALUES ('119', 'auth_119', 'মাজহারুল ইসলাম', '280049843', 'Admin_ICT', '2022-03-04 23:40:02');
INSERT INTO `author` VALUES ('120', 'auth_120', 'মানোয়েম সরকার', '280049843', 'Admin_ICT', '2022-03-04 23:40:02');
INSERT INTO `author` VALUES ('121', 'auth_121', 'মাহফুজুর রহমান', '280049843', 'Admin_ICT', '2022-03-04 23:40:02');
INSERT INTO `author` VALUES ('122', 'auth_122', 'মাহবুব আজাদ', '280049843', 'Admin_ICT', '2022-03-04 23:40:02');
INSERT INTO `author` VALUES ('123', 'auth_123', 'মাহবুব আলম', '280049843', 'Admin_ICT', '2022-03-04 23:40:02');
INSERT INTO `author` VALUES ('124', 'auth_124', 'মিছবাহ উদ্দিন', '280049843', 'Admin_ICT', '2022-03-04 23:40:02');
INSERT INTO `author` VALUES ('125', 'auth_125', 'মিজানুর রহমান খান', '280049843', 'Admin_ICT', '2022-03-04 23:40:02');
INSERT INTO `author` VALUES ('126', 'auth_126', 'মিজানুর রহমান মিজান', '280049843', 'Admin_ICT', '2022-03-04 23:40:02');
INSERT INTO `author` VALUES ('127', 'auth_127', 'মিথুন', '280049843', 'Admin_ICT', '2022-03-04 23:40:02');
INSERT INTO `author` VALUES ('128', 'auth_128', 'মিনার মনসুর/দিলওয়ার চৌধুরী', '280049843', 'Admin_ICT', '2022-03-04 23:40:02');
INSERT INTO `author` VALUES ('129', 'auth_129', 'মিলান নাথ', '280049843', 'Admin_ICT', '2022-03-04 23:40:02');
INSERT INTO `author` VALUES ('130', 'auth_130', 'মিল্টন বিশ্বাস', '280049843', 'Admin_ICT', '2022-03-04 23:40:02');
INSERT INTO `author` VALUES ('131', 'auth_131', 'মীর জামাল উদ্দিন', '280049843', 'Admin_ICT', '2022-03-04 23:40:02');
INSERT INTO `author` VALUES ('132', 'auth_132', 'মুনতাসীর মামুন', '280049843', 'Admin_ICT', '2022-03-04 23:40:02');
INSERT INTO `author` VALUES ('133', 'auth_133', 'মুর্শিদা বিনতে রহমান', '280049843', 'Admin_ICT', '2022-03-04 23:40:02');
INSERT INTO `author` VALUES ('134', 'auth_134', 'মুস্তফা সারওয়ার', '280049843', 'Admin_ICT', '2022-03-04 23:40:02');
INSERT INTO `author` VALUES ('135', 'auth_135', 'মুহম্মদ আনোয়ার আলি', '280049843', 'Admin_ICT', '2022-03-04 23:40:03');
INSERT INTO `author` VALUES ('136', 'auth_136', 'মুহাম্মদ মোজাম্মেল হক', '280049843', 'Admin_ICT', '2022-03-04 23:40:03');
INSERT INTO `author` VALUES ('137', 'auth_137', 'মুহাম্মদ হাবীবুর রহমান', '280049843', 'Admin_ICT', '2022-03-04 23:40:03');
INSERT INTO `author` VALUES ('138', 'auth_138', 'মে সায়েম সরকার। আসলাম সানী', '280049843', 'Admin_ICT', '2022-03-04 23:40:03');
INSERT INTO `author` VALUES ('139', 'auth_139', 'মেজর কামরুল হাসান ভূইয়া', '280049843', 'Admin_ICT', '2022-03-04 23:40:03');
INSERT INTO `author` VALUES ('140', 'auth_140', 'মেজর রফিকুল ইসলাম পিএসসি', '280049843', 'Admin_ICT', '2022-03-04 23:40:03');
INSERT INTO `author` VALUES ('141', 'auth_141', 'মো. শাহাদাৎ হোসেন', '280049843', 'Admin_ICT', '2022-03-04 23:40:03');
INSERT INTO `author` VALUES ('142', 'auth_142', 'মোঃ ইদ্রিস আলী ইমন', '280049843', 'Admin_ICT', '2022-03-04 23:40:03');
INSERT INTO `author` VALUES ('143', 'auth_143', 'মোঃ মনিরুল ইসলাম আলমগীর', '280049843', 'Admin_ICT', '2022-03-04 23:40:03');
INSERT INTO `author` VALUES ('144', 'auth_144', 'মোনায়েম সরকার', '280049843', 'Admin_ICT', '2022-03-04 23:40:03');
INSERT INTO `author` VALUES ('145', 'auth_145', 'মোশাররফ হোসেন ভূঞা', '280049843', 'Admin_ICT', '2022-03-04 23:40:03');
INSERT INTO `author` VALUES ('146', 'auth_146', 'মোস্তফা হোসেইন', '280049843', 'Admin_ICT', '2022-03-04 23:40:03');
INSERT INTO `author` VALUES ('147', 'auth_147', 'মোহন চৌধুরী', '280049843', 'Admin_ICT', '2022-03-04 23:40:03');
INSERT INTO `author` VALUES ('148', 'auth_148', 'মোহাম্মদ আমিন', '280049843', 'Admin_ICT', '2022-03-04 23:40:03');
INSERT INTO `author` VALUES ('149', 'auth_149', 'মোহাম্মদ আলী খান', '280049843', 'Admin_ICT', '2022-03-04 23:40:03');
INSERT INTO `author` VALUES ('150', 'auth_150', 'মোহাম্মদ জিল্লুর রহমান', '280049843', 'Admin_ICT', '2022-03-04 23:40:03');
INSERT INTO `author` VALUES ('151', 'auth_151', 'মোহাম্মদ মুসলিম উদ্দিন', '280049843', 'Admin_ICT', '2022-03-04 23:40:03');
INSERT INTO `author` VALUES ('152', 'auth_152', 'মোহাম্মদ হান্নান', '280049843', 'Admin_ICT', '2022-03-04 23:40:03');
INSERT INTO `author` VALUES ('153', 'auth_153', 'র. আ. ম. উবায়দুল মোকতাদির চৌধুরী', '280049843', 'Admin_ICT', '2022-03-04 23:40:03');
INSERT INTO `author` VALUES ('154', 'auth_154', 'রফিকুর রশীদ', '280049843', 'Admin_ICT', '2022-03-04 23:40:04');
INSERT INTO `author` VALUES ('155', 'auth_155', 'রফিকুল ইসলাম, বীর উত্তম', '280049843', 'Admin_ICT', '2022-03-04 23:40:04');
INSERT INTO `author` VALUES ('156', 'auth_156', 'রবীন্দ্রনাথ ত্রিবেদী', '280049843', 'Admin_ICT', '2022-03-04 23:40:04');
INSERT INTO `author` VALUES ('157', 'auth_157', 'রশীদ হায়দার', '280049843', 'Admin_ICT', '2022-03-04 23:40:04');
INSERT INTO `author` VALUES ('158', 'auth_158', 'রাশেদুল ইসলাম বিপ্লব', '280049843', 'Admin_ICT', '2022-03-04 23:40:04');
INSERT INTO `author` VALUES ('159', 'auth_159', 'রুহুল আমিন বাবুল', '280049843', 'Admin_ICT', '2022-03-04 23:40:04');
INSERT INTO `author` VALUES ('160', 'auth_160', 'রেজা সেলিম', '280049843', 'Admin_ICT', '2022-03-04 23:40:04');
INSERT INTO `author` VALUES ('161', 'auth_161', 'লায়লা আফরোজ', '280049843', 'Admin_ICT', '2022-03-04 23:40:04');
INSERT INTO `author` VALUES ('162', 'auth_162', 'লুৎফর রহমান রিটন', '280049843', 'Admin_ICT', '2022-03-04 23:40:04');
INSERT INTO `author` VALUES ('163', 'auth_163', 'শওকত ওসমান', '280049843', 'Admin_ICT', '2022-03-04 23:40:04');
INSERT INTO `author` VALUES ('164', 'auth_164', 'শামসুজ্জামান খান', '280049843', 'Admin_ICT', '2022-03-04 23:40:04');
INSERT INTO `author` VALUES ('165', 'auth_165', 'শামসুজ্জামান শামস', '280049843', 'Admin_ICT', '2022-03-04 23:40:04');
INSERT INTO `author` VALUES ('166', 'auth_166', 'শামসুল আরেফীন', '280049843', 'Admin_ICT', '2022-03-04 23:40:04');
INSERT INTO `author` VALUES ('167', 'auth_167', 'শামীমা শাহীন', '280049843', 'Admin_ICT', '2022-03-04 23:40:04');
INSERT INTO `author` VALUES ('168', 'auth_168', 'শারমিন জিকরিয়া', '280049843', 'Admin_ICT', '2022-03-04 23:40:04');
INSERT INTO `author` VALUES ('169', 'auth_169', 'শাহজাহান কিবরিয়া', '280049843', 'Admin_ICT', '2022-03-04 23:40:04');
INSERT INTO `author` VALUES ('170', 'auth_170', 'শাহরিয়ার কবির', '280049843', 'Admin_ICT', '2022-03-04 23:40:04');
INSERT INTO `author` VALUES ('171', 'auth_171', 'শাহেদ মন্তাজ ও কুতুব আজাদ', '280049843', 'Admin_ICT', '2022-03-04 23:40:04');
INSERT INTO `author` VALUES ('172', 'auth_172', 'শিরু বাঙালি', '280049843', 'Admin_ICT', '2022-03-04 23:40:04');
INSERT INTO `author` VALUES ('173', 'auth_173', 'শেখ আবদুল হক চাষী', '280049843', 'Admin_ICT', '2022-03-04 23:40:04');
INSERT INTO `author` VALUES ('174', 'auth_174', 'শেখ মুজিবুর রহমান', '280049843', 'Admin_ICT', '2022-03-04 23:40:04');
INSERT INTO `author` VALUES ('175', 'auth_175', 'শেখ মোহাম্মদ ইব্রাহীম', '280049843', 'Admin_ICT', '2022-03-04 23:40:04');
INSERT INTO `author` VALUES ('176', 'auth_176', 'শেখ হাসিনা', '280049843', 'Admin_ICT', '2022-03-04 23:40:04');
INSERT INTO `author` VALUES ('177', 'auth_177', 'শ্যামলী ঘোষ', '280049843', 'Admin_ICT', '2022-03-04 23:40:04');
INSERT INTO `author` VALUES ('178', 'auth_178', 'সত্যজিৎ রায় মজুমদার', '280049843', 'Admin_ICT', '2022-03-04 23:40:05');
INSERT INTO `author` VALUES ('179', 'auth_179', 'সমীর কুমার বিশ্বাস', '280049843', 'Admin_ICT', '2022-03-04 23:40:05');
INSERT INTO `author` VALUES ('180', 'auth_180', 'সরদার জয়েনউদ্দীন', '280049843', 'Admin_ICT', '2022-03-04 23:40:05');
INSERT INTO `author` VALUES ('181', 'auth_181', 'সরলানন্দসেন', '280049843', 'Admin_ICT', '2022-03-04 23:40:05');
INSERT INTO `author` VALUES ('182', 'auth_182', 'সাইফুল্লাহ নবীব', '280049843', 'Admin_ICT', '2022-03-04 23:40:05');
INSERT INTO `author` VALUES ('183', 'auth_183', 'সাইফুল্লাহ মাহমুদ দুলাল সম্পাদিত', '280049843', 'Admin_ICT', '2022-03-04 23:40:05');
INSERT INTO `author` VALUES ('184', 'auth_184', 'সাইমন জাকারিয়া', '280049843', 'Admin_ICT', '2022-03-04 23:40:05');
INSERT INTO `author` VALUES ('185', 'auth_185', 'সাজেদুল আউয়াল', '280049843', 'Admin_ICT', '2022-03-04 23:40:05');
INSERT INTO `author` VALUES ('186', 'auth_186', 'সাদত আল মাহমুদ', '280049843', 'Admin_ICT', '2022-03-04 23:40:05');
INSERT INTO `author` VALUES ('187', 'auth_187', 'সামসুজ্জামান খান', '280049843', 'Admin_ICT', '2022-03-04 23:40:05');
INSERT INTO `author` VALUES ('188', 'auth_188', 'সাহিদা বেগম', '280049843', 'Admin_ICT', '2022-03-04 23:40:05');
INSERT INTO `author` VALUES ('189', 'auth_189', 'সাহেদ মন্তাজ কুতুব আজাদ', '280049843', 'Admin_ICT', '2022-03-04 23:40:05');
INSERT INTO `author` VALUES ('190', 'auth_190', 'সিকদার আবুল বাশার', '280049843', 'Admin_ICT', '2022-03-04 23:40:05');
INSERT INTO `author` VALUES ('191', 'auth_191', 'সিমিল হোসেন রিমি', '280049843', 'Admin_ICT', '2022-03-04 23:40:05');
INSERT INTO `author` VALUES ('192', 'auth_192', 'সুব্রত বড়ুয়া', '280049843', 'Admin_ICT', '2022-03-04 23:40:05');
INSERT INTO `author` VALUES ('193', 'auth_193', 'সুভাষ সিংহ রায়', '280049843', 'Admin_ICT', '2022-03-04 23:40:05');
INSERT INTO `author` VALUES ('194', 'auth_194', 'সুশান্ত মজুমদার', '280049843', 'Admin_ICT', '2022-03-04 23:40:05');
INSERT INTO `author` VALUES ('195', 'auth_195', 'সেলিনা হোসেন', '280049843', 'Admin_ICT', '2022-03-04 23:40:05');
INSERT INTO `author` VALUES ('196', 'auth_196', 'সৈয়দ মাজহারুল পারভেজ', '280049843', 'Admin_ICT', '2022-03-04 23:40:05');
INSERT INTO `author` VALUES ('197', 'auth_197', 'সৈয়দ আনোয়ার হোসেন', '280049843', 'Admin_ICT', '2022-03-04 23:40:05');
INSERT INTO `author` VALUES ('198', 'auth_198', 'সৈয়দ আবুল হোসেন', '280049843', 'Admin_ICT', '2022-03-04 23:40:05');
INSERT INTO `author` VALUES ('199', 'auth_199', 'সৈয়দ ইকবাল', '280049843', 'Admin_ICT', '2022-03-04 23:40:05');
INSERT INTO `author` VALUES ('200', 'auth_200', 'সৈয়দ শামসুল হক', '280049843', 'Admin_ICT', '2022-03-04 23:40:05');
INSERT INTO `author` VALUES ('201', 'auth_201', 'হাবীবুল্লাহ সিরাজী', '280049843', 'Admin_ICT', '2022-03-04 23:40:05');
INSERT INTO `author` VALUES ('202', 'auth_202', 'হামিদুর রহমান', '280049843', 'Admin_ICT', '2022-03-04 23:40:05');
INSERT INTO `author` VALUES ('203', 'auth_203', 'হারুন হাবীব', '280049843', 'Admin_ICT', '2022-03-04 23:40:05');
INSERT INTO `author` VALUES ('204', 'auth_204', 'হারুন-অর-রশিদ', '280049843', 'Admin_ICT', '2022-03-04 23:40:06');

-- ----------------------------
-- Table structure for `book_list`
-- ----------------------------
DROP TABLE IF EXISTS `book_list`;
CREATE TABLE `book_list` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `book_id` varchar(30) DEFAULT NULL,
  `book_name` varchar(255) DEFAULT '',
  `isbn_number` varchar(255) DEFAULT '',
  `cat_id` varchar(30) DEFAULT '',
  `category_name` varchar(255) DEFAULT NULL,
  `author_id` varchar(30) DEFAULT '',
  `author_name` varchar(255) DEFAULT NULL,
  `loc_id` int(10) DEFAULT NULL,
  `location_name` varchar(255) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `recording_person_id` varchar(50) DEFAULT '',
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  `available_quantity` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book_list
-- ----------------------------
INSERT INTO `book_list` VALUES ('1', 'book_1', 'This Was Radio Bangladesh 1971', '', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', 'auth_1', 'Alamgir Kabir', '2', 'A-2', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:39', '1');
INSERT INTO `book_list` VALUES ('2', 'book_2', 'We Shall Fight On The Beaches', '978-1-78243-055-1', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_3', 'Jacob F. Field', '15', 'B-8', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:39', '1');
INSERT INTO `book_list` VALUES ('3', 'book_3', 'Bangabandhu and Turbulent Bangladesh', '978-984-07-6071-8', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_7', 'Nuran Nabi', '2', 'A-2', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:39', '1');
INSERT INTO `book_list` VALUES ('4', 'book_4', 'বঙ্গবন্ধুর আন্দোলন কৌশল ও হরতাল', '978-984-07-5990-3', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_11', 'অজয় দাশগুপ্ত', '5', 'A-5', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:39', '1');
INSERT INTO `book_list` VALUES ('5', 'book_5', 'বাংলা ও বাঙালির ইতিহাস (৪র্থ খণ্ড/ ৪র্থ)', '984-07-5404-1', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_14', 'অধ্যাপক অজয় রায় ও শামসুজ্জামান খান', '21', 'C-4', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:40', '1');
INSERT INTO `book_list` VALUES ('6', 'book_6', 'বাংলা ও বাঙালির ইতিহাস (৪র্থ খণ্ড/ ২য়)', '984-07-5018-6', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_14', 'অধ্যাপক অজয় রায় ও শামসুজ্জামান খান', '21', 'C-4', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:40', '1');
INSERT INTO `book_list` VALUES ('7', 'book_7', 'বাংলা ও বাঙালির ইতিহাস (৪র্থ খণ্ড/ ৫ম)', '984-07-5817-9', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_14', 'অধ্যাপক অজয় রায় ও শামসুজ্জামান খান', '7', 'A-7', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:40', '1');
INSERT INTO `book_list` VALUES ('8', 'book_8', 'বঙ্গবন্ধু: মহাকালের মহানায়ক', '978-984-93447-3-5', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_17', 'অধ্যাপক ড. মিজানুর রহমান', '3', 'A-3', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:40', '1');
INSERT INTO `book_list` VALUES ('9', 'book_9', 'চিরঞ্জীব বঙ্গবন্ধু', '978-984-92575-9-2', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_19', 'আইরিন খান', '20', 'C-3', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:40', '1');
INSERT INTO `book_list` VALUES ('10', 'book_10', 'আমার একাত্তর', '984-465-125-5', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', 'auth_21', 'আনিসুজ্জামান', '20', 'C-3', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:40', '1');
INSERT INTO `book_list` VALUES ('11', 'book_11', 'বঙ্গবন্ধুর জন্য ভালোবাসা ', '978-984-8055-86-1', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_22', 'আনিসুল হক', '15', 'B-8', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:40', '1');
INSERT INTO `book_list` VALUES ('12', 'book_12', 'ছোটদের জুলিও কুরি বঙ্গবন্ধু', '978-984-507-256-4', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_24', 'আবদুল আউয়াল ভূঞা', '21', 'C-4', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:40', '1');
INSERT INTO `book_list` VALUES ('13', 'book_13', 'একাত্তরের সুন্দরবন', '978-984-93739-3-3', 'cat_4', 'বাংলাদেশ', 'auth_26', 'আবু জাফর জব্বার', '16', 'B-9', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:40', '1');
INSERT INTO `book_list` VALUES ('14', 'book_14', 'বঙ্গবন্ধু-বিষয়ক গ্রন্থপঞ্জি', '987-984-07-6062-6', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_27', 'আবু মোঃ দেলোয়ার হোসেন', '4', 'A-4', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:40', '1');
INSERT INTO `book_list` VALUES ('15', 'book_15', 'বাংলাদেশের স্বাধীনতা : কূটনৈতিক যুদ্ধ', '984-07-5772-5', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', 'auth_28', 'আবু সাইয়িদ', '4', 'A-4', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:40', '1');
INSERT INTO `book_list` VALUES ('16', 'book_16', 'মুক্তিযুদ্ধের কথা : রণাঙ্গনে নয় মাস', '978-984-92477-7-7', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', 'auth_29', 'আবুল কাইয়ুম', '16', 'B-9', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:40', '1');
INSERT INTO `book_list` VALUES ('17', 'book_17', 'বঙ্গবন্ধু ও চা শিল্প', '987-984-07-6051-0', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_30', 'আবুল কাশেম', '2', 'A-2', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:40', '1');
INSERT INTO `book_list` VALUES ('18', 'book_18', 'কিশোর গল্পে বঙ্গবন্ধু ', '984-70133-0264-4', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_38', 'আসলাম সানি', '15', 'B-8', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:40', '1');
INSERT INTO `book_list` VALUES ('19', 'book_19', 'বঙ্গবন্ধু ও শেখ রাসেল : কিছু গদ্য কিছু পদ্য', '978-984-612-110-1', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_39', 'আসলাম সানী ম.আই রহমান', '23', 'C-6', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:40', '1');
INSERT INTO `book_list` VALUES ('20', 'book_20', 'একাত্তরের গণকবর ও বধ্যভূমি', '978-984-95410-7-3', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', 'auth_41', 'আসাদুজ্জামান আসাদ', '20', 'C-3', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:41', '1');
INSERT INTO `book_list` VALUES ('21', 'book_21', 'বঙ্গবন্ধু ও স্বাধীনতার ৪০ বছর', '987-70120-0260-5', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_43', 'আহমেদ ফিরজ', '17', 'B-10', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:41', '1');
INSERT INTO `book_list` VALUES ('22', 'book_22', 'কিশোরদের বঙ্গবন্ধু', '978-984-8795-79-8', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_48', 'এ.কে.এম শাহনেওয়াজ', '24', 'C-7', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:41', '1');
INSERT INTO `book_list` VALUES ('23', 'book_23', 'বঙ্গবন্ধুর মামলাসমগ্র', '978-984-35-0202-5', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_55', 'এস.এম. শহিদুল্লাহ', '11', 'B-4', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:41', '1');
INSERT INTO `book_list` VALUES ('24', 'book_24', 'চিরঞ্জীব শেখ মুজিব', '984-70264-50-3', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_57', 'কবীর চৌধুরী', '19', 'C-2', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:41', '1');
INSERT INTO `book_list` VALUES ('25', 'book_25', 'মুক্তিযুদ্ধের আঞ্চলিক ইতিহাস : সিলেট', '984-07-5686-9', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', 'auth_59', 'কাজী সাজ্জাদ আলী জহির', '21', 'C-4', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:41', '1');
INSERT INTO `book_list` VALUES ('26', 'book_26', 'একাত্তরের গল্প ', '978-984-9247-3-2', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', 'auth_60', 'কাজী হাসান', '24', 'C-7', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:41', '1');
INSERT INTO `book_list` VALUES ('27', 'book_27', 'বঙ্গবন্ধু ও সংবাদপত্র : ছয় দফা থেকে গণঅভ্যুত্থান', '978-984-07-6011-4', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_61', 'কামরুল হক', '5', 'A-5', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:41', '1');
INSERT INTO `book_list` VALUES ('28', 'book_28', 'আমি মুজিব বলছি ', '984-70105-0367-8', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_63', 'কৃত্তিবাস ওঝা', '15', 'B-8', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:41', '0');
INSERT INTO `book_list` VALUES ('29', 'book_29', 'মুক্তিযুদ্ধ ও গ্রাম বাংলায় গণনাটক', '978-984-8772-02-7', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_64', 'খায়রুল বাসার', '16', 'B-9', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:41', '1');
INSERT INTO `book_list` VALUES ('30', 'book_30', '১৯৭১: মোরা একটি ফুলকে বাঁচাব বল যুদ্ধ করি', '978-984-92077-0-2', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', 'auth_66', 'গোবিন্দ হালদার', '6', 'A-6', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:41', '1');
INSERT INTO `book_list` VALUES ('31', 'book_31', 'বঙ্গবন্ধু গণপরিষদ সংবিধান', '978-984-07-6003-9', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_68', 'জালাল ফিরোজ', '7', 'A-7', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:41', '1');
INSERT INTO `book_list` VALUES ('32', 'book_32', 'বঙ্গবন্ধু গণপরিষদ সংবিধান', '978-984-07-6049-7', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_68', 'জালাল ফিরোজ', '22', 'C-5', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:41', '1');
INSERT INTO `book_list` VALUES ('33', 'book_33', 'জীবনের জয়রত (মুদক্তিযুদ্ধ, রাজনীতি ও জেল জীবন) ', '978-984-93045-7-9', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', 'auth_76', 'ডঃ তৌফিক-ই- ইলাহি চৌধুরী, বীর-বিক্রম', '23', 'C-6', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:41', '1');
INSERT INTO `book_list` VALUES ('34', 'book_34', 'এমন বর্বরতা কখনো দেখিনি', '984-70124-0293-1', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', 'auth_79', 'তাজুল মোহাম্মদ', '7', 'A-7', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:41', '1');
INSERT INTO `book_list` VALUES ('35', 'book_35', 'বাংলাদেশের মুক্তিযুদ্ধ শরণার্থী সমস্যা ও ভূ-রাজনীতি।', '984-07-5962-0', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', 'auth_82', 'দিব্যদ্যুতি সরকার', '22', 'C-5', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:41', '1');
INSERT INTO `book_list` VALUES ('36', 'book_36', 'তরুণ প্রজন্মের ভরসা শেখ হাসিনা', '984-70322-0242-9', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_83', 'দীপক চৌধুরী', '3', 'A-3', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:42', '1');
INSERT INTO `book_list` VALUES ('37', 'book_37', 'স্বাধীনতা স্বাধীকার', '978-984-612-077-6', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', 'auth_86', 'নজরুল ইসলাম জামাল', '16', 'B-9', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:42', '1');
INSERT INTO `book_list` VALUES ('38', 'book_38', '৬৯ র শহীদ সার্জেন্ট', '978-984-8050-80-4', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', 'auth_88', 'নাজনীন হক মিমি', '23', 'C-6', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:42', '1');
INSERT INTO `book_list` VALUES ('39', 'book_39', 'মহানায়ব', '984-657-078-2', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_89', 'নাফিজ আশরাফ', '22', 'C-5', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:42', '1');
INSERT INTO `book_list` VALUES ('40', 'book_40', 'মুজিবমঙ্গল', '978-984-93396-0-1', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_90', 'নির্মলেন্দু গুণ', '16', 'B-9', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:42', '1');
INSERT INTO `book_list` VALUES ('41', 'book_41', 'রাজনীতিতে হাতেখড়ি ও কলকাতায় শেখ মুজিব', '978-984-07-5991-0', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_93', 'নূহ-উল-আলম লেনিন', '5', 'A-5', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:42', '1');
INSERT INTO `book_list` VALUES ('42', 'book_42', 'মুক্তিযুদ্ধ বঙ্গবন্ধু ও বাংলা একাডেমি', '978-984-07-6002-2', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', 'auth_95', 'পিয়াস মজিদ', '19', 'C-2', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:42', '1');
INSERT INTO `book_list` VALUES ('43', 'book_43', 'মুক্তিযুদ্ধে বিদেশী বন্ধুরা', '978-984-91329-1-2', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', 'auth_98', 'ফকির আলমগীর', '19', 'C-2', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:42', '1');
INSERT INTO `book_list` VALUES ('44', 'book_44', 'ঢাকা ১৯৭১ : ধামরাই গণহত্যা', '978-984-11-0-819-9', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', 'auth_104', 'বাশার খান। জাহিদ হাসান।', '16', 'B-9', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:42', '1');
INSERT INTO `book_list` VALUES ('45', 'book_45', 'মুক্তিযুদ্ধের প্রিয়গল্প', '984-70315-0089-2', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', 'auth_57', 'কবীর চৌধুরী', '16', 'B-9', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:42', '1');
INSERT INTO `book_list` VALUES ('46', 'book_46', 'শেখ মুজিবের ছেলেবেলা', '978-984-94778-1-5', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_109', 'বেবী মওদুদ', '7', 'A-7', '2', '280049843', 'Admin_ICT', '2022-03-11 16:24:42', '2');
INSERT INTO `book_list` VALUES ('47', 'book_47', 'বঙ্গবন্ধুর জীবন কথা', '978-984-07-6050-3', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_110', 'ভবেশ রায়', '2', 'A-2', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:42', '1');
INSERT INTO `book_list` VALUES ('48', 'book_48', 'বঙ্গবন্ধু-বিষয়ক আরও একটি বই', '978-70138-0166-5', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_114', 'মফিদুল হক', '19', 'C-2', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:42', '1');
INSERT INTO `book_list` VALUES ('49', 'book_49', 'বঙ্গবন্ধুর ৬ দফা বাঙালির মুক্তি সম্পাদনা', '978-984-92707-8-2', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', 'auth_117', 'মসীম সাহা মিলন সব্যসাচী', '6', 'A-6', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:42', '1');
INSERT INTO `book_list` VALUES ('50', 'book_50', 'বঙ্গবন্ধু ও বাংলাদেশের স্বাধীনতা', '984-8446-69-9', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_119', 'মাজহারুল ইসলাম', '15', 'B-8', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:42', '1');
INSERT INTO `book_list` VALUES ('51', 'book_51', 'গেরিলা থেকে সম্মুখযুদ্ধে', '984-465-027-9', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', '1auth_23', 'মাহবুব আলম', '23', 'C-6', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:43', '1');
INSERT INTO `book_list` VALUES ('52', 'book_52', 'আমি রাসেল বলছি', '978-984-8966-91-4', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_126', 'মিজানুর রহমান মিজান', '13', 'B-6', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:43', '1');
INSERT INTO `book_list` VALUES ('53', 'book_53', 'মুক্তিযোদ্ধা বটেশ্বরী', '984-70269-0016-23', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', 'auth_127', 'মিথুন', '6', 'A-6', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:43', '1');
INSERT INTO `book_list` VALUES ('54', 'book_54', 'শেখ মুজিব একটি লাল গোলাপ', '987-984-07-6056-5', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_128', 'মিনার মনসুর/দিলওয়ার চৌধুরী', '3', 'A-3', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:43', '1');
INSERT INTO `book_list` VALUES ('55', 'book_55', 'বঙ্গবন্ধুর কিশোর জীবন ', '978-984-94371-3-0', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_129', 'মিলান নাথ', '17', 'B-10', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:43', '1');
INSERT INTO `book_list` VALUES ('56', 'book_56', 'উপন্যাসে বঙ্গবন্ধু', '978-984-07-5995-8', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_130', 'মিল্টন বিশ্বাস', '6', 'A-6', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:43', '1');
INSERT INTO `book_list` VALUES ('57', 'book_57', 'মৃত্যুঞ্জয়ী জাতির পিতা ', '978-984-92708-6', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_131', 'মীর জামাল উদ্দিন', '6', 'A-6', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:43', '1');
INSERT INTO `book_list` VALUES ('58', 'book_58', 'স্বাধীনতার পথে বঙ্গবন্ধু : প্রেক্ষিত ১৯৭০-এর নির্বাচন', '978-984-07-6040-4', 'cat_4', 'বাংলাদেশ', 'auth_133', 'মুর্শিদা বিনতে রহমান', '5', 'A-5', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:43', '1');
INSERT INTO `book_list` VALUES ('59', 'book_59', 'শত ভাস্করর্য ও মু্যারাএল বঙ্গবন্ধু আলোকচিত্র আ্যালবাম', '978-984-07-6109-8', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_136', 'মুহাম্মদ মোজাম্মেল হক', '24', 'C-7', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:43', '1');
INSERT INTO `book_list` VALUES ('60', 'book_60', 'ততদিন রবে কীর্তি তোমার', '978-984-72707-5-1', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_138', 'মে সায়েম সরকার। আসলাম সানী', '23', 'C-6', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:43', '1');
INSERT INTO `book_list` VALUES ('61', 'book_61', 'ক্রীড়াঙ্গনে বঙ্গবন্ধু', '978-984-94352-8-0', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_143', 'মোঃ মনিরুল ইসলাম আলমগীর', '17', 'B-10', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:43', '0');
INSERT INTO `book_list` VALUES ('62', 'book_62', 'বঙ্গবন্ধু শেখ মুজিবুর রহমান জীবন ও রাজনীতি ১- ২ খন্ড ', '984-984-07-6037-4', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', 'auth_144', 'মোনায়েম সরকার', '19', 'C-2', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:43', '1');
INSERT INTO `book_list` VALUES ('63', 'book_63', 'শেখ মুজিবুর রহমান জীবন ও রাজনীতি-১ ও ২ খণ্ড', '984-984-07-6037-4', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_144', 'মোনায়েম সরকার', '14', 'B-7', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:44', '1');
INSERT INTO `book_list` VALUES ('64', 'book_64', 'আমাদের বীর কিশোরেরা', '978-984-92877-04-7', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', 'auth_146', 'মোস্তফা হোসেইন', '6', 'A-6', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:44', '1');
INSERT INTO `book_list` VALUES ('65', 'book_65', 'বঙ্গবন্ধুর বানী', '978-984-8004-97-5', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_148', 'মোহাম্মদ আমিন', '17', 'B-10', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:44', '0');
INSERT INTO `book_list` VALUES ('66', 'book_66', 'বঙ্গবন্ধু হত্যা মামলার ঐতিহাসিক রায় ', '984-70-133-0400-4', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_156', 'রবীন্দ্রনাথ ত্রিবেদী', '11', 'B-4', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:44', '0');
INSERT INTO `book_list` VALUES ('67', 'book_67', 'স্মৃতি ১৯৭১ (১ম খণ্ড)', '984-07-5899-3', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', 'auth_157', 'রশীদ হায়দার', '14', 'B-7', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:44', '1');
INSERT INTO `book_list` VALUES ('68', 'book_68', 'স্মৃতি ১৯৭১ (২য় খণ্ড)', '984-07-5737-7', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', 'auth_157', 'রশীদ হায়দার', '14', 'B-7', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:44', '1');
INSERT INTO `book_list` VALUES ('69', 'book_69', 'স্মৃতি ১৯৭১ (৩য় খণ্ড)', '984-07-5858-6', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', 'auth_157', 'রশীদ হায়দার', '14', 'B-7', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:44', '1');
INSERT INTO `book_list` VALUES ('70', 'book_70', 'স্মৃতি ১৯৭১ (৪র্থ খণ্ড)', '984-07-5948-5', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', 'auth_157', 'রশীদ হায়দার', '14', 'B-7', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:44', '1');
INSERT INTO `book_list` VALUES ('71', 'book_71', 'ছোটদের শেখ মুজিব', '978-984-8018-38-5', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_159', 'রুহুল আমিন বাবুল', '17', 'B-10', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:44', '1');
INSERT INTO `book_list` VALUES ('72', 'book_72', 'বঙ্গবন্ধুর ৭ই মার্চের ভাষণ : বহুমাত্রিক বিশ্লেষণ', '987-984-07-6053-4', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_164', 'শামসুজ্জামান খান', '3', 'A-3', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:44', '1');
INSERT INTO `book_list` VALUES ('73', 'book_73', 'বঙ্গবন্ধু নানা বর্ণে নানা রেখায়', '978-984-07-6054-1', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_164', 'শামসুজ্জামান খান', '5', 'A-5', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:44', '0');
INSERT INTO `book_list` VALUES ('74', 'book_74', 'ছোটদের জাতির জনক বঙ্গবন্ধু ', '984-70084-0321-9', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_169', 'শাহজাহান কিবরিয়া', '15', 'B-8', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:44', '1');
INSERT INTO `book_list` VALUES ('75', 'book_75', 'গদ্যে পদ্যে শেখ মুজিব ', '984-300-000-6969', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_169', 'শাহজাহান কিবরিয়া', '4', 'A-4', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:44', '1');
INSERT INTO `book_list` VALUES ('76', 'book_76', 'বাংলাদেশের মুক্তিযুদ্ধ : বহির্বিশ্বে শত্রু-মিত্র', '984-07-5828-4', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', 'auth_172', 'শিরু বাঙালি', '22', 'C-5', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:44', '1');
INSERT INTO `book_list` VALUES ('77', 'book_77', 'বঙ্গবন্ধু শেখ মুজিব', '984-70289-0162-6', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_175', 'শেখ মোহাম্মদ ইব্রাহীম', '15', 'B-8', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:44', '1');
INSERT INTO `book_list` VALUES ('78', 'book_78', 'বাংলাদেশের স্বৈরতন্ত্রের জন্ম', '978-984-04-2462-7', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_176', 'শেখ হাসিনা', '17', 'B-10', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:44', '1');
INSERT INTO `book_list` VALUES ('79', 'book_79', 'আওয়ামীলীগ (1949-1971)', '984-05-0284-0', 'cat_4', 'বাংলাদেশ', 'auth_177', 'শ্যামলী ঘোষ', '15', 'B-8', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:45', '1');
INSERT INTO `book_list` VALUES ('80', 'book_80', 'অনেক সুর্যের আশা ', '978-984-8988-0062-6', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', 'auth_180', 'সরদার জয়েনউদ্দীন', '16', 'B-9', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:45', '1');
INSERT INTO `book_list` VALUES ('81', 'book_81', 'আমি ৭১ দেখেছি ', '978-984-93720-1-1', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', 'auth_182', 'সাইফুল্লাহ নবীব', '6', 'A-6', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:45', '1');
INSERT INTO `book_list` VALUES ('82', 'book_82', 'সাধক কবিদের রচনায় বঙ্গবন্ধুর জীবন ও রাজনীতি', '978-984-07-6009-1', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_184', 'সাইমন জাকারিয়া', '5', 'A-5', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:45', '1');
INSERT INTO `book_list` VALUES ('83', 'book_83', 'বঙ্গবন্ধুর সংস্কৃতি-ভাবনা', '978-984-07-6069-5', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_185', 'সাজেদুল আউয়াল', '5', 'A-5', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:45', '1');
INSERT INTO `book_list` VALUES ('84', 'book_84', 'আগরতলা ষড়যন্ত্র মামলা', '984-07-5869-1', 'cat_4', 'বাংলাদেশ', 'auth_188', 'সাহিদা বেগম', '24', 'C-7', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:45', '1');
INSERT INTO `book_list` VALUES ('85', 'book_85', 'মুক্তিযুদ্ধে নারী গাথা', '984-70154-0073-05', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', 'auth_189', 'সাহেদ মন্তাজ কুতুব আজাদ', '6', 'A-6', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:45', '1');
INSERT INTO `book_list` VALUES ('86', 'book_86', 'আমার ছোটবেলা ১৯৭১', '978-984-93595-9-3', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_191', 'সিমিল হোসেন রিমি', '24', 'C-7', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:45', '1');
INSERT INTO `book_list` VALUES ('87', 'book_87', 'বঙ্গবন্ধু ও বাংলাদেশ', '978-984-95302-0-1', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_195', 'সেলিনা হোসেন', '4', 'A-4', '2', '280049843', 'Admin_ICT', '2022-03-11 16:24:45', '2');
INSERT INTO `book_list` VALUES ('88', 'book_88', 'বাংলাদেশের স্থপতি বঙ্গবন্ধু', '978-984-34-3907-9', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_198', 'সৈয়দ আবুল হোসেন', '20', 'C-3', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:45', '1');
INSERT INTO `book_list` VALUES ('89', 'book_89', 'বঙ্গবন্ধুর সমাধীতে', '978-984-502-567-6', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_200', 'সৈয়দ শামসুল হক', '3', 'A-3', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:45', '1');
INSERT INTO `book_list` VALUES ('90', 'book_90', 'বৃষ্টি ও বিদ্রোহীগণ (মুক্তিযুদ্ধ বিষয়ক পূর্ণাঙ্গ উপন্যাস)', '984-70116-0018-5', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', 'auth_200', 'সৈয়দ শামসুল হক', '3', 'A-3', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:45', '1');
INSERT INTO `book_list` VALUES ('91', 'book_91', 'বঙ্গবন্ধুর বীরগাথা', '978-984-07-6040-4', 'cat_9', 'শেখ মুজিবুর রহমান', '200', 'সৈয়দ শামসুল হক', '3', 'A-3', '2', '280049843', 'Admin_ICT', '2022-03-11 16:24:45', '1');
INSERT INTO `book_list` VALUES ('92', 'book_92', 'বঙ্গবন্ধুকে নিবেদিত গল্প', '978-984-07-6021-3', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_201', 'হাবীবুল্লাহ সিরাজী', '22', 'C-5', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:45', '1');
INSERT INTO `book_list` VALUES ('93', 'book_93', 'বঙ্গবন্ধুর দ্বিতীয় বিপ্লব : কী ও কেন', '984-07-5979-5', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_204', 'হারুন-অর-রশিদ', '2', 'A-2', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:46', '0');
INSERT INTO `book_list` VALUES ('94', 'book_94', '৭ই মার্চের ভাষণ কেন বিশ্ব-ঐতিহ্য সম্পদ বঙ্গবন্ধু মুক্তিযুদ্ধ ও বাংলাদেশ', '978-984-07-6038-1', 'cat_4', 'বাংলাদেশ', 'auth_204', 'হারুন-অর-রশিদ', '2', 'A-2', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:46', '1');
INSERT INTO `book_list` VALUES ('95', 'book_95', 'মূলধারার রাজনীতি : বাংলাদেশ আওয়ামী লীগ।', '984-07-5864-0', 'cat_9', 'শেখ মুজিবুর রহমান', 'auth_204', 'হারুন-অর-রশিদ', '4', 'A-4', '1', '280049843', 'Admin_ICT', '2022-03-11 16:24:46', '1');
INSERT INTO `book_list` VALUES ('121', 'book_96', 'bangla', '123456789', 'cat_4', 'বাংলাদেশ', 'auth_8', 'Surma Zahid', '3', 'A-3', '12', '9212', 'Kausar Ahmed', '2022-03-21 17:16:52', '11');
INSERT INTO `book_list` VALUES ('122', 'book_97', 'english', '1234567', 'cat_2', 'ইঞ্জিনিয়ারিং ', 'auth_1', 'Alamgir Kabir', '5', 'A-5', '5', '9212', 'Kausar Ahmed', '2022-04-18 14:23:24', '5');

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cat_id` varchar(30) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT '',
  `recording_person_id` varchar(50) DEFAULT '',
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'cat_1', 'আন্তর্জাতিক', '280049843', 'Admin_ICT', '2022-03-04 23:40:07');
INSERT INTO `category` VALUES ('2', 'cat_2', 'ইঞ্জিনিয়ারিং ', '280049843', 'Admin_ICT', '2022-03-04 23:40:07');
INSERT INTO `category` VALUES ('3', 'cat_3', 'বাংলা সাহিত্য', '280049843', 'Admin_ICT', '2022-03-04 23:40:07');
INSERT INTO `category` VALUES ('4', 'cat_4', 'বাংলাদেশ', '280049843', 'Admin_ICT', '2022-03-04 23:40:07');
INSERT INTO `category` VALUES ('5', 'cat_5', 'বিজ্ঞান', '280049843', 'Admin_ICT', '2022-03-04 23:40:07');
INSERT INTO `category` VALUES ('6', 'cat_6', 'ভাষা আন্দোলন', '280049843', 'Admin_ICT', '2022-03-04 23:40:07');
INSERT INTO `category` VALUES ('7', 'cat_7', 'মহান মুক্তিযুদ্ধ/ স্বাধীনতা সংগ্রাম’৭১', '280049843', 'Admin_ICT', '2022-03-04 23:40:07');
INSERT INTO `category` VALUES ('8', 'cat_8', 'রাজনীতিক', '280049843', 'Admin_ICT', '2022-03-04 23:40:07');
INSERT INTO `category` VALUES ('9', 'cat_9', 'বঙ্গবন্ধু শেখ মুজিবুর রহমান', '280049843', 'Admin_ICT', '2022-03-04 23:40:07');

-- ----------------------------
-- Table structure for `country`
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name_of_country` varchar(80) NOT NULL,
  `short_code` char(3) DEFAULT NULL,
  `number_code` smallint(6) DEFAULT NULL,
  `phone_code` int(5) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES ('1', 'AF', 'Afghanistan', 'AFG', '4', '93');
INSERT INTO `country` VALUES ('2', 'AL', 'Albania', 'ALB', '8', '355');
INSERT INTO `country` VALUES ('3', 'DZ', 'Algeria', 'DZA', '12', '213');
INSERT INTO `country` VALUES ('4', 'AS', 'American Samoa', 'ASM', '16', '1684');
INSERT INTO `country` VALUES ('5', 'AD', 'Andorra', 'AND', '20', '376');
INSERT INTO `country` VALUES ('6', 'AO', 'Angola', 'AGO', '24', '244');
INSERT INTO `country` VALUES ('7', 'AI', 'Anguilla', 'AIA', '660', '1264');
INSERT INTO `country` VALUES ('8', 'AQ', 'Antarctica', null, null, '0');
INSERT INTO `country` VALUES ('9', 'AG', 'Antigua and Barbuda', 'ATG', '28', '1268');
INSERT INTO `country` VALUES ('10', 'AR', 'Argentina', 'ARG', '32', '54');
INSERT INTO `country` VALUES ('11', 'AM', 'Armenia', 'ARM', '51', '374');
INSERT INTO `country` VALUES ('12', 'AW', 'Aruba', 'ABW', '533', '297');
INSERT INTO `country` VALUES ('13', 'AU', 'Australia', 'AUS', '36', '61');
INSERT INTO `country` VALUES ('14', 'AT', 'Austria', 'AUT', '40', '43');
INSERT INTO `country` VALUES ('15', 'AZ', 'Azerbaijan', 'AZE', '31', '994');
INSERT INTO `country` VALUES ('16', 'BS', 'Bahamas', 'BHS', '44', '1242');
INSERT INTO `country` VALUES ('17', 'BH', 'Bahrain', 'BHR', '48', '973');
INSERT INTO `country` VALUES ('18', 'BD', 'Bangladesh', 'BGD', '50', '880');
INSERT INTO `country` VALUES ('19', 'BB', 'Barbados', 'BRB', '52', '1246');
INSERT INTO `country` VALUES ('20', 'BY', 'Belarus', 'BLR', '112', '375');
INSERT INTO `country` VALUES ('21', 'BE', 'Belgium', 'BEL', '56', '32');
INSERT INTO `country` VALUES ('22', 'BZ', 'Belize', 'BLZ', '84', '501');
INSERT INTO `country` VALUES ('23', 'BJ', 'Benin', 'BEN', '204', '229');
INSERT INTO `country` VALUES ('24', 'BM', 'Bermuda', 'BMU', '60', '1441');
INSERT INTO `country` VALUES ('25', 'BT', 'Bhutan', 'BTN', '64', '975');
INSERT INTO `country` VALUES ('26', 'BO', 'Bolivia', 'BOL', '68', '591');
INSERT INTO `country` VALUES ('27', 'BA', 'Bosnia and Herzegovina', 'BIH', '70', '387');
INSERT INTO `country` VALUES ('28', 'BW', 'Botswana', 'BWA', '72', '267');
INSERT INTO `country` VALUES ('29', 'BV', 'Bouvet Island', null, null, '0');
INSERT INTO `country` VALUES ('30', 'BR', 'Brazil', 'BRA', '76', '55');
INSERT INTO `country` VALUES ('31', 'IO', 'British Indian Ocean Territory', null, null, '246');
INSERT INTO `country` VALUES ('32', 'BN', 'Brunei Darussalam', 'BRN', '96', '673');
INSERT INTO `country` VALUES ('33', 'BG', 'Bulgaria', 'BGR', '100', '359');
INSERT INTO `country` VALUES ('34', 'BF', 'Burkina Faso', 'BFA', '854', '226');
INSERT INTO `country` VALUES ('35', 'BI', 'Burundi', 'BDI', '108', '257');
INSERT INTO `country` VALUES ('36', 'KH', 'Cambodia', 'KHM', '116', '855');
INSERT INTO `country` VALUES ('37', 'CM', 'Cameroon', 'CMR', '120', '237');
INSERT INTO `country` VALUES ('38', 'CA', 'Canada', 'CAN', '124', '1');
INSERT INTO `country` VALUES ('39', 'CV', 'Cape Verde', 'CPV', '132', '238');
INSERT INTO `country` VALUES ('40', 'KY', 'Cayman Islands', 'CYM', '136', '1345');
INSERT INTO `country` VALUES ('41', 'CF', 'Central African Republic', 'CAF', '140', '236');
INSERT INTO `country` VALUES ('42', 'TD', 'Chad', 'TCD', '148', '235');
INSERT INTO `country` VALUES ('43', 'CL', 'Chile', 'CHL', '152', '56');
INSERT INTO `country` VALUES ('44', 'CN', 'China', 'CHN', '156', '86');
INSERT INTO `country` VALUES ('45', 'CX', 'Christmas Island', null, null, '61');
INSERT INTO `country` VALUES ('46', 'CC', 'Cocos (Keeling) Islands', null, null, '672');
INSERT INTO `country` VALUES ('47', 'CO', 'Colombia', 'COL', '170', '57');
INSERT INTO `country` VALUES ('48', 'KM', 'Comoros', 'COM', '174', '269');
INSERT INTO `country` VALUES ('49', 'CG', 'Congo', 'COG', '178', '242');
INSERT INTO `country` VALUES ('50', 'CD', 'Congo, the Democratic Republic of the', 'COD', '180', '242');
INSERT INTO `country` VALUES ('51', 'CK', 'Cook Islands', 'COK', '184', '682');
INSERT INTO `country` VALUES ('52', 'CR', 'Costa Rica', 'CRI', '188', '506');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department_info
-- ----------------------------
INSERT INTO `department_info` VALUES ('1', 'Chairman', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `department_info` VALUES ('2', 'Secretary', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `department_info` VALUES ('3', 'Technology Innovation', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `department_info` VALUES ('4', 'Technology Incubation', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `department_info` VALUES ('5', 'Entrepreneurship', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `department_info` VALUES ('6', 'Admin & Finance', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `department_info` VALUES ('7', 'ICT', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');

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
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of designation_info
-- ----------------------------
INSERT INTO `designation_info` VALUES ('1', 'Chairman', 'Chairman', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `designation_info` VALUES ('2', 'Secretary', 'Secretary', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `designation_info` VALUES ('3', 'Member (Admin & Finance)', 'Member (Admin & Finance)', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `designation_info` VALUES ('4', 'Member (Technology Innovation)', 'Member (Technology Innovation)', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `designation_info` VALUES ('5', 'Member (Technology Incubation)', 'Member (Technology Incubation)', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `designation_info` VALUES ('6', 'Member (Entrepreneurship)', 'Member (Entrepreneurship)', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `designation_info` VALUES ('7', 'Director (Admin & Finance)', 'Director (Admin & Finance)', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `designation_info` VALUES ('8', 'Director (Technology Innovation)', 'Director (Technology Innovation)', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `designation_info` VALUES ('9', 'Director (Technology Incubation)', 'Director (Technology Incubation)', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `designation_info` VALUES ('10', 'Director (Entrepreneurship)', 'Director (Entrepreneurship)', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `designation_info` VALUES ('11', 'Senior Assistant Secretary', 'Senior Assistant Secretary', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `designation_info` VALUES ('12', 'Deputy Director (Admin & Finance)', 'Deputy Director (Admin & Finance)', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `designation_info` VALUES ('13', 'Deputy Director (HR & PR)', 'Deputy Director (HR & PR)', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `designation_info` VALUES ('14', 'Programmer', 'Programmer', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `designation_info` VALUES ('15', 'Deputy Director (Innovation)', 'Deputy Director (Innovation)', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `designation_info` VALUES ('16', 'Deputy Director (Incubation)', 'Deputy Director (Incubation)', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `designation_info` VALUES ('17', 'Deputy Director (Entrepreneurship)', 'Deputy Director (Entrepreneurship)', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `designation_info` VALUES ('18', 'Assistant Programmer', 'Assistant Programmer', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `designation_info` VALUES ('19', 'Assistant Director (Admin & Finance)', 'Assistant Director (Admin & Finance)', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `designation_info` VALUES ('20', 'Assistant Director (HR & PR)', 'Assistant Director (HR & PR)', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `designation_info` VALUES ('21', 'Assistant Director (Innovation)', 'Assistant Director (Innovation)', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `designation_info` VALUES ('22', 'Assistant Director (Incubation)', 'Assistant Director (Incubation)', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `designation_info` VALUES ('23', 'Assistant Director (Entrepreneurship)', 'Assistant Director (Entrepreneurship)', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `designation_info` VALUES ('24', 'Personal Officer', 'Personal Officer', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `designation_info` VALUES ('25', 'Computer Operator', 'Computer Operator', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `designation_info` VALUES ('26', 'Data Entry Operator', 'Data Entry Operator', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `designation_info` VALUES ('27', 'Office Assistant-Cam-Computer-Operator', 'Office Assistant-Cam-Computer-Operator', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `designation_info` VALUES ('28', 'Driver', 'Driver', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `designation_info` VALUES ('29', 'Security Garde', 'Security Garde', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');
INSERT INTO `designation_info` VALUES ('30', 'Cleaner', 'Cleaner', '280049843', 'Admin_ICT', '2022-03-04 23:40:08');

-- ----------------------------
-- Table structure for `issue_info`
-- ----------------------------
DROP TABLE IF EXISTS `issue_info`;
CREATE TABLE `issue_info` (
  `issue_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) DEFAULT '',
  `book_id` varchar(30) DEFAULT NULL,
  `book_name` varchar(255) DEFAULT '',
  `isbn_number` varchar(255) DEFAULT '',
  `author_id` varchar(30) DEFAULT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `issue_quantity` int(20) DEFAULT NULL,
  `recording_person_id` varchar(50) DEFAULT '',
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  `book_return_date` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`issue_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of issue_info
-- ----------------------------
INSERT INTO `issue_info` VALUES ('32', '9212', 'book_91', 'বঙ্গবন্ধুর বীরগাথা', '978-984-07-6040-4', '200', 'সৈয়দ শামসুল হক', '1', '9212', 'Kausar Ahmed', '2022-03-15 15:29:39', '2022-03-25', '1');
INSERT INTO `issue_info` VALUES ('33', '9212', 'book_9', 'চিরঞ্জীব বঙ্গবন্ধু', '978-984-92575-9-2', 'auth_19', 'আইরিন খান', '1', '9212', 'Kausar Ahmed', '2022-03-15 15:30:02', '2022-03-25', '0');
INSERT INTO `issue_info` VALUES ('34', '9212', 'book_61', 'ক্রীড়াঙ্গনে বঙ্গবন্ধু', '978-984-94352-8-0', 'auth_143', 'মোঃ মনিরুল ইসলাম আলমগীর', '1', '9212', 'Kausar Ahmed', '2022-03-20 15:30:14', '2022-03-30', '1');
INSERT INTO `issue_info` VALUES ('35', '5555', 'book_89', 'বঙ্গবন্ধুর সমাধীতে', '978-984-502-567-6', 'auth_200', 'সৈয়দ শামসুল হক', '1', '5555', 'Nasir', '2022-03-05 15:30:50', '2022-03-15', '0');
INSERT INTO `issue_info` VALUES ('36', '5555', 'book_92', 'বঙ্গবন্ধুকে নিবেদিত গল্প', '978-984-07-6021-3', 'auth_201', 'হাবীবুল্লাহ সিরাজী', '1', '5555', 'Nasir', '2022-03-10 15:31:01', '2022-03-20', '0');
INSERT INTO `issue_info` VALUES ('37', '5555', 'book_73', 'বঙ্গবন্ধু নানা বর্ণে নানা রেখায়', '978-984-07-6054-1', 'auth_164', 'শামসুজ্জামান খান', '1', '5555', 'Nasir', '2022-03-20 15:31:10', '2022-03-30', '1');
INSERT INTO `issue_info` VALUES ('38', '11111', 'book_91', 'বঙ্গবন্ধুর বীরগাথা', '978-984-07-6040-4', '200', 'সৈয়দ শামসুল হক', '1', '11111', 'Atik', '2022-03-15 15:31:38', '2022-03-25', '0');
INSERT INTO `issue_info` VALUES ('39', '11111', 'book_66', 'বঙ্গবন্ধু হত্যা মামলার ঐতিহাসিক রায় ', '984-70-133-0400-4', 'auth_156', 'রবীন্দ্রনাথ ত্রিবেদী', '1', '11111', 'Atik', '2022-03-13 15:32:02', '2022-03-23', '1');
INSERT INTO `issue_info` VALUES ('40', '11111', 'book_45', 'মুক্তিযুদ্ধের প্রিয়গল্প', '984-70315-0089-2', 'auth_57', 'কবীর চৌধুরী', '1', '11111', 'Atik', '2022-03-12 15:32:20', '2022-03-22', '0');
INSERT INTO `issue_info` VALUES ('41', '8575', 'book_93', 'বঙ্গবন্ধুর দ্বিতীয় বিপ্লব : কী ও কেন', '984-07-5979-5', 'auth_204', 'হারুন-অর-রশিদ', '1', '8575', 'Sajib', '2022-03-09 15:33:09', '2022-03-19', '1');
INSERT INTO `issue_info` VALUES ('42', '8575', 'book_85', 'মুক্তিযুদ্ধে নারী গাথা', '984-70154-0073-05', 'auth_189', 'সাহেদ মন্তাজ কুতুব আজাদ', '1', '8575', 'Sajib', '2022-03-10 15:33:19', '2022-03-20', '0');
INSERT INTO `issue_info` VALUES ('43', '8575', 'book_65', 'বঙ্গবন্ধুর বানী', '978-984-8004-97-5', 'auth_148', 'মোহাম্মদ আমিন', '1', '8575', 'Sajib', '2022-03-12 15:33:32', '2022-03-22', '1');
INSERT INTO `issue_info` VALUES ('44', '8575', 'book_87', 'বঙ্গবন্ধু ও বাংলাদেশ', '978-984-95302-0-1', 'auth_195', 'সেলিনা হোসেন', '1', '8575', 'Sajib', '2022-03-18 15:38:53', '2022-03-28', '0');
INSERT INTO `issue_info` VALUES ('45', '9212', 'book_87', 'বঙ্গবন্ধু ও বাংলাদেশ', '978-984-95302-0-1', 'auth_195', 'সেলিনা হোসেন', '1', '9212', 'Kausar Ahmed', '2022-03-20 15:39:14', '2022-03-30', '0');
INSERT INTO `issue_info` VALUES ('46', '11111', 'book_92', 'বঙ্গবন্ধুকে নিবেদিত গল্প', '978-984-07-6021-3', 'auth_201', 'হাবীবুল্লাহ সিরাজী', '1', '11111', 'Atik', '2022-03-20 21:14:45', '2022-03-30', '0');
INSERT INTO `issue_info` VALUES ('47', '9212', 'book_28', 'আমি মুজিব বলছি ', '984-70105-0367-8', 'auth_63', 'কৃত্তিবাস ওঝা', '1', '9212', 'Kausar Ahmed', '2022-03-21 15:54:04', '2022-03-31', '1');
INSERT INTO `issue_info` VALUES ('52', '9212', 'book_96', 'bangla', '123456789', 'auth_8', 'Surma Zahid', '1', '9212', 'Kausar Ahmed', '2022-03-21 17:19:57', '2022-03-31', '0');
INSERT INTO `issue_info` VALUES ('53', '11111', 'book_96', 'bangla', '123456789', 'auth_8', 'Surma Zahid', '1', '11111', 'Atik', '2022-03-21 17:35:23', '2022-03-31', '1');
INSERT INTO `issue_info` VALUES ('54', '5555', 'book_96', 'bangla', '123456789', 'auth_8', 'Surma Zahid', '1', '5555', 'Nasir', '2022-03-21 17:36:35', '2022-03-31', '0');
INSERT INTO `issue_info` VALUES ('55', '9212', 'book_84', 'আগরতলা ষড়যন্ত্র মামলা', '984-07-5869-1', 'auth_188', 'সাহিদা বেগম', '1', '9212', 'Kausar Ahmed', '2022-03-22 02:01:59', '2022-03-31', '0');
INSERT INTO `issue_info` VALUES ('56', '9212', 'book_97', 'english', '1234567', 'auth_1', 'Alamgir Kabir', '1', '9212', 'Kausar Ahmed', '2022-04-18 14:24:50', '2022-04-28', '0');
INSERT INTO `issue_info` VALUES ('57', '9212', 'book_97', 'english', '1234567', 'auth_1', 'Alamgir Kabir', '1', '9212', 'Kausar Ahmed', '2022-04-18 14:27:09', '2022-04-28', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of location_info
-- ----------------------------
INSERT INTO `location_info` VALUES ('1', 'A-1', '280049843', 'Admin_ICT', '2022-03-04 23:40:09');
INSERT INTO `location_info` VALUES ('2', 'A-2', '280049843', 'Admin_ICT', '2022-03-04 23:40:09');
INSERT INTO `location_info` VALUES ('3', 'A-3', '280049843', 'Admin_ICT', '2022-03-04 23:40:09');
INSERT INTO `location_info` VALUES ('4', 'A-4', '280049843', 'Admin_ICT', '2022-03-04 23:40:09');
INSERT INTO `location_info` VALUES ('5', 'A-5', '280049843', 'Admin_ICT', '2022-03-04 23:40:09');
INSERT INTO `location_info` VALUES ('6', 'A-6', '280049843', 'Admin_ICT', '2022-03-04 23:40:09');
INSERT INTO `location_info` VALUES ('7', 'A-7', '280049843', 'Admin_ICT', '2022-03-04 23:40:09');
INSERT INTO `location_info` VALUES ('8', 'B-1', '280049843', 'Admin_ICT', '2022-03-04 23:40:09');
INSERT INTO `location_info` VALUES ('9', 'B-2', '280049843', 'Admin_ICT', '2022-03-04 23:40:09');
INSERT INTO `location_info` VALUES ('10', 'B-3', '280049843', 'Admin_ICT', '2022-03-04 23:40:09');
INSERT INTO `location_info` VALUES ('11', 'B-4', '280049843', 'Admin_ICT', '2022-03-04 23:40:09');
INSERT INTO `location_info` VALUES ('12', 'B-5', '280049843', 'Admin_ICT', '2022-03-04 23:40:09');
INSERT INTO `location_info` VALUES ('13', 'B-6', '280049843', 'Admin_ICT', '2022-03-04 23:40:09');
INSERT INTO `location_info` VALUES ('14', 'B-7', '280049843', 'Admin_ICT', '2022-03-04 23:40:10');
INSERT INTO `location_info` VALUES ('15', 'B-8', '280049843', 'Admin_ICT', '2022-03-04 23:40:10');
INSERT INTO `location_info` VALUES ('16', 'B-9', '280049843', 'Admin_ICT', '2022-03-04 23:40:10');
INSERT INTO `location_info` VALUES ('17', 'B-10', '280049843', 'Admin_ICT', '2022-03-04 23:40:10');
INSERT INTO `location_info` VALUES ('18', 'C-1', '280049843', 'Admin_ICT', '2022-03-04 23:40:10');
INSERT INTO `location_info` VALUES ('19', 'C-2', '280049843', 'Admin_ICT', '2022-03-04 23:40:10');
INSERT INTO `location_info` VALUES ('20', 'C-3', '280049843', 'Admin_ICT', '2022-03-04 23:40:10');
INSERT INTO `location_info` VALUES ('21', 'C-4', '280049843', 'Admin_ICT', '2022-03-04 23:40:10');
INSERT INTO `location_info` VALUES ('22', 'C-5', '280049843', 'Admin_ICT', '2022-03-04 23:40:10');
INSERT INTO `location_info` VALUES ('23', 'C-6', '280049843', 'Admin_ICT', '2022-03-04 23:40:10');
INSERT INTO `location_info` VALUES ('24', 'C-7', '280049843', 'Admin_ICT', '2022-03-04 23:40:10');
INSERT INTO `location_info` VALUES ('25', 'D-1', '280049843', 'Admin_ICT', '2022-03-04 23:40:10');
INSERT INTO `location_info` VALUES ('26', 'D-2', '280049843', 'Admin_ICT', '2022-03-04 23:40:10');
INSERT INTO `location_info` VALUES ('27', 'D-3', '280049843', 'Admin_ICT', '2022-03-04 23:40:10');
INSERT INTO `location_info` VALUES ('28', 'D-4', '280049843', 'Admin_ICT', '2022-03-04 23:40:10');
INSERT INTO `location_info` VALUES ('29', 'D-5', '280049843', 'Admin_ICT', '2022-03-04 23:40:10');
INSERT INTO `location_info` VALUES ('30', 'D-6', '280049843', 'Admin_ICT', '2022-03-04 23:40:10');
INSERT INTO `location_info` VALUES ('31', 'D-7', '280049843', 'Admin_ICT', '2022-03-04 23:40:10');
INSERT INTO `location_info` VALUES ('32', 'D-8', '280049843', 'Admin_ICT', '2022-03-04 23:40:10');
INSERT INTO `location_info` VALUES ('33', 'D-9', '280049843', 'Admin_ICT', '2022-03-04 23:40:10');
INSERT INTO `location_info` VALUES ('34', 'D-10', '280049843', 'Admin_ICT', '2022-03-04 23:40:10');
INSERT INTO `location_info` VALUES ('35', 'E-1', '280049843', 'Admin_ICT', '2022-03-04 23:40:10');
INSERT INTO `location_info` VALUES ('36', 'E-2', '280049843', 'Admin_ICT', '2022-03-04 23:40:10');
INSERT INTO `location_info` VALUES ('37', 'E-3', '280049843', 'Admin_ICT', '2022-03-04 23:40:11');
INSERT INTO `location_info` VALUES ('38', 'E-4', '280049843', 'Admin_ICT', '2022-03-04 23:40:11');
INSERT INTO `location_info` VALUES ('39', 'E-5', '280049843', 'Admin_ICT', '2022-03-04 23:40:11');
INSERT INTO `location_info` VALUES ('40', 'E-6', '280049843', 'Admin_ICT', '2022-03-04 23:40:11');
INSERT INTO `location_info` VALUES ('41', 'E-7', '280049843', 'Admin_ICT', '2022-03-04 23:40:11');
INSERT INTO `location_info` VALUES ('42', 'F-1', '280049843', 'Admin_ICT', '2022-03-04 23:40:11');
INSERT INTO `location_info` VALUES ('43', 'F-2', '280049843', 'Admin_ICT', '2022-03-04 23:40:11');
INSERT INTO `location_info` VALUES ('44', 'F-3', '280049843', 'Admin_ICT', '2022-03-04 23:40:11');
INSERT INTO `location_info` VALUES ('45', 'F-4', '280049843', 'Admin_ICT', '2022-03-04 23:40:11');
INSERT INTO `location_info` VALUES ('46', 'F-5', '280049843', 'Admin_ICT', '2022-03-04 23:40:11');
INSERT INTO `location_info` VALUES ('47', 'F-6', '280049843', 'Admin_ICT', '2022-03-04 23:40:11');
INSERT INTO `location_info` VALUES ('48', 'F-7', '280049843', 'Admin_ICT', '2022-03-04 23:40:11');
INSERT INTO `location_info` VALUES ('49', 'G-1', '280049843', 'Admin_ICT', '2022-03-04 23:40:11');
INSERT INTO `location_info` VALUES ('50', 'G-2', '280049843', 'Admin_ICT', '2022-03-04 23:40:11');
INSERT INTO `location_info` VALUES ('51', 'G-3', '280049843', 'Admin_ICT', '2022-03-04 23:40:11');
INSERT INTO `location_info` VALUES ('52', 'G-4', '280049843', 'Admin_ICT', '2022-03-04 23:40:11');
INSERT INTO `location_info` VALUES ('53', 'G-5', '280049843', 'Admin_ICT', '2022-03-04 23:40:11');
INSERT INTO `location_info` VALUES ('54', 'G-6', '280049843', 'Admin_ICT', '2022-03-04 23:40:11');
INSERT INTO `location_info` VALUES ('55', 'G-7', '280049843', 'Admin_ICT', '2022-03-04 23:40:11');
INSERT INTO `location_info` VALUES ('56', 'H-1', '280049843', 'Admin_ICT', '2022-03-04 23:40:11');
INSERT INTO `location_info` VALUES ('57', 'H-2', '280049843', 'Admin_ICT', '2022-03-04 23:40:11');
INSERT INTO `location_info` VALUES ('58', 'H-3', '280049843', 'Admin_ICT', '2022-03-04 23:40:11');
INSERT INTO `location_info` VALUES ('59', 'H-4', '280049843', 'Admin_ICT', '2022-03-04 23:40:11');
INSERT INTO `location_info` VALUES ('60', 'H-5', '280049843', 'Admin_ICT', '2022-03-04 23:40:11');
INSERT INTO `location_info` VALUES ('61', 'H-6', '280049843', 'Admin_ICT', '2022-03-04 23:40:12');
INSERT INTO `location_info` VALUES ('62', 'H-7', '280049843', 'Admin_ICT', '2022-03-04 23:40:12');
INSERT INTO `location_info` VALUES ('63', 'I-1', '280049843', 'Admin_ICT', '2022-03-04 23:40:12');
INSERT INTO `location_info` VALUES ('64', 'I-2', '280049843', 'Admin_ICT', '2022-03-04 23:40:12');
INSERT INTO `location_info` VALUES ('65', 'I-3', '280049843', 'Admin_ICT', '2022-03-04 23:40:12');
INSERT INTO `location_info` VALUES ('66', 'I-4', '280049843', 'Admin_ICT', '2022-03-04 23:40:12');
INSERT INTO `location_info` VALUES ('67', 'I-5', '280049843', 'Admin_ICT', '2022-03-04 23:40:12');
INSERT INTO `location_info` VALUES ('68', 'I-6', '280049843', 'Admin_ICT', '2022-03-04 23:40:12');
INSERT INTO `location_info` VALUES ('69', 'I-7', '280049843', 'Admin_ICT', '2022-03-04 23:40:12');
INSERT INTO `location_info` VALUES ('70', 'J-1', '280049843', 'Admin_ICT', '2022-03-04 23:40:12');
INSERT INTO `location_info` VALUES ('71', 'J-2', '280049843', 'Admin_ICT', '2022-03-04 23:40:12');
INSERT INTO `location_info` VALUES ('72', 'J-3', '280049843', 'Admin_ICT', '2022-03-04 23:40:12');
INSERT INTO `location_info` VALUES ('73', 'J-4', '280049843', 'Admin_ICT', '2022-03-04 23:40:12');
INSERT INTO `location_info` VALUES ('74', 'J-5', '280049843', 'Admin_ICT', '2022-03-04 23:40:12');
INSERT INTO `location_info` VALUES ('75', 'J-6', '280049843', 'Admin_ICT', '2022-03-04 23:40:12');
INSERT INTO `location_info` VALUES ('76', 'J-7', '280049843', 'Admin_ICT', '2022-03-04 23:40:12');
INSERT INTO `location_info` VALUES ('77', 'J-8', '280049843', 'Admin_ICT', '2022-03-04 23:40:12');
INSERT INTO `location_info` VALUES ('78', 'J-9', '280049843', 'Admin_ICT', '2022-03-04 23:40:12');
INSERT INTO `location_info` VALUES ('79', 'J-10', '280049843', 'Admin_ICT', '2022-03-04 23:40:12');
INSERT INTO `location_info` VALUES ('80', 'K-1', '280049843', 'Admin_ICT', '2022-03-04 23:40:12');
INSERT INTO `location_info` VALUES ('81', 'K-2', '280049843', 'Admin_ICT', '2022-03-04 23:40:12');
INSERT INTO `location_info` VALUES ('82', 'K-3', '280049843', 'Admin_ICT', '2022-03-04 23:40:12');
INSERT INTO `location_info` VALUES ('83', 'K-4', '280049843', 'Admin_ICT', '2022-03-04 23:40:13');
INSERT INTO `location_info` VALUES ('84', 'K-5', '280049843', 'Admin_ICT', '2022-03-04 23:40:13');
INSERT INTO `location_info` VALUES ('85', 'K-6', '280049843', 'Admin_ICT', '2022-03-04 23:40:13');
INSERT INTO `location_info` VALUES ('86', 'K-7', '280049843', 'Admin_ICT', '2022-03-04 23:40:13');
INSERT INTO `location_info` VALUES ('87', 'L-1', '280049843', 'Admin_ICT', '2022-03-04 23:40:13');
INSERT INTO `location_info` VALUES ('88', 'L-2', '280049843', 'Admin_ICT', '2022-03-04 23:40:13');
INSERT INTO `location_info` VALUES ('89', 'L-3', '280049843', 'Admin_ICT', '2022-03-04 23:40:13');
INSERT INTO `location_info` VALUES ('90', 'L-4', '280049843', 'Admin_ICT', '2022-03-04 23:40:13');
INSERT INTO `location_info` VALUES ('91', 'L-5', '280049843', 'Admin_ICT', '2022-03-04 23:40:13');
INSERT INTO `location_info` VALUES ('92', 'L-6', '280049843', 'Admin_ICT', '2022-03-04 23:40:13');
INSERT INTO `location_info` VALUES ('93', 'L-7', '280049843', 'Admin_ICT', '2022-03-04 23:40:13');
INSERT INTO `location_info` VALUES ('94', 'L-8', '280049843', 'Admin_ICT', '2022-03-04 23:40:13');
INSERT INTO `location_info` VALUES ('95', 'L-9', '280049843', 'Admin_ICT', '2022-03-04 23:40:13');
INSERT INTO `location_info` VALUES ('96', 'L-10', '280049843', 'Admin_ICT', '2022-03-04 23:40:13');
INSERT INTO `location_info` VALUES ('97', 'M-1', '280049843', 'Admin_ICT', '2022-03-04 23:40:13');
INSERT INTO `location_info` VALUES ('98', 'M-2', '280049843', 'Admin_ICT', '2022-03-04 23:40:13');
INSERT INTO `location_info` VALUES ('99', 'M-3', '280049843', 'Admin_ICT', '2022-03-04 23:40:13');
INSERT INTO `location_info` VALUES ('100', 'M-4', '280049843', 'Admin_ICT', '2022-03-04 23:40:13');
INSERT INTO `location_info` VALUES ('101', 'M-5', '280049843', 'Admin_ICT', '2022-03-04 23:40:13');
INSERT INTO `location_info` VALUES ('102', 'M-6', '280049843', 'Admin_ICT', '2022-03-04 23:40:13');
INSERT INTO `location_info` VALUES ('103', 'M-7', '280049843', 'Admin_ICT', '2022-03-04 23:40:13');

-- ----------------------------
-- Table structure for `return_info`
-- ----------------------------
DROP TABLE IF EXISTS `return_info`;
CREATE TABLE `return_info` (
  `return_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `issue_id` int(10) DEFAULT NULL,
  `book_id` varchar(30) DEFAULT NULL,
  `isbn_number` varchar(255) DEFAULT NULL,
  `book_name` varchar(255) DEFAULT NULL,
  `author_id` varchar(30) DEFAULT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `recording_persion_id` varchar(50) DEFAULT NULL,
  `recording_persion_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of return_info
-- ----------------------------
INSERT INTO `return_info` VALUES ('13', '9212', '33', 'book_9', '978-984-92575-9-2', 'চিরঞ্জীব বঙ্গবন্ধু', 'auth_19', 'আইরিন খান', '9212', 'Kausar Ahmed', '2022-03-25 16:23:42');
INSERT INTO `return_info` VALUES ('14', '9212', '45', 'book_87', '978-984-95302-0-1', 'বঙ্গবন্ধু ও বাংলাদেশ', 'auth_195', 'সেলিনা হোসেন', '9212', 'Kausar Ahmed', '2022-03-27 16:24:15');
INSERT INTO `return_info` VALUES ('15', '11111', '38', 'book_91', '978-984-07-6040-4', 'বঙ্গবন্ধুর বীরগাথা', '200', 'সৈয়দ শামসুল হক', '11111', 'Atik', '2022-03-20 16:25:03');
INSERT INTO `return_info` VALUES ('16', '11111', '40', 'book_45', '984-70315-0089-2', 'মুক্তিযুদ্ধের প্রিয়গল্প', 'auth_57', 'কবীর চৌধুরী', '11111', 'Atik', '2022-03-27 16:25:12');
INSERT INTO `return_info` VALUES ('17', '5555', '36', 'book_92', '978-984-07-6021-3', 'বঙ্গবন্ধুকে নিবেদিত গল্প', 'auth_201', 'হাবীবুল্লাহ সিরাজী', '5555', 'Nasir', '2022-03-25 16:25:41');
INSERT INTO `return_info` VALUES ('18', '5555', '35', 'book_89', '978-984-502-567-6', 'বঙ্গবন্ধুর সমাধীতে', 'auth_200', 'সৈয়দ শামসুল হক', '5555', 'Nasir', '2022-03-20 16:26:19');
INSERT INTO `return_info` VALUES ('19', '8575', '42', 'book_85', '984-70154-0073-05', 'মুক্তিযুদ্ধে নারী গাথা', 'auth_189', 'সাহেদ মন্তাজ কুতুব আজাদ', '8575', 'Sajib', '2022-03-20 16:26:43');
INSERT INTO `return_info` VALUES ('20', '8575', '44', 'book_87', '978-984-95302-0-1', 'বঙ্গবন্ধু ও বাংলাদেশ', 'auth_195', 'সেলিনা হোসেন', '8575', 'Sajib', '2022-03-25 16:26:50');
INSERT INTO `return_info` VALUES ('21', '11111', '46', 'book_92', '978-984-07-6021-3', 'বঙ্গবন্ধুকে নিবেদিত গল্প', 'auth_201', 'হাবীবুল্লাহ সিরাজী', '11111', 'Atik', '2022-03-20 21:15:01');
INSERT INTO `return_info` VALUES ('22', '5555', '54', 'book_96', '123456789', 'bangla', 'auth_8', 'Surma Zahid', '5555', 'Nasir', '2022-03-21 17:37:27');
INSERT INTO `return_info` VALUES ('23', '9212', '55', 'book_84', '984-07-5869-1', 'আগরতলা ষড়যন্ত্র মামলা', 'auth_188', 'সাহিদা বেগম', '9212', 'Kausar Ahmed', '2022-03-22 02:03:12');
INSERT INTO `return_info` VALUES ('24', '9212', '52', 'book_96', '123456789', 'bangla', 'auth_8', 'Surma Zahid', '9212', 'Kausar Ahmed', '2022-03-22 10:15:34');
INSERT INTO `return_info` VALUES ('25', '9212', '56', 'book_97', '1234567', 'english', 'auth_1', 'Alamgir Kabir', '9212', 'Kausar Ahmed', '2022-04-18 14:26:16');
INSERT INTO `return_info` VALUES ('26', '9212', '57', 'book_97', '1234567', 'english', 'auth_1', 'Alamgir Kabir', '9212', 'Kausar Ahmed', '2022-04-18 14:28:05');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', 'Kausar Ahmed', '9212', 'kausarcse@gmail.com', '+8801738128576', '6877010576', 'male', '1991-01-06', 'ICT', 'Application Developer', 'Admin', 'Active', 'kausar@76', 'kausar@76', 'kausarNewPic.jpg', 'atik', 'atik', '2022-02-28 01:19:03');
INSERT INTO `user_info` VALUES ('3', 'Sajib', '8575', 'sajib@gmail.com', '+8801845725656', '652545857', 'male', '2022-02-03', 'Director', 'Assistant Engineer', 'Admin', 'Active', 'sajib#500', 'sajib#500', 'sajib.jpg', 'atik', 'atik', '2022-02-28 01:22:31');
INSERT INTO `user_info` VALUES ('4', 'Nasir', '5555', 'nasir@gmail.com', '+88+8801548652454', '6545857545', 'male', '2022-02-03', 'ICT', 'Assistant Director (Innovation)', 'Super Admin', 'Active', 'nasir#76', 'nasir#76', 'download.png', '9212', 'Kausar Ahmed', '2022-03-15 07:13:44');
INSERT INTO `user_info` VALUES ('5', 'Atik', '11111', 'atik@gmail.com', '+8801546857545', '52458565', 'male', '2022-02-28', 'Finance', 'Assistant Executive', 'User', 'Active', 'atik#766', 'atik#766', 'beprc_logo.png', '9212', 'Kausar Ahmed', '2022-02-28 22:56:36');
INSERT INTO `user_info` VALUES ('6', 'Saiful', '78780', 'asdsad@dfdf.com', '+8801863903291', '89', 'male', '2022-03-15', 'Admin & Finance', 'Assistant Director (HR & PR)', 'User', 'Active', '$@j1b3030', '$@j1b3030', 'lib_slide_3.jpg', '9212', 'Kausar Ahmed', '2022-03-12 21:09:47');
INSERT INTO `user_info` VALUES ('7', 'Kamal', '33333', 'dsfdsfdsf@gmail.com', '+8801738128576', '554466332255', 'male', '2022-03-01', 'Secretary', 'Assistant Director (HR & PR)', 'Super Admin', 'Active', 'kamal@76', 'kamal@76', 'propic.jpg', '5555', 'Nasir', '2022-03-20 00:39:34');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_login
-- ----------------------------
INSERT INTO `user_login` VALUES ('1', 'Kausar Ahmed', '9212', 'kausarcse@gmail.com', '+8801738128576', '6877010576', 'male', '1991-01-06', 'ICT', 'Application Developer', 'Admin', 'Active', 'kausar@76', 'kausar@76', 'kausarNewPic.jpg', 'atik', 'atik', '2022-02-28 01:19:03');
INSERT INTO `user_login` VALUES ('3', 'Sajib', '8575', 'sajib@gmail.com', '+8801845725656', '652545857', 'male', '2022-02-03', 'Director', 'Assistant Engineer', 'Admin', 'Active', 'sajib#500', 'sajib#500', 'sajib.jpg', 'atik', 'atik', '2022-02-28 01:22:31');
INSERT INTO `user_login` VALUES ('4', 'Nasir', '5555', 'nasir@gmail.com', '+88+8801548652454', '6545857545', 'male', '2022-02-03', 'ICT', 'Assistant Director (Innovation)', 'Super Admin', 'Active', 'nasir#76', 'nasir#76', 'download.png', '9212', 'Kausar Ahmed', '2022-03-15 07:13:44');
INSERT INTO `user_login` VALUES ('5', 'Atik', '11111', 'atik@gmail.com', '+8801546857545', '52458565', 'male', '2022-02-28', 'Finance', 'Assistant Executive', 'User', 'Active', 'atik#766', 'atik#766', 'beprc_logo.png', '9212', 'Kausar Ahmed', '2022-02-28 22:56:36');
INSERT INTO `user_login` VALUES ('6', 'Saiful', '78780', 'asdsad@dfdf.com', '+8801863903291', '89', 'male', '2022-03-15', 'Admin & Finance', 'Assistant Director (HR & PR)', 'User', 'Active', '$@j1b3030', '$@j1b3030', 'lib_slide_3.jpg', '9212', 'Kausar Ahmed', '2022-03-12 21:09:47');
INSERT INTO `user_login` VALUES ('7', 'Kamal', '33333', 'dsfdsfdsf@gmail.com', '+8801738128576', '554466332255', 'male', '2022-03-01', 'Secretary', 'Assistant Director (HR & PR)', 'Super Admin', 'Active', 'kamal@76', 'kamal@76', 'propic.jpg', '5555', 'Nasir', '2022-03-20 00:39:34');

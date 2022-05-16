/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : lms

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2022-02-25 21:40:02
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
INSERT INTO `book_list` VALUES ('16', 'Digital Electronics', 'isbn-100-100-1000', '13', 'Engineering', '8', 'ananda', '3', 'B1', '50', '1010', 'kausar', '2022-02-25 18:08:51', '49');
INSERT INTO `book_list` VALUES ('17', 'অসমাপ্ত আত্তজীবনি', '1111-2222-3333', '46', 'আত্তজীবনি', '9', 'শেখ মজিবুর রহমান', '2', 'A2', '50', '1010', 'kausar', '2022-02-25 19:48:37', '50');

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
INSERT INTO `country` VALUES ('53', 'CI', 'Cote D\'Ivoire', 'CIV', '384', '225');
INSERT INTO `country` VALUES ('54', 'HR', 'Croatia', 'HRV', '191', '385');
INSERT INTO `country` VALUES ('55', 'CU', 'Cuba', 'CUB', '192', '53');
INSERT INTO `country` VALUES ('56', 'CY', 'Cyprus', 'CYP', '196', '357');
INSERT INTO `country` VALUES ('57', 'CZ', 'Czech Republic', 'CZE', '203', '420');
INSERT INTO `country` VALUES ('58', 'DK', 'Denmark', 'DNK', '208', '45');
INSERT INTO `country` VALUES ('59', 'DJ', 'Djibouti', 'DJI', '262', '253');
INSERT INTO `country` VALUES ('60', 'DM', 'Dominica', 'DMA', '212', '1767');
INSERT INTO `country` VALUES ('61', 'DO', 'Dominican Republic', 'DOM', '214', '1809');
INSERT INTO `country` VALUES ('62', 'EC', 'Ecuador', 'ECU', '218', '593');
INSERT INTO `country` VALUES ('63', 'EG', 'Egypt', 'EGY', '818', '20');
INSERT INTO `country` VALUES ('64', 'SV', 'El Salvador', 'SLV', '222', '503');
INSERT INTO `country` VALUES ('65', 'GQ', 'Equatorial Guinea', 'GNQ', '226', '240');
INSERT INTO `country` VALUES ('66', 'ER', 'Eritrea', 'ERI', '232', '291');
INSERT INTO `country` VALUES ('67', 'EE', 'Estonia', 'EST', '233', '372');
INSERT INTO `country` VALUES ('68', 'ET', 'Ethiopia', 'ETH', '231', '251');
INSERT INTO `country` VALUES ('69', 'FK', 'Falkland Islands (Malvinas)', 'FLK', '238', '500');
INSERT INTO `country` VALUES ('70', 'FO', 'Faroe Islands', 'FRO', '234', '298');
INSERT INTO `country` VALUES ('71', 'FJ', 'Fiji', 'FJI', '242', '679');
INSERT INTO `country` VALUES ('72', 'FI', 'Finland', 'FIN', '246', '358');
INSERT INTO `country` VALUES ('73', 'FR', 'France', 'FRA', '250', '33');
INSERT INTO `country` VALUES ('74', 'GF', 'French Guiana', 'GUF', '254', '594');
INSERT INTO `country` VALUES ('75', 'PF', 'French Polynesia', 'PYF', '258', '689');
INSERT INTO `country` VALUES ('76', 'TF', 'French Southern Territories', null, null, '0');
INSERT INTO `country` VALUES ('77', 'GA', 'Gabon', 'GAB', '266', '241');
INSERT INTO `country` VALUES ('78', 'GM', 'Gambia', 'GMB', '270', '220');
INSERT INTO `country` VALUES ('79', 'GE', 'Georgia', 'GEO', '268', '995');
INSERT INTO `country` VALUES ('80', 'DE', 'Germany', 'DEU', '276', '49');
INSERT INTO `country` VALUES ('81', 'GH', 'Ghana', 'GHA', '288', '233');
INSERT INTO `country` VALUES ('82', 'GI', 'Gibraltar', 'GIB', '292', '350');
INSERT INTO `country` VALUES ('83', 'GR', 'Greece', 'GRC', '300', '30');
INSERT INTO `country` VALUES ('84', 'GL', 'Greenland', 'GRL', '304', '299');
INSERT INTO `country` VALUES ('85', 'GD', 'Grenada', 'GRD', '308', '1473');
INSERT INTO `country` VALUES ('86', 'GP', 'Guadeloupe', 'GLP', '312', '590');
INSERT INTO `country` VALUES ('87', 'GU', 'Guam', 'GUM', '316', '1671');
INSERT INTO `country` VALUES ('88', 'GT', 'Guatemala', 'GTM', '320', '502');
INSERT INTO `country` VALUES ('89', 'GN', 'Guinea', 'GIN', '324', '224');
INSERT INTO `country` VALUES ('90', 'GW', 'Guinea-Bissau', 'GNB', '624', '245');
INSERT INTO `country` VALUES ('91', 'GY', 'Guyana', 'GUY', '328', '592');
INSERT INTO `country` VALUES ('92', 'HT', 'Haiti', 'HTI', '332', '509');
INSERT INTO `country` VALUES ('93', 'HM', 'Heard Island and Mcdonald Islands', null, null, '0');
INSERT INTO `country` VALUES ('94', 'VA', 'Holy See (Vatican City State)', 'VAT', '336', '39');
INSERT INTO `country` VALUES ('95', 'HN', 'Honduras', 'HND', '340', '504');
INSERT INTO `country` VALUES ('96', 'HK', 'Hong Kong', 'HKG', '344', '852');
INSERT INTO `country` VALUES ('97', 'HU', 'Hungary', 'HUN', '348', '36');
INSERT INTO `country` VALUES ('98', 'IS', 'Iceland', 'ISL', '352', '354');
INSERT INTO `country` VALUES ('99', 'IN', 'India', 'IND', '356', '91');
INSERT INTO `country` VALUES ('100', 'ID', 'Indonesia', 'IDN', '360', '62');
INSERT INTO `country` VALUES ('101', 'IR', 'Iran, Islamic Republic of', 'IRN', '364', '98');
INSERT INTO `country` VALUES ('102', 'IQ', 'Iraq', 'IRQ', '368', '964');
INSERT INTO `country` VALUES ('103', 'IE', 'Ireland', 'IRL', '372', '353');
INSERT INTO `country` VALUES ('104', 'IL', 'Israel', 'ISR', '376', '972');
INSERT INTO `country` VALUES ('105', 'IT', 'Italy', 'ITA', '380', '39');
INSERT INTO `country` VALUES ('106', 'JM', 'Jamaica', 'JAM', '388', '1876');
INSERT INTO `country` VALUES ('107', 'JP', 'Japan', 'JPN', '392', '81');
INSERT INTO `country` VALUES ('108', 'JO', 'Jordan', 'JOR', '400', '962');
INSERT INTO `country` VALUES ('109', 'KZ', 'Kazakhstan', 'KAZ', '398', '7');
INSERT INTO `country` VALUES ('110', 'KE', 'Kenya', 'KEN', '404', '254');
INSERT INTO `country` VALUES ('111', 'KI', 'Kiribati', 'KIR', '296', '686');
INSERT INTO `country` VALUES ('112', 'KP', 'Korea, Democratic People\'s Republic of', 'PRK', '408', '850');
INSERT INTO `country` VALUES ('113', 'KR', 'Korea, Republic of', 'KOR', '410', '82');
INSERT INTO `country` VALUES ('114', 'KW', 'Kuwait', 'KWT', '414', '965');
INSERT INTO `country` VALUES ('115', 'KG', 'Kyrgyzstan', 'KGZ', '417', '996');
INSERT INTO `country` VALUES ('116', 'LA', 'Lao People\'s Democratic Republic', 'LAO', '418', '856');
INSERT INTO `country` VALUES ('117', 'LV', 'Latvia', 'LVA', '428', '371');
INSERT INTO `country` VALUES ('118', 'LB', 'Lebanon', 'LBN', '422', '961');
INSERT INTO `country` VALUES ('119', 'LS', 'Lesotho', 'LSO', '426', '266');
INSERT INTO `country` VALUES ('120', 'LR', 'Liberia', 'LBR', '430', '231');
INSERT INTO `country` VALUES ('121', 'LY', 'Libyan Arab Jamahiriya', 'LBY', '434', '218');
INSERT INTO `country` VALUES ('122', 'LI', 'Liechtenstein', 'LIE', '438', '423');
INSERT INTO `country` VALUES ('123', 'LT', 'Lithuania', 'LTU', '440', '370');
INSERT INTO `country` VALUES ('124', 'LU', 'Luxembourg', 'LUX', '442', '352');
INSERT INTO `country` VALUES ('125', 'MO', 'Macao', 'MAC', '446', '853');
INSERT INTO `country` VALUES ('126', 'MK', 'Macedonia, the Former Yugoslav Republic of', 'MKD', '807', '389');
INSERT INTO `country` VALUES ('127', 'MG', 'Madagascar', 'MDG', '450', '261');
INSERT INTO `country` VALUES ('128', 'MW', 'Malawi', 'MWI', '454', '265');
INSERT INTO `country` VALUES ('129', 'MY', 'Malaysia', 'MYS', '458', '60');
INSERT INTO `country` VALUES ('130', 'MV', 'Maldives', 'MDV', '462', '960');
INSERT INTO `country` VALUES ('131', 'ML', 'Mali', 'MLI', '466', '223');
INSERT INTO `country` VALUES ('132', 'MT', 'Malta', 'MLT', '470', '356');
INSERT INTO `country` VALUES ('133', 'MH', 'Marshall Islands', 'MHL', '584', '692');
INSERT INTO `country` VALUES ('134', 'MQ', 'Martinique', 'MTQ', '474', '596');
INSERT INTO `country` VALUES ('135', 'MR', 'Mauritania', 'MRT', '478', '222');
INSERT INTO `country` VALUES ('136', 'MU', 'Mauritius', 'MUS', '480', '230');
INSERT INTO `country` VALUES ('137', 'YT', 'Mayotte', null, null, '269');
INSERT INTO `country` VALUES ('138', 'MX', 'Mexico', 'MEX', '484', '52');
INSERT INTO `country` VALUES ('139', 'FM', 'Micronesia, Federated States of', 'FSM', '583', '691');
INSERT INTO `country` VALUES ('140', 'MD', 'Moldova, Republic of', 'MDA', '498', '373');
INSERT INTO `country` VALUES ('141', 'MC', 'Monaco', 'MCO', '492', '377');
INSERT INTO `country` VALUES ('142', 'MN', 'Mongolia', 'MNG', '496', '976');
INSERT INTO `country` VALUES ('143', 'MS', 'Montserrat', 'MSR', '500', '1664');
INSERT INTO `country` VALUES ('144', 'MA', 'Morocco', 'MAR', '504', '212');
INSERT INTO `country` VALUES ('145', 'MZ', 'Mozambique', 'MOZ', '508', '258');
INSERT INTO `country` VALUES ('146', 'MM', 'Myanmar', 'MMR', '104', '95');
INSERT INTO `country` VALUES ('147', 'NA', 'Namibia', 'NAM', '516', '264');
INSERT INTO `country` VALUES ('148', 'NR', 'Nauru', 'NRU', '520', '674');
INSERT INTO `country` VALUES ('149', 'NP', 'Nepal', 'NPL', '524', '977');
INSERT INTO `country` VALUES ('150', 'NL', 'Netherlands', 'NLD', '528', '31');
INSERT INTO `country` VALUES ('151', 'AN', 'Netherlands Antilles', 'ANT', '530', '599');
INSERT INTO `country` VALUES ('152', 'NC', 'New Caledonia', 'NCL', '540', '687');
INSERT INTO `country` VALUES ('153', 'NZ', 'New Zealand', 'NZL', '554', '64');
INSERT INTO `country` VALUES ('154', 'NI', 'Nicaragua', 'NIC', '558', '505');
INSERT INTO `country` VALUES ('155', 'NE', 'Niger', 'NER', '562', '227');
INSERT INTO `country` VALUES ('156', 'NG', 'Nigeria', 'NGA', '566', '234');
INSERT INTO `country` VALUES ('157', 'NU', 'Niue', 'NIU', '570', '683');
INSERT INTO `country` VALUES ('158', 'NF', 'Norfolk Island', 'NFK', '574', '672');
INSERT INTO `country` VALUES ('159', 'MP', 'Northern Mariana Islands', 'MNP', '580', '1670');
INSERT INTO `country` VALUES ('160', 'NO', 'Norway', 'NOR', '578', '47');
INSERT INTO `country` VALUES ('161', 'OM', 'Oman', 'OMN', '512', '968');
INSERT INTO `country` VALUES ('162', 'PK', 'Pakistan', 'PAK', '586', '92');
INSERT INTO `country` VALUES ('163', 'PW', 'Palau', 'PLW', '585', '680');
INSERT INTO `country` VALUES ('164', 'PS', 'Palestinian Territory, Occupied', null, null, '970');
INSERT INTO `country` VALUES ('165', 'PA', 'Panama', 'PAN', '591', '507');
INSERT INTO `country` VALUES ('166', 'PG', 'Papua New Guinea', 'PNG', '598', '675');
INSERT INTO `country` VALUES ('167', 'PY', 'Paraguay', 'PRY', '600', '595');
INSERT INTO `country` VALUES ('168', 'PE', 'Peru', 'PER', '604', '51');
INSERT INTO `country` VALUES ('169', 'PH', 'Philippines', 'PHL', '608', '63');
INSERT INTO `country` VALUES ('170', 'PN', 'Pitcairn', 'PCN', '612', '0');
INSERT INTO `country` VALUES ('171', 'PL', 'Poland', 'POL', '616', '48');
INSERT INTO `country` VALUES ('172', 'PT', 'Portugal', 'PRT', '620', '351');
INSERT INTO `country` VALUES ('173', 'PR', 'Puerto Rico', 'PRI', '630', '1787');
INSERT INTO `country` VALUES ('174', 'QA', 'Qatar', 'QAT', '634', '974');
INSERT INTO `country` VALUES ('175', 'RE', 'Reunion', 'REU', '638', '262');
INSERT INTO `country` VALUES ('176', 'RO', 'Romania', 'ROM', '642', '40');
INSERT INTO `country` VALUES ('177', 'RU', 'Russian Federation', 'RUS', '643', '70');
INSERT INTO `country` VALUES ('178', 'RW', 'Rwanda', 'RWA', '646', '250');
INSERT INTO `country` VALUES ('179', 'SH', 'Saint Helena', 'SHN', '654', '290');
INSERT INTO `country` VALUES ('180', 'KN', 'Saint Kitts and Nevis', 'KNA', '659', '1869');
INSERT INTO `country` VALUES ('181', 'LC', 'Saint Lucia', 'LCA', '662', '1758');
INSERT INTO `country` VALUES ('182', 'PM', 'Saint Pierre and Miquelon', 'SPM', '666', '508');
INSERT INTO `country` VALUES ('183', 'VC', 'Saint Vincent and the Grenadines', 'VCT', '670', '1784');
INSERT INTO `country` VALUES ('184', 'WS', 'Samoa', 'WSM', '882', '684');
INSERT INTO `country` VALUES ('185', 'SM', 'San Marino', 'SMR', '674', '378');
INSERT INTO `country` VALUES ('186', 'ST', 'Sao Tome and Principe', 'STP', '678', '239');
INSERT INTO `country` VALUES ('187', 'SA', 'Saudi Arabia', 'SAU', '682', '966');
INSERT INTO `country` VALUES ('188', 'SN', 'Senegal', 'SEN', '686', '221');
INSERT INTO `country` VALUES ('189', 'CS', 'Serbia and Montenegro', null, null, '381');
INSERT INTO `country` VALUES ('190', 'SC', 'Seychelles', 'SYC', '690', '248');
INSERT INTO `country` VALUES ('191', 'SL', 'Sierra Leone', 'SLE', '694', '232');
INSERT INTO `country` VALUES ('192', 'SG', 'Singapore', 'SGP', '702', '65');
INSERT INTO `country` VALUES ('193', 'SK', 'Slovakia', 'SVK', '703', '421');
INSERT INTO `country` VALUES ('194', 'SI', 'Slovenia', 'SVN', '705', '386');
INSERT INTO `country` VALUES ('195', 'SB', 'Solomon Islands', 'SLB', '90', '677');
INSERT INTO `country` VALUES ('196', 'SO', 'Somalia', 'SOM', '706', '252');
INSERT INTO `country` VALUES ('197', 'ZA', 'South Africa', 'ZAF', '710', '27');
INSERT INTO `country` VALUES ('198', 'GS', 'South Georgia and the South Sandwich Islands', null, null, '0');
INSERT INTO `country` VALUES ('199', 'ES', 'Spain', 'ESP', '724', '34');
INSERT INTO `country` VALUES ('200', 'LK', 'Sri Lanka', 'LKA', '144', '94');
INSERT INTO `country` VALUES ('201', 'SD', 'Sudan', 'SDN', '736', '249');
INSERT INTO `country` VALUES ('202', 'SR', 'Suriname', 'SUR', '740', '597');
INSERT INTO `country` VALUES ('203', 'SJ', 'Svalbard and Jan Mayen', 'SJM', '744', '47');
INSERT INTO `country` VALUES ('204', 'SZ', 'Swaziland', 'SWZ', '748', '268');
INSERT INTO `country` VALUES ('205', 'SE', 'Sweden', 'SWE', '752', '46');
INSERT INTO `country` VALUES ('206', 'CH', 'Switzerland', 'CHE', '756', '41');
INSERT INTO `country` VALUES ('207', 'SY', 'Syrian Arab Republic', 'SYR', '760', '963');
INSERT INTO `country` VALUES ('208', 'TW', 'Taiwan, Province of China', 'TWN', '158', '886');
INSERT INTO `country` VALUES ('209', 'TJ', 'Tajikistan', 'TJK', '762', '992');
INSERT INTO `country` VALUES ('210', 'TZ', 'Tanzania, United Republic of', 'TZA', '834', '255');
INSERT INTO `country` VALUES ('211', 'TH', 'Thailand', 'THA', '764', '66');
INSERT INTO `country` VALUES ('212', 'TL', 'Timor-Leste', null, null, '670');
INSERT INTO `country` VALUES ('213', 'TG', 'Togo', 'TGO', '768', '228');
INSERT INTO `country` VALUES ('214', 'TK', 'Tokelau', 'TKL', '772', '690');
INSERT INTO `country` VALUES ('215', 'TO', 'Tonga', 'TON', '776', '676');
INSERT INTO `country` VALUES ('216', 'TT', 'Trinidad and Tobago', 'TTO', '780', '1868');
INSERT INTO `country` VALUES ('217', 'TN', 'Tunisia', 'TUN', '788', '216');
INSERT INTO `country` VALUES ('218', 'TR', 'Turkey', 'TUR', '792', '90');
INSERT INTO `country` VALUES ('219', 'TM', 'Turkmenistan', 'TKM', '795', '7370');
INSERT INTO `country` VALUES ('220', 'TC', 'Turks and Caicos Islands', 'TCA', '796', '1649');
INSERT INTO `country` VALUES ('221', 'TV', 'Tuvalu', 'TUV', '798', '688');
INSERT INTO `country` VALUES ('222', 'UG', 'Uganda', 'UGA', '800', '256');
INSERT INTO `country` VALUES ('223', 'UA', 'Ukraine', 'UKR', '804', '380');
INSERT INTO `country` VALUES ('224', 'AE', 'United Arab Emirates', 'ARE', '784', '971');
INSERT INTO `country` VALUES ('225', 'GB', 'United Kingdom', 'GBR', '826', '44');
INSERT INTO `country` VALUES ('226', 'US', 'United States', 'USA', '840', '1');
INSERT INTO `country` VALUES ('227', 'UM', 'United States Minor Outlying Islands', null, null, '1');
INSERT INTO `country` VALUES ('228', 'UY', 'Uruguay', 'URY', '858', '598');
INSERT INTO `country` VALUES ('229', 'UZ', 'Uzbekistan', 'UZB', '860', '998');
INSERT INTO `country` VALUES ('230', 'VU', 'Vanuatu', 'VUT', '548', '678');
INSERT INTO `country` VALUES ('231', 'VE', 'Venezuela', 'VEN', '862', '58');
INSERT INTO `country` VALUES ('232', 'VN', 'Viet Nam', 'VNM', '704', '84');
INSERT INTO `country` VALUES ('233', 'VG', 'Virgin Islands, British', 'VGB', '92', '1284');
INSERT INTO `country` VALUES ('234', 'VI', 'Virgin Islands, U.s.', 'VIR', '850', '1340');
INSERT INTO `country` VALUES ('235', 'WF', 'Wallis and Futuna', 'WLF', '876', '681');
INSERT INTO `country` VALUES ('236', 'EH', 'Western Sahara', 'ESH', '732', '212');
INSERT INTO `country` VALUES ('237', 'YE', 'Yemen', 'YEM', '887', '967');
INSERT INTO `country` VALUES ('238', 'ZM', 'Zambia', 'ZMB', '894', '260');
INSERT INTO `country` VALUES ('239', 'ZW', 'Zimbabwe', 'ZWE', '716', '263');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

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

-- ----------------------------
-- Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
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
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('39', 'kausar', 'kausar ahmed', '1010', '12345', '12345', 'Admin', 'Active', 'kausarcse@gmail.com', '07138128576', 'Marketing', 'Application Developer', 'Thailand', 'default.png', '1010', 'kausar', '2022-01-02 01:10:25');
INSERT INTO `user_info` VALUES ('40', 'emp', 'kausar ahmed', 'emp', '12345', '12345', 'Admin', 'Active', 'arif@gmail.com', '01738128576', 'Administration', 'Assistant Engineer', 'France', 'default.png', '1010', 'kausar', '2022-01-02 01:10:47');
INSERT INTO `user_info` VALUES ('41', 'employee', 'kausar ahmed', 'employee', '12345', '12345', 'User', 'Active', 'kausarcse@gmail.com', '01738128576', 'Director', 'Application Implementer', 'Bangladesh', 'default.png', '1010', 'kausar', '2022-01-02 01:10:06');
INSERT INTO `user_info` VALUES ('42', 'Engr. Saddam Hossain (Sajib)', 'Engr. Saddam Hossain (Sajib)', '280049843', '12345', '12345', 'Admin', 'Active', 'hossainsajib.ict@gmail.com', '01863903291', 'ICT', 'Assistant Programmer', 'Bangladesh', 'sajib.jpg', '1010', 'kausar', '2022-02-25 21:36:26');

-- ----------------------------
-- Table structure for `user_login`
-- ----------------------------
DROP TABLE IF EXISTS `user_login`;
CREATE TABLE `user_login` (
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
-- Records of user_login
-- ----------------------------
INSERT INTO `user_login` VALUES ('93', 'emp', 'emp', 'kausar ahmed', '', '', '', '12345', 'arif@gmail.com', '01738128576', 'Administration', 'Assistant Engineer', 'France', 'Admin', 'Active', 'default.png', '1010', 'kausar', '2022-01-02 01:10:47');
INSERT INTO `user_login` VALUES ('92', '1010', 'kausar', 'kausar ahmed', '', '', '', '12345', 'kausarcse@gmail.com', '07138128576', 'Marketing', 'Application Developer', 'Thailand', 'Admin', 'Active', 'default.png', '1010', 'kausar', '2022-01-02 01:10:25');
INSERT INTO `user_login` VALUES ('94', 'employee', 'employee', 'kausar ahmed', '', '', '', '12345', 'kausarcse@gmail.com', '01738128576', 'Director', 'Application Implementer', 'Bangladesh', 'User', 'Active', 'default.png', '1010', 'kausar', '2022-01-02 01:10:06');
INSERT INTO `user_login` VALUES ('95', '280049843', 'Engr. Saddam Hossain (Sajib)', 'Engr. Saddam Hossain (Sajib)', '', '', '', '12345', 'hossainsajib.ict@gmail.com', '01863903291', 'ICT', 'Assistant Programmer', 'Bangladesh', 'Admin', 'Active', 'sajib.jpg', '1010', 'kausar', '2022-02-25 21:36:26');

-- ----------------------------
-- Table structure for `user_type`
-- ----------------------------
DROP TABLE IF EXISTS `user_type`;
CREATE TABLE `user_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `short_name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_type
-- ----------------------------
INSERT INTO `user_type` VALUES ('1', 'Super Admin', 'super_admin');
INSERT INTO `user_type` VALUES ('2', 'Admin', 'admin');
INSERT INTO `user_type` VALUES ('3', 'Senior Officer LC & PI', 'senior_officer_lc_pi');
INSERT INTO `user_type` VALUES ('4', 'Senior Officer B2B', 'senior_officer_b2b');
INSERT INTO `user_type` VALUES ('5', 'Assistant Manager ', 'assistant_manager');
INSERT INTO `user_type` VALUES ('6', 'Assistant Manager Banking', 'assistant_manager_banking');
INSERT INTO `user_type` VALUES ('7', 'Officer', 'officer');
INSERT INTO `user_type` VALUES ('8', 'Assistant Officer BTMA', 'assistant_officer_btma');
INSERT INTO `user_type` VALUES ('9', 'Assistant Officer B2B', 'assistant_officer_b2b');
INSERT INTO `user_type` VALUES ('10', 'Manager', 'manager');
INSERT INTO `user_type` VALUES ('11', 'Sub User', 'sub_user');

-- ----------------------------
-- View structure for `final`
-- ----------------------------
DROP VIEW IF EXISTS `final`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `final` AS select `x`.`author_id` AS `author_id`,`x`.`author_name` AS `author_name`,`x`.`book_name` AS `book_name`,`x`.`loc_id` AS `loc_id`,`l`.`location_name` AS `location_name` from ((select `a`.`author_id` AS `author_id`,`a`.`author_name` AS `author_name`,`b`.`book_name` AS `book_name`,`b`.`loc_id` AS `loc_id` from (`lms`.`book_list` `b` join `lms`.`author` `a` on(`b`.`author_id` = `a`.`author_id`))) `x` join `lms`.`location_info` `l` on(`x`.`loc_id` = `l`.`loc_id`));

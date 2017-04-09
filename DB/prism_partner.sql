/*
Navicat MySQL Data Transfer

Source Server         : লোকাল সার্ভার
Source Server Version : 50625
Source Host           : 127.0.0.1:3306
Source Database       : prism_partner

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2017-04-08 12:15:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for airlines
-- ----------------------------
DROP TABLE IF EXISTS `airlines`;
CREATE TABLE `airlines` (
  `airlines_id` int(11) NOT NULL AUTO_INCREMENT,
  `airlines_name` varchar(255) NOT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`airlines_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of airlines
-- ----------------------------
INSERT INTO `airlines` VALUES ('1', 'Bangladesh Biman', '2015-07-01 15:34:58', '1', '2015-07-06 09:24:06', null, 'Active');
INSERT INTO `airlines` VALUES ('2', 'Regent Airways', '2015-07-06 09:24:40', '1', null, null, 'Active');
INSERT INTO `airlines` VALUES ('3', 'Thai Airways', '2015-07-06 09:24:57', '1', null, null, 'Active');
INSERT INTO `airlines` VALUES ('4', 'Air Asia', '2015-07-06 09:25:12', '1', null, null, 'Active');

-- ----------------------------
-- Table structure for attachment
-- ----------------------------
DROP TABLE IF EXISTS `attachment`;
CREATE TABLE `attachment` (
  `attachment_id` int(10) NOT NULL AUTO_INCREMENT,
  `attachment_name` varchar(250) NOT NULL,
  `description` text,
  `created_by` int(10) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(10) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  PRIMARY KEY (`attachment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attachment
-- ----------------------------
INSERT INTO `attachment` VALUES ('1', 'Board Memo', null, '1', '2016-04-19 12:58:09', null, '2016-12-14 17:59:44', 'Active');
INSERT INTO `attachment` VALUES ('2', 'LC Copy', null, '1', '2016-12-14 18:00:28', null, '2016-12-14 18:00:53', 'Active');
INSERT INTO `attachment` VALUES ('3', 'Confirmation Sheet', null, '1', '2016-12-14 18:00:42', null, '2016-12-14 18:00:55', 'Active');

-- ----------------------------
-- Table structure for bank
-- ----------------------------
DROP TABLE IF EXISTS `bank`;
CREATE TABLE `bank` (
  `bank_id` int(10) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(100) NOT NULL,
  `created_by` int(10) NOT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  PRIMARY KEY (`bank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bank
-- ----------------------------
INSERT INTO `bank` VALUES ('1', '', '1', '2015-04-01 18:29:27', null, null, 'Active');
INSERT INTO `bank` VALUES ('2', 'upload/bank/riad2.jpg', '1', '2015-04-01 18:45:27', null, null, 'Active');

-- ----------------------------
-- Table structure for bank_branch
-- ----------------------------
DROP TABLE IF EXISTS `bank_branch`;
CREATE TABLE `bank_branch` (
  `bank_branch_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bank_branch_name` varchar(100) NOT NULL,
  `bank_id` int(10) NOT NULL,
  `created_by` int(10) NOT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  PRIMARY KEY (`bank_branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bank_branch
-- ----------------------------

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(255) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1', 'Chittagong', null, null, null, null, null);
INSERT INTO `city` VALUES ('2', 'Dhaka', null, null, null, null, null);
INSERT INTO `city` VALUES ('3', 'Khulna', null, null, null, null, null);
INSERT INTO `city` VALUES ('4', 'Rajshahi', null, null, null, null, null);

-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `country_id` int(10) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(100) NOT NULL,
  `country_code` varchar(10) NOT NULL,
  `language_id` int(10) DEFAULT NULL,
  `created_by` int(10) NOT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES ('1', 'Andorra', 'AD', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('2', 'United Arab Emirates', 'AE', '3', '1', '2014-12-09 14:43:47', '1', '2014-12-09 15:05:59', 'Active');
INSERT INTO `country` VALUES ('3', 'Afghanistan', 'AF', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('4', 'Antigua and Barbuda', 'AG', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('5', 'Anguilla', 'AI', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('6', 'Albania', 'AL', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('7', 'Armenia', 'AM', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('8', 'Angola', 'AO', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('9', 'Antarctica', 'AQ', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('10', 'Argentina', 'AR', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('11', 'American Samoa', 'AS', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('12', 'Austria', 'AT', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('13', 'Australia', 'AU', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('14', 'Aruba', 'AW', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('15', 'Åland Islands', 'AX', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('16', 'Azerbaijan', 'AZ', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('17', 'Bosnia and Herzegovina', 'BA', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('18', 'Barbados', 'BB', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('19', 'Bangladesh', 'BD', '6', '1', '2014-12-09 14:43:47', '1', '2014-12-09 15:04:01', 'Active');
INSERT INTO `country` VALUES ('20', 'Belgium', 'BE', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('21', 'Burkina Faso', 'BF', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('22', 'Bulgaria', 'BG', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('23', 'Bahrain', 'BH', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('24', 'Burundi', 'BI', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('25', 'Benin', 'BJ', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('26', 'Saint Barthélemy', 'BL', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('27', 'Bermuda', 'BM', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('28', 'Brunei Darussalam', 'BN', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('29', 'Bolivia', 'BO', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('30', 'Caribbean Netherlands ', 'BQ', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('31', 'Brazil', 'BR', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('32', 'Bahamas', 'BS', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('33', 'Bhutan', 'BT', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('34', 'Bouvet Island', 'BV', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('35', 'Botswana', 'BW', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('36', 'Belarus', 'BY', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('37', 'Belize', 'BZ', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('38', 'Canada', 'CA', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('39', 'Cocos (Keeling) Islands', 'CC', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('40', 'Congo, Democratic Republic of', 'CD', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('41', 'Central African Republic', 'CF', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('42', 'Congo', 'CG', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('43', 'Switzerland', 'CH', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('44', 'Côte d\'Ivoire', 'CI', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('45', 'Cook Islands', 'CK', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('46', 'Chile', 'CL', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('47', 'Cameroon', 'CM', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('48', 'China', 'CN', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('49', 'Colombia', 'CO', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('50', 'Costa Rica', 'CR', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('51', 'Cuba', 'CU', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('52', 'Cape Verde', 'CV', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('53', 'Curaçao', 'CW', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('54', 'Christmas Island', 'CX', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('55', 'Cyprus', 'CY', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('56', 'Czech Republic', 'CZ', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('57', 'Germany', 'DE', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('58', 'Djibouti', 'DJ', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('59', 'Denmark', 'DK', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('60', 'Dominica', 'DM', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('61', 'Dominican Republic', 'DO', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('62', 'Algeria', 'DZ', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('63', 'Ecuador', 'EC', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('64', 'Estonia', 'EE', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('65', 'Egypt', 'EG', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('66', 'Western Sahara', 'EH', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('67', 'Eritrea', 'ER', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('68', 'Spain', 'ES', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('69', 'Ethiopia', 'ET', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('70', 'Finland', 'FI', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('71', 'Fiji', 'FJ', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('72', 'Falkland Islands', 'FK', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('73', 'Micronesia, Federated States of', 'FM', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('74', 'Faroe Islands', 'FO', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('75', 'France', 'FR', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('76', 'Gabon', 'GA', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('77', 'United Kingdom', 'GB', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('78', 'Grenada', 'GD', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('79', 'Georgia', 'GE', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('80', 'French Guiana', 'GF', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('81', 'Guernsey', 'GG', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('82', 'Ghana', 'GH', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('83', 'Gibraltar', 'GI', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('84', 'Greenland', 'GL', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('85', 'Gambia', 'GM', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('86', 'Guinea', 'GN', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('87', 'Guadeloupe', 'GP', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('88', 'Equatorial Guinea', 'GQ', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('89', 'Greece', 'GR', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('90', 'South Georgia and the South Sandwich Islands', 'GS', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('91', 'Guatemala', 'GT', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('92', 'Guam', 'GU', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('93', 'Guinea-Bissau', 'GW', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('94', 'Guyana', 'GY', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('95', 'Hong Kong', 'HK', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('96', 'Heard and McDonald Islands', 'HM', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('97', 'Honduras', 'HN', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('98', 'Croatia', 'HR', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('99', 'Haiti', 'HT', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('100', 'Hungary', 'HU', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('101', 'Indonesia', 'ID', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('102', 'Ireland', 'IE', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('103', 'Israel', 'IL', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('104', 'Isle of Man', 'IM', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('105', 'India', 'IN', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('106', 'British Indian Ocean Territory', 'IO', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('107', 'Iraq', 'IQ', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('108', 'Iran', 'IR', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('109', 'Iceland', 'IS', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('110', 'Italy', 'IT', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('111', 'Jersey', 'JE', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('112', 'Jamaica', 'JM', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('113', 'Jordan', 'JO', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('114', 'Japan', 'JP', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('115', 'Kenya', 'KE', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('116', 'Kyrgyzstan', 'KG', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('117', 'Cambodia', 'KH', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('118', 'Kiribati', 'KI', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('119', 'Comoros', 'KM', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('120', 'Saint Kitts and Nevis', 'KN', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('121', 'North Korea', 'KP', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('122', 'South Korea', 'KR', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('123', 'Kuwait', 'KW', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('124', 'Cayman Islands', 'KY', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('125', 'Kazakhstan', 'KZ', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('126', 'Lao People\'s Democratic Republic', 'LA', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('127', 'Lebanon', 'LB', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('128', 'Saint Lucia', 'LC', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('129', 'Liechtenstein', 'LI', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('130', 'Sri Lanka', 'LK', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('131', 'Liberia', 'LR', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('132', 'Lesotho', 'LS', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('133', 'Lithuania', 'LT', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('134', 'Luxembourg', 'LU', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('135', 'Latvia', 'LV', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('136', 'Libya', 'LY', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('137', 'Morocco', 'MA', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('138', 'Monaco', 'MC', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('139', 'Moldova', 'MD', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('140', 'Montenegro', 'ME', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('141', 'Saint-Martin (France)', 'MF', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('142', 'Madagascar', 'MG', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('143', 'Marshall Islands', 'MH', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('144', 'Macedonia', 'MK', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('145', 'Mali', 'ML', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('146', 'Myanmar', 'MM', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('147', 'Mongolia', 'MN', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('148', 'Macau', 'MO', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('149', 'Northern Mariana Islands', 'MP', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('150', 'Martinique', 'MQ', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('151', 'Mauritania', 'MR', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('152', 'Montserrat', 'MS', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('153', 'Malta', 'MT', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('154', 'Mauritius', 'MU', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('155', 'Maldives', 'MV', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('156', 'Malawi', 'MW', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('157', 'Mexico', 'MX', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('158', 'Malaysia', 'MY', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('159', 'Mozambique', 'MZ', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('160', 'Namibia', 'NA', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('161', 'New Caledonia', 'NC', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('162', 'Niger', 'NE', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('163', 'Norfolk Island', 'NF', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('164', 'Nigeria', 'NG', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('165', 'Nicaragua', 'NI', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('166', 'The Netherlands', 'NL', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('167', 'Norway', 'NO', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('168', 'Nepal', 'NP', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('169', 'Nauru', 'NR', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('170', 'Niue', 'NU', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('171', 'New Zealand', 'NZ', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('172', 'Oman', 'OM', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('173', 'Panama', 'PA', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('174', 'Peru', 'PE', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('175', 'French Polynesia', 'PF', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('176', 'Papua New Guinea', 'PG', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('177', 'Philippines', 'PH', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('178', 'Pakistan', 'PK', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('179', 'Poland', 'PL', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('180', 'St. Pierre and Miquelon', 'PM', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('181', 'Pitcairn', 'PN', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('182', 'Puerto Rico', 'PR', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('183', 'Palestine, State of', 'PS', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('184', 'Portugal', 'PT', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('185', 'Palau', 'PW', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('186', 'Paraguay', 'PY', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('187', 'Qatar', 'QA', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('188', 'Réunion', 'RE', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('189', 'Romania', 'RO', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('190', 'Serbia', 'RS', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('191', 'Russian Federation', 'RU', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('192', 'Rwanda', 'RW', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('193', 'Saudi Arabia', 'SA', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('194', 'Solomon Islands', 'SB', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('195', 'Seychelles', 'SC', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('196', 'Sudan', 'SD', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('197', 'Sweden', 'SE', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('198', 'Singapore', 'SG', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('199', 'Saint Helena', 'SH', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('200', 'Slovenia', 'SI', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('201', 'Svalbard and Jan Mayen Islands', 'SJ', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('202', 'Slovakia', 'SK', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('203', 'Sierra Leone', 'SL', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('204', 'San Marino', 'SM', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('205', 'Senegal', 'SN', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('206', 'Somalia', 'SO', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('207', 'Suriname', 'SR', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('208', 'South Sudan', 'SS', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('209', 'Sao Tome and Principe', 'ST', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('210', 'El Salvador', 'SV', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('211', 'Sint Maarten (Dutch part)', 'SX', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('212', 'Syria', 'SY', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('213', 'Swaziland', 'SZ', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('214', 'Turks and Caicos Islands', 'TC', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('215', 'Chad', 'TD', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('216', 'French Southern Territories', 'TF', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('217', 'Togo', 'TG', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('218', 'Thailand', 'TH', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('219', 'Tajikistan', 'TJ', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('220', 'Tokelau', 'TK', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('221', 'Timor-Leste', 'TL', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('222', 'Turkmenistan', 'TM', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('223', 'Tunisia', 'TN', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('224', 'Tonga', 'TO', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('225', 'Turkey', 'TR', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('226', 'Trinidad and Tobago', 'TT', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('227', 'Tuvalu', 'TV', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('228', 'Taiwan', 'TW', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('229', 'Tanzania', 'TZ', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('230', 'Ukraine', 'UA', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('231', 'Uganda', 'UG', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('232', 'United States Minor Outlying Islands', 'UM', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('233', 'United States', 'US', '15', '1', '2014-12-09 14:43:47', '1', '2014-12-09 15:05:47', 'Active');
INSERT INTO `country` VALUES ('234', 'Uruguay', 'UY', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('235', 'Uzbekistan', 'UZ', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('236', 'Vatican', 'VA', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('237', 'Saint Vincent and the Grenadines', 'VC', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('238', 'Venezuela', 'VE', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('239', 'Virgin Islands (British)', 'VG', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('240', 'Virgin Islands (U.S.)', 'VI', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('241', 'Vietnam', 'VN', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('242', 'Vanuatu', 'VU', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('243', 'Wallis and Futuna Islands', 'WF', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('244', 'Samoa', 'WS', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('245', 'Yemen', 'YE', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('246', 'Mayotte', 'YT', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('247', 'South Africa', 'ZA', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('248', 'Zambia', 'ZM', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');
INSERT INTO `country` VALUES ('249', 'Zimbabwe', 'ZW', null, '1', '2014-12-09 14:43:47', '1', '2014-12-09 14:44:12', 'Active');

-- ----------------------------
-- Table structure for currency
-- ----------------------------
DROP TABLE IF EXISTS `currency`;
CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(255) DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of currency
-- ----------------------------

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL AUTO_INCREMENT,
  `mobile_number` varchar(20) DEFAULT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  `present_city` int(3) DEFAULT NULL,
  `present_state` varchar(50) DEFAULT NULL,
  `present_country` int(3) DEFAULT NULL,
  `present_address` varchar(50) DEFAULT NULL,
  `permanent_city` int(3) DEFAULT NULL,
  `permanent_state` varchar(50) DEFAULT NULL,
  `permanent_country` int(3) DEFAULT NULL,
  `permanent_address` varchar(50) DEFAULT NULL,
  `national_id` varchar(50) DEFAULT NULL,
  `office_city` int(3) DEFAULT NULL,
  `office_state` varchar(50) DEFAULT NULL,
  `office_country` int(3) DEFAULT NULL,
  `office_address` varchar(50) DEFAULT NULL,
  `office_phone` varchar(50) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `created_by` datetime DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  PRIMARY KEY (`customer_id`),
  KEY `present_country` (`present_country`),
  KEY `permanent_country_fk` (`permanent_country`),
  KEY `office_country_fk` (`office_country`),
  KEY `office_city_fk` (`office_city`),
  KEY `permanent_city_fk` (`permanent_city`),
  KEY `present_city_fk` (`present_city`),
  CONSTRAINT `office_city_fk` FOREIGN KEY (`office_city`) REFERENCES `city` (`city_id`),
  CONSTRAINT `office_country_fk` FOREIGN KEY (`office_country`) REFERENCES `country` (`country_id`),
  CONSTRAINT `permanent_city_fk` FOREIGN KEY (`permanent_city`) REFERENCES `city` (`city_id`),
  CONSTRAINT `permanent_country_fk` FOREIGN KEY (`permanent_country`) REFERENCES `country` (`country_id`),
  CONSTRAINT `present_city_fk` FOREIGN KEY (`present_city`) REFERENCES `city` (`city_id`),
  CONSTRAINT `present_country_fk` FOREIGN KEY (`present_country`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', '01911801666', 'Nirjhar Mandal', 'nirjhar.mandal@apsissolutions.com', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Active');
INSERT INTO `customer` VALUES ('2', '01717250016', 'Riad Hossen', 'riad.hossen@apsissolutions.com', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2015-07-06 13:00:30', null, 'Active');
INSERT INTO `customer` VALUES ('3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Active');
INSERT INTO `customer` VALUES ('4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Active');
INSERT INTO `customer` VALUES ('5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2015', null, null, null, 'Active');
INSERT INTO `customer` VALUES ('6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2015', null, null, null, 'Active');
INSERT INTO `customer` VALUES ('7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2015', null, null, null, 'Active');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `department_id` int(10) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(50) NOT NULL,
  `department_group_id` int(10) DEFAULT NULL COMMENT 'to identify the group name for some department',
  `created_by` int(4) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated_by` int(4) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive','Deleted') NOT NULL DEFAULT 'Active',
  `location_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`department_id`),
  KEY `location_fk` (`location_id`),
  CONSTRAINT `department_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', 'Finance', '1', null, null, null, '2014-11-16 16:26:04', 'Active', '1');
INSERT INTO `department` VALUES ('2', 'HR', '1', null, null, null, '2014-11-16 16:26:07', 'Active', '2');
INSERT INTO `department` VALUES ('3', 'Accounts', '2', null, null, '1', '2014-12-10 16:14:23', 'Active', '1');
INSERT INTO `department` VALUES ('4', 'Testing', null, '18', '2014-12-10 16:06:43', '1', '2014-12-11 11:17:33', 'Active', '2');
INSERT INTO `department` VALUES ('5', 'RK_DEPARTMENT ', null, '1', '2014-12-29 16:03:43', '1', '2014-12-29 15:57:30', 'Active', '1');
INSERT INTO `department` VALUES ('6', 'Test Dept', null, '1', '2015-01-07 16:23:19', null, null, 'Active', '1');

-- ----------------------------
-- Table structure for designation
-- ----------------------------
DROP TABLE IF EXISTS `designation`;
CREATE TABLE `designation` (
  `designation_id` int(10) NOT NULL AUTO_INCREMENT,
  `designation_name` varchar(50) NOT NULL,
  `description` text,
  `created_by` int(4) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated_by` int(4) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Deleted','Inactive','Active') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`designation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of designation
-- ----------------------------
INSERT INTO `designation` VALUES ('1', 'IT Officer', 'What ever the responsibility is', '1', '2014-10-11 15:30:58', '1', '2015-01-24 15:23:51', 'Active');
INSERT INTO `designation` VALUES ('2', 'Pool Car Manager', 'Any thing could do', '1', '2014-10-11 15:31:44', '1', '2014-11-16 16:25:26', 'Active');
INSERT INTO `designation` VALUES ('3', 'CEO', null, null, null, null, null, 'Active');
INSERT INTO `designation` VALUES ('4', 'COO', null, null, null, null, null, 'Active');
INSERT INTO `designation` VALUES ('5', 'CTO', null, null, null, null, null, 'Active');
INSERT INTO `designation` VALUES ('6', 'HR Manager', '', null, null, '1', '2015-01-10 12:58:34', 'Active');
INSERT INTO `designation` VALUES ('7', 'Poolcar Officer', null, null, null, null, null, 'Active');
INSERT INTO `designation` VALUES ('8', 'Accounts Manager', 'The people from Accounts department.', null, null, '1', '2015-01-24 15:25:00', 'Active');
INSERT INTO `designation` VALUES ('9', 'Driver', 'Drive Car', null, null, null, '2014-11-26 20:00:55', 'Active');
INSERT INTO `designation` VALUES ('11', 'Computer Operator', 'The Person who responsible for data entry.', '1', '2014-12-11 11:18:19', '1', '2015-01-24 15:24:35', 'Active');
INSERT INTO `designation` VALUES ('12', 'RK_Designation', 'ssdw', '1', '2014-12-29 16:04:14', null, null, 'Active');
INSERT INTO `designation` VALUES ('13', 'RK_DESIGNATION ', 'gwegweg', '1', '2015-01-10 11:36:58', '1', '2015-01-10 11:35:26', '');

-- ----------------------------
-- Table structure for documentation
-- ----------------------------
DROP TABLE IF EXISTS `documentation`;
CREATE TABLE `documentation` (
  `doc_id` int(10) NOT NULL AUTO_INCREMENT,
  `function_or_page_name` varchar(200) NOT NULL,
  `tag` text NOT NULL,
  `document_for` enum('User Document','FrameWork Document') NOT NULL,
  `start_date` datetime NOT NULL,
  `last_update` datetime DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  PRIMARY KEY (`doc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of documentation
-- ----------------------------

-- ----------------------------
-- Table structure for documentation_details
-- ----------------------------
DROP TABLE IF EXISTS `documentation_details`;
CREATE TABLE `documentation_details` (
  `doc_id` int(10) NOT NULL,
  `parameter_name` varchar(200) NOT NULL,
  `parameter_value` varchar(30) DEFAULT NULL,
  `parameter_value_description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of documentation_details
-- ----------------------------

-- ----------------------------
-- Table structure for email_subject
-- ----------------------------
DROP TABLE IF EXISTS `email_subject`;
CREATE TABLE `email_subject` (
  `email_subject_id` int(10) NOT NULL AUTO_INCREMENT,
  `email_subject_name` varchar(200) NOT NULL,
  `description` text,
  `created_by` int(10) NOT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  PRIMARY KEY (`email_subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of email_subject
-- ----------------------------
INSERT INTO `email_subject` VALUES ('1', 'Problem on Approval Process', 'Any kind of approval related issues will comes along with this subject.', '1', '2014-12-07 18:38:06', null, null, 'Active');

-- ----------------------------
-- Table structure for embassy
-- ----------------------------
DROP TABLE IF EXISTS `embassy`;
CREATE TABLE `embassy` (
  `embassy_id` int(11) NOT NULL AUTO_INCREMENT,
  `embassy_name` varchar(255) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `created_by` datetime DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  PRIMARY KEY (`embassy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of embassy
-- ----------------------------

-- ----------------------------
-- Table structure for employee_deleted
-- ----------------------------
DROP TABLE IF EXISTS `employee_deleted`;
CREATE TABLE `employee_deleted` (
  `employee_id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL COMMENT 'encoded in md5 format',
  `designation_id` int(10) NOT NULL,
  `department_id` int(10) NOT NULL,
  `created_by` int(10) NOT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive') NOT NULL,
  `location_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `username` (`username`) USING HASH,
  UNIQUE KEY `email` (`email`) USING HASH,
  UNIQUE KEY `contact_number` (`contact_number`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee_deleted
-- ----------------------------
INSERT INTO `employee_deleted` VALUES ('1', 'Nirjhar', 'Mandal', 'nijhu.tulip@gmail.com', '', 'nirjhar', 'nirjhar', '1', '1', '0', null, null, '2014-10-12 18:21:56', 'Active', '1');
INSERT INTO `employee_deleted` VALUES ('120', 'Atik', 'Ataur', 'ata@jj.com', '012564788', '', '', '1', '3', '0', null, null, '2014-10-12 18:21:59', 'Active', '1');
INSERT INTO `employee_deleted` VALUES ('122', '', '', 'riadcsepstu@gmail.com', '01911462527', 'riadcse', '1234', '1', '2', '0', null, null, '2014-10-12 18:22:01', 'Active', '1');

-- ----------------------------
-- Table structure for hotel
-- ----------------------------
DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel` (
  `hotel_id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_name` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  PRIMARY KEY (`hotel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotel
-- ----------------------------

-- ----------------------------
-- Table structure for identification_type
-- ----------------------------
DROP TABLE IF EXISTS `identification_type`;
CREATE TABLE `identification_type` (
  `identification_type_id` int(10) NOT NULL AUTO_INCREMENT,
  `identification_type_name` varchar(50) NOT NULL,
  `created_by` int(10) NOT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  PRIMARY KEY (`identification_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of identification_type
-- ----------------------------
INSERT INTO `identification_type` VALUES ('1', 'Passport', '0', null, null, null, 'Active');
INSERT INTO `identification_type` VALUES ('2', 'Driving License', '0', null, null, null, 'Active');
INSERT INTO `identification_type` VALUES ('3', 'National ID Card', '0', null, '1', '2014-12-10 16:54:25', '');

-- ----------------------------
-- Table structure for invoice
-- ----------------------------
DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice` (
  `invoice_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(30) NOT NULL,
  `created_by` int(10) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `invoice_amount` decimal(10,0) NOT NULL DEFAULT '0',
  `discount_type` enum('Cash','Percentage') DEFAULT NULL,
  `discount_amount` decimal(10,0) DEFAULT NULL,
  `paid_amount` decimal(10,0) NOT NULL DEFAULT '0',
  `due_amount` decimal(10,0) NOT NULL DEFAULT '0',
  `customer_id` int(10) NOT NULL,
  `reference_user_id` int(10) DEFAULT NULL,
  `invoice_type_id` int(10) NOT NULL,
  PRIMARY KEY (`invoice_id`),
  UNIQUE KEY `u_invoice_number` (`invoice_number`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of invoice
-- ----------------------------
INSERT INTO `invoice` VALUES ('1', '2015-0708-111544-000', '0', '2015-07-08 11:15:44', null, null, '', '0', null, null, '0', '0', '5', null, '0');
INSERT INTO `invoice` VALUES ('2', '2015-0708-111619-001', '0', '2015-07-08 11:16:19', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('3', '2015-0708-111712-001', '0', '2015-07-08 11:17:12', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('4', '2015-0708-112015-001', '0', '2015-07-08 11:20:15', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('5', '2015-0708-112259-000', '0', '2015-07-08 11:22:59', null, null, '', '0', null, null, '0', '0', '6', null, '0');
INSERT INTO `invoice` VALUES ('6', '2015-0708-112304-000', '0', '2015-07-08 11:23:04', null, null, '', '0', null, null, '0', '0', '7', null, '0');
INSERT INTO `invoice` VALUES ('7', '2015-0708-112316-001', '0', '2015-07-08 11:23:16', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('8', '2015-0708-112324-001', '0', '2015-07-08 11:23:24', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('9', '2015-0708-112810-001', '0', '2015-07-08 11:28:10', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('10', '2015-0708-113145-001', '0', '2015-07-08 11:31:45', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('11', '2015-0708-113154-001', '0', '2015-07-08 11:31:54', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('12', '2015-0708-113655-001', '0', '2015-07-08 11:36:55', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('13', '2015-0708-113846-001', '0', '2015-07-08 11:38:46', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('14', '2015-0708-114008-001', '0', '2015-07-08 11:40:08', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('15', '2015-0708-114048-001', '0', '2015-07-08 11:40:48', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('16', '2015-0708-114112-001', '0', '2015-07-08 11:41:12', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('17', '2015-0708-114125-001', '0', '2015-07-08 11:41:25', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('18', '2015-0708-114929-001', '0', '2015-07-08 11:49:29', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('19', '2015-0708-115444-001', '0', '2015-07-08 11:54:44', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('20', '2015-0708-120438-001', '0', '2015-07-08 12:04:38', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('21', '2015-0708-120904-001', '0', '2015-07-08 12:09:04', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('22', '2015-0708-121015-001', '0', '2015-07-08 12:10:15', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('23', '2015-0708-121028-001', '0', '2015-07-08 12:10:28', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('24', '2015-0708-121150-001', '0', '2015-07-08 12:11:50', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('25', '2015-0708-121356-001', '0', '2015-07-08 12:13:56', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('26', '2015-0708-121505-001', '0', '2015-07-08 12:15:05', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('27', '2015-0708-121529-001', '0', '2015-07-08 12:15:29', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('28', '2015-0708-121559-001', '0', '2015-07-08 12:15:59', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('29', '2015-0708-121902-001', '0', '2015-07-08 12:19:02', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('30', '2015-0708-122041-001', '0', '2015-07-08 12:20:41', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('31', '2015-0708-122110-001', '0', '2015-07-08 12:21:10', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('32', '2015-0708-122139-001', '0', '2015-07-08 12:21:39', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('33', '2015-0708-122210-001', '0', '2015-07-08 12:22:10', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('34', '2015-0708-122225-001', '0', '2015-07-08 12:22:25', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('35', '2015-0708-122303-001', '0', '2015-07-08 12:23:03', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('36', '2015-0708-123353-001', '0', '2015-07-08 12:33:53', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('37', '2015-0708-125423-001', '0', '2015-07-08 12:54:23', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('38', '2015-0708-125453-001', '0', '2015-07-08 12:54:53', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('39', '2015-0708-125521-001', '0', '2015-07-08 12:55:21', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('40', '2015-0708-125623-001', '0', '2015-07-08 12:56:23', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('41', '2015-0708-125645-001', '0', '2015-07-08 12:56:45', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('42', '2015-0708-125701-001', '0', '2015-07-08 12:57:01', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('43', '2015-0708-125727-001', '0', '2015-07-08 12:57:27', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('44', '2015-0708-125747-001', '0', '2015-07-08 12:57:47', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('45', '2015-0708-125801-001', '0', '2015-07-08 12:58:01', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('46', '2015-0708-130104-001', '0', '2015-07-08 01:01:04', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('47', '2015-0708-131034-001', '0', '2015-07-08 01:10:34', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('48', '2015-0708-131134-001', '0', '2015-07-08 01:11:34', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('49', '2015-0708-131157-001', '0', '2015-07-08 01:11:57', null, null, '', '0', null, null, '0', '0', '1', null, '0');
INSERT INTO `invoice` VALUES ('50', '2015-0708-131811-001', '0', '2015-07-08 01:18:11', null, null, '', '0', null, null, '0', '0', '1', null, '0');

-- ----------------------------
-- Table structure for invoice_details
-- ----------------------------
DROP TABLE IF EXISTS `invoice_details`;
CREATE TABLE `invoice_details` (
  `invoice_number` varchar(30) NOT NULL,
  `product_id` int(10) NOT NULL,
  `created_by` int(10) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `unit_price_currency_id` int(10) DEFAULT NULL,
  `unit_price` decimal(10,0) DEFAULT NULL,
  `exchange_rate` decimal(10,0) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `gross_total` decimal(10,0) DEFAULT NULL COMMENT '(unit_price*quantity)',
  `gross_total_BDT` decimal(10,0) DEFAULT NULL COMMENT '(unit_price*exchange_rate)*quantity',
  `tkt_airline_id` int(10) DEFAULT NULL COMMENT 'Ticket for which airline?',
  `tkt_from` varchar(200) DEFAULT NULL COMMENT 'From where to fly',
  `tkt_to` varchar(200) DEFAULT NULL COMMENT 'Where to go',
  `tkt_depurture_date` date DEFAULT NULL,
  `tkt_arrival_date` date DEFAULT NULL,
  `tkt_class` enum('Business','Economy') DEFAULT NULL,
  KEY `fk_inv_airline` (`tkt_airline_id`),
  CONSTRAINT `fk_inv_airline` FOREIGN KEY (`tkt_airline_id`) REFERENCES `airlines` (`airlines_id`) ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of invoice_details
-- ----------------------------

-- ----------------------------
-- Table structure for language
-- ----------------------------
DROP TABLE IF EXISTS `language`;
CREATE TABLE `language` (
  `language_id` int(10) NOT NULL AUTO_INCREMENT,
  `language_name` varchar(100) NOT NULL,
  `language_code` varchar(10) NOT NULL,
  `created_by` int(10) NOT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of language
-- ----------------------------
INSERT INTO `language` VALUES ('1', 'Afrikanns', 'AF', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('2', 'Albanian', 'SQ', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('3', 'Arabic', 'AR', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('4', 'Armenian', 'HY', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('5', 'Basque', 'EU', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('6', 'Bengali', 'BN', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('7', 'Bulgarian', 'BG', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('8', 'Catalan', 'CA', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('9', 'Cambodian', 'KM', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('10', 'Chinese (Mandarin)', 'ZH', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('11', 'Croation', 'HR', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('12', 'Czech', 'CS', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('13', 'Danish', 'DA', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('14', 'Dutch', 'NL', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('15', 'English', 'EN', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('16', 'Estonian', 'ET', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('17', 'Fiji', 'FJ', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('18', 'Finnish', 'FI', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('19', 'French', 'FR', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('20', 'Georgian', 'KA', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('21', 'German', 'DE', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('22', 'Greek', 'EL', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('23', 'Gujarati', 'GU', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('24', 'Hebrew', 'HE', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('25', 'Hindi', 'HI', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('26', 'Hungarian', 'HU', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('27', 'Icelandic', 'IS', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('28', 'Indonesian', 'ID', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('29', 'Irish', 'GA', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('30', 'Italian', 'IT', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('31', 'Japanese', 'JA', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('32', 'Javanese', 'JW', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('33', 'Korean', 'KO', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('34', 'Latin', 'LA', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('35', 'Latvian', 'LV', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('36', 'Lithuanian', 'LT', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('37', 'Macedonian', 'MK', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('38', 'Malay', 'MS', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('39', 'Malayalam', 'ML', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('40', 'Maltese', 'MT', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('41', 'Maori', 'MI', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('42', 'Marathi', 'MR', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('43', 'Mongolian', 'MN', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('44', 'Nepali', 'NE', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('45', 'Norwegian', 'NO', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('46', 'Persian', 'FA', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('47', 'Polish', 'PL', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('48', 'Portuguese', 'PT', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('49', 'Punjabi', 'PA', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('50', 'Quechua', 'QU', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('51', 'Romanian', 'RO', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('52', 'Russian', 'RU', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('53', 'Samoan', 'SM', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('54', 'Serbian', 'SR', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('55', 'Slovak', 'SK', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('56', 'Slovenian', 'SL', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('57', 'Spanish', 'ES', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('58', 'Swahili', 'SW', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('59', 'Swedish ', 'SV', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('60', 'Tamil', 'TA', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('61', 'Tatar', 'TT', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('62', 'Telugu', 'TE', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('63', 'Thai', 'TH', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('64', 'Tibetan', 'BO', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('65', 'Tonga', 'TO', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('66', 'Turkish', 'TR', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('67', 'Ukranian', 'UK', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('68', 'Urdu', 'UR', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('69', 'Uzbek', 'UZ', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('70', 'Vietnamese', 'VI', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('71', 'Welsh', 'CY', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');
INSERT INTO `language` VALUES ('72', 'Xhosa', 'XH', '1', '2014-12-09 14:44:51', '1', '2014-12-09 14:44:51', 'Active');

-- ----------------------------
-- Table structure for location
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `location_id` int(4) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(50) DEFAULT NULL,
  `created_by` int(4) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated_by` int(4) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Deleted','Inactive','Active') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of location
-- ----------------------------
INSERT INTO `location` VALUES ('1', 'Head Office', '1', '2015-01-24 15:23:26', '1', '2015-01-24 15:22:43', 'Active');
INSERT INTO `location` VALUES ('2', 'Plant', '1', '2014-10-12 18:27:15', '1', '2015-01-24 15:22:54', 'Active');
INSERT INTO `location` VALUES ('5', 'LUMPL', '1', '2014-12-30 12:09:19', '1', '2015-01-24 15:21:47', 'Active');

-- ----------------------------
-- Table structure for login_log
-- ----------------------------
DROP TABLE IF EXISTS `login_log`;
CREATE TABLE `login_log` (
  `login_log_id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `login_status` enum('Successful','Unsuccessful') DEFAULT NULL,
  `status_reason` enum('Login Successful','Incorrect username','Incorrect password','Both Incorrect') NOT NULL DEFAULT 'Login Successful' COMMENT 'When unsuccessful login detected',
  `login_time` datetime DEFAULT NULL,
  `logout_time` datetime DEFAULT NULL,
  `auto_logout` enum('Yes','No') DEFAULT 'No',
  PRIMARY KEY (`login_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_log
-- ----------------------------
INSERT INTO `login_log` VALUES ('1', 'apsis2014', 'Successful', 'Incorrect username', '0000-00-00 00:00:00', null, null);
INSERT INTO `login_log` VALUES ('2', 'apsis2014', 'Successful', 'Incorrect username', '2015-02-22 18:57:04', '2015-02-22 18:57:04', null);
INSERT INTO `login_log` VALUES ('3', 'apsis2014', 'Successful', 'Login Successful', '0000-00-00 00:00:00', '2015-02-22 18:58:41', null);
INSERT INTO `login_log` VALUES ('4', 'apsis2014', 'Successful', 'Login Successful', '0000-00-00 00:00:00', '2015-02-22 19:00:21', null);
INSERT INTO `login_log` VALUES ('5', 'apsis2014', 'Unsuccessful', 'Incorrect password', '2015-02-22 19:16:18', null, null);
INSERT INTO `login_log` VALUES ('6', 'apsis2014', 'Unsuccessful', 'Incorrect password', '2015-02-22 19:16:40', null, null);
INSERT INTO `login_log` VALUES ('7', 'eweqe', 'Unsuccessful', 'Both Incorrect', '2015-02-22 19:16:57', null, null);
INSERT INTO `login_log` VALUES ('8', 'apsis2014', 'Unsuccessful', 'Incorrect password', '2015-02-22 19:48:34', null, null);
INSERT INTO `login_log` VALUES ('9', 'apsis2014', 'Successful', 'Login Successful', '2015-02-22 19:48:41', null, null);
INSERT INTO `login_log` VALUES ('10', 'apsis2014', 'Successful', 'Login Successful', '2015-02-22 19:55:37', null, null);
INSERT INTO `login_log` VALUES ('11', 'apsis2014', 'Successful', 'Login Successful', '2015-02-22 20:08:03', null, null);
INSERT INTO `login_log` VALUES ('12', 'apsis2014', 'Successful', 'Login Successful', '2015-02-23 10:55:52', '2015-02-23 10:59:06', 'Yes');
INSERT INTO `login_log` VALUES ('13', 'apsis2014', 'Successful', 'Login Successful', '2015-02-23 10:59:31', '2015-02-23 10:59:25', 'No');
INSERT INTO `login_log` VALUES ('14', 'apsis2014', 'Successful', 'Login Successful', '2015-02-23 11:00:52', '2015-02-23 12:19:39', 'Yes');
INSERT INTO `login_log` VALUES ('15', 'apsis2014', 'Successful', 'Login Successful', '2015-02-23 12:19:58', null, 'No');

-- ----------------------------
-- Table structure for master_entry
-- ----------------------------
DROP TABLE IF EXISTS `master_entry`;
CREATE TABLE `master_entry` (
  `master_entry_table_name` varchar(50) NOT NULL,
  `field_name` varchar(50) NOT NULL,
  `input_type` varchar(30) NOT NULL COMMENT 'ex. text, combo, textarea etc',
  `required_field` varchar(10) NOT NULL,
  `sql` text,
  `comma_separated_value` text,
  `hide_from_grid` tinyint(1) NOT NULL DEFAULT '0',
  `hide_from_input` tinyint(1) NOT NULL,
  `self_filtering` tinyint(1) DEFAULT '0',
  `sorting` int(10) DEFAULT NULL,
  `label_name` varchar(50) NOT NULL,
  `placeholder` varchar(50) DEFAULT NULL,
  `field_key` varchar(10) NOT NULL,
  `created_by` int(10) NOT NULL DEFAULT '0',
  `created` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `join_with` varchar(50) DEFAULT NULL,
  `join_with_fk_name` varchar(50) DEFAULT NULL,
  `master_entry_title` varchar(50) DEFAULT NULL,
  `search` tinyint(1) DEFAULT '0',
  UNIQUE KEY `unique_master_entry` (`master_entry_table_name`,`field_name`,`master_entry_title`) USING BTREE,
  KEY `fk_me_title` (`master_entry_title`),
  CONSTRAINT `master_entry_ibfk_1` FOREIGN KEY (`master_entry_title`) REFERENCES `master_entry_table` (`master_entry_title`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of master_entry
-- ----------------------------
INSERT INTO `master_entry` VALUES ('country', 'country_code', 'var', 'required', '', '', '0', '0', '0', '1', 'Country Code', 'Country Code', '', '0', '2014-12-09 14:50:33', null, '2014-12-29 15:54:21', 'Active', null, null, 'country', '0');
INSERT INTO `master_entry` VALUES ('country', 'country_name', 'var', 'required', '', '', '0', '0', '0', '0', 'Country Name', 'Country Name', '', '0', '2014-12-09 14:50:33', null, '2014-12-29 15:54:21', 'Active', null, null, 'country', '0');
INSERT INTO `master_entry` VALUES ('country', 'language_id', 'select', 'required', 'SELECT `language`.language_id, \n	CONCAT(`language`.language_name,\"->\", \n	`language`.language_code) AS language_name, \n	`language`.`status`\nFROM `language`', '', '0', '0', '0', '2', 'Language', 'Language', '', '0', '2014-12-09 14:50:33', null, '2014-12-29 15:54:21', 'Active', null, null, 'country', '0');
INSERT INTO `master_entry` VALUES ('country', 'status', 'select', 'required', '', 'Active,Inactive', '0', '0', '0', '3', 'Status', 'Status', '', '0', '2014-12-09 14:50:33', null, '2015-03-23 13:53:49', 'Active', null, null, 'country', '0');
INSERT INTO `master_entry` VALUES ('district', 'district_name', 'text', 'required', '', '', '0', '0', '0', '0', 'DISTRICT NAME', 'Type district name', '', '0', '2014-09-30 18:13:19', null, '2014-12-29 15:54:21', 'Active', null, null, 'district', '0');
INSERT INTO `master_entry` VALUES ('district', 'division_id', 'select', 'required', 'SELECT division_id,division_name FROM division', '', '0', '0', '0', '1', 'DIVISION', 'Type division', 'MUL', '0', '2014-09-30 18:13:19', null, '2014-12-29 15:54:21', 'Active', null, null, 'district', '0');
INSERT INTO `master_entry` VALUES ('email_subject', 'description', 'tex', '', '', '', '0', '0', '0', '1', 'Description', 'Description', '', '0', '2014-12-07 18:24:46', null, '2014-12-29 15:54:21', 'Active', null, null, 'email_subject', '0');
INSERT INTO `master_entry` VALUES ('email_subject', 'email_subject_name', 'var', 'required', '', '', '0', '0', '0', '0', 'Email Subject', 'Email Subject', '', '0', '2014-12-07 18:24:46', null, '2014-12-29 15:54:21', 'Active', null, null, 'email_subject', '0');
INSERT INTO `master_entry` VALUES ('email_subject', 'status', 'select', 'required', '', 'Active,Inactive', '0', '0', '0', '2', 'Status', 'Status', '', '0', '2014-12-07 18:24:46', null, '2015-03-23 13:53:49', 'Active', null, null, 'email_subject', '0');
INSERT INTO `master_entry` VALUES ('module', 'description', 'tex', '', '', '', '0', '0', '0', '2', 'DESCRIPTION', 'Type description', '', '0', '2014-12-07 15:18:17', null, '2016-03-12 16:20:44', 'Active', null, null, 'module', '0');
INSERT INTO `master_entry` VALUES ('module', 'home_url', 'var', '', '', '', '1', '0', '0', '3', 'Home Url', 'Home Url', '', '0', '2014-12-07 15:18:17', null, '2016-03-12 16:20:46', 'Active', null, null, 'module', '0');
INSERT INTO `master_entry` VALUES ('module', 'module_icon', 'var', 'required', '', '', '0', '0', '0', '1', 'Module Icon', 'Module Icon', '', '0', '2014-12-07 15:18:17', null, '2016-03-12 16:20:40', 'Active', null, null, 'module', '0');
INSERT INTO `master_entry` VALUES ('module', 'module_name', 'var', 'required', '', '', '0', '0', '0', '0', 'Module Name', 'Type Module Name', 'UNI', '0', '2014-12-07 15:18:17', null, '2016-03-12 16:20:40', 'Active', null, null, 'module', '0');
INSERT INTO `master_entry` VALUES ('module', 'status', 'select', 'required', '', 'Active,Inactive', '0', '0', '0', '4', 'Status', 'Status', '', '0', '2014-12-07 15:18:17', null, '2016-03-12 16:20:47', 'Active', null, null, 'module', '0');
INSERT INTO `master_entry` VALUES ('nationality', 'nationality_name', 'var', 'required', '', '', '0', '0', '0', '0', 'NATIONALITY NAME', 'Type nationality name', '', '0', '2014-12-01 15:49:02', null, '2014-12-29 15:54:21', 'Active', null, null, 'nationality', '0');
INSERT INTO `master_entry` VALUES ('nationality', 'status', 'select', 'required', '', 'Active,Inactive', '0', '0', '0', '1', 'STATUS', 'Type status', '', '0', '2014-12-01 15:49:02', null, '2015-03-23 13:53:49', 'Active', null, null, 'nationality', '0');
INSERT INTO `master_entry` VALUES ('user', 'contact_number', 'var', 'required', '', '', '0', '0', '0', '6', 'Contact', 'Mobile Number', 'UNI', '0', '2014-12-14 12:52:04', null, '2016-07-14 11:56:51', 'Active', null, null, 'user', '0');
INSERT INTO `master_entry` VALUES ('user', 'date_of_birth', 'dat', 'required', '', '', '1', '0', '0', '3', 'Date of Birth', 'Type date of birth', '', '0', '2014-12-14 12:52:04', null, '2016-07-14 11:56:39', 'Active', null, null, 'user', '0');
INSERT INTO `master_entry` VALUES ('user', 'default_module_id', 'select', 'required', 'SELECT\r\nmodule.module_id,\r\nmodule.module_name\r\nFROM\r\nmodule', '', '0', '0', '0', '12', 'Default Module', 'Default Module', '', '0', '2014-12-14 12:52:04', null, '2016-07-14 11:56:51', 'Active', null, null, 'user', '0');
INSERT INTO `master_entry` VALUES ('user', 'department_id', 'select', '', 'SELECT\r\ndepartment.department_id,\r\ndepartment.department_name\r\nFROM\r\ndepartment\r\nWHERE\r\n`status` = \"Active\"\r\nORDER BY\r\ndepartment_name ASC', '', '0', '0', '0', '4', 'Department', 'Type department', '', '0', '2014-12-14 12:52:04', null, '2016-07-14 11:56:48', 'Active', null, null, 'user', '0');
INSERT INTO `master_entry` VALUES ('user', 'designation_id', 'select', '', 'SELECT\r\ndesignation.designation_id,\r\ndesignation.designation_name\r\nFROM\r\ndesignation\r\nWHERE\r\n`status` = \"Active\"\r\nORDER BY\r\ndesignation_name ASC', '', '1', '0', '0', '5', 'Designation', 'Type designation', '', '0', '2014-12-14 12:52:04', null, '2016-07-14 11:56:51', 'Active', null, null, 'user', '0');
INSERT INTO `master_entry` VALUES ('user', 'email', 'var', 'required', '', '', '0', '0', '0', '7', 'Email', 'Email', 'UNI', '0', '2014-12-14 12:52:04', null, '2016-07-14 11:56:51', 'Active', null, null, 'user', '0');
INSERT INTO `master_entry` VALUES ('user', 'first_name', 'var', 'required', '', '', '0', '0', '0', '0', 'Name', 'First Name', '', '0', '2014-12-14 12:52:04', null, '2016-07-14 11:56:09', 'Active', null, null, 'user', '0');
INSERT INTO `master_entry` VALUES ('user', 'gender', 'select', 'required', '', 'Male, Female', '1', '0', '0', '2', 'Gender', 'Type gender', '', '0', '2014-12-14 12:52:04', null, '2016-07-14 11:56:28', 'Active', null, null, 'user', '0');
INSERT INTO `master_entry` VALUES ('user', 'last_name', 'var', '', '', '', '1', '0', '0', '1', 'Surname', 'Last Name', '', '0', '2014-12-14 12:52:04', null, '2016-07-14 11:56:11', 'Active', null, null, 'user', '0');
INSERT INTO `master_entry` VALUES ('user', 'line_manager_id', 'select', '', 'SELECT\r\n`user`.user_id,\r\nCONCAT(location.location_name,\" -> \",\r\ndepartment.department_name,\" -> \",\r\ndesignation.designation_name,\" -> \",\r\n`user`.first_name,\" \",\r\n`user`.last_name,\" -> \",\r\n`user`.user_id) AS user_name\r\nFROM\r\n`user`\r\nLEFT JOIN department ON `user`.department_id = department.department_id\r\nLEFT JOIN designation ON `user`.designation_id = designation.designation_id\r\nLEFT JOIN location ON `user`.location_id = location.location_id\r\nWHERE\r\n`user`.user_id <> 1 AND\r\n`user`.`status` = \"Active\"\r\nORDER BY\r\nuser_name ASC', '', '1', '0', '0', '10', 'Line Manager', 'Type line manager', '', '0', '2014-12-14 12:52:04', null, '2016-07-14 11:56:51', 'Active', null, null, 'user', '0');
INSERT INTO `master_entry` VALUES ('user', 'location_id', 'select', '', 'SELECT\r\nlocation.location_id,\r\nlocation.location_name\r\nFROM\r\nlocation\r\nWHERE\r\n`status` = \"Active\"\r\nORDER BY\r\nlocation_name ASC', '', '1', '0', '0', '9', 'Location', 'Type location', '', '0', '2014-12-14 12:52:04', null, '2016-07-14 11:56:51', 'Active', null, null, 'user', '0');
INSERT INTO `master_entry` VALUES ('user', 'religion_id', 'int', 'required', '', '', '1', '0', '0', '8', 'Religion', 'Type religion', 'MUL', '0', '2014-12-14 12:52:04', null, '2016-07-14 11:56:51', 'Active', null, null, 'user', '0');
INSERT INTO `master_entry` VALUES ('user', 'status', 'select', 'required', '', 'Active,Inactive', '0', '0', '0', '13', 'Status', 'Status', '', '0', '2014-12-14 12:52:04', null, '2016-07-14 11:56:51', 'Active', null, null, 'user', '0');
INSERT INTO `master_entry` VALUES ('user', 'username', 'var', 'required', '', '', '0', '0', '0', '11', 'User Name', 'Username', 'UNI', '0', '2014-12-14 12:52:04', null, '2016-07-14 11:56:51', 'Active', null, null, 'user', '0');
INSERT INTO `master_entry` VALUES ('user', 'user_level_id', 'select', 'required', 'SELECT user_level_id,user_level_name FROM user_level WHERE user_level_id <> 1 /*Developer Level must not accessible by Client User*/', null, '1', '0', '0', '15', 'Level Priviledge', null, '', '1', '2014-12-14 12:53:18', null, '2016-11-20 12:22:03', 'Active', 'privilege_level', 'user_id', 'user', '0');
INSERT INTO `master_entry` VALUES ('user', 'user_module_id', 'select', 'required', 'SELECT module_id,module_name FROM module', null, '1', '0', '0', '14', 'Module Privilege', null, '', '1', '2014-12-14 12:53:18', null, '2014-12-29 12:09:04', 'Active', 'privilege_module', 'user_id', 'user', '0');
INSERT INTO `master_entry` VALUES ('vehicle_type', 'vehicle_type_description', 'tex', '', '', '', '0', '0', '0', '1', 'VEHICLE TYPE DESCRIPTION', 'Type vehicle type description', '', '0', '2014-10-12 16:28:38', null, '2015-01-10 11:59:39', 'Active', null, null, 'vehicle_type', '0');
INSERT INTO `master_entry` VALUES ('vehicle_type', 'vehicle_type_name', 'var', 'required', '', '', '0', '0', '0', '0', 'VEHICLE TYPE NAME', 'Type vehicle type name', '', '0', '2014-10-12 16:28:38', null, '2015-01-10 11:59:39', 'Active', null, null, 'vehicle_type', '0');
INSERT INTO `master_entry` VALUES ('vehicle_model', 'vehicle_type_id', 'select', 'required', 'SELECT vehicle_type_id,vehicle_type_name FROM vehicle_type', '', '0', '0', '0', '3', 'VEHICLE TYPE', 'Type vehicle type', 'MUL', '0', '2015-01-07 16:50:09', null, '2015-01-07 16:50:33', 'Active', null, null, 'vehicle_model', '0');
INSERT INTO `master_entry` VALUES ('vehicle_model', 'vehicle_model_name', 'var', 'required', '', '', '0', '0', '0', '0', 'MODEL NAME', 'Type model name', '', '0', '2015-01-07 16:50:09', null, '2015-01-07 16:50:28', 'Active', null, null, 'vehicle_model', '0');
INSERT INTO `master_entry` VALUES ('vehicle_model', 'gear_type', 'select', 'required', '', 'Auto Gear,Manual Gear', '0', '0', '0', '2', 'GEAR TYPE', 'Type gear type', '', '0', '2015-01-07 16:50:09', null, '2015-01-07 16:50:33', 'Active', null, null, 'vehicle_model', '0');
INSERT INTO `master_entry` VALUES ('vehicle_model', 'vehicle_model_description', 'tex', '', '', '', '0', '0', '0', '1', 'MODEL DESCRIPTION', 'Type model description', '', '0', '2015-01-07 16:50:09', null, '2015-01-07 16:50:30', 'Active', null, null, 'vehicle_model', '0');
INSERT INTO `master_entry` VALUES ('vehicle_model', 'status', 'select', 'required', '', 'Active,Inactive', '0', '0', '0', '4', 'STATUS', 'Type status', '', '0', '2015-01-07 16:50:09', null, '2015-03-23 13:53:49', 'Active', null, null, 'vehicle_model', '0');
INSERT INTO `master_entry` VALUES ('designation', 'designation_name', 'var', 'required', '', '', '0', '0', '0', null, 'Designation Name', 'Designation Name', '', '0', '2015-05-23 12:32:59', null, null, 'Active', null, null, 'new_designation', '0');
INSERT INTO `master_entry` VALUES ('designation', 'description', 'tex', 'required', '', '', '0', '0', '0', null, 'Description', 'Description', '', '0', '2015-05-23 12:32:59', null, null, 'Active', null, null, 'new_designation', '0');
INSERT INTO `master_entry` VALUES ('attachment', 'attachment_name', 'var', '', '', '', '0', '0', '0', null, 'Attachment Name', 'Attachment Name', '', '0', '2016-04-19 12:57:32', null, null, 'Active', null, null, 'attachment', '0');
INSERT INTO `master_entry` VALUES ('area', 'area_name', 'var', '', '', '', '0', '0', '0', null, 'Area Name', 'Area Name', '', '0', '2016-04-19 12:58:29', null, null, 'Active', null, null, 'area', '0');
INSERT INTO `master_entry` VALUES ('customer_type', 'customer_type_name', 'text', '', '', '', '0', '0', '0', null, 'CUSTOMER TYPE NAME', 'Type customer type name', '', '0', '2016-04-19 12:59:59', null, null, 'Active', null, null, 'customer_type', '0');
INSERT INTO `master_entry` VALUES ('designation', 'designation_name', 'var', 'required', '', '', '0', '0', '0', null, 'DESIGNATION NAME', 'Type designation name', '', '0', '2016-04-19 13:00:53', null, null, 'Active', null, null, 'designation', '0');
INSERT INTO `master_entry` VALUES ('designation', 'description', 'textarea', '', '', '', '0', '0', '0', null, 'DESCRIPTION', 'Type description', '', '0', '2016-04-19 13:00:53', null, null, 'Active', null, null, 'designation', '0');
INSERT INTO `master_entry` VALUES ('designation', 'status', 'select', 'required', '', 'Active,Inactive', '0', '0', '0', null, 'STATUS', 'Type status', '', '0', '2016-04-19 13:00:53', null, null, 'Active', null, null, 'designation', '0');
INSERT INTO `master_entry` VALUES ('customer', 'customer_name', 'var', 'required', '', '', '0', '0', '0', null, 'CUSTOMER NAME', 'Type customer name', '', '0', '2016-04-19 19:18:35', null, null, 'Active', null, null, 'customer', '0');
INSERT INTO `master_entry` VALUES ('product_brand', 'product_brand_name', 'var', 'required', '', '', '0', '0', '0', null, 'Product Brand Name', 'Product Brand Name', '', '0', '2016-04-24 15:20:06', null, null, 'Active', null, null, 'product_brand', '0');
INSERT INTO `master_entry` VALUES ('product_brand', 'status', 'select', 'required', '', 'Active,Inactive', '0', '0', '0', null, 'Status', 'Status', '', '0', '2016-04-24 15:20:06', null, null, 'Active', null, null, 'product_brand', '0');
INSERT INTO `master_entry` VALUES ('user', 'first_name', 'var', '', '', '', '0', '0', '0', null, 'First Name', 'First Name', '', '0', '2016-04-26 11:48:04', null, null, 'Active', null, null, 'current_user', '0');
INSERT INTO `master_entry` VALUES ('user', 'last_name', 'var', '', '', '', '0', '0', '0', null, 'Last Name', 'Last Name', '', '0', '2016-04-26 11:48:04', null, null, 'Active', null, null, 'current_user', '0');
INSERT INTO `master_entry` VALUES ('user', 'email', 'var', '', '', '', '0', '0', '0', null, 'Email', 'Email', 'UNI', '0', '2016-04-26 11:48:04', null, null, 'Active', null, null, 'current_user', '0');
INSERT INTO `master_entry` VALUES ('user', 'contact_number', 'var', '', '', '', '0', '0', '0', null, 'Contact Number', 'Contact Number', '', '0', '2016-04-26 11:48:04', null, null, 'Active', null, null, 'current_user', '0');
INSERT INTO `master_entry` VALUES ('user', 'home_telephone', 'var', '', '', '', '0', '0', '0', null, 'Home Telephone', 'Home Telephone', '', '0', '2016-04-26 11:48:04', null, null, 'Active', null, null, 'current_user', '0');
INSERT INTO `master_entry` VALUES ('user', 'username', 'var', '', '', '', '0', '0', '0', null, 'Username', 'Username', 'UNI', '0', '2016-04-26 11:48:04', null, null, 'Active', null, null, 'current_user', '0');
INSERT INTO `master_entry` VALUES ('user', 'date_of_birth', 'dat', '', '', '', '0', '0', '0', null, 'Date Of Birth', 'Date Of Birth', '', '0', '2016-04-26 11:48:04', null, null, 'Active', null, null, 'current_user', '0');
INSERT INTO `master_entry` VALUES ('user', 'gender', 'enu', '', '', '', '0', '0', '0', null, 'Gender', 'Gender', '', '0', '2016-04-26 11:48:04', null, null, 'Active', null, null, 'current_user', '0');
INSERT INTO `master_entry` VALUES ('user', 'father_name', 'var', '', '', '', '0', '0', '0', null, 'Father Name', 'Father Name', '', '0', '2016-04-26 11:48:04', null, null, 'Active', null, null, 'current_user', '0');
INSERT INTO `master_entry` VALUES ('user', 'mother_name', 'var', '', '', '', '0', '0', '0', null, 'Mother Name', 'Mother Name', '', '0', '2016-04-26 11:48:04', null, null, 'Active', null, null, 'current_user', '0');
INSERT INTO `master_entry` VALUES ('user', 'address', 'var', '', '', '', '0', '0', '0', null, 'Address', 'Address', '', '0', '2016-04-26 11:48:04', null, null, 'Active', null, null, 'current_user', '0');
INSERT INTO `master_entry` VALUES ('user', 'emergency_contact_number', 'var', '', '', '', '0', '0', '0', null, 'Emergency Contact Number', 'Emergency Contact Number', '', '0', '2016-04-26 11:48:04', null, null, 'Active', null, null, 'current_user', '0');
INSERT INTO `master_entry` VALUES ('user_type', 'user_type_name', 'text', 'required', '', '', '0', '0', '1', null, 'User Type Name', 'User Type Name', '', '0', '2016-04-26 11:52:39', null, null, 'Active', null, null, 'user_type', '0');
INSERT INTO `master_entry` VALUES ('user_type', 'description', 'textarea', '', '', '', '0', '0', '0', null, 'Description', 'Description', '', '0', '2016-04-26 11:52:39', null, null, 'Active', null, null, 'user_type', '0');
INSERT INTO `master_entry` VALUES ('user_type', 'status', 'select', '', '', 'Active,Inactive', '0', '0', '0', null, 'Status', 'Status', '', '0', '2016-04-26 11:52:39', null, null, 'Active', null, null, 'user_type', '0');
INSERT INTO `master_entry` VALUES ('user', 'first_name', 'var', '', '', '', '0', '0', '0', null, 'First Name', 'First Name', '', '0', '2016-04-26 14:41:20', null, null, 'Active', null, null, 'employee_list', '0');
INSERT INTO `master_entry` VALUES ('user', 'last_name', 'var', '', '', '', '0', '0', '0', null, 'Last Name', 'Last Name', '', '0', '2016-04-26 14:41:20', null, null, 'Active', null, null, 'employee_list', '0');
INSERT INTO `master_entry` VALUES ('user', 'email', 'var', '', '', '', '0', '0', '0', null, 'Email', 'Email', 'UNI', '0', '2016-04-26 14:41:20', null, null, 'Active', null, null, 'employee_list', '0');
INSERT INTO `master_entry` VALUES ('user', 'contact_number', 'var', '', '', '', '0', '0', '0', null, 'Contact Number', 'Contact Number', '', '0', '2016-04-26 14:41:20', null, null, 'Active', null, null, 'employee_list', '0');
INSERT INTO `master_entry` VALUES ('user', 'username', 'var', '', '', '', '0', '0', '0', null, 'Username', 'Username', 'UNI', '0', '2016-04-26 14:41:20', null, null, 'Active', null, null, 'employee_list', '0');
INSERT INTO `master_entry` VALUES ('user', 'date_of_birth', 'dat', '', '', '', '0', '0', '0', null, 'Date Of Birth', 'Date Of Birth', '', '0', '2016-04-26 14:41:20', null, null, 'Active', null, null, 'employee_list', '0');
INSERT INTO `master_entry` VALUES ('user', 'gender', 'enu', '', '', '', '0', '0', '0', null, 'Gender', 'Gender', '', '0', '2016-04-26 14:41:20', null, null, 'Active', null, null, 'employee_list', '0');
INSERT INTO `master_entry` VALUES ('company', 'company_name', 'var', 'required', '', '', '0', '0', '0', null, 'Company Name', 'Company Name', '', '0', '2016-04-26 14:54:43', null, null, 'Active', null, null, 'company', '0');
INSERT INTO `master_entry` VALUES ('company', 'description', 'textarea', '', '', '', '0', '0', '0', null, 'Description', 'Description', '', '0', '2016-04-26 14:54:43', null, null, 'Active', null, null, 'company', '0');
INSERT INTO `master_entry` VALUES ('company', 'contact_person_name', 'var', '', '', '', '0', '0', '0', null, 'Contact Person Name', 'Contact Person Name', '', '0', '2016-04-26 14:54:43', null, null, 'Active', null, null, 'company', '0');
INSERT INTO `master_entry` VALUES ('company', 'mobile_number', 'var', 'required', '', '', '0', '0', '0', null, 'Mobile Number', 'Mobile Number', '', '0', '2016-04-26 14:54:43', null, null, 'Active', null, null, 'company', '0');
INSERT INTO `master_entry` VALUES ('company', 'phone_number', 'var', '', '', '', '0', '0', '0', null, 'Phone Number', 'Phone Number', '', '0', '2016-04-26 14:54:43', null, null, 'Active', null, null, 'company', '0');
INSERT INTO `master_entry` VALUES ('company', 'fax_number', 'var', '', '', '', '0', '0', '0', null, 'Fax Number', 'Fax Number', '', '0', '2016-04-26 14:54:43', null, null, 'Active', null, null, 'company', '0');
INSERT INTO `master_entry` VALUES ('company', 'address', 'textarea', '', '', '', '0', '0', '0', null, 'Address', 'Address', '', '0', '2016-04-26 14:54:43', null, null, 'Active', null, null, 'company', '0');
INSERT INTO `master_entry` VALUES ('company', 'status', 'select', '', '', 'Active,Inactive', '0', '0', '0', null, 'Status', 'Status', '', '0', '2016-04-26 14:54:43', null, null, 'Active', null, null, 'company', '0');
INSERT INTO `master_entry` VALUES ('user', 'first_name', 'var', 'required', '', '', '0', '0', '0', null, 'First Name', 'First Name', '', '0', '2016-04-26 20:01:01', null, null, 'Active', null, null, 'employee', '0');
INSERT INTO `master_entry` VALUES ('user', 'last_name', 'var', 'required', '', '', '0', '0', '0', null, 'Last Name', 'Last Name', '', '0', '2016-04-26 20:01:01', null, null, 'Active', null, null, 'employee', '0');
INSERT INTO `master_entry` VALUES ('user', 'email', 'var', 'required', '', '', '0', '0', '1', null, 'Email', 'Email', 'UNI', '0', '2016-04-26 20:01:01', null, null, 'Active', null, null, 'employee', '0');
INSERT INTO `master_entry` VALUES ('user', 'contact_number', 'var', '', '', '', '0', '0', '0', null, 'Contact Number', 'Contact Number', '', '0', '2016-04-26 20:01:01', null, null, 'Active', null, null, 'employee', '0');
INSERT INTO `master_entry` VALUES ('user', 'home_telephone', 'var', '', '', '', '1', '0', '0', null, 'Home Telephone', 'Home Telephone', '', '0', '2016-04-26 20:01:01', null, null, 'Active', null, null, 'employee', '0');
INSERT INTO `master_entry` VALUES ('user', 'username', 'var', 'required', '', '', '0', '0', '0', null, 'Username', 'Username', 'UNI', '0', '2016-04-26 20:01:01', null, null, 'Active', null, null, 'employee', '0');
INSERT INTO `master_entry` VALUES ('user', 'date_of_birth', 'date', '', '', '', '1', '0', '0', null, 'Date Of Birth', 'Date Of Birth', '', '0', '2016-04-26 20:01:01', null, null, 'Active', null, null, 'employee', '0');
INSERT INTO `master_entry` VALUES ('user', 'gender', 'select', '', '', 'Male,Female', '1', '0', '0', null, 'Gender', 'Gender', '', '0', '2016-04-26 20:01:01', null, null, 'Active', null, null, 'employee', '0');
INSERT INTO `master_entry` VALUES ('user', 'default_module_id', 'select', '', 'SELECT module_id,module_name FROM module', '', '1', '0', '0', null, 'Default Module', 'Default Module', '', '0', '2016-04-26 20:01:01', null, null, 'Active', null, null, 'employee', '0');
INSERT INTO `master_entry` VALUES ('user', 'status', 'select', 'required', '', 'Active,Inactive', '1', '0', '0', null, 'Status', 'Status', '', '0', '2016-04-26 20:01:01', null, null, 'Active', null, null, 'employee', '0');
INSERT INTO `master_entry` VALUES ('user', 'line_manager_id', 'select', '', 'SELECT\n`user`.user_id,\nCONCAT(location.location_name,\" -> \",\ndepartment.department_name,\" -> \",\ndesignation.designation_name,\" -> \",\n`user`.first_name,\" \",\n`user`.last_name,\" -> \",\n`user`.user_id) AS user_name\nFROM\n`user`\nLEFT JOIN department ON `user`.department_id = department.department_id\nLEFT JOIN designation ON `user`.designation_id = designation.designation_id\nLEFT JOIN location ON `user`.location_id = location.location_id\nWHERE\n`user`.user_id <> 1 AND\n`user`.`status` = \"Active\"\nORDER BY\nuser_name ASC', '', '1', '0', '0', null, 'Line Manager', 'Line Manager', '', '0', '2016-04-26 20:01:01', null, null, 'Active', null, null, 'employee', '0');
INSERT INTO `master_entry` VALUES ('user', 'designation_id', 'select', 'required', 'SELECT\ndesignation.designation_id,\ndesignation.designation_name\nFROM\ndesignation', '', '1', '0', '0', null, 'Designation', 'Designation', '', '0', '2016-04-26 20:01:01', null, null, 'Active', null, null, 'employee', '0');
INSERT INTO `master_entry` VALUES ('user', 'department_id', 'select', 'required', 'SELECT\ndepartment.department_id,\ndepartment.department_name\nFROM\ndepartment', '', '1', '0', '0', null, 'Department', 'Department', '', '0', '2016-04-26 20:01:01', null, null, 'Active', null, null, 'employee', '0');
INSERT INTO `master_entry` VALUES ('user', 'location_id', 'select', 'required', 'SELECT\nlocation.location_id,\nlocation.location_name\nFROM\nlocation', '', '1', '0', '0', null, 'Location', 'Location', '', '0', '2016-04-26 20:01:01', null, null, 'Active', null, null, 'employee', '0');
INSERT INTO `master_entry` VALUES ('vendor', 'vendor_name', 'text', 'required', '', '', '0', '0', '0', null, 'Vendor Name', 'Vendor Name', '', '0', '2016-06-20 10:52:26', null, null, 'Active', null, null, 'Add_Vendor', '0');
INSERT INTO `master_entry` VALUES ('vendor', 'mobile_number', 'text', 'required', '', '', '0', '0', '0', null, 'Mobile Number', 'Mobile Number', '', '0', '2016-06-20 10:52:26', null, null, 'Active', null, null, 'Add_Vendor', '0');
INSERT INTO `master_entry` VALUES ('vendor', 'phone_number', 'text', '', '', '', '0', '0', '0', null, 'Phone Number', 'Phone Number', '', '0', '2016-06-20 10:52:26', null, null, 'Active', null, null, 'Add_Vendor', '0');
INSERT INTO `master_entry` VALUES ('vendor', 'fax_number', 'text', '', '', '', '0', '0', '0', null, 'Fax Number', 'Fax Number', '', '0', '2016-06-20 10:52:26', null, null, 'Active', null, null, 'Add_Vendor', '0');
INSERT INTO `master_entry` VALUES ('vendor', 'email', 'email', 'required', '', '', '0', '0', '0', null, 'Email', 'Email', '', '0', '2016-06-20 10:52:26', null, null, 'Active', null, null, 'Add_Vendor', '0');
INSERT INTO `master_entry` VALUES ('vendor', 'web_url', 'url', '', '', '', '1', '0', '0', null, 'Web Url', 'Web Url', '', '0', '2016-06-20 10:52:26', null, null, 'Active', null, null, 'Add_Vendor', '0');
INSERT INTO `master_entry` VALUES ('vendor', 'status', 'select', 'required', '', 'Active,Inactive', '0', '0', '0', null, 'Status', 'Status', '', '0', '2016-06-20 10:52:26', null, null, 'Active', null, null, 'Add_Vendor', '0');
INSERT INTO `master_entry` VALUES ('product_category', 'product_category_name', 'var', 'required', '', '', '0', '0', '0', null, 'Product Category Name', 'Product Category Name', '', '0', '2016-07-12 15:19:21', null, null, 'Active', null, null, 'product_category', '1');
INSERT INTO `master_entry` VALUES ('product_category', 'description', 'textarea', '', '', '', '0', '0', '0', null, 'Description', 'Description', '', '0', '2016-07-12 15:19:21', null, null, 'Active', null, null, 'product_category', '0');
INSERT INTO `master_entry` VALUES ('product_category', 'status', 'select', 'required', '', 'Active,Inactive', '0', '0', '0', null, 'Status', 'Status', '', '0', '2016-07-12 15:19:21', null, null, 'Active', null, null, 'product_category', '0');
INSERT INTO `master_entry` VALUES ('master_entry_table', 'master_entry_table_name', 'select', 'required', 'select table_name,table_name from information_schema.tables WHERE TABLE_SCHEMA=\"eml\"', '', '0', '0', '0', '1', 'MASTER ENTRY TABLE NAME', 'Type master entry table name', 'MUL', '0', '2016-10-22 15:49:40', null, '2016-10-22 15:50:08', 'Active', null, null, 'master_entry_table', '1');
INSERT INTO `master_entry` VALUES ('master_entry_table', 'table_sql', 'tex', 'required', '', '', '1', '0', '0', '2', 'TABLE SQL', 'Type table sql', '', '0', '2016-10-22 15:49:40', null, '2016-10-22 15:52:05', 'Active', null, null, 'master_entry_table', '0');
INSERT INTO `master_entry` VALUES ('master_entry_table', 'form_column', 'text', '', '', '', '0', '0', '0', '14', 'Form Column', 'Form Column', '', '0', '2016-10-22 15:49:40', null, '2016-10-22 15:52:05', 'Active', null, null, 'master_entry_table', '0');
INSERT INTO `master_entry` VALUES ('master_entry_table', 'enable_details_view', 'checkbox', '', '', '', '1', '0', '0', '5', 'ENABLE DETAILS VIEW', 'Type enable details view', '', '0', '2016-10-22 15:49:40', null, '2016-10-22 15:52:14', 'Active', null, null, 'master_entry_table', '0');
INSERT INTO `master_entry` VALUES ('master_entry_table', 'template_details_view', 'select', '', 'SELECT template_name,template_name FROM template', '', '1', '0', '0', '13', 'SELECT TEMPLATE', 'Select Template', '', '0', '2016-10-22 15:49:40', null, '2016-10-22 15:52:14', 'Active', null, null, 'master_entry_table', '0');
INSERT INTO `master_entry` VALUES ('master_entry_table', 'details_view_sql', 'tex', '', '', '', '1', '0', '0', '12', 'DETAILS VIEW SQL', 'Type details view sql', '', '0', '2016-10-22 15:49:40', null, '2016-10-22 15:52:14', 'Active', null, null, 'master_entry_table', '0');
INSERT INTO `master_entry` VALUES ('master_entry_table', 'status', 'select', '', '', 'Active,Inactive', '1', '0', '0', '6', 'Status', 'Status', '', '0', '2016-10-22 15:49:40', null, '2016-10-22 15:52:21', 'Active', null, null, 'master_entry_table', '1');
INSERT INTO `master_entry` VALUES ('master_entry_table', 'master_entry_title', 'var', 'required', '', '', '0', '0', '0', '0', 'Master Entry Title', 'Use lowercase and no space', 'UNI', '0', '2016-10-22 15:49:40', null, '2016-10-22 15:50:08', 'Active', null, null, 'master_entry_table', '0');
INSERT INTO `master_entry` VALUES ('master_entry_table', 'export_excel', 'checkbox', '', '', '', '1', '0', '0', '10', 'Export Excel', 'Export Excel', '', '0', '2016-10-22 15:49:40', null, '2016-10-22 15:52:21', 'Active', null, null, 'master_entry_table', '0');
INSERT INTO `master_entry` VALUES ('master_entry_table', 'export_pdf', 'checkbox', '', '', '', '1', '0', '0', '9', 'Export Pdf', 'Export Pdf', '', '0', '2016-10-22 15:49:40', null, '2016-10-22 15:52:21', 'Active', null, null, 'master_entry_table', '0');
INSERT INTO `master_entry` VALUES ('master_entry_table', 'export_csv', 'checkbox', '', '', '', '1', '0', '0', '8', 'Export Csv', 'Export Csv', '', '0', '2016-10-22 15:49:40', null, '2016-10-22 15:52:21', 'Active', null, null, 'master_entry_table', '0');
INSERT INTO `master_entry` VALUES ('master_entry_table', 'enable_printing', 'checkbox', '', '', '', '1', '0', '0', '7', 'Enable Printing', 'Enable Printing', '', '0', '2016-10-22 15:49:40', null, '2016-10-22 15:52:21', 'Active', null, null, 'master_entry_table', '0');
INSERT INTO `master_entry` VALUES ('master_entry_table', 'import_excel', 'checkbox', '', '', '', '1', '0', '0', '11', 'Import Excel', 'Import Excel', '', '0', '2016-10-22 15:49:40', null, '2016-10-22 15:52:19', 'Active', null, null, 'master_entry_table', '0');
INSERT INTO `master_entry` VALUES ('master_entry_table', 'disable_grid_view', 'checkbox', '', '', '', '0', '0', '0', '4', 'Disable Grid View', 'Disable Grid View', '', '0', '2016-10-22 15:49:40', null, '2016-10-22 15:52:05', 'Active', null, null, 'master_entry_table', '0');
INSERT INTO `master_entry` VALUES ('master_entry_table', 'disable_form_view', 'checkbox', '', '', '', '0', '0', '0', '3', 'Disable Form View', 'Disable Form View', '', '0', '2016-10-22 15:49:40', null, '2016-10-22 15:52:05', 'Active', null, null, 'master_entry_table', '0');
INSERT INTO `master_entry` VALUES ('master_entry_table', 'include_search_panel', 'checkbox', '', '', '', '0', '0', '0', '15', 'Include Search Panel', 'Include Search Panel', '', '0', '2016-10-22 15:49:40', null, '2016-10-22 15:49:54', 'Active', null, null, 'master_entry_table', '0');
INSERT INTO `master_entry` VALUES ('user_level', 'user_level_name', 'text', 'required', '', '', '0', '0', '0', null, 'USER LEVEL NAME', 'Type user level name', 'UNI', '0', '2016-11-12 13:15:45', null, null, 'Active', null, null, 'user_level', '0');
INSERT INTO `master_entry` VALUES ('user_level', 'description', 'tex', '', '', '', '0', '0', '0', null, 'DESCRIPTION', 'Type description', '', '0', '2016-11-12 13:15:45', null, null, 'Active', null, null, 'user_level', '0');
INSERT INTO `master_entry` VALUES ('user_level', 'status', 'select', 'required', '', 'Active', '0', '0', '0', null, 'STATUS', 'Type status', '', '0', '2016-11-12 13:15:45', null, null, 'Active', null, null, 'user_level', '0');
INSERT INTO `master_entry` VALUES ('user_level', 'privilege_edit', 'checkbox', '', '', '', '0', '0', '0', null, 'PRIVILEGE EDIT', 'Type privilege edit', '', '0', '2016-11-12 13:15:45', null, null, 'Active', null, null, 'user_level', '0');
INSERT INTO `master_entry` VALUES ('user_level', 'privilege_delete', 'checkbox', '', '', '', '0', '0', '0', null, 'PRIVILEGE DELETE', 'Type privilege delete', '', '0', '2016-11-12 13:15:45', null, null, 'Active', null, null, 'user_level', '0');
INSERT INTO `master_entry` VALUES ('user_level', 'privilege_add', 'checkbox', '', '', '', '0', '0', '0', null, 'PRIVILEGE ADD', 'Type privilege add', '', '0', '2016-11-12 13:15:45', null, null, 'Active', null, null, 'user_level', '0');
INSERT INTO `master_entry` VALUES ('user_level', 'privilege_view_all', 'checkbox', '', '', '', '0', '0', '0', null, 'PRIVILEGE VIEW ALL', 'Type privilege view all', '', '0', '2016-11-12 13:15:45', null, null, 'Active', null, null, 'user_level', '0');
INSERT INTO `master_entry` VALUES ('user_level', 'all_privilege', 'checkbox', '', '', '', '0', '0', '0', null, 'ALL PRIVILEGE', 'Type all privilege', '', '0', '2016-11-12 13:15:45', null, null, 'Active', null, null, 'user_level', '0');
INSERT INTO `master_entry` VALUES ('user_level', 'privilege_nation_access', 'checkbox', '', '', '', '0', '0', '0', null, 'PRIVILEGE NATION ACCESS', 'Privilege Nation Access', '', '0', '2016-11-12 13:15:45', null, null, 'Active', null, null, 'user_level', '0');
INSERT INTO `master_entry` VALUES ('department', 'department_name', 'text', 'required', '', '', '0', '0', '0', null, 'Department Name', 'Department Name', '', '0', '2016-11-20 12:59:04', null, null, 'Active', null, null, 'DepartmentGroup', '0');
INSERT INTO `master_entry` VALUES ('department', 'status', 'select', 'required', '', 'Active,Inactive', '0', '0', '0', null, 'Status', 'Status', '', '0', '2016-11-20 12:59:04', null, null, 'Active', null, null, 'DepartmentGroup', '0');
INSERT INTO `master_entry` VALUES ('bank', 'bank_name', 'text', 'required', '', '', '0', '0', '0', null, 'Bank Name', 'Type bank name', '', '0', '2016-11-20 18:28:00', null, null, 'Active', null, null, 'bank', '0');
INSERT INTO `master_entry` VALUES ('bank', 'status', 'select', 'required', '', 'Active,Inactive', '0', '0', '0', null, 'Status', 'Type status', '', '0', '2016-11-20 18:28:00', null, null, 'Active', null, null, 'bank', '0');
INSERT INTO `master_entry` VALUES ('field_type', 'field_type_name', 'text', 'required', '', '', '0', '0', '0', '0', 'Field Type Name', 'Field Type Name', '', '0', '2016-12-31 12:25:25', null, '2016-12-31 12:28:13', 'Active', null, null, 'field_type', '0');
INSERT INTO `master_entry` VALUES ('field_type', 'description', 'textarea', '', '', '', '0', '0', '0', '1', 'Description', 'Description', '', '0', '2016-12-31 12:25:25', null, '2016-12-31 12:28:14', 'Active', null, null, 'field_type', '0');
INSERT INTO `master_entry` VALUES ('field_type', 'status', 'select', 'required', '', 'Active,Inactive', '0', '0', '0', '2', 'Status', 'Status', '', '0', '2016-12-31 12:25:25', null, '2016-12-31 12:28:14', 'Active', null, null, 'field_type', '0');
INSERT INTO `master_entry` VALUES ('grid_list', 'grid_list_name', 'text', 'required', '', '', '0', '0', '0', null, 'Grid List Name', 'Grid List Name', '', '0', '2017-01-11 16:00:51', null, null, 'Active', null, null, 'grid_list', '0');
INSERT INTO `master_entry` VALUES ('grid_list', 'grid_title', 'text', 'required', '', '', '0', '0', '0', null, 'Grid Title', 'Grid Title', '', '0', '2017-01-11 16:00:51', null, null, 'Active', null, null, 'grid_list', '0');
INSERT INTO `master_entry` VALUES ('grid_list', 'description', 'textarea', '', '', '', '0', '0', '0', null, 'Description', 'Description', '', '0', '2017-01-11 16:00:51', null, null, 'Active', null, null, 'grid_list', '0');
INSERT INTO `master_entry` VALUES ('grid_list', 'theads', 'textarea', 'required', '', '', '0', '0', '0', null, 'Theads', 'Theads', '', '0', '2017-01-11 16:00:51', null, null, 'Active', null, null, 'grid_list', '0');
INSERT INTO `master_entry` VALUES ('grid_list', 'data_query', 'textarea', 'required', '', '', '0', '0', '0', null, 'Data Query', 'Data Query', '', '0', '2017-01-11 16:00:51', null, null, 'Active', null, null, 'grid_list', '0');
INSERT INTO `master_entry` VALUES ('grid_list', 'pagination', 'checkbox', '', '', '', '0', '0', '0', null, 'Pagination', 'Pagination', '', '0', '2017-01-11 16:00:51', null, null, 'Active', null, null, 'grid_list', '0');
INSERT INTO `master_entry` VALUES ('grid_list', 'excel_export', 'checkbox', '', '', '', '0', '0', '0', null, 'Excel Export', 'Excel Export', '', '0', '2017-01-11 16:00:51', null, null, 'Active', null, null, 'grid_list', '0');
INSERT INTO `master_entry` VALUES ('grid_list', 'pdf_export', 'checkbox', '', '', '', '0', '0', '0', null, 'Pdf Export', 'Pdf Export', '', '0', '2017-01-11 16:00:51', null, null, 'Active', null, null, 'grid_list', '0');
INSERT INTO `master_entry` VALUES ('grid_list', 'search_panel', 'checkbox', '', '', '', '0', '0', '0', null, 'Search Panel', 'Search Panel', '', '0', '2017-01-11 16:00:51', null, null, 'Active', null, null, 'grid_list', '0');
INSERT INTO `master_entry` VALUES ('grid_list', 'search_panel_position', 'select', '', '', 'Top,Left', '0', '0', '0', null, 'Search Panel Position', 'Search Panel Position', '', '0', '2017-01-11 16:00:51', null, null, 'Active', null, null, 'grid_list', '0');
INSERT INTO `master_entry` VALUES ('grid_list', 'status', 'select', 'required', '', 'Active,Inactive', '0', '0', '0', null, 'Status', 'Status', '', '0', '2017-01-11 16:00:51', null, null, 'Active', null, null, 'grid_list', '0');
INSERT INTO `master_entry` VALUES ('grid_list', 'panel_id', 'select', '', 'SELECT\nsearch_panel.panel_id,\nsearch_panel.panel_name\nFROM\nsearch_panel\nWHERE\nsearch_panel.`status` = \"Active\"', '', '1', '0', '0', null, 'Panel', 'Panel', '', '0', '2017-01-11 16:00:51', null, null, 'Active', null, null, 'grid_list', '0');

-- ----------------------------
-- Table structure for master_entry_table
-- ----------------------------
DROP TABLE IF EXISTS `master_entry_table`;
CREATE TABLE `master_entry_table` (
  `master_entry_table_id` int(10) NOT NULL AUTO_INCREMENT,
  `master_entry_table_name` varchar(50) NOT NULL,
  `table_sql` text NOT NULL COMMENT 'possible select query to read this table',
  `form_column` int(1) DEFAULT '1',
  `enable_details_view` tinyint(1) DEFAULT '0',
  `template_details_view` varchar(50) DEFAULT NULL COMMENT 'the template name of the view which will pop up to show',
  `details_view_sql` text,
  `created_by` int(10) NOT NULL DEFAULT '0',
  `created` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `master_entry_title` varchar(50) DEFAULT NULL COMMENT 'Use lower case and no space',
  `where_clause_filter` text,
  `export_excel` tinyint(1) DEFAULT '0',
  `export_pdf` tinyint(1) DEFAULT '0',
  `export_csv` tinyint(1) DEFAULT '0',
  `enable_printing` tinyint(1) DEFAULT '0',
  `file_upload_path` varchar(250) DEFAULT NULL,
  `import_excel` tinyint(1) DEFAULT '0',
  `disable_grid_view` tinyint(1) DEFAULT '0',
  `disable_form_view` tinyint(1) DEFAULT '0',
  `include_search_panel` tinyint(1) DEFAULT '0',
  `disable_action` tinyint(1) DEFAULT '0',
  `disable_edit_icon` tinyint(1) DEFAULT '0',
  `disable_delete_icon` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`master_entry_table_id`),
  UNIQUE KEY `u_master_entry_title` (`master_entry_title`),
  KEY `u_table_name` (`master_entry_table_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of master_entry_table
-- ----------------------------
INSERT INTO `master_entry_table` VALUES ('4', 'district', 'SELECT district.district_id,  district.district_name, division.division_name FROM district LEFT JOIN division ON division.division_id=district.division_id', '1', '0', '', '', '0', null, '1', '2016-04-27 15:37:39', 'Active', 'district', null, '0', '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `master_entry_table` VALUES ('10', 'master_entry_table', 'SELECT master_entry_table_id,form_column,master_entry_table_name,table_sql, template_details_view, enable_details_view,master_entry_title,export_pdf,export_csv,export_excel,enable_printing,disable_grid_view,disable_form_view,include_search_panel FROM master_entry_table', '1', '0', '', '', '0', null, '1', '2016-04-27 16:17:01', 'Active', 'master_entry_table', null, '0', '1', '0', '0', null, '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `master_entry_table` VALUES ('17', 'user_level', 'SELECT user_level.*\nFROM user_level WHERE user_level.user_level_id NOT IN (1,12)', '1', '0', '', '', '0', null, '1', '2016-11-29 11:30:47', 'Active', 'user_level', null, '0', '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `master_entry_table` VALUES ('18', 'user_type', 'SELECT user_type.* FROM user_type', '1', '0', '', '', '0', null, '1', '2016-04-27 15:37:40', 'Active', 'user_type', null, '0', '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `master_entry_table` VALUES ('19', 'user', 'SELECT\n	`user`.user_id,\n	`user`.first_name,\n	`user`.last_name,\n	`user`.email,\n	`user`.contact_number,\n	`user`.username,\n	`user`.`password`,\n	`user`.secret_question_1,\n	`user`.secret_question_2,\n	`user`.secret_question_ans_1,\n	`user`.secret_question_ans_2,\n	`user`.identification_type_id,\n	`user`.identification_number,\n	`user`.date_of_birth,\n	`user`.gender,\n	`user`.religion_id,\n	`user`.father_name,\n	`user`.father_occupation_id,\n	`user`.mother_name,\n	`user`.mother_occupation_id,\n	`user`.bank_account_number,\n	`user`.bank_branch,\n	`user`.last_login_date_time,\n	`user`.default_module_id,\n	`user`.created_by,\n	`user`.created,\n	`user`.updated_by,\n	`user`.updated,\n	`user`.`status`,\n	`user`.user_image,\n	`user`.address,\n	`user`.is_reliever,\n	`user`.reliever_to,\n	`user`.reliever_start_datetime,\n	`user`.reliever_end_datetime,\n	`user`.line_manager_id,\n	`user`.designation_id,\n	`user`.department_id,\n	`user`.location_id,\n	`user`.default_vehicle_id,\n	CONCAT(\n		`user`.first_name,\n		\' \',\n		`user`.last_name\n	) AS first_name,\n	module.module_name AS default_module_name,\n	location.location_name,\n	department.department_name,\n	designation.designation_name,\n	CONCAT(\n		line_manager.first_name,\n		\' \',\n		line_manager.last_name\n	) AS line_manager_name\nFROM\n	`user`\nINNER JOIN module ON `user`.default_module_id = module.module_id\nLEFT JOIN location ON `user`.location_id = location.location_id\nLEFT JOIN department ON `user`.department_id = department.department_id\nLEFT JOIN designation ON `user`.designation_id = designation.designation_id\nLEFT JOIN `user` AS line_manager ON `user`.line_manager_id = line_manager.user_id\nWHERE\n	# This is the user for Apsis Developer, Should not show in public\n`user`.user_id <> 1', '1', '1', 'user', 'SELECT `user`.first_name,`user`.last_name,`user`.email,`user`.contact_number,`user`.gender,`user`.father_name,`user`.mother_name,`user`.bank_account_number,`user`.`status`,`user`.address,CONCAT(line_manager.first_name,\' \',line_manager.last_name) AS line_manager_name,designation.designation_name FROM `user` INNER JOIN `user` AS line_manager ON `user`.line_manager_id = line_manager.user_id INNER JOIN designation ON `user`.designation_id = designation.designation_id', '1', '0000-00-00 00:00:00', '1', '2016-04-27 15:37:40', 'Active', 'user', null, '0', '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `master_entry_table` VALUES ('32', 'designation', 'SELECT * FROM designation', '1', '0', '', '', '1', '2014-10-11 16:25:32', '1', '2016-04-27 15:37:40', 'Active', 'designation', null, '1', '1', '0', '0', null, '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `master_entry_table` VALUES ('34', 'vehicle_type', 'SELECT * FROM vehicle_type', '1', '0', null, null, '1', '2014-10-12 16:28:50', null, '2016-04-27 15:37:40', 'Active', 'vehicle_type', null, '0', '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `master_entry_table` VALUES ('35', 'vehicle_model', 'SELECT vehicle_model.vehicle_model_id,\nvehicle_model.vehicle_model_name,\nvehicle_type.vehicle_type_name,\nvehicle_model.vehicle_model_description,\nvehicle_model.gear_type,\nvehicle_model.status\nFROM\nvehicle_model\nLEFT JOIN vehicle_type ON vehicle_type.vehicle_type_id = vehicle_model.vehicle_type_id\n', '1', '1', 'user', '', '1', '2014-10-12 16:33:33', '1', '2016-04-27 15:37:40', 'Active', 'vehicle_model', null, '0', '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `master_entry_table` VALUES ('46', 'nationality', 'SELECT nationality.nationality_id,nationality.nationality_name,nationality.status from nationality', '1', '0', 'user', '', '1', '2014-12-01 15:43:52', '1', '2016-04-27 15:37:40', 'Active', 'nationality', null, '0', '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `master_entry_table` VALUES ('47', 'bank', 'SELECT bank.bank_id,bank.bank_name, bank.status from bank', '1', '0', 'user', '', '1', '2014-12-02 16:34:19', '1', '2016-04-27 15:37:40', 'Active', 'bank', null, '0', '0', '0', '0', 'upload/bank/', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `master_entry_table` VALUES ('48', 'module', 'SELECT module.module_id, \n	module.module_name, \n	module.module_icon, \n	module.description, \n	module.home_url, \n	module.`status`\nFROM module', '1', '0', 'user', '', '1', '2014-12-07 15:13:30', null, '2016-04-27 15:37:40', 'Active', 'module', null, '0', '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `master_entry_table` VALUES ('49', 'email_subject', 'SELECT email_subject.email_subject_id, \n	email_subject.email_subject_name, \n	email_subject.description, \n	email_subject.`status`\nFROM email_subject', '1', '0', 'user', '', '1', '2014-12-07 18:32:57', null, '2016-04-27 15:37:40', 'Active', 'email_subject', null, '0', '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `master_entry_table` VALUES ('50', 'country', 'SELECT country.country_id, \n	country.country_name, \n	country.country_code, \n	country.`status`, \n	country.language_id, \n	CONCAT(`language`.language_name,\"->\",`language`.language_code) AS language_name\nFROM country LEFT JOIN `language` ON country.language_id = `language`.language_id', '1', '0', 'user', '', '1', '2014-12-09 14:52:03', '1', '2016-04-27 15:37:40', 'Active', 'country', null, '0', '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `master_entry_table` VALUES ('53', 'user', 'SELECT * FROM user', '1', '0', '', '', '1', '2014-12-21 16:24:45', '1', '2016-04-27 15:37:40', 'Active', 'employee', null, '0', '0', '0', '0', null, '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `master_entry_table` VALUES ('61', 'designation', 'SELECT * FROM designation', '1', '0', '', '', '1', '2015-05-23 12:32:32', null, '2016-04-27 15:37:40', 'Active', 'new_designation', null, '0', '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `master_entry_table` VALUES ('63', 'attachment', 'Select * from attachment', '1', '0', '', '', '1', '2016-04-19 12:26:04', '1', '2016-04-27 15:37:40', 'Active', 'attachment', null, '0', '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `master_entry_table` VALUES ('64', 'area', 'Select * from area', '1', '0', '', '', '1', '2016-04-19 12:26:37', '1', '2016-04-27 15:37:40', 'Active', 'area', null, '0', '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `master_entry_table` VALUES ('65', 'company', 'Select * from company', '1', '0', '', '', '1', '2016-04-19 12:27:21', '1', '2016-04-27 15:37:40', 'Active', 'company', null, '0', '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `master_entry_table` VALUES ('66', 'customer_type', 'Select * from customer_type', '1', '0', '', '', '1', '2016-04-19 12:47:19', null, '2016-04-27 15:37:41', 'Active', 'customer_type', null, '0', '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `master_entry_table` VALUES ('70', 'product_brand', 'Select * from product_brand', '1', '0', '', '', '1', '2016-04-19 12:50:32', null, '2016-04-27 15:37:41', 'Active', 'product_brand', null, '0', '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `master_entry_table` VALUES ('80', 'customer', 'Select * from customer', '1', '0', '', '', '1', '2016-04-19 19:18:14', null, '2016-04-27 15:37:41', 'Active', 'customer', null, '0', '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `master_entry_table` VALUES ('81', 'vendor', 'Select * from vendor', '1', '0', '', '', '1', '2016-04-25 11:55:44', '1', '2016-06-20 10:52:07', 'Active', 'Add_Vendor', null, '1', '0', '0', '0', null, '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `master_entry_table` VALUES ('84', 'user', 'SELECT * FROM user', '1', '0', '', '', '1', '2016-04-26 11:46:48', null, '2016-04-27 15:37:41', 'Active', 'current_user', null, '0', '0', '0', '0', null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `master_entry_table` VALUES ('85', 'user', 'SELECT * FROM user', '1', '0', '', '', '1', '2016-04-26 14:38:27', '1', '2016-04-27 15:37:41', 'Active', 'employee_list', null, '1', '0', '1', '0', null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `master_entry_table` VALUES ('86', 'product_category', 'SELECT * from product_category', '1', '0', '', '', '1', '2016-04-27 12:09:11', '1', '2016-07-12 15:18:27', 'Active', 'product_category', null, '0', '0', '0', '0', null, '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `master_entry_table` VALUES ('102', 'department', 'SELECT * FROM department WHERE department_group_id is NULL', '1', '0', '', '', '1', '2016-11-20 12:58:00', '1', '2016-11-20 13:03:39', 'Active', 'DepartmentGroup', null, '1', '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `master_entry_table` VALUES ('104', 'field_type', 'SELECT * FROM field_type', '1', '0', '', '', '1', '2016-12-31 12:24:42', '1', '2016-12-31 12:28:37', 'Active', 'field_type', null, '0', '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `master_entry_table` VALUES ('105', 'grid_list', 'SELECT * FROM grid_list', '1', '0', '', '', '1', '2017-01-11 15:09:21', null, null, 'Active', 'grid_list', null, '0', '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menu_id` int(10) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(50) NOT NULL,
  `description` text,
  `menu_type` enum('Main','Sub') NOT NULL,
  `parent_menu_id` int(10) DEFAULT NULL,
  `module_id` int(10) DEFAULT NULL,
  `icon_class` varchar(50) DEFAULT NULL,
  `menu_url` varchar(100) DEFAULT NULL,
  `sort_number` int(2) NOT NULL DEFAULT '0',
  `created_by` int(10) NOT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  PRIMARY KEY (`menu_id`),
  KEY `fk_module_id` (`module_id`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `module` (`module_id`) ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=304 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', 'Master Entry', null, 'Main', '0', '2', 'glyphicon glyphicon-link', 'master/show_master/master_entry_table', '8', '0', '0000-00-00 00:00:00', null, '2017-02-01 18:21:35', 'Active');
INSERT INTO `menu` VALUES ('2', 'Table Grid Manager', '', 'Sub', '1', '2', 'glyphicon glyphicon-list-alt', 'master/show_master/master_entry_table', '2', '0', '0000-00-00 00:00:00', null, '2017-04-06 13:43:50', 'Active');
INSERT INTO `menu` VALUES ('3', 'Create Master Entry', 'This menu is create for master entry only', 'Sub', '1', '2', 'glyphicon glyphicon-plus', 'master', '3', '0', '0000-00-00 00:00:00', null, '2017-04-06 13:43:49', 'Active');
INSERT INTO `menu` VALUES ('4', 'Menu Manager', null, 'Main', '0', '2', 'fa fa-bars', '', '21', '0', '0000-00-00 00:00:00', null, '2017-02-01 18:21:35', 'Active');
INSERT INTO `menu` VALUES ('5', 'Create Menu', null, 'Sub', '4', '1', 'fa fa-th', 'master/menu_assign', '0', '0', '0000-00-00 00:00:00', null, '2014-12-07 15:55:03', 'Active');
INSERT INTO `menu` VALUES ('7', 'Add User', null, 'Sub', '191', '1', 'fa fa-plus', 'master/show_master/user', '0', '0', '0000-00-00 00:00:00', null, '2016-04-25 18:24:38', 'Active');
INSERT INTO `menu` VALUES ('8', 'User Level', 'Create Level and Set privilege access permission for any particular Level.', 'Sub', '105', '2', 'glyphicon glyphicon-tags', 'master/show_master/user_level', '1', '0', '0000-00-00 00:00:00', null, '2014-11-16 16:09:18', 'Active');
INSERT INTO `menu` VALUES ('10', 'Menu Privilege for Level', null, 'Sub', '105', '2', 'glyphicon glyphicon-star-empty', 'master/get_menu_for_level', '2', '0', '0000-00-00 00:00:00', null, '2014-11-16 16:09:14', 'Active');
INSERT INTO `menu` VALUES ('20', 'My Account', null, 'Sub', '278', '1', 'fa fa-user', 'master/edit_profile', '0', '0', '0000-00-00 00:00:00', null, '2016-11-21 18:24:18', 'Active');
INSERT INTO `menu` VALUES ('52', 'Division', 'Add Division', 'Sub', '118', '1', '', 'master/show_master/division', '1', '0', null, null, '2016-05-10 16:31:10', 'Active');
INSERT INTO `menu` VALUES ('53', 'District', 'Craete District', 'Sub', '118', '1', '', 'master/show_master/district', '2', '0', null, null, '2016-05-10 16:31:17', 'Active');
INSERT INTO `menu` VALUES ('99', 'Menu List', null, 'Sub', '4', '2', 'fa fa-align-left', 'master/menu_list', '1', '0', null, null, '2014-12-07 15:55:03', 'Active');
INSERT INTO `menu` VALUES ('105', 'User Manager', null, 'Main', '0', '2', 'glyphicon glyphicon-user', '#', '22', '0', null, null, '2017-02-01 18:21:35', 'Active');
INSERT INTO `menu` VALUES ('106', 'Employee', null, 'Main', '0', '1', 'glyphicon glyphicon-user', '#', '19', '0', null, null, '2017-02-01 18:21:35', 'Active');
INSERT INTO `menu` VALUES ('107', 'Add Employee', null, 'Sub', '106', '1', 'glyphicon glyphicon-plus', 'master/show_master/employee', '0', '0', null, null, '2014-12-22 11:54:03', 'Active');
INSERT INTO `menu` VALUES ('108', 'User Level', null, 'Sub', '112', '1', 'glyphicon glyphicon-tags', 'master/show_master/user_level', '0', '0', null, null, '2014-12-15 14:22:30', 'Active');
INSERT INTO `menu` VALUES ('109', 'Menu Permission', null, 'Sub', '112', '1', 'fa fa-list-ul', 'master/get_menu_for_level', '1', '0', null, null, '2014-12-07 15:50:45', 'Active');
INSERT INTO `menu` VALUES ('116', 'Master Settings', null, 'Main', '0', '1', 'fa fa-cogs', '#', '32', '0', null, null, '2017-02-01 18:21:35', 'Active');
INSERT INTO `menu` VALUES ('117', 'Support', null, 'Sub', '278', '1', 'glyphicon glyphicon-info-sign', 'master/submit_support', '31', '0', null, null, '2016-11-21 18:23:58', 'Active');
INSERT INTO `menu` VALUES ('120', 'Upazilla / Thana', null, 'Sub', '118', '1', 'fa fa-globe', 'master/create_upazila', '3', '0', null, null, '2017-04-06 11:21:06', 'Active');
INSERT INTO `menu` VALUES ('124', 'Nationality', null, 'Sub', '116', '1', 'fa fa-globe', 'master/show_master/nationality', '0', '0', null, null, '2017-04-06 11:21:09', 'Active');
INSERT INTO `menu` VALUES ('134', 'System Setting', null, 'Main', '0', '2', 'glyphicon glyphicon-cog', '', '23', '0', null, null, '2017-02-01 18:21:35', 'Active');
INSERT INTO `menu` VALUES ('135', 'Module', null, 'Sub', '134', '2', 'fa fa-puzzle-piece', 'master/show_master/module', '0', '0', null, null, '2014-12-07 15:17:20', 'Active');
INSERT INTO `menu` VALUES ('136', 'Email Subject', null, 'Sub', '134', '2', 'fa fa-envelope', 'master/show_master/email_subject', '1', '0', null, null, '2016-12-27 18:05:07', 'Active');
INSERT INTO `menu` VALUES ('137', 'Country', null, 'Sub', '118', '1', 'fa fa-map-marker', 'master/show_master/country', '4', '0', null, null, '2016-05-10 16:31:13', 'Active');
INSERT INTO `menu` VALUES ('147', 'Create Master Table', null, 'Sub', '1', '1', 'fa fa-table', 'master/create_master_table', '1', '0', null, null, '2017-04-06 13:43:50', 'Active');
INSERT INTO `menu` VALUES ('150', 'Attachment', null, 'Sub', '116', '1', 'fa fa-paperclip', 'master/show_master/attachment', '1', '1', '2016-04-19 15:27:44', null, '2016-05-24 16:26:48', 'Active');
INSERT INTO `menu` VALUES ('151', 'Area', null, 'Sub', '118', '1', 'fa fa-area-chart', 'master/show_master/area', '0', '1', '2016-04-19 15:30:56', null, '2016-05-10 16:30:46', 'Active');
INSERT INTO `menu` VALUES ('152', 'Company', null, 'Sub', '170', '1', 'fa fa-building-o', 'master/show_master/company', '3', '1', '2016-04-19 15:31:51', null, '2016-05-10 17:23:16', 'Active');
INSERT INTO `menu` VALUES ('153', 'Customer Type', null, 'Sub', '170', '1', 'fa fa-bookmark', 'master/show_master/customer_type', '2', '1', '2016-04-19 15:34:08', null, '2016-04-26 11:15:58', 'Active');
INSERT INTO `menu` VALUES ('155', 'Designation', null, 'Sub', '191', '1', 'fa fa-trophy', 'master/show_master/designation', '3', '1', '2016-04-19 15:35:51', null, '2016-11-20 13:09:52', 'Active');
INSERT INTO `menu` VALUES ('157', 'Payment Type', null, 'Sub', '189', '1', 'fa fa-money', 'master/show_master/payment_type', '0', '1', '2016-04-19 15:37:11', null, '2016-05-10 17:26:01', 'Active');
INSERT INTO `menu` VALUES ('163', 'Status', null, 'Sub', '134', '1', 'fa fa-adjust', 'master/show_master/status', '2', '1', '2016-04-19 15:41:44', null, '2016-12-27 18:10:34', 'Active');
INSERT INTO `menu` VALUES ('165', 'User Type', null, 'Sub', '191', '1', 'fa fa-user', 'master/show_master/user_type', '2', '1', '2016-04-19 15:43:16', null, '2016-11-20 13:05:38', 'Active');
INSERT INTO `menu` VALUES ('191', 'User', null, 'Main', '0', '1', 'fa fa-users', '#', '15', '1', '2016-04-25 18:23:20', null, '2017-02-01 18:21:35', 'Active');
INSERT INTO `menu` VALUES ('198', 'Dashboard', null, 'Main', '0', '1', 'glyphicon glyphicon-dashboard', '', '4', '1', '2016-04-26 11:18:41', null, '2017-04-08 12:14:55', 'Active');
INSERT INTO `menu` VALUES ('278', 'Options', null, 'Main', '0', '1', 'glyphicon glyphicon-option-vertical', '#', '33', '1', '2016-11-21 18:23:12', null, '2017-02-01 18:21:35', 'Active');
INSERT INTO `menu` VALUES ('295', 'Drop Down Manager', null, 'Sub', '134', '1', 'fa fa-caret-square-o-down', 'common_controller/add_dropdownmenu', '3', '1', '2016-12-27 18:05:04', null, '2016-12-27 18:10:34', 'Active');
INSERT INTO `menu` VALUES ('296', 'Field Type', null, 'Sub', '134', '1', 'fa fa-input', 'master/show_master/field_type', '5', '1', '2016-12-31 12:27:54', null, '2016-12-31 13:46:46', 'Active');
INSERT INTO `menu` VALUES ('297', 'Search Panel', null, 'Sub', '134', '1', '', 'common_controller/search_panel', '4', '1', '2016-12-31 13:46:41', null, '2016-12-31 13:46:46', 'Active');
INSERT INTO `menu` VALUES ('303', 'Grid Manager', null, 'Sub', '134', '1', 'fa fa-list', 'master/show_master/grid_list', '6', '1', '2017-01-11 15:45:15', null, '2017-01-11 15:47:45', 'Active');

-- ----------------------------
-- Table structure for module
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module` (
  `module_id` int(10) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(50) NOT NULL,
  `module_icon` varchar(100) DEFAULT NULL,
  `description` text,
  `home_url` varchar(100) DEFAULT NULL,
  `created_by` int(10) NOT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(10) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`module_id`),
  UNIQUE KEY `module_name` (`module_name`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module
-- ----------------------------
INSERT INTO `module` VALUES ('1', 'Admin', 'fa fa-shield', 'A great way to develop CMS easily.', '', '1', '2014-09-24 17:41:26', '1', '2014-12-07 15:40:41', 'Active');
INSERT INTO `module` VALUES ('2', 'App Config', 'fa fa-cogs', 'All kind of master entry settings for any module', '', '1', '2014-09-24 17:41:28', '1', '2017-04-06 11:37:07', 'Active');

-- ----------------------------
-- Table structure for nationality
-- ----------------------------
DROP TABLE IF EXISTS `nationality`;
CREATE TABLE `nationality` (
  `nationality_id` int(10) NOT NULL AUTO_INCREMENT,
  `nationality_name` varchar(50) NOT NULL,
  `created_by` int(10) NOT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  PRIMARY KEY (`nationality_id`)
) ENGINE=MyISAM AUTO_INCREMENT=229 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nationality
-- ----------------------------
INSERT INTO `nationality` VALUES ('1', 'Afghan', '1', '2014-12-01 15:36:07', '1', '2015-03-16 14:36:39', 'Inactive');
INSERT INTO `nationality` VALUES ('2', 'Albanian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('3', 'Algerian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('4', 'American', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('5', 'Andorran', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('6', 'Angolan', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('7', 'Antiguans', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('8', 'Argentinean', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('9', 'Armenian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('10', 'Australian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('11', 'Austrian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('12', 'Azerbaijani', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('13', 'Bahamian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('14', 'Bahraini', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('15', 'Bangladeshi', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('16', 'Barbadian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('17', 'Barbudans', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('18', 'Batswana', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('19', 'Belarusian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('20', 'Belgian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('21', 'Belizean', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('22', 'Beninese', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('23', 'Bhutanese', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('24', 'Bolivian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('25', 'Bosnian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('26', 'Brazilian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('27', 'British', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('28', 'Bruneian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('29', 'Bulgarian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('30', 'Burkinabe', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('31', 'Burmese', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('32', 'Burundian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('33', 'Cambodian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('34', 'Cameroonian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('35', 'Canadian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('36', 'Cape Verdean', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('37', 'Central African', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('38', 'Chadian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('39', 'Chilean', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('40', 'Chinese', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('41', 'Colombian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('42', 'Comoran', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('43', 'Congolese', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('44', 'Costa Rican', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('45', 'Croatian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('46', 'Cuban', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('47', 'Cypriot', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('48', 'Czech', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('49', 'Danish', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('50', 'Djibouti', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('51', 'Dominican', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('52', 'Dutch', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('53', 'East Timorese', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('54', 'Ecuadorean', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('55', 'Egyptian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('56', 'Emirian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('57', 'Equatorial Guinean', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('58', 'Eritrean', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('59', 'Estonian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('60', 'Ethiopian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('61', 'Fijian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('62', 'Filipino', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('63', 'Finnish', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('64', 'French', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('65', 'Gabonese', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('66', 'Gambian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('67', 'Georgian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('68', 'German', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('69', 'Ghanaian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('70', 'Greek', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('71', 'Grenadian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('72', 'Guatemalan', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('73', 'Guinea-Bissauan', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('74', 'Guinean', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('75', 'Guyanese', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('76', 'Haitian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('77', 'Herzegovinian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('78', 'Honduran', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('79', 'Hungarian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('80', 'Icelander', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('81', 'Indian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('82', 'Indonesian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('83', 'Iranian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('84', 'Iraqi', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('85', 'Irish', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('86', 'Israeli', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('87', 'Italian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('88', 'Ivorian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('89', 'Jamaican', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('90', 'Japanese', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('91', 'Jordanian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('92', 'Kazakhstani', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('93', 'Kenyan', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('94', 'Kittian and Nevisian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('95', 'Kuwaiti', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('96', 'Kyrgyz', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('97', 'Laotian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('98', 'Latvian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('99', 'Lebanese', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('101', 'Libyan', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('102', 'Liechtensteiner', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('103', 'Lithuanian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('104', 'Luxembourger', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('105', 'Macedonian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('106', 'Malagasy', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('107', 'Malawian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('108', 'Malaysian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('109', 'Maldivan', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('110', 'Malian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('111', 'Maltese', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('112', 'Marshallese', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('113', 'Mauritanian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('114', 'Mauritian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('115', 'Mexican', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('116', 'Micronesian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('117', 'Moldovan', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('118', 'Monacan', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('119', 'Mongolian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('120', 'Moroccan', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('121', 'Mosotho', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('122', 'Motswana', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('123', 'Mozambican', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('124', 'Namibian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('125', 'Nauruan', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('126', 'Nepalese', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('127', 'Netherlander', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('128', 'New Zealander', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('129', 'Ni-Vanuatu', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('130', 'Nicaraguan', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('131', 'Nigerian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('132', 'Nigerien', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('133', 'North Korean', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('134', 'Northern Irish', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('135', 'Norwegian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('136', 'Omani', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('137', 'Pakistani', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('138', 'Palauan', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('139', 'Panamanian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('140', 'Papua New Guinean', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('141', 'Paraguayan', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('142', 'Peruvian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('143', 'Polish', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('144', 'Portuguese', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('145', 'Qatari', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('146', 'Romanian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('147', 'Russian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('148', 'Rwandan', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('149', 'Saint Lucian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('150', 'Salvadoran', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('151', 'Samoan', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('152', 'San Marinese', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('153', 'Sao Tomean', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('154', 'Saudi', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('155', 'Scottish', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('156', 'Senegalese', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('157', 'Serbian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('158', 'Seychellois', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('159', 'Sierra Leonean', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('160', 'Singaporean', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('161', 'Slovakian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('162', 'Slovenian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('163', 'Solomon Islander', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('164', 'Somali', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('165', 'South African', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('166', 'South Korean', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('167', 'Spanish', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('168', 'Sri Lankan', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('169', 'Sudanese', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('170', 'Surinamer', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('171', 'Swazi', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('172', 'Swedish', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('173', 'Swiss', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('174', 'Syrian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('175', 'Taiwanese', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('176', 'Tajik', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('177', 'Tanzanian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('178', 'Thai', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('179', 'Togolese', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('180', 'Tongan', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('181', 'Trinidadian or Tobagonian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('182', 'Tunisian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('183', 'Turkish', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('184', 'Tuvaluan', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('185', 'Ugandan', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('186', 'Ukrainian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('187', 'Uruguayan', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('188', 'Uzbekistani', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('189', 'Venezuelan', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('190', 'Vietnamese', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('191', 'Welsh', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('192', 'Yemenite', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('193', 'Zambian', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('194', 'Zimbabwean', '1', '2014-12-01 15:36:07', '1', '2014-12-01 15:36:07', 'Active');
INSERT INTO `nationality` VALUES ('195', 'Indian', '18', '2014-12-10 16:54:58', null, null, '');
INSERT INTO `nationality` VALUES ('196', 'Liberian', '1', '2014-12-30 12:10:44', null, null, 'Active');

-- ----------------------------
-- Table structure for notification
-- ----------------------------
DROP TABLE IF EXISTS `notification`;
CREATE TABLE `notification` (
  `notify_by` int(10) NOT NULL,
  `notify_to` int(10) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `details` text NOT NULL,
  `status` enum('Unread','Read') NOT NULL DEFAULT 'Unread',
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notification
-- ----------------------------
INSERT INTO `notification` VALUES ('1', '1', 'Requisition', 'No Details Found', 'Read', '2014-12-02 18:08:51');
INSERT INTO `notification` VALUES ('2', '1', 'sdfsdfsdf', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'Read', '2014-12-03 12:17:37');
INSERT INTO `notification` VALUES ('3', '1', 'Requisition Id. 31400008 New requisition', 'A New Requisition for Conference Room waiting for your observation', 'Read', '2014-12-09 10:32:14');
INSERT INTO `notification` VALUES ('3', '2', 'Requisition Id. 31400008 New requisition', 'A New Requisition for Conference Room waiting for your observation', 'Read', '2014-12-09 10:32:14');
INSERT INTO `notification` VALUES ('3', '1', 'Requisition Id. 31400009 New requisition', 'A New Requisition for Conference Room waiting for your observation', 'Read', '2014-12-09 10:33:07');
INSERT INTO `notification` VALUES ('3', '2', 'Requisition Id. 31400009 New requisition', 'A New Requisition for Conference Room waiting for your observation', 'Read', '2014-12-09 10:33:07');
INSERT INTO `notification` VALUES ('3', '1', 'Requisition Id. 31400010 New requisition', 'A New Requisition for Conference Room waiting for your observation', 'Read', '2014-12-09 10:35:00');
INSERT INTO `notification` VALUES ('3', '2', 'Requisition Id. 31400010 New requisition', 'A New Requisition for Conference Room waiting for your observation', 'Read', '2014-12-09 10:35:00');
INSERT INTO `notification` VALUES ('3', '1', 'Requisition Id. 31400011 New requisition', 'A New Requisition for Conference Room waiting for your observation<a href=\'http://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=31400011\' target=\'\'>Go to Action Page</a>', 'Read', '2014-12-09 10:47:12');
INSERT INTO `notification` VALUES ('3', '2', 'Requisition Id. 31400011 New requisition', 'A New Requisition for Conference Room waiting for your observation<a href=\'http://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=31400011\' target=\'\'>Go to Action Page</a>', 'Read', '2014-12-09 10:47:12');
INSERT INTO `notification` VALUES ('3', '1', 'Requisition Id. 31400012 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=31400012', 'Read', '2014-12-09 10:52:35');
INSERT INTO `notification` VALUES ('3', '2', 'Requisition Id. 31400012 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=31400012', 'Read', '2014-12-09 10:52:35');
INSERT INTO `notification` VALUES ('1', '2', 'Requisition Id. 31400012 Approved', 'Dear Nirjhar Mandal, Your Requisition request has been APPROVED', 'Read', '2014-12-09 11:02:54');
INSERT INTO `notification` VALUES ('1', '2', 'Requisition Id. 31400009 Approved', 'Dear Nirjhar Mandal, Your Requisition request has been APPROVED', 'Read', '2014-12-09 11:04:18');
INSERT INTO `notification` VALUES ('24', '1', 'Requisition Id. 241400001 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241400001', 'Read', '2014-12-10 17:04:23');
INSERT INTO `notification` VALUES ('24', '2', 'Requisition Id. 241400001 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241400001', 'Unread', '2014-12-10 17:04:23');
INSERT INTO `notification` VALUES ('24', '19', 'Requisition Id. 241400001 New requisition', 'A New Requisition for Conference Room waiting for your observation <a href=\"http://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241400001\"> Click Here</a>', 'Read', '2014-12-10 17:04:23');
INSERT INTO `notification` VALUES ('24', '1', 'Requisition Id. 241400002 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241400002', 'Read', '2014-12-10 17:13:57');
INSERT INTO `notification` VALUES ('24', '2', 'Requisition Id. 241400002 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241400002', 'Unread', '2014-12-10 17:13:57');
INSERT INTO `notification` VALUES ('24', '19', 'Requisition Id. 241400002 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241400002', 'Read', '2014-12-10 17:13:57');
INSERT INTO `notification` VALUES ('19', '24', 'Requisition Id. 241400002 Approved', 'Dear user user, Your Requisition request has been APPROVED', 'Read', '2014-12-10 17:27:32');
INSERT INTO `notification` VALUES ('19', '24', 'Requisition Id. 241400002 Rejected', 'Dear user user, Your Requisition request for has been REJECTED', 'Read', '2014-12-10 17:37:46');
INSERT INTO `notification` VALUES ('19', '24', 'Requisition Id. 241400002 Rejected', 'Dear user user, Your Requisition request for has been REJECTED', 'Read', '2014-12-10 17:37:46');
INSERT INTO `notification` VALUES ('19', '24', 'Requisition Id. 241400002 Rejected', 'Dear user user, Your Requisition request for has been REJECTED', 'Read', '2014-12-10 17:37:46');
INSERT INTO `notification` VALUES ('19', '24', 'Requisition Id. 241400001 Approved', 'Dear user user, Your Requisition request has been APPROVED', 'Read', '2014-12-10 17:37:51');
INSERT INTO `notification` VALUES ('19', '1', 'Requisition Id. 241400002 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241400002', 'Read', '2014-12-10 18:08:21');
INSERT INTO `notification` VALUES ('19', '1', 'Requisition Id. 241400002 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241400002', 'Read', '2014-12-10 18:08:21');
INSERT INTO `notification` VALUES ('19', '2', 'Requisition Id. 241400002 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241400002', 'Unread', '2014-12-10 18:08:21');
INSERT INTO `notification` VALUES ('19', '2', 'Requisition Id. 241400002 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241400002', 'Unread', '2014-12-10 18:08:21');
INSERT INTO `notification` VALUES ('19', '19', 'Requisition Id. 241400002 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241400002', 'Read', '2014-12-10 18:08:21');
INSERT INTO `notification` VALUES ('19', '19', 'Requisition Id. 241400002 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241400002', 'Read', '2014-12-10 18:08:21');
INSERT INTO `notification` VALUES ('19', '1', 'Requisition Id. 191400001 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=191400001', 'Read', '2014-12-14 13:12:06');
INSERT INTO `notification` VALUES ('19', '2', 'Requisition Id. 191400001 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=191400001', 'Unread', '2014-12-14 13:12:06');
INSERT INTO `notification` VALUES ('2', '19', 'Requisition Id. 191400001 Approved', 'Dear Rakib Islam, Your Requisition request has been APPROVED', 'Read', '2014-12-14 13:13:09');
INSERT INTO `notification` VALUES ('24', '1', 'Requisition Id. 241400003 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241400003', 'Read', '2014-12-14 13:14:49');
INSERT INTO `notification` VALUES ('24', '2', 'Requisition Id. 241400003 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241400003', 'Unread', '2014-12-14 13:14:49');
INSERT INTO `notification` VALUES ('24', '1', 'Requisition Id. 241400004 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241400004', 'Read', '2014-12-29 17:50:37');
INSERT INTO `notification` VALUES ('24', '2', 'Requisition Id. 241400004 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241400004', 'Unread', '2014-12-29 17:50:37');
INSERT INTO `notification` VALUES ('24', '19', 'Requisition Id. 241400004 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241400004', 'Read', '2014-12-29 17:50:37');
INSERT INTO `notification` VALUES ('24', '39', 'Requisition Id. 241400004 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241400004', 'Read', '2014-12-29 17:50:37');
INSERT INTO `notification` VALUES ('19', '24', 'Requisition Id. 241400004 Approved', 'Dear user user, Your Requisition request has been APPROVED', 'Unread', '2014-12-29 17:53:37');
INSERT INTO `notification` VALUES ('24', '1', 'Requisition Id. 241500001 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500001', 'Read', '2015-01-08 12:14:09');
INSERT INTO `notification` VALUES ('24', '2', 'Requisition Id. 241500001 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500001', 'Unread', '2015-01-08 12:14:09');
INSERT INTO `notification` VALUES ('24', '19', 'Requisition Id. 241500001 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500001', 'Read', '2015-01-08 12:14:09');
INSERT INTO `notification` VALUES ('24', '39', 'Requisition Id. 241500001 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500001', 'Read', '2015-01-08 12:14:09');
INSERT INTO `notification` VALUES ('35', '1', 'Requisition Id. 351500001 New requisition', 'A New Requisition for Conference Room waiting for your observation', 'Read', '2015-01-08 12:56:11');
INSERT INTO `notification` VALUES ('35', '2', 'Requisition Id. 351500001 New requisition', 'A New Requisition for Conference Room waiting for your observation', 'Unread', '2015-01-08 12:56:11');
INSERT INTO `notification` VALUES ('35', '19', 'Requisition Id. 351500001 New requisition', 'A New Requisition for Conference Room waiting for your observation', 'Read', '2015-01-08 12:56:11');
INSERT INTO `notification` VALUES ('35', '39', 'Requisition Id. 351500001 New requisition', 'A New Requisition for Conference Room waiting for your observation', 'Unread', '2015-01-08 12:56:11');
INSERT INTO `notification` VALUES ('35', '1', 'Requisition Id. 351500001 New requisition', 'A New Requisition for Conference Room waiting for your observation', 'Read', '2015-01-08 12:56:25');
INSERT INTO `notification` VALUES ('35', '2', 'Requisition Id. 351500001 New requisition', 'A New Requisition for Conference Room waiting for your observation', 'Unread', '2015-01-08 12:56:25');
INSERT INTO `notification` VALUES ('35', '19', 'Requisition Id. 351500001 New requisition', 'A New Requisition for Conference Room waiting for your observation', 'Read', '2015-01-08 12:56:25');
INSERT INTO `notification` VALUES ('35', '39', 'Requisition Id. 351500001 New requisition', 'A New Requisition for Conference Room waiting for your observation', 'Unread', '2015-01-08 12:56:25');
INSERT INTO `notification` VALUES ('35', '1', 'Requisition Id. 351500002 New requisition', 'A New Requisition for Conference Room waiting for your observation', 'Read', '2015-01-08 12:57:26');
INSERT INTO `notification` VALUES ('35', '2', 'Requisition Id. 351500002 New requisition', 'A New Requisition for Conference Room waiting for your observation', 'Unread', '2015-01-08 12:57:26');
INSERT INTO `notification` VALUES ('35', '19', 'Requisition Id. 351500002 New requisition', 'A New Requisition for Conference Room waiting for your observation', 'Read', '2015-01-08 12:57:26');
INSERT INTO `notification` VALUES ('35', '39', 'Requisition Id. 351500002 New requisition', 'A New Requisition for Conference Room waiting for your observation', 'Unread', '2015-01-08 12:57:26');
INSERT INTO `notification` VALUES ('39', '6', 'Requisition Id. 351500002 Approved', 'Dear Ataur Rahman, Your Requisition request has been APPROVED', 'Unread', '2015-01-08 13:15:01');
INSERT INTO `notification` VALUES ('24', '1', 'Requisition Id. 241500002 New requisition', 'A New Requisition for Conference Room waiting for your observation', 'Read', '2015-01-08 13:19:59');
INSERT INTO `notification` VALUES ('24', '2', 'Requisition Id. 241500002 New requisition', 'A New Requisition for Conference Room waiting for your observation', 'Unread', '2015-01-08 13:19:59');
INSERT INTO `notification` VALUES ('24', '19', 'Requisition Id. 241500002 New requisition', 'A New Requisition for Conference Room waiting for your observation', 'Read', '2015-01-08 13:19:59');
INSERT INTO `notification` VALUES ('24', '39', 'Requisition Id. 241500002 New requisition', 'A New Requisition for Conference Room waiting for your observation', 'Unread', '2015-01-08 13:19:59');
INSERT INTO `notification` VALUES ('24', '1', 'Requisition Id. 241500003 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500003', 'Read', '2015-01-10 11:12:07');
INSERT INTO `notification` VALUES ('24', '2', 'Requisition Id. 241500003 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500003', 'Unread', '2015-01-10 11:12:07');
INSERT INTO `notification` VALUES ('24', '19', 'Requisition Id. 241500003 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500003', 'Read', '2015-01-10 11:12:07');
INSERT INTO `notification` VALUES ('24', '39', 'Requisition Id. 241500003 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500003', 'Unread', '2015-01-10 11:12:07');
INSERT INTO `notification` VALUES ('19', '3', 'Requisition Id. 241500003 Approved', 'Dear Zaman Ahmed, Your Requisition request has been APPROVED', 'Unread', '2015-01-10 11:13:24');
INSERT INTO `notification` VALUES ('19', '18', 'Requisition Id. 241500002 Rejected', 'Dear Riad Hossain, Your Requisition request for has been REJECTED', 'Unread', '2015-01-10 11:13:45');
INSERT INTO `notification` VALUES ('19', '18', 'Requisition Id. 241500002 Rejected', 'Dear Riad Hossain, Your Requisition request for has been REJECTED', 'Unread', '2015-01-10 11:13:45');
INSERT INTO `notification` VALUES ('19', '18', 'Requisition Id. 241500002 Rejected', 'Dear Riad Hossain, Your Requisition request for has been REJECTED', 'Unread', '2015-01-10 11:13:45');
INSERT INTO `notification` VALUES ('19', '18', 'Requisition Id. 241500002 Rejected', 'Dear Riad Hossain, Your Requisition request for has been REJECTED', 'Unread', '2015-01-10 11:13:45');
INSERT INTO `notification` VALUES ('24', '1', 'Requisition Id. 241500004 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500004', 'Read', '2015-01-10 14:19:12');
INSERT INTO `notification` VALUES ('24', '2', 'Requisition Id. 241500004 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500004', 'Unread', '2015-01-10 14:19:12');
INSERT INTO `notification` VALUES ('24', '19', 'Requisition Id. 241500004 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500004', 'Read', '2015-01-10 14:19:12');
INSERT INTO `notification` VALUES ('24', '39', 'Requisition Id. 241500004 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500004', 'Unread', '2015-01-10 14:19:12');
INSERT INTO `notification` VALUES ('24', '1', 'Requisition Id. 241500005 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500005', 'Read', '2015-01-10 14:20:40');
INSERT INTO `notification` VALUES ('24', '2', 'Requisition Id. 241500005 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500005', 'Unread', '2015-01-10 14:20:40');
INSERT INTO `notification` VALUES ('24', '19', 'Requisition Id. 241500005 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500005', 'Read', '2015-01-10 14:20:40');
INSERT INTO `notification` VALUES ('24', '39', 'Requisition Id. 241500005 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500005', 'Unread', '2015-01-10 14:20:40');
INSERT INTO `notification` VALUES ('19', '6', 'Requisition Id. 241500004 Approved', 'Dear Ataur Rahman, Your Requisition request has been APPROVED', 'Unread', '2015-01-11 18:26:43');
INSERT INTO `notification` VALUES ('24', '1', 'Requisition Id. 241500006 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=241500006', 'Read', '2015-01-22 11:27:38');
INSERT INTO `notification` VALUES ('24', '2', 'Requisition Id. 241500006 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=241500006', 'Unread', '2015-01-22 11:27:38');
INSERT INTO `notification` VALUES ('24', '19', 'Requisition Id. 241500006 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=241500006', 'Read', '2015-01-22 11:27:38');
INSERT INTO `notification` VALUES ('24', '39', 'Requisition Id. 241500006 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=241500006', 'Unread', '2015-01-22 11:27:38');
INSERT INTO `notification` VALUES ('19', '1', 'Requisition Id. 191500001 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=191500001', 'Read', '2015-01-24 17:54:59');
INSERT INTO `notification` VALUES ('19', '2', 'Requisition Id. 191500001 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=191500001', 'Unread', '2015-01-24 17:54:59');
INSERT INTO `notification` VALUES ('19', '19', 'Requisition Id. 191500001 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=191500001', 'Read', '2015-01-24 17:54:59');
INSERT INTO `notification` VALUES ('19', '39', 'Requisition Id. 191500001 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=191500001', 'Unread', '2015-01-24 17:54:59');
INSERT INTO `notification` VALUES ('24', '1', 'Requisition Id. 241500008 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=241500008', 'Unread', '2015-01-25 16:09:05');
INSERT INTO `notification` VALUES ('24', '2', 'Requisition Id. 241500008 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=241500008', 'Unread', '2015-01-25 16:09:05');
INSERT INTO `notification` VALUES ('24', '19', 'Requisition Id. 241500008 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=241500008', 'Read', '2015-01-25 16:09:05');
INSERT INTO `notification` VALUES ('24', '39', 'Requisition Id. 241500008 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=241500008', 'Unread', '2015-01-25 16:09:05');
INSERT INTO `notification` VALUES ('24', '1', 'Requisition Id. 241500010 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500010', 'Read', '2015-01-27 15:11:01');
INSERT INTO `notification` VALUES ('24', '2', 'Requisition Id. 241500010 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500010', 'Unread', '2015-01-27 15:11:01');
INSERT INTO `notification` VALUES ('24', '19', 'Requisition Id. 241500010 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500010', 'Unread', '2015-01-27 15:11:01');
INSERT INTO `notification` VALUES ('24', '39', 'Requisition Id. 241500010 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500010', 'Unread', '2015-01-27 15:11:01');
INSERT INTO `notification` VALUES ('24', '1', 'Requisition Id. 241500011 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500011', 'Unread', '2015-01-27 15:19:58');
INSERT INTO `notification` VALUES ('24', '2', 'Requisition Id. 241500011 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500011', 'Unread', '2015-01-27 15:19:58');
INSERT INTO `notification` VALUES ('24', '19', 'Requisition Id. 241500011 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500011', 'Unread', '2015-01-27 15:19:58');
INSERT INTO `notification` VALUES ('24', '39', 'Requisition Id. 241500011 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500011', 'Unread', '2015-01-27 15:19:58');
INSERT INTO `notification` VALUES ('24', '1', 'Requisition Id. 241500012 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500012', 'Unread', '2015-01-27 15:21:41');
INSERT INTO `notification` VALUES ('24', '2', 'Requisition Id. 241500012 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500012', 'Unread', '2015-01-27 15:21:41');
INSERT INTO `notification` VALUES ('24', '19', 'Requisition Id. 241500012 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500012', 'Unread', '2015-01-27 15:21:41');
INSERT INTO `notification` VALUES ('24', '39', 'Requisition Id. 241500012 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500012', 'Unread', '2015-01-27 15:21:41');
INSERT INTO `notification` VALUES ('24', '1', 'Requisition Id. 241500013 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500013', 'Unread', '2015-01-27 15:22:42');
INSERT INTO `notification` VALUES ('24', '2', 'Requisition Id. 241500013 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500013', 'Unread', '2015-01-27 15:22:42');
INSERT INTO `notification` VALUES ('24', '19', 'Requisition Id. 241500013 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500013', 'Unread', '2015-01-27 15:22:42');
INSERT INTO `notification` VALUES ('24', '39', 'Requisition Id. 241500013 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500013', 'Unread', '2015-01-27 15:22:42');
INSERT INTO `notification` VALUES ('24', '1', 'Requisition Id. 241500014 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500014', 'Unread', '2015-01-27 15:24:26');
INSERT INTO `notification` VALUES ('24', '2', 'Requisition Id. 241500014 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500014', 'Unread', '2015-01-27 15:24:26');
INSERT INTO `notification` VALUES ('24', '19', 'Requisition Id. 241500014 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500014', 'Unread', '2015-01-27 15:24:26');
INSERT INTO `notification` VALUES ('24', '39', 'Requisition Id. 241500014 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://localhost/lafarge_poolcar/conference/view_to_approval?con_req_id=241500014', 'Unread', '2015-01-27 15:24:26');
INSERT INTO `notification` VALUES ('24', '1', 'Requisition Id. 241500015 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=241500015', 'Unread', '2015-01-27 15:55:48');
INSERT INTO `notification` VALUES ('24', '2', 'Requisition Id. 241500015 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=241500015', 'Unread', '2015-01-27 15:55:48');
INSERT INTO `notification` VALUES ('24', '19', 'Requisition Id. 241500015 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=241500015', 'Unread', '2015-01-27 15:55:48');
INSERT INTO `notification` VALUES ('24', '39', 'Requisition Id. 241500015 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=241500015', 'Unread', '2015-01-27 15:55:48');
INSERT INTO `notification` VALUES ('24', '1', 'Requisition Id. 241500016 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=241500016', 'Unread', '2015-01-27 16:03:12');
INSERT INTO `notification` VALUES ('24', '2', 'Requisition Id. 241500016 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=241500016', 'Unread', '2015-01-27 16:03:12');
INSERT INTO `notification` VALUES ('24', '19', 'Requisition Id. 241500016 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=241500016', 'Unread', '2015-01-27 16:03:12');
INSERT INTO `notification` VALUES ('24', '39', 'Requisition Id. 241500016 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=241500016', 'Unread', '2015-01-27 16:03:12');
INSERT INTO `notification` VALUES ('24', '1', 'Requisition Id. 241500017 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=241500017', 'Unread', '2015-01-29 11:58:32');
INSERT INTO `notification` VALUES ('24', '2', 'Requisition Id. 241500017 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=241500017', 'Unread', '2015-01-29 11:58:32');
INSERT INTO `notification` VALUES ('24', '19', 'Requisition Id. 241500017 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=241500017', 'Unread', '2015-01-29 11:58:32');
INSERT INTO `notification` VALUES ('24', '39', 'Requisition Id. 241500017 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=241500017', 'Unread', '2015-01-29 11:58:32');
INSERT INTO `notification` VALUES ('19', '7', 'Requisition Id. 241500010 Rejected', 'Dear Ariful Islam, Your Requisition request for has been REJECTED', 'Unread', '2015-01-29 12:01:27');
INSERT INTO `notification` VALUES ('19', '7', 'Requisition Id. 241500010 Rejected', 'Dear Ariful Islam, Your Requisition request for has been REJECTED', 'Unread', '2015-01-29 12:01:27');
INSERT INTO `notification` VALUES ('19', '7', 'Requisition Id. 241500010 Rejected', 'Dear Ariful Islam, Your Requisition request for has been REJECTED', 'Unread', '2015-01-29 12:01:27');
INSERT INTO `notification` VALUES ('19', '7', 'Requisition Id. 241500010 Rejected', 'Dear Ariful Islam, Your Requisition request for has been REJECTED', 'Unread', '2015-01-29 12:01:27');
INSERT INTO `notification` VALUES ('19', '1', 'Requisition Id. 191500001 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=191500001', 'Unread', '2015-03-23 16:47:08');
INSERT INTO `notification` VALUES ('19', '2', 'Requisition Id. 191500001 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=191500001', 'Unread', '2015-03-23 16:47:08');
INSERT INTO `notification` VALUES ('19', '19', 'Requisition Id. 191500001 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=191500001', 'Unread', '2015-03-23 16:47:08');
INSERT INTO `notification` VALUES ('19', '39', 'Requisition Id. 191500001 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=191500001', 'Unread', '2015-03-23 16:47:08');
INSERT INTO `notification` VALUES ('24', '1', 'Requisition Id. 241500001 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=241500001', 'Unread', '2015-03-24 12:09:26');
INSERT INTO `notification` VALUES ('24', '2', 'Requisition Id. 241500001 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=241500001', 'Unread', '2015-03-24 12:09:26');
INSERT INTO `notification` VALUES ('24', '19', 'Requisition Id. 241500001 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=241500001', 'Unread', '2015-03-24 12:09:26');
INSERT INTO `notification` VALUES ('24', '39', 'Requisition Id. 241500001 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=241500001', 'Unread', '2015-03-24 12:09:26');
INSERT INTO `notification` VALUES ('24', '1', 'Requisition Id. 241500002 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=241500002', 'Unread', '2015-03-24 12:11:35');
INSERT INTO `notification` VALUES ('24', '2', 'Requisition Id. 241500002 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=241500002', 'Unread', '2015-03-24 12:11:35');
INSERT INTO `notification` VALUES ('24', '19', 'Requisition Id. 241500002 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=241500002', 'Unread', '2015-03-24 12:11:35');
INSERT INTO `notification` VALUES ('24', '39', 'Requisition Id. 241500002 New requisition', 'A New Requisition for Conference Room waiting for your observationhttp://192.168.1.106/lafarge_poolcar/conference/view_to_approval?con_req_id=241500002', 'Unread', '2015-03-24 12:11:35');
INSERT INTO `notification` VALUES ('19', '24', 'Requisition Id. 241500002 Approved', 'Dear user user, Your Requisition request has been APPROVED', 'Unread', '2015-03-24 12:15:59');
INSERT INTO `notification` VALUES ('19', '24', 'Requisition Id. 241500001 Rejected', 'Dear user user, Your Requisition request for has been REJECTED', 'Unread', '2015-03-24 12:16:23');
INSERT INTO `notification` VALUES ('19', '24', 'Requisition Id. 241500001 Rejected', 'Dear user user, Your Requisition request for has been REJECTED', 'Unread', '2015-03-24 12:16:23');
INSERT INTO `notification` VALUES ('19', '24', 'Requisition Id. 241500001 Rejected', 'Dear user user, Your Requisition request for has been REJECTED', 'Unread', '2015-03-24 12:16:23');
INSERT INTO `notification` VALUES ('19', '24', 'Requisition Id. 241500001 Rejected', 'Dear user user, Your Requisition request for has been REJECTED', 'Unread', '2015-03-24 12:16:23');

-- ----------------------------
-- Table structure for occupation
-- ----------------------------
DROP TABLE IF EXISTS `occupation`;
CREATE TABLE `occupation` (
  `occupation_id` int(10) NOT NULL AUTO_INCREMENT,
  `occupation_name` varchar(30) NOT NULL,
  `occupation_for` enum('Common','Man','Women') DEFAULT 'Common',
  `created_by` int(10) NOT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  PRIMARY KEY (`occupation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of occupation
-- ----------------------------

-- ----------------------------
-- Table structure for payment_system
-- ----------------------------
DROP TABLE IF EXISTS `payment_system`;
CREATE TABLE `payment_system` (
  `payment_system_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_system_name` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`payment_system_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of payment_system
-- ----------------------------

-- ----------------------------
-- Table structure for privilege_level
-- ----------------------------
DROP TABLE IF EXISTS `privilege_level`;
CREATE TABLE `privilege_level` (
  `user_id` int(10) DEFAULT NULL,
  `user_level_id` int(10) DEFAULT NULL,
  UNIQUE KEY `u_entry` (`user_id`,`user_level_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of privilege_level
-- ----------------------------
INSERT INTO `privilege_level` VALUES ('1', '1');
INSERT INTO `privilege_level` VALUES ('1', '3');
INSERT INTO `privilege_level` VALUES ('1', '4');
INSERT INTO `privilege_level` VALUES ('2', '3');
INSERT INTO `privilege_level` VALUES ('2', '4');
INSERT INTO `privilege_level` VALUES ('3', '5');
INSERT INTO `privilege_level` VALUES ('3', '6');
INSERT INTO `privilege_level` VALUES ('5', '5');
INSERT INTO `privilege_level` VALUES ('6', '4');
INSERT INTO `privilege_level` VALUES ('7', '5');
INSERT INTO `privilege_level` VALUES ('7', '6');
INSERT INTO `privilege_level` VALUES ('15', '1');
INSERT INTO `privilege_level` VALUES ('15', '5');
INSERT INTO `privilege_level` VALUES ('16', '5');
INSERT INTO `privilege_level` VALUES ('17', '6');
INSERT INTO `privilege_level` VALUES ('18', '1');
INSERT INTO `privilege_level` VALUES ('19', '3');
INSERT INTO `privilege_level` VALUES ('19', '6');
INSERT INTO `privilege_level` VALUES ('24', '5');
INSERT INTO `privilege_level` VALUES ('25', '2');
INSERT INTO `privilege_level` VALUES ('25', '4');
INSERT INTO `privilege_level` VALUES ('25', '6');
INSERT INTO `privilege_level` VALUES ('25', '10');
INSERT INTO `privilege_level` VALUES ('35', '5');
INSERT INTO `privilege_level` VALUES ('38', '5');
INSERT INTO `privilege_level` VALUES ('38', '6');
INSERT INTO `privilege_level` VALUES ('39', '3');
INSERT INTO `privilege_level` VALUES ('39', '4');
INSERT INTO `privilege_level` VALUES ('40', '6');
INSERT INTO `privilege_level` VALUES ('41', '4');
INSERT INTO `privilege_level` VALUES ('48', '10');
INSERT INTO `privilege_level` VALUES ('49', '6');
INSERT INTO `privilege_level` VALUES ('49', '9');

-- ----------------------------
-- Table structure for privilege_menu
-- ----------------------------
DROP TABLE IF EXISTS `privilege_menu`;
CREATE TABLE `privilege_menu` (
  `menu_id` int(10) NOT NULL,
  `user_level_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  UNIQUE KEY `u_privilege_menu` (`menu_id`,`user_level_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of privilege_menu
-- ----------------------------
INSERT INTO `privilege_menu` VALUES ('114', null, '6');
INSERT INTO `privilege_menu` VALUES ('106', '1', null);
INSERT INTO `privilege_menu` VALUES ('5', '1', null);
INSERT INTO `privilege_menu` VALUES ('114', null, '2');
INSERT INTO `privilege_menu` VALUES ('137', '1', null);
INSERT INTO `privilege_menu` VALUES ('116', null, '1');
INSERT INTO `privilege_menu` VALUES ('4', '1', null);
INSERT INTO `privilege_menu` VALUES ('118', null, '1');
INSERT INTO `privilege_menu` VALUES ('118', null, '2');
INSERT INTO `privilege_menu` VALUES ('86', '4', null);
INSERT INTO `privilege_menu` VALUES ('73', '7', null);
INSERT INTO `privilege_menu` VALUES ('85', '1', null);
INSERT INTO `privilege_menu` VALUES ('118', '1', null);
INSERT INTO `privilege_menu` VALUES ('131', '7', null);
INSERT INTO `privilege_menu` VALUES ('85', '4', null);
INSERT INTO `privilege_menu` VALUES ('84', null, '1');
INSERT INTO `privilege_menu` VALUES ('114', '1', null);
INSERT INTO `privilege_menu` VALUES ('78', null, '1');
INSERT INTO `privilege_menu` VALUES ('84', '4', null);
INSERT INTO `privilege_menu` VALUES ('84', '6', null);
INSERT INTO `privilege_menu` VALUES ('77', null, '1');
INSERT INTO `privilege_menu` VALUES ('83', '4', null);
INSERT INTO `privilege_menu` VALUES ('79', '1', null);
INSERT INTO `privilege_menu` VALUES ('78', '1', null);
INSERT INTO `privilege_menu` VALUES ('80', '7', null);
INSERT INTO `privilege_menu` VALUES ('80', null, '1');
INSERT INTO `privilege_menu` VALUES ('81', null, '1');
INSERT INTO `privilege_menu` VALUES ('116', '1', null);
INSERT INTO `privilege_menu` VALUES ('83', '6', null);
INSERT INTO `privilege_menu` VALUES ('82', '4', null);
INSERT INTO `privilege_menu` VALUES ('84', '1', null);
INSERT INTO `privilege_menu` VALUES ('82', '6', null);
INSERT INTO `privilege_menu` VALUES ('87', '1', null);
INSERT INTO `privilege_menu` VALUES ('87', null, '1');
INSERT INTO `privilege_menu` VALUES ('86', '1', null);
INSERT INTO `privilege_menu` VALUES ('86', null, '1');
INSERT INTO `privilege_menu` VALUES ('90', '1', null);
INSERT INTO `privilege_menu` VALUES ('90', null, '1');
INSERT INTO `privilege_menu` VALUES ('91', '1', null);
INSERT INTO `privilege_menu` VALUES ('91', null, '1');
INSERT INTO `privilege_menu` VALUES ('92', '1', null);
INSERT INTO `privilege_menu` VALUES ('92', null, '1');
INSERT INTO `privilege_menu` VALUES ('143', '6', null);
INSERT INTO `privilege_menu` VALUES ('138', '1', null);
INSERT INTO `privilege_menu` VALUES ('83', null, '1');
INSERT INTO `privilege_menu` VALUES ('113', null, '2');
INSERT INTO `privilege_menu` VALUES ('82', '1', null);
INSERT INTO `privilege_menu` VALUES ('144', '4', null);
INSERT INTO `privilege_menu` VALUES ('89', '1', null);
INSERT INTO `privilege_menu` VALUES ('82', null, '1');
INSERT INTO `privilege_menu` VALUES ('96', null, '2');
INSERT INTO `privilege_menu` VALUES ('82', '2', null);
INSERT INTO `privilege_menu` VALUES ('143', '4', null);
INSERT INTO `privilege_menu` VALUES ('85', null, '1');
INSERT INTO `privilege_menu` VALUES ('93', '1', null);
INSERT INTO `privilege_menu` VALUES ('142', '6', null);
INSERT INTO `privilege_menu` VALUES ('142', '4', null);
INSERT INTO `privilege_menu` VALUES ('94', null, '1');
INSERT INTO `privilege_menu` VALUES ('95', '1', null);
INSERT INTO `privilege_menu` VALUES ('145', '7', null);
INSERT INTO `privilege_menu` VALUES ('96', '1', null);
INSERT INTO `privilege_menu` VALUES ('77', '7', null);
INSERT INTO `privilege_menu` VALUES ('97', '7', null);
INSERT INTO `privilege_menu` VALUES ('97', null, '1');
INSERT INTO `privilege_menu` VALUES ('98', '1', null);
INSERT INTO `privilege_menu` VALUES ('98', null, '1');
INSERT INTO `privilege_menu` VALUES ('99', '1', null);
INSERT INTO `privilege_menu` VALUES ('99', null, '1');
INSERT INTO `privilege_menu` VALUES ('77', null, '4');
INSERT INTO `privilege_menu` VALUES ('79', null, '1');
INSERT INTO `privilege_menu` VALUES ('105', '1', null);
INSERT INTO `privilege_menu` VALUES ('119', '1', null);
INSERT INTO `privilege_menu` VALUES ('130', '7', null);
INSERT INTO `privilege_menu` VALUES ('7', '1', null);
INSERT INTO `privilege_menu` VALUES ('144', '1', null);
INSERT INTO `privilege_menu` VALUES ('1', '1', null);
INSERT INTO `privilege_menu` VALUES ('83', '1', null);
INSERT INTO `privilege_menu` VALUES ('107', '1', null);
INSERT INTO `privilege_menu` VALUES ('53', '1', null);
INSERT INTO `privilege_menu` VALUES ('113', null, '1');
INSERT INTO `privilege_menu` VALUES ('108', '1', null);
INSERT INTO `privilege_menu` VALUES ('107', null, '1');
INSERT INTO `privilege_menu` VALUES ('114', null, '1');
INSERT INTO `privilege_menu` VALUES ('113', '1', null);
INSERT INTO `privilege_menu` VALUES ('109', '1', null);
INSERT INTO `privilege_menu` VALUES ('140', '4', null);
INSERT INTO `privilege_menu` VALUES ('94', '3', null);
INSERT INTO `privilege_menu` VALUES ('52', '1', null);
INSERT INTO `privilege_menu` VALUES ('138', '5', null);
INSERT INTO `privilege_menu` VALUES ('95', '2', null);
INSERT INTO `privilege_menu` VALUES ('110', '1', null);
INSERT INTO `privilege_menu` VALUES ('114', '4', null);
INSERT INTO `privilege_menu` VALUES ('133', '3', null);
INSERT INTO `privilege_menu` VALUES ('94', '1', null);
INSERT INTO `privilege_menu` VALUES ('111', '1', null);
INSERT INTO `privilege_menu` VALUES ('112', '1', null);
INSERT INTO `privilege_menu` VALUES ('96', null, '1');
INSERT INTO `privilege_menu` VALUES ('98', '2', null);
INSERT INTO `privilege_menu` VALUES ('126', '3', null);
INSERT INTO `privilege_menu` VALUES ('138', '4', null);
INSERT INTO `privilege_menu` VALUES ('116', null, '2');
INSERT INTO `privilege_menu` VALUES ('117', '1', null);
INSERT INTO `privilege_menu` VALUES ('131', '3', null);
INSERT INTO `privilege_menu` VALUES ('80', '1', null);
INSERT INTO `privilege_menu` VALUES ('117', null, '1');
INSERT INTO `privilege_menu` VALUES ('117', null, '2');
INSERT INTO `privilege_menu` VALUES ('119', null, '1');
INSERT INTO `privilege_menu` VALUES ('119', null, '2');
INSERT INTO `privilege_menu` VALUES ('133', null, '2');
INSERT INTO `privilege_menu` VALUES ('130', '3', null);
INSERT INTO `privilege_menu` VALUES ('120', '1', null);
INSERT INTO `privilege_menu` VALUES ('120', null, '1');
INSERT INTO `privilege_menu` VALUES ('133', null, '1');
INSERT INTO `privilege_menu` VALUES ('121', '1', null);
INSERT INTO `privilege_menu` VALUES ('121', null, '1');
INSERT INTO `privilege_menu` VALUES ('122', '1', null);
INSERT INTO `privilege_menu` VALUES ('122', null, '1');
INSERT INTO `privilege_menu` VALUES ('123', '1', null);
INSERT INTO `privilege_menu` VALUES ('123', null, '1');
INSERT INTO `privilege_menu` VALUES ('124', '1', null);
INSERT INTO `privilege_menu` VALUES ('124', null, '1');
INSERT INTO `privilege_menu` VALUES ('125', '1', null);
INSERT INTO `privilege_menu` VALUES ('125', null, '1');
INSERT INTO `privilege_menu` VALUES ('126', '1', null);
INSERT INTO `privilege_menu` VALUES ('81', '1', null);
INSERT INTO `privilege_menu` VALUES ('126', null, '1');
INSERT INTO `privilege_menu` VALUES ('81', '4', null);
INSERT INTO `privilege_menu` VALUES ('95', null, '2');
INSERT INTO `privilege_menu` VALUES ('95', null, '1');
INSERT INTO `privilege_menu` VALUES ('129', '3', null);
INSERT INTO `privilege_menu` VALUES ('127', '1', null);
INSERT INTO `privilege_menu` VALUES ('128', '1', null);
INSERT INTO `privilege_menu` VALUES ('128', '3', null);
INSERT INTO `privilege_menu` VALUES ('129', '1', null);
INSERT INTO `privilege_menu` VALUES ('127', '3', null);
INSERT INTO `privilege_menu` VALUES ('129', null, '1');
INSERT INTO `privilege_menu` VALUES ('130', '1', null);
INSERT INTO `privilege_menu` VALUES ('113', '3', null);
INSERT INTO `privilege_menu` VALUES ('131', '1', null);
INSERT INTO `privilege_menu` VALUES ('95', '3', null);
INSERT INTO `privilege_menu` VALUES ('80', '4', null);
INSERT INTO `privilege_menu` VALUES ('79', '7', null);
INSERT INTO `privilege_menu` VALUES ('73', '5', null);
INSERT INTO `privilege_menu` VALUES ('79', '4', null);
INSERT INTO `privilege_menu` VALUES ('114', '7', null);
INSERT INTO `privilege_menu` VALUES ('129', '7', null);
INSERT INTO `privilege_menu` VALUES ('140', '6', null);
INSERT INTO `privilege_menu` VALUES ('114', '6', null);
INSERT INTO `privilege_menu` VALUES ('140', '1', null);
INSERT INTO `privilege_menu` VALUES ('142', '5', null);
INSERT INTO `privilege_menu` VALUES ('140', '5', null);
INSERT INTO `privilege_menu` VALUES ('114', '5', null);
INSERT INTO `privilege_menu` VALUES ('131', '5', null);
INSERT INTO `privilege_menu` VALUES ('130', '5', null);
INSERT INTO `privilege_menu` VALUES ('129', '5', null);
INSERT INTO `privilege_menu` VALUES ('128', '5', null);
INSERT INTO `privilege_menu` VALUES ('127', '5', null);
INSERT INTO `privilege_menu` VALUES ('128', '7', null);
INSERT INTO `privilege_menu` VALUES ('127', '7', null);
INSERT INTO `privilege_menu` VALUES ('113', '7', null);
INSERT INTO `privilege_menu` VALUES ('95', '7', null);
INSERT INTO `privilege_menu` VALUES ('113', '5', null);
INSERT INTO `privilege_menu` VALUES ('97', '2', null);
INSERT INTO `privilege_menu` VALUES ('96', '7', null);
INSERT INTO `privilege_menu` VALUES ('78', '4', null);
INSERT INTO `privilege_menu` VALUES ('95', '5', null);
INSERT INTO `privilege_menu` VALUES ('97', '1', null);
INSERT INTO `privilege_menu` VALUES ('143', '1', null);
INSERT INTO `privilege_menu` VALUES ('142', '1', null);
INSERT INTO `privilege_menu` VALUES ('145', '6', null);
INSERT INTO `privilege_menu` VALUES ('145', '1', null);
INSERT INTO `privilege_menu` VALUES ('138', '7', null);
INSERT INTO `privilege_menu` VALUES ('143', '5', null);
INSERT INTO `privilege_menu` VALUES ('144', '5', null);
INSERT INTO `privilege_menu` VALUES ('77', '4', null);
INSERT INTO `privilege_menu` VALUES ('73', '4', null);
INSERT INTO `privilege_menu` VALUES ('138', '6', null);
INSERT INTO `privilege_menu` VALUES ('86', '6', null);
INSERT INTO `privilege_menu` VALUES ('96', '2', null);
INSERT INTO `privilege_menu` VALUES ('149', '1', null);
INSERT INTO `privilege_menu` VALUES ('145', '2', null);
INSERT INTO `privilege_menu` VALUES ('145', '5', null);
INSERT INTO `privilege_menu` VALUES ('149', '2', null);
INSERT INTO `privilege_menu` VALUES ('152', '8', null);
INSERT INTO `privilege_menu` VALUES ('152', '3', null);
INSERT INTO `privilege_menu` VALUES ('152', '5', null);
INSERT INTO `privilege_menu` VALUES ('152', '7', null);
INSERT INTO `privilege_menu` VALUES ('152', '2', null);
INSERT INTO `privilege_menu` VALUES ('152', '1', null);
INSERT INTO `privilege_menu` VALUES ('152', null, '1');
INSERT INTO `privilege_menu` VALUES ('153', '5', null);
INSERT INTO `privilege_menu` VALUES ('153', '3', null);
INSERT INTO `privilege_menu` VALUES ('153', '2', null);
INSERT INTO `privilege_menu` VALUES ('153', '1', null);
INSERT INTO `privilege_menu` VALUES ('153', null, '1');
INSERT INTO `privilege_menu` VALUES ('154', '6', null);
INSERT INTO `privilege_menu` VALUES ('154', '3', null);
INSERT INTO `privilege_menu` VALUES ('154', '2', null);
INSERT INTO `privilege_menu` VALUES ('154', '1', null);
INSERT INTO `privilege_menu` VALUES ('154', null, '1');
INSERT INTO `privilege_menu` VALUES ('159', '10', null);
INSERT INTO `privilege_menu` VALUES ('159', '1', null);
INSERT INTO `privilege_menu` VALUES ('157', '10', null);
INSERT INTO `privilege_menu` VALUES ('157', '6', null);
INSERT INTO `privilege_menu` VALUES ('157', '1', null);
INSERT INTO `privilege_menu` VALUES ('158', '1', null);
INSERT INTO `privilege_menu` VALUES ('158', '9', null);
INSERT INTO `privilege_menu` VALUES ('158', '6', null);
INSERT INTO `privilege_menu` VALUES ('158', '4', null);
INSERT INTO `privilege_menu` VALUES ('160', '1', null);
INSERT INTO `privilege_menu` VALUES ('160', '10', null);
INSERT INTO `privilege_menu` VALUES ('161', '1', null);
INSERT INTO `privilege_menu` VALUES ('161', '10', null);
INSERT INTO `privilege_menu` VALUES ('90', '4', null);
INSERT INTO `privilege_menu` VALUES ('92', '4', null);
INSERT INTO `privilege_menu` VALUES ('91', '4', null);
INSERT INTO `privilege_menu` VALUES ('162', '10', null);
INSERT INTO `privilege_menu` VALUES ('162', '9', null);
INSERT INTO `privilege_menu` VALUES ('162', '6', null);
INSERT INTO `privilege_menu` VALUES ('162', '1', null);
INSERT INTO `privilege_menu` VALUES ('163', '1', null);
INSERT INTO `privilege_menu` VALUES ('163', '9', null);
INSERT INTO `privilege_menu` VALUES ('163', '6', null);
INSERT INTO `privilege_menu` VALUES ('163', '10', null);
INSERT INTO `privilege_menu` VALUES ('164', '10', null);
INSERT INTO `privilege_menu` VALUES ('164', '9', null);
INSERT INTO `privilege_menu` VALUES ('164', '6', null);
INSERT INTO `privilege_menu` VALUES ('164', '1', null);
INSERT INTO `privilege_menu` VALUES ('165', '1', null);
INSERT INTO `privilege_menu` VALUES ('165', '10', null);
INSERT INTO `privilege_menu` VALUES ('328', '9', null);
INSERT INTO `privilege_menu` VALUES ('328', null, '2');
INSERT INTO `privilege_menu` VALUES ('329', '1', null);
INSERT INTO `privilege_menu` VALUES ('329', null, '1');

-- ----------------------------
-- Table structure for privilege_module
-- ----------------------------
DROP TABLE IF EXISTS `privilege_module`;
CREATE TABLE `privilege_module` (
  `user_id` int(10) NOT NULL,
  `user_module_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of privilege_module
-- ----------------------------
INSERT INTO `privilege_module` VALUES ('9', '1');
INSERT INTO `privilege_module` VALUES ('15', '1');
INSERT INTO `privilege_module` VALUES ('6', '3');
INSERT INTO `privilege_module` VALUES ('18', '1');
INSERT INTO `privilege_module` VALUES ('18', '4');
INSERT INTO `privilege_module` VALUES ('18', '3');
INSERT INTO `privilege_module` VALUES ('5', '4');
INSERT INTO `privilege_module` VALUES ('2', '1');
INSERT INTO `privilege_module` VALUES ('2', '4');
INSERT INTO `privilege_module` VALUES ('2', '3');
INSERT INTO `privilege_module` VALUES ('2', '5');
INSERT INTO `privilege_module` VALUES ('16', '1');
INSERT INTO `privilege_module` VALUES ('16', '4');
INSERT INTO `privilege_module` VALUES ('16', '3');
INSERT INTO `privilege_module` VALUES ('16', '5');
INSERT INTO `privilege_module` VALUES ('3', '3');
INSERT INTO `privilege_module` VALUES ('38', '4');
INSERT INTO `privilege_module` VALUES ('38', '3');
INSERT INTO `privilege_module` VALUES ('39', '4');
INSERT INTO `privilege_module` VALUES ('39', '3');
INSERT INTO `privilege_module` VALUES ('35', '4');
INSERT INTO `privilege_module` VALUES ('35', '3');
INSERT INTO `privilege_module` VALUES ('40', '3');
INSERT INTO `privilege_module` VALUES ('47', '3');
INSERT INTO `privilege_module` VALUES ('7', '3');
INSERT INTO `privilege_module` VALUES ('41', '3');
INSERT INTO `privilege_module` VALUES ('17', '3');
INSERT INTO `privilege_module` VALUES ('17', '6');
INSERT INTO `privilege_module` VALUES ('25', '3');
INSERT INTO `privilege_module` VALUES ('25', '5');
INSERT INTO `privilege_module` VALUES ('25', '6');
INSERT INTO `privilege_module` VALUES ('48', '6');
INSERT INTO `privilege_module` VALUES ('24', '4');
INSERT INTO `privilege_module` VALUES ('24', '3');
INSERT INTO `privilege_module` VALUES ('24', '5');
INSERT INTO `privilege_module` VALUES ('24', '6');
INSERT INTO `privilege_module` VALUES ('19', '4');
INSERT INTO `privilege_module` VALUES ('19', '3');
INSERT INTO `privilege_module` VALUES ('19', '5');
INSERT INTO `privilege_module` VALUES ('19', '6');
INSERT INTO `privilege_module` VALUES ('49', '6');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', 'Air Ticket', '1', '2015-07-05 10:52:46', null, null, 'Active');
INSERT INTO `product` VALUES ('2', 'VISA', '1', '2015-07-05 10:53:17', null, null, 'Active');
INSERT INTO `product` VALUES ('3', 'Hotel Booking', '1', '2015-07-05 10:53:27', null, null, 'Active');
INSERT INTO `product` VALUES ('4', 'Package', '1', '2015-07-05 10:53:42', null, null, 'Active');

-- ----------------------------
-- Table structure for reference
-- ----------------------------
DROP TABLE IF EXISTS `reference`;
CREATE TABLE `reference` (
  `reference_id` int(11) NOT NULL AUTO_INCREMENT,
  `reference_name` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reference
-- ----------------------------

-- ----------------------------
-- Table structure for reliever_history
-- ----------------------------
DROP TABLE IF EXISTS `reliever_history`;
CREATE TABLE `reliever_history` (
  `user_id` int(10) NOT NULL,
  `reliever_to` int(10) NOT NULL COMMENT 'the reliever person id',
  `reliever_start_datetime` datetime DEFAULT NULL,
  `reliever_end_datetime` datetime DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `status` enum('Active','Unset','Expired','Cancelled') NOT NULL DEFAULT 'Active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reliever_history
-- ----------------------------
INSERT INTO `reliever_history` VALUES ('1', '2', '2014-12-10 18:06:53', '2014-12-18 18:06:58', null, 'Active');
INSERT INTO `reliever_history` VALUES ('1', '2', '2014-12-11 00:00:00', '2014-12-13 00:00:00', '2014-12-09 00:00:00', 'Active');
INSERT INTO `reliever_history` VALUES ('1', '2', '2014-12-11 00:00:00', '2014-12-13 00:00:00', '2014-12-09 00:00:00', 'Active');
INSERT INTO `reliever_history` VALUES ('1', '3', '2014-12-12 18:25:33', '2014-12-14 18:25:33', '2014-12-09 00:00:00', 'Active');
INSERT INTO `reliever_history` VALUES ('1', '3', '2014-12-25 18:25:43', '2014-12-28 18:25:44', '2014-12-09 00:00:00', 'Active');
INSERT INTO `reliever_history` VALUES ('19', '6', '2014-12-11 12:06:46', '2014-12-13 12:06:46', '2014-12-11 00:00:00', 'Active');
INSERT INTO `reliever_history` VALUES ('19', '6', '2014-12-20 15:32:30', '2014-12-27 15:32:30', '2014-12-14 00:00:00', 'Active');
INSERT INTO `reliever_history` VALUES ('19', '3', '2014-12-19 15:32:50', '2014-12-28 15:32:50', '2014-12-14 00:00:00', 'Active');

-- ----------------------------
-- Table structure for religion
-- ----------------------------
DROP TABLE IF EXISTS `religion`;
CREATE TABLE `religion` (
  `religion_id` int(10) NOT NULL AUTO_INCREMENT,
  `religion_name` varchar(30) NOT NULL,
  `created_by` int(10) NOT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`religion_id`),
  UNIQUE KEY `u_rel_name` (`religion_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of religion
-- ----------------------------
INSERT INTO `religion` VALUES ('1', 'Muslim', '0', null, null, '2014-12-07 16:08:41', 'Active');
INSERT INTO `religion` VALUES ('2', 'Hindu', '0', null, null, null, 'Active');
INSERT INTO `religion` VALUES ('3', 'Buddhist', '0', null, null, null, 'Active');
INSERT INTO `religion` VALUES ('4', 'Chirstian', '0', null, null, null, 'Active');

-- ----------------------------
-- Table structure for service_charge
-- ----------------------------
DROP TABLE IF EXISTS `service_charge`;
CREATE TABLE `service_charge` (
  `service_charge_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_charge_name` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`service_charge_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of service_charge
-- ----------------------------

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `status_id` int(10) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(50) NOT NULL,
  `description` text,
  `group_status_id` int(10) DEFAULT NULL,
  `created_by` int(10) NOT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO `status` VALUES ('1', 'Conference Room Requistion', 'All status related with Conference Room Requisition will comes under this group.', null, '1', '2014-11-26 19:40:56', '1', '2014-11-26 19:41:09', 'Active');
INSERT INTO `status` VALUES ('2', 'Draft', null, '1', '1', '2014-11-16 11:24:30', '1', '2014-11-26 19:41:10', 'Active');
INSERT INTO `status` VALUES ('3', 'New Requisition', null, '1', '1', '2014-11-16 11:25:03', '1', '2014-11-26 19:41:10', 'Active');
INSERT INTO `status` VALUES ('4', 'System Canceled', 'Auto cancel when the date and time is over but not confirmed.', null, '1', '2014-11-26 19:41:00', '1', '2014-11-26 19:41:10', 'Active');
INSERT INTO `status` VALUES ('5', 'Approved', null, '1', '1', '2014-11-26 19:41:03', '1', '2014-11-26 19:41:10', 'Active');
INSERT INTO `status` VALUES ('6', 'Rejected', null, '1', '1', '2014-11-26 19:41:05', '1', '2014-11-26 19:41:11', 'Active');
INSERT INTO `status` VALUES ('7', 'Canceled by user', null, '1', '1', '2014-11-26 19:41:09', '1', '2014-11-26 19:41:11', 'Active');
INSERT INTO `status` VALUES ('8', 'Return Vehicle', null, '9', '1', '2014-11-26 19:41:11', '1', '2014-11-26 19:41:11', 'Active');
INSERT INTO `status` VALUES ('9', 'Poolcar', 'All Status related with Poolcar Requisition', null, '1', '2014-11-26 19:41:13', '1', '2014-11-26 19:41:11', 'Active');
INSERT INTO `status` VALUES ('10', 'Draft', 'pool car requisition', '9', '1', '2014-11-26 19:41:16', '1', '2015-01-29 11:57:25', 'Active');
INSERT INTO `status` VALUES ('11', 'Waiting for Line Manager Approval', 'this status for pool car', '9', '2', '2014-11-26 19:41:23', '1', '2014-11-26 19:41:12', 'Active');
INSERT INTO `status` VALUES ('12', 'Approved & Assigned Vehicle', 'Approved by Pool Car officer and assigned vehicle.', '9', '2', '2014-11-26 19:41:21', '1', '2014-12-20 12:37:36', 'Active');
INSERT INTO `status` VALUES ('13', 'Canceled  by Pool Car Officer ', 'If any requisition canceled by pool car officer', '9', '2', '2014-11-25 18:49:59', '1', '2014-12-11 11:59:15', 'Active');
INSERT INTO `status` VALUES ('14', 'Canceled by User', null, '9', '2', '2014-11-26 19:41:26', '1', '2014-11-26 19:41:13', 'Active');
INSERT INTO `status` VALUES ('15', 'Canceled by Line manager', null, '9', '2', '2014-11-26 19:41:30', '1', '2014-12-11 11:59:30', 'Active');
INSERT INTO `status` VALUES ('16', 'Pool Car Officer Processing', null, '9', '2', '2014-11-26 19:41:33', '1', '2014-11-26 19:41:13', 'Active');
INSERT INTO `status` VALUES ('17', 'Return on Time', null, '8', '1', '2014-11-26 19:41:36', '1', '2014-11-26 19:41:14', 'Active');
INSERT INTO `status` VALUES ('18', 'Return Late', null, '8', '1', '2014-11-26 19:41:39', '1', '2014-11-26 19:41:14', 'Active');
INSERT INTO `status` VALUES ('19', 'System Returned ', null, '8', '1', '2014-11-26 19:41:42', '1', '2014-11-26 19:41:15', 'Active');
INSERT INTO `status` VALUES ('20', 'Extended', 'If extended any requisition on request.', '9', '1', '2014-11-26 19:41:45', '1', '2014-11-26 19:41:16', 'Active');
INSERT INTO `status` VALUES ('21', 'Completed', null, '1', '1', null, null, '2014-12-03 17:43:49', 'Active');
INSERT INTO `status` VALUES ('22', 'Return Vehicle', null, null, '0', null, null, null, 'Active');
INSERT INTO `status` VALUES ('23', 'Draft', 'new requisition for Store requisition', null, '0', null, null, '2015-01-22 12:56:40', 'Active');
INSERT INTO `status` VALUES ('24', 'Store Officer Processing', 'Store Officer Processing for Store requisition', null, '0', null, null, '2015-01-13 11:27:21', 'Active');
INSERT INTO `status` VALUES ('25', 'Cancel By User', 'Cancel By User in Store requisition', null, '0', null, null, '2015-01-13 11:28:44', 'Active');
INSERT INTO `status` VALUES ('26', 'Approved', ' approved by Store Officer', null, '0', null, null, null, 'Active');
INSERT INTO `status` VALUES ('27', 'Cancel By  Store Officer', 'store requisition', null, '0', null, null, null, 'Active');
INSERT INTO `status` VALUES ('28', 'Draft', 'Travel Requisition', null, '0', null, null, '2015-02-04 12:08:29', 'Active');
INSERT INTO `status` VALUES ('29', 'Confirm By User', 'Travel Requisition', null, '0', null, null, '2015-02-04 12:08:30', 'Active');
INSERT INTO `status` VALUES ('30', 'Cancel By User', 'Travel Requisition', null, '0', null, null, '2015-02-04 12:08:32', 'Active');
INSERT INTO `status` VALUES ('31', 'Line Manager submit to CEO', 'Travel Requisition', null, '0', null, null, '2015-02-17 17:10:53', 'Active');
INSERT INTO `status` VALUES ('32', 'Cancel By Line Manager', 'Travel Requisition', null, '0', null, null, '2015-02-04 12:08:35', 'Active');
INSERT INTO `status` VALUES ('33', 'Confirm By CEO', 'Travel Requisition', null, '0', null, null, '2015-02-04 12:08:36', 'Active');
INSERT INTO `status` VALUES ('34', 'Cancel By CEO', 'Travel Requisition', null, '0', null, null, '2015-02-04 12:08:37', 'Active');
INSERT INTO `status` VALUES ('35', 'Confirm By Travel Officer', 'Travel Requisition', null, '0', null, null, '2015-02-04 12:08:39', 'Active');
INSERT INTO `status` VALUES ('36', 'Cancel By Travel Officer', 'Travel Requisition', null, '0', null, null, '2015-02-04 12:08:42', 'Active');
INSERT INTO `status` VALUES ('37', 'completed', 'Travel Requisition', null, '0', null, null, '2015-02-09 14:04:57', 'Active');
INSERT INTO `status` VALUES ('38', 'Line Manager Submit to Travel Officer', null, null, '0', null, null, null, 'Active');

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(255) DEFAULT NULL,
  `created` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supplier
-- ----------------------------

-- ----------------------------
-- Table structure for template
-- ----------------------------
DROP TABLE IF EXISTS `template`;
CREATE TABLE `template` (
  `template_name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of template
-- ----------------------------
INSERT INTO `template` VALUES ('user');
INSERT INTO `template` VALUES ('vehicle');

-- ----------------------------
-- Table structure for terms
-- ----------------------------
DROP TABLE IF EXISTS `terms`;
CREATE TABLE `terms` (
  `terms_id` int(10) NOT NULL AUTO_INCREMENT,
  `terms_name` varchar(50) NOT NULL COMMENT 'Net 30 days, Net 60 days etc',
  `number_of_days` int(2) NOT NULL DEFAULT '1',
  `created_by` int(10) NOT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`terms_id`),
  UNIQUE KEY `u_terms_name` (`terms_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of terms
-- ----------------------------
INSERT INTO `terms` VALUES ('1', '', '1', '0', null, null, null, 'Active');

-- ----------------------------
-- Table structure for ticketing_system
-- ----------------------------
DROP TABLE IF EXISTS `ticketing_system`;
CREATE TABLE `ticketing_system` (
  `ticketing_system_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticketing_system_name` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `update` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ticketing_system_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ticketing_system
-- ----------------------------

-- ----------------------------
-- Table structure for ticket_type
-- ----------------------------
DROP TABLE IF EXISTS `ticket_type`;
CREATE TABLE `ticket_type` (
  `ticket_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_type_name` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ticket_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ticket_type
-- ----------------------------

-- ----------------------------
-- Table structure for unit_of_measure
-- ----------------------------
DROP TABLE IF EXISTS `unit_of_measure`;
CREATE TABLE `unit_of_measure` (
  `unit_of_measure_id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_of_measure_name` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`unit_of_measure_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of unit_of_measure
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `home_telephone` varchar(20) DEFAULT NULL,
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(50) DEFAULT 'e10adc3949ba59abbe56e057f20f883e' COMMENT 'encoded in md5 format',
  `secret_question_1` varchar(100) DEFAULT NULL,
  `secret_question_2` varchar(100) DEFAULT NULL,
  `secret_question_ans_1` varchar(100) DEFAULT NULL,
  `secret_question_ans_2` varchar(100) DEFAULT NULL,
  `identification_type_id` int(10) DEFAULT NULL,
  `identification_number` varchar(30) DEFAULT NULL,
  `identification_expire_date` date DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `religion_id` int(10) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `father_occupation_id` int(10) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `mother_occupation_id` int(10) DEFAULT NULL,
  `bank_account_number` varchar(30) DEFAULT NULL,
  `bank_id` int(10) DEFAULT NULL,
  `bank_branch` varchar(100) DEFAULT NULL,
  `last_login_date_time` timestamp NULL DEFAULT NULL,
  `default_module_id` int(10) DEFAULT '3',
  `created_by` int(10) NOT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `user_image` varchar(100) DEFAULT 'images/default/avatar.jpg',
  `address` varchar(100) DEFAULT NULL,
  `is_reliever` tinyint(1) DEFAULT '0',
  `reliever_to` int(10) DEFAULT NULL,
  `reliever_start_datetime` timestamp NULL DEFAULT NULL,
  `reliever_end_datetime` timestamp NULL DEFAULT NULL,
  `line_manager_id` int(10) DEFAULT NULL,
  `designation_id` int(10) DEFAULT NULL,
  `department_id` int(10) DEFAULT NULL,
  `location_id` int(4) DEFAULT NULL,
  `default_vehicle_id` int(11) DEFAULT NULL COMMENT 'If this employee or user is a driver',
  `default_url` varchar(500) DEFAULT NULL,
  `default_language_id` int(10) DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `emergency_contact_person_name` varchar(100) DEFAULT NULL,
  `emergency_contact_relation` varchar(30) DEFAULT NULL,
  `emergency_contact_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `u_username` (`username`) USING BTREE,
  UNIQUE KEY `u_email` (`email`) USING BTREE,
  KEY `fk_religion` (`religion_id`),
  KEY `fk_identification_id` (`identification_type_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`religion_id`) REFERENCES `religion` (`religion_id`) ON DELETE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'Apsis', 'Islam Rana', 'saiful.islam@apsissolutions.com', '01755557265', null, 'apsis2014', 'e10adc3949ba59abbe56e057f20f883e', 'What is your first School Name?', 'Which city you born?', 'Uttar Digholy', 'Munshiganj', '1', '998', null, '1983-03-08', 'Male', '1', 'Serajul Islam', null, 'Fatema Islam', null, 'vbn', '2', 'bonani branch', '0000-00-00 00:00:00', '1', '0', '2014-12-09 06:26:45', '1', '2015-04-01 13:10:09', 'Active', 'images/default/avatar.jpg', null, '1', '3', '2014-12-25 18:25:43', '2014-12-28 18:25:44', '17', null, null, '2', null, '', null, null, null, null, null);
INSERT INTO `user` VALUES ('2', 'Nirjhar', 'Mandal', 'nijhu.tulip@gmail.com', '123456789', null, 'nirjhar', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, null, null, '2014-12-09', 'Male', '1', null, null, null, null, null, null, null, null, '4', '1', '0000-00-00 00:00:00', '1', '2014-12-29 12:18:13', 'Active', 'images/default/avatar.jpg', null, '0', null, null, null, '3', '1', '1', '1', null, 'http://localhost/lafarge_poolcar/', null, null, null, null, null);
INSERT INTO `user` VALUES ('3', 'Zaman', 'Ahmed', 'zzman@gmail.com', '23', null, 'zaman', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, null, null, '1992-11-04', 'Male', '1', null, null, null, null, null, null, null, null, '3', '0', null, '1', '2014-12-21 18:03:41', 'Active', 'images/default/avatar.jpg', null, '0', null, null, null, '15', '9', '3', '1', '1', 'http://localhost/lafarge_poolcar/conference?m_id=95', null, null, null, null, null);
INSERT INTO `user` VALUES ('5', 'Salam', 'Ahmed', 'sa@sss.com', '6789', null, 'salam', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, null, null, '2014-12-26', 'Male', '1', null, null, null, null, null, null, null, null, '3', '1', '0000-00-00 00:00:00', '18', '2014-12-21 18:03:44', 'Active', 'images/default/avatar.jpg', null, '0', null, null, null, '7', '9', '1', '1', '2', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('6', 'Ataur', 'Rahman', 'md.atawurrahman@yahoo.com', '0166647884', null, 'atik', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, '0', '', null, '0000-00-00', 'Male', '1', '', null, '', null, null, null, null, null, '3', '1', '2014-09-27 12:03:25', '1', '2014-12-21 18:03:47', 'Active', 'images/default/avatar.jpg', null, '0', null, null, null, '17', '8', '3', '1', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('7', 'Ariful', 'Islam', 'arif@gmail.com', '015487545588', '', 'arif', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, null, null, '2014-12-10', 'Male', '1', null, null, null, null, null, null, null, null, '3', '1', '2014-09-27 19:22:08', '1', '2015-01-10 11:14:07', 'Active', 'images/default/avatar.jpg', null, '0', null, null, null, '6', '8', '3', '1', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('8', 'Ahsan', 'Habib', 'habib@gmail.com', '01845215742', null, 'habib', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, '3', '1', '2014-09-28 11:54:01', null, '2014-12-21 18:03:51', 'Active', 'images/default/avatar.jpg', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('16', 'Atawur', 'Rahman', 'br', '01911778866', null, 'arahman', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, null, null, '0000-00-00', 'Male', '1', null, null, null, null, null, null, null, null, '3', '1', '2014-11-18 14:46:07', '1', '2014-12-21 18:03:54', 'Active', 'images/default/avatar.jpg', null, '0', null, null, null, '17', '1', '2', '3', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('17', 'atik babu', 'babu', 'rahmanatawur@gmail.com', '0111', '', 'babu', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, null, null, '0000-00-00', 'Male', '1', null, null, null, null, null, null, null, null, '3', '1', '2014-12-10 11:47:25', '1', '2015-01-22 11:58:41', 'Active', 'images/default/avatar.jpg', null, '0', null, null, null, '6', '8', '3', '1', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('18', 'Riad', 'Hossain', 'riadcsepstu@gmail.com', '01911462527', null, 'riad', 'ae3c228efc9d264709f7490dbd8b7ec7', null, null, null, null, null, null, null, '2014-12-10', 'Male', '1', null, null, null, null, null, null, null, null, '3', '1', '2014-12-10 13:24:32', null, '2015-03-23 18:08:24', 'Active', 'images/default/avatar.jpg', null, '0', null, null, null, '6', '8', '3', '1', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('25', 'pool', 'Car', 'az_rail02@yahoo.com', '017105749360', '445678', 'pool', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, null, null, '2013-02-22', 'Male', '1', null, null, null, null, null, null, null, null, '3', '1', '2014-12-11 14:36:29', '1', '2015-02-16 12:36:41', 'Active', 'images/default/avatar.jpg', null, '0', null, null, null, '3', '2', '4', '1', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('38', 'rk_user02', 'rk_user02', 'rk_user02@gmail.com', '235765443', '567644', 'rk_user02', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, null, null, '1996-06-11', 'Male', null, null, null, null, null, null, null, null, null, '3', '1', '2014-12-29 12:59:00', null, '2014-12-29 12:56:12', 'Active', 'images/default/avatar.jpg', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('40', 'Jekono', 'User', 'jakono@user.com', '85211', '78645', 'jekono', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, null, null, '2015-01-08', 'Male', null, null, null, null, null, null, null, null, null, '3', '1', '2015-01-08 16:17:00', null, null, 'Active', 'images/default/avatar.jpg', null, '0', null, null, null, '19', '3', '6', '1', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('47', 'atawur', 'rahman', 'md.atawurrahman1@yahoo.com', '01911329350', '', 'rahman', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, null, null, '0000-00-00', 'Male', null, null, null, null, null, null, null, null, null, '3', '1', '2015-01-10 10:59:54', null, null, 'Active', 'images/default/avatar.jpg', null, '0', null, null, null, '7', '1', '1', '1', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for user_level
-- ----------------------------
DROP TABLE IF EXISTS `user_level`;
CREATE TABLE `user_level` (
  `user_level_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_level_name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `created_by` int(10) NOT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `privilege_edit` tinyint(1) NOT NULL DEFAULT '0',
  `privilege_delete` tinyint(1) NOT NULL DEFAULT '0',
  `privilege_add` tinyint(1) NOT NULL DEFAULT '0',
  `privilege_view_all` tinyint(1) NOT NULL DEFAULT '0',
  `all_privilege` tinyint(1) NOT NULL,
  PRIMARY KEY (`user_level_id`),
  UNIQUE KEY `u_level_name` (`user_level_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_level
-- ----------------------------
INSERT INTO `user_level` VALUES ('1', 'Admin', 'Admin previlege for all module.', '1', '2014-08-31 12:06:38', '1', '2014-11-16 15:25:33', 'Active', '1', '1', '1', '1', '1');
INSERT INTO `user_level` VALUES ('2', 'SKU Manager', 'The person who responsible for Store Keeping Unit Will comes under this Level. This Level Specially use for Store Requisition Module.', '1', '2014-10-12 16:24:45', '1', '2015-01-14 11:55:56', 'Active', '1', '1', '1', '1', '1');
INSERT INTO `user_level` VALUES ('3', 'Conference Room Manager', 'The person who responsible to manage the conference room.', '1', '2014-10-12 16:24:48', '1', '2014-11-18 15:37:32', 'Active', '1', '1', '1', '1', '1');
INSERT INTO `user_level` VALUES ('4', 'Pool Car Officer', 'Pool Car Officer for pool car module.a', '1', '2014-10-12 16:24:50', '1', '2014-12-04 14:34:00', 'Active', '1', '1', '1', '1', '1');
INSERT INTO `user_level` VALUES ('5', 'Requisition User', 'All Pool Car requisition will made by this level user', '1', '2014-10-12 16:24:52', '1', '2014-12-15 10:48:03', 'Active', '1', '1', '0', '0', '0');
INSERT INTO `user_level` VALUES ('6', 'Line Manager ', 'Line manager for Poolcar Requisition', '0', null, '1', '2015-01-25 17:13:24', 'Active', '1', '1', '1', '1', '1');
INSERT INTO `user_level` VALUES ('7', 'RK USER LEVEL', 'RK USER LEVELRK USER LEVELRK USER LEVEL', '18', '2014-12-10 16:14:20', '1', '2014-12-11 11:41:25', 'Active', '0', '0', '1', '1', '1');
INSERT INTO `user_level` VALUES ('8', 'RK_User_MEVEL-01', 'efefefefttttttttttt', '1', '2015-01-10 11:40:14', '1', '2015-01-10 11:53:39', 'Active', '1', '1', '1', '0', '1');
INSERT INTO `user_level` VALUES ('9', 'CEO', '', '0', null, null, null, 'Active', '0', '0', '0', '0', '0');
INSERT INTO `user_level` VALUES ('10', 'Travel Officer', '', '0', null, null, null, 'Active', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for user_type
-- ----------------------------
DROP TABLE IF EXISTS `user_type`;
CREATE TABLE `user_type` (
  `user_type_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_type_name` varchar(250) NOT NULL,
  `description` text,
  `created_by` int(10) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(10) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  PRIMARY KEY (`user_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_type
-- ----------------------------
INSERT INTO `user_type` VALUES ('1', 'Admin', null, '1', '2016-04-19 13:14:57', null, null, 'Active');

-- ----------------------------
-- Table structure for visa_type
-- ----------------------------
DROP TABLE IF EXISTS `visa_type`;
CREATE TABLE `visa_type` (
  `visa_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `visa_type_name` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`visa_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of visa_type
-- ----------------------------
DROP TRIGGER IF EXISTS `master_admin_user_update`;
DELIMITER ;;
CREATE TRIGGER `master_admin_user_update` AFTER UPDATE ON `user` FOR EACH ROW BEGIN
IF NEW.user_id = 1  AND NEW.username <> OLD.username THEN
    UPDATE `user` SET username = OLD.username WHERE `user`.user_id = NEW.user_id;
END IF;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `master_admin_user_delete`;
DELIMITER ;;
CREATE TRIGGER `master_admin_user_delete` AFTER DELETE ON `user` FOR EACH ROW BEGIN
IF OLD.user_id = 1 THEN
   INSERT INTO `user` (first_name,last_name,email,contact_number,username,password,line_manager_id,user_image)
VALUES('Saiful',	'Islam Rana',	'saiful.islam@apsissolutions.com',	'01755557265',	'apsis2014',	'e10adc3949ba59abbe56e057f20f883e',1,'images/user/1_Apsis.jpg');
END IF;
END
;;
DELIMITER ;

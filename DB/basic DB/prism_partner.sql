/*
Navicat MySQL Data Transfer

Source Server         : লোকাল সার্ভার
Source Server Version : 50625
Source Host           : 127.0.0.1:3306
Source Database       : prism_partner

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2017-04-09 13:11:02
*/

SET FOREIGN_KEY_CHECKS=0;

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
INSERT INTO `master_entry` VALUES ('module', 'description', 'tex', '', '', '', '0', '0', '0', '2', 'DESCRIPTION', 'Type description', '', '0', '2014-12-07 15:18:17', null, '2016-03-12 16:20:44', 'Active', null, null, 'module', '0');
INSERT INTO `master_entry` VALUES ('module', 'home_url', 'var', '', '', '', '1', '0', '0', '3', 'Home Url', 'Home Url', '', '0', '2014-12-07 15:18:17', null, '2016-03-12 16:20:46', 'Active', null, null, 'module', '0');
INSERT INTO `master_entry` VALUES ('module', 'module_icon', 'var', 'required', '', '', '0', '0', '0', '1', 'Module Icon', 'Module Icon', '', '0', '2014-12-07 15:18:17', null, '2016-03-12 16:20:40', 'Active', null, null, 'module', '0');
INSERT INTO `master_entry` VALUES ('module', 'module_name', 'var', 'required', '', '', '0', '0', '0', '0', 'Module Name', 'Type Module Name', 'UNI', '0', '2014-12-07 15:18:17', null, '2016-03-12 16:20:40', 'Active', null, null, 'module', '0');
INSERT INTO `master_entry` VALUES ('module', 'status', 'select', 'required', '', 'Active,Inactive', '0', '0', '0', '4', 'Status', 'Status', '', '0', '2014-12-07 15:18:17', null, '2016-03-12 16:20:47', 'Active', null, null, 'module', '0');
INSERT INTO `master_entry` VALUES ('user_type', 'user_type_name', 'text', 'required', '', '', '0', '0', '1', null, 'User Type Name', 'User Type Name', '', '0', '2016-04-26 11:52:39', null, null, 'Active', null, null, 'user_type', '0');
INSERT INTO `master_entry` VALUES ('user_type', 'description', 'textarea', '', '', '', '0', '0', '0', null, 'Description', 'Description', '', '0', '2016-04-26 11:52:39', null, null, 'Active', null, null, 'user_type', '0');
INSERT INTO `master_entry` VALUES ('user_type', 'status', 'select', '', '', 'Active,Inactive', '0', '0', '0', null, 'Status', 'Status', '', '0', '2016-04-26 11:52:39', null, null, 'Active', null, null, 'user_type', '0');
INSERT INTO `master_entry` VALUES ('user_level', 'user_level_name', 'text', 'required', '', '', '0', '0', '0', null, 'USER LEVEL NAME', 'Type user level name', 'UNI', '0', '2016-11-12 13:15:45', null, null, 'Active', null, null, 'user_level', '0');
INSERT INTO `master_entry` VALUES ('user_level', 'description', 'tex', '', '', '', '0', '0', '0', null, 'DESCRIPTION', 'Type description', '', '0', '2016-11-12 13:15:45', null, null, 'Active', null, null, 'user_level', '0');
INSERT INTO `master_entry` VALUES ('user_level', 'status', 'select', 'required', '', 'Active', '0', '0', '0', null, 'STATUS', 'Type status', '', '0', '2016-11-12 13:15:45', null, null, 'Active', null, null, 'user_level', '0');
INSERT INTO `master_entry` VALUES ('user_level', 'privilege_edit', 'checkbox', '', '', '', '0', '0', '0', null, 'PRIVILEGE EDIT', 'Type privilege edit', '', '0', '2016-11-12 13:15:45', null, null, 'Active', null, null, 'user_level', '0');
INSERT INTO `master_entry` VALUES ('user_level', 'privilege_delete', 'checkbox', '', '', '', '0', '0', '0', null, 'PRIVILEGE DELETE', 'Type privilege delete', '', '0', '2016-11-12 13:15:45', null, null, 'Active', null, null, 'user_level', '0');
INSERT INTO `master_entry` VALUES ('user_level', 'privilege_add', 'checkbox', '', '', '', '0', '0', '0', null, 'PRIVILEGE ADD', 'Type privilege add', '', '0', '2016-11-12 13:15:45', null, null, 'Active', null, null, 'user_level', '0');
INSERT INTO `master_entry` VALUES ('user_level', 'privilege_view_all', 'checkbox', '', '', '', '0', '0', '0', null, 'PRIVILEGE VIEW ALL', 'Type privilege view all', '', '0', '2016-11-12 13:15:45', null, null, 'Active', null, null, 'user_level', '0');
INSERT INTO `master_entry` VALUES ('user_level', 'all_privilege', 'checkbox', '', '', '', '0', '0', '0', null, 'ALL PRIVILEGE', 'Type all privilege', '', '0', '2016-11-12 13:15:45', null, null, 'Active', null, null, 'user_level', '0');
INSERT INTO `master_entry` VALUES ('user_level', 'privilege_nation_access', 'checkbox', '', '', '', '0', '0', '0', null, 'PRIVILEGE NATION ACCESS', 'Privilege Nation Access', '', '0', '2016-11-12 13:15:45', null, null, 'Active', null, null, 'user_level', '0');
INSERT INTO `master_entry` VALUES ('master_entry_table', 'master_entry_table_name', 'select', 'required', 'select table_name,table_name from information_schema.tables WHERE TABLE_SCHEMA=\"prism_partner\"', '', '0', '0', '0', null, 'MASTER ENTRY TABLE NAME', 'Type master entry table name', 'MUL', '0', '2017-04-09 11:57:45', null, null, 'Active', null, null, 'master_entry_table', '1');
INSERT INTO `master_entry` VALUES ('master_entry_table', 'table_sql', 'tex', 'required', '', '', '1', '0', '0', null, 'TABLE SQL', 'Type table sql', '', '0', '2017-04-09 11:57:45', null, null, 'Active', null, null, 'master_entry_table', '0');
INSERT INTO `master_entry` VALUES ('master_entry_table', 'form_column', 'text', '', '', '', '0', '0', '0', null, 'Form Column', 'Form Column', '', '0', '2017-04-09 11:57:45', null, null, 'Active', null, null, 'master_entry_table', '0');
INSERT INTO `master_entry` VALUES ('master_entry_table', 'enable_details_view', 'checkbox', '', '', '', '1', '0', '0', null, 'ENABLE DETAILS VIEW', 'Type enable details view', '', '0', '2017-04-09 11:57:45', null, null, 'Active', null, null, 'master_entry_table', '0');
INSERT INTO `master_entry` VALUES ('master_entry_table', 'template_details_view', 'select', '', 'SELECT template_name,template_name FROM template', '', '1', '0', '0', null, 'SELECT TEMPLATE', 'Select Template', '', '0', '2017-04-09 11:57:45', null, null, 'Active', null, null, 'master_entry_table', '0');
INSERT INTO `master_entry` VALUES ('master_entry_table', 'details_view_sql', 'tex', '', '', '', '1', '0', '0', null, 'DETAILS VIEW SQL', 'Type details view sql', '', '0', '2017-04-09 11:57:45', null, null, 'Active', null, null, 'master_entry_table', '0');
INSERT INTO `master_entry` VALUES ('master_entry_table', 'status', 'select', '', '', 'Active,Inactive', '1', '0', '0', null, 'Status', 'Status', '', '0', '2017-04-09 11:57:45', null, null, 'Active', null, null, 'master_entry_table', '1');
INSERT INTO `master_entry` VALUES ('master_entry_table', 'master_entry_title', 'var', 'required', '', '', '0', '0', '0', null, 'Master Entry Title', 'Use lowercase and no space', 'UNI', '0', '2017-04-09 11:57:45', null, null, 'Active', null, null, 'master_entry_table', '0');
INSERT INTO `master_entry` VALUES ('master_entry_table', 'disable_grid_view', 'checkbox', '', '', '', '0', '0', '0', null, 'Disable Grid View', 'Disable Grid View', '', '0', '2017-04-09 11:57:45', null, null, 'Active', null, null, 'master_entry_table', '0');
INSERT INTO `master_entry` VALUES ('master_entry_table', 'disable_form_view', 'checkbox', '', '', '', '0', '0', '0', null, 'Disable Form View', 'Disable Form View', '', '0', '2017-04-09 11:57:45', null, null, 'Active', null, null, 'master_entry_table', '0');
INSERT INTO `master_entry` VALUES ('master_entry_table', 'include_search_panel', 'checkbox', '', '', '', '0', '0', '0', null, 'Include Search Panel', 'Include Search Panel', '', '0', '2017-04-09 11:57:45', null, null, 'Active', null, null, 'master_entry_table', '0');
INSERT INTO `master_entry` VALUES ('user', 'first_name', 'var', '', '', '', '0', '0', '0', null, 'First Name', 'First Name', '', '0', '2017-04-09 12:37:44', null, null, 'Active', null, null, 'user', '0');
INSERT INTO `master_entry` VALUES ('user', 'last_name', 'var', '', '', '', '0', '0', '0', null, 'Last Name', 'Last Name', '', '0', '2017-04-09 12:37:44', null, null, 'Active', null, null, 'user', '0');
INSERT INTO `master_entry` VALUES ('user', 'email', 'var', '', '', '', '0', '0', '0', null, 'Email', 'Email', 'UNI', '0', '2017-04-09 12:37:45', null, null, 'Active', null, null, 'user', '0');
INSERT INTO `master_entry` VALUES ('user', 'contact_number', 'var', '', '', '', '0', '0', '0', null, 'Contact Number', 'Contact Number', '', '0', '2017-04-09 12:37:45', null, null, 'Active', null, null, 'user', '0');
INSERT INTO `master_entry` VALUES ('user', 'date_of_birth', 'dat', '', '', '', '0', '0', '0', null, 'Date Of Birth', 'Date Of Birth', '', '0', '2017-04-09 12:37:45', null, null, 'Active', null, null, 'user', '0');
INSERT INTO `master_entry` VALUES ('user', 'father_name', 'var', '', '', '', '0', '0', '0', null, 'Father Name', 'Father Name', '', '0', '2017-04-09 12:37:45', null, null, 'Active', null, null, 'user', '0');
INSERT INTO `master_entry` VALUES ('user', 'mother_name', 'var', '', '', '', '0', '0', '0', null, 'Mother Name', 'Mother Name', '', '0', '2017-04-09 12:37:45', null, null, 'Active', null, null, 'user', '0');
INSERT INTO `master_entry` VALUES ('user', 'address', 'var', '', '', '', '0', '0', '0', null, 'Address', 'Address', '', '0', '2017-04-09 12:37:45', null, null, 'Active', null, null, 'user', '0');
INSERT INTO `master_entry` VALUES ('user', 'emergency_contact_person_name', 'var', '', '', '', '0', '0', '0', null, 'Emergency Contact Person Name', 'Emergency Contact Person Name', '', '0', '2017-04-09 12:37:45', null, null, 'Active', null, null, 'user', '0');
INSERT INTO `master_entry` VALUES ('user', 'emergency_contact_relation', 'var', '', '', '', '0', '0', '0', null, 'Emergency Contact Relation', 'Emergency Contact Relation', '', '0', '2017-04-09 12:37:45', null, null, 'Active', null, null, 'user', '0');
INSERT INTO `master_entry` VALUES ('user', 'emergency_contact_number', 'var', '', '', '', '0', '0', '0', null, 'Emergency Contact Number', 'Emergency Contact Number', '', '0', '2017-04-09 12:37:45', null, null, 'Active', null, null, 'user', '0');

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
INSERT INTO `master_entry_table` VALUES ('10', 'master_entry_table', 'SELECT master_entry_table_id,form_column,master_entry_table_name,table_sql, template_details_view, enable_details_view,master_entry_title,export_pdf,export_csv,export_excel,enable_printing,disable_grid_view,disable_form_view,include_search_panel FROM master_entry_table', '1', '0', '', '', '0', null, '1', '2016-04-27 16:17:01', 'Active', 'master_entry_table', null, '0', '1', '0', '0', null, '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `master_entry_table` VALUES ('17', 'user_level', 'SELECT user_level.*\nFROM user_level WHERE user_level.user_level_id NOT IN (1,12)', '1', '0', '', '', '0', null, '1', '2016-11-29 11:30:47', 'Active', 'user_level', null, '0', '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `master_entry_table` VALUES ('18', 'user_type', 'SELECT user_type.* FROM user_type', '1', '0', '', '', '0', null, '1', '2016-04-27 15:37:40', 'Active', 'user_type', null, '0', '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `master_entry_table` VALUES ('48', 'module', 'SELECT module.module_id, \n	module.module_name, \n	module.module_icon, \n	module.description, \n	module.home_url, \n	module.`status`\nFROM module', '1', '0', 'user', '', '1', '2014-12-07 15:13:30', null, '2016-04-27 15:37:40', 'Active', 'module', null, '0', '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `master_entry_table` VALUES ('105', 'user', 'SELECT\r\n`user`.user_id,\r\n`user`.first_name,\r\n`user`.last_name,\r\n`user`.email,\r\n`user`.contact_number,\r\n`user`.home_telephone,\r\n`user`.username,\r\n`user`.`password`,\r\n`user`.secret_question_1,\r\n`user`.secret_question_2,\r\n`user`.secret_question_ans_1,\r\n`user`.secret_question_ans_2,\r\n`user`.date_of_birth,\r\n`user`.gender,\r\n`user`.religion_id,\r\n`user`.father_name,\r\n`user`.mother_name,\r\n`user`.last_login_date_time,\r\n`user`.default_module_id,\r\n`user`.created_by,\r\n`user`.created,\r\n`user`.updated_by,\r\n`user`.updated,\r\n`user`.`status`,\r\n`user`.user_image,\r\n`user`.address,\r\n`user`.default_url,\r\n`user`.default_language_id,\r\n`user`.emergency_contact_person_name,\r\n`user`.emergency_contact_relation,\r\n`user`.emergency_contact_number,\r\nmodule.module_name\r\nFROM\r\n`user`\r\nLEFT JOIN module ON `user`.default_module_id = module.module_id\r\nWHERE user_id <> 1', '1', '0', 'user', 'SELECT\r\n`user`.user_id,\r\n`user`.first_name,\r\n`user`.last_name,\r\n`user`.email,\r\n`user`.contact_number,\r\n`user`.home_telephone,\r\n`user`.username,\r\n`user`.date_of_birth,\r\n`user`.gender,\r\n`user`.religion_id,\r\n`user`.father_name,\r\n`user`.mother_name,\r\n`user`.last_login_date_time,\r\n`user`.default_module_id,\r\n`user`.created_by,\r\n`user`.created,\r\n`user`.updated_by,\r\n`user`.updated,\r\n`user`.`status`,\r\n`user`.user_image,\r\n`user`.address,\r\n`user`.default_language_id,\r\n`user`.emergency_contact_person_name,\r\n`user`.emergency_contact_relation,\r\n`user`.emergency_contact_number,\r\nmodule.module_name\r\nFROM\r\n`user`\r\nLEFT JOIN module ON `user`.default_module_id = module.module_id\r\nWHERE user_id <> 1', '1', '2017-04-09 12:14:13', '1', '2017-04-09 13:03:43', 'Active', 'user', null, '0', '0', '0', '0', null, '0', '0', '0', '0', '0', '0', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=305 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', 'Master Entry', null, 'Main', '0', '2', 'glyphicon glyphicon-link', 'master/show_master/master_entry_table', '8', '0', '0000-00-00 00:00:00', null, '2017-02-01 18:21:35', 'Active');
INSERT INTO `menu` VALUES ('3', 'Create Master Entry', 'This menu is create for master entry only', 'Sub', '1', '2', 'glyphicon glyphicon-plus', 'master', '3', '0', '0000-00-00 00:00:00', null, '2017-04-06 13:43:49', 'Active');
INSERT INTO `menu` VALUES ('4', 'Menu Manager', null, 'Main', '0', '2', 'fa fa-bars', '', '21', '0', '0000-00-00 00:00:00', null, '2017-02-01 18:21:35', 'Active');
INSERT INTO `menu` VALUES ('5', 'Create Menu', null, 'Sub', '4', '1', 'fa fa-th', 'master/menu_assign', '0', '0', '0000-00-00 00:00:00', null, '2014-12-07 15:55:03', 'Active');
INSERT INTO `menu` VALUES ('7', 'Add User', null, 'Sub', '191', '1', 'fa fa-plus', 'master/show_master/user', '0', '0', '0000-00-00 00:00:00', null, '2016-04-25 18:24:38', 'Active');
INSERT INTO `menu` VALUES ('8', 'User Level', 'Create Level and Set privilege access permission for any particular Level.', 'Sub', '105', '2', 'glyphicon glyphicon-tags', 'master/show_master/user_level', '1', '0', '0000-00-00 00:00:00', null, '2014-11-16 16:09:18', 'Active');
INSERT INTO `menu` VALUES ('10', 'Menu Privilege for Level', null, 'Sub', '105', '2', 'glyphicon glyphicon-star-empty', 'master/get_menu_for_level', '2', '0', '0000-00-00 00:00:00', null, '2014-11-16 16:09:14', 'Active');
INSERT INTO `menu` VALUES ('99', 'Menu List', null, 'Sub', '4', '2', 'fa fa-align-left', 'master/menu_list', '1', '0', null, null, '2014-12-07 15:55:03', 'Active');
INSERT INTO `menu` VALUES ('105', 'User Manager', null, 'Main', '0', '2', 'glyphicon glyphicon-user', '#', '22', '0', null, null, '2017-02-01 18:21:35', 'Active');
INSERT INTO `menu` VALUES ('108', 'User Level', null, 'Sub', '112', '1', 'glyphicon glyphicon-tags', 'master/show_master/user_level', '0', '0', null, null, '2014-12-15 14:22:30', 'Active');
INSERT INTO `menu` VALUES ('109', 'Menu Permission', null, 'Sub', '112', '1', 'fa fa-list-ul', 'master/get_menu_for_level', '1', '0', null, null, '2014-12-07 15:50:45', 'Active');
INSERT INTO `menu` VALUES ('134', 'System Setting', null, 'Main', '0', '2', 'glyphicon glyphicon-cog', '', '23', '0', null, null, '2017-02-01 18:21:35', 'Active');
INSERT INTO `menu` VALUES ('135', 'Module', null, 'Sub', '134', '2', 'fa fa-puzzle-piece', 'master/show_master/module', '0', '0', null, null, '2014-12-07 15:17:20', 'Active');
INSERT INTO `menu` VALUES ('136', 'Email Subject', null, 'Sub', '134', '2', 'fa fa-envelope', 'master/show_master/email_subject', '1', '0', null, null, '2016-12-27 18:05:07', 'Active');
INSERT INTO `menu` VALUES ('137', 'Country', null, 'Sub', '118', '1', 'fa fa-map-marker', 'master/show_master/country', '4', '0', null, null, '2016-05-10 16:31:13', 'Active');
INSERT INTO `menu` VALUES ('147', 'Create Master Table', null, 'Sub', '1', '1', 'fa fa-table', 'master/create_master_table', '1', '0', null, null, '2017-04-06 13:43:50', 'Active');
INSERT INTO `menu` VALUES ('165', 'User Type', null, 'Sub', '191', '1', 'fa fa-user', 'master/show_master/user_type', '2', '1', '2016-04-19 15:43:16', null, '2016-11-20 13:05:38', 'Active');
INSERT INTO `menu` VALUES ('191', 'User', null, 'Main', '0', '1', 'fa fa-users', '#', '15', '1', '2016-04-25 18:23:20', null, '2017-02-01 18:21:35', 'Active');
INSERT INTO `menu` VALUES ('304', 'Master entry table', null, 'Sub', '1', '1', 'fa fa-list', 'master/show_master/master_entry_table', '0', '1', '2017-04-09 11:29:39', null, null, 'Active');

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
INSERT INTO `privilege_menu` VALUES ('5', '1', null);
INSERT INTO `privilege_menu` VALUES ('137', '1', null);
INSERT INTO `privilege_menu` VALUES ('4', '1', null);
INSERT INTO `privilege_menu` VALUES ('85', '1', null);
INSERT INTO `privilege_menu` VALUES ('118', '1', null);
INSERT INTO `privilege_menu` VALUES ('114', '1', null);
INSERT INTO `privilege_menu` VALUES ('79', '1', null);
INSERT INTO `privilege_menu` VALUES ('78', '1', null);
INSERT INTO `privilege_menu` VALUES ('84', '1', null);
INSERT INTO `privilege_menu` VALUES ('87', '1', null);
INSERT INTO `privilege_menu` VALUES ('86', '1', null);
INSERT INTO `privilege_menu` VALUES ('90', '1', null);
INSERT INTO `privilege_menu` VALUES ('91', '1', null);
INSERT INTO `privilege_menu` VALUES ('92', '1', null);
INSERT INTO `privilege_menu` VALUES ('138', '1', null);
INSERT INTO `privilege_menu` VALUES ('82', '1', null);
INSERT INTO `privilege_menu` VALUES ('89', '1', null);
INSERT INTO `privilege_menu` VALUES ('93', '1', null);
INSERT INTO `privilege_menu` VALUES ('95', '1', null);
INSERT INTO `privilege_menu` VALUES ('96', '1', null);
INSERT INTO `privilege_menu` VALUES ('98', '1', null);
INSERT INTO `privilege_menu` VALUES ('99', '1', null);
INSERT INTO `privilege_menu` VALUES ('105', '1', null);
INSERT INTO `privilege_menu` VALUES ('119', '1', null);
INSERT INTO `privilege_menu` VALUES ('7', '1', null);
INSERT INTO `privilege_menu` VALUES ('144', '1', null);
INSERT INTO `privilege_menu` VALUES ('1', '1', null);
INSERT INTO `privilege_menu` VALUES ('83', '1', null);
INSERT INTO `privilege_menu` VALUES ('108', '1', null);
INSERT INTO `privilege_menu` VALUES ('113', '1', null);
INSERT INTO `privilege_menu` VALUES ('109', '1', null);
INSERT INTO `privilege_menu` VALUES ('304', '1', null);
INSERT INTO `privilege_menu` VALUES ('110', '1', null);
INSERT INTO `privilege_menu` VALUES ('94', '1', null);
INSERT INTO `privilege_menu` VALUES ('111', '1', null);
INSERT INTO `privilege_menu` VALUES ('112', '1', null);
INSERT INTO `privilege_menu` VALUES ('80', '1', null);
INSERT INTO `privilege_menu` VALUES ('121', '1', null);
INSERT INTO `privilege_menu` VALUES ('122', '1', null);
INSERT INTO `privilege_menu` VALUES ('123', '1', null);
INSERT INTO `privilege_menu` VALUES ('125', '1', null);
INSERT INTO `privilege_menu` VALUES ('126', '1', null);
INSERT INTO `privilege_menu` VALUES ('81', '1', null);
INSERT INTO `privilege_menu` VALUES ('127', '1', null);
INSERT INTO `privilege_menu` VALUES ('128', '1', null);
INSERT INTO `privilege_menu` VALUES ('129', '1', null);
INSERT INTO `privilege_menu` VALUES ('130', '1', null);
INSERT INTO `privilege_menu` VALUES ('131', '1', null);
INSERT INTO `privilege_menu` VALUES ('140', '1', null);
INSERT INTO `privilege_menu` VALUES ('97', '1', null);
INSERT INTO `privilege_menu` VALUES ('143', '1', null);
INSERT INTO `privilege_menu` VALUES ('142', '1', null);
INSERT INTO `privilege_menu` VALUES ('145', '1', null);
INSERT INTO `privilege_menu` VALUES ('149', '1', null);
INSERT INTO `privilege_menu` VALUES ('154', '1', null);
INSERT INTO `privilege_menu` VALUES ('159', '1', null);
INSERT INTO `privilege_menu` VALUES ('158', '1', null);
INSERT INTO `privilege_menu` VALUES ('160', '1', null);
INSERT INTO `privilege_menu` VALUES ('161', '1', null);
INSERT INTO `privilege_menu` VALUES ('162', '1', null);
INSERT INTO `privilege_menu` VALUES ('164', '1', null);
INSERT INTO `privilege_menu` VALUES ('165', '1', null);
INSERT INTO `privilege_menu` VALUES ('329', '1', null);

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
  `identification_expire_date` date DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `religion_id` int(10) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `last_login_date_time` timestamp NULL DEFAULT NULL,
  `default_module_id` int(10) DEFAULT '3',
  `created_by` int(10) NOT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `user_image` varchar(100) DEFAULT 'images/default/avatar.jpg',
  `address` varchar(100) DEFAULT NULL,
  `default_url` varchar(500) DEFAULT NULL,
  `default_language_id` int(10) DEFAULT NULL,
  `emergency_contact_person_name` varchar(100) DEFAULT NULL,
  `emergency_contact_relation` varchar(30) DEFAULT NULL,
  `emergency_contact_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `u_username` (`username`) USING BTREE,
  UNIQUE KEY `u_email` (`email`) USING BTREE,
  KEY `fk_religion` (`religion_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`religion_id`) REFERENCES `religion` (`religion_id`) ON DELETE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'Apsis', 'Islam Rana', 'saiful.islam@apsissolutions.com', '01755557265', null, 'apsis2014', 'e10adc3949ba59abbe56e057f20f883e', 'What is your first School Name?', 'Which city you born?', 'Uttar Digholy', 'Munshiganj', null, '1983-03-08', 'Male', '1', 'Serajul Islam', 'Fatema Islam', '0000-00-00 00:00:00', '1', '0', '2014-12-09 06:26:45', '1', '2015-04-01 13:10:09', 'Active', 'images/default/avatar.jpg', null, '', null, null, null, null);
INSERT INTO `user` VALUES ('2', 'Nirjhar', 'Mandal', 'nijhu.tulip@gmail.com', '123456789', null, 'nirjhar', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, '2014-12-09', 'Male', '1', null, null, null, '4', '1', '0000-00-00 00:00:00', '1', '2014-12-29 12:18:13', 'Active', 'images/default/avatar.jpg', null, 'http://localhost/lafarge_poolcar/', null, null, null, null);
INSERT INTO `user` VALUES ('3', 'Zaman', 'Ahmed', 'zzman@gmail.com', '23', null, 'zaman', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, '1992-11-04', 'Male', '1', null, null, null, '3', '0', null, '1', '2014-12-21 18:03:41', 'Active', 'images/default/avatar.jpg', null, 'http://localhost/lafarge_poolcar/conference?m_id=95', null, null, null, null);
INSERT INTO `user` VALUES ('5', 'Salam', 'Ahmed', 'sa@sss.com', '6789', null, 'salam', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, '2014-12-26', 'Male', '1', null, null, null, '3', '1', '0000-00-00 00:00:00', '18', '2014-12-21 18:03:44', 'Active', 'images/default/avatar.jpg', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('6', 'Ataur', 'Rahman', 'md.atawurrahman@yahoo.com', '0166647884', null, 'atik', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, '0000-00-00', 'Male', '1', '', '', null, '3', '1', '2014-09-27 12:03:25', '1', '2014-12-21 18:03:47', 'Active', 'images/default/avatar.jpg', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('7', 'Ariful', 'Islam', 'arif@gmail.com', '015487545588', '', 'arif', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, '2014-12-10', 'Male', '1', null, null, null, '3', '1', '2014-09-27 19:22:08', '1', '2015-01-10 11:14:07', 'Active', 'images/default/avatar.jpg', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('8', 'Ahsan', 'Habib', 'habib@gmail.com', '01845215742', null, 'habib', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, null, null, '1', null, null, null, '3', '1', '2014-09-28 11:54:01', null, '2014-12-21 18:03:51', 'Active', 'images/default/avatar.jpg', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('16', 'Atawur', 'Rahman', 'br', '01911778866', null, 'arahman', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, '0000-00-00', 'Male', '1', null, null, null, '3', '1', '2014-11-18 14:46:07', '1', '2014-12-21 18:03:54', 'Active', 'images/default/avatar.jpg', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('17', 'atik babu', 'babu', 'rahmanatawur@gmail.com', '0111', '', 'babu', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, '0000-00-00', 'Male', '1', null, null, null, '3', '1', '2014-12-10 11:47:25', '1', '2015-01-22 11:58:41', 'Active', 'images/default/avatar.jpg', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('18', 'Riad', 'Hossain', 'riadcsepstu@gmail.com', '01911462527', null, 'riad', 'ae3c228efc9d264709f7490dbd8b7ec7', null, null, null, null, null, '2014-12-10', 'Male', '1', null, null, null, '3', '1', '2014-12-10 13:24:32', null, '2015-03-23 18:08:24', 'Active', 'images/default/avatar.jpg', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('25', 'pool', 'Car', 'az_rail02@yahoo.com', '017105749360', '445678', 'pool', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, '2013-02-22', 'Male', '1', null, null, null, '3', '1', '2014-12-11 14:36:29', '1', '2015-02-16 12:36:41', 'Active', 'images/default/avatar.jpg', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('38', 'rk_user02', 'rk_user02', 'rk_user02@gmail.com', '235765443', '567644', 'rk_user02', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, '1996-06-11', 'Male', null, null, null, null, '3', '1', '2014-12-29 12:59:00', null, '2014-12-29 12:56:12', 'Active', 'images/default/avatar.jpg', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('40', 'Jekono', 'User', 'jakono@user.com', '85211', '78645', 'jekono', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, '2015-01-08', 'Male', null, null, null, null, '3', '1', '2015-01-08 16:17:00', null, null, 'Active', 'images/default/avatar.jpg', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('47', 'atawur', 'rahman', 'md.atawurrahman1@yahoo.com', '01911329350', '', 'rahman', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, '0000-00-00', 'Male', null, null, null, null, '3', '1', '2015-01-10 10:59:54', null, null, 'Active', 'images/default/avatar.jpg', null, null, null, null, null, null);

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

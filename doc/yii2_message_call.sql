/*
Navicat MySQL Data Transfer

Source Server         : 47.100.101.44
Source Server Version : 50720
Source Host           : 47.100.101.44:3306
Source Database       : message_www

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-03-01 14:35:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for yii2_message_call
-- ----------------------------
DROP TABLE IF EXISTS `yii2_message_call`;
CREATE TABLE `yii2_message_call` (
  `message_cid` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `phonenumber` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '手机号码',
  `task_id` int(30) DEFAULT NULL COMMENT '批次号',
  `content` text CHARACTER SET utf8 NOT NULL COMMENT '回复内容',
  `return_time` int(10) DEFAULT NULL COMMENT '回执时间',
  `create_time` int(10) NOT NULL COMMENT '提交时间',
  `uid` int(8) DEFAULT '0' COMMENT '用户ID',
  PRIMARY KEY (`message_cid`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of yii2_message_call
-- ----------------------------
INSERT INTO `yii2_message_call` VALUES ('1', '17688855212', '1551512', 'T', '1519787345', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('2', '13289938131', '1551512', 'T', '1519787408', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('3', '18669819751', '1551512', 'T', '1519787669', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('4', '15609339408', '1551512', 't', '1519787732', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('5', '17687026865', '1551958', 't', '1519789936', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('6', '18506101270', '1551512', 'T', '1519790296', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('7', '13157382599', '1551512', 'T', '1519790417', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('8', '18639218998', '1551512', 'GT1002703084', '1519790566', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('9', '17696026748', '1551958', 'T', '1519791858', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('10', '17614889238', '1551958', '2401', '1519792037', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('11', '18678650603', '1551958', 't', '1519793749', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('12', '13075527281', '1551958', 'T', '1519794049', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('13', '13225906400', '1551512', 'T', '1519794829', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('14', '15656639285', '1551512', 'Y', '1519796838', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('15', '15656639285', '1551512', 'T', '1519796839', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('16', '15699186337', '1551512', 'T', '1519796958', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('17', '18566973070', '1552400', 't', '1519797650', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('18', '18602135193', '1552400', 'T', '1519797768', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('19', '13069787814', '1552400', 't', '1519797799', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('20', '18551396375', '1552400', 'T', '1519797888', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('21', '18505232212', '1552400', 'T', '1519798639', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('22', '17614404660', '1552400', 'T', '1519798819', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('23', '18680150474', '1552400', 'T', '1519798908', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('24', '15643781238', '1552400', 'T', '1519799088', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('25', '13053672781', '1552400', 'T', '1519799209', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('26', '15566641117', '1552400', 'T', '1519799689', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('27', '17621824515', '1552400', 'T', '1519799869', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('28', '17678981997', '1552400', 'T', '1519800319', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('29', '18602524095', '1552400', 't', '1519800409', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('30', '17612219947', '1552400', 'T', '1519800410', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('31', '17601235572', '1552400', 'T', '1519800680', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('32', '13273029099', '1552400', 'T', '1519801159', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('33', '13063696637', '1552400', 'T', '1519801459', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('34', '17685248437', '1552400', 'T', '1519801879', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('35', '15592873128', '1552400', 'T', '1519803260', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('36', '13273025482', '1552400', 'T', '1519803769', '1519812018', '0');
INSERT INTO `yii2_message_call` VALUES ('37', '17609328261', '1552400', 'T', '1519810881', '1519812018', '0');

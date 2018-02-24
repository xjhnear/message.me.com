/*
Navicat MySQL Data Transfer

Source Server         : 47.100.101.44
Source Server Version : 50720
Source Host           : 47.100.101.44:3306
Source Database       : message_www

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-02-24 09:57:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for yii2_auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `yii2_auth_item_child`;
CREATE TABLE `yii2_auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `yii2_auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `yii2_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `yii2_auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `yii2_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of yii2_auth_item_child
-- ----------------------------
INSERT INTO `yii2_auth_item_child` VALUES ('商户', 'account/index');
INSERT INTO `yii2_auth_item_child` VALUES ('administrator', 'channel/add');
INSERT INTO `yii2_auth_item_child` VALUES ('administrator', 'channel/edit');
INSERT INTO `yii2_auth_item_child` VALUES ('administrator', 'channel/index');
INSERT INTO `yii2_auth_item_child` VALUES ('审核员', 'check/edit');
INSERT INTO `yii2_auth_item_child` VALUES ('审核员', 'check/index');
INSERT INTO `yii2_auth_item_child` VALUES ('审核员', 'check/reject');
INSERT INTO `yii2_auth_item_child` VALUES ('administrator', 'checkman/add');
INSERT INTO `yii2_auth_item_child` VALUES ('administrator', 'checkman/edit');
INSERT INTO `yii2_auth_item_child` VALUES ('administrator', 'checkman/index');
INSERT INTO `yii2_auth_item_child` VALUES ('administrator', 'customer/add');
INSERT INTO `yii2_auth_item_child` VALUES ('administrator', 'customer/edit');
INSERT INTO `yii2_auth_item_child` VALUES ('administrator', 'customer/index');
INSERT INTO `yii2_auth_item_child` VALUES ('administrator', 'customer/recharge');
INSERT INTO `yii2_auth_item_child` VALUES ('administrator', 'home/index');
INSERT INTO `yii2_auth_item_child` VALUES ('商户', 'home/index');
INSERT INTO `yii2_auth_item_child` VALUES ('审核员', 'home/index');
INSERT INTO `yii2_auth_item_child` VALUES ('administrator', 'manager/add');
INSERT INTO `yii2_auth_item_child` VALUES ('administrator', 'manager/edit');
INSERT INTO `yii2_auth_item_child` VALUES ('administrator', 'manager/index');
INSERT INTO `yii2_auth_item_child` VALUES ('商户', 'message/add');
INSERT INTO `yii2_auth_item_child` VALUES ('商户', 'message/detail');
INSERT INTO `yii2_auth_item_child` VALUES ('商户', 'message/get-ajax');
INSERT INTO `yii2_auth_item_child` VALUES ('商户', 'message/index');
INSERT INTO `yii2_auth_item_child` VALUES ('administrator', 'message/update-redis');
INSERT INTO `yii2_auth_item_child` VALUES ('商户', 'report/index');
INSERT INTO `yii2_auth_item_child` VALUES ('administrator', 'user/updateNickname');
INSERT INTO `yii2_auth_item_child` VALUES ('商户', 'user/updateNickname');
INSERT INTO `yii2_auth_item_child` VALUES ('审核员', 'user/updateNickname');
INSERT INTO `yii2_auth_item_child` VALUES ('administrator', 'user/updatePassword');
INSERT INTO `yii2_auth_item_child` VALUES ('商户', 'user/updatePassword');
INSERT INTO `yii2_auth_item_child` VALUES ('审核员', 'user/updatePassword');

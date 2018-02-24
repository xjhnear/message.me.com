/*
Navicat MySQL Data Transfer

Source Server         : 47.100.101.44
Source Server Version : 50720
Source Host           : 47.100.101.44:3306
Source Database       : message_www

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-02-24 18:30:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for yii2_channel
-- ----------------------------
DROP TABLE IF EXISTS `yii2_channel`;
CREATE TABLE `yii2_channel` (
  `channel_id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT '' COMMENT '通道名称',
  `userid` int(8) DEFAULT NULL COMMENT '用户id',
  `account` varchar(200) DEFAULT '' COMMENT '账号',
  `password` varchar(200) DEFAULT '' COMMENT '密码',
  `url` varchar(200) DEFAULT '' COMMENT 'URL',
  `operator` int(1) DEFAULT '4' COMMENT '运营商 1-联通 2-移动 3-电信 4-其他',
  `status` tinyint(4) DEFAULT '0' COMMENT '通道状态 1正常 0禁用',
  `is_del` tinyint(4) DEFAULT '0' COMMENT '删除状态 1已删除 0正常',
  PRIMARY KEY (`channel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of yii2_channel
-- ----------------------------
INSERT INTO `yii2_channel` VALUES ('1', '天阳短信--联通', '1081', '杰鸿联通贷款', 'a1234561', '', '1', '1', '0');
INSERT INTO `yii2_channel` VALUES ('2', '天阳短信--移动', '8710', '借鸿移动贷款', 'a123456', '', '2', '1', '0');
INSERT INTO `yii2_channel` VALUES ('3', '天阳短信--电信', '8710', '借鸿移动贷款', 'a123456', '', '3', '1', '0');
INSERT INTO `yii2_channel` VALUES ('4', '天阳短信-商超-移动', '1080', '杰鸿三网营销', 'a123456', '', '2', '1', '0');
INSERT INTO `yii2_channel` VALUES ('5', '天阳短信-商超-联通', '1080', '天阳短信-商超-移动', 'a123456', '', '1', '1', '0');
INSERT INTO `yii2_channel` VALUES ('6', '天阳短信-商超-电信', '1080', '杰鸿三网营销', 'a123456', '', '3', '1', '0');

/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : message_www

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-02-15 10:10:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `yii2_message_send`
-- ----------------------------
DROP TABLE IF EXISTS `yii2_message_send`;
CREATE TABLE `yii2_message_send` (
  `message_sid` int(8) NOT NULL AUTO_INCREMENT,
  `message_id` int(8) NOT NULL,
  `task_id` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '批次号',
  `operator` int(1) NOT NULL DEFAULT '4' COMMENT '运营商 1-联通 2-移动 3-电信 4-其他',
  `channel_id` int(8) DEFAULT NULL COMMENT '通道ID',
  PRIMARY KEY (`message_sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of yii2_message_send
-- ----------------------------

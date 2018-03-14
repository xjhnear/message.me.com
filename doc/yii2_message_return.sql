/*
Navicat MySQL Data Transfer

Source Server         : 47.100.111.70
Source Server Version : 50720
Source Host           : 47.100.111.70:3306
Source Database       : message_www

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-03-14 21:12:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `yii2_message_return`
-- ----------------------------
DROP TABLE IF EXISTS `yii2_message_return`;
CREATE TABLE `yii2_message_return` (
  `rid` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) DEFAULT NULL COMMENT 'mobile',
  `taskid` varchar(100) DEFAULT NULL COMMENT 'taskid',
  `status` varchar(50) DEFAULT NULL COMMENT 'status',
  `retime` varchar(200) DEFAULT NULL COMMENT 'receivetime',
  `errorcode` varchar(255) DEFAULT NULL COMMENT 'errorcode',
  `extno` varchar(255) DEFAULT NULL COMMENT 'extno',
  `create_time` int(10) NOT NULL COMMENT '提交时间',
  `is_do` int(1) NOT NULL DEFAULT '0' COMMENT '是否处理 1-已处理 0-未处理',
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of yii2_message_return
-- ----------------------------

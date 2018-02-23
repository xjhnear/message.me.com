/*
Navicat MySQL Data Transfer

Source Server         : 47.100.101.44
Source Server Version : 50720
Source Host           : 47.100.101.44:3306
Source Database       : message_www

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-02-23 15:10:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for yii2_message_send
-- ----------------------------
DROP TABLE IF EXISTS `yii2_message_send`;
CREATE TABLE `yii2_message_send` (
  `message_sid` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `message_id` int(8) NOT NULL,
  `message_did` int(8) NOT NULL,
  `phonenumber` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '手机号码',
  `task_id` int(30) DEFAULT NULL COMMENT '批次号',
  `operator` int(1) NOT NULL DEFAULT '4' COMMENT '运营商 1-联通 2-移动 3-电信 4-其他',
  `channel_id` int(8) DEFAULT NULL COMMENT '通道ID',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态 10-成功 20-失败',
  `return_time` int(10) DEFAULT NULL COMMENT '回执时间',
  `errorcode` varchar(50) DEFAULT NULL COMMENT '上级网关返回值',
  `extno` int(10) DEFAULT NULL,
  PRIMARY KEY (`message_sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

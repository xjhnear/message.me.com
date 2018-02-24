/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : message_www

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-02-24 15:32:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for yii2_account_detail
-- ----------------------------
DROP TABLE IF EXISTS `yii2_account_detail`;
CREATE TABLE `yii2_account_detail` (
  `account_did` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(8) NOT NULL COMMENT '用户ID',
  `change_count` int(8) NOT NULL DEFAULT '0' COMMENT '金额变动数量',
  `change_type` int(1) NOT NULL DEFAULT '1' COMMENT '金额变动类型 1:增加 2:减少',
  `balance` int(8) DEFAULT '0' COMMENT '账户余额',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` int(10) NOT NULL COMMENT '创建时间',
  `op_uid` int(8) DEFAULT NULL COMMENT '操作人ID',
  PRIMARY KEY (`account_did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

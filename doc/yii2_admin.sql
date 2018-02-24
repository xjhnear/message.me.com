/*
Navicat MySQL Data Transfer

Source Server         : 47.100.101.44
Source Server Version : 50720
Source Host           : 47.100.101.44:3306
Source Database       : message_www

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-02-24 09:56:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for yii2_admin
-- ----------------------------
DROP TABLE IF EXISTS `yii2_admin`;
CREATE TABLE `yii2_admin` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` char(16) NOT NULL COMMENT '用户名',
  `password` char(60) NOT NULL COMMENT '密码',
  `salt` char(32) NOT NULL COMMENT '密码干扰字符',
  `email` char(32) NOT NULL COMMENT '用户邮箱',
  `mobile` char(15) NOT NULL DEFAULT '' COMMENT '用户手机',
  `company` varchar(200) DEFAULT NULL COMMENT '公司名称',
  `address` varchar(200) DEFAULT NULL COMMENT '公司地址',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `reg_ip` bigint(20) NOT NULL DEFAULT '0' COMMENT '注册IP',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `last_login_ip` bigint(20) NOT NULL DEFAULT '0' COMMENT '最后登录IP',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) DEFAULT '0' COMMENT '用户状态 1正常 0禁用',
  `is_del` tinyint(4) DEFAULT '0' COMMENT '删除状态 1已删除 0正常',
  `role` tinyint(4) DEFAULT '0' COMMENT '角色 1-商户 2-审核员 3-管理员 0-其他',
  `coefficient` varchar(10) DEFAULT '1' COMMENT '单价',
  `balance` int(60) DEFAULT '0' COMMENT '账户余额',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of yii2_admin
-- ----------------------------
INSERT INTO `yii2_admin` VALUES ('1', 'administrator', '$2y$13$0UVcG.mXF6Og0rnjfwJd2.wixT2gdn.wDO9rN44jGtIGc6JvBqR7i', 'SbSY36BLw3V2lU-GB7ZAzCVJKDFx82IJ', 'phphome111@qq.com', '13565231112', null, null, null, '1457922160', '2130706433', '1457922174', '2130706433', '1518148691', '1', '0', '0', '1', '0');
INSERT INTO `yii2_admin` VALUES ('8', 'test', '$2y$13$A94adm0j9A.74StXOCwh3uswtkEUj6U1KImZWRagCOv89RGohmITW', 'eiUh5Y4xi6udtXKXIMDAchC156MzlGxy', 'test@qq.com', '13012345678', null, null, null, '1517365306', '2130706433', '0', '2130706433', '1518419513', '1', '0', '1', '1', '8994');
INSERT INTO `yii2_admin` VALUES ('9', 'check', '$2y$13$7Ek.ZYSCOm7YFuyqQBBVh.nKdLLxcS7NV8Gp8fa1H99LBJKud44Ha', '9MCQIl1cXEdlTzpkE9QJNeKvkfYId5C2', 'check@qq.com', '13612345678', null, null, null, '1518148628', '2130706433', '0', '2130706433', '0', '1', '0', '2', '1', '0');
INSERT INTO `yii2_admin` VALUES ('10', 'admin', '$2y$13$0jWU1O3qVhJJ5sQ.iC2svuE6.X35zF3Gn/ePTIOnsX1bLjggX0RzK', 'p-2MXy2ujzJP3vxCAj35HzEokWil0o3m', 'admin@qq.com', '15812345678', null, null, null, '1518148730', '2130706433', '0', '2130706433', '0', '1', '0', '3', '1', '0');

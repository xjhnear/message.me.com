/*
Navicat MySQL Data Transfer

Source Server         : 47.100.101.44
Source Server Version : 50720
Source Host           : 47.100.101.44:3306
Source Database       : message_www

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-02-24 17:55:29
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
  `create_time` int(10) NOT NULL COMMENT '创建时间',
  `uid` int(8) NOT NULL COMMENT '用户ID',
  PRIMARY KEY (`message_sid`)
) ENGINE=MyISAM AUTO_INCREMENT=58361 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of yii2_message_send
-- ----------------------------
INSERT INTO `yii2_message_send` VALUES ('58350', '19', '6176', '13611628132', '8236038', '2', '2', '0', null, null, null, '0', '0');
INSERT INTO `yii2_message_send` VALUES ('58351', '19', '6175', '13917438216', '8236038', '2', '2', '0', null, null, null, '0', '0');
INSERT INTO `yii2_message_send` VALUES ('58352', '19', '6176', '13611628132', '8236039', '2', '2', '0', null, null, null, '0', '0');
INSERT INTO `yii2_message_send` VALUES ('58353', '19', '6175', '13917438216', '8236039', '2', '2', '0', null, null, null, '0', '0');
INSERT INTO `yii2_message_send` VALUES ('58354', '19', '6176', '13611628132', '8236041', '2', '2', '0', null, null, null, '0', '0');
INSERT INTO `yii2_message_send` VALUES ('58355', '19', '6175', '13917438216', '8236041', '2', '2', '0', null, null, null, '0', '0');
INSERT INTO `yii2_message_send` VALUES ('58356', '19', '6176', '13611628132', '8236042', '2', '2', '0', null, null, null, '0', '0');
INSERT INTO `yii2_message_send` VALUES ('58357', '19', '6175', '13917438216', '8236042', '2', '2', '0', null, null, null, '0', '0');
INSERT INTO `yii2_message_send` VALUES ('58358', '20', '6177', '13916058395', '8238287', '2', '2', '0', null, null, null, '0', '0');
INSERT INTO `yii2_message_send` VALUES ('58359', '21', '6178', '18621980140', '8238298', '1', '1', '0', null, null, null, '0', '0');
INSERT INTO `yii2_message_send` VALUES ('58360', '22', '6180', '18621980140', '8238315', '1', '1', '0', null, null, null, '0', '0');

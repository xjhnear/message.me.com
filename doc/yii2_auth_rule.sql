/*
Navicat MySQL Data Transfer

Source Server         : 47.100.101.44
Source Server Version : 50720
Source Host           : 47.100.101.44:3306
Source Database       : message_www

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-02-24 09:57:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for yii2_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `yii2_auth_rule`;
CREATE TABLE `yii2_auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text COMMENT 'serialize后的rule对象',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of yii2_auth_rule
-- ----------------------------
INSERT INTO `yii2_auth_rule` VALUES ('account/index', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:13:\"account/index\";s:9:\"createdAt\";i:1517365262;s:9:\"updatedAt\";i:1517365262;}', '1517365262', '1517365262');
INSERT INTO `yii2_auth_rule` VALUES ('action/actionlog', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:16:\"action/actionlog\";s:9:\"createdAt\";i:1460031880;s:9:\"updatedAt\";i:1460031880;}', '1460031880', '1460031880');
INSERT INTO `yii2_auth_rule` VALUES ('action/edit', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:11:\"action/edit\";s:9:\"createdAt\";i:1460031880;s:9:\"updatedAt\";i:1460031880;}', '1460031880', '1460031880');
INSERT INTO `yii2_auth_rule` VALUES ('ad/add', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:6:\"ad/add\";s:9:\"createdAt\";i:1476437984;s:9:\"updatedAt\";i:1476437984;}', '1476437984', '1476437984');
INSERT INTO `yii2_auth_rule` VALUES ('ad/delete', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:9:\"ad/delete\";s:9:\"createdAt\";i:1476437984;s:9:\"updatedAt\";i:1476437984;}', '1476437984', '1476437984');
INSERT INTO `yii2_auth_rule` VALUES ('ad/edit', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:7:\"ad/edit\";s:9:\"createdAt\";i:1476437984;s:9:\"updatedAt\";i:1476437984;}', '1476437984', '1476437984');
INSERT INTO `yii2_auth_rule` VALUES ('ad/index', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:8:\"ad/index\";s:9:\"createdAt\";i:1476437984;s:9:\"updatedAt\";i:1476437984;}', '1476437984', '1476437984');
INSERT INTO `yii2_auth_rule` VALUES ('Addons/addHook', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:14:\"Addons/addHook\";s:9:\"createdAt\";i:1472528088;s:9:\"updatedAt\";i:1472528088;}', '1472528088', '1472528088');
INSERT INTO `yii2_auth_rule` VALUES ('Addons/adminList', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:16:\"Addons/adminList\";s:9:\"createdAt\";i:1472528088;s:9:\"updatedAt\";i:1472528088;}', '1472528088', '1472528088');
INSERT INTO `yii2_auth_rule` VALUES ('Addons/edithook', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:15:\"Addons/edithook\";s:9:\"createdAt\";i:1472528088;s:9:\"updatedAt\";i:1472528088;}', '1472528088', '1472528088');
INSERT INTO `yii2_auth_rule` VALUES ('Addons/execute', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:14:\"Addons/execute\";s:9:\"createdAt\";i:1472528088;s:9:\"updatedAt\";i:1472528088;}', '1472528088', '1472528088');
INSERT INTO `yii2_auth_rule` VALUES ('Addons/hooks', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:12:\"Addons/hooks\";s:9:\"createdAt\";i:1472528088;s:9:\"updatedAt\";i:1472528088;}', '1472528088', '1472528088');
INSERT INTO `yii2_auth_rule` VALUES ('Addons/index', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:12:\"Addons/index\";s:9:\"createdAt\";i:1460030539;s:9:\"updatedAt\";i:1460030539;}', '1460030539', '1460030539');
INSERT INTO `yii2_auth_rule` VALUES ('admin-log/index', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:15:\"admin-log/index\";s:9:\"createdAt\";i:1517896060;s:9:\"updatedAt\";i:1517896060;}', '1517896060', '1517896060');
INSERT INTO `yii2_auth_rule` VALUES ('admin-log/view', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:14:\"admin-log/view\";s:9:\"createdAt\";i:1517896060;s:9:\"updatedAt\";i:1517896060;}', '1517896060', '1517896060');
INSERT INTO `yii2_auth_rule` VALUES ('admin/add', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:9:\"admin/add\";s:9:\"createdAt\";i:1472528089;s:9:\"updatedAt\";i:1472528089;}', '1472528089', '1472528089');
INSERT INTO `yii2_auth_rule` VALUES ('admin/auth', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:10:\"admin/auth\";s:9:\"createdAt\";i:1472528089;s:9:\"updatedAt\";i:1472528089;}', '1472528089', '1472528089');
INSERT INTO `yii2_auth_rule` VALUES ('admin/edit', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:10:\"admin/edit\";s:9:\"createdAt\";i:1472528089;s:9:\"updatedAt\";i:1472528089;}', '1472528089', '1472528089');
INSERT INTO `yii2_auth_rule` VALUES ('admin/index', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:11:\"admin/index\";s:9:\"createdAt\";i:1472528089;s:9:\"updatedAt\";i:1472528089;}', '1472528089', '1472528089');
INSERT INTO `yii2_auth_rule` VALUES ('article-cat/add', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:15:\"article-cat/add\";s:9:\"createdAt\";i:1489471673;s:9:\"updatedAt\";i:1489471673;}', '1489471673', '1489471673');
INSERT INTO `yii2_auth_rule` VALUES ('article-cat/delete', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:18:\"article-cat/delete\";s:9:\"createdAt\";i:1496652380;s:9:\"updatedAt\";i:1496652380;}', '1496652380', '1496652380');
INSERT INTO `yii2_auth_rule` VALUES ('article-cat/edit', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:16:\"article-cat/edit\";s:9:\"createdAt\";i:1489471673;s:9:\"updatedAt\";i:1489471673;}', '1489471673', '1489471673');
INSERT INTO `yii2_auth_rule` VALUES ('article-cat/index', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:17:\"article-cat/index\";s:9:\"createdAt\";i:1489471673;s:9:\"updatedAt\";i:1489471673;}', '1489471673', '1489471673');
INSERT INTO `yii2_auth_rule` VALUES ('article/add', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:11:\"article/add\";s:9:\"createdAt\";i:1460027926;s:9:\"updatedAt\";i:1460027926;}', '1460027926', '1460027926');
INSERT INTO `yii2_auth_rule` VALUES ('article/autoSave', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:16:\"article/autoSave\";s:9:\"createdAt\";i:1460027926;s:9:\"updatedAt\";i:1460027926;}', '1460027926', '1460027926');
INSERT INTO `yii2_auth_rule` VALUES ('article/batchOperate', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:20:\"article/batchOperate\";s:9:\"createdAt\";i:1460027926;s:9:\"updatedAt\";i:1460027926;}', '1460027926', '1460027926');
INSERT INTO `yii2_auth_rule` VALUES ('article/clear', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:13:\"article/clear\";s:9:\"createdAt\";i:1460027927;s:9:\"updatedAt\";i:1460027927;}', '1460027927', '1460027927');
INSERT INTO `yii2_auth_rule` VALUES ('article/copy', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:12:\"article/copy\";s:9:\"createdAt\";i:1460027926;s:9:\"updatedAt\";i:1460027926;}', '1460027926', '1460027926');
INSERT INTO `yii2_auth_rule` VALUES ('article/delete', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:14:\"article/delete\";s:9:\"createdAt\";i:1496652380;s:9:\"updatedAt\";i:1496652380;}', '1496652380', '1496652380');
INSERT INTO `yii2_auth_rule` VALUES ('article/edit', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:12:\"article/edit\";s:9:\"createdAt\";i:1460027926;s:9:\"updatedAt\";i:1460027926;}', '1460027926', '1460027926');
INSERT INTO `yii2_auth_rule` VALUES ('Article/examine', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:15:\"Article/examine\";s:9:\"createdAt\";i:1460027927;s:9:\"updatedAt\";i:1460027927;}', '1460027927', '1460027927');
INSERT INTO `yii2_auth_rule` VALUES ('article/index', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:13:\"article/index\";s:9:\"createdAt\";i:1460027926;s:9:\"updatedAt\";i:1460027926;}', '1460027926', '1460027926');
INSERT INTO `yii2_auth_rule` VALUES ('article/move', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:12:\"article/move\";s:9:\"createdAt\";i:1460027926;s:9:\"updatedAt\";i:1460027926;}', '1460027926', '1460027926');
INSERT INTO `yii2_auth_rule` VALUES ('article/paste', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:13:\"article/paste\";s:9:\"createdAt\";i:1460027926;s:9:\"updatedAt\";i:1460027926;}', '1460027926', '1460027926');
INSERT INTO `yii2_auth_rule` VALUES ('article/permit', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:14:\"article/permit\";s:9:\"createdAt\";i:1460027927;s:9:\"updatedAt\";i:1460027927;}', '1460027927', '1460027927');
INSERT INTO `yii2_auth_rule` VALUES ('article/recycle', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:15:\"article/recycle\";s:9:\"createdAt\";i:1460027927;s:9:\"updatedAt\";i:1460027927;}', '1460027927', '1460027927');
INSERT INTO `yii2_auth_rule` VALUES ('article/setStatus', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:17:\"article/setStatus\";s:9:\"createdAt\";i:1460027926;s:9:\"updatedAt\";i:1460027926;}', '1460027926', '1460027926');
INSERT INTO `yii2_auth_rule` VALUES ('Article/sort', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:12:\"Article/sort\";s:9:\"createdAt\";i:1460027927;s:9:\"updatedAt\";i:1460027927;}', '1460027927', '1460027927');
INSERT INTO `yii2_auth_rule` VALUES ('article/update', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:14:\"article/update\";s:9:\"createdAt\";i:1460027926;s:9:\"updatedAt\";i:1460027926;}', '1460027926', '1460027926');
INSERT INTO `yii2_auth_rule` VALUES ('attribute/add', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:13:\"attribute/add\";s:9:\"createdAt\";i:1460031881;s:9:\"updatedAt\";i:1460031881;}', '1460031881', '1460031881');
INSERT INTO `yii2_auth_rule` VALUES ('attribute/edit', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:14:\"attribute/edit\";s:9:\"createdAt\";i:1460031881;s:9:\"updatedAt\";i:1460031881;}', '1460031881', '1460031881');
INSERT INTO `yii2_auth_rule` VALUES ('attribute/index1', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:16:\"attribute/index1\";s:9:\"createdAt\";i:1460031881;s:9:\"updatedAt\";i:1460031881;}', '1460031881', '1460031881');
INSERT INTO `yii2_auth_rule` VALUES ('attribute/setStatus', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:19:\"attribute/setStatus\";s:9:\"createdAt\";i:1460031881;s:9:\"updatedAt\";i:1460031881;}', '1460031881', '1460031881');
INSERT INTO `yii2_auth_rule` VALUES ('attribute/update', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:16:\"attribute/update\";s:9:\"createdAt\";i:1460031881;s:9:\"updatedAt\";i:1460031881;}', '1460031881', '1460031881');
INSERT INTO `yii2_auth_rule` VALUES ('attributes/index', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:16:\"attributes/index\";s:9:\"createdAt\";i:1489471673;s:9:\"updatedAt\";i:1489471673;}', '1489471673', '1489471673');
INSERT INTO `yii2_auth_rule` VALUES ('auth/access', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:11:\"auth/access\";s:9:\"createdAt\";i:1460031879;s:9:\"updatedAt\";i:1460031879;}', '1460031879', '1460031879');
INSERT INTO `yii2_auth_rule` VALUES ('auth/add', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:8:\"auth/add\";s:9:\"createdAt\";i:1472528089;s:9:\"updatedAt\";i:1472528089;}', '1472528089', '1472528089');
INSERT INTO `yii2_auth_rule` VALUES ('auth/addToCategory', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:18:\"auth/addToCategory\";s:9:\"createdAt\";i:1460031880;s:9:\"updatedAt\";i:1460031880;}', '1460031880', '1460031880');
INSERT INTO `yii2_auth_rule` VALUES ('auth/addToGroup', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:15:\"auth/addToGroup\";s:9:\"createdAt\";i:1460031880;s:9:\"updatedAt\";i:1460031880;}', '1460031880', '1460031880');
INSERT INTO `yii2_auth_rule` VALUES ('auth/addToModel', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:15:\"auth/addToModel\";s:9:\"createdAt\";i:1460031880;s:9:\"updatedAt\";i:1460031880;}', '1460031880', '1460031880');
INSERT INTO `yii2_auth_rule` VALUES ('auth/auth', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:9:\"auth/auth\";s:9:\"createdAt\";i:1460031879;s:9:\"updatedAt\";i:1460031879;}', '1460031879', '1460031879');
INSERT INTO `yii2_auth_rule` VALUES ('auth/category', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:13:\"auth/category\";s:9:\"createdAt\";i:1460031880;s:9:\"updatedAt\";i:1460031880;}', '1460031880', '1460031880');
INSERT INTO `yii2_auth_rule` VALUES ('auth/changeStatus?method=deleteGroup', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:36:\"auth/changeStatus?method=deleteGroup\";s:9:\"createdAt\";i:1460031879;s:9:\"updatedAt\";i:1460031879;}', '1460031879', '1460031879');
INSERT INTO `yii2_auth_rule` VALUES ('auth/changeStatus?method=forbidGroup', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:36:\"auth/changeStatus?method=forbidGroup\";s:9:\"createdAt\";i:1460031879;s:9:\"updatedAt\";i:1460031879;}', '1460031879', '1460031879');
INSERT INTO `yii2_auth_rule` VALUES ('auth/changeStatus?method=resumeGroup', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:36:\"auth/changeStatus?method=resumeGroup\";s:9:\"createdAt\";i:1460031879;s:9:\"updatedAt\";i:1460031879;}', '1460031879', '1460031879');
INSERT INTO `yii2_auth_rule` VALUES ('auth/createGroup', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:16:\"auth/createGroup\";s:9:\"createdAt\";i:1460031879;s:9:\"updatedAt\";i:1460031879;}', '1460031879', '1460031879');
INSERT INTO `yii2_auth_rule` VALUES ('auth/delete', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:11:\"auth/delete\";s:9:\"createdAt\";i:1472528089;s:9:\"updatedAt\";i:1472528089;}', '1472528089', '1472528089');
INSERT INTO `yii2_auth_rule` VALUES ('auth/edit', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:9:\"auth/edit\";s:9:\"createdAt\";i:1472528089;s:9:\"updatedAt\";i:1472528089;}', '1472528089', '1472528089');
INSERT INTO `yii2_auth_rule` VALUES ('auth/editGroup', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:14:\"auth/editGroup\";s:9:\"createdAt\";i:1460031879;s:9:\"updatedAt\";i:1460031879;}', '1460031879', '1460031879');
INSERT INTO `yii2_auth_rule` VALUES ('auth/index', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:10:\"auth/index\";s:9:\"createdAt\";i:1459148617;s:9:\"updatedAt\";i:1459148627;}', '1456542110', '1456542120');
INSERT INTO `yii2_auth_rule` VALUES ('auth/modelauth', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:14:\"auth/modelauth\";s:9:\"createdAt\";i:1460031880;s:9:\"updatedAt\";i:1460031880;}', '1460031880', '1460031880');
INSERT INTO `yii2_auth_rule` VALUES ('auth/removeFromGroup', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:20:\"auth/removeFromGroup\";s:9:\"createdAt\";i:1460031880;s:9:\"updatedAt\";i:1460031880;}', '1460031880', '1460031880');
INSERT INTO `yii2_auth_rule` VALUES ('auth/user', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:9:\"auth/user\";s:9:\"createdAt\";i:1460031880;s:9:\"updatedAt\";i:1460031880;}', '1460031880', '1460031880');
INSERT INTO `yii2_auth_rule` VALUES ('auth/writeGroup', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:15:\"auth/writeGroup\";s:9:\"createdAt\";i:1460031879;s:9:\"updatedAt\";i:1460031879;}', '1460031879', '1460031879');
INSERT INTO `yii2_auth_rule` VALUES ('category/add', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:12:\"category/add\";s:9:\"createdAt\";i:1460031882;s:9:\"updatedAt\";i:1460031882;}', '1460031882', '1460031882');
INSERT INTO `yii2_auth_rule` VALUES ('category/edit', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:13:\"category/edit\";s:9:\"createdAt\";i:1460031882;s:9:\"updatedAt\";i:1460031882;}', '1460031882', '1460031882');
INSERT INTO `yii2_auth_rule` VALUES ('category/index', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:14:\"category/index\";s:9:\"createdAt\";i:1460031882;s:9:\"updatedAt\";i:1460031882;}', '1460031882', '1460031882');
INSERT INTO `yii2_auth_rule` VALUES ('category/operate/type/merge', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:27:\"category/operate/type/merge\";s:9:\"createdAt\";i:1460031882;s:9:\"updatedAt\";i:1460031882;}', '1460031882', '1460031882');
INSERT INTO `yii2_auth_rule` VALUES ('category/operate/type/move', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:26:\"category/operate/type/move\";s:9:\"createdAt\";i:1460031882;s:9:\"updatedAt\";i:1460031882;}', '1460031882', '1460031882');
INSERT INTO `yii2_auth_rule` VALUES ('category/remove', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:15:\"category/remove\";s:9:\"createdAt\";i:1460031882;s:9:\"updatedAt\";i:1460031882;}', '1460031882', '1460031882');
INSERT INTO `yii2_auth_rule` VALUES ('certificate/delete', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:18:\"certificate/delete\";s:9:\"createdAt\";i:1476437984;s:9:\"updatedAt\";i:1476437984;}', '1476437984', '1476437984');
INSERT INTO `yii2_auth_rule` VALUES ('certificate/edit', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:16:\"certificate/edit\";s:9:\"createdAt\";i:1476437983;s:9:\"updatedAt\";i:1476437983;}', '1476437983', '1476437983');
INSERT INTO `yii2_auth_rule` VALUES ('certificate/index', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:17:\"certificate/index\";s:9:\"createdAt\";i:1476437983;s:9:\"updatedAt\";i:1476437983;}', '1476437983', '1476437983');
INSERT INTO `yii2_auth_rule` VALUES ('channel/add', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:11:\"channel/add\";s:9:\"createdAt\";i:1460031884;s:9:\"updatedAt\";i:1460031884;}', '1460031884', '1460031884');
INSERT INTO `yii2_auth_rule` VALUES ('channel/del', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:11:\"channel/del\";s:9:\"createdAt\";i:1460031884;s:9:\"updatedAt\";i:1460031884;}', '1460031884', '1460031884');
INSERT INTO `yii2_auth_rule` VALUES ('channel/edit', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:12:\"channel/edit\";s:9:\"createdAt\";i:1460031884;s:9:\"updatedAt\";i:1460031884;}', '1460031884', '1460031884');
INSERT INTO `yii2_auth_rule` VALUES ('channel/index', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:13:\"channel/index\";s:9:\"createdAt\";i:1460031884;s:9:\"updatedAt\";i:1460031884;}', '1460031884', '1460031884');
INSERT INTO `yii2_auth_rule` VALUES ('check/edit', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:10:\"check/edit\";s:9:\"createdAt\";i:1518156202;s:9:\"updatedAt\";i:1518156202;}', '1518156202', '1518156202');
INSERT INTO `yii2_auth_rule` VALUES ('check/index', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:11:\"check/index\";s:9:\"createdAt\";i:1518156201;s:9:\"updatedAt\";i:1518156201;}', '1518156201', '1518156201');
INSERT INTO `yii2_auth_rule` VALUES ('check/reject', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:12:\"check/reject\";s:9:\"createdAt\";i:1518370008;s:9:\"updatedAt\";i:1518370008;}', '1518370008', '1518370008');
INSERT INTO `yii2_auth_rule` VALUES ('checkman/add', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:12:\"checkman/add\";s:9:\"createdAt\";i:1518415037;s:9:\"updatedAt\";i:1518415037;}', '1518415037', '1518415037');
INSERT INTO `yii2_auth_rule` VALUES ('checkman/edit', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:13:\"checkman/edit\";s:9:\"createdAt\";i:1518415037;s:9:\"updatedAt\";i:1518415037;}', '1518415037', '1518415037');
INSERT INTO `yii2_auth_rule` VALUES ('checkman/index', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:14:\"checkman/index\";s:9:\"createdAt\";i:1518415036;s:9:\"updatedAt\";i:1518415036;}', '1518415036', '1518415036');
INSERT INTO `yii2_auth_rule` VALUES ('config/add', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:10:\"config/add\";s:9:\"createdAt\";i:1460031883;s:9:\"updatedAt\";i:1460031883;}', '1460031883', '1460031883');
INSERT INTO `yii2_auth_rule` VALUES ('config/del', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:10:\"config/del\";s:9:\"createdAt\";i:1460031883;s:9:\"updatedAt\";i:1460031883;}', '1460031883', '1460031883');
INSERT INTO `yii2_auth_rule` VALUES ('config/edit', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:11:\"config/edit\";s:9:\"createdAt\";i:1460031883;s:9:\"updatedAt\";i:1460031883;}', '1460031883', '1460031883');
INSERT INTO `yii2_auth_rule` VALUES ('config/group', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:12:\"config/group\";s:9:\"createdAt\";i:1459148617;s:9:\"updatedAt\";i:1459148627;}', '1200000000', '1300000000');
INSERT INTO `yii2_auth_rule` VALUES ('config/index', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:12:\"config/index\";s:9:\"createdAt\";i:1459148617;s:9:\"updatedAt\";i:1459148627;}', '1200000000', '1300000000');
INSERT INTO `yii2_auth_rule` VALUES ('config/save', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:11:\"config/save\";s:9:\"createdAt\";i:1460031883;s:9:\"updatedAt\";i:1460031883;}', '1460031883', '1460031883');
INSERT INTO `yii2_auth_rule` VALUES ('Config/sort', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:11:\"Config/sort\";s:9:\"createdAt\";i:1460031884;s:9:\"updatedAt\";i:1460031884;}', '1460031884', '1460031884');
INSERT INTO `yii2_auth_rule` VALUES ('customer/add', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:12:\"customer/add\";s:9:\"createdAt\";i:1518407072;s:9:\"updatedAt\";i:1518407072;}', '1518407072', '1518407072');
INSERT INTO `yii2_auth_rule` VALUES ('customer/edit', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:13:\"customer/edit\";s:9:\"createdAt\";i:1518407073;s:9:\"updatedAt\";i:1518407073;}', '1518407073', '1518407073');
INSERT INTO `yii2_auth_rule` VALUES ('customer/index', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:14:\"customer/index\";s:9:\"createdAt\";i:1518407072;s:9:\"updatedAt\";i:1518407072;}', '1518407072', '1518407072');
INSERT INTO `yii2_auth_rule` VALUES ('customer/recharge', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:17:\"customer/recharge\";s:9:\"createdAt\";i:1518423707;s:9:\"updatedAt\";i:1518423707;}', '1518423707', '1518423707');
INSERT INTO `yii2_auth_rule` VALUES ('database/del', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:12:\"database/del\";s:9:\"createdAt\";i:1460031882;s:9:\"updatedAt\";i:1460031882;}', '1460031882', '1460031882');
INSERT INTO `yii2_auth_rule` VALUES ('database/export', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:15:\"database/export\";s:9:\"createdAt\";i:1460031881;s:9:\"updatedAt\";i:1460031881;}', '1460031881', '1460031881');
INSERT INTO `yii2_auth_rule` VALUES ('database/import', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:15:\"database/import\";s:9:\"createdAt\";i:1460031882;s:9:\"updatedAt\";i:1460031882;}', '1460031882', '1460031882');
INSERT INTO `yii2_auth_rule` VALUES ('database/index?type=export', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:26:\"database/index?type=export\";s:9:\"createdAt\";i:1459148617;s:9:\"updatedAt\";i:1459148627;}', '1456542110', '1456542120');
INSERT INTO `yii2_auth_rule` VALUES ('database/index?type=import', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:26:\"database/index?type=import\";s:9:\"createdAt\";i:1459148617;s:9:\"updatedAt\";i:1459148627;}', '1456542110', '1456542120');
INSERT INTO `yii2_auth_rule` VALUES ('database/optimize', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:17:\"database/optimize\";s:9:\"createdAt\";i:1460031881;s:9:\"updatedAt\";i:1460031881;}', '1460031881', '1460031881');
INSERT INTO `yii2_auth_rule` VALUES ('database/repair', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:15:\"database/repair\";s:9:\"createdAt\";i:1460031881;s:9:\"updatedAt\";i:1460031881;}', '1460031881', '1460031881');
INSERT INTO `yii2_auth_rule` VALUES ('goods/add', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:9:\"goods/add\";s:9:\"createdAt\";i:1496652380;s:9:\"updatedAt\";i:1496652380;}', '1496652380', '1496652380');
INSERT INTO `yii2_auth_rule` VALUES ('goods/delete', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:12:\"goods/delete\";s:9:\"createdAt\";i:1496652380;s:9:\"updatedAt\";i:1496652380;}', '1496652380', '1496652380');
INSERT INTO `yii2_auth_rule` VALUES ('goods/edit', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:10:\"goods/edit\";s:9:\"createdAt\";i:1489471673;s:9:\"updatedAt\";i:1489471673;}', '1489471673', '1489471673');
INSERT INTO `yii2_auth_rule` VALUES ('goods/index', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:11:\"goods/index\";s:9:\"createdAt\";i:1489471673;s:9:\"updatedAt\";i:1489471673;}', '1489471673', '1489471673');
INSERT INTO `yii2_auth_rule` VALUES ('group/add', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:9:\"group/add\";s:9:\"createdAt\";i:1476437986;s:9:\"updatedAt\";i:1476437986;}', '1476437986', '1476437986');
INSERT INTO `yii2_auth_rule` VALUES ('group/delete', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:12:\"group/delete\";s:9:\"createdAt\";i:1476437986;s:9:\"updatedAt\";i:1476437986;}', '1476437986', '1476437986');
INSERT INTO `yii2_auth_rule` VALUES ('group/edit', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:10:\"group/edit\";s:9:\"createdAt\";i:1476437986;s:9:\"updatedAt\";i:1476437986;}', '1476437986', '1476437986');
INSERT INTO `yii2_auth_rule` VALUES ('group/index', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:11:\"group/index\";s:9:\"createdAt\";i:1476437986;s:9:\"updatedAt\";i:1476437986;}', '1476437986', '1476437986');
INSERT INTO `yii2_auth_rule` VALUES ('home/index', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:11:\"index/index\";s:9:\"createdAt\";i:1459148617;s:9:\"updatedAt\";i:1459148627;}', '1456542110', '1456542120');
INSERT INTO `yii2_auth_rule` VALUES ('index/index', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:11:\"index/index\";s:9:\"createdAt\";i:1517469179;s:9:\"updatedAt\";i:1517469179;}', '1517469179', '1517469179');
INSERT INTO `yii2_auth_rule` VALUES ('log/index', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:9:\"log/index\";s:9:\"createdAt\";i:1472528090;s:9:\"updatedAt\";i:1472528090;}', '1472528090', '1472528090');
INSERT INTO `yii2_auth_rule` VALUES ('log/view', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:8:\"log/view\";s:9:\"createdAt\";i:1472528090;s:9:\"updatedAt\";i:1472528090;}', '1472528090', '1472528090');
INSERT INTO `yii2_auth_rule` VALUES ('login/logout', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:12:\"login/logout\";s:9:\"createdAt\";i:1459148665;s:9:\"updatedAt\";i:1459148675;}', '1456542110', '1456542120');
INSERT INTO `yii2_auth_rule` VALUES ('manager/add', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:11:\"manager/add\";s:9:\"createdAt\";i:1518407073;s:9:\"updatedAt\";i:1518407073;}', '1518407073', '1518407073');
INSERT INTO `yii2_auth_rule` VALUES ('manager/edit', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:12:\"manager/edit\";s:9:\"createdAt\";i:1518407074;s:9:\"updatedAt\";i:1518407074;}', '1518407074', '1518407074');
INSERT INTO `yii2_auth_rule` VALUES ('manager/index', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:13:\"manager/index\";s:9:\"createdAt\";i:1518407073;s:9:\"updatedAt\";i:1518407073;}', '1518407073', '1518407073');
INSERT INTO `yii2_auth_rule` VALUES ('menu/add', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:8:\"menu/add\";s:9:\"createdAt\";i:1460031884;s:9:\"updatedAt\";i:1460031884;}', '1460031884', '1460031884');
INSERT INTO `yii2_auth_rule` VALUES ('menu/edit', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:9:\"menu/edit\";s:9:\"createdAt\";i:1460031884;s:9:\"updatedAt\";i:1460031884;}', '1460031884', '1460031884');
INSERT INTO `yii2_auth_rule` VALUES ('Menu/import', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:11:\"Menu/import\";s:9:\"createdAt\";i:1460031884;s:9:\"updatedAt\";i:1460031884;}', '1460031884', '1460031884');
INSERT INTO `yii2_auth_rule` VALUES ('menu/index', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:10:\"menu/index\";s:9:\"createdAt\";i:1459148617;s:9:\"updatedAt\";i:1459148627;}', '1200000000', '1300000000');
INSERT INTO `yii2_auth_rule` VALUES ('Menu/sort', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:9:\"Menu/sort\";s:9:\"createdAt\";i:1460031884;s:9:\"updatedAt\";i:1460031884;}', '1460031884', '1460031884');
INSERT INTO `yii2_auth_rule` VALUES ('message/add', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:11:\"message/add\";s:9:\"createdAt\";i:1517208189;s:9:\"updatedAt\";i:1517208189;}', '1517208189', '1517208189');
INSERT INTO `yii2_auth_rule` VALUES ('message/detail', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:14:\"message/detail\";s:9:\"createdAt\";i:1517918498;s:9:\"updatedAt\";i:1517918498;}', '1517918498', '1517918498');
INSERT INTO `yii2_auth_rule` VALUES ('message/get-ajax', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:16:\"message/get-ajax\";s:9:\"createdAt\";i:1517918499;s:9:\"updatedAt\";i:1517918499;}', '1517918499', '1517918499');
INSERT INTO `yii2_auth_rule` VALUES ('message/index', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:13:\"message/index\";s:9:\"createdAt\";i:1517208190;s:9:\"updatedAt\";i:1517208190;}', '1517208190', '1517208190');
INSERT INTO `yii2_auth_rule` VALUES ('message/update-redis', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:20:\"message/update-redis\";s:9:\"createdAt\";i:1518148568;s:9:\"updatedAt\";i:1518148568;}', '1518148568', '1518148568');
INSERT INTO `yii2_auth_rule` VALUES ('model/add', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:9:\"model/add\";s:9:\"createdAt\";i:1460031882;s:9:\"updatedAt\";i:1460031882;}', '1460031882', '1460031882');
INSERT INTO `yii2_auth_rule` VALUES ('model/edit', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:10:\"model/edit\";s:9:\"createdAt\";i:1460031883;s:9:\"updatedAt\";i:1460031883;}', '1460031883', '1460031883');
INSERT INTO `yii2_auth_rule` VALUES ('Model/generate', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:14:\"Model/generate\";s:9:\"createdAt\";i:1460031019;s:9:\"updatedAt\";i:1460031019;}', '1460031019', '1460031019');
INSERT INTO `yii2_auth_rule` VALUES ('Model/index', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:11:\"Model/index\";s:9:\"createdAt\";i:1460031882;s:9:\"updatedAt\";i:1460031882;}', '1460031882', '1460031882');
INSERT INTO `yii2_auth_rule` VALUES ('model/setStatus', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:15:\"model/setStatus\";s:9:\"createdAt\";i:1460031883;s:9:\"updatedAt\";i:1460031883;}', '1460031883', '1460031883');
INSERT INTO `yii2_auth_rule` VALUES ('model/update', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:12:\"model/update\";s:9:\"createdAt\";i:1460031883;s:9:\"updatedAt\";i:1460031883;}', '1460031883', '1460031883');
INSERT INTO `yii2_auth_rule` VALUES ('order/add', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:9:\"order/add\";s:9:\"createdAt\";i:1476438050;s:9:\"updatedAt\";i:1476438050;}', '1476438050', '1476438050');
INSERT INTO `yii2_auth_rule` VALUES ('order/delete', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:12:\"order/delete\";s:9:\"createdAt\";i:1476438049;s:9:\"updatedAt\";i:1476438049;}', '1476438049', '1476438049');
INSERT INTO `yii2_auth_rule` VALUES ('order/edit', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:10:\"order/edit\";s:9:\"createdAt\";i:1476438049;s:9:\"updatedAt\";i:1476438049;}', '1476438049', '1476438049');
INSERT INTO `yii2_auth_rule` VALUES ('order/index', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:11:\"order/index\";s:9:\"createdAt\";i:1472528088;s:9:\"updatedAt\";i:1472528088;}', '1472528088', '1472528088');
INSERT INTO `yii2_auth_rule` VALUES ('other', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:5:\"other\";s:9:\"createdAt\";i:1472528090;s:9:\"updatedAt\";i:1472528090;}', '1472528090', '1472528090');
INSERT INTO `yii2_auth_rule` VALUES ('report/index', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:12:\"report/index\";s:9:\"createdAt\";i:1517365262;s:9:\"updatedAt\";i:1517365262;}', '1517365262', '1517365262');
INSERT INTO `yii2_auth_rule` VALUES ('shop/add', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:8:\"shop/add\";s:9:\"createdAt\";i:1476437985;s:9:\"updatedAt\";i:1476437985;}', '1476437985', '1476437985');
INSERT INTO `yii2_auth_rule` VALUES ('shop/delete', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:11:\"shop/delete\";s:9:\"createdAt\";i:1476437985;s:9:\"updatedAt\";i:1476437985;}', '1476437985', '1476437985');
INSERT INTO `yii2_auth_rule` VALUES ('shop/edit', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:9:\"shop/edit\";s:9:\"createdAt\";i:1476437985;s:9:\"updatedAt\";i:1476437985;}', '1476437985', '1476437985');
INSERT INTO `yii2_auth_rule` VALUES ('shop/group', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:10:\"shop/group\";s:9:\"createdAt\";i:1472528088;s:9:\"updatedAt\";i:1472528088;}', '1472528088', '1472528088');
INSERT INTO `yii2_auth_rule` VALUES ('shop/index', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:10:\"shop/index\";s:9:\"createdAt\";i:1481279433;s:9:\"updatedAt\";i:1481279433;}', '1481279433', '1481279433');
INSERT INTO `yii2_auth_rule` VALUES ('shop/index&type=1', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:17:\"shop/index&type=1\";s:9:\"createdAt\";i:1472528087;s:9:\"updatedAt\";i:1472528087;}', '1472528087', '1472528087');
INSERT INTO `yii2_auth_rule` VALUES ('shop/index&type=2', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:17:\"shop/index&type=2\";s:9:\"createdAt\";i:1472528087;s:9:\"updatedAt\";i:1472528087;}', '1472528087', '1472528087');
INSERT INTO `yii2_auth_rule` VALUES ('shop/index&type=3', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:17:\"shop/index&type=3\";s:9:\"createdAt\";i:1472528087;s:9:\"updatedAt\";i:1472528087;}', '1472528087', '1472528087');
INSERT INTO `yii2_auth_rule` VALUES ('shop/index&type=4', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:17:\"shop/index&type=4\";s:9:\"createdAt\";i:1472528088;s:9:\"updatedAt\";i:1472528088;}', '1472528088', '1472528088');
INSERT INTO `yii2_auth_rule` VALUES ('shop/index?type=1', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:17:\"shop/index?type=1\";s:9:\"createdAt\";i:1476437985;s:9:\"updatedAt\";i:1476437985;}', '1476437985', '1476437985');
INSERT INTO `yii2_auth_rule` VALUES ('shop/index?type=2', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:17:\"shop/index?type=2\";s:9:\"createdAt\";i:1476437985;s:9:\"updatedAt\";i:1476437985;}', '1476437985', '1476437985');
INSERT INTO `yii2_auth_rule` VALUES ('shop/index?type=3', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:17:\"shop/index?type=3\";s:9:\"createdAt\";i:1476437986;s:9:\"updatedAt\";i:1476437986;}', '1476437986', '1476437986');
INSERT INTO `yii2_auth_rule` VALUES ('shop/index?type=4', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:17:\"shop/index?type=4\";s:9:\"createdAt\";i:1476437986;s:9:\"updatedAt\";i:1476437986;}', '1476437986', '1476437986');
INSERT INTO `yii2_auth_rule` VALUES ('think/add', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:9:\"think/add\";s:9:\"createdAt\";i:1460031883;s:9:\"updatedAt\";i:1460031883;}', '1460031883', '1460031883');
INSERT INTO `yii2_auth_rule` VALUES ('think/edit', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:10:\"think/edit\";s:9:\"createdAt\";i:1460031019;s:9:\"updatedAt\";i:1460031019;}', '1460031019', '1460031019');
INSERT INTO `yii2_auth_rule` VALUES ('think/lists', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:11:\"think/lists\";s:9:\"createdAt\";i:1460031020;s:9:\"updatedAt\";i:1460031020;}', '1460031020', '1460031020');
INSERT INTO `yii2_auth_rule` VALUES ('train/add', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:9:\"train/add\";s:9:\"createdAt\";i:1476437985;s:9:\"updatedAt\";i:1476437985;}', '1476437985', '1476437985');
INSERT INTO `yii2_auth_rule` VALUES ('train/delete', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:12:\"train/delete\";s:9:\"createdAt\";i:1476437984;s:9:\"updatedAt\";i:1476437984;}', '1476437984', '1476437984');
INSERT INTO `yii2_auth_rule` VALUES ('train/edit', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:10:\"train/edit\";s:9:\"createdAt\";i:1476437984;s:9:\"updatedAt\";i:1476437984;}', '1476437984', '1476437984');
INSERT INTO `yii2_auth_rule` VALUES ('train/index', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:11:\"train/index\";s:9:\"createdAt\";i:1472528088;s:9:\"updatedAt\";i:1472528088;}', '1472528088', '1472528088');
INSERT INTO `yii2_auth_rule` VALUES ('traintype/delete', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:16:\"traintype/delete\";s:9:\"createdAt\";i:1476437984;s:9:\"updatedAt\";i:1476437984;}', '1476437984', '1476437984');
INSERT INTO `yii2_auth_rule` VALUES ('traintype/edit', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:14:\"traintype/edit\";s:9:\"createdAt\";i:1476437984;s:9:\"updatedAt\";i:1476437984;}', '1476437984', '1476437984');
INSERT INTO `yii2_auth_rule` VALUES ('traintype/index', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:15:\"traintype/index\";s:9:\"createdAt\";i:1476437984;s:9:\"updatedAt\";i:1476437984;}', '1476437984', '1476437984');
INSERT INTO `yii2_auth_rule` VALUES ('user/action', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:11:\"user/action\";s:9:\"createdAt\";i:1460031878;s:9:\"updatedAt\";i:1460031878;}', '1460031878', '1460031878');
INSERT INTO `yii2_auth_rule` VALUES ('user/add', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:8:\"user/add\";s:9:\"createdAt\";i:1460031877;s:9:\"updatedAt\";i:1460031877;}', '1460031877', '1460031877');
INSERT INTO `yii2_auth_rule` VALUES ('user/addaction', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:14:\"user/addaction\";s:9:\"createdAt\";i:1460031878;s:9:\"updatedAt\";i:1460031878;}', '1460031878', '1460031878');
INSERT INTO `yii2_auth_rule` VALUES ('user/auth', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:9:\"user/auth\";s:9:\"createdAt\";i:1460031878;s:9:\"updatedAt\";i:1460031878;}', '1460031878', '1460031878');
INSERT INTO `yii2_auth_rule` VALUES ('User/changeStatus?method=deleteUser', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:35:\"User/changeStatus?method=deleteUser\";s:9:\"createdAt\";i:1460031879;s:9:\"updatedAt\";i:1460031879;}', '1460031879', '1460031879');
INSERT INTO `yii2_auth_rule` VALUES ('user/changeStatus?method=forbidUser', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:35:\"user/changeStatus?method=forbidUser\";s:9:\"createdAt\";i:1460031878;s:9:\"updatedAt\";i:1460031878;}', '1460031878', '1460031878');
INSERT INTO `yii2_auth_rule` VALUES ('user/changeStatus?method=resumeUser', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:35:\"user/changeStatus?method=resumeUser\";s:9:\"createdAt\";i:1460031878;s:9:\"updatedAt\";i:1460031878;}', '1460031878', '1460031878');
INSERT INTO `yii2_auth_rule` VALUES ('user/delete', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:11:\"user/delete\";s:9:\"createdAt\";i:1476438050;s:9:\"updatedAt\";i:1476438050;}', '1476438050', '1476438050');
INSERT INTO `yii2_auth_rule` VALUES ('user/edit', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:9:\"user/edit\";s:9:\"createdAt\";i:1476438051;s:9:\"updatedAt\";i:1476438051;}', '1476438051', '1476438051');
INSERT INTO `yii2_auth_rule` VALUES ('user/editaction', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:15:\"user/editaction\";s:9:\"createdAt\";i:1460031878;s:9:\"updatedAt\";i:1460031878;}', '1460031878', '1460031878');
INSERT INTO `yii2_auth_rule` VALUES ('user/index', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:10:\"user/index\";s:9:\"createdAt\";i:1459148617;s:9:\"updatedAt\";i:1459148627;}', '1456542110', '1456542120');
INSERT INTO `yii2_auth_rule` VALUES ('user/saveAction', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:15:\"user/saveAction\";s:9:\"createdAt\";i:1460031878;s:9:\"updatedAt\";i:1460031878;}', '1460031878', '1460031878');
INSERT INTO `yii2_auth_rule` VALUES ('user/setStatus', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:14:\"user/setStatus\";s:9:\"createdAt\";i:1460031878;s:9:\"updatedAt\";i:1460031878;}', '1460031878', '1460031878');
INSERT INTO `yii2_auth_rule` VALUES ('user/updateNickname', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:19:\"user/updateNickname\";s:9:\"createdAt\";i:1460031881;s:9:\"updatedAt\";i:1460031881;}', '1460031881', '1460031881');
INSERT INTO `yii2_auth_rule` VALUES ('user/updatePassword', 'O:21:\"common\\core\\rbac\\Rule\":3:{s:4:\"name\";s:19:\"user/updatePassword\";s:9:\"createdAt\";i:1460031880;s:9:\"updatedAt\";i:1460031880;}', '1460031880', '1460031880');

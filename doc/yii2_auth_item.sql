/*
Navicat MySQL Data Transfer

Source Server         : 47.100.101.44
Source Server Version : 50720
Source Host           : 47.100.101.44:3306
Source Database       : message_www

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-02-24 09:57:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for yii2_auth_item
-- ----------------------------
DROP TABLE IF EXISTS `yii2_auth_item`;
CREATE TABLE `yii2_auth_item` (
  `name` varchar(64) NOT NULL COMMENT '角色或权限名称',
  `type` int(11) NOT NULL COMMENT '1角色 2权限',
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of yii2_auth_item
-- ----------------------------
INSERT INTO `yii2_auth_item` VALUES ('account/index', '2', null, 'account/index', null, '1517365262', '1517365262');
INSERT INTO `yii2_auth_item` VALUES ('action/actionlog', '2', '', 'action/actionlog', '', '1460031880', '1460031880');
INSERT INTO `yii2_auth_item` VALUES ('action/edit', '2', '', 'action/edit', '', '1460031880', '1460031880');
INSERT INTO `yii2_auth_item` VALUES ('ad/add', '2', null, 'ad/add', null, '1476437984', '1476437984');
INSERT INTO `yii2_auth_item` VALUES ('ad/delete', '2', null, 'ad/delete', null, '1476437984', '1476437984');
INSERT INTO `yii2_auth_item` VALUES ('ad/edit', '2', null, 'ad/edit', null, '1476437984', '1476437984');
INSERT INTO `yii2_auth_item` VALUES ('ad/index', '2', null, 'ad/index', null, '1476437984', '1476437984');
INSERT INTO `yii2_auth_item` VALUES ('Addons/addHook', '2', null, 'Addons/addHook', null, '1472528088', '1472528088');
INSERT INTO `yii2_auth_item` VALUES ('Addons/adminList', '2', null, 'Addons/adminList', null, '1472528088', '1472528088');
INSERT INTO `yii2_auth_item` VALUES ('Addons/edithook', '2', null, 'Addons/edithook', null, '1472528088', '1472528088');
INSERT INTO `yii2_auth_item` VALUES ('Addons/execute', '2', null, 'Addons/execute', null, '1472528088', '1472528088');
INSERT INTO `yii2_auth_item` VALUES ('Addons/hooks', '2', null, 'Addons/hooks', null, '1472528088', '1472528088');
INSERT INTO `yii2_auth_item` VALUES ('Addons/index', '2', '', 'Addons/index', '', '1460030539', '1460030539');
INSERT INTO `yii2_auth_item` VALUES ('admin-log/index', '2', null, 'admin-log/index', null, '1517896060', '1517896060');
INSERT INTO `yii2_auth_item` VALUES ('admin-log/view', '2', null, 'admin-log/view', null, '1517896060', '1517896060');
INSERT INTO `yii2_auth_item` VALUES ('admin/add', '2', null, 'admin/add', null, '1472528089', '1472528089');
INSERT INTO `yii2_auth_item` VALUES ('admin/auth', '2', null, 'admin/auth', null, '1472528089', '1472528089');
INSERT INTO `yii2_auth_item` VALUES ('admin/edit', '2', null, 'admin/edit', null, '1472528089', '1472528089');
INSERT INTO `yii2_auth_item` VALUES ('admin/index', '2', null, 'admin/index', null, '1472528089', '1472528089');
INSERT INTO `yii2_auth_item` VALUES ('administrator', '1', 'administrator', null, null, '1465352150', '1517896016');
INSERT INTO `yii2_auth_item` VALUES ('article-cat/add', '2', null, 'article-cat/add', null, '1489471673', '1489471673');
INSERT INTO `yii2_auth_item` VALUES ('article-cat/delete', '2', null, 'article-cat/delete', null, '1496652380', '1496652380');
INSERT INTO `yii2_auth_item` VALUES ('article-cat/edit', '2', null, 'article-cat/edit', null, '1489471673', '1489471673');
INSERT INTO `yii2_auth_item` VALUES ('article-cat/index', '2', null, 'article-cat/index', null, '1489471673', '1489471673');
INSERT INTO `yii2_auth_item` VALUES ('article/add', '2', '', 'article/add', '', '1460027926', '1460027926');
INSERT INTO `yii2_auth_item` VALUES ('article/autoSave', '2', '', 'article/autoSave', '', '1460027926', '1460027926');
INSERT INTO `yii2_auth_item` VALUES ('article/batchOperate', '2', '', 'article/batchOperate', '', '1460027926', '1460027926');
INSERT INTO `yii2_auth_item` VALUES ('article/clear', '2', '', 'article/clear', '', '1460027927', '1460027927');
INSERT INTO `yii2_auth_item` VALUES ('article/copy', '2', '', 'article/copy', '', '1460027926', '1460027926');
INSERT INTO `yii2_auth_item` VALUES ('article/delete', '2', null, 'article/delete', null, '1496652380', '1496652380');
INSERT INTO `yii2_auth_item` VALUES ('article/edit', '2', '', 'article/edit', '', '1460027926', '1460027926');
INSERT INTO `yii2_auth_item` VALUES ('Article/examine', '2', '', 'Article/examine', '', '1460027927', '1460027927');
INSERT INTO `yii2_auth_item` VALUES ('article/index', '2', '', 'article/index', '', '1460027926', '1460027926');
INSERT INTO `yii2_auth_item` VALUES ('article/move', '2', '', 'article/move', '', '1460027926', '1460027926');
INSERT INTO `yii2_auth_item` VALUES ('article/paste', '2', '', 'article/paste', '', '1460027926', '1460027926');
INSERT INTO `yii2_auth_item` VALUES ('article/permit', '2', '', 'article/permit', '', '1460027927', '1460027927');
INSERT INTO `yii2_auth_item` VALUES ('article/recycle', '2', '', 'article/recycle', '', '1460027927', '1460027927');
INSERT INTO `yii2_auth_item` VALUES ('article/setStatus', '2', '', 'article/setStatus', '', '1460027926', '1460027926');
INSERT INTO `yii2_auth_item` VALUES ('Article/sort', '2', '', 'Article/sort', '', '1460027927', '1460027927');
INSERT INTO `yii2_auth_item` VALUES ('article/update', '2', '', 'article/update', '', '1460027926', '1460027926');
INSERT INTO `yii2_auth_item` VALUES ('attribute/add', '2', '', 'attribute/add', '', '1460031881', '1460031881');
INSERT INTO `yii2_auth_item` VALUES ('attribute/edit', '2', '', 'attribute/edit', '', '1460031881', '1460031881');
INSERT INTO `yii2_auth_item` VALUES ('attribute/index1', '2', '', 'attribute/index1', '', '1460031881', '1460031881');
INSERT INTO `yii2_auth_item` VALUES ('attribute/setStatus', '2', '', 'attribute/setStatus', '', '1460031881', '1460031881');
INSERT INTO `yii2_auth_item` VALUES ('attribute/update', '2', '', 'attribute/update', '', '1460031881', '1460031881');
INSERT INTO `yii2_auth_item` VALUES ('attributes/index', '2', null, 'attributes/index', null, '1489471673', '1489471673');
INSERT INTO `yii2_auth_item` VALUES ('auth/access', '2', '', 'auth/access', '', '1460031879', '1460031879');
INSERT INTO `yii2_auth_item` VALUES ('auth/add', '2', null, 'auth/add', null, '1472528089', '1472528089');
INSERT INTO `yii2_auth_item` VALUES ('auth/addToCategory', '2', '', 'auth/addToCategory', '', '1460031880', '1460031880');
INSERT INTO `yii2_auth_item` VALUES ('auth/addToGroup', '2', '', 'auth/addToGroup', '', '1460031880', '1460031880');
INSERT INTO `yii2_auth_item` VALUES ('auth/addToModel', '2', '', 'auth/addToModel', '', '1460031880', '1460031880');
INSERT INTO `yii2_auth_item` VALUES ('auth/auth', '2', '', 'auth/auth', '', '1460031879', '1460031879');
INSERT INTO `yii2_auth_item` VALUES ('auth/category', '2', '', 'auth/category', '', '1460031880', '1460031880');
INSERT INTO `yii2_auth_item` VALUES ('auth/changeStatus?method=deleteGroup', '2', '', 'auth/changeStatus?method=deleteGroup', '', '1460031879', '1460031879');
INSERT INTO `yii2_auth_item` VALUES ('auth/changeStatus?method=forbidGroup', '2', '', 'auth/changeStatus?method=forbidGroup', '', '1460031879', '1460031879');
INSERT INTO `yii2_auth_item` VALUES ('auth/changeStatus?method=resumeGroup', '2', '', 'auth/changeStatus?method=resumeGroup', '', '1460031879', '1460031879');
INSERT INTO `yii2_auth_item` VALUES ('auth/createGroup', '2', '', 'auth/createGroup', '', '1460031879', '1460031879');
INSERT INTO `yii2_auth_item` VALUES ('auth/delete', '2', null, 'auth/delete', null, '1472528089', '1472528089');
INSERT INTO `yii2_auth_item` VALUES ('auth/edit', '2', null, 'auth/edit', null, '1472528089', '1472528089');
INSERT INTO `yii2_auth_item` VALUES ('auth/editGroup', '2', '', 'auth/editGroup', '', '1460031879', '1460031879');
INSERT INTO `yii2_auth_item` VALUES ('auth/index', '2', '', 'auth/index', '', '1200000000', '1300000000');
INSERT INTO `yii2_auth_item` VALUES ('auth/modelauth', '2', '', 'auth/modelauth', '', '1460031880', '1460031880');
INSERT INTO `yii2_auth_item` VALUES ('auth/removeFromGroup', '2', '', 'auth/removeFromGroup', '', '1460031880', '1460031880');
INSERT INTO `yii2_auth_item` VALUES ('auth/user', '2', '', 'auth/user', '', '1460031880', '1460031880');
INSERT INTO `yii2_auth_item` VALUES ('auth/writeGroup', '2', '', 'auth/writeGroup', '', '1460031879', '1460031879');
INSERT INTO `yii2_auth_item` VALUES ('category/add', '2', '', 'category/add', '', '1460031882', '1460031882');
INSERT INTO `yii2_auth_item` VALUES ('category/edit', '2', '', 'category/edit', '', '1460031882', '1460031882');
INSERT INTO `yii2_auth_item` VALUES ('category/index', '2', '', 'category/index', '', '1460031882', '1460031882');
INSERT INTO `yii2_auth_item` VALUES ('category/operate/type/merge', '2', '', 'category/operate/type/merge', '', '1460031882', '1460031882');
INSERT INTO `yii2_auth_item` VALUES ('category/operate/type/move', '2', '', 'category/operate/type/move', '', '1460031882', '1460031882');
INSERT INTO `yii2_auth_item` VALUES ('category/remove', '2', '', 'category/remove', '', '1460031882', '1460031882');
INSERT INTO `yii2_auth_item` VALUES ('certificate/delete', '2', null, 'certificate/delete', null, '1476437984', '1476437984');
INSERT INTO `yii2_auth_item` VALUES ('certificate/edit', '2', null, 'certificate/edit', null, '1476437983', '1476437983');
INSERT INTO `yii2_auth_item` VALUES ('certificate/index', '2', null, 'certificate/index', null, '1476437983', '1476437983');
INSERT INTO `yii2_auth_item` VALUES ('channel/add', '2', '', 'channel/add', '', '1460031884', '1460031884');
INSERT INTO `yii2_auth_item` VALUES ('channel/del', '2', '', 'channel/del', '', '1460031885', '1460031885');
INSERT INTO `yii2_auth_item` VALUES ('channel/edit', '2', '', 'channel/edit', '', '1460031884', '1460031884');
INSERT INTO `yii2_auth_item` VALUES ('channel/index', '2', '', 'channel/index', '', '1460031884', '1460031884');
INSERT INTO `yii2_auth_item` VALUES ('check/edit', '2', null, 'check/edit', null, '1518156202', '1518156202');
INSERT INTO `yii2_auth_item` VALUES ('check/index', '2', null, 'check/index', null, '1518156202', '1518156202');
INSERT INTO `yii2_auth_item` VALUES ('check/reject', '2', null, 'check/reject', null, '1518370008', '1518370008');
INSERT INTO `yii2_auth_item` VALUES ('checkman/add', '2', null, 'checkman/add', null, '1518415037', '1518415037');
INSERT INTO `yii2_auth_item` VALUES ('checkman/edit', '2', null, 'checkman/edit', null, '1518415037', '1518415037');
INSERT INTO `yii2_auth_item` VALUES ('checkman/index', '2', null, 'checkman/index', null, '1518415036', '1518415036');
INSERT INTO `yii2_auth_item` VALUES ('config/add', '2', '', 'config/add', '', '1460031883', '1460031883');
INSERT INTO `yii2_auth_item` VALUES ('config/del', '2', '', 'config/del', '', '1460031883', '1460031883');
INSERT INTO `yii2_auth_item` VALUES ('config/edit', '2', '', 'config/edit', '', '1460031883', '1460031883');
INSERT INTO `yii2_auth_item` VALUES ('config/group', '2', '', 'config/group', '', '1452653200', '1452653210');
INSERT INTO `yii2_auth_item` VALUES ('config/index', '2', '', 'config/index', '', '1452653200', '1452653210');
INSERT INTO `yii2_auth_item` VALUES ('config/save', '2', '', 'config/save', '', '1460031883', '1460031883');
INSERT INTO `yii2_auth_item` VALUES ('Config/sort', '2', '', 'Config/sort', '', '1460031884', '1460031884');
INSERT INTO `yii2_auth_item` VALUES ('customer/add', '2', null, 'customer/add', null, '1518407073', '1518407073');
INSERT INTO `yii2_auth_item` VALUES ('customer/edit', '2', null, 'customer/edit', null, '1518407073', '1518407073');
INSERT INTO `yii2_auth_item` VALUES ('customer/index', '2', null, 'customer/index', null, '1518407072', '1518407072');
INSERT INTO `yii2_auth_item` VALUES ('customer/recharge', '2', null, 'customer/recharge', null, '1518423707', '1518423707');
INSERT INTO `yii2_auth_item` VALUES ('database/del', '2', '', 'database/del', '', '1460031882', '1460031882');
INSERT INTO `yii2_auth_item` VALUES ('database/export', '2', '', 'database/export', '', '1460031881', '1460031881');
INSERT INTO `yii2_auth_item` VALUES ('database/import', '2', '', 'database/import', '', '1460031882', '1460031882');
INSERT INTO `yii2_auth_item` VALUES ('database/index?type=export', '2', '数据库导出', 'database/index?type=export', '', '120000000', '130000000');
INSERT INTO `yii2_auth_item` VALUES ('database/index?type=import', '2', '数据库导入', 'database/index?type=import', '', '1200000000', '1300000000');
INSERT INTO `yii2_auth_item` VALUES ('database/optimize', '2', '', 'database/optimize', '', '1460031881', '1460031881');
INSERT INTO `yii2_auth_item` VALUES ('database/repair', '2', '', 'database/repair', '', '1460031881', '1460031881');
INSERT INTO `yii2_auth_item` VALUES ('goods/add', '2', null, 'goods/add', null, '1496652380', '1496652380');
INSERT INTO `yii2_auth_item` VALUES ('goods/delete', '2', null, 'goods/delete', null, '1496652380', '1496652380');
INSERT INTO `yii2_auth_item` VALUES ('goods/edit', '2', null, 'goods/edit', null, '1489471673', '1489471673');
INSERT INTO `yii2_auth_item` VALUES ('goods/index', '2', null, 'goods/index', null, '1489471673', '1489471673');
INSERT INTO `yii2_auth_item` VALUES ('group/add', '2', null, 'group/add', null, '1476437986', '1476437986');
INSERT INTO `yii2_auth_item` VALUES ('group/delete', '2', null, 'group/delete', null, '1476437986', '1476437986');
INSERT INTO `yii2_auth_item` VALUES ('group/edit', '2', null, 'group/edit', null, '1476437986', '1476437986');
INSERT INTO `yii2_auth_item` VALUES ('group/index', '2', null, 'group/index', null, '1476437986', '1476437986');
INSERT INTO `yii2_auth_item` VALUES ('home/index', '2', '', 'home/index', '', '1356542542', '1425652320');
INSERT INTO `yii2_auth_item` VALUES ('index/index', '2', null, 'index/index', null, '1517469179', '1517469179');
INSERT INTO `yii2_auth_item` VALUES ('log/index', '2', null, 'log/index', null, '1472528090', '1472528090');
INSERT INTO `yii2_auth_item` VALUES ('log/view', '2', null, 'log/view', null, '1472528090', '1472528090');
INSERT INTO `yii2_auth_item` VALUES ('login/logout', '2', '', 'login/logout', '', '1356565230', '1452653210');
INSERT INTO `yii2_auth_item` VALUES ('manager/add', '2', null, 'manager/add', null, '1518407074', '1518407074');
INSERT INTO `yii2_auth_item` VALUES ('manager/edit', '2', null, 'manager/edit', null, '1518407074', '1518407074');
INSERT INTO `yii2_auth_item` VALUES ('manager/index', '2', null, 'manager/index', null, '1518407073', '1518407073');
INSERT INTO `yii2_auth_item` VALUES ('menu/add', '2', '', 'menu/add', '', '1460031884', '1460031884');
INSERT INTO `yii2_auth_item` VALUES ('menu/edit', '2', '', 'menu/edit', '', '1460031884', '1460031884');
INSERT INTO `yii2_auth_item` VALUES ('Menu/import', '2', '', 'Menu/import', '', '1460031884', '1460031884');
INSERT INTO `yii2_auth_item` VALUES ('menu/index', '2', '', 'menu/index', '', '1452653200', '1452653210');
INSERT INTO `yii2_auth_item` VALUES ('Menu/sort', '2', '', 'Menu/sort', '', '1460031884', '1460031884');
INSERT INTO `yii2_auth_item` VALUES ('message/add', '2', null, 'message/add', null, '1517208189', '1517208189');
INSERT INTO `yii2_auth_item` VALUES ('message/detail', '2', null, 'message/detail', null, '1517918499', '1517918499');
INSERT INTO `yii2_auth_item` VALUES ('message/get-ajax', '2', null, 'message/get-ajax', null, '1517918499', '1517918499');
INSERT INTO `yii2_auth_item` VALUES ('message/index', '2', null, 'message/index', null, '1517208190', '1517208190');
INSERT INTO `yii2_auth_item` VALUES ('message/update-redis', '2', null, 'message/update-redis', null, '1518148568', '1518148568');
INSERT INTO `yii2_auth_item` VALUES ('model/add', '2', '', 'model/add', '', '1460031882', '1460031882');
INSERT INTO `yii2_auth_item` VALUES ('model/edit', '2', '', 'model/edit', '', '1460031883', '1460031883');
INSERT INTO `yii2_auth_item` VALUES ('Model/generate', '2', '', 'Model/generate', '', '1460031019', '1460031019');
INSERT INTO `yii2_auth_item` VALUES ('Model/index', '2', '', 'Model/index', '', '1460031882', '1460031882');
INSERT INTO `yii2_auth_item` VALUES ('model/setStatus', '2', '', 'model/setStatus', '', '1460031883', '1460031883');
INSERT INTO `yii2_auth_item` VALUES ('model/update', '2', '', 'model/update', '', '1460031883', '1460031883');
INSERT INTO `yii2_auth_item` VALUES ('order/add', '2', null, 'order/add', null, '1476438050', '1476438050');
INSERT INTO `yii2_auth_item` VALUES ('order/delete', '2', null, 'order/delete', null, '1476438050', '1476438050');
INSERT INTO `yii2_auth_item` VALUES ('order/edit', '2', null, 'order/edit', null, '1476438049', '1476438049');
INSERT INTO `yii2_auth_item` VALUES ('order/index', '2', null, 'order/index', null, '1472528088', '1472528088');
INSERT INTO `yii2_auth_item` VALUES ('other', '2', null, 'other', null, '1472528090', '1472528090');
INSERT INTO `yii2_auth_item` VALUES ('report/index', '2', null, 'report/index', null, '1517365262', '1517365262');
INSERT INTO `yii2_auth_item` VALUES ('shop/add', '2', null, 'shop/add', null, '1476437985', '1476437985');
INSERT INTO `yii2_auth_item` VALUES ('shop/delete', '2', null, 'shop/delete', null, '1476437985', '1476437985');
INSERT INTO `yii2_auth_item` VALUES ('shop/edit', '2', null, 'shop/edit', null, '1476437985', '1476437985');
INSERT INTO `yii2_auth_item` VALUES ('shop/group', '2', null, 'shop/group', null, '1472528088', '1472528088');
INSERT INTO `yii2_auth_item` VALUES ('shop/index', '2', null, 'shop/index', null, '1481279433', '1481279433');
INSERT INTO `yii2_auth_item` VALUES ('shop/index&type=1', '2', null, 'shop/index&type=1', null, '1472528087', '1472528087');
INSERT INTO `yii2_auth_item` VALUES ('shop/index&type=2', '2', null, 'shop/index&type=2', null, '1472528087', '1472528087');
INSERT INTO `yii2_auth_item` VALUES ('shop/index&type=3', '2', null, 'shop/index&type=3', null, '1472528087', '1472528087');
INSERT INTO `yii2_auth_item` VALUES ('shop/index&type=4', '2', null, 'shop/index&type=4', null, '1472528088', '1472528088');
INSERT INTO `yii2_auth_item` VALUES ('shop/index?type=1', '2', null, 'shop/index?type=1', null, '1476437985', '1476437985');
INSERT INTO `yii2_auth_item` VALUES ('shop/index?type=2', '2', null, 'shop/index?type=2', null, '1476437986', '1476437986');
INSERT INTO `yii2_auth_item` VALUES ('shop/index?type=3', '2', null, 'shop/index?type=3', null, '1476437986', '1476437986');
INSERT INTO `yii2_auth_item` VALUES ('shop/index?type=4', '2', null, 'shop/index?type=4', null, '1476437986', '1476437986');
INSERT INTO `yii2_auth_item` VALUES ('think/add', '2', '', 'think/add', '', '1460031883', '1460031883');
INSERT INTO `yii2_auth_item` VALUES ('think/edit', '2', '', 'think/edit', '', '1460031019', '1460031019');
INSERT INTO `yii2_auth_item` VALUES ('think/lists', '2', '', 'think/lists', '', '1460031020', '1460031020');
INSERT INTO `yii2_auth_item` VALUES ('train/add', '2', null, 'train/add', null, '1476437985', '1476437985');
INSERT INTO `yii2_auth_item` VALUES ('train/delete', '2', null, 'train/delete', null, '1476437984', '1476437984');
INSERT INTO `yii2_auth_item` VALUES ('train/edit', '2', null, 'train/edit', null, '1476437984', '1476437984');
INSERT INTO `yii2_auth_item` VALUES ('train/index', '2', null, 'train/index', null, '1472528088', '1472528088');
INSERT INTO `yii2_auth_item` VALUES ('traintype/delete', '2', null, 'traintype/delete', null, '1476437984', '1476437984');
INSERT INTO `yii2_auth_item` VALUES ('traintype/edit', '2', null, 'traintype/edit', null, '1476437984', '1476437984');
INSERT INTO `yii2_auth_item` VALUES ('traintype/index', '2', null, 'traintype/index', null, '1476437984', '1476437984');
INSERT INTO `yii2_auth_item` VALUES ('user/action', '2', '', 'user/action', '', '1460031878', '1460031878');
INSERT INTO `yii2_auth_item` VALUES ('user/add', '2', '', 'user/add', '', '1460031878', '1460031878');
INSERT INTO `yii2_auth_item` VALUES ('user/addaction', '2', '', 'user/addaction', '', '1460031878', '1460031878');
INSERT INTO `yii2_auth_item` VALUES ('user/auth', '2', '', 'user/auth', '', '1460031878', '1460031878');
INSERT INTO `yii2_auth_item` VALUES ('User/changeStatus?method=deleteUser', '2', '', 'User/changeStatus?method=deleteUser', '', '1460031879', '1460031879');
INSERT INTO `yii2_auth_item` VALUES ('user/changeStatus?method=forbidUser', '2', '', 'user/changeStatus?method=forbidUser', '', '1460031878', '1460031878');
INSERT INTO `yii2_auth_item` VALUES ('user/changeStatus?method=resumeUser', '2', '', 'user/changeStatus?method=resumeUser', '', '1460031878', '1460031878');
INSERT INTO `yii2_auth_item` VALUES ('user/delete', '2', null, 'user/delete', null, '1476438050', '1476438050');
INSERT INTO `yii2_auth_item` VALUES ('user/edit', '2', null, 'user/edit', null, '1476438051', '1476438051');
INSERT INTO `yii2_auth_item` VALUES ('user/editaction', '2', '', 'user/editaction', '', '1460031878', '1460031878');
INSERT INTO `yii2_auth_item` VALUES ('user/index', '2', '', 'user/index', '', '1200000000', '1230000000');
INSERT INTO `yii2_auth_item` VALUES ('user/saveAction', '2', '', 'user/saveAction', '', '1460031878', '1460031878');
INSERT INTO `yii2_auth_item` VALUES ('user/setStatus', '2', '', 'user/setStatus', '', '1460031878', '1460031878');
INSERT INTO `yii2_auth_item` VALUES ('user/updateNickname', '2', '', 'user/updateNickname', '', '1460031881', '1460031881');
INSERT INTO `yii2_auth_item` VALUES ('user/updatePassword', '2', '', 'user/updatePassword', '', '1460031881', '1460031881');
INSERT INTO `yii2_auth_item` VALUES ('商户', '1', '短信商户', null, null, '1517206384', '1517986423');
INSERT INTO `yii2_auth_item` VALUES ('审核员', '1', '短信审核员', null, null, '1518148782', '1518148798');

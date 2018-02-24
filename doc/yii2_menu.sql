/*
Navicat MySQL Data Transfer

Source Server         : 47.100.101.44
Source Server Version : 50720
Source Host           : 47.100.101.44:3306
Source Database       : message_www

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-02-24 10:03:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for yii2_menu
-- ----------------------------
DROP TABLE IF EXISTS `yii2_menu`;
CREATE TABLE `yii2_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档ID',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `url` char(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `hide` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `group` varchar(50) DEFAULT '' COMMENT '分组',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=209 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2_menu
-- ----------------------------
INSERT INTO `yii2_menu` VALUES ('1', '首页', '0', '1', 'home/index', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('3', '文章管理', '2', '2', 'article/index', '0', '文章管理|icon-note', '1');
INSERT INTO `yii2_menu` VALUES ('4', '新增', '3', '0', 'article/add', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('5', '编辑', '3', '0', 'article/edit', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('6', '删除', '3', '0', 'article/delete', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('173', '单页文章', '2', '1', 'page/index', '0', '单页文章|icon-docs', '1');
INSERT INTO `yii2_menu` VALUES ('172', '删除', '138', '0', 'goods/delete', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('13', '回收站', '2', '99', 'article/recycle', '1', '内容', '1');
INSERT INTO `yii2_menu` VALUES ('14', '还原', '13', '0', 'article/permit', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('15', '清空', '13', '0', 'article/clear', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('16', '用户', '0', '7', 'admin/index', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('17', '管理员管理', '16', '1', 'admin/index', '0', '后台用户|icon-user', '1');
INSERT INTO `yii2_menu` VALUES ('18', '新增管理员', '17', '0', 'admin/add', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('137', '更新', '17', '0', 'admin/edit', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('144', '商城套餐', '2', '29', 'group/index', '0', '商城管理|icon-basket', '1');
INSERT INTO `yii2_menu` VALUES ('155', '删除', '144', '0', 'group/delete', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('27', '权限管理', '16', '2', 'auth/index', '0', '后台用户|icon-user', '1');
INSERT INTO `yii2_menu` VALUES ('28', '删除', '27', '0', 'auth/delete', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('29', '编辑', '27', '0', 'auth/edit', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('30', '恢复', '27', '0', 'auth/add', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('154', '编辑', '144', '0', 'group/edit', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('153', '添加', '144', '0', 'group/add', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('34', '授权', '27', '0', 'auth/auth', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('35', '访问授权', '27', '0', 'auth/access', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('36', '成员授权', '27', '0', 'auth/user', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('145', '添加', '142', '0', 'user/add', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('146', '编辑', '142', '0', 'user/edit', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('147', '删除', '142', '0', 'user/delete', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('44', '订单列表', '43', '1', 'order/index', '0', '订单管理|fa fa-cny', '1');
INSERT INTO `yii2_menu` VALUES ('55', '添加', '44', '0', 'order/add', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('56', '编辑', '44', '0', 'order/edit', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('148', '删除', '44', '0', 'order/delete', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('63', '属性管理', '68', '0', 'attribute/index1', '1', '', '1');
INSERT INTO `yii2_menu` VALUES ('64', '新增', '63', '0', 'attribute/add', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('65', '编辑', '63', '0', 'attribute/edit', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('66', '改变状态', '63', '0', 'attribute/setStatus', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('67', '保存数据', '63', '0', 'attribute/update', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('68', '系统', '0', '8', 'menu/index', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('69', '网站设置', '68', '1', 'config/group', '1', '系统设置|icon-settings', '1');
INSERT INTO `yii2_menu` VALUES ('70', '配置管理', '68', '1', 'config/index', '1', '系统设置|icon-settings', '1');
INSERT INTO `yii2_menu` VALUES ('71', '编辑', '70', '0', 'config/edit', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('72', '删除', '70', '0', 'config/del', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('73', '新增', '70', '0', 'config/add', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('74', '保存', '70', '0', 'config/save', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('75', '菜单管理', '68', '5', 'menu/index', '0', '系统设置|icon-settings', '1');
INSERT INTO `yii2_menu` VALUES ('80', '分类管理', '2', '2', 'article-cat/index', '0', '文章管理|icon-note', '1');
INSERT INTO `yii2_menu` VALUES ('81', '编辑', '80', '0', 'article-cat/edit', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('82', '新增', '80', '0', 'article-cat/add', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('83', '删除', '80', '0', 'article-cat/delete', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('171', '编辑', '138', '0', 'goods/edit', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('170', '添加', '138', '0', 'goods/add', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('86', '备份数据库', '68', '10', 'database/index?type=export', '0', '数据备份|fa fa-database', '1');
INSERT INTO `yii2_menu` VALUES ('87', '备份', '86', '0', 'database/export', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('88', '优化表', '86', '0', 'database/optimize', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('89', '修复表', '86', '0', 'database/repair', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('90', '还原数据库', '68', '11', 'database/index?type=import', '0', '数据备份|fa fa-database', '1');
INSERT INTO `yii2_menu` VALUES ('91', '恢复', '90', '0', 'database/import', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('92', '删除', '90', '0', 'database/del', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('96', '新增', '75', '0', 'menu/add', '0', '系统设置|icon-legal', '1');
INSERT INTO `yii2_menu` VALUES ('98', '编辑', '75', '0', 'menu/edit', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('106', '行为日志', '16', '30', 'admin-log/index', '0', '用户日志|icon-check', '1');
INSERT INTO `yii2_menu` VALUES ('108', '修改密码', '16', '0', 'user/updatePassword', '1', '', '1');
INSERT INTO `yii2_menu` VALUES ('109', '修改昵称', '16', '0', 'user/updateNickname', '1', '', '1');
INSERT INTO `yii2_menu` VALUES ('110', '查看行为日志', '106', '0', 'admin-log/view', '1', '', '1');
INSERT INTO `yii2_menu` VALUES ('114', '导入', '75', '0', 'Menu/import', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('138', '商品管理', '2', '20', 'goods/index', '0', '商城管理|icon-basket', '1');
INSERT INTO `yii2_menu` VALUES ('119', '排序', '70', '0', 'Config/sort', '1', '', '1');
INSERT INTO `yii2_menu` VALUES ('120', '排序', '75', '0', 'Menu/sort', '1', '', '1');
INSERT INTO `yii2_menu` VALUES ('129', '管理员授权', '17', '0', 'admin/auth', '0', '', '0');
INSERT INTO `yii2_menu` VALUES ('182', '主页信息', '1', '1', 'home/index', '0', '首页|icon-target', '1');
INSERT INTO `yii2_menu` VALUES ('159', '广告管理', '2', '0', 'ad/index', '0', '广告管理|icon-target', '1');
INSERT INTO `yii2_menu` VALUES ('160', '添加', '159', '0', 'ad/add', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('161', '编辑', '159', '0', 'ad/edit', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('162', '删除', '159', '0', 'ad/delete', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('166', '商品属性', '2', '21', 'attributes/index', '0', '商城管理|icon-basket', '1');
INSERT INTO `yii2_menu` VALUES ('167', '添加/修改类型', '166', '0', 'traintype/edit', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('168', '删除类型', '166', '0', 'traintype/delete', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('174', '添加', '173', '0', 'page/add', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('175', '编辑', '173', '0', 'page/edit', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('176', '删除', '173', '0', 'page/delete', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('180', '每日清单', '183', '3', 'report/index', '0', '统计报表|icon-bar-chart', '1');
INSERT INTO `yii2_menu` VALUES ('177', '短信', '0', '2', 'message/add', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('178', '发短信', '177', '1', 'message/add', '0', '短信管理|icon-speech', '1');
INSERT INTO `yii2_menu` VALUES ('179', '短信列表', '177', '2', 'message/index', '0', '短信管理|icon-speech', '1');
INSERT INTO `yii2_menu` VALUES ('181', '对账单', '183', '4', 'account/index', '0', '统计报表|icon-bar-chart', '1');
INSERT INTO `yii2_menu` VALUES ('183', '统计', '0', '3', 'report/index', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('190', '详细信息', '188', '1', 'check/edit', '1', '审核管理|icon-speech', '1');
INSERT INTO `yii2_menu` VALUES ('185', '手机号上传', '177', '3', 'message/get-ajax', '1', '短信管理|icon-speech', '1');
INSERT INTO `yii2_menu` VALUES ('186', '更新Redis', '177', '4', 'message/update-redis', '1', '短信管理|icon-speech', '1');
INSERT INTO `yii2_menu` VALUES ('187', '审核', '0', '2', 'check/index', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('188', '短信列表', '187', '1', 'check/index', '0', '审核管理|icon-speech', '1');
INSERT INTO `yii2_menu` VALUES ('189', '详细信息', '179', '1', 'message/detail', '1', '短信管理|icon-speech', '1');
INSERT INTO `yii2_menu` VALUES ('191', '审核不通过', '188', '2', 'check/reject', '1', '审核管理|icon-speech', '1');
INSERT INTO `yii2_menu` VALUES ('192', '商户', '0', '4', 'customer/index', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('193', '管理员', '0', '6', 'manager/index', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('194', '管理员管理', '193', '1', 'manager/index', '0', '管理员管理|icon-user', '1');
INSERT INTO `yii2_menu` VALUES ('195', '商户管理', '192', '1', 'customer/index', '0', '商户管理|icon-user', '1');
INSERT INTO `yii2_menu` VALUES ('196', '新增管理员', '194', '0', 'manager/add', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('197', '新增商户', '195', '0', 'customer/add', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('198', '更新', '194', '0', 'manager/edit', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('199', '更新', '195', '0', 'customer/edit', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('200', '审核员', '0', '5', 'checkman/index', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('201', '审核员管理', '200', '1', 'checkman/index', '0', '审核员管理|icon-user', '1');
INSERT INTO `yii2_menu` VALUES ('202', '新增审核员', '201', '0', 'checkman/add', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('203', '更新', '201', '0', 'checkman/edit', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('204', '商户充值', '195', '0', 'customer/recharge', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('205', '通道', '0', '9', 'channel/index', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('206', '通道管理', '205', '1', 'channel/index', '0', '审核员管理|icon-comment', '1');
INSERT INTO `yii2_menu` VALUES ('207', '新增通道', '206', '0', 'channel/add', '0', '', '1');
INSERT INTO `yii2_menu` VALUES ('208', '更新', '206', '0', 'channel/edit', '0', '', '1');

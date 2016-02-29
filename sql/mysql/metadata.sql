/*
Navicat MySQL Data Transfer

Source Server         : YUN-SQL
Source Server Version : 50514
Source Host           : 127.0.0.1:3306
Source Database       : eova

Target Server Type    : MYSQL
Target Server Version : 50514
File Encoding         : 65001

Date: 2016-02-16 18:18:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `eova_button`
-- ----------------------------
DROP TABLE IF EXISTS `eova_button`;
CREATE TABLE `eova_button` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_code` varchar(255) NOT NULL COMMENT '菜单Code',
  `name` varchar(255) NOT NULL COMMENT '按钮名称',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `ui` varchar(255) DEFAULT NULL COMMENT '按钮UI路径',
  `bs` varchar(500) DEFAULT NULL COMMENT '按钮BS路径',
  `order_num` int(11) DEFAULT '0' COMMENT '排序号',
  `group_num` int(11) DEFAULT '0' COMMENT '分组号',
  `is_base` tinyint(1) DEFAULT '0' COMMENT '是否基础功能',
  `is_del` tinyint(1) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1073 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eova_button
-- ----------------------------
INSERT INTO `eova_button` VALUES ('1', 'eova_menu', '查询', null, 'query', '/grid/query', '1', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('2', 'eova_menu', '新增', null, '/eova/widget/form/btn/add.html', '/form/add', '2', '0', '1', '1');
INSERT INTO `eova_button` VALUES ('3', 'eova_menu', '修改', null, '/eova/widget/form/btn/update.html', '/form/update', '3', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('4', 'eova_menu', '删除', null, '/eova/widget/form/btn/delete.html', '/grid/delete', '4', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('5', 'eova_menu', '查看', null, '/eova/widget/form/btn/detail.html', '/form/detail', '5', '0', '1', '1');
INSERT INTO `eova_button` VALUES ('6', 'eova_menu', '导入', null, '/eova/template/single/btn/import.html', '/singleGrid/import', '6', '0', '1', '1');
INSERT INTO `eova_button` VALUES ('7', 'eova_menu', '导出菜单脚本', 'icon-databasego', '/eova/menu/btn/export.html', '/menu/doExport', '12', '0', '0', '0');
INSERT INTO `eova_button` VALUES ('8', 'eova_menu', '基本功能设置', 'icon-cogedit', '/eova/menu/btn/fun.html', '/meta/fun', '11', '0', '0', '0');
INSERT INTO `eova_button` VALUES ('9', 'eova_menu', '新增功能', 'icon-pageadd', '/eova/menu/btn/add.html', '/menu/add', '10', '0', '0', '0');
INSERT INTO `eova_button` VALUES ('20', 'eova_object', '查询', null, 'query', '/grid/query', '1', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('21', 'eova_object', '新增', null, '/eova/widget/form/btn/add.html', '/form/add', '2', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('22', 'eova_object', '修改', null, '/eova/widget/form/btn/update.html', '/form/update', '3', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('23', 'eova_object', '删除', null, '/eova/widget/form/btn/delete.html', '/grid/delete', '4', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('24', 'eova_object', '查看', null, '/eova/widget/form/btn/detail.html', '/form/detail', '5', '0', '1', '1');
INSERT INTO `eova_button` VALUES ('25', 'eova_object', '字段新增', null, '/eova/widget/form/btn/add.html', '/form/add', '2', '1', '1', '0');
INSERT INTO `eova_button` VALUES ('26', 'eova_object', '字段修改', null, '/eova/widget/form/btn/update.html', '/form/update', '3', '1', '1', '0');
INSERT INTO `eova_button` VALUES ('27', 'eova_object', '字段删除', null, '/eova/widget/form/btn/delete.html', '/grid/delete', '4', '1', '1', '0');
INSERT INTO `eova_button` VALUES ('28', 'eova_object', '导出元数据脚本', 'icon-databasego', '/eova/meta/btn/export.html', '/meta/doExport', '11', '0', '0', '0');
INSERT INTO `eova_button` VALUES ('29', 'eova_object', '导入元数据', 'icon-databaseadd', '/eova/meta/btn/import.html', '/meta/import', '10', '0', '0', '0');
INSERT INTO `eova_button` VALUES ('40', 'eova_button', '查询', null, 'query', '/grid/query', '1', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('41', 'eova_button', '新增', null, '/eova/widget/form/btn/add.html', '/form/add', '2', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('42', 'eova_button', '修改', null, '/eova/widget/form/btn/update.html', '/form/update', '3', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('43', 'eova_button', '删除', null, '/eova/widget/form/btn/delete.html', '/grid/delete', '4', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('44', 'eova_button', '查看', null, '/eova/widget/form/btn/detail.html', '/form/detail', '5', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('45', 'eova_button', '导入', null, '/eova/template/single/btn/import.html', '/singleGrid/import', '6', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('46', 'eova_button', '导出按钮脚本', 'icon-databasego', '/eova/button/btn/export.html', '/button/doExport', '7', '0', '0', '0');
INSERT INTO `eova_button` VALUES ('60', 'eova_dictionary', '查询', null, 'query', '/grid/query', '1', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('61', 'eova_dictionary', '新增', null, '/eova/widget/form/btn/add.html', '/form/add', '2', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('62', 'eova_dictionary', '修改', null, '/eova/widget/form/btn/update.html', '/form/update', '3', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('63', 'eova_dictionary', '删除', null, '/eova/widget/form/btn/delete.html', '/grid/delete', '4', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('64', 'eova_dictionary', '查看', null, '/eova/widget/form/btn/detail.html', '/form/detail', '5', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('65', 'eova_dictionary', '导入', null, '/eova/template/single/btn/import.html', '/singleGrid/import', '6', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('80', 'eova_task', '查询', null, 'query', '/grid/query', '1', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('81', 'eova_task', '新增', null, '/eova/widget/form/btn/add.html', '/form/add', '2', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('82', 'eova_task', '修改', null, '/eova/widget/form/btn/update.html', '/form/update', '3', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('83', 'eova_task', '删除', null, '/eova/widget/form/btn/delete.html', '/grid/delete', '4', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('84', 'eova_task', '查看', null, '/eova/widget/form/btn/detail.html', '/form/detail', '5', '0', '1', '1');
INSERT INTO `eova_button` VALUES ('85', 'eova_task', '导入', null, '/eova/template/single/btn/import.html', '/singleGrid/import', '6', '0', '1', '1');
INSERT INTO `eova_button` VALUES ('86', 'eova_task', '启动任务', 'icon-clockplay', '/eova/task/btn/start.html', '/task/start', '10', '0', '0', '0');
INSERT INTO `eova_button` VALUES ('87', 'eova_task', '暂停任务', 'icon-clockpause', '/eova/task/btn/stop.html', '/task/stop', '11', '0', '0', '0');
INSERT INTO `eova_button` VALUES ('88', 'eova_task', '立即运行一次', 'icon-clockgo', '/eova/task/btn/trigger.html', '/task/trigger', '12', '0', '0', '0');
INSERT INTO `eova_button` VALUES ('100', 'sys_auth_role', '查询', null, 'query', '/grid/query', '1', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('101', 'sys_auth_role', '新增', null, '/eova/widget/form/btn/add.html', '/form/add', '2', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('102', 'sys_auth_role', '修改', null, '/eova/widget/form/btn/update.html', '/form/update', '3', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('103', 'sys_auth_role', '删除', null, '/eova/widget/form/btn/delete.html', '/grid/delete', '4', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('104', 'sys_auth_role', '查看', null, '/eova/widget/form/btn/detail.html', '/form/detail', '5', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('105', 'sys_auth_role', '导入', null, '/eova/template/single/btn/import.html', '/singleGrid/import', '6', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('106', 'sys_auth_role', '权限分配', 'icon-groupedit', '/eova/auth/btn/roleChoose.html', '/auth/getRoleFunJson/*', '10', '0', '0', '0');
INSERT INTO `eova_button` VALUES ('120', 'sys_auth_user', '查询', null, 'query', '/grid/query', '1', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('121', 'sys_auth_user', '新增', null, '/eova/widget/form/btn/add.html', '/form/add', '2', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('122', 'sys_auth_user', '修改', null, '/eova/widget/form/btn/update.html', '/form/update', '3', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('123', 'sys_auth_user', '删除', null, '/eova/widget/form/btn/delete.html', '/grid/delete', '4', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('124', 'sys_auth_user', '查看', null, '/eova/widget/form/btn/detail.html', '/form/detail', '5', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('125', 'sys_auth_user', '导入', null, '/eova/template/single/btn/import.html', '/singleGrid/import', '6', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('140', 'sys_log', '查询', null, 'query', '/grid/query', '1', '0', '1', '0');
INSERT INTO `eova_button` VALUES ('141', 'sys_log', '新增', null, '/eova/widget/form/btn/add.html', '/form/add', '2', '0', '1', '1');
INSERT INTO `eova_button` VALUES ('142', 'sys_log', '修改', null, '/eova/widget/form/btn/update.html', '/form/update', '3', '0', '1', '1');
INSERT INTO `eova_button` VALUES ('143', 'sys_log', '删除', null, '/eova/widget/form/btn/delete.html', '/grid/delete', '4', '0', '1', '1');
INSERT INTO `eova_button` VALUES ('144', 'sys_log', '查看', null, '/eova/widget/form/btn/detail.html', '/form/detail', '5', '0', '1', '1');
INSERT INTO `eova_button` VALUES ('145', 'sys_log', '导入', null, '/eova/template/single/btn/import.html', '/singleGrid/import', '6', '0', '1', '1');

-- ----------------------------
-- Table structure for `eova_dict`
-- ----------------------------
DROP TABLE IF EXISTS `eova_dict`;
CREATE TABLE `eova_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `object` varchar(50) NOT NULL,
  `field` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eova_dict
-- ----------------------------
INSERT INTO `eova_dict` VALUES ('1', 'main', '默认', 'eova_object', 'data_source');
INSERT INTO `eova_dict` VALUES ('2', 'eova', 'EOVA', 'eova_object', 'data_source');
INSERT INTO `eova_dict` VALUES ('20', 'string', '字符', 'eova_field', 'data_type');
INSERT INTO `eova_dict` VALUES ('21', 'number', '数字', 'eova_field', 'data_type');
INSERT INTO `eova_dict` VALUES ('22', 'time', '时间', 'eova_field', 'data_type');
INSERT INTO `eova_dict` VALUES ('40', '1', '新增', 'eova_log', 'type');
INSERT INTO `eova_dict` VALUES ('41', '2', '修改', 'eova_log', 'type');
INSERT INTO `eova_dict` VALUES ('42', '3', '删除', 'eova_log', 'type');
INSERT INTO `eova_dict` VALUES ('50', '文本框', '文本框', 'eova_field', 'type');
INSERT INTO `eova_dict` VALUES ('51', '下拉框', '下拉框', 'eova_field', 'type');
INSERT INTO `eova_dict` VALUES ('52', '查找框', '查找框', 'eova_field', 'type');
INSERT INTO `eova_dict` VALUES ('53', '时间框', '时间框', 'eova_field', 'type');
INSERT INTO `eova_dict` VALUES ('54', '文本域', '文本域', 'eova_field', 'type');
INSERT INTO `eova_dict` VALUES ('55', '编辑框', '编辑框', 'eova_field', 'type');
INSERT INTO `eova_dict` VALUES ('56', '复选框', '复选框', 'eova_field', 'type');
INSERT INTO `eova_dict` VALUES ('57', '自增框', '自增框', 'eova_field', 'type');
INSERT INTO `eova_dict` VALUES ('58', '图片框', '图片框', 'eova_field', 'type');
INSERT INTO `eova_dict` VALUES ('59', '图标框', '图标框', 'eova_field', 'type');
INSERT INTO `eova_dict` VALUES ('60', '文件框', '文件框', 'eova_field', 'type');
INSERT INTO `eova_dict` VALUES ('61', '日期框', '日期框', 'eova_field', 'type');
INSERT INTO `eova_dict` VALUES ('62', '密码框', '密码框', 'eova_field', 'type');
INSERT INTO `eova_dict` VALUES ('100', '0', '暂停', 'eova_job', 'state');
INSERT INTO `eova_dict` VALUES ('101', '1', '运行', 'eova_job', 'state');

-- ----------------------------
-- Table structure for `eova_field`
-- ----------------------------
DROP TABLE IF EXISTS `eova_field`;
CREATE TABLE `eova_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `object_code` varchar(50) NOT NULL,
  `po_code` varchar(255) DEFAULT NULL COMMENT '持久化对象',
  `en` varchar(50) NOT NULL COMMENT '英文名',
  `cn` varchar(50) NOT NULL COMMENT '中文名',
  `is_auto` tinyint(1) DEFAULT '0' COMMENT '主键是否自增长',
  `data_type` varchar(20) DEFAULT 'string' COMMENT '数据类型',
  `type` varchar(10) DEFAULT '文本框' COMMENT '控件类型',
  `order_num` int(4) DEFAULT '9' COMMENT '排序索引',
  `exp` varchar(800) DEFAULT NULL COMMENT '控件表达式',
  `is_query` tinyint(1) DEFAULT '0' COMMENT '是否可查询',
  `is_show` tinyint(1) DEFAULT '1' COMMENT '是否可显示',
  `is_disable` tinyint(1) DEFAULT '0' COMMENT '是否禁用',
  `is_order` tinyint(1) DEFAULT '1' COMMENT '是否可排序',
  `is_add` tinyint(1) DEFAULT '1' COMMENT '是否可新增字段',
  `is_update` tinyint(1) DEFAULT '1' COMMENT '是否可修改字段',
  `is_edit` tinyint(1) DEFAULT '1' COMMENT '是否可编辑字段',
  `is_required` tinyint(1) DEFAULT '1' COMMENT '是否必填',
  `is_multiple` tinyint(1) DEFAULT '0' COMMENT '是否多选项',
  `placeholder` varchar(255) DEFAULT NULL COMMENT '输入提示',
  `validator` varchar(255) DEFAULT NULL COMMENT 'UI校验表达式',
  `defaulter` varchar(255) DEFAULT NULL COMMENT '默认值表达式',
  `formatter` varchar(2000) DEFAULT NULL COMMENT '格式化器',
  `width` int(4) DEFAULT '130' COMMENT '控件宽度',
  `height` int(4) DEFAULT '20' COMMENT '控件高度',
  `config` varchar(2000) DEFAULT NULL COMMENT '拓展配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2115 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eova_field
-- ----------------------------
INSERT INTO `eova_field` VALUES ('1', 'eova_object_code', null, 'id', 'ID', '1', 'number', '自增框', '1', null, '0', '1', '0', '1', '1', '1', '0', '1', '0', null, null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('2', 'eova_object_code', null, 'code', '编码', '0', 'string', '文本框', '2', null, '1', '1', '0', '1', '1', '0', '0', '1', '0', null, 'eovacode', null, null, '200', '20', null);
INSERT INTO `eova_field` VALUES ('3', 'eova_object_code', null, 'name', '名称', '0', 'string', '文本框', '3', null, '1', '1', '0', '1', '1', '1', '0', '1', '0', null, null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('4', 'eova_object_code', null, 'view_name', '视图', '0', 'string', '文本框', '4', null, '1', '1', '0', '1', '1', '1', '0', '0', '0', null, null, null, null, '70', '20', null);
INSERT INTO `eova_field` VALUES ('5', 'eova_object_code', null, 'table_name', '数据表', '0', 'string', '文本框', '5', null, '1', '1', '0', '1', '1', '1', '0', '0', '0', null, null, null, null, '80', '20', null);
INSERT INTO `eova_field` VALUES ('6', 'eova_object_code', null, 'pk_name', '主键', '0', 'string', '文本框', '6', null, '0', '1', '0', '1', '1', '1', '0', '0', '0', null, null, null, null, '70', '20', null);
INSERT INTO `eova_field` VALUES ('7', 'eova_object_code', null, 'data_source', '数据源', '0', 'string', '下拉框', '7', 'select value ID,name CN from eova_dict where object = \'eova_object\' and field = \'data_source\';ds=eova', '0', '1', '0', '1', '1', '1', '0', '1', '0', null, null, null, null, '70', '20', null);
INSERT INTO `eova_field` VALUES ('8', 'eova_object_code', null, 'is_single', '单选/多选', '0', 'number', '复选框', '8', null, '0', '1', '0', '1', '1', '1', '0', '0', '0', null, null, null, null, '70', '20', null);
INSERT INTO `eova_field` VALUES ('9', 'eova_object_code', null, 'is_show_num', '显示行号', '0', 'number', '复选框', '9', null, '0', '1', '0', '1', '1', '1', '0', '0', '0', null, null, null, null, '70', '20', null);
INSERT INTO `eova_field` VALUES ('10', 'eova_object_code', null, 'default_order', '默认排序', '0', 'string', '文本域', '10', null, '0', '1', '0', '1', '1', '1', '0', '0', '0', '例如：id desc (默认按ID倒序)', null, null, null, '70', '20', null);
INSERT INTO `eova_field` VALUES ('11', 'eova_object_code', null, 'filter', '过滤条件', '0', 'string', '文本域', '11', null, '0', '1', '0', '1', '1', '1', '0', '0', '0', '例如：status = 1 (只显示状态为1的数据)', null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('12', 'eova_object_code', null, 'diy_js', '依赖JS', '0', 'string', '文本域', '13', null, '0', '1', '0', '1', '1', '1', '1', '0', '0', '自定义JS文件路径', null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('13', 'eova_object_code', null, 'is_celledit', '行内编辑', '0', 'number', '复选框', '8', null, '0', '1', '0', '1', '1', '1', '0', '0', '0', null, null, null, null, '70', '20', null);
INSERT INTO `eova_field` VALUES ('14', 'eova_object_code', null, 'biz_intercept', '业务拦截器', '0', 'string', '文本域', '12', null, '0', '1', '0', '1', '1', '1', '0', '0', '0', '继承：com.eova.core.meta.MetaObjectIntercept', null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('50', 'eova_field_code', null, 'id', 'ID', '1', 'number', '自增框', '1', null, '0', '0', '0', '1', '1', '1', '0', '1', '0', null, null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('51', 'eova_field_code', null, 'object_code', '对象编码', '0', 'string', '查找框', '2', 'select code 编码,name 名称 from eova_object where id > 999 order by id desc;ds=eova', '1', '1', '0', '1', '1', '1', '0', '1', '0', null, null, 'eova_user_code', null, '150', '20', null);
INSERT INTO `eova_field` VALUES ('52', 'eova_field_code', null, 'en', '字段名', '0', 'string', '文本框', '4', null, '1', '1', '0', '1', '1', '1', '1', '1', '0', '数据库的字段名', null, null, null, '120', '20', null);
INSERT INTO `eova_field` VALUES ('53', 'eova_field_code', null, 'cn', '中文名', '0', 'string', '文本框', '3', null, '1', '1', '0', '1', '1', '1', '1', '1', '0', '字段对应的中文描述', null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('54', 'eova_field_code', null, 'is_auto', '自增长', '0', 'number', '复选框', '11', null, '0', '1', '0', '1', '1', '1', '1', '0', '0', null, null, null, null, '70', '20', null);
INSERT INTO `eova_field` VALUES ('55', 'eova_field_code', null, 'data_type', '字段类型', '0', 'string', '下拉框', '6', 'select value ID,name CN from eova_dict where object = \'eova_field\' and field = \'data_type\';ds=eova', '0', '1', '0', '1', '1', '1', '1', '1', '0', null, null, 'string', null, '70', '20', null);
INSERT INTO `eova_field` VALUES ('56', 'eova_field_code', null, 'type', '控件类型', '0', 'string', '下拉框', '7', 'select value ID,name CN from eova_widget;ds=eova', '1', '1', '0', '1', '1', '1', '1', '1', '0', null, null, '文本框', null, '70', '20', null);
INSERT INTO `eova_field` VALUES ('57', 'eova_field_code', null, 'order_num', '排序', '0', 'number', '文本框', '2', null, '0', '1', '0', '1', '1', '1', '1', '1', '0', null, null, '0', null, '50', '20', null);
INSERT INTO `eova_field` VALUES ('58', 'eova_field_code', null, 'exp', '表达式', '0', 'string', '文本域', '41', null, '0', '1', '0', '1', '1', '1', '1', '0', '0', '查找框和下拉框需需要表达式', null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('59', 'eova_field_code', null, 'is_query', '允许查询', '0', 'number', '复选框', '20', null, '0', '1', '0', '1', '1', '1', '1', '0', '0', null, null, null, null, '70', '20', null);
INSERT INTO `eova_field` VALUES ('60', 'eova_field_code', null, 'is_show', '允许显示', '0', 'number', '复选框', '21', null, '0', '1', '0', '1', '1', '1', '1', '0', '0', null, null, null, null, '70', '20', null);
INSERT INTO `eova_field` VALUES ('61', 'eova_field_code', null, 'is_order', '允许排序', '0', 'number', '复选框', '28', null, '0', '1', '0', '1', '1', '1', '1', '0', '0', null, null, null, null, '70', '20', null);
INSERT INTO `eova_field` VALUES ('62', 'eova_field_code', null, 'is_add', '允许新增', '0', 'number', '复选框', '24', null, '0', '1', '0', '1', '1', '1', '1', '0', '0', null, null, null, null, '70', '20', null);
INSERT INTO `eova_field` VALUES ('63', 'eova_field_code', null, 'is_update', '允许修改', '0', 'number', '复选框', '25', null, '0', '1', '0', '1', '1', '1', '1', '0', '0', null, null, null, null, '70', '20', null);
INSERT INTO `eova_field` VALUES ('64', 'eova_field_code', null, 'is_required', '是否必填', '0', 'number', '复选框', '27', null, '0', '1', '0', '1', '1', '1', '1', '0', '0', null, null, null, null, '70', '20', null);
INSERT INTO `eova_field` VALUES ('65', 'eova_field_code', null, 'defaulter', '默认值', '0', 'string', '文本域', '42', null, '0', '1', '0', '1', '1', '1', '1', '0', '0', '缺省默认值', null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('66', 'eova_field_code', null, 'width', '宽度', '0', 'number', '文本框', '9', null, '0', '1', '0', '1', '1', '1', '1', '1', '0', null, null, '130', null, '50', '20', null);
INSERT INTO `eova_field` VALUES ('67', 'eova_field_code', null, 'height', '高度', '0', 'number', '文本框', '10', null, '0', '1', '0', '1', '1', '1', '1', '0', '0', null, null, '80', null, '50', '20', null);
INSERT INTO `eova_field` VALUES ('68', 'eova_field_code', null, 'is_multiple', '是否有多项', '0', 'number', '复选框', '29', null, '0', '1', '0', '1', '1', '1', '1', '0', '0', null, null, null, null, '70', '20', null);
INSERT INTO `eova_field` VALUES ('69', 'eova_field_code', null, 'is_edit', '允许表内编辑', '0', 'number', '复选框', '26', null, '0', '1', '0', '1', '1', '1', '1', '0', '0', null, null, null, null, '75', '20', null);
INSERT INTO `eova_field` VALUES ('70', 'eova_field_code', null, 'placeholder', '输入提示', '0', 'string', '文本域', '40', null, '0', '1', '0', '1', '1', '1', '1', '0', '0', 'input的placeholder属性', null, null, null, '230', '20', null);
INSERT INTO `eova_field` VALUES ('71', 'eova_field_code', null, 'formatter', '格式化器', '0', 'string', '文本域', '44', null, '0', '1', '0', '1', '1', '1', '1', '0', '0', '格式化的JS,参考EasyUI datagrid formatter', null, null, null, '130', '150', null);
INSERT INTO `eova_field` VALUES ('72', 'eova_field_code', null, 'validator', 'UI校验器', '0', 'string', '文本域', '43', null, '0', '1', '0', '1', '1', '1', '1', '0', '0', 'UI校验规则', null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('73', 'eova_field_code', null, 'is_disable', '是否禁用', '0', 'number', '复选框', '22', null, '0', '1', '0', '1', '1', '1', '1', '0', '0', null, null, null, null, '70', '20', null);
INSERT INTO `eova_field` VALUES ('100', 'eova_menu_code', null, 'id', 'ID', '1', 'number', '自增框', '1', null, '0', '0', '0', '1', '1', '1', '0', '1', '0', null, null, null, null, '40', '20', null);
INSERT INTO `eova_field` VALUES ('101', 'eova_menu_code', null, 'code', '编码', '0', 'string', '文本框', '4', null, '1', '1', '1', '1', '1', '1', '0', '1', '0', null, 'eovacode', null, null, '200', '20', null);
INSERT INTO `eova_field` VALUES ('102', 'eova_menu_code', null, 'name', '名称', '0', 'string', '文本框', '1', null, '1', '1', '0', '1', '1', '1', '0', '1', '0', null, null, null, null, '180', '20', null);
INSERT INTO `eova_field` VALUES ('103', 'eova_menu_code', null, 'type', '类型', '0', 'string', '文本框', '2', null, '0', '1', '0', '1', '1', '1', '0', '1', '0', null, null, null, null, '120', '20', null);
INSERT INTO `eova_field` VALUES ('104', 'eova_menu_code', null, 'icon', '图标', '0', 'string', '图标框', '6', null, '0', '0', '0', '1', '1', '1', '0', '1', '0', null, null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('105', 'eova_menu_code', null, 'order_num', '序号', '0', 'number', '文本框', '9', null, '0', '0', '0', '1', '1', '1', '0', '1', '0', null, null, null, null, '30', '20', null);
INSERT INTO `eova_field` VALUES ('106', 'eova_menu_code', null, 'parent_id', '父节点', '0', 'number', '文本框', '9', '', '0', '0', '0', '1', '1', '1', '0', '1', '0', null, null, null, null, '100', '20', null);
INSERT INTO `eova_field` VALUES ('107', 'eova_menu_code', null, 'is_del', '是否隐藏', '0', 'number', '复选框', '16', null, '0', '1', '0', '1', '1', '1', '1', '0', '0', null, null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('109', 'eova_menu_code', null, 'biz_intercept', '业务拦截器', '0', 'string', '文本域', '12', null, '0', '1', '0', '1', '1', '1', '0', '0', '0', '继承：模版业务拦截器', null, null, null, '300', '20', null);
INSERT INTO `eova_field` VALUES ('110', 'eova_menu_code', null, 'url', '自定义功能', '0', 'string', '文本域', '15', null, '0', '1', '0', '1', '1', '1', '0', '0', '0', null, null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('111', 'eova_menu_code', null, 'filter', '过滤条件', '0', 'string', '文本域', '11', '', '0', '1', '0', '1', '1', '1', '1', '0', '0', '例如：status = 1 (只显示状态为1的数据)', null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('112', 'eova_menu_code', null, 'diy_js', '依赖JS', '0', 'string', '文本域', '13', '', '0', '1', '0', '1', '1', '1', '1', '0', '0', '自定义JS文件路径', null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('150', 'eova_button_code', null, 'is_del', '是否隐藏', '0', 'number', '复选框', '30', null, '0', '1', '0', '1', '0', '1', '1', '1', '0', null, null, null, null, '60', '20', null);
INSERT INTO `eova_field` VALUES ('151', 'eova_button_code', null, 'icon', 'ICON', '0', 'string', '图标框', '3', null, '0', '1', '0', '1', '1', '1', '1', '1', '0', null, null, null, 'function(value,row,index,field){if(value){return\'<span class=\"tree-icon tree-file \'+value+\'\"></span>\'}return value}', '30', '20', null);
INSERT INTO `eova_field` VALUES ('152', 'eova_button_code', null, 'id', 'ID', '1', 'number', '自增框', '1', null, '0', '1', '0', '1', '1', '1', '1', '1', '0', null, null, null, null, '50', '20', null);
INSERT INTO `eova_field` VALUES ('153', 'eova_button_code', null, 'menu_code', '菜单编码', '0', 'string', '查找框', '2', 'select code 菜单编码,name 菜单名称 from eova_menu where 1=1;ds=eova', '0', '1', '0', '1', '1', '1', '0', '1', '0', null, 'eovacode', null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('154', 'eova_button_code', null, 'name', '功能名称', '0', 'string', '文本框', '4', null, '1', '1', '0', '1', '1', '1', '0', '1', '0', null, null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('155', 'eova_button_code', null, 'ui', 'UI路径', '0', 'string', '文本域', '10', null, '1', '1', '0', '1', '1', '1', '1', '1', '0', null, null, null, null, '280', '20', null);
INSERT INTO `eova_field` VALUES ('156', 'eova_button_code', null, 'bs', 'BS路径', '0', 'string', '文本域', '20', null, '1', '1', '0', '1', '1', '1', '0', '1', '0', null, null, null, null, '250', '20', null);
INSERT INTO `eova_field` VALUES ('157', 'eova_button_code', null, 'order_num', '序号', '0', 'number', '文本框', '6', null, '0', '1', '0', '1', '1', '1', '1', '1', '0', '按钮的显示顺序', 'digits', '10', null, '50', '20', null);
INSERT INTO `eova_field` VALUES ('158', 'eova_button_code', null, 'group_num', '分组号', '0', 'number', '文本框', '7', null, '0', '1', '0', '1', '1', '1', '1', '1', '0', 'Toolbar分组号', 'digits', '0', null, '50', '20', null);
INSERT INTO `eova_field` VALUES ('159', 'eova_button_code', null, 'is_base', '是否基础功能', '0', 'number', '复选框', '8', null, '0', '0', '0', '1', '0', '0', '0', '0', '0', null, null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('200', 'eova_user_code', null, 'nickname', '昵称', '0', 'string', '文本框', '1', null, '1', '1', '0', '1', '1', '1', '0', '1', '0', null, null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('201', 'eova_user_code', null, 'login_id', '登录帐号', '0', 'string', '文本框', '2', null, '1', '1', '0', '1', '1', '1', '0', '1', '0', null, null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('202', 'eova_user_code', null, 'login_pwd', '登录密码', '0', 'string', '文本框', '3', null, '0', '0', '0', '0', '1', '0', '0', '1', '0', null, null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('203', 'eova_user_code', null, 'rid', '角色', '0', 'number', '下拉框', '4', 'select id ID,name CN from eova_role where 1=1;ds=eova', '1', '1', '0', '1', '1', '1', '0', '1', '0', null, null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('204', 'eova_user_code', null, 'id', 'ID', '1', 'number', '自增框', '0', null, '0', '1', '0', '1', '1', '1', '0', '1', '0', null, null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('220', 'eova_role_code', null, 'id', 'ID', '1', 'number', '自增框', '0', null, '0', '1', '0', '1', '1', '1', '0', '1', '0', null, null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('221', 'eova_role_code', null, 'name', '角色名', '0', 'string', '文本框', '0', null, '1', '1', '0', '1', '1', '1', '0', '1', '0', null, null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('222', 'eova_role_code', null, 'info', '角色描述', '0', 'string', '文本框', '0', null, '0', '1', '0', '1', '1', '1', '0', '1', '0', null, null, null, null, '230', '20', null);
INSERT INTO `eova_field` VALUES ('240', 'eova_dict_code', null, 'id', 'ID', '1', 'number', '自增框', '1', null, '0', '1', '0', '1', '1', '1', '0', '1', '0', null, null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('241', 'eova_dict_code', null, 'value', '值', '0', 'string', '文本框', '2', null, '1', '1', '0', '1', '1', '1', '0', '1', '0', null, null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('242', 'eova_dict_code', null, 'name', '名称', '0', 'string', '文本框', '3', null, '1', '1', '0', '1', '1', '1', '0', '1', '0', null, null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('243', 'eova_dict_code', null, 'object', '对象', '0', 'string', '文本框', '4', null, '1', '1', '0', '1', '1', '1', '0', '1', '0', null, null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('244', 'eova_dict_code', null, 'field', '字段', '0', 'string', '文本框', '5', null, '1', '1', '0', '1', '1', '1', '0', '1', '0', null, null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('260', 'eova_log_code', null, 'id', 'id', '1', 'number', '自增框', '1', '', '0', '1', '0', '1', '1', '1', '0', '0', '0', '', '', '', '', '130', '20', null);
INSERT INTO `eova_field` VALUES ('261', 'eova_log_code', null, 'user_id', '操作用户', '0', 'number', '查找框', '2', 'select id UID,nickname 用户名 from eova_user where 1=1;ds=eova', '1', '1', '0', '1', '1', '1', '0', '0', '0', null, null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('262', 'eova_log_code', null, 'type', '日志类型', '0', 'number', '文本框', '3', 'select value ID,name CN from eova_dict where object = \'eova_log\' and field = \'type\';ds=eova', '1', '1', '0', '1', '1', '1', '0', '0', '0', null, null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('263', 'eova_log_code', null, 'ip', '操作IP', '0', 'string', '文本框', '4', null, '1', '1', '0', '1', '1', '1', '0', '0', '0', null, null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('264', 'eova_log_code', null, 'info', '详情', '0', 'string', '文本框', '5', '', '1', '1', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '330', '20', null);
INSERT INTO `eova_field` VALUES ('280', 'eova_task_code', null, 'id', 'ID', '1', 'number', '自增框', '1', null, '0', '1', '0', '1', '1', '1', '1', '1', '0', null, null, '', null, '50', '20', null);
INSERT INTO `eova_field` VALUES ('281', 'eova_task_code', null, 'state', '状态', '0', 'number', '下拉框', '2', 'select value ID,name CN from eova_dict where object = \'eova_job\' and field = \'state\';ds=eova', '1', '1', '0', '1', '0', '0', '0', '0', '0', null, null, '0', null, '50', '20', null);
INSERT INTO `eova_field` VALUES ('282', 'eova_task_code', null, 'name', '名称', '0', 'string', '文本框', '3', null, '1', '1', '0', '1', '1', '1', '1', '1', '0', '任务简称', null, '', null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('283', 'eova_task_code', null, 'exp', '表达式', '0', 'string', '文本域', '4', null, '0', '1', '0', '1', '1', '1', '1', '1', '0', 'Quartz表达式', '', '0 0 0/1 * * ?', null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('284', 'eova_task_code', null, 'class', '实现类', '0', 'string', '文本域', '5', null, '1', '1', '0', '1', '1', '1', '1', '1', '0', 'Job实现类', null, '', null, '230', '20', null);
INSERT INTO `eova_field` VALUES ('285', 'eova_task_code', null, 'info', '说明', '0', 'string', '文本域', '6', null, '0', '1', '0', '1', '1', '1', '1', '0', '0', '任务的详细描述', null, '', null, '330', '50', null);
INSERT INTO `eova_field` VALUES ('2000', 'celledit_users_code', null, 'id', 'id', '1', 'number', '自增框', '1', null, '0', '0', '0', '1', '1', '1', '1', '0', '0', null, null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('2001', 'celledit_users_code', null, 'status', '状态', '0', 'number', '文本框', '2', null, '0', '1', '0', '1', '1', '1', '0', '1', '0', null, null, '0', null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('2002', 'celledit_users_code', null, 'login_id', '登录账户', '0', 'string', '文本框', '3', null, '0', '1', '0', '1', '1', '1', '1', '1', '0', null, null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('2003', 'celledit_users_code', null, 'login_pwd', '录登密码', '0', 'string', '文本框', '4', null, '0', '1', '0', '1', '1', '1', '0', '1', '0', null, null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('2004', 'celledit_users_code', null, 'nickname', '昵称', '0', 'string', '文本域', '5', null, '1', '1', '0', '1', '1', '1', '1', '1', '0', null, null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('2005', 'celledit_users_code', null, 'reg_time', '注册时间', '0', 'time', '时间框', '6', null, '0', '1', '0', '1', '1', '1', '1', '1', '0', null, null, 'CURRENT_TIMESTAMP', null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('2006', 'celledit_users_code', null, 'info', '备注', '0', 'string', '文本域', '7', null, '0', '1', '0', '1', '1', '1', '1', '1', '0', null, null, null, null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('2012', 'dicts', null, 'id', 'ID', '1', 'number', '自增框', '1', null, '0', '1', '0', '1', '1', '1', '1', '1', '0', null, null, '', null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('2013', 'dicts', null, 'value', '值', '0', 'string', '文本框', '2', null, '0', '1', '0', '1', '1', '1', '1', '1', '0', null, null, '', null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('2014', 'dicts', null, 'name', '名称', '0', 'string', '文本框', '3', null, '0', '1', '0', '1', '1', '1', '1', '1', '0', null, null, '', null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('2015', 'dicts', null, 'object', '表名', '0', 'string', '文本框', '4', null, '0', '1', '0', '1', '1', '1', '1', '1', '0', null, null, '', null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('2016', 'dicts', null, 'field', '字段名', '0', 'string', '文本框', '5', null, '0', '1', '0', '1', '1', '1', '1', '1', '0', null, null, '', null, '130', '20', null);
INSERT INTO `eova_field` VALUES ('2017', 'dicts', null, 'ext', '扩展Json', '0', 'string', '文本框', '6', null, '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null, '', null, '130', '20', null);

-- ----------------------------
-- Table structure for `eova_log`
-- ----------------------------
DROP TABLE IF EXISTS `eova_log`;
CREATE TABLE `eova_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '操作用户',
  `type` int(11) NOT NULL COMMENT '日志类型',
  `ip` varchar(255) NOT NULL COMMENT '操作IP',
  `info` varchar(500) DEFAULT NULL COMMENT '操作详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eova_log
-- ----------------------------

-- ----------------------------
-- Table structure for `eova_menu`
-- ----------------------------
DROP TABLE IF EXISTS `eova_menu`;
CREATE TABLE `eova_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL COMMENT '编码',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `type` varchar(20) NOT NULL COMMENT '菜单类型',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `order_num` int(11) DEFAULT '0' COMMENT '序号',
  `parent_id` int(11) DEFAULT '0' COMMENT '父节点',
  `is_collapse` tinyint(1) DEFAULT '0' COMMENT '是否折叠',
  `biz_intercept` varchar(255) DEFAULT NULL COMMENT '自定义业务拦截器',
  `url` varchar(255) DEFAULT NULL COMMENT '自定义URL',
  `config` varchar(500) DEFAULT NULL COMMENT '菜单配置JSON',
  `diy_js` varchar(255) DEFAULT NULL COMMENT '依赖JS文件',
  `is_del` tinyint(1) DEFAULT '0' COMMENT '是否隐藏',
  `filter` varchar(500) DEFAULT NULL COMMENT '初始数据过滤条件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1015 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eova_menu
-- ----------------------------
INSERT INTO `eova_menu` VALUES ('1', 'eova', '平台维护', 'dir', 'icon-bricks', '3', '0', '0', null, null, null, null, '0', null);
INSERT INTO `eova_menu` VALUES ('2', 'sys', '系统管理', 'dir', 'icon-cog', '2', '0', '0', null, null, null, null, '0', null);
INSERT INTO `eova_menu` VALUES ('3', 'biz', '综合业务', 'dir', 'icon-plugin', '1', '0', '0', null, null, null, null, '0', null);
INSERT INTO `eova_menu` VALUES ('20', 'eova_menu', '菜单管理', 'single_tree', 'icon-applicationsidetree', '1', '1', '0', 'com.eova.core.menu.MenuIntercept', null, '{\"objectCode\":\"eova_menu_code\",\"treegrid\":{\"iconField\":\"icon\",\"parentField\":\"parent_id\",\"treeField\":\"name\"}}', null, '0', null);
INSERT INTO `eova_menu` VALUES ('21', 'eova_button', '按钮管理', 'tree_grid', 'icon-layout', '2', '1', '0', null, null, '{\"objectCode\":\"eova_button_code\"}', null, '0', null);
INSERT INTO `eova_menu` VALUES ('22', 'eova_object', '元数据管理', 'master_slave_grid', 'icon-databasetable', '3', '1', '0', 'com.eova.core.object.ObjectIntercept', null, '{\"fields\":[\"object_code\"],\"objectCode\":\"eova_object_code\",\"objectField\":\"code\",\"objects\":[\"eova_field_code\"]}', null, '0', null);
INSERT INTO `eova_menu` VALUES ('23', 'eova_dictionary', '字典管理', 'single_grid', 'icon-bookopen', '5', '1', '0', null, null, '{\"objectCode\":\"eova_dict_code\"}', null, '0', null);
INSERT INTO `eova_menu` VALUES ('24', 'eova_icon', '图标实例', 'diy', 'icon-applicationviewicons', '6', '1', '0', null, '/toIcon', null, null, '0', null);
INSERT INTO `eova_menu` VALUES ('25', 'eova_task', '定时调度', 'single_grid', 'icon-clock', '4', '1', '0', '', '', '{\"objectCode\":\"eova_task_code\"}', null, '0', null);
INSERT INTO `eova_menu` VALUES ('50', 'sys_auth_user', '用户管理', 'single_grid', 'icon-group', '1', '2', '0', null, null, '{\"objectCode\":\"eova_user_code\"}', null, '0', null);
INSERT INTO `eova_menu` VALUES ('51', 'sys_auth_role', '角色管理', 'single_grid', 'icon-groupkey', '2', '2', '0', null, null, '{\"objectCode\":\"eova_role_code\"}', null, '0', null);
INSERT INTO `eova_menu` VALUES ('52', 'sys_log', '系统日志', 'single_grid', 'icon-tablemultiple', '3', '2', '0', null, null, '{\"objectCode\":\"eova_log_code\"}', null, '0', null);
INSERT INTO `eova_menu` VALUES ('1000', 'biz_product', '功能', 'dir', 'icon-bookopen', '1', '3', '1', null, null, null, null, '0', null);

-- ----------------------------
-- Table structure for `eova_menu_object`
-- ----------------------------
DROP TABLE IF EXISTS `eova_menu_object`;
CREATE TABLE `eova_menu_object` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_code` varchar(50) NOT NULL COMMENT '菜单编码',
  `object_code` varchar(50) NOT NULL COMMENT '对象编码',
  `indexs` int(11) DEFAULT '0' COMMENT '对象索引',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eova_menu_object
-- ----------------------------

-- ----------------------------
-- Table structure for `eova_object`
-- ----------------------------
DROP TABLE IF EXISTS `eova_object`;
CREATE TABLE `eova_object` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL COMMENT '对象编码',
  `name` varchar(100) NOT NULL COMMENT '对象名称',
  `view_name` varchar(255) DEFAULT NULL COMMENT '查询数据视图',
  `table_name` varchar(255) DEFAULT NULL COMMENT '保存数据主表',
  `pk_name` varchar(50) NOT NULL COMMENT '主键',
  `data_source` varchar(50) DEFAULT 'main' COMMENT '数据源',
  `is_single` tinyint(1) DEFAULT '1' COMMENT '是否单选',
  `is_celledit` tinyint(1) DEFAULT '0' COMMENT '是否可行内编辑',
  `is_show_num` tinyint(1) DEFAULT '1' COMMENT '是否显示行号',
  `is_first_load` tinyint(1) DEFAULT '1' COMMENT '是否初始加载数据',
  `filter` varchar(500) DEFAULT NULL COMMENT '初始数据过滤条件',
  `default_order` varchar(255) DEFAULT NULL COMMENT '默认排序字段(desc)',
  `diy_card` varchar(255) DEFAULT NULL COMMENT '自定义卡片面板',
  `diy_js` varchar(255) DEFAULT NULL COMMENT '依赖JS文件',
  `biz_intercept` varchar(255) DEFAULT NULL COMMENT '自定义业务拦截器',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1015 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eova_object
-- ----------------------------
INSERT INTO `eova_object` VALUES ('1', 'meta_template', '元对象模版数据', null, 'eova_template', 'id', 'eova', '1', '0', '1', '1', null, null, null, null, null);
INSERT INTO `eova_object` VALUES ('2', 'eova_menu_code', '菜单', null, 'eova_menu', 'id', 'eova', '0', '0', '1', '1', 'where id > 999 ', '', null, '', 'com.eova.core.menu.MenuIntercept');
INSERT INTO `eova_object` VALUES ('3', 'eova_object_code', '对象', null, 'eova_object', 'id', 'eova', '0', '0', '1', '1', 'where id > 999 ', 'id desc', null, '', 'com.eova.core.object.ObjectIntercept');
INSERT INTO `eova_object` VALUES ('4', 'eova_field_code', '字段', null, 'eova_field', 'id', 'eova', '1', '1', '1', '1', null, 'order_num', null, null, null);
INSERT INTO `eova_object` VALUES ('5', 'eova_button_code', '按钮', null, 'eova_button', 'id', 'eova', '0', '0', '1', '1', 'where id > 999 and is_base = 0', 'id desc', null, '', '');
INSERT INTO `eova_object` VALUES ('6', 'eova_user_code', '用户', null, 'eova_user', 'id', 'eova', '1', '0', '1', '1', null, 'id desc', null, null, 'com.eova.core.user.UserIntercept');
INSERT INTO `eova_object` VALUES ('7', 'eova_role_code', '角色管理', null, 'eova_role', 'id', 'eova', '1', '0', '1', '1', null, 'id desc', null, null, null);
INSERT INTO `eova_object` VALUES ('8', 'eova_dict_code', '字典管理', null, 'eova_dict', 'id', 'eova', '1', '0', '1', '1', null, 'id desc', null, null, null);
INSERT INTO `eova_object` VALUES ('9', 'eova_log_code', '操作日志', null, 'eova_log', 'id', 'eova', '1', '0', '1', '1', null, 'id desc', null, null, null);
INSERT INTO `eova_object` VALUES ('10', 'eova_task_code', '定时调度', null, 'eova_task', 'id', 'eova', '1', '0', '1', '1', null, null, null, null, 'com.eova.core.task.TaskIntercept');
INSERT INTO `eova_object` VALUES ('1000', 'dicts', '业务字典', null, 'dicts', 'id', 'main', '1', '0', '1', '1', null, null, null, null, null);

-- ----------------------------
-- Table structure for `eova_role`
-- ----------------------------
DROP TABLE IF EXISTS `eova_role`;
CREATE TABLE `eova_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '角色名',
  `info` varchar(255) DEFAULT NULL COMMENT '角色描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eova_role
-- ----------------------------
INSERT INTO `eova_role` VALUES ('1', '超级管理员', '开发者权限(禁止作为业务权限)');
INSERT INTO `eova_role` VALUES ('2', '管理员', '管理所有可用功能');
INSERT INTO `eova_role` VALUES ('3', '测试', '测试人员');

-- ----------------------------
-- Table structure for `eova_role_btn`
-- ----------------------------
DROP TABLE IF EXISTS `eova_role_btn`;
CREATE TABLE `eova_role_btn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL COMMENT '角色',
  `bid` int(11) NOT NULL COMMENT '功能',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eova_role_btn
-- ----------------------------
INSERT INTO `eova_role_btn` VALUES ('65', '1', '120');
INSERT INTO `eova_role_btn` VALUES ('66', '1', '121');
INSERT INTO `eova_role_btn` VALUES ('67', '1', '122');
INSERT INTO `eova_role_btn` VALUES ('68', '1', '123');
INSERT INTO `eova_role_btn` VALUES ('69', '1', '124');
INSERT INTO `eova_role_btn` VALUES ('70', '1', '125');
INSERT INTO `eova_role_btn` VALUES ('71', '1', '100');
INSERT INTO `eova_role_btn` VALUES ('72', '1', '101');
INSERT INTO `eova_role_btn` VALUES ('73', '1', '102');
INSERT INTO `eova_role_btn` VALUES ('74', '1', '103');
INSERT INTO `eova_role_btn` VALUES ('75', '1', '104');
INSERT INTO `eova_role_btn` VALUES ('76', '1', '105');
INSERT INTO `eova_role_btn` VALUES ('77', '1', '106');
INSERT INTO `eova_role_btn` VALUES ('78', '1', '140');
INSERT INTO `eova_role_btn` VALUES ('79', '1', '1');
INSERT INTO `eova_role_btn` VALUES ('80', '1', '3');
INSERT INTO `eova_role_btn` VALUES ('81', '1', '4');
INSERT INTO `eova_role_btn` VALUES ('82', '1', '9');
INSERT INTO `eova_role_btn` VALUES ('83', '1', '8');
INSERT INTO `eova_role_btn` VALUES ('84', '1', '7');
INSERT INTO `eova_role_btn` VALUES ('85', '1', '40');
INSERT INTO `eova_role_btn` VALUES ('86', '1', '41');
INSERT INTO `eova_role_btn` VALUES ('87', '1', '42');
INSERT INTO `eova_role_btn` VALUES ('88', '1', '43');
INSERT INTO `eova_role_btn` VALUES ('89', '1', '44');
INSERT INTO `eova_role_btn` VALUES ('90', '1', '45');
INSERT INTO `eova_role_btn` VALUES ('91', '1', '46');
INSERT INTO `eova_role_btn` VALUES ('92', '1', '20');
INSERT INTO `eova_role_btn` VALUES ('93', '1', '21');
INSERT INTO `eova_role_btn` VALUES ('94', '1', '22');
INSERT INTO `eova_role_btn` VALUES ('95', '1', '23');
INSERT INTO `eova_role_btn` VALUES ('96', '1', '29');
INSERT INTO `eova_role_btn` VALUES ('97', '1', '28');
INSERT INTO `eova_role_btn` VALUES ('98', '1', '25');
INSERT INTO `eova_role_btn` VALUES ('99', '1', '26');
INSERT INTO `eova_role_btn` VALUES ('100', '1', '27');
INSERT INTO `eova_role_btn` VALUES ('101', '1', '80');
INSERT INTO `eova_role_btn` VALUES ('102', '1', '81');
INSERT INTO `eova_role_btn` VALUES ('103', '1', '82');
INSERT INTO `eova_role_btn` VALUES ('104', '1', '83');
INSERT INTO `eova_role_btn` VALUES ('105', '1', '86');
INSERT INTO `eova_role_btn` VALUES ('106', '1', '87');
INSERT INTO `eova_role_btn` VALUES ('107', '1', '88');
INSERT INTO `eova_role_btn` VALUES ('108', '1', '60');
INSERT INTO `eova_role_btn` VALUES ('109', '1', '61');
INSERT INTO `eova_role_btn` VALUES ('110', '1', '62');
INSERT INTO `eova_role_btn` VALUES ('111', '1', '63');
INSERT INTO `eova_role_btn` VALUES ('112', '1', '64');
INSERT INTO `eova_role_btn` VALUES ('113', '1', '65');

-- ----------------------------
-- Table structure for `eova_task`
-- ----------------------------
DROP TABLE IF EXISTS `eova_task`;
CREATE TABLE `eova_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` int(1) NOT NULL DEFAULT '0' COMMENT '状态：0=停止，1=启动',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `exp` varchar(50) NOT NULL COMMENT '表达式',
  `class` varchar(255) NOT NULL COMMENT '实现类',
  `info` varchar(255) DEFAULT NULL COMMENT '说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eova_task
-- ----------------------------
-- INSERT INTO `eova_task` VALUES ('1', '0', '每分', '0 0/1 * * * ?', 'com.oss.job.EveryMinJob', '每分钟来一发');
-- INSERT INTO `eova_task` VALUES ('2', '0', '每时', '0 0 0/1 * * ?', 'com.oss.job.EveryHourJob', '每小时统计一次');
-- INSERT INTO `eova_task` VALUES ('12', '0', '每天', '59 59 23 * * ?', 'com.oss.job.EveryDayJob', '每天23点59分59秒跑一下');

-- ----------------------------
-- Table structure for `eova_user`
-- ----------------------------
DROP TABLE IF EXISTS `eova_user`;
CREATE TABLE `eova_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` varchar(30) NOT NULL COMMENT '帐号',
  `login_pwd` varchar(50) NOT NULL COMMENT '密码',
  `nickname` varchar(255) DEFAULT '' COMMENT '中文名',
  `rid` int(11) DEFAULT '0' COMMENT '角色ID',
  `hotel_id` int(11) DEFAULT '0' COMMENT '所属酒店',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eova_user
-- ----------------------------
INSERT INTO `eova_user` VALUES ('1', 'admin', '89BDF69372C2EF53EA409CDF020B5694', '超级管理员', '1', '0');
INSERT INTO `eova_user` VALUES ('2', 'eova', '89BDF69372C2EF53EA409CDF020B5694', '管理员', '2', '0');
INSERT INTO `eova_user` VALUES ('3', 'test', '89BDF69372C2EF53EA409CDF020B5694', '测试', '3', '19');

-- ----------------------------
-- Table structure for `eova_widget`
-- ----------------------------
DROP TABLE IF EXISTS `eova_widget`;
CREATE TABLE `eova_widget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(5) NOT NULL DEFAULT '1' COMMENT '控件类型：1=EOVA控件，2=DIY控件',
  `value` varchar(50) NOT NULL COMMENT '控件值',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `version` float(5,1) DEFAULT '1.0' COMMENT '版本号',
  `path` varchar(50) DEFAULT NULL COMMENT '路径',
  `description` varchar(4000) DEFAULT NULL COMMENT '介绍',
  `config` varchar(4000) DEFAULT NULL COMMENT '控件配置信息JSON',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eova_widget
-- ----------------------------
INSERT INTO `eova_widget` VALUES ('1', '1', '文本框', '文本框', '1.0', null, null, null);
INSERT INTO `eova_widget` VALUES ('2', '1', '下拉框', '下拉框', '1.0', null, null, null);
INSERT INTO `eova_widget` VALUES ('3', '1', '查找框', '查找框', '1.0', null, null, null);
INSERT INTO `eova_widget` VALUES ('4', '1', '时间框', '时间框', '1.0', null, null, null);
INSERT INTO `eova_widget` VALUES ('5', '1', '文本域', '文本域', '1.0', null, null, null);
INSERT INTO `eova_widget` VALUES ('6', '1', '编辑框', '编辑框', '1.0', null, null, null);
INSERT INTO `eova_widget` VALUES ('7', '1', '复选框', '复选框', '1.0', null, null, null);
INSERT INTO `eova_widget` VALUES ('8', '1', '自增框', '自增框', '1.0', null, null, null);
INSERT INTO `eova_widget` VALUES ('9', '1', '图片框', '图片框', '1.0', null, null, null);
INSERT INTO `eova_widget` VALUES ('10', '1', '图标框', '图标框', '1.0', null, null, null);
INSERT INTO `eova_widget` VALUES ('11', '1', '文件框', '文件框', '1.0', null, null, null);
INSERT INTO `eova_widget` VALUES ('12', '1', '日期框', '日期框', '1.0', null, null, null);
INSERT INTO `eova_widget` VALUES ('13', '2', '密码框', '密码框', '1.0', '/widget/password/index.html', '我的密码框，系统不给，自己造一个，大家一起爽歪歪', null);
INSERT INTO `eova_widget` VALUES ('14', '2', '数字框', '数字框', '1.0', '/widget/number/index.html', 'number', null);
INSERT INTO `eova_widget` VALUES ('15', '2', '颜色框', '颜色框', '1.0', '/widget/color/index.html', 'color', null);

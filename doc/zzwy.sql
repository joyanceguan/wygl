/*
Navicat MySQL Data Transfer

Source Server         : local-php
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : zzwy

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-05-09 23:15:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '车位号',
  `size` varchar(255) DEFAULT NULL COMMENT '面积',
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `user` bigint(20) DEFAULT NULL COMMENT '所属业主',
  `time` varchar(255) DEFAULT NULL COMMENT '到期时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='车位信息';

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('1', '8723', '20.01', '标准车位', '8', '2018-05-09 22:38:59');
INSERT INTO `car` VALUES ('2', '918JK', '20', '子母车位', '9', '');

-- ----------------------------
-- Table structure for fix
-- ----------------------------
DROP TABLE IF EXISTS `fix`;
CREATE TABLE `fix` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '报修标题',
  `remark` varchar(255) DEFAULT NULL COMMENT '详情',
  `user` bigint(20) DEFAULT NULL COMMENT '报修人',
  `state` varchar(255) DEFAULT NULL COMMENT '物业完成状态',
  `ustate` varchar(255) DEFAULT NULL COMMENT '用户确认状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='报修信息';

-- ----------------------------
-- Records of fix
-- ----------------------------
INSERT INTO `fix` VALUES ('1', 'fdajkfdaskj', 'kfdjaskfdas', '1', '已完成', '已完成');
INSERT INTO `fix` VALUES ('2', '放大发大水发', '范德萨发少打', '9', '已完成', '已完成');

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '楼栋编号',
  `ceng` varchar(255) DEFAULT NULL COMMENT '层数',
  `room` int(255) DEFAULT NULL COMMENT '房间数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='楼栋信息';

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES ('1', '12栋', '8', '40');
INSERT INTO `house` VALUES ('2', '11栋', '6', '12');
INSERT INTO `house` VALUES ('3', '4栋', '9', '78');

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '收费名称',
  `price` varchar(10) DEFAULT NULL COMMENT '金额',
  `time` datetime DEFAULT NULL COMMENT '缴费截止时间',
  `user` bigint(20) DEFAULT NULL COMMENT '业主',
  `remark` varchar(255) DEFAULT NULL COMMENT '说明',
  `state` varchar(255) DEFAULT NULL COMMENT '缴费状态',
  `gmtTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='缴费时间';

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('3', '1', '1', '2018-05-06 22:49:27', '8', '1', '已缴费', '2018-05-09 22:49:31');
INSERT INTO `record` VALUES ('4', '垃圾费8元', '8', '2018-05-19 23:12:22', '9', '一起缴纳哈', '待缴费', '2018-05-09 23:12:27');
INSERT INTO `record` VALUES ('5', '垃圾费8元', '8', '2018-05-19 23:12:22', '8', '一起缴纳哈', '待缴费', '2018-05-09 23:12:27');
INSERT INTO `record` VALUES ('6', '张大鹏的维修费', '12', '2018-05-18 23:12:38', '9', '12', '待缴费', '2018-05-09 23:12:40');

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '房号',
  `house` varchar(255) DEFAULT NULL COMMENT '所属楼栋',
  `size` varchar(255) DEFAULT NULL COMMENT '面积',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='房间信息';

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES ('1', 'A01', '1', '91.1');
INSERT INTO `room` VALUES ('2', 'FDASFDS', '1', '89.41');
INSERT INTO `room` VALUES ('3', 'G45GDSA', '2', '101');
INSERT INTO `room` VALUES ('4', '4-0-1', '3', '123');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(50) DEFAULT NULL COMMENT 'key',
  `value` varchar(2000) DEFAULT NULL COMMENT 'value',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态   0：隐藏   1：显示',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统配置信息表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', 'CLOUD_STORAGE_CONFIG_KEY', '{\"aliyunAccessKeyId\":\"\",\"aliyunAccessKeySecret\":\"\",\"aliyunBucketName\":\"\",\"aliyunDomain\":\"\",\"aliyunEndPoint\":\"\",\"aliyunPrefix\":\"\",\"qcloudBucketName\":\"\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qiniuAccessKey\":\"NrgMfABZxWLo5B-YYSjoE8-AZ1EISdi1Z3ubLOeZ\",\"qiniuBucketName\":\"ios-app\",\"qiniuDomain\":\"http://7xqbwh.dl1.z0.glb.clouddn.com\",\"qiniuPrefix\":\"upload\",\"qiniuSecretKey\":\"uIwJHevMRWU0VLxFvgy0tAcOdGqasdtVlJkdy6vV\",\"type\":1}', '0', '云存储配置信息');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1', 'admin', '修改密码', 'com.learn.controller.SysUserController.password()', '\"admin\"', '0:0:0:0:0:0:0:1', '2018-04-17 10:10:34');
INSERT INTO `sys_log` VALUES ('2', 'admin', '修改菜单', 'com.learn.controller.SysMenuController.update()', '{\"icon\":\"fa fa-comment-o\",\"menuId\":31,\"name\":\"通知公告\",\"orderNum\":6,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":1,\"url\":\"generator/notice.html\"}', '0:0:0:0:0:0:0:1', '2018-04-17 10:12:20');
INSERT INTO `sys_log` VALUES ('3', 'admin', '删除用户', 'com.learn.controller.SysUserController.delete()', '[1]', '0:0:0:0:0:0:0:1', '2018-04-17 10:18:09');
INSERT INTO `sys_log` VALUES ('4', 'admin', '删除用户', 'com.learn.controller.SysUserController.delete()', '[1]', '0:0:0:0:0:0:0:1', '2018-04-17 10:18:55');
INSERT INTO `sys_log` VALUES ('5', 'admin', '保存角色', 'com.learn.controller.SysRoleController.save()', '{\"menuIdList\":[31,32],\"roleName\":\"学生\"}', '0:0:0:0:0:0:0:1', '2018-04-17 10:26:34');
INSERT INTO `sys_log` VALUES ('6', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"roleIdList\":[1],\"status\":1,\"username\":\"小明\"}', '0:0:0:0:0:0:0:1', '2018-04-17 10:30:58');
INSERT INTO `sys_log` VALUES ('7', 'admin', '修改菜单', 'com.learn.controller.SysMenuController.update()', '{\"icon\":\"fa fa-th-list\",\"menuId\":36,\"name\":\"课程选择\",\"orderNum\":6,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":1,\"url\":\"generator/choose.html\"}', '0:0:0:0:0:0:0:1', '2018-04-17 12:36:29');
INSERT INTO `sys_log` VALUES ('8', 'admin', '修改菜单', 'com.learn.controller.SysMenuController.update()', '{\"icon\":\"fa fa-user-circle\",\"menuId\":41,\"name\":\"教师管理\",\"orderNum\":6,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":1,\"url\":\"generator/teacher.html\"}', '0:0:0:0:0:0:0:1', '2018-04-17 12:46:48');
INSERT INTO `sys_log` VALUES ('9', 'admin', '删除菜单', 'com.learn.controller.SysMenuController.delete()', '[38,40,39]', '0:0:0:0:0:0:0:1', '2018-04-17 13:00:47');
INSERT INTO `sys_log` VALUES ('10', 'admin', '修改菜单', 'com.learn.controller.SysMenuController.update()', '{\"icon\":\"fa fa-book\",\"menuId\":46,\"name\":\"教师开课\",\"orderNum\":6,\"parentId\":1,\"parentName\":\"系统管理\",\"type\":1,\"url\":\"generator/teachercourse.html\"}', '0:0:0:0:0:0:0:1', '2018-04-17 13:02:38');
INSERT INTO `sys_log` VALUES ('11', 'admin', '修改菜单', 'com.learn.controller.SysMenuController.update()', '{\"icon\":\"fa fa-book\",\"menuId\":46,\"name\":\"教师开课\",\"orderNum\":6,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":1,\"url\":\"generator/teachercourse.html\"}', '0:0:0:0:0:0:0:1', '2018-04-17 13:02:50');
INSERT INTO `sys_log` VALUES ('12', 'admin', '修改菜单', 'com.learn.controller.SysMenuController.update()', '{\"icon\":\"fa fa-user\",\"menuId\":2,\"name\":\"用户管理\",\"orderNum\":1,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":1,\"url\":\"sys/user.html\"}', '0:0:0:0:0:0:0:1', '2018-04-17 13:04:10');
INSERT INTO `sys_log` VALUES ('13', 'admin', '修改角色', 'com.learn.controller.SysRoleController.update()', '{\"createTime\":1492395994000,\"createUserId\":1,\"menuIdList\":[31,32,36,37,46,47],\"roleId\":1,\"roleName\":\"学生\"}', '0:0:0:0:0:0:0:1', '2018-04-17 13:04:43');
INSERT INTO `sys_log` VALUES ('14', 'admin', '修改角色', 'com.learn.controller.SysRoleController.update()', '{\"createTime\":1492395994000,\"createUserId\":1,\"menuIdList\":[31,32,36,37],\"roleId\":1,\"roleName\":\"学生\"}', '0:0:0:0:0:0:0:1', '2018-04-17 13:24:40');
INSERT INTO `sys_log` VALUES ('15', 'admin', '修改菜单', 'com.learn.controller.SysMenuController.update()', '{\"icon\":\"fa fa-build\",\"menuId\":51,\"name\":\"选课记录\",\"orderNum\":6,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":1,\"url\":\"generator/record.html\"}', '0:0:0:0:0:0:0:1', '2018-04-17 14:40:22');
INSERT INTO `sys_log` VALUES ('16', 'admin', '修改菜单', 'com.learn.controller.SysMenuController.update()', '{\"icon\":\"fa fa-building\",\"menuId\":51,\"name\":\"选课记录\",\"orderNum\":6,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":1,\"url\":\"generator/record.html\"}', '0:0:0:0:0:0:0:1', '2018-04-17 14:41:05');
INSERT INTO `sys_log` VALUES ('17', 'admin', '修改角色', 'com.learn.controller.SysRoleController.update()', '{\"createTime\":1492395994000,\"createUserId\":1,\"menuIdList\":[31,32,36,37,51,52],\"roleId\":1,\"roleName\":\"学生\"}', '0:0:0:0:0:0:0:1', '2018-04-17 14:42:53');
INSERT INTO `sys_log` VALUES ('18', 'admin', '修改菜单', 'com.learn.controller.SysMenuController.update()', '{\"icon\":\"fa fa-building\",\"menuId\":53,\"name\":\"学生选课\",\"orderNum\":6,\"parentId\":1,\"parentName\":\"系统管理\",\"type\":1,\"url\":\"generator/record.html\"}', '0:0:0:0:0:0:0:1', '2018-04-17 15:06:42');
INSERT INTO `sys_log` VALUES ('19', 'admin', '修改菜单', 'com.learn.controller.SysMenuController.update()', '{\"icon\":\"fa fa-building\",\"menuId\":53,\"name\":\"学生选课\",\"orderNum\":6,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":1,\"url\":\"generator/record.html\"}', '0:0:0:0:0:0:0:1', '2018-04-17 15:06:48');
INSERT INTO `sys_log` VALUES ('20', 'admin', '修改菜单', 'com.learn.controller.SysMenuController.update()', '{\"icon\":\"fa fa-building\",\"menuId\":53,\"name\":\"学生选课\",\"orderNum\":6,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":1,\"url\":\"generator/choose-user.html\"}', '0:0:0:0:0:0:0:1', '2018-04-17 15:10:43');
INSERT INTO `sys_log` VALUES ('21', 'admin2', '保存角色', 'com.learn.controller.SysRoleController.save()', '{\"menuIdList\":[],\"roleName\":\"系统管理员\"}', '0:0:0:0:0:0:0:1', '2018-04-17 15:24:04');
INSERT INTO `sys_log` VALUES ('22', 'admin2', '修改角色', 'com.learn.controller.SysRoleController.update()', '{\"createTime\":1492413844000,\"createUserId\":-1,\"menuIdList\":[2,15,16,17,18,31,32,33,34,35,41,42,43,44,45,46,47,48,49,50,53,54],\"roleId\":2,\"roleName\":\"系统管理员\"}', '0:0:0:0:0:0:0:1', '2018-04-17 15:29:39');
INSERT INTO `sys_log` VALUES ('23', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"email\":\"36113@qq.com\",\"mobile\":\"13887477411\",\"roleIdList\":[1],\"status\":1,\"username\":\"大明\"}', '0:0:0:0:0:0:0:1', '2018-04-17 21:15:22');
INSERT INTO `sys_log` VALUES ('24', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"email\":\"zhangsan@137.com\",\"mobile\":\"18378729881\",\"roleIdList\":[1],\"status\":1,\"username\":\"张三\"}', '0:0:0:0:0:0:0:1', '2018-04-17 21:38:29');
INSERT INTO `sys_log` VALUES ('25', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"email\":\"lisi@163.com\",\"mobile\":\"13963651269\",\"roleIdList\":[1],\"status\":1,\"username\":\"李四\"}', '0:0:0:0:0:0:0:1', '2018-04-17 21:38:48');
INSERT INTO `sys_log` VALUES ('26', 'admin2', '修改角色', 'com.learn.controller.SysRoleController.update()', '{\"createTime\":1492413844000,\"createUserId\":-1,\"menuIdList\":[2,15,16,17,18,31,32,33,34,35,41,42,43,44,45,46,47,48,49,50,53,54,60,61,62,63,64],\"roleId\":2,\"roleName\":\"系统管理员\"}', '0:0:0:0:0:0:0:1', '2018-04-17 21:41:35');
INSERT INTO `sys_log` VALUES ('27', 'admin', '删除菜单', 'com.learn.controller.SysMenuController.delete()', '[33,34,35,36,37,41,42,43,44,45]', '0:0:0:0:0:0:0:1', '2018-05-04 17:59:51');
INSERT INTO `sys_log` VALUES ('28', 'admin', '删除菜单', 'com.learn.controller.SysMenuController.delete()', '[46,47,48,49,50,51,52,53,54,60]', '0:0:0:0:0:0:0:1', '2018-05-04 17:59:54');
INSERT INTO `sys_log` VALUES ('29', 'admin', '删除菜单', 'com.learn.controller.SysMenuController.delete()', '[64,63,62,61]', '0:0:0:0:0:0:0:1', '2018-05-04 17:59:58');
INSERT INTO `sys_log` VALUES ('30', 'admin', '删除菜单', 'com.learn.controller.SysMenuController.delete()', '[32,31]', '0:0:0:0:0:0:0:1', '2018-05-04 18:00:02');
INSERT INTO `sys_log` VALUES ('31', 'admin', '修改角色', 'com.learn.controller.SysRoleController.update()', '{\"createTime\":1492413844000,\"createUserId\":-1,\"menuIdList\":[1,3,19,20,21,22,4,23,24,25,26,5,6,7,8,9,10,11,12,13,14,27,30,29,28,2,15,16,17,18],\"roleId\":2,\"roleName\":\"系统管理员\"}', '0:0:0:0:0:0:0:1', '2018-05-04 18:01:30');
INSERT INTO `sys_log` VALUES ('32', 'admin', '修改角色', 'com.learn.controller.SysRoleController.update()', '{\"createTime\":1492395994000,\"createUserId\":1,\"menuIdList\":[2,15,16,17,18],\"roleId\":1,\"roleName\":\"普通\"}', '0:0:0:0:0:0:0:1', '2018-05-04 18:01:36');
INSERT INTO `sys_log` VALUES ('33', 'admin', '修改角色', 'com.learn.controller.SysRoleController.update()', '{\"createTime\":1492413844000,\"createUserId\":-1,\"menuIdList\":[2,15,16,17,18],\"roleId\":2,\"roleName\":\"系统管理员\"}', '0:0:0:0:0:0:0:1', '2018-05-04 18:04:19');
INSERT INTO `sys_log` VALUES ('34', 'admin', '修改个人信息', 'com.learn.controller.SysUserController.updateInfo()', '\"13612345678\"', '127.0.0.1', '2018-03-13 18:45:44');
INSERT INTO `sys_log` VALUES ('35', 'admin', '修改个人信息', 'com.learn.controller.SysUserController.updateInfo()', '\"13612345678\"', '127.0.0.1', '2018-03-13 18:46:06');
INSERT INTO `sys_log` VALUES ('36', 'admin', '修改个人信息', 'com.learn.controller.SysUserController.updateInfo()', '\"13612345678\"', '127.0.0.1', '2018-03-13 18:46:10');
INSERT INTO `sys_log` VALUES ('37', 'admin', '修改个人信息', 'com.learn.controller.SysUserController.updateInfo()', '\"13223232323\"', '127.0.0.1', '2018-03-13 18:46:41');
INSERT INTO `sys_log` VALUES ('38', 'admin', '修改个人信息', 'com.learn.controller.SysUserController.updateInfo()', '\"321321\"', '127.0.0.1', '2018-03-13 18:46:45');
INSERT INTO `sys_log` VALUES ('39', 'admin', '修改个人信息', 'com.learn.controller.SysUserController.updateInfo()', '\"321321\"', '127.0.0.1', '2018-03-13 18:46:55');
INSERT INTO `sys_log` VALUES ('40', 'admin', '修改个人信息', 'com.learn.controller.SysUserController.updateInfo()', '\"321321\"', '127.0.0.1', '2018-03-13 18:47:09');
INSERT INTO `sys_log` VALUES ('41', 'admin1', '修改菜单', 'com.learn.controller.SysMenuController.update()', '{\"icon\":\"fa fa-user\",\"menuId\":2,\"name\":\"业主管理\",\"orderNum\":1,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":1,\"url\":\"sys/user.html\"}', '0:0:0:0:0:0:0:1', '2018-05-09 22:24:08');
INSERT INTO `sys_log` VALUES ('42', 'admin1', '保存菜单', 'com.learn.controller.SysMenuController.save()', '{\"name\":\"房号绑定\",\"orderNum\":6,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":1,\"url\":\"admin/userroo.html\"}', '0:0:0:0:0:0:0:1', '2018-05-09 22:31:28');
INSERT INTO `sys_log` VALUES ('43', 'admin1', '修改菜单', 'com.learn.controller.SysMenuController.update()', '{\"menuId\":75,\"name\":\"房号绑定\",\"orderNum\":6,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":1,\"url\":\"admin/userroom.html\"}', '0:0:0:0:0:0:0:1', '2018-05-09 22:31:39');
INSERT INTO `sys_log` VALUES ('44', 'admin1', '修改用户', 'com.learn.controller.SysUserController.update()', '{\"createTime\":1525428183000,\"roleIdList\":[1],\"room\":1,\"status\":1,\"userId\":8,\"username\":\"123123\"}', '0:0:0:0:0:0:0:1', '2018-05-09 22:33:48');
INSERT INTO `sys_log` VALUES ('45', 'admin1', '修改菜单', 'com.learn.controller.SysMenuController.update()', '{\"menuId\":81,\"name\":\"缴费信息\",\"orderNum\":6,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":1,\"url\":\"admin/record.html\"}', '0:0:0:0:0:0:0:1', '2018-05-09 22:48:01');
INSERT INTO `sys_log` VALUES ('46', 'admin1', '保存菜单', 'com.learn.controller.SysMenuController.save()', '{\"name\":\"报修管理\",\"orderNum\":6,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":1,\"url\":\"admin/fixall.html\"}', '0:0:0:0:0:0:0:1', '2018-05-09 22:53:17');
INSERT INTO `sys_log` VALUES ('47', 'admin1', '保存菜单', 'com.learn.controller.SysMenuController.save()', '{\"name\":\"投诉管理\",\"orderNum\":6,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":1,\"url\":\"admin/tsall.html\"}', '0:0:0:0:0:0:0:1', '2018-05-09 23:04:40');
INSERT INTO `sys_log` VALUES ('48', 'admin1', '修改角色', 'com.learn.controller.SysRoleController.update()', '{\"createTime\":1523931994000,\"createUserId\":1,\"menuIdList\":[65,66,70,71,76,77,81,82,86,87,88,89,90,92,93,94,95,96],\"roleId\":1,\"roleName\":\"普通\"}', '0:0:0:0:0:0:0:1', '2018-05-09 23:06:48');
INSERT INTO `sys_log` VALUES ('49', 'admin1', '修改角色', 'com.learn.controller.SysRoleController.update()', '{\"createTime\":1523949844000,\"createUserId\":-1,\"menuIdList\":[2,15,16,17,18,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,91,97],\"roleId\":2,\"roleName\":\"系统管理员\"}', '0:0:0:0:0:0:0:1', '2018-05-09 23:07:05');
INSERT INTO `sys_log` VALUES ('50', 'admin', '修改用户', 'com.learn.controller.SysUserController.update()', '{\"createTime\":1525428183000,\"roleIdList\":[1],\"room\":1,\"roomEntity\":{\"house\":1,\"houseEntity\":{\"ceng\":\"8\",\"id\":1,\"name\":\"01M1\",\"room\":40},\"id\":1,\"name\":\"A01\",\"size\":\"91.1\"},\"status\":1,\"userId\":8,\"username\":\"李明\"}', '0:0:0:0:0:0:0:1', '2018-05-09 23:08:45');
INSERT INTO `sys_log` VALUES ('51', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"email\":\"1·32123@qq.com\",\"mobile\":\"13223232323\",\"roleIdList\":[],\"status\":1,\"username\":\"大成\"}', '0:0:0:0:0:0:0:1', '2018-05-09 23:08:55');
INSERT INTO `sys_log` VALUES ('52', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"email\":\"132123@qq.com\",\"mobile\":\"13223232323\",\"roleIdList\":[],\"status\":1,\"username\":\"大成\"}', '0:0:0:0:0:0:0:1', '2018-05-09 23:08:57');
INSERT INTO `sys_log` VALUES ('53', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"email\":\"123123@qq.com\",\"mobile\":\"13223232323\",\"roleIdList\":[],\"status\":1,\"username\":\"张大鹏\"}', '0:0:0:0:0:0:0:1', '2018-05-09 23:10:16');
INSERT INTO `sys_log` VALUES ('54', 'admin', '修改用户', 'com.learn.controller.SysUserController.update()', '{\"createTime\":1525878616000,\"createUserId\":-1,\"email\":\"123123@qq.com\",\"mobile\":\"13223232323\",\"roleIdList\":[],\"room\":4,\"status\":1,\"userId\":9,\"username\":\"张大鹏\"}', '0:0:0:0:0:0:0:1', '2018-05-09 23:11:22');
INSERT INTO `sys_log` VALUES ('55', 'admin', '修改用户', 'com.learn.controller.SysUserController.update()', '{\"createTime\":1525428183000,\"roleIdList\":[1],\"room\":4,\"roomEntity\":{\"house\":1,\"houseEntity\":{\"ceng\":\"8\",\"id\":1,\"name\":\"12栋\",\"room\":40},\"id\":1,\"name\":\"A01\",\"size\":\"91.1\"},\"status\":1,\"userId\":8,\"username\":\"李明\"}', '0:0:0:0:0:0:0:1', '2018-05-09 23:11:26');
INSERT INTO `sys_log` VALUES ('56', 'admin', '修改用户', 'com.learn.controller.SysUserController.update()', '{\"createTime\":1525428183000,\"roleIdList\":[1],\"roomEntity\":{\"house\":3,\"houseEntity\":{\"ceng\":\"9\",\"id\":3,\"name\":\"4栋\",\"room\":78},\"id\":4,\"name\":\"4-0-1\",\"size\":\"123\"},\"status\":1,\"userId\":8,\"username\":\"李明\"}', '0:0:0:0:0:0:0:1', '2018-05-09 23:11:55');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COMMENT='菜单管理';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', '系统管理', null, null, '0', 'fa fa-cog', '0');
INSERT INTO `sys_menu` VALUES ('2', '0', '业主管理', 'sys/user.html', null, '1', 'fa fa-user', '1');
INSERT INTO `sys_menu` VALUES ('3', '1', '角色管理', 'sys/role.html', null, '1', 'fa fa-user-secret', '2');
INSERT INTO `sys_menu` VALUES ('4', '1', '菜单管理', 'sys/menu.html', null, '1', 'fa fa-th-list', '3');
INSERT INTO `sys_menu` VALUES ('5', '1', 'SQL监控', 'druid/sql.html', null, '1', 'fa fa-bug', '4');
INSERT INTO `sys_menu` VALUES ('6', '1', '定时任务', 'sys/schedule.html', null, '1', 'fa fa-tasks', '5');
INSERT INTO `sys_menu` VALUES ('7', '6', '查看', null, 'sys:schedule:list,sys:schedule:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('8', '6', '新增', null, 'sys:schedule:save', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('9', '6', '修改', null, 'sys:schedule:update', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('10', '6', '删除', null, 'sys:schedule:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('11', '6', '暂停', null, 'sys:schedule:pause', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('12', '6', '恢复', null, 'sys:schedule:resume', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('13', '6', '立即执行', null, 'sys:schedule:run', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('14', '6', '日志列表', null, 'sys:schedule:log', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('15', '2', '查看', null, 'sys:user:list,sys:user:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('16', '2', '新增', null, 'sys:user:save,sys:role:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('17', '2', '修改', null, 'sys:user:update,sys:role:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('18', '2', '删除', null, 'sys:user:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('19', '3', '查看', null, 'sys:role:list,sys:role:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('20', '3', '新增', null, 'sys:role:save,sys:menu:perms', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('21', '3', '修改', null, 'sys:role:update,sys:menu:perms', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('22', '3', '删除', null, 'sys:role:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('23', '4', '查看', null, 'sys:menu:list,sys:menu:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('24', '4', '新增', null, 'sys:menu:save,sys:menu:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('25', '4', '修改', null, 'sys:menu:update,sys:menu:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('26', '4', '删除', null, 'sys:menu:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('27', '1', '参数管理', 'sys/config.html', 'sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete', '1', 'fa fa-sun-o', '6');
INSERT INTO `sys_menu` VALUES ('28', '1', '代码生成器', 'sys/generator.html', 'sys:generator:list,sys:generator:code', '1', 'fa fa-rocket', '8');
INSERT INTO `sys_menu` VALUES ('29', '1', '系统日志', 'sys/log.html', 'sys:log:list', '1', 'fa fa-file-text-o', '7');
INSERT INTO `sys_menu` VALUES ('30', '1', '文件上传', 'sys/oss.html', 'sys:oss:all', '1', 'fa fa-file-image-o', '6');
INSERT INTO `sys_menu` VALUES ('65', '0', '楼栋信息', 'admin/house.html', null, '1', null, '6');
INSERT INTO `sys_menu` VALUES ('66', '65', '查看', null, 'house:list,house:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('67', '65', '新增', null, 'house:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('68', '65', '修改', null, 'house:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('69', '65', '删除', null, 'house:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('70', '0', '房间信息', 'admin/room.html', null, '1', null, '6');
INSERT INTO `sys_menu` VALUES ('71', '70', '查看', null, 'room:list,room:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('72', '70', '新增', null, 'room:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('73', '70', '修改', null, 'room:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('74', '70', '删除', null, 'room:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('75', '0', '房号绑定', 'admin/userroom.html', null, '1', null, '6');
INSERT INTO `sys_menu` VALUES ('76', '0', '车位信息', 'admin/car.html', null, '1', null, '6');
INSERT INTO `sys_menu` VALUES ('77', '76', '查看', null, 'car:list,car:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('78', '76', '新增', null, 'car:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('79', '76', '修改', null, 'car:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('80', '76', '删除', null, 'car:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('81', '0', '缴费信息', 'admin/record.html', null, '1', null, '6');
INSERT INTO `sys_menu` VALUES ('82', '81', '查看', null, 'record:list,record:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('83', '81', '新增', null, 'record:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('84', '81', '修改', null, 'record:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('85', '81', '删除', null, 'record:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('86', '0', '报修信息', 'admin/fix.html', null, '1', null, '6');
INSERT INTO `sys_menu` VALUES ('87', '86', '查看', null, 'fix:list,fix:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('88', '86', '新增', null, 'fix:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('89', '86', '修改', null, 'fix:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('90', '86', '删除', null, 'fix:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('91', '0', '报修管理', 'admin/fixall.html', null, '1', null, '6');
INSERT INTO `sys_menu` VALUES ('92', '0', '投诉信息', 'admin/ts.html', null, '1', null, '6');
INSERT INTO `sys_menu` VALUES ('93', '92', '查看', null, 'ts:list,ts:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('94', '92', '新增', null, 'ts:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('95', '92', '修改', null, 'ts:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('96', '92', '删除', null, 'ts:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('97', '0', '投诉管理', 'admin/tsall.html', null, '1', null, '6');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '普通', null, '1', '2018-04-17 10:26:34');
INSERT INTO `sys_role` VALUES ('2', '系统管理员', null, '-1', '2018-04-17 15:24:04');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('108', '1', '65');
INSERT INTO `sys_role_menu` VALUES ('109', '1', '66');
INSERT INTO `sys_role_menu` VALUES ('110', '1', '70');
INSERT INTO `sys_role_menu` VALUES ('111', '1', '71');
INSERT INTO `sys_role_menu` VALUES ('112', '1', '76');
INSERT INTO `sys_role_menu` VALUES ('113', '1', '77');
INSERT INTO `sys_role_menu` VALUES ('114', '1', '81');
INSERT INTO `sys_role_menu` VALUES ('115', '1', '82');
INSERT INTO `sys_role_menu` VALUES ('116', '1', '86');
INSERT INTO `sys_role_menu` VALUES ('117', '1', '87');
INSERT INTO `sys_role_menu` VALUES ('118', '1', '88');
INSERT INTO `sys_role_menu` VALUES ('119', '1', '89');
INSERT INTO `sys_role_menu` VALUES ('120', '1', '90');
INSERT INTO `sys_role_menu` VALUES ('121', '1', '92');
INSERT INTO `sys_role_menu` VALUES ('122', '1', '93');
INSERT INTO `sys_role_menu` VALUES ('123', '1', '94');
INSERT INTO `sys_role_menu` VALUES ('124', '1', '95');
INSERT INTO `sys_role_menu` VALUES ('125', '1', '96');
INSERT INTO `sys_role_menu` VALUES ('126', '2', '2');
INSERT INTO `sys_role_menu` VALUES ('127', '2', '15');
INSERT INTO `sys_role_menu` VALUES ('128', '2', '16');
INSERT INTO `sys_role_menu` VALUES ('129', '2', '17');
INSERT INTO `sys_role_menu` VALUES ('130', '2', '18');
INSERT INTO `sys_role_menu` VALUES ('131', '2', '65');
INSERT INTO `sys_role_menu` VALUES ('132', '2', '66');
INSERT INTO `sys_role_menu` VALUES ('133', '2', '67');
INSERT INTO `sys_role_menu` VALUES ('134', '2', '68');
INSERT INTO `sys_role_menu` VALUES ('135', '2', '69');
INSERT INTO `sys_role_menu` VALUES ('136', '2', '70');
INSERT INTO `sys_role_menu` VALUES ('137', '2', '71');
INSERT INTO `sys_role_menu` VALUES ('138', '2', '72');
INSERT INTO `sys_role_menu` VALUES ('139', '2', '73');
INSERT INTO `sys_role_menu` VALUES ('140', '2', '74');
INSERT INTO `sys_role_menu` VALUES ('141', '2', '75');
INSERT INTO `sys_role_menu` VALUES ('142', '2', '76');
INSERT INTO `sys_role_menu` VALUES ('143', '2', '77');
INSERT INTO `sys_role_menu` VALUES ('144', '2', '78');
INSERT INTO `sys_role_menu` VALUES ('145', '2', '79');
INSERT INTO `sys_role_menu` VALUES ('146', '2', '80');
INSERT INTO `sys_role_menu` VALUES ('147', '2', '81');
INSERT INTO `sys_role_menu` VALUES ('148', '2', '82');
INSERT INTO `sys_role_menu` VALUES ('149', '2', '83');
INSERT INTO `sys_role_menu` VALUES ('150', '2', '84');
INSERT INTO `sys_role_menu` VALUES ('151', '2', '85');
INSERT INTO `sys_role_menu` VALUES ('152', '2', '91');
INSERT INTO `sys_role_menu` VALUES ('153', '2', '97');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `type` varchar(255) DEFAULT NULL,
  `room` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='系统用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('-1', 'admin', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', 'root@renren.io', '321321', '1', null, '2018-11-11 11:11:11', null, null);
INSERT INTO `sys_user` VALUES ('1', 'admin1', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', 'admin@admin.com', '13612345678', '1', null, '2018-11-11 11:11:11', null, null);
INSERT INTO `sys_user` VALUES ('8', '李明', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', null, null, '1', null, '2018-05-04 18:03:03', null, null);
INSERT INTO `sys_user` VALUES ('9', '张大鹏', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '123123@qq.com', '13223232323', '1', '-1', '2018-05-09 23:10:16', null, '4');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('7', '-1', '2');
INSERT INTO `sys_user_role` VALUES ('11', '8', '1');
INSERT INTO `sys_user_role` VALUES ('12', '9', '1');

-- ----------------------------
-- Table structure for ts
-- ----------------------------
DROP TABLE IF EXISTS `ts`;
CREATE TABLE `ts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '投诉标题',
  `content` varchar(255) DEFAULT NULL COMMENT '详情',
  `user` bigint(20) DEFAULT NULL COMMENT '投诉人',
  `state` varchar(255) DEFAULT NULL COMMENT '物业完成状态',
  `ustate` varchar(255) DEFAULT NULL COMMENT '用户确认状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='投诉信息';

-- ----------------------------
-- Records of ts
-- ----------------------------
INSERT INTO `ts` VALUES ('1', 'fdajkfdaskj', 'kfdjaskfdas', '1', '已完成', '已完成');
INSERT INTO `ts` VALUES ('2', 'fdafdasf', '发发大水发大水分', '9', '已完成', '已完成');

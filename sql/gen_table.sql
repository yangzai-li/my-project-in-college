/*
 Navicat Premium Data Transfer

 Source Server         : mysql8
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : ry-vue

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 12/04/2022 15:09:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (9, 'sys_message', '故障消息传输表', NULL, NULL, 'SysMessageSender', 'crud', 'com.ruoyi.message.sender', 'messsen', 'messagesen', '故障消息发送', 'ayang', '0', '/', '{\"parentMenuId\":\"2043\"}', 'admin', '2022-04-10 20:49:16', '', '2022-04-10 21:12:07', '故障消息发送');

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (62, '9', 'message_id', '消息流水号', 'bigint(20)', 'Long', 'messageId', '1', '1', NULL, '1', NULL, '1', '1', 'EQ', 'input', '', 1, 'admin', '2022-04-10 20:49:16', '', '2022-04-10 21:12:07');
INSERT INTO `gen_table_column` VALUES (63, '9', 'sender_id', '消息发送者id', 'bigint(20)', 'Long', 'senderId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2022-04-10 20:49:16', '', '2022-04-10 21:12:07');
INSERT INTO `gen_table_column` VALUES (64, '9', 'receiver_id', '消息接收者id', 'bigint(20)', 'Long', 'receiverId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2022-04-10 20:49:16', '', '2022-04-10 21:12:07');
INSERT INTO `gen_table_column` VALUES (65, '9', 'publish_time', '发布时间点', 'datetime', 'Date', 'publishTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2022-04-10 20:49:16', '', '2022-04-10 21:12:07');
INSERT INTO `gen_table_column` VALUES (66, '9', 'erro_machine', '故障机器号', 'bigint(20)', 'Long', 'erroMachine', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2022-04-10 20:49:16', '', '2022-04-10 21:12:07');
INSERT INTO `gen_table_column` VALUES (67, '9', 'describe_info', '故障描述', 'varchar(500)', 'String', 'describeInfo', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 6, 'admin', '2022-04-10 20:49:16', '', '2022-04-10 21:12:07');
INSERT INTO `gen_table_column` VALUES (68, '9', 'accessory', '附件', 'mediumblob', 'String', 'accessory', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'fileUpload', '', 7, 'admin', '2022-04-10 20:49:16', '', '2022-04-10 21:12:07');

-- ----------------------------
-- Table structure for my_test
-- ----------------------------
DROP TABLE IF EXISTS `my_test`;
CREATE TABLE `my_test`  (
  `id` bigint(255) NOT NULL COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `pwd` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '测试表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of my_test
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-green', 'Y', 'admin', '2022-04-01 14:03:39', 'admin', '2022-04-12 11:45:04', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2022-04-01 14:03:39', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-light', 'Y', 'admin', '2022-04-01 14:03:39', 'admin', '2022-04-12 11:43:33', '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaOnOff', 'true', 'Y', 'admin', '2022-04-01 14:03:39', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2022-04-01 14:03:39', 'admin', '2022-04-08 13:45:38', '是否开启注册用户功能（true开启，false关闭）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 213 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '万马科技公司碾米机管理', 0, '万马公司', '15888888888', 'wm@qq.com', '0', '0', 'admin', '2022-04-01 14:03:32', 'admin', '2022-04-08 18:19:08');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '测试', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-04-01 14:03:32', 'admin', '2022-04-12 11:42:15');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2022-04-01 14:03:32', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-04-01 14:03:32', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2022-04-01 14:03:32', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-04-01 14:03:32', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2022-04-01 14:03:32', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2022-04-01 14:03:32', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2022-04-01 14:03:32', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2022-04-01 14:03:32', '', NULL);
INSERT INTO `sys_dept` VALUES (200, 100, '0,100', '成都总公司', 0, '万马负责人', '18288888888', 'wm@qq.com', '0', '2', 'admin', '2022-04-08 12:05:54', 'admin', '2022-04-08 12:51:05');
INSERT INTO `sys_dept` VALUES (201, 200, '0,100,200', '正洋部门', 1, '李正洋', '18282889252', '1361773012@qq.com', '0', '2', 'admin', '2022-04-08 12:32:11', '', NULL);
INSERT INTO `sys_dept` VALUES (202, 200, '0,100,200', '生产部门', 0, '成都生产负责人', NULL, 'wm_cd_sc@qq.com', '0', '2', 'admin', '2022-04-08 12:52:50', 'admin', '2022-04-08 12:54:57');
INSERT INTO `sys_dept` VALUES (203, 200, '0,100,200', '代理部门', 1, '成都代理负责人', NULL, 'wm_cd_dl@qq.com', '0', '2', 'admin', '2022-04-08 12:54:36', 'admin', '2022-04-08 12:56:06');
INSERT INTO `sys_dept` VALUES (204, 200, '0,100,200', '用户', 2, '用户管理负责人', NULL, 'wm_cd_yh@qq.com', '0', '2', 'admin', '2022-04-08 12:55:53', '', NULL);
INSERT INTO `sys_dept` VALUES (205, 100, '0,100', '生产部门（成都）', 0, NULL, NULL, NULL, '0', '0', 'admin', '2022-04-08 16:29:44', 'admin', '2022-04-08 18:20:20');
INSERT INTO `sys_dept` VALUES (206, 100, '0,100', '代理部门', 3, NULL, NULL, NULL, '0', '2', 'admin', '2022-04-08 16:30:01', 'admin', '2022-04-08 16:30:41');
INSERT INTO `sys_dept` VALUES (207, 100, '0,100', '用户', 3, NULL, NULL, NULL, '0', '2', 'admin', '2022-04-08 16:30:13', '', NULL);
INSERT INTO `sys_dept` VALUES (208, 205, '0,100,205', '代理部门（成都）', 1, NULL, NULL, NULL, '0', '0', 'admin', '2022-04-08 16:35:44', 'admin', '2022-04-08 18:20:31');
INSERT INTO `sys_dept` VALUES (209, 208, '0,100,205,208', '用户（成都）', 1, NULL, NULL, NULL, '0', '0', 'admin', '2022-04-08 16:36:17', 'admin', '2022-04-08 18:20:40');
INSERT INTO `sys_dept` VALUES (210, 100, '0,100', '生产商（乐山）', 1, NULL, NULL, NULL, '0', '0', 'admin', '2022-04-08 18:26:40', '', NULL);
INSERT INTO `sys_dept` VALUES (211, 210, '0,100,210', '代理商（乐山）', 1, NULL, NULL, NULL, '0', '0', 'admin', '2022-04-08 18:27:04', '', NULL);
INSERT INTO `sys_dept` VALUES (212, 211, '0,100,210,211', '用户（乐山）', 1, NULL, NULL, NULL, '0', '0', 'admin', '2022-04-08 18:27:18', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2022-04-01 14:03:38', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-04-01 14:03:38', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-04-01 14:03:38', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2022-04-01 14:03:38', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2022-04-01 14:03:38', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2022-04-01 14:03:38', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2022-04-01 14:03:38', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2022-04-01 14:03:38', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2022-04-01 14:03:38', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2022-04-01 14:03:38', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2022-04-01 14:03:38', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2022-04-01 14:03:38', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2022-04-01 14:03:38', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2022-04-01 14:03:38', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2022-04-01 14:03:38', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2022-04-01 14:03:38', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2022-04-01 14:03:38', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-04-01 14:03:38', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-04-01 14:03:38', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-04-01 14:03:38', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2022-04-01 14:03:38', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-04-01 14:03:38', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-04-01 14:03:38', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-04-01 14:03:38', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-04-01 14:03:38', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-04-01 14:03:38', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2022-04-01 14:03:38', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2022-04-01 14:03:38', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2022-04-01 14:03:37', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2022-04-01 14:03:37', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2022-04-01 14:03:37', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2022-04-01 14:03:37', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2022-04-01 14:03:37', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2022-04-01 14:03:37', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2022-04-01 14:03:37', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2022-04-01 14:03:37', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2022-04-01 14:03:37', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2022-04-01 14:03:37', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2022-04-01 14:03:40', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2022-04-01 14:03:40', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2022-04-01 14:03:40', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 323 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-01 17:08:40');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-01 17:45:24');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-01 19:51:52');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-01 20:15:29');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-08 11:23:19');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 11:23:25');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 11:33:02');
INSERT INTO `sys_logininfor` VALUES (107, 'ruoyi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '登录用户：ruoyi 不存在', '2022-04-08 11:33:13');
INSERT INTO `sys_logininfor` VALUES (108, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 11:33:24');
INSERT INTO `sys_logininfor` VALUES (109, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 11:55:34');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 11:55:40');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 12:44:30');
INSERT INTO `sys_logininfor` VALUES (112, 'lzy', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 12:44:41');
INSERT INTO `sys_logininfor` VALUES (113, 'lzy', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 12:44:52');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 12:45:01');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 13:10:00');
INSERT INTO `sys_logininfor` VALUES (116, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 13:10:16');
INSERT INTO `sys_logininfor` VALUES (117, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 13:10:29');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 13:10:32');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 13:13:08');
INSERT INTO `sys_logininfor` VALUES (120, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-08 13:13:14');
INSERT INTO `sys_logininfor` VALUES (121, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 13:13:20');
INSERT INTO `sys_logininfor` VALUES (122, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 13:13:53');
INSERT INTO `sys_logininfor` VALUES (123, 'dl', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 13:14:03');
INSERT INTO `sys_logininfor` VALUES (124, 'dl', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 13:14:11');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 13:14:15');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 13:15:20');
INSERT INTO `sys_logininfor` VALUES (127, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 13:15:28');
INSERT INTO `sys_logininfor` VALUES (128, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 13:16:07');
INSERT INTO `sys_logininfor` VALUES (129, 'dl', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 13:16:17');
INSERT INTO `sys_logininfor` VALUES (130, 'dl', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 13:16:32');
INSERT INTO `sys_logininfor` VALUES (131, 'yh', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 13:16:41');
INSERT INTO `sys_logininfor` VALUES (132, 'yh', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 13:16:46');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 13:16:50');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 13:41:11');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 13:41:14');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 13:43:04');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 13:43:12');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 13:43:41');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 13:43:53');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 13:44:27');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 13:45:10');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 14:17:36');
INSERT INTO `sys_logininfor` VALUES (143, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 14:17:47');
INSERT INTO `sys_logininfor` VALUES (144, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 14:17:56');
INSERT INTO `sys_logininfor` VALUES (145, 'dl', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 14:18:05');
INSERT INTO `sys_logininfor` VALUES (146, 'dl', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 14:18:19');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 14:18:29');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 14:28:43');
INSERT INTO `sys_logininfor` VALUES (149, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-08 14:28:57');
INSERT INTO `sys_logininfor` VALUES (150, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 14:29:03');
INSERT INTO `sys_logininfor` VALUES (151, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 14:32:51');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 14:32:57');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 14:39:00');
INSERT INTO `sys_logininfor` VALUES (154, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 14:39:07');
INSERT INTO `sys_logininfor` VALUES (155, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 14:39:37');
INSERT INTO `sys_logininfor` VALUES (156, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 14:39:54');
INSERT INTO `sys_logininfor` VALUES (157, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 14:55:37');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 14:55:41');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 16:12:51');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 16:24:42');
INSERT INTO `sys_logininfor` VALUES (161, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 16:24:49');
INSERT INTO `sys_logininfor` VALUES (162, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 16:25:00');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 16:25:05');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 16:25:21');
INSERT INTO `sys_logininfor` VALUES (165, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 16:25:30');
INSERT INTO `sys_logininfor` VALUES (166, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 16:26:04');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 16:26:07');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 16:33:21');
INSERT INTO `sys_logininfor` VALUES (169, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 16:33:37');
INSERT INTO `sys_logininfor` VALUES (170, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 16:33:44');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 16:33:49');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 16:37:12');
INSERT INTO `sys_logininfor` VALUES (173, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 16:37:23');
INSERT INTO `sys_logininfor` VALUES (174, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 16:37:35');
INSERT INTO `sys_logininfor` VALUES (175, 'dl', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 16:37:45');
INSERT INTO `sys_logininfor` VALUES (176, 'dl', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 16:38:51');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 16:38:54');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 18:11:32');
INSERT INTO `sys_logininfor` VALUES (179, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 18:11:41');
INSERT INTO `sys_logininfor` VALUES (180, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 18:13:15');
INSERT INTO `sys_logininfor` VALUES (181, 'dl', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 18:13:29');
INSERT INTO `sys_logininfor` VALUES (182, 'dl', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 18:13:46');
INSERT INTO `sys_logininfor` VALUES (183, 'sc2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '登录用户：sc2 不存在', '2022-04-08 18:13:55');
INSERT INTO `sys_logininfor` VALUES (184, 'dl2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 18:14:04');
INSERT INTO `sys_logininfor` VALUES (185, 'dl2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-08 18:14:19');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-08 18:14:24');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-09 19:20:00');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-09 20:34:09');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-09 20:34:28');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-09 20:41:00');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-09 20:41:00');
INSERT INTO `sys_logininfor` VALUES (192, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-09 20:41:42');
INSERT INTO `sys_logininfor` VALUES (193, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-09 20:41:53');
INSERT INTO `sys_logininfor` VALUES (194, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-09 20:42:02');
INSERT INTO `sys_logininfor` VALUES (195, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-09 20:42:11');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-09 20:42:14');
INSERT INTO `sys_logininfor` VALUES (197, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-09 20:42:46');
INSERT INTO `sys_logininfor` VALUES (198, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-09 20:42:56');
INSERT INTO `sys_logininfor` VALUES (199, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-09 20:44:31');
INSERT INTO `sys_logininfor` VALUES (200, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-09 20:44:35');
INSERT INTO `sys_logininfor` VALUES (201, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-09 20:44:51');
INSERT INTO `sys_logininfor` VALUES (202, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-09 20:44:59');
INSERT INTO `sys_logininfor` VALUES (203, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-09 20:46:28');
INSERT INTO `sys_logininfor` VALUES (204, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-09 20:47:02');
INSERT INTO `sys_logininfor` VALUES (205, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-09 20:49:39');
INSERT INTO `sys_logininfor` VALUES (206, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-09 20:49:43');
INSERT INTO `sys_logininfor` VALUES (207, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-09 20:50:30');
INSERT INTO `sys_logininfor` VALUES (208, 'dl2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-09 20:50:48');
INSERT INTO `sys_logininfor` VALUES (209, 'dl2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-09 20:51:04');
INSERT INTO `sys_logininfor` VALUES (210, 'yh2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-09 20:51:18');
INSERT INTO `sys_logininfor` VALUES (211, 'yh2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-09 20:51:53');
INSERT INTO `sys_logininfor` VALUES (212, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-09 20:51:58');
INSERT INTO `sys_logininfor` VALUES (213, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-09 20:57:05');
INSERT INTO `sys_logininfor` VALUES (214, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-09 20:57:34');
INSERT INTO `sys_logininfor` VALUES (215, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-09 20:57:49');
INSERT INTO `sys_logininfor` VALUES (216, 'dl2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-09 20:58:02');
INSERT INTO `sys_logininfor` VALUES (217, 'dl2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-09 20:58:10');
INSERT INTO `sys_logininfor` VALUES (218, 'yh2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-09 20:58:21');
INSERT INTO `sys_logininfor` VALUES (219, 'yh2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-09 20:58:28');
INSERT INTO `sys_logininfor` VALUES (220, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-09 20:58:34');
INSERT INTO `sys_logininfor` VALUES (221, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-10 17:36:16');
INSERT INTO `sys_logininfor` VALUES (222, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-10 18:14:13');
INSERT INTO `sys_logininfor` VALUES (223, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-10 18:14:27');
INSERT INTO `sys_logininfor` VALUES (224, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-10 19:13:04');
INSERT INTO `sys_logininfor` VALUES (225, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-10 19:13:11');
INSERT INTO `sys_logininfor` VALUES (226, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-10 19:22:26');
INSERT INTO `sys_logininfor` VALUES (227, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-10 19:22:31');
INSERT INTO `sys_logininfor` VALUES (228, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-10 19:23:00');
INSERT INTO `sys_logininfor` VALUES (229, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-10 19:23:08');
INSERT INTO `sys_logininfor` VALUES (230, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-10 19:23:23');
INSERT INTO `sys_logininfor` VALUES (231, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-10 19:23:26');
INSERT INTO `sys_logininfor` VALUES (232, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-10 19:26:15');
INSERT INTO `sys_logininfor` VALUES (233, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-10 19:26:28');
INSERT INTO `sys_logininfor` VALUES (234, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-10 19:26:38');
INSERT INTO `sys_logininfor` VALUES (235, 'yh2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-10 19:26:47');
INSERT INTO `sys_logininfor` VALUES (236, 'yh2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-10 19:26:51');
INSERT INTO `sys_logininfor` VALUES (237, 'yh2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-10 19:26:59');
INSERT INTO `sys_logininfor` VALUES (238, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-10 19:27:08');
INSERT INTO `sys_logininfor` VALUES (239, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-10 19:27:13');
INSERT INTO `sys_logininfor` VALUES (240, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-10 20:14:31');
INSERT INTO `sys_logininfor` VALUES (241, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-10 20:14:37');
INSERT INTO `sys_logininfor` VALUES (242, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2022-04-11 09:39:56');
INSERT INTO `sys_logininfor` VALUES (243, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-11 09:39:59');
INSERT INTO `sys_logininfor` VALUES (244, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 09:40:02');
INSERT INTO `sys_logininfor` VALUES (245, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 09:46:29');
INSERT INTO `sys_logininfor` VALUES (246, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 09:46:40');
INSERT INTO `sys_logininfor` VALUES (247, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 09:47:28');
INSERT INTO `sys_logininfor` VALUES (248, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 09:47:34');
INSERT INTO `sys_logininfor` VALUES (249, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 09:49:08');
INSERT INTO `sys_logininfor` VALUES (250, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 09:49:24');
INSERT INTO `sys_logininfor` VALUES (251, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 10:52:44');
INSERT INTO `sys_logininfor` VALUES (252, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 10:52:51');
INSERT INTO `sys_logininfor` VALUES (253, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 10:53:05');
INSERT INTO `sys_logininfor` VALUES (254, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 10:53:14');
INSERT INTO `sys_logininfor` VALUES (255, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 12:03:11');
INSERT INTO `sys_logininfor` VALUES (256, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 12:03:16');
INSERT INTO `sys_logininfor` VALUES (257, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 12:05:28');
INSERT INTO `sys_logininfor` VALUES (258, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 12:05:50');
INSERT INTO `sys_logininfor` VALUES (259, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 12:08:55');
INSERT INTO `sys_logininfor` VALUES (260, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 12:08:59');
INSERT INTO `sys_logininfor` VALUES (261, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 12:09:23');
INSERT INTO `sys_logininfor` VALUES (262, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 12:09:31');
INSERT INTO `sys_logininfor` VALUES (263, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 12:18:21');
INSERT INTO `sys_logininfor` VALUES (264, 'dl2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 12:18:31');
INSERT INTO `sys_logininfor` VALUES (265, 'dl2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 12:51:11');
INSERT INTO `sys_logininfor` VALUES (266, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 12:51:16');
INSERT INTO `sys_logininfor` VALUES (267, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 13:27:53');
INSERT INTO `sys_logininfor` VALUES (268, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 13:33:37');
INSERT INTO `sys_logininfor` VALUES (269, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 13:33:42');
INSERT INTO `sys_logininfor` VALUES (270, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 15:09:03');
INSERT INTO `sys_logininfor` VALUES (271, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 15:16:57');
INSERT INTO `sys_logininfor` VALUES (272, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 15:17:05');
INSERT INTO `sys_logininfor` VALUES (273, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 15:17:22');
INSERT INTO `sys_logininfor` VALUES (274, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 15:17:27');
INSERT INTO `sys_logininfor` VALUES (275, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 15:17:50');
INSERT INTO `sys_logininfor` VALUES (276, 'dl2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 15:17:57');
INSERT INTO `sys_logininfor` VALUES (277, 'dl2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 15:26:07');
INSERT INTO `sys_logininfor` VALUES (278, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 15:26:11');
INSERT INTO `sys_logininfor` VALUES (279, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 15:30:40');
INSERT INTO `sys_logininfor` VALUES (280, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 15:30:52');
INSERT INTO `sys_logininfor` VALUES (281, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 15:31:08');
INSERT INTO `sys_logininfor` VALUES (282, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 15:31:21');
INSERT INTO `sys_logininfor` VALUES (283, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 15:42:51');
INSERT INTO `sys_logininfor` VALUES (284, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 15:43:02');
INSERT INTO `sys_logininfor` VALUES (285, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 15:47:46');
INSERT INTO `sys_logininfor` VALUES (286, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 15:47:52');
INSERT INTO `sys_logininfor` VALUES (287, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 15:48:03');
INSERT INTO `sys_logininfor` VALUES (288, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 15:48:06');
INSERT INTO `sys_logininfor` VALUES (289, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 15:49:24');
INSERT INTO `sys_logininfor` VALUES (290, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 15:49:41');
INSERT INTO `sys_logininfor` VALUES (291, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 15:50:28');
INSERT INTO `sys_logininfor` VALUES (292, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 15:50:57');
INSERT INTO `sys_logininfor` VALUES (293, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 15:54:05');
INSERT INTO `sys_logininfor` VALUES (294, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 15:54:09');
INSERT INTO `sys_logininfor` VALUES (295, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 16:11:43');
INSERT INTO `sys_logininfor` VALUES (296, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 16:11:57');
INSERT INTO `sys_logininfor` VALUES (297, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 16:12:21');
INSERT INTO `sys_logininfor` VALUES (298, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 16:12:26');
INSERT INTO `sys_logininfor` VALUES (299, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 16:17:56');
INSERT INTO `sys_logininfor` VALUES (300, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 16:18:05');
INSERT INTO `sys_logininfor` VALUES (301, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 16:25:29');
INSERT INTO `sys_logininfor` VALUES (302, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2022-04-11 16:39:30');
INSERT INTO `sys_logininfor` VALUES (303, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 16:39:35');
INSERT INTO `sys_logininfor` VALUES (304, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 16:44:04');
INSERT INTO `sys_logininfor` VALUES (305, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 16:44:15');
INSERT INTO `sys_logininfor` VALUES (306, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 16:44:37');
INSERT INTO `sys_logininfor` VALUES (307, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 16:45:00');
INSERT INTO `sys_logininfor` VALUES (308, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 16:49:35');
INSERT INTO `sys_logininfor` VALUES (309, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 16:49:40');
INSERT INTO `sys_logininfor` VALUES (310, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 16:49:59');
INSERT INTO `sys_logininfor` VALUES (311, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2022-04-11 16:58:27');
INSERT INTO `sys_logininfor` VALUES (312, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-11 16:58:30');
INSERT INTO `sys_logininfor` VALUES (313, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 16:58:33');
INSERT INTO `sys_logininfor` VALUES (314, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 17:02:20');
INSERT INTO `sys_logininfor` VALUES (315, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 17:02:28');
INSERT INTO `sys_logininfor` VALUES (316, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 17:11:26');
INSERT INTO `sys_logininfor` VALUES (317, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 17:11:26');
INSERT INTO `sys_logininfor` VALUES (318, 'dl', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 17:11:58');
INSERT INTO `sys_logininfor` VALUES (319, 'dl', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 17:12:29');
INSERT INTO `sys_logininfor` VALUES (320, 'yh', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 17:12:38');
INSERT INTO `sys_logininfor` VALUES (321, 'yh', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-11 17:12:48');
INSERT INTO `sys_logininfor` VALUES (322, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-11 17:12:59');
INSERT INTO `sys_logininfor` VALUES (323, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 09:42:09');
INSERT INTO `sys_logininfor` VALUES (324, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 09:42:30');
INSERT INTO `sys_logininfor` VALUES (325, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 09:42:43');
INSERT INTO `sys_logininfor` VALUES (326, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 09:53:04');
INSERT INTO `sys_logininfor` VALUES (327, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 09:53:13');
INSERT INTO `sys_logininfor` VALUES (328, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 09:58:13');
INSERT INTO `sys_logininfor` VALUES (329, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 09:58:25');
INSERT INTO `sys_logininfor` VALUES (330, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 09:58:43');
INSERT INTO `sys_logininfor` VALUES (331, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 09:58:48');
INSERT INTO `sys_logininfor` VALUES (332, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 09:59:20');
INSERT INTO `sys_logininfor` VALUES (333, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 09:59:27');
INSERT INTO `sys_logininfor` VALUES (334, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 10:59:10');
INSERT INTO `sys_logininfor` VALUES (335, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 10:59:19');
INSERT INTO `sys_logininfor` VALUES (336, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 10:59:44');
INSERT INTO `sys_logininfor` VALUES (337, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 11:00:00');
INSERT INTO `sys_logininfor` VALUES (338, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 11:00:10');
INSERT INTO `sys_logininfor` VALUES (339, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 11:01:46');
INSERT INTO `sys_logininfor` VALUES (340, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 11:01:54');
INSERT INTO `sys_logininfor` VALUES (341, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 11:33:57');
INSERT INTO `sys_logininfor` VALUES (342, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 11:34:00');
INSERT INTO `sys_logininfor` VALUES (343, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 11:47:33');
INSERT INTO `sys_logininfor` VALUES (344, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 11:50:53');
INSERT INTO `sys_logininfor` VALUES (345, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 11:50:57');
INSERT INTO `sys_logininfor` VALUES (346, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 11:51:20');
INSERT INTO `sys_logininfor` VALUES (347, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 11:51:28');
INSERT INTO `sys_logininfor` VALUES (348, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 11:54:58');
INSERT INTO `sys_logininfor` VALUES (349, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 11:55:02');
INSERT INTO `sys_logininfor` VALUES (350, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 12:02:44');
INSERT INTO `sys_logininfor` VALUES (351, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 12:03:40');
INSERT INTO `sys_logininfor` VALUES (352, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 12:11:10');
INSERT INTO `sys_logininfor` VALUES (353, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 12:11:29');
INSERT INTO `sys_logininfor` VALUES (354, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 12:15:13');
INSERT INTO `sys_logininfor` VALUES (355, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 12:15:29');
INSERT INTO `sys_logininfor` VALUES (356, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 12:26:24');
INSERT INTO `sys_logininfor` VALUES (357, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 12:26:32');
INSERT INTO `sys_logininfor` VALUES (358, 'sc1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 12:33:24');
INSERT INTO `sys_logininfor` VALUES (359, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 12:39:00');
INSERT INTO `sys_logininfor` VALUES (360, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 13:03:08');
INSERT INTO `sys_logininfor` VALUES (361, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 13:03:22');
INSERT INTO `sys_logininfor` VALUES (362, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 13:06:48');
INSERT INTO `sys_logininfor` VALUES (363, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2022-04-12 13:09:25');
INSERT INTO `sys_logininfor` VALUES (364, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-12 13:09:29');
INSERT INTO `sys_logininfor` VALUES (365, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 13:09:36');
INSERT INTO `sys_logininfor` VALUES (366, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 13:37:25');
INSERT INTO `sys_logininfor` VALUES (367, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-12 13:38:39');
INSERT INTO `sys_logininfor` VALUES (368, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 13:38:46');
INSERT INTO `sys_logininfor` VALUES (369, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 13:38:50');
INSERT INTO `sys_logininfor` VALUES (370, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2022-04-12 13:42:31');
INSERT INTO `sys_logininfor` VALUES (371, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 13:42:34');
INSERT INTO `sys_logininfor` VALUES (372, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 13:43:14');
INSERT INTO `sys_logininfor` VALUES (373, 'yh2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 13:45:29');
INSERT INTO `sys_logininfor` VALUES (374, 'yh2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 13:45:46');
INSERT INTO `sys_logininfor` VALUES (375, 'yh2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 13:45:59');
INSERT INTO `sys_logininfor` VALUES (376, 'yh2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 13:46:10');
INSERT INTO `sys_logininfor` VALUES (377, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 13:46:19');
INSERT INTO `sys_logininfor` VALUES (378, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 13:47:53');
INSERT INTO `sys_logininfor` VALUES (379, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 13:48:04');
INSERT INTO `sys_logininfor` VALUES (380, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 13:48:15');
INSERT INTO `sys_logininfor` VALUES (381, 'dl2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 13:48:31');
INSERT INTO `sys_logininfor` VALUES (382, 'dl2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 13:48:51');
INSERT INTO `sys_logininfor` VALUES (383, 'yh2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 13:49:01');
INSERT INTO `sys_logininfor` VALUES (384, 'yh2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 13:49:12');
INSERT INTO `sys_logininfor` VALUES (385, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 13:49:18');
INSERT INTO `sys_logininfor` VALUES (386, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 13:49:25');
INSERT INTO `sys_logininfor` VALUES (387, 'dl', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 13:49:37');
INSERT INTO `sys_logininfor` VALUES (388, 'dl', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 13:49:42');
INSERT INTO `sys_logininfor` VALUES (389, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 13:49:50');
INSERT INTO `sys_logininfor` VALUES (390, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 13:50:16');
INSERT INTO `sys_logininfor` VALUES (391, 'yh2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 13:50:21');
INSERT INTO `sys_logininfor` VALUES (392, 'yh2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 13:50:26');
INSERT INTO `sys_logininfor` VALUES (393, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 13:50:38');
INSERT INTO `sys_logininfor` VALUES (394, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 13:52:49');
INSERT INTO `sys_logininfor` VALUES (395, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-12 13:52:52');
INSERT INTO `sys_logininfor` VALUES (396, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 13:52:55');
INSERT INTO `sys_logininfor` VALUES (397, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 13:53:02');
INSERT INTO `sys_logininfor` VALUES (398, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 13:53:11');
INSERT INTO `sys_logininfor` VALUES (399, 'sc', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 13:53:46');
INSERT INTO `sys_logininfor` VALUES (400, 'dl', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 13:53:57');
INSERT INTO `sys_logininfor` VALUES (401, 'dl', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 13:54:14');
INSERT INTO `sys_logininfor` VALUES (402, 'yh', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-12 13:54:21');
INSERT INTO `sys_logininfor` VALUES (403, 'yh', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 13:54:25');
INSERT INTO `sys_logininfor` VALUES (404, 'yh', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 13:54:42');
INSERT INTO `sys_logininfor` VALUES (405, 'yh', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 14:00:34');
INSERT INTO `sys_logininfor` VALUES (406, 'yh', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-12 14:04:19');
INSERT INTO `sys_logininfor` VALUES (407, 'yh', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2022-04-12 14:42:31');
INSERT INTO `sys_logininfor` VALUES (408, 'yh', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-12 14:42:34');

-- ----------------------------
-- Table structure for sys_machine
-- ----------------------------
DROP TABLE IF EXISTS `sys_machine`;
CREATE TABLE `sys_machine`  (
  `machine_num` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '机器号',
  `version_num` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '版本号',
  `production_date` datetime NOT NULL COMMENT '生产日期',
  `m_id` bigint(20) NULL DEFAULT 0 COMMENT '生产商ID',
  `a_id` bigint(20) NULL DEFAULT 0 COMMENT '代理商ID',
  `u_id` bigint(20) NULL DEFAULT 0 COMMENT '用户ID',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '地理位置',
  `rice1_margin` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '糙米余量',
  `rice2_margin` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '精米余量',
  `rice3_margin` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '胚芽米余量',
  `machine_power` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '电源控制（默认开启）',
  PRIMARY KEY (`machine_num`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '碾米机表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_machine
-- ----------------------------
INSERT INTO `sys_machine` VALUES (1, '1.1', '2022-04-09 00:00:00', 104, 105, 106, '成都', '30kg', '30kg', '20kg', '1');
INSERT INTO `sys_machine` VALUES (2, '1.1', '2022-04-08 00:00:01', 101, 102, 103, '南京', '20kg', '36ke', '12kg', '1');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2069 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2022-04-01 14:03:34', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2022-04-01 14:03:34', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 4, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2022-04-01 14:03:34', 'admin', '2022-04-11 13:37:16', '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 5, 'http://ruoyi.vip', NULL, '', 0, 0, 'M', '0', '0', '', 'guide', 'admin', '2022-04-01 14:03:34', 'admin', '2022-04-12 11:55:15', '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2022-04-01 14:03:34', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2022-04-01 14:03:34', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2022-04-01 14:03:34', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2022-04-01 14:03:34', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2022-04-01 14:03:34', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2022-04-01 14:03:34', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2022-04-01 14:03:34', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2022-04-01 14:03:34', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2022-04-01 14:03:34', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2022-04-01 14:03:34', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2022-04-01 14:03:34', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2022-04-01 14:03:34', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2022-04-01 14:03:34', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2022-04-01 14:03:34', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2022-04-01 14:03:34', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2022-04-01 14:03:34', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2022-04-01 14:03:34', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2022-04-01 14:03:34', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2022-04-01 14:03:34', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1001, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 7, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 115, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 115, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 115, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 115, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2022-04-01 14:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '测试', 1, 1, 'test', 'system/test/index', NULL, 1, 0, 'C', '0', '0', 'system:test:list', '#', 'admin', '2022-04-08 17:39:03', '', NULL, '测试菜单');
INSERT INTO `sys_menu` VALUES (2007, '测试查询', 2006, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:test:query', '#', 'admin', '2022-04-08 17:39:03', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2008, '测试新增', 2006, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:test:add', '#', 'admin', '2022-04-08 17:39:03', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2009, '测试修改', 2006, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:test:edit', '#', 'admin', '2022-04-08 17:39:03', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '测试删除', 2006, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:test:remove', '#', 'admin', '2022-04-08 17:39:03', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2011, '测试导出', 2006, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:test:export', '#', 'admin', '2022-04-08 17:39:03', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2037, '碾米机信息', 2043, 1, 'machine', 'machine/machine/index', NULL, 1, 0, 'C', '0', '0', 'machine:machine:list', 'excel', 'admin', '2022-04-10 19:08:29', 'admin', '2022-04-12 11:34:45', '碾米机信息管理菜单');
INSERT INTO `sys_menu` VALUES (2038, '碾米机信息管理查询', 2037, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'machine:machine:query', '#', 'admin', '2022-04-10 19:08:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2039, '碾米机信息管理新增', 2037, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'machine:machine:add', '#', 'admin', '2022-04-10 19:08:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2040, '碾米机信息管理修改', 2037, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'machine:machine:edit', '#', 'admin', '2022-04-10 19:08:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2041, '碾米机信息管理删除', 2037, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'machine:machine:remove', '#', 'admin', '2022-04-10 19:08:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2042, '碾米机信息管理导出', 2037, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'machine:machine:export', '#', 'admin', '2022-04-10 19:08:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2043, '碾米机管理', 0, 2, 'machine', NULL, NULL, 1, 0, 'M', '0', '0', '', 'build', 'admin', '2022-04-10 19:24:47', 'admin', '2022-04-11 13:37:07', '');
INSERT INTO `sys_menu` VALUES (2044, '加工记录', 2043, 2, 'process', 'process/process/index', NULL, 1, 0, 'C', '0', '0', 'process:process:list', 'education', 'admin', '2022-04-10 20:03:30', 'admin', '2022-04-12 11:35:36', '加工记录菜单');
INSERT INTO `sys_menu` VALUES (2045, '加工记录查询', 2044, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'process:process:query', '#', 'admin', '2022-04-10 20:03:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2046, '加工记录新增', 2044, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'process:process:add', '#', 'admin', '2022-04-10 20:03:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2047, '加工记录修改', 2044, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'process:process:edit', '#', 'admin', '2022-04-10 20:03:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2048, '加工记录删除', 2044, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'process:process:remove', '#', 'admin', '2022-04-10 20:03:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2049, '加工记录导出', 2044, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'process:process:export', '#', 'admin', '2022-04-10 20:03:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2050, '碾米机参数', 2043, 3, 'parameter', 'parameter/parameter/index', NULL, 1, 0, 'C', '0', '0', 'parameter:parameter:list', 'nested', 'admin', '2022-04-10 20:32:53', 'admin', '2022-04-12 11:35:45', '碾米机参数菜单');
INSERT INTO `sys_menu` VALUES (2051, '碾米机参数查询', 2050, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'parameter:parameter:query', '#', 'admin', '2022-04-10 20:32:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2052, '碾米机参数新增', 2050, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'parameter:parameter:add', '#', 'admin', '2022-04-10 20:32:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2053, '碾米机参数修改', 2050, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'parameter:parameter:edit', '#', 'admin', '2022-04-10 20:32:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2054, '碾米机参数删除', 2050, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'parameter:parameter:remove', '#', 'admin', '2022-04-10 20:32:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2055, '碾米机参数导出', 2050, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'parameter:parameter:export', '#', 'admin', '2022-04-10 20:32:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2056, '故障消息接收', 2068, 1, 'messagerec', 'messrec/messagerec/index', NULL, 1, 0, 'C', '0', '0', 'messrec:messagerec:list', 'wechat', 'admin', '2022-04-10 21:02:08', 'admin', '2022-04-12 11:37:06', '故障消息接收菜单');
INSERT INTO `sys_menu` VALUES (2057, '故障消息接收查询', 2056, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'messrec:messagerec:query', '#', 'admin', '2022-04-10 21:02:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2058, '故障消息接收新增', 2056, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'messrec:messagerec:add', '#', 'admin', '2022-04-10 21:02:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2059, '故障消息接收修改', 2056, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'messrec:messagerec:edit', '#', 'admin', '2022-04-10 21:02:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2060, '故障消息接收删除', 2056, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'messrec:messagerec:remove', '#', 'admin', '2022-04-10 21:02:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2061, '故障消息接收导出', 2056, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'messrec:messagerec:export', '#', 'admin', '2022-04-10 21:02:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2062, '故障消息发送', 2068, 2, 'messagesen', 'messsen/messagesen/index', NULL, 1, 0, 'C', '0', '0', 'messsen:messagesen:list', 'wechat', 'admin', '2022-04-10 21:14:43', 'admin', '2022-04-12 11:37:20', '故障消息发送菜单');
INSERT INTO `sys_menu` VALUES (2063, '故障消息发送查询', 2062, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'messsen:messagesen:query', '#', 'admin', '2022-04-10 21:14:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2064, '故障消息发送新增', 2062, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'messsen:messagesen:add', '#', 'admin', '2022-04-10 21:14:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2065, '故障消息发送修改', 2062, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'messsen:messagesen:edit', '#', 'admin', '2022-04-10 21:14:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2066, '故障消息发送删除', 2062, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'messsen:messagesen:remove', '#', 'admin', '2022-04-10 21:14:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2067, '故障消息发送导出', 2062, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'messsen:messagesen:export', '#', 'admin', '2022-04-10 21:14:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2068, '故障消息管理', 0, 3, 'message', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'list', 'admin', '2022-04-11 13:36:53', '', NULL, '');

-- ----------------------------
-- Table structure for sys_message
-- ----------------------------
DROP TABLE IF EXISTS `sys_message`;
CREATE TABLE `sys_message`  (
  `message_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '消息流水号',
  `sender_id` bigint(20) NOT NULL COMMENT '消息发送者id',
  `receiver_id` bigint(20) NOT NULL COMMENT '消息接收者id',
  `publish_time` datetime NOT NULL COMMENT '发布时间点',
  `erro_machine` bigint(20) NOT NULL COMMENT '故障机器号',
  `describe_info` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '故障描述',
  `accessory` mediumblob NULL COMMENT '附件',
  PRIMARY KEY (`message_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '故障消息传输表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_message
-- ----------------------------
INSERT INTO `sys_message` VALUES (1, 104, 106, '2022-04-10 00:00:00', 1, '电源损坏', 0x2F70726F66696C652F75706C6F61642F323032322F30342F31302FE99984E4BBB65F3230323230343130323130363032413030312E646F63);
INSERT INTO `sys_message` VALUES (2, 106, 104, '2022-04-10 00:00:00', 1, 'emmmm', NULL);
INSERT INTO `sys_message` VALUES (3, 104, 106, '2022-04-12 10:04:27', 1, '测试故障1', NULL);
INSERT INTO `sys_message` VALUES (4, 104, 105, '2022-04-11 12:11:27', 1, '测试2', NULL);
INSERT INTO `sys_message` VALUES (5, 105, 104, '2022-04-12 13:11:03', 2, '坏了', NULL);

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2022-04-01 14:03:41', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2022-04-01 14:03:41', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 275 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"query\":\"\",\"icon\":\"guide\",\"orderNum\":4,\"menuName\":\"若依官网\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"http://ruoyi.vip\",\"children\":[],\"createTime\":1648793014000,\"updateBy\":\"admin\",\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-01 17:52:25');
INSERT INTO `sys_oper_log` VALUES (101, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"query\":\"\",\"icon\":\"guide\",\"orderNum\":4,\"menuName\":\"若依官网\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"http://ruoyi.vip\",\"children\":[],\"createTime\":1648793014000,\"updateBy\":\"admin\",\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-01 17:52:25');
INSERT INTO `sys_oper_log` VALUES (102, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"guide\",\"orderNum\":4,\"menuName\":\"若依官网\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"http://ruoyi.vip\",\"children\":[],\"createTime\":1648793014000,\"updateBy\":\"admin\",\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-01 17:52:43');
INSERT INTO `sys_oper_log` VALUES (103, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"query\":\"\",\"icon\":\"tool\",\"orderNum\":3,\"menuName\":\"系统工具\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"tool\",\"children\":[],\"createTime\":1648793014000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":3,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-01 17:52:53');
INSERT INTO `sys_oper_log` VALUES (104, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"tool\",\"orderNum\":3,\"menuName\":\"系统工具\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"tool\",\"children\":[],\"createTime\":1648793014000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":3,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-01 17:53:04');
INSERT INTO `sys_oper_log` VALUES (105, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"tool\",\"orderNum\":3,\"menuName\":\"系统工具1\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"tool\",\"children\":[],\"createTime\":1648793014000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":3,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-01 17:54:59');
INSERT INTO `sys_oper_log` VALUES (106, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"tool\",\"orderNum\":3,\"menuName\":\"系统工具\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"tool\",\"children\":[],\"createTime\":1648793014000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":3,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-01 17:55:17');
INSERT INTO `sys_oper_log` VALUES (107, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"query\":\"\",\"icon\":\"guide\",\"orderNum\":4,\"menuName\":\"若依官网\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"http://ruoyi.vip\",\"children\":[],\"createTime\":1648793014000,\"updateBy\":\"admin\",\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-01 17:55:21');
INSERT INTO `sys_oper_log` VALUES (108, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"guide\",\"orderNum\":4,\"menuName\":\"若依官网\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"http://ruoyi.vip\",\"children\":[],\"createTime\":1648793014000,\"updateBy\":\"admin\",\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-01 17:55:30');
INSERT INTO `sys_oper_log` VALUES (109, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1648793014000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 11:32:57');
INSERT INTO `sys_oper_log` VALUES (110, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1648793014000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,3,114,115,1055,1056,1058,1057,1059,1060,116,4],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 11:55:54');
INSERT INTO `sys_oper_log` VALUES (111, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"remark\":\"负责碾米机生产的厂商\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"production\",\"roleName\":\"生产商\",\"deptIds\":[],\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 11:57:07');
INSERT INTO `sys_oper_log` VALUES (112, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":101,\"admin\":false,\"remark\":\"负责代理碾米机销售及售后\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"agent\",\"roleName\":\"代理商\",\"deptIds\":[],\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 11:58:17');
INSERT INTO `sys_oper_log` VALUES (113, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":102,\"admin\":false,\"remark\":\"购买或租赁碾米机的用户\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"user\",\"roleName\":\"用户\",\"deptIds\":[],\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 11:58:48');
INSERT INTO `sys_oper_log` VALUES (114, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"remark\":\"负责碾米机生产的厂商\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":1649390226000,\"menuCheckStrictly\":true,\"roleKey\":\"production\",\"roleName\":\"生产商\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 12:01:25');
INSERT INTO `sys_oper_log` VALUES (115, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":101,\"admin\":false,\"remark\":\"负责代理碾米机销售及售后\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createTime\":1649390297000,\"menuCheckStrictly\":true,\"roleKey\":\"agent\",\"roleName\":\"代理商\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 12:01:41');
INSERT INTO `sys_oper_log` VALUES (116, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":102,\"admin\":false,\"remark\":\"购买或租赁碾米机的用户\",\"dataScope\":\"5\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"createTime\":1649390328000,\"menuCheckStrictly\":true,\"roleKey\":\"user\",\"roleName\":\"用户\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 12:01:49');
INSERT INTO `sys_oper_log` VALUES (117, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"李正洋部门\",\"leader\":\"李正洋\",\"orderNum\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"phone\":\"18282889252\",\"ancestors\":\"0,100\",\"email\":\"1361773012@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 12:05:54');
INSERT INTO `sys_oper_log` VALUES (118, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"正洋部门\",\"leader\":\"李正洋\",\"orderNum\":\"1\",\"params\":{},\"parentId\":200,\"createBy\":\"admin\",\"children\":[],\"phone\":\"18282889252\",\"ancestors\":\"0,100,200\",\"email\":\"1361773012@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 12:32:11');
INSERT INTO `sys_oper_log` VALUES (119, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"18282889252\",\"admin\":false,\"remark\":\"没备注\",\"password\":\"$2a$10$15LtWiYOFpQIcuxJbYWfo.nKxiE/4PLlJUgcSV8q4RmaacjUTowuu\",\"postIds\":[4],\"email\":\"1361773012@qq.com\",\"nickName\":\"李正洋\",\"sex\":\"0\",\"deptId\":201,\"params\":{},\"userName\":\"lzy\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[100],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 12:44:04');
INSERT INTO `sys_oper_log` VALUES (120, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"4\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"production\",\"roleName\":\"生产商\",\"status\":\"0\"}],\"phonenumber\":\"18282889252\",\"admin\":false,\"loginDate\":1649393082000,\"remark\":\"没备注\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[4],\"loginIp\":\"127.0.0.1\",\"email\":\"1361773012@qq.com\",\"nickName\":\"李正洋\",\"sex\":\"0\",\"deptId\":200,\"avatar\":\"\",\"dept\":{\"deptName\":\"正洋部门\",\"leader\":\"李正洋\",\"deptId\":201,\"orderNum\":\"1\",\"params\":{},\"parentId\":200,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"lzy\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[100],\"createTime\":1649393044000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 12:46:58');
INSERT INTO `sys_oper_log` VALUES (121, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"万马机械\",\"leader\":\"万马公司\",\"deptId\":100,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1648793012000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0\",\"email\":\"wm@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 12:50:01');
INSERT INTO `sys_oper_log` VALUES (122, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"成都总公司\",\"leader\":\"万马负责人\",\"deptId\":200,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1649390754000,\"phone\":\"18288888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"email\":\"wm@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 12:50:56');
INSERT INTO `sys_oper_log` VALUES (123, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"成都总公司\",\"leader\":\"万马负责人\",\"deptId\":200,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1649390754000,\"phone\":\"18288888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"email\":\"wm@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 12:51:06');
INSERT INTO `sys_oper_log` VALUES (124, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"生产部门\",\"leader\":\"成都生产商\",\"orderNum\":\"0\",\"params\":{},\"parentId\":200,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100,200\",\"email\":\"wm_cd@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 12:52:51');
INSERT INTO `sys_oper_log` VALUES (125, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/201', '127.0.0.1', '内网IP', '{deptId=201}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 12:53:15');
INSERT INTO `sys_oper_log` VALUES (126, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"代理部门\",\"leader\":\"成都代理负责人\",\"orderNum\":\"0\",\"params\":{},\"parentId\":200,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100,200\",\"email\":\"wm_cd_dl@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 12:54:37');
INSERT INTO `sys_oper_log` VALUES (127, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"生产部门\",\"leader\":\"成都生产负责人\",\"deptId\":202,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":200,\"createBy\":\"admin\",\"children\":[],\"createTime\":1649393570000,\"updateBy\":\"admin\",\"ancestors\":\"0,100,200\",\"email\":\"wm_cd_sc@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 12:54:57');
INSERT INTO `sys_oper_log` VALUES (128, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"用户\",\"leader\":\"用户管理负责人\",\"orderNum\":\"2\",\"params\":{},\"parentId\":200,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100,200\",\"email\":\"wm_cd_yh@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 12:55:53');
INSERT INTO `sys_oper_log` VALUES (129, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"代理部门\",\"leader\":\"成都代理负责人\",\"deptId\":203,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":200,\"createBy\":\"admin\",\"children\":[],\"createTime\":1649393676000,\"updateBy\":\"admin\",\"ancestors\":\"0,100,200\",\"email\":\"wm_cd_dl@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 12:56:07');
INSERT INTO `sys_oper_log` VALUES (130, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/100', '127.0.0.1', '内网IP', '{userIds=100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 12:56:33');
INSERT INTO `sys_oper_log` VALUES (131, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"18288888888\",\"admin\":false,\"password\":\"$2a$10$CfuAnnESByggmvhjksOjj.V81hzFPTeWhYdlO6PQQo5vxWkiz/V36\",\"postIds\":[4,1,2,3],\"email\":\"1366666666@qq.com\",\"nickName\":\"李正洋\",\"sex\":\"0\",\"deptId\":202,\"params\":{},\"userName\":\"sc\",\"userId\":101,\"createBy\":\"admin\",\"roleIds\":[100],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 13:00:29');
INSERT INTO `sys_oper_log` VALUES (132, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"18288888888\",\"admin\":false,\"password\":\"123456\",\"postIds\":[1,2,3,4],\"email\":\"1361111111@qq.com\",\"nickName\":\"李正洋\",\"sex\":\"0\",\"deptId\":203,\"params\":{},\"userName\":\"dl\",\"roleIds\":[101],\"status\":\"0\"}', '{\"msg\":\"新增用户\'dl\'失败，手机号码已存在\",\"code\":500}', 0, NULL, '2022-04-08 13:01:43');
INSERT INTO `sys_oper_log` VALUES (133, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"18288888881\",\"admin\":false,\"password\":\"$2a$10$sCHNZLi24yPzg5doNS2WfuY6ew2922fu.JuCkw9y/CRMvPr3RyLei\",\"postIds\":[1,2,3,4],\"email\":\"1361111111@qq.com\",\"nickName\":\"李正洋\",\"sex\":\"0\",\"deptId\":203,\"params\":{},\"userName\":\"dl\",\"userId\":102,\"createBy\":\"admin\",\"roleIds\":[101],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 13:01:58');
INSERT INTO `sys_oper_log` VALUES (134, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"18288888882\",\"admin\":false,\"password\":\"123456\",\"postIds\":[1,2,3,4],\"email\":\"1361773012@qq.com\",\"nickName\":\"李正洋\",\"sex\":\"0\",\"deptId\":204,\"params\":{},\"userName\":\"yh\",\"roleIds\":[102],\"status\":\"0\"}', '{\"msg\":\"新增用户\'yh\'失败，邮箱账号已存在\",\"code\":500}', 0, NULL, '2022-04-08 13:02:43');
INSERT INTO `sys_oper_log` VALUES (135, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"18288888882\",\"admin\":false,\"password\":\"$2a$10$KaCf/gZ1FD7ajkTNA7Oz2OvqyzKYeFhUE2Og.L715hLpCkP2p69hq\",\"postIds\":[1,2,3,4],\"email\":\"1362222222@qq.com\",\"nickName\":\"李正洋\",\"sex\":\"0\",\"deptId\":204,\"params\":{},\"userName\":\"yh\",\"userId\":103,\"createBy\":\"admin\",\"roleIds\":[102],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 13:03:06');
INSERT INTO `sys_oper_log` VALUES (136, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"18288888883\",\"admin\":false,\"password\":\"123456\",\"postIds\":[1,2,3,4],\"nickName\":\"李正洋\",\"sex\":\"0\",\"deptId\":202,\"params\":{},\"userName\":\"sc\",\"roleIds\":[100],\"status\":\"0\"}', '{\"msg\":\"新增用户\'sc\'失败，登录账号已存在\",\"code\":500}', 0, NULL, '2022-04-08 13:04:03');
INSERT INTO `sys_oper_log` VALUES (137, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"remark\":\"负责碾米机生产的厂商\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":1649390226000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"production\",\"roleName\":\"生产商\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 13:12:20');
INSERT INTO `sys_oper_log` VALUES (138, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":101,\"admin\":false,\"remark\":\"负责代理碾米机销售及售后\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createTime\":1649390297000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"agent\",\"roleName\":\"代理商\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 13:12:34');
INSERT INTO `sys_oper_log` VALUES (139, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"remark\":\"负责碾米机生产的厂商\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":1649390226000,\"menuCheckStrictly\":true,\"roleKey\":\"production\",\"roleName\":\"生产商\",\"deptIds\":[100,200,202,203,204],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 13:15:03');
INSERT INTO `sys_oper_log` VALUES (140, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":101,\"admin\":false,\"remark\":\"负责代理碾米机销售及售后\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createTime\":1649390297000,\"menuCheckStrictly\":true,\"roleKey\":\"agent\",\"roleName\":\"代理商\",\"deptIds\":[100,200,203,204],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 13:15:16');
INSERT INTO `sys_oper_log` VALUES (141, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/system/config', '127.0.0.1', '内网IP', '{\"configName\":\"账号自助-是否开启用户注册功能\",\"configKey\":\"sys.account.registerUser\",\"createBy\":\"admin\",\"createTime\":1648793019000,\"updateBy\":\"admin\",\"configId\":5,\"remark\":\"是否开启注册用户功能（true开启，false关闭）\",\"configType\":\"Y\",\"configValue\":\"true\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 13:43:33');
INSERT INTO `sys_oper_log` VALUES (142, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/system/config', '127.0.0.1', '内网IP', '{\"configName\":\"账号自助-是否开启用户注册功能\",\"configKey\":\"sys.account.registerUser\",\"createBy\":\"admin\",\"createTime\":1648793019000,\"updateBy\":\"admin\",\"configId\":5,\"remark\":\"是否开启注册用户功能（true开启，false关闭）\",\"updateTime\":1649396613000,\"configType\":\"Y\",\"configValue\":\"false\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 13:45:38');
INSERT INTO `sys_oper_log` VALUES (143, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"remark\":\"负责碾米机生产的厂商\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":1649390226000,\"menuCheckStrictly\":true,\"roleKey\":\"production\",\"roleName\":\"生产商\",\"deptIds\":[100,200,202,203,204],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 14:19:33');
INSERT INTO `sys_oper_log` VALUES (144, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"remark\":\"负责碾米机生产的厂商\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":1649390226000,\"menuCheckStrictly\":true,\"roleKey\":\"production\",\"roleName\":\"生产商\",\"deptIds\":[100,200,202,203,204],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 16:14:14');
INSERT INTO `sys_oper_log` VALUES (145, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"production\",\"roleName\":\"生产商\",\"status\":\"0\"}],\"phonenumber\":\"18288888888\",\"admin\":false,\"loginDate\":1649399995000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[1,2,3,4],\"loginIp\":\"127.0.0.1\",\"email\":\"1366666666@qq.com\",\"nickName\":\"李正洋\",\"sex\":\"0\",\"deptId\":202,\"avatar\":\"\",\"dept\":{\"deptName\":\"生产部门\",\"leader\":\"成都生产负责人\",\"deptId\":202,\"orderNum\":\"0\",\"params\":{},\"parentId\":200,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"sc\",\"userId\":101,\"createBy\":\"admin\",\"roleIds\":[100],\"createTime\":1649394029000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 16:14:57');
INSERT INTO `sys_oper_log` VALUES (146, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"remark\":\"负责碾米机生产的厂商\",\"dataScope\":\"5\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":1649390226000,\"menuCheckStrictly\":true,\"roleKey\":\"production\",\"roleName\":\"生产商\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 16:24:37');
INSERT INTO `sys_oper_log` VALUES (147, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"remark\":\"负责碾米机生产的厂商\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":1649390226000,\"menuCheckStrictly\":true,\"roleKey\":\"production\",\"roleName\":\"生产商\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 16:25:16');
INSERT INTO `sys_oper_log` VALUES (148, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"生产部门\",\"orderNum\":\"1\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 16:29:44');
INSERT INTO `sys_oper_log` VALUES (149, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"代理部门\",\"orderNum\":\"2\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 16:30:02');
INSERT INTO `sys_oper_log` VALUES (150, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"用户\",\"orderNum\":\"3\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 16:30:13');
INSERT INTO `sys_oper_log` VALUES (151, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"生产部门\",\"deptId\":205,\"orderNum\":\"3\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1649406584000,\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 16:30:34');
INSERT INTO `sys_oper_log` VALUES (152, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"代理部门\",\"deptId\":206,\"orderNum\":\"3\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1649406601000,\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 16:30:41');
INSERT INTO `sys_oper_log` VALUES (153, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"4\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"production\",\"roleName\":\"生产商\",\"status\":\"0\"}],\"phonenumber\":\"18288888888\",\"admin\":false,\"loginDate\":1649406330000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[1,2,3,4],\"loginIp\":\"127.0.0.1\",\"email\":\"1366666666@qq.com\",\"nickName\":\"李正洋\",\"sex\":\"0\",\"deptId\":205,\"avatar\":\"\",\"dept\":{\"deptName\":\"生产部门\",\"leader\":\"成都生产负责人\",\"deptId\":202,\"orderNum\":\"0\",\"params\":{},\"parentId\":200,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"sc\",\"userId\":101,\"createBy\":\"admin\",\"roleIds\":[100],\"createTime\":1649394029000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 16:31:39');
INSERT INTO `sys_oper_log` VALUES (154, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":101,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"agent\",\"roleName\":\"代理商\",\"status\":\"0\"}],\"phonenumber\":\"18288888881\",\"admin\":false,\"loginDate\":1649398685000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[1,2,3,4],\"loginIp\":\"127.0.0.1\",\"email\":\"1361111111@qq.com\",\"nickName\":\"李正洋\",\"sex\":\"0\",\"deptId\":206,\"avatar\":\"\",\"dept\":{\"deptName\":\"代理部门\",\"leader\":\"成都代理负责人\",\"deptId\":203,\"orderNum\":\"1\",\"params\":{},\"parentId\":200,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"dl\",\"userId\":102,\"createBy\":\"admin\",\"roleIds\":[101],\"createTime\":1649394118000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 16:31:46');
INSERT INTO `sys_oper_log` VALUES (155, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":102,\"admin\":false,\"dataScope\":\"5\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"user\",\"roleName\":\"用户\",\"status\":\"0\"}],\"phonenumber\":\"18288888882\",\"admin\":false,\"loginDate\":1649395001000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[1,2,3,4],\"loginIp\":\"127.0.0.1\",\"email\":\"1362222222@qq.com\",\"nickName\":\"李正洋\",\"sex\":\"0\",\"deptId\":207,\"avatar\":\"\",\"dept\":{\"deptName\":\"用户\",\"leader\":\"用户管理负责人\",\"deptId\":204,\"orderNum\":\"2\",\"params\":{},\"parentId\":200,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"yh\",\"userId\":103,\"createBy\":\"admin\",\"roleIds\":[102],\"createTime\":1649394186000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 16:31:53');
INSERT INTO `sys_oper_log` VALUES (156, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"remark\":\"负责碾米机生产的厂商\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":1649390226000,\"menuCheckStrictly\":true,\"roleKey\":\"production\",\"roleName\":\"生产商\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 16:32:08');
INSERT INTO `sys_oper_log` VALUES (157, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":101,\"admin\":false,\"remark\":\"负责代理碾米机销售及售后\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createTime\":1649390297000,\"menuCheckStrictly\":true,\"roleKey\":\"agent\",\"roleName\":\"代理商\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 16:32:21');
INSERT INTO `sys_oper_log` VALUES (158, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":102,\"admin\":false,\"remark\":\"购买或租赁碾米机的用户\",\"dataScope\":\"5\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"createTime\":1649390328000,\"menuCheckStrictly\":true,\"roleKey\":\"user\",\"roleName\":\"用户\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 16:32:26');
INSERT INTO `sys_oper_log` VALUES (159, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/206', '127.0.0.1', '内网IP', '{deptId=206}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":500}', 0, NULL, '2022-04-08 16:34:19');
INSERT INTO `sys_oper_log` VALUES (160, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/207', '127.0.0.1', '内网IP', '{deptId=207}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":500}', 0, NULL, '2022-04-08 16:34:39');
INSERT INTO `sys_oper_log` VALUES (161, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":102,\"admin\":false,\"dataScope\":\"5\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"user\",\"roleName\":\"用户\",\"status\":\"0\"}],\"phonenumber\":\"18288888882\",\"admin\":false,\"loginDate\":1649395001000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[1,2,3,4],\"loginIp\":\"127.0.0.1\",\"email\":\"1362222222@qq.com\",\"nickName\":\"李正洋\",\"sex\":\"0\",\"deptId\":205,\"avatar\":\"\",\"dept\":{\"deptName\":\"用户\",\"deptId\":207,\"orderNum\":\"3\",\"params\":{},\"parentId\":100,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"yh\",\"userId\":103,\"createBy\":\"admin\",\"roleIds\":[102],\"createTime\":1649394186000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 16:34:56');
INSERT INTO `sys_oper_log` VALUES (162, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":101,\"admin\":false,\"dataScope\":\"4\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"agent\",\"roleName\":\"代理商\",\"status\":\"0\"}],\"phonenumber\":\"18288888881\",\"admin\":false,\"loginDate\":1649398685000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[1,2,3,4],\"loginIp\":\"127.0.0.1\",\"email\":\"1361111111@qq.com\",\"nickName\":\"李正洋\",\"sex\":\"0\",\"deptId\":205,\"avatar\":\"\",\"dept\":{\"deptName\":\"代理部门\",\"deptId\":206,\"orderNum\":\"3\",\"params\":{},\"parentId\":100,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"dl\",\"userId\":102,\"createBy\":\"admin\",\"roleIds\":[101],\"createTime\":1649394118000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 16:35:04');
INSERT INTO `sys_oper_log` VALUES (163, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/207', '127.0.0.1', '内网IP', '{deptId=207}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 16:35:09');
INSERT INTO `sys_oper_log` VALUES (164, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/206', '127.0.0.1', '内网IP', '{deptId=206}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 16:35:17');
INSERT INTO `sys_oper_log` VALUES (165, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"代理部分\",\"orderNum\":\"1\",\"params\":{},\"parentId\":205,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100,205\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 16:35:44');
INSERT INTO `sys_oper_log` VALUES (166, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"代理部门\",\"deptId\":208,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":205,\"createBy\":\"admin\",\"children\":[],\"createTime\":1649406944000,\"updateBy\":\"admin\",\"ancestors\":\"0,100,205\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 16:36:06');
INSERT INTO `sys_oper_log` VALUES (167, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"用户\",\"orderNum\":\"1\",\"params\":{},\"parentId\":208,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100,205,208\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 16:36:18');
INSERT INTO `sys_oper_log` VALUES (168, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":101,\"admin\":false,\"dataScope\":\"4\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"agent\",\"roleName\":\"代理商\",\"status\":\"0\"}],\"phonenumber\":\"18288888881\",\"admin\":false,\"loginDate\":1649398685000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[1,2,3,4],\"loginIp\":\"127.0.0.1\",\"email\":\"1361111111@qq.com\",\"nickName\":\"李正洋\",\"sex\":\"0\",\"deptId\":208,\"avatar\":\"\",\"dept\":{\"deptName\":\"生产部门\",\"deptId\":205,\"orderNum\":\"3\",\"params\":{},\"parentId\":100,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"dl\",\"userId\":102,\"createBy\":\"admin\",\"roleIds\":[101],\"createTime\":1649394118000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 16:36:39');
INSERT INTO `sys_oper_log` VALUES (169, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":102,\"admin\":false,\"dataScope\":\"5\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"user\",\"roleName\":\"用户\",\"status\":\"0\"}],\"phonenumber\":\"18288888882\",\"admin\":false,\"loginDate\":1649395001000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[1,2,3,4],\"loginIp\":\"127.0.0.1\",\"email\":\"1362222222@qq.com\",\"nickName\":\"李正洋\",\"sex\":\"0\",\"deptId\":209,\"avatar\":\"\",\"dept\":{\"deptName\":\"生产部门\",\"deptId\":205,\"orderNum\":\"3\",\"params\":{},\"parentId\":100,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"yh\",\"userId\":103,\"createBy\":\"admin\",\"roleIds\":[102],\"createTime\":1649394186000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 16:36:47');
INSERT INTO `sys_oper_log` VALUES (170, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'test', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 17:03:55');
INSERT INTO `sys_oper_log` VALUES (171, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1649408634000,\"tableId\":1,\"pk\":false,\"columnName\":\"id\"},{\"capJavaField\":\"Name\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"name\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"姓名\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1649408634000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"name\"},{\"capJavaField\":\"Pwd\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"pwd\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"密码\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1649408634000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"pwd\"}],\"businessName\":\"test\",\"moduleName\":\"system\",\"className\":\"Test\",\"tableName\":\"test\",\"crud\":true,\"options\":\"{\\\"parentMenuId\\\":1}\",\"genType\":\"0\",\"packageName\":\"com.ruoyi.system\",\"functionName\":\"测试\",\"tree\":false,\"tableComment\":\"测试表\",\"params\":{\"parentMenuId\":1},\"tplCategory\":\"crud\",\"parentMenuId\":\"1\",\"tableId\":1,\"genPath\":\"/\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 17:04:28');
INSERT INTO `sys_oper_log` VALUES (172, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-04-08 17:04:36');
INSERT INTO `sys_oper_log` VALUES (173, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/1', '127.0.0.1', '内网IP', '{tableIds=1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 17:24:25');
INSERT INTO `sys_oper_log` VALUES (174, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'my_test', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 17:24:36');
INSERT INTO `sys_oper_log` VALUES (175, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1649409876000,\"tableId\":2,\"pk\":false,\"columnName\":\"id\"},{\"capJavaField\":\"Name\",\"usableColumn\":false,\"columnId\":5,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"name\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"姓名\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1649409876000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"name\"},{\"capJavaField\":\"Pwd\",\"usableColumn\":false,\"columnId\":6,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"pwd\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"密码\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1649409876000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"pwd\"}],\"businessName\":\"test\",\"moduleName\":\"system\",\"className\":\"MyTest\",\"tableName\":\"my_test\",\"crud\":true,\"options\":\"{\\\"parentMenuId\\\":1}\",\"genType\":\"0\",\"packageName\":\"com.ruoyi.system\",\"functionName\":\"测试\",\"tree\":false,\"tableComment\":\"测试表\",\"params\":{\"parentMenuId\":1},\"tplCategory\":\"crud\",\"parentMenuId\":\"1\",\"tableId\":2,\"genPath\":\"/\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 17:25:14');
INSERT INTO `sys_oper_log` VALUES (176, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-04-08 17:25:27');
INSERT INTO `sys_oper_log` VALUES (177, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"remark\":\"负责碾米机生产的厂商\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"createTime\":1649390226000,\"menuCheckStrictly\":true,\"roleKey\":\"production\",\"roleName\":\"生产商\",\"deptIds\":[208,209],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 18:08:23');
INSERT INTO `sys_oper_log` VALUES (178, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":101,\"admin\":false,\"remark\":\"负责代理碾米机销售及售后\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":false,\"createTime\":1649390297000,\"menuCheckStrictly\":true,\"roleKey\":\"agent\",\"roleName\":\"代理商\",\"deptIds\":[100,209],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 18:08:40');
INSERT INTO `sys_oper_log` VALUES (179, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"password\":\"$2a$10$Hb4BNBBX4JVIjq9woFXPluH.HK0CHFzYTQJAcj02896OlgaT9HQ4a\",\"postIds\":[],\"nickName\":\"李正洋_生产\",\"deptId\":205,\"params\":{},\"userName\":\"sc1\",\"userId\":104,\"createBy\":\"admin\",\"roleIds\":[100],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 18:10:32');
INSERT INTO `sys_oper_log` VALUES (180, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"password\":\"$2a$10$XozA512o.B0rPs92Wcr/MOV1OHg3FFgKQhCvmdkvqHEhD.WXlv596\",\"postIds\":[],\"nickName\":\"李正洋_代理\",\"deptId\":208,\"params\":{},\"userName\":\"dl2\",\"userId\":105,\"createBy\":\"admin\",\"roleIds\":[101],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 18:10:59');
INSERT INTO `sys_oper_log` VALUES (181, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"password\":\"$2a$10$kpxLrr5rLDRNBqm19Y0vH.SxQ4vhFD3MRTwKcVcoCI29W0I5Tcida\",\"postIds\":[],\"nickName\":\"李正洋_用户\",\"deptId\":209,\"params\":{},\"userName\":\"yh2\",\"userId\":106,\"createBy\":\"admin\",\"roleIds\":[102],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 18:11:22');
INSERT INTO `sys_oper_log` VALUES (182, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"生产部门\",\"deptId\":205,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1649406584000,\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 18:18:02');
INSERT INTO `sys_oper_log` VALUES (183, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/200', '127.0.0.1', '内网IP', '{deptId=200}', '{\"msg\":\"存在下级部门,不允许删除\",\"code\":500}', 0, NULL, '2022-04-08 18:18:14');
INSERT INTO `sys_oper_log` VALUES (184, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/204', '127.0.0.1', '内网IP', '{deptId=204}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 18:18:20');
INSERT INTO `sys_oper_log` VALUES (185, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/203', '127.0.0.1', '内网IP', '{deptId=203}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 18:18:24');
INSERT INTO `sys_oper_log` VALUES (186, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/202', '127.0.0.1', '内网IP', '{deptId=202}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 18:18:27');
INSERT INTO `sys_oper_log` VALUES (187, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/200', '127.0.0.1', '内网IP', '{deptId=200}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 18:18:30');
INSERT INTO `sys_oper_log` VALUES (188, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"万马碾米机管理\",\"leader\":\"万马公司\",\"deptId\":100,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1648793012000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0\",\"email\":\"wm@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 18:18:57');
INSERT INTO `sys_oper_log` VALUES (189, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"万马科技公司碾米机管理\",\"leader\":\"万马公司\",\"deptId\":100,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1648793012000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0\",\"email\":\"wm@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 18:19:08');
INSERT INTO `sys_oper_log` VALUES (190, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"生产部门（成都）\",\"deptId\":205,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1649406584000,\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 18:20:20');
INSERT INTO `sys_oper_log` VALUES (191, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"代理部门（成都）\",\"deptId\":208,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":205,\"createBy\":\"admin\",\"children\":[],\"createTime\":1649406944000,\"updateBy\":\"admin\",\"ancestors\":\"0,100,205\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 18:20:31');
INSERT INTO `sys_oper_log` VALUES (192, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"用户（成都）\",\"deptId\":209,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":208,\"createBy\":\"admin\",\"children\":[],\"createTime\":1649406977000,\"updateBy\":\"admin\",\"ancestors\":\"0,100,205,208\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 18:20:40');
INSERT INTO `sys_oper_log` VALUES (193, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"remark\":\"负责碾米机生产的厂商\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"createTime\":1649390226000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"production\",\"roleName\":\"生产商（成都）\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 18:25:38');
INSERT INTO `sys_oper_log` VALUES (194, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":101,\"admin\":false,\"remark\":\"负责代理碾米机销售及售后\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":false,\"createTime\":1649390297000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"agent\",\"roleName\":\"代理商（成都）\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 18:25:47');
INSERT INTO `sys_oper_log` VALUES (195, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":102,\"admin\":false,\"remark\":\"购买或租赁碾米机的用户\",\"dataScope\":\"5\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"createTime\":1649390328000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"user\",\"roleName\":\"用户（成都）\",\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 18:25:54');
INSERT INTO `sys_oper_log` VALUES (196, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"生产商（乐山）\",\"orderNum\":\"1\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 18:26:41');
INSERT INTO `sys_oper_log` VALUES (197, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"代理商（乐山）\",\"orderNum\":\"1\",\"params\":{},\"parentId\":210,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100,210\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 18:27:04');
INSERT INTO `sys_oper_log` VALUES (198, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"用户（乐山）\",\"orderNum\":\"1\",\"params\":{},\"parentId\":211,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100,210,211\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 18:27:18');
INSERT INTO `sys_oper_log` VALUES (199, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"query\":\"\",\"icon\":\"guide\",\"orderNum\":4,\"menuName\":\"若依官网\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"http://ruoyi.vip\",\"children\":[],\"createTime\":1648793014000,\"updateBy\":\"admin\",\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-08 18:28:48');
INSERT INTO `sys_oper_log` VALUES (200, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_machine', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-09 19:46:07');
INSERT INTO `sys_oper_log` VALUES (201, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ayang\",\"columns\":[{\"capJavaField\":\"MachineNum\",\"usableColumn\":false,\"columnId\":7,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"machineNum\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"机器号\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1649504767000,\"tableId\":3,\"pk\":true,\"columnName\":\"machine_num\"},{\"capJavaField\":\"VersionNum\",\"usableColumn\":false,\"columnId\":8,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"versionNum\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"版本号\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1649504767000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"version_num\"},{\"capJavaField\":\"ProductionDate\",\"usableColumn\":false,\"columnId\":9,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"productionDate\",\"htmlType\":\"datetime\",\"edit\":true,\"query\":true,\"columnComment\":\"生产日期\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Date\",\"queryType\":\"EQ\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1649504767000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"production_date\"},{\"capJavaField\":\"MId\",\"usableColumn\":false,\"columnId\":10,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"mId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"生产商ID\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-09 19:50:49');
INSERT INTO `sys_oper_log` VALUES (202, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-04-09 19:50:55');
INSERT INTO `sys_oper_log` VALUES (203, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ayang\",\"columns\":[{\"capJavaField\":\"MachineNum\",\"usableColumn\":false,\"columnId\":7,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"machineNum\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"机器号\",\"updateTime\":1649505048000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1649504767000,\"tableId\":3,\"pk\":true,\"columnName\":\"machine_num\"},{\"capJavaField\":\"VersionNum\",\"usableColumn\":false,\"columnId\":8,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"versionNum\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"版本号\",\"isQuery\":\"1\",\"updateTime\":1649505048000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1649504767000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"version_num\"},{\"capJavaField\":\"ProductionDate\",\"usableColumn\":false,\"columnId\":9,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"productionDate\",\"htmlType\":\"datetime\",\"edit\":true,\"query\":true,\"columnComment\":\"生产日期\",\"isQuery\":\"1\",\"updateTime\":1649505048000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Date\",\"queryType\":\"EQ\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1649504767000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"production_date\"},{\"capJavaField\":\"MId\",\"usableColumn\":false,\"columnId\":10,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"mId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"生产', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-09 19:55:02');
INSERT INTO `sys_oper_log` VALUES (204, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-04-09 19:55:06');
INSERT INTO `sys_oper_log` VALUES (205, '碾米机', 1, 'com.ruoyi.machine.controller.SysMachineController.add()', 'POST', 1, 'admin', NULL, '/machine/machine', '127.0.0.1', '内网IP', '{\"rice1Margin\":\"30kg\",\"address\":\"成都\",\"versionNum\":\"1.1\",\"mId\":104,\"rice2Margin\":\"30kg\",\"params\":{},\"uId\":106,\"productionDate\":1649433600000,\"rice3Margin\":\"20kg\",\"aId\":105}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'machine_num\' doesn\'t have a default value\r\n### The error may exist in file [E:\\斯\\毕业设计\\RuoYi-Vue-master\\RuoYi-Vue-master\\ruoyi-admin\\target\\classes\\mapper\\machine\\SysMachineMapper.xml]\r\n### The error may involve com.ruoyi.machine.mapper.SysMachineMapper.insertSysMachine-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_machine          ( version_num,             production_date,             m_id,             a_id,             u_id,             address,             rice1_margin,             rice2_margin,             rice3_margin )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'machine_num\' doesn\'t have a default value\n; Field \'machine_num\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'machine_num\' doesn\'t have a default value', '2022-04-09 20:06:13');
INSERT INTO `sys_oper_log` VALUES (206, '碾米机', 1, 'com.ruoyi.machine.controller.SysMachineController.add()', 'POST', 1, 'admin', NULL, '/machine/machine', '127.0.0.1', '内网IP', '{\"rice1Margin\":\"30kg\",\"address\":\"成都\",\"versionNum\":\"1.1\",\"mId\":104,\"rice2Margin\":\"30kg\",\"params\":{},\"uId\":106,\"productionDate\":1649433600000,\"rice3Margin\":\"20kg\",\"aId\":105}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'machine_num\' doesn\'t have a default value\r\n### The error may exist in file [E:\\斯\\毕业设计\\RuoYi-Vue-master\\RuoYi-Vue-master\\ruoyi-admin\\target\\classes\\mapper\\machine\\SysMachineMapper.xml]\r\n### The error may involve com.ruoyi.machine.mapper.SysMachineMapper.insertSysMachine-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_machine          ( version_num,             production_date,             m_id,             a_id,             u_id,             address,             rice1_margin,             rice2_margin,             rice3_margin )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'machine_num\' doesn\'t have a default value\n; Field \'machine_num\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'machine_num\' doesn\'t have a default value', '2022-04-09 20:06:22');
INSERT INTO `sys_oper_log` VALUES (207, '碾米机', 1, 'com.ruoyi.machine.controller.SysMachineController.add()', 'POST', 1, 'admin', NULL, '/machine/machine', '127.0.0.1', '内网IP', '{\"rice1Margin\":\"30kg\",\"address\":\"成都\",\"versionNum\":\"1.1\",\"mId\":104,\"rice2Margin\":\"30kg\",\"params\":{},\"uId\":106,\"productionDate\":1649433600000,\"rice3Margin\":\"20kg\",\"aId\":105}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-09 20:07:57');
INSERT INTO `sys_oper_log` VALUES (208, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"remark\":\"负责碾米机生产的厂商\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"createTime\":1649390226000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"production\",\"roleName\":\"生产商（成都）\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,2012,2013,2014,2015,2016,2017],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-09 20:42:30');
INSERT INTO `sys_oper_log` VALUES (209, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":101,\"admin\":false,\"remark\":\"负责代理碾米机销售及售后\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":false,\"createTime\":1649390297000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"agent\",\"roleName\":\"代理商（成都）\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,2012,2013,2014,2015,2016,2017],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-09 20:42:36');
INSERT INTO `sys_oper_log` VALUES (210, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":102,\"admin\":false,\"remark\":\"购买或租赁碾米机的用户\",\"dataScope\":\"5\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"createTime\":1649390328000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"user\",\"roleName\":\"用户（成都）\",\"menuIds\":[1,2012,2013,2014,2015,2016,2017],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-09 20:42:43');
INSERT INTO `sys_oper_log` VALUES (211, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"build\",\"orderNum\":1,\"menuName\":\"碾米机管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"machine\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-09 20:56:06');
INSERT INTO `sys_oper_log` VALUES (212, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":1,\"menuName\":\"碾米机\",\"params\":{},\"parentId\":2018,\"isCache\":\"0\",\"path\":\"machine\",\"component\":\"machine/machine/index\",\"children\":[],\"createTime\":1649505687000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2012,\"menuType\":\"C\",\"perms\":\"machine:machine:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-09 21:18:48');
INSERT INTO `sys_oper_log` VALUES (213, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"remark\":\"负责碾米机生产的厂商\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"createTime\":1649390226000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"production\",\"roleName\":\"生产商（成都）\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,108,500,1040,1041,1042,501,1043,1044,1045,2018,2012,2013,2014,2015,2016,2017],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-09 21:19:37');
INSERT INTO `sys_oper_log` VALUES (214, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":101,\"admin\":false,\"remark\":\"负责代理碾米机销售及售后\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":false,\"createTime\":1649390297000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"agent\",\"roleName\":\"代理商（成都）\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,108,500,1040,1041,1042,501,1043,1044,1045,2018,2012,2013,2014,2015,2016,2017],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-09 21:19:45');
INSERT INTO `sys_oper_log` VALUES (215, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/3', '127.0.0.1', '内网IP', '{tableIds=3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-10 17:49:31');
INSERT INTO `sys_oper_log` VALUES (216, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_machine', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-10 17:49:37');
INSERT INTO `sys_oper_log` VALUES (217, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ayang\",\"columns\":[{\"capJavaField\":\"MachineNum\",\"usableColumn\":false,\"columnId\":17,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"machineNum\",\"htmlType\":\"input\",\"edit\":false,\"query\":true,\"columnComment\":\"机器号\",\"isQuery\":\"1\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1649584176000,\"tableId\":4,\"pk\":true,\"columnName\":\"machine_num\"},{\"capJavaField\":\"VersionNum\",\"usableColumn\":false,\"columnId\":18,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"versionNum\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"版本号\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1649584176000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"version_num\"},{\"capJavaField\":\"ProductionDate\",\"usableColumn\":false,\"columnId\":19,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"productionDate\",\"htmlType\":\"datetime\",\"edit\":true,\"query\":true,\"columnComment\":\"生产日期\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Date\",\"queryType\":\"EQ\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1649584176000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"production_date\"},{\"capJavaField\":\"MId\",\"usableColumn\":false,\"columnId\":20,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"mId\",\"htmlType\":\"input\",\"edit\":true,\"query\":false,\"columnComment\":\"生产商ID\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryTyp', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-10 18:02:04');
INSERT INTO `sys_oper_log` VALUES (218, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-04-10 18:02:14');
INSERT INTO `sys_oper_log` VALUES (219, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ayang\",\"columns\":[{\"capJavaField\":\"MachineNum\",\"usableColumn\":false,\"columnId\":17,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"machineNum\",\"htmlType\":\"input\",\"edit\":false,\"query\":true,\"columnComment\":\"机器号\",\"isQuery\":\"1\",\"updateTime\":1649584924000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1649584176000,\"tableId\":4,\"pk\":true,\"columnName\":\"machine_num\"},{\"capJavaField\":\"VersionNum\",\"usableColumn\":false,\"columnId\":18,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"versionNum\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"版本号\",\"isQuery\":\"1\",\"updateTime\":1649584924000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1649584176000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"version_num\"},{\"capJavaField\":\"ProductionDate\",\"usableColumn\":false,\"columnId\":19,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"productionDate\",\"htmlType\":\"datetime\",\"edit\":true,\"query\":true,\"columnComment\":\"生产日期\",\"isQuery\":\"1\",\"updateTime\":1649584924000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Date\",\"queryType\":\"EQ\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1649584176000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"production_date\"},{\"capJavaField\":\"MId\",\"usableColumn\":false,\"columnId\":20,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"mId\",\"htmlType\":\"input\",\"edit\":true,\"query\":false,\"co', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-10 18:21:36');
INSERT INTO `sys_oper_log` VALUES (220, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-04-10 18:21:39');
INSERT INTO `sys_oper_log` VALUES (221, '碾米机', 2, 'com.ruoyi.machine.controller.SysMachineController.edit()', 'PUT', 1, 'admin', NULL, '/machine/machine', '127.0.0.1', '内网IP', '{\"rice1Margin\":\"30kg\",\"machinePower\":\"1\",\"address\":\"成都\",\"machineNum\":1,\"versionNum\":\"1.1\",\"mId\":104,\"rice2Margin\":\"30kg\",\"params\":{},\"uId\":106,\"productionDate\":1649433600000,\"rice3Margin\":\"20kg\",\"aId\":105}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-10 18:31:24');
INSERT INTO `sys_oper_log` VALUES (222, '碾米机', 2, 'com.ruoyi.machine.controller.SysMachineController.edit()', 'PUT', 1, 'admin', NULL, '/machine/machine', '127.0.0.1', '内网IP', '{\"rice1Margin\":\"30kg\",\"machinePower\":\"1\",\"address\":\"成都\",\"machineNum\":1,\"versionNum\":\"1.1\",\"mId\":104,\"rice2Margin\":\"30kg\",\"params\":{},\"uId\":106,\"productionDate\":1649433600000,\"rice3Margin\":\"20kg\",\"aId\":105}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-10 18:32:00');
INSERT INTO `sys_oper_log` VALUES (223, '碾米机', 2, 'com.ruoyi.machine.controller.SysMachineController.edit()', 'PUT', 1, 'admin', NULL, '/machine/machine', '127.0.0.1', '内网IP', '{\"rice1Margin\":\"30kg\",\"machinePower\":\"0\",\"address\":\"成都\",\"machineNum\":1,\"versionNum\":\"1.1\",\"mId\":104,\"rice2Margin\":\"30kg\",\"params\":{},\"uId\":106,\"productionDate\":1649433600000,\"rice3Margin\":\"20kg\",\"aId\":105}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-10 18:32:11');
INSERT INTO `sys_oper_log` VALUES (224, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/4', '127.0.0.1', '内网IP', '{tableIds=4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-10 18:58:05');
INSERT INTO `sys_oper_log` VALUES (225, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_machine', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-10 18:58:18');
INSERT INTO `sys_oper_log` VALUES (226, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"MachineNum\",\"usableColumn\":false,\"columnId\":28,\"isIncrement\":\"1\",\"increment\":true,\"insert\":false,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"javaField\":\"machineNum\",\"htmlType\":\"input\",\"edit\":false,\"query\":true,\"columnComment\":\"机器号\",\"isQuery\":\"1\",\"sort\":1,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1649588298000,\"tableId\":5,\"pk\":true,\"columnName\":\"machine_num\"},{\"capJavaField\":\"VersionNum\",\"usableColumn\":false,\"columnId\":29,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"versionNum\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"版本号\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1649588298000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"version_num\"},{\"capJavaField\":\"ProductionDate\",\"usableColumn\":false,\"columnId\":30,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"productionDate\",\"htmlType\":\"datetime\",\"edit\":true,\"query\":true,\"columnComment\":\"生产日期\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Date\",\"queryType\":\"EQ\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1649588298000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"production_date\"},{\"capJavaField\":\"MId\",\"usableColumn\":false,\"columnId\":31,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"mId\",\"htmlType\":\"input\",\"edit\":true,\"query\":false,\"columnComment\":\"生产商ID\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-10 19:03:51');
INSERT INTO `sys_oper_log` VALUES (227, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-04-10 19:04:03');
INSERT INTO `sys_oper_log` VALUES (228, '碾米机信息管理', 2, 'com.ruoyi.machine.controller.SysMachineController.edit()', 'PUT', 1, 'admin', NULL, '/machine/machine', '127.0.0.1', '内网IP', '{\"rice1Margin\":\"30kg\",\"machinePower\":\"0\",\"address\":\"成都\",\"machineNum\":1,\"versionNum\":\"1.1\",\"mId\":104,\"rice2Margin\":\"30kg\",\"params\":{},\"uId\":106,\"productionDate\":1649433600000,\"rice3Margin\":\"20kg\",\"aId\":105}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-10 19:11:44');
INSERT INTO `sys_oper_log` VALUES (229, '碾米机信息管理', 2, 'com.ruoyi.machine.controller.SysMachineController.edit()', 'PUT', 1, 'admin', NULL, '/machine/machine', '127.0.0.1', '内网IP', '{\"rice1Margin\":\"30kg\",\"machinePower\":\"1\",\"address\":\"成都\",\"machineNum\":1,\"versionNum\":\"1.1\",\"mId\":104,\"rice2Margin\":\"30kg\",\"params\":{},\"uId\":106,\"productionDate\":1649433600000,\"rice3Margin\":\"20kg\",\"aId\":105}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-10 19:12:19');
INSERT INTO `sys_oper_log` VALUES (230, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"build\",\"orderNum\":1,\"menuName\":\"碾米机管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"machine\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-10 19:24:47');
INSERT INTO `sys_oper_log` VALUES (231, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":1,\"menuName\":\"碾米机信息管理\",\"params\":{},\"parentId\":2043,\"isCache\":\"0\",\"path\":\"machine\",\"component\":\"machine/machine/index\",\"children\":[],\"createTime\":1649588909000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2037,\"menuType\":\"C\",\"perms\":\"machine:machine:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-10 19:25:09');
INSERT INTO `sys_oper_log` VALUES (232, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"remark\":\"负责碾米机生产的厂商\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"createTime\":1649390226000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"production\",\"roleName\":\"生产商（成都）\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,108,500,1040,1041,1042,501,1043,1044,1045,2043,2037,2038,2039,2040,2041,2042],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-10 19:25:57');
INSERT INTO `sys_oper_log` VALUES (233, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":101,\"admin\":false,\"remark\":\"负责代理碾米机销售及售后\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":false,\"createTime\":1649390297000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"agent\",\"roleName\":\"代理商（成都）\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,108,500,1040,1041,1042,501,1043,1044,1045,2043,2037,2038,2039,2040,2041,2042],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-10 19:26:07');
INSERT INTO `sys_oper_log` VALUES (234, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":102,\"admin\":false,\"remark\":\"购买或租赁碾米机的用户\",\"dataScope\":\"5\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"createTime\":1649390328000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"user\",\"roleName\":\"用户（成都）\",\"menuIds\":[1,2043,2037,2038,2039,2040,2041,2042],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-10 19:26:12');
INSERT INTO `sys_oper_log` VALUES (235, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_process', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-10 19:52:06');
INSERT INTO `sys_oper_log` VALUES (236, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/6', '127.0.0.1', '内网IP', '{tableIds=6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-10 19:54:13');
INSERT INTO `sys_oper_log` VALUES (237, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_process', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-10 19:54:17');
INSERT INTO `sys_oper_log` VALUES (238, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ayang\",\"columns\":[{\"capJavaField\":\"ProcessNum\",\"usableColumn\":false,\"columnId\":46,\"isIncrement\":\"1\",\"increment\":true,\"insert\":false,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"javaField\":\"processNum\",\"htmlType\":\"input\",\"edit\":false,\"query\":true,\"columnComment\":\"加工记录流水号\",\"isQuery\":\"1\",\"sort\":1,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1649591657000,\"tableId\":7,\"pk\":true,\"columnName\":\"process_num\"},{\"capJavaField\":\"MachineNum\",\"usableColumn\":false,\"columnId\":47,\"isIncrement\":\"0\",\"increment\":false,\"insert\":false,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isRequired\":\"1\",\"javaField\":\"machineNum\",\"htmlType\":\"input\",\"edit\":false,\"query\":true,\"columnComment\":\"机器号\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1649591657000,\"tableId\":7,\"pk\":false,\"columnName\":\"machine_num\"},{\"capJavaField\":\"ProcessTimePoint\",\"usableColumn\":false,\"columnId\":48,\"isIncrement\":\"0\",\"increment\":false,\"insert\":false,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isRequired\":\"1\",\"javaField\":\"processTimePoint\",\"htmlType\":\"datetime\",\"edit\":false,\"query\":true,\"columnComment\":\"加工开始时间\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Date\",\"queryType\":\"EQ\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1649591657000,\"tableId\":7,\"pk\":false,\"columnName\":\"process_time_point\"},{\"capJavaField\":\"ProcessTime\",\"usableColumn\":false,\"columnId\":49,\"isIncrement\":\"0\",\"increment\":false,\"insert\":false,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isRequired\":\"1\",\"javaField\":\"processTime\",\"htmlType\":\"datetime\",\"edit\":false,\"query\":false,\"columnComment\":\"加工结束时间\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Date\",\"queryType\":\"EQ\",\"columnType\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-10 20:00:21');
INSERT INTO `sys_oper_log` VALUES (239, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-04-10 20:00:45');
INSERT INTO `sys_oper_log` VALUES (240, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_parameter', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-10 20:27:37');
INSERT INTO `sys_oper_log` VALUES (241, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ayang\",\"columns\":[{\"capJavaField\":\"ParameterNum\",\"usableColumn\":false,\"columnId\":53,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"parameterNum\",\"htmlType\":\"input\",\"edit\":false,\"query\":true,\"columnComment\":\"参数记录流水号\",\"isQuery\":\"1\",\"sort\":1,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1649593656000,\"tableId\":8,\"pk\":true,\"columnName\":\"parameter_num\"},{\"capJavaField\":\"MachineNum\",\"usableColumn\":false,\"columnId\":54,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"machineNum\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"机器号\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1649593656000,\"isEdit\":\"1\",\"tableId\":8,\"pk\":false,\"columnName\":\"machine_num\"},{\"capJavaField\":\"GetTime\",\"usableColumn\":false,\"columnId\":55,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"getTime\",\"htmlType\":\"datetime\",\"edit\":true,\"query\":true,\"columnComment\":\"记录时间点\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Date\",\"queryType\":\"EQ\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1649593656000,\"isEdit\":\"1\",\"tableId\":8,\"pk\":false,\"columnName\":\"get_time\"},{\"capJavaField\":\"Powersource\",\"usableColumn\":false,\"columnId\":56,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"powersource\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"电源\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"j', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-10 20:30:15');
INSERT INTO `sys_oper_log` VALUES (242, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-04-10 20:30:24');
INSERT INTO `sys_oper_log` VALUES (243, '碾米机参数', 1, 'com.ruoyi.parameter.controller.SysParameterController.add()', 'POST', 1, 'admin', NULL, '/parameter/parameter', '127.0.0.1', '内网IP', '{\"powersource\":\"正常\",\"getTime\":1649520000000,\"machineNum\":1,\"params\":{},\"voltage\":\"12v\",\"abradability\":\"98%\",\"parameterNum\":1,\"parameter\":\"参数\",\"temperature\":\"36.5°\",\"humidity\":\"30%\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-10 20:39:16');
INSERT INTO `sys_oper_log` VALUES (244, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/2,5,7,8', '127.0.0.1', '内网IP', '{tableIds=2,5,7,8}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-10 20:49:12');
INSERT INTO `sys_oper_log` VALUES (245, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_message', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-10 20:49:16');
INSERT INTO `sys_oper_log` VALUES (246, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ayang\",\"columns\":[{\"capJavaField\":\"MessageId\",\"usableColumn\":false,\"columnId\":62,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"messageId\",\"htmlType\":\"input\",\"edit\":false,\"query\":true,\"columnComment\":\"消息流水号\",\"isQuery\":\"1\",\"sort\":1,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1649594956000,\"tableId\":9,\"pk\":true,\"columnName\":\"message_id\"},{\"capJavaField\":\"SenderId\",\"usableColumn\":false,\"columnId\":63,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"senderId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"消息发送者id\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1649594956000,\"isEdit\":\"1\",\"tableId\":9,\"pk\":false,\"columnName\":\"sender_id\"},{\"capJavaField\":\"ReceiverId\",\"usableColumn\":false,\"columnId\":64,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"receiverId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"消息接收者id\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1649594956000,\"isEdit\":\"1\",\"tableId\":9,\"pk\":false,\"columnName\":\"receiver_id\"},{\"capJavaField\":\"PublishTime\",\"usableColumn\":false,\"columnId\":65,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"publishTime\",\"htmlType\":\"datetime\",\"edit\":true,\"query\":true,\"columnComment\":\"发布时间点\",\"isQuery\":\"1\",\"sort\":4,\"list\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-10 20:58:01');
INSERT INTO `sys_oper_log` VALUES (247, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-04-10 20:58:04');
INSERT INTO `sys_oper_log` VALUES (248, '故障消息接收', 1, 'com.ruoyi.message.receiver.controller.SysMessageReceiverController.add()', 'POST', 1, 'admin', NULL, '/messrec/messagerec', '127.0.0.1', '内网IP', '{\"publishTime\":1649520000000,\"erroMachine\":1,\"messageId\":1,\"describeInfo\":\"电源损坏\",\"params\":{},\"senderId\":104,\"receiverId\":106,\"accessory\":\"/profile/upload/2022/04/10/附件_20220410210602A001.doc\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-10 21:06:18');
INSERT INTO `sys_oper_log` VALUES (249, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ayang\",\"columns\":[{\"capJavaField\":\"MessageId\",\"usableColumn\":false,\"columnId\":62,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"messageId\",\"htmlType\":\"input\",\"edit\":false,\"query\":true,\"columnComment\":\"消息流水号\",\"isQuery\":\"1\",\"updateTime\":1649595480000,\"sort\":1,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1649594956000,\"tableId\":9,\"pk\":true,\"columnName\":\"message_id\"},{\"capJavaField\":\"SenderId\",\"usableColumn\":false,\"columnId\":63,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"senderId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"消息发送者id\",\"isQuery\":\"1\",\"updateTime\":1649595480000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1649594956000,\"isEdit\":\"1\",\"tableId\":9,\"pk\":false,\"columnName\":\"sender_id\"},{\"capJavaField\":\"ReceiverId\",\"usableColumn\":false,\"columnId\":64,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"receiverId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"消息接收者id\",\"isQuery\":\"1\",\"updateTime\":1649595480000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1649594956000,\"isEdit\":\"1\",\"tableId\":9,\"pk\":false,\"columnName\":\"receiver_id\"},{\"capJavaField\":\"PublishTime\",\"usableColumn\":false,\"columnId\":65,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"publishTime\",\"htmlType\":\"datetime', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-10 21:12:07');
INSERT INTO `sys_oper_log` VALUES (250, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-04-10 21:12:10');
INSERT INTO `sys_oper_log` VALUES (251, '故障消息发送', 1, 'com.ruoyi.message.sender.controller.SysMessageSenderController.add()', 'POST', 1, 'admin', NULL, '/messsen/messagesen', '127.0.0.1', '内网IP', '{\"publishTime\":1649520000000,\"erroMachine\":1,\"messageId\":2,\"describeInfo\":\"emmm\",\"params\":{},\"senderId\":106,\"receiverId\":104}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-10 21:18:45');
INSERT INTO `sys_oper_log` VALUES (252, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":1,\"menuName\":\"碾米机信息\",\"params\":{},\"parentId\":2043,\"isCache\":\"0\",\"path\":\"machine\",\"component\":\"machine/machine/index\",\"children\":[],\"createTime\":1649588909000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2037,\"menuType\":\"C\",\"perms\":\"machine:machine:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-10 21:31:10');
INSERT INTO `sys_oper_log` VALUES (253, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"remark\":\"负责碾米机生产的厂商\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"createTime\":1649390226000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"production\",\"roleName\":\"生产商（成都）\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,108,500,1040,1041,1042,501,1043,1044,1045,2043,2037,2038,2039,2040,2041,2042,2044,2045,2046,2047,2048,2049,2050,2051,2052,2053,2054,2055,2056,2057,2058,2059,2060,2061,2062,2063,2064,2065,2066,2067],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-11 09:47:52');
INSERT INTO `sys_oper_log` VALUES (254, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":101,\"admin\":false,\"remark\":\"负责代理碾米机销售及售后\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":false,\"createTime\":1649390297000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"agent\",\"roleName\":\"代理商（成都）\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,108,500,1040,1041,1042,501,1043,1044,1045,2043,2037,2038,2039,2040,2041,2042,2044,2045,2046,2047,2048,2049,2050,2051,2052,2053,2054,2055,2056,2057,2058,2059,2060,2061,2062,2063,2064,2065,2066,2067],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-11 09:48:22');
INSERT INTO `sys_oper_log` VALUES (255, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":102,\"admin\":false,\"remark\":\"购买或租赁碾米机的用户\",\"dataScope\":\"5\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"createTime\":1649390328000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"user\",\"roleName\":\"用户（成都）\",\"menuIds\":[2043,1,2037,2038,2039,2040,2041,2042,2044,2045,2046,2047,2048,2049,2056,2057,2058,2059,2060,2061,2062,2063,2064,2065,2066,2067],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-11 09:49:04');
INSERT INTO `sys_oper_log` VALUES (256, '故障消息发送', 1, 'com.ruoyi.message.sender.controller.SysMessageSenderController.add()', 'POST', 1, 'sc1', NULL, '/messsen/messagesen', '127.0.0.1', '内网IP', '{\"publishTime\":1649642667000,\"erroMachine\":1,\"messageId\":3,\"describeInfo\":\"测试故障\",\"params\":{},\"senderId\":104,\"receiverId\":106}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-11 10:04:28');
INSERT INTO `sys_oper_log` VALUES (257, '故障消息发送', 1, 'com.ruoyi.message.sender.controller.SysMessageSenderController.add()', 'POST', 1, 'sc1', NULL, '/messsen/messagesen', '127.0.0.1', '内网IP', '{\"publishTime\":1649650287000,\"erroMachine\":1,\"messageId\":4,\"describeInfo\":\"测试2\",\"params\":{},\"senderId\":104,\"receiverId\":105}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-11 12:11:28');
INSERT INTO `sys_oper_log` VALUES (258, '故障消息接收', 5, 'com.ruoyi.message.receiver.controller.SysMessageReceiverController.export()', 'POST', 1, 'dl2', NULL, '/messrec/messagerec/export', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 0, NULL, '2022-04-11 12:25:01');
INSERT INTO `sys_oper_log` VALUES (259, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":0,\"menuName\":\"碾米机信息\",\"params\":{},\"parentId\":2043,\"isCache\":\"0\",\"path\":\"machine\",\"component\":\"machine/machine/index\",\"children\":[],\"createTime\":1649588909000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2037,\"menuType\":\"C\",\"perms\":\"machine:machine:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-11 13:34:07');
INSERT INTO `sys_oper_log` VALUES (260, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":2,\"menuName\":\"碾米机参数\",\"params\":{},\"parentId\":2043,\"isCache\":\"0\",\"path\":\"parameter\",\"component\":\"parameter/parameter/index\",\"children\":[],\"createTime\":1649593973000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2050,\"menuType\":\"C\",\"perms\":\"parameter:parameter:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-11 13:34:17');
INSERT INTO `sys_oper_log` VALUES (261, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":0,\"menuName\":\"碾米机信息\",\"params\":{},\"parentId\":2043,\"isCache\":\"0\",\"path\":\"machine\",\"component\":\"machine/machine/index\",\"children\":[],\"createTime\":1649588909000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2037,\"menuType\":\"C\",\"perms\":\"machine:machine:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-11 13:34:25');
INSERT INTO `sys_oper_log` VALUES (262, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":2,\"menuName\":\"加工记录\",\"params\":{},\"parentId\":2043,\"isCache\":\"0\",\"path\":\"process\",\"component\":\"process/process/index\",\"children\":[],\"createTime\":1649592210000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2044,\"menuType\":\"C\",\"perms\":\"process:process:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-11 13:34:32');
INSERT INTO `sys_oper_log` VALUES (263, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":3,\"menuName\":\"碾米机参数\",\"params\":{},\"parentId\":2043,\"isCache\":\"0\",\"path\":\"parameter\",\"component\":\"parameter/parameter/index\",\"children\":[],\"createTime\":1649593973000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2050,\"menuType\":\"C\",\"perms\":\"parameter:parameter:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-11 13:34:37');
INSERT INTO `sys_oper_log` VALUES (264, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":4,\"menuName\":\"故障消息接收\",\"params\":{},\"parentId\":2043,\"isCache\":\"0\",\"path\":\"messagerec\",\"component\":\"messrec/messagerec/index\",\"children\":[],\"createTime\":1649595728000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2056,\"menuType\":\"C\",\"perms\":\"messrec:messagerec:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-11 13:34:45');
INSERT INTO `sys_oper_log` VALUES (265, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":5,\"menuName\":\"故障消息发送\",\"params\":{},\"parentId\":2043,\"isCache\":\"0\",\"path\":\"messagesen\",\"component\":\"messsen/messagesen/index\",\"children\":[],\"createTime\":1649596483000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2062,\"menuType\":\"C\",\"perms\":\"messsen:messagesen:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-11 13:34:53');
INSERT INTO `sys_oper_log` VALUES (266, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":3,\"menuName\":\"故障消息管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"message\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-11 13:36:54');
INSERT INTO `sys_oper_log` VALUES (267, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"build\",\"orderNum\":2,\"menuName\":\"碾米机管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"machine\",\"children\":[],\"createTime\":1649589887000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2043,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-11 13:37:07');
INSERT INTO `sys_oper_log` VALUES (268, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"tool\",\"orderNum\":4,\"menuName\":\"系统工具\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"tool\",\"children\":[],\"createTime\":1648793014000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":3,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-11 13:37:16');
INSERT INTO `sys_oper_log` VALUES (269, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"query\":\"\",\"icon\":\"guide\",\"orderNum\":5,\"menuName\":\"若依官网\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"http://ruoyi.vip\",\"children\":[],\"createTime\":1648793014000,\"updateBy\":\"admin\",\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-11 13:37:19');
INSERT INTO `sys_oper_log` VALUES (270, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":4,\"menuName\":\"故障消息接收\",\"params\":{},\"parentId\":2068,\"isCache\":\"0\",\"path\":\"messagerec\",\"component\":\"messrec/messagerec/index\",\"children\":[],\"createTime\":1649595728000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2056,\"menuType\":\"C\",\"perms\":\"messrec:messagerec:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-11 13:37:44');
INSERT INTO `sys_oper_log` VALUES (271, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":5,\"menuName\":\"故障消息发送\",\"params\":{},\"parentId\":2068,\"isCache\":\"0\",\"path\":\"messagesen\",\"component\":\"messsen/messagesen/index\",\"children\":[],\"createTime\":1649596483000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2062,\"menuType\":\"C\",\"perms\":\"messsen:messagesen:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-11 13:37:51');
INSERT INTO `sys_oper_log` VALUES (272, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":0,\"menuName\":\"故障消息接收\",\"params\":{},\"parentId\":2068,\"isCache\":\"0\",\"path\":\"messagerec\",\"component\":\"messrec/messagerec/index\",\"children\":[],\"createTime\":1649595728000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2056,\"menuType\":\"C\",\"perms\":\"messrec:messagerec:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-11 13:38:05');
INSERT INTO `sys_oper_log` VALUES (273, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":1,\"menuName\":\"故障消息接收\",\"params\":{},\"parentId\":2068,\"isCache\":\"0\",\"path\":\"messagerec\",\"component\":\"messrec/messagerec/index\",\"children\":[],\"createTime\":1649595728000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2056,\"menuType\":\"C\",\"perms\":\"messrec:messagerec:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-11 13:38:10');
INSERT INTO `sys_oper_log` VALUES (274, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":2,\"menuName\":\"故障消息发送\",\"params\":{},\"parentId\":2068,\"isCache\":\"0\",\"path\":\"messagesen\",\"component\":\"messsen/messagesen/index\",\"children\":[],\"createTime\":1649596483000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2062,\"menuType\":\"C\",\"perms\":\"messsen:messagesen:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-11 13:38:19');
INSERT INTO `sys_oper_log` VALUES (275, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"remark\":\"负责碾米机生产的厂商\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"createTime\":1649390226000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"production\",\"roleName\":\"生产商（成都）\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,108,500,1040,1041,1042,501,1043,1044,1045,2043,2037,2038,2039,2040,2041,2042,2044,2045,2046,2047,2048,2049,2050,2051,2052,2053,2054,2055,2068,2056,2057,2058,2059,2060,2061,2062,2063,2064,2065,2066,2067],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-12 09:59:12');
INSERT INTO `sys_oper_log` VALUES (276, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"remark\":\"负责碾米机生产的厂商\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"createTime\":1649390226000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"production\",\"roleName\":\"生产商（成都）\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,108,500,1040,1041,1042,501,1043,1044,1045,2043,2037,2038,2039,2040,2041,2042,2044,2045,2046,2047,2048,2049,2050,2051,2052,2053,2054,2055,2068,2056,2057,2058,2059,2060,2061,2062,2063,2064,2065,2066,2067],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-12 09:59:12');
INSERT INTO `sys_oper_log` VALUES (277, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"excel\",\"orderNum\":1,\"menuName\":\"碾米机信息\",\"params\":{},\"parentId\":2043,\"isCache\":\"0\",\"path\":\"machine\",\"component\":\"machine/machine/index\",\"children\":[],\"createTime\":1649588909000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2037,\"menuType\":\"C\",\"perms\":\"machine:machine:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-12 11:34:45');
INSERT INTO `sys_oper_log` VALUES (278, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"row\",\"orderNum\":2,\"menuName\":\"加工记录\",\"params\":{},\"parentId\":2043,\"isCache\":\"0\",\"path\":\"process\",\"component\":\"process/process/index\",\"children\":[],\"createTime\":1649592210000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2044,\"menuType\":\"C\",\"perms\":\"process:process:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-12 11:35:10');
INSERT INTO `sys_oper_log` VALUES (279, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"tree-table\",\"orderNum\":2,\"menuName\":\"加工记录\",\"params\":{},\"parentId\":2043,\"isCache\":\"0\",\"path\":\"process\",\"component\":\"process/process/index\",\"children\":[],\"createTime\":1649592210000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2044,\"menuType\":\"C\",\"perms\":\"process:process:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-12 11:35:28');
INSERT INTO `sys_oper_log` VALUES (280, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"education\",\"orderNum\":2,\"menuName\":\"加工记录\",\"params\":{},\"parentId\":2043,\"isCache\":\"0\",\"path\":\"process\",\"component\":\"process/process/index\",\"children\":[],\"createTime\":1649592210000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2044,\"menuType\":\"C\",\"perms\":\"process:process:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-12 11:35:36');
INSERT INTO `sys_oper_log` VALUES (281, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"nested\",\"orderNum\":3,\"menuName\":\"碾米机参数\",\"params\":{},\"parentId\":2043,\"isCache\":\"0\",\"path\":\"parameter\",\"component\":\"parameter/parameter/index\",\"children\":[],\"createTime\":1649593973000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2050,\"menuType\":\"C\",\"perms\":\"parameter:parameter:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-12 11:35:46');
INSERT INTO `sys_oper_log` VALUES (282, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"wechat\",\"orderNum\":1,\"menuName\":\"故障消息接收\",\"params\":{},\"parentId\":2068,\"isCache\":\"0\",\"path\":\"messagerec\",\"component\":\"messrec/messagerec/index\",\"children\":[],\"createTime\":1649595728000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2056,\"menuType\":\"C\",\"perms\":\"messrec:messagerec:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-12 11:37:06');
INSERT INTO `sys_oper_log` VALUES (283, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"wechat\",\"orderNum\":2,\"menuName\":\"故障消息发送\",\"params\":{},\"parentId\":2068,\"isCache\":\"0\",\"path\":\"messagesen\",\"component\":\"messsen/messagesen/index\",\"children\":[],\"createTime\":1649596483000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2062,\"menuType\":\"C\",\"perms\":\"messsen:messagesen:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-12 11:37:20');
INSERT INTO `sys_oper_log` VALUES (284, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/102', '127.0.0.1', '内网IP', '{deptId=102}', '{\"msg\":\"存在下级部门,不允许删除\",\"code\":500}', 0, NULL, '2022-04-12 11:41:07');
INSERT INTO `sys_oper_log` VALUES (285, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/108', '127.0.0.1', '内网IP', '{deptId=108}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-12 11:41:12');
INSERT INTO `sys_oper_log` VALUES (286, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/109', '127.0.0.1', '内网IP', '{deptId=109}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-12 11:41:16');
INSERT INTO `sys_oper_log` VALUES (287, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/102', '127.0.0.1', '内网IP', '{deptId=102}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-12 11:41:19');
INSERT INTO `sys_oper_log` VALUES (288, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/107', '127.0.0.1', '内网IP', '{deptId=107}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-12 11:41:31');
INSERT INTO `sys_oper_log` VALUES (289, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/106', '127.0.0.1', '内网IP', '{deptId=106}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-12 11:41:33');
INSERT INTO `sys_oper_log` VALUES (290, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/105', '127.0.0.1', '内网IP', '{deptId=105}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":500}', 0, NULL, '2022-04-12 11:41:36');
INSERT INTO `sys_oper_log` VALUES (291, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/105', '127.0.0.1', '内网IP', '{deptId=105}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":500}', 0, NULL, '2022-04-12 11:41:41');
INSERT INTO `sys_oper_log` VALUES (292, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/104', '127.0.0.1', '内网IP', '{deptId=104}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-12 11:41:48');
INSERT INTO `sys_oper_log` VALUES (293, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/103', '127.0.0.1', '内网IP', '{deptId=103}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":500}', 0, NULL, '2022-04-12 11:41:51');
INSERT INTO `sys_oper_log` VALUES (294, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"测试\",\"leader\":\"若依\",\"deptId\":101,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1648793012000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"email\":\"ry@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-12 11:42:15');
INSERT INTO `sys_oper_log` VALUES (295, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/system/config', '127.0.0.1', '内网IP', '{\"configName\":\"主框架页-默认皮肤样式名称\",\"configKey\":\"sys.index.skinName\",\"createBy\":\"admin\",\"createTime\":1648793019000,\"updateBy\":\"admin\",\"configId\":1,\"remark\":\"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\",\"configType\":\"Y\",\"configValue\":\"skin-green\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-12 11:43:05');
INSERT INTO `sys_oper_log` VALUES (296, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/system/config', '127.0.0.1', '内网IP', '{\"configName\":\"主框架页-侧边栏主题\",\"configKey\":\"sys.index.sideTheme\",\"createBy\":\"admin\",\"createTime\":1648793019000,\"updateBy\":\"admin\",\"configId\":3,\"remark\":\"深色主题theme-dark，浅色主题theme-light\",\"configType\":\"Y\",\"configValue\":\"theme-light\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-12 11:43:34');
INSERT INTO `sys_oper_log` VALUES (297, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/system/config', '127.0.0.1', '内网IP', '{\"configName\":\"主框架页-默认皮肤样式名称\",\"configKey\":\"sys.index.skinName\",\"createBy\":\"admin\",\"createTime\":1648793019000,\"updateBy\":\"admin\",\"configId\":1,\"remark\":\"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\",\"updateTime\":1649734984000,\"configType\":\"Y\",\"configValue\":\"skin-green\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-12 11:44:39');
INSERT INTO `sys_oper_log` VALUES (298, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/system/config', '127.0.0.1', '内网IP', '{\"configName\":\"主框架页-默认皮肤样式名称\",\"configKey\":\"sys.index.skinName\",\"createBy\":\"admin\",\"createTime\":1648793019000,\"updateBy\":\"admin\",\"configId\":1,\"remark\":\"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\",\"updateTime\":1649735079000,\"configType\":\"N\",\"configValue\":\"skin-green\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-12 11:44:52');
INSERT INTO `sys_oper_log` VALUES (299, '参数管理', 9, 'com.ruoyi.web.controller.system.SysConfigController.refreshCache()', 'DELETE', 1, 'admin', NULL, '/system/config/refreshCache', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-12 11:45:00');
INSERT INTO `sys_oper_log` VALUES (300, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/system/config', '127.0.0.1', '内网IP', '{\"configName\":\"主框架页-默认皮肤样式名称\",\"configKey\":\"sys.index.skinName\",\"createBy\":\"admin\",\"createTime\":1648793019000,\"updateBy\":\"admin\",\"configId\":1,\"remark\":\"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\",\"updateTime\":1649735091000,\"configType\":\"Y\",\"configValue\":\"skin-green\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-12 11:45:04');
INSERT INTO `sys_oper_log` VALUES (301, '在线用户', 7, 'com.ruoyi.web.controller.monitor.SysUserOnlineController.forceLogout()', 'DELETE', 1, 'admin', NULL, '/monitor/online/7c770c1d-daff-4e2c-8281-df2125dc83b6', '127.0.0.1', '内网IP', '{tokenId=7c770c1d-daff-4e2c-8281-df2125dc83b6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-12 11:47:27');
INSERT INTO `sys_oper_log` VALUES (302, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"remark\":\"负责碾米机生产的厂商\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"createTime\":1649390226000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"production\",\"roleName\":\"生产商（成都）\",\"menuIds\":[1,2,100,1001,1002,1003,1004,1005,1006,1007,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,108,500,1040,1041,1042,501,1043,1044,1045,109,1046,1047,1048,112,113,2043,2037,2038,2039,2040,2041,2042,2044,2045,2046,2047,2048,2049,2050,2051,2052,2053,2054,2055,2068,2056,2057,2058,2059,2060,2061,2062,2063,2064,2065,2066,2067],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-12 11:48:47');
INSERT INTO `sys_oper_log` VALUES (303, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'sc1', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2022/04/12/blob_20220412115345A001.jpeg\",\"code\":200}', 0, NULL, '2022-04-12 11:53:45');
INSERT INTO `sys_oper_log` VALUES (304, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'sc1', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"production\",\"roleName\":\"生产商（成都）\",\"status\":\"0\"}],\"phonenumber\":\"18282889254\",\"admin\":false,\"loginDate\":1649732514000,\"delFlag\":\"0\",\"loginIp\":\"127.0.0.1\",\"email\":\"1361773011@qq.com\",\"nickName\":\"李正洋_生产\",\"sex\":\"0\",\"deptId\":205,\"avatar\":\"\",\"dept\":{\"deptName\":\"生产部门（成都）\",\"deptId\":205,\"orderNum\":\"0\",\"params\":{},\"parentId\":100,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"sc1\",\"userId\":104,\"createBy\":\"admin\",\"createTime\":1649412632000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-12 11:54:17');
INSERT INTO `sys_oper_log` VALUES (305, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"guide\",\"orderNum\":5,\"menuName\":\"若依官网\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"http://ruoyi.vip\",\"children\":[],\"createTime\":1648793014000,\"updateBy\":\"admin\",\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-12 11:55:15');
INSERT INTO `sys_oper_log` VALUES (306, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":101,\"admin\":false,\"remark\":\"负责代理碾米机销售及售后\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":false,\"createTime\":1649390297000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"agent\",\"roleName\":\"代理商（成都）\",\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-12 13:50:06');
INSERT INTO `sys_oper_log` VALUES (307, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":102,\"admin\":false,\"remark\":\"购买或租赁碾米机的用户\",\"dataScope\":\"5\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"createTime\":1649390328000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"user\",\"roleName\":\"用户（成都）\",\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-12 13:50:13');
INSERT INTO `sys_oper_log` VALUES (308, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":101,\"admin\":false,\"remark\":\"负责代理碾米机销售及售后\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":false,\"createTime\":1649390297000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"agent\",\"roleName\":\"代理商（成都）\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,2043,2037,2038,2039,2040,2041,2042,2044,2045,2046,2047,2048,2049,2050,2051,2052,2053,2054,2055,2068,2056,2057,2058,2059,2060,2061,2062,2063,2064,2065,2066,2067],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-12 13:52:25');
INSERT INTO `sys_oper_log` VALUES (309, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":102,\"admin\":false,\"remark\":\"购买或租赁碾米机的用户\",\"dataScope\":\"5\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"createTime\":1649390328000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"user\",\"roleName\":\"用户（成都）\",\"menuIds\":[2043,2037,2038,2039,2040,2041,2042,2044,2045,2046,2047,2048,2049,2068,2056,2057,2058,2059,2060,2061,2062,2063,2064,2065,2066,2067],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-12 13:52:45');

-- ----------------------------
-- Table structure for sys_parameter
-- ----------------------------
DROP TABLE IF EXISTS `sys_parameter`;
CREATE TABLE `sys_parameter`  (
  `parameter_num` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '参数记录流水号',
  `machine_num` bigint(20) NOT NULL COMMENT '机器号',
  `get_time` datetime NOT NULL COMMENT '记录时间点',
  `powersource` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '电源',
  `voltage` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '电压',
  `humidity` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '湿度',
  `temperature` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '温度',
  `abradability` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '胶辊磨损度',
  `parameter` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '预留参数',
  PRIMARY KEY (`parameter_num`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '碾米机参数表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_parameter
-- ----------------------------
INSERT INTO `sys_parameter` VALUES (1, 1, '2022-04-10 00:00:11', '正常', '12v', '30%', '36.5°', '98%', '参数');
INSERT INTO `sys_parameter` VALUES (2, 1, '2022-04-09 00:23:00', '异常', '13v', '30%', '36.5°', '97%', '参数');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2022-04-01 14:03:33', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2022-04-01 14:03:33', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2022-04-01 14:03:33', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2022-04-01 14:03:33', '', NULL, '');

-- ----------------------------
-- Table structure for sys_process
-- ----------------------------
DROP TABLE IF EXISTS `sys_process`;
CREATE TABLE `sys_process`  (
  `process_num` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '加工记录流水号',
  `machine_num` bigint(20) NOT NULL COMMENT '机器号',
  `process_time_point` datetime NOT NULL COMMENT '加工开始时间',
  `process_time` datetime NOT NULL COMMENT '加工结束时间',
  `rice_num` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '米类型',
  `amount` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '加工数量',
  `rice_milling_efficiency` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '加工效率',
  PRIMARY KEY (`process_num`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '加工记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_process
-- ----------------------------
INSERT INTO `sys_process` VALUES (1, 1, '2022-04-09 00:00:00', '2022-04-10 00:00:00', '精米', '2kg', '100%');
INSERT INTO `sys_process` VALUES (2, 2, '2022-04-11 16:43:23', '2022-04-11 16:44:37', '粗米', '3kg', '100%');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2022-04-01 14:03:34', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2022-04-01 14:03:34', 'admin', '2022-04-08 11:55:54', '普通角色');
INSERT INTO `sys_role` VALUES (100, '生产商（成都）', 'production', 3, '2', 1, 0, '0', '0', 'admin', '2022-04-08 11:57:06', 'admin', '2022-04-12 11:48:47', '负责碾米机生产的厂商');
INSERT INTO `sys_role` VALUES (101, '代理商（成都）', 'agent', 4, '2', 1, 0, '0', '0', 'admin', '2022-04-08 11:58:17', 'admin', '2022-04-12 13:52:24', '负责代理碾米机销售及售后');
INSERT INTO `sys_role` VALUES (102, '用户（成都）', 'user', 5, '5', 1, 1, '0', '0', 'admin', '2022-04-08 11:58:48', 'admin', '2022-04-12 13:52:45', '购买或租赁碾米机的用户');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);
INSERT INTO `sys_role_dept` VALUES (100, 208);
INSERT INTO `sys_role_dept` VALUES (100, 209);
INSERT INTO `sys_role_dept` VALUES (101, 100);
INSERT INTO `sys_role_dept` VALUES (101, 209);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (100, 1);
INSERT INTO `sys_role_menu` VALUES (100, 2);
INSERT INTO `sys_role_menu` VALUES (100, 100);
INSERT INTO `sys_role_menu` VALUES (100, 103);
INSERT INTO `sys_role_menu` VALUES (100, 104);
INSERT INTO `sys_role_menu` VALUES (100, 108);
INSERT INTO `sys_role_menu` VALUES (100, 109);
INSERT INTO `sys_role_menu` VALUES (100, 112);
INSERT INTO `sys_role_menu` VALUES (100, 113);
INSERT INTO `sys_role_menu` VALUES (100, 500);
INSERT INTO `sys_role_menu` VALUES (100, 501);
INSERT INTO `sys_role_menu` VALUES (100, 1001);
INSERT INTO `sys_role_menu` VALUES (100, 1002);
INSERT INTO `sys_role_menu` VALUES (100, 1003);
INSERT INTO `sys_role_menu` VALUES (100, 1004);
INSERT INTO `sys_role_menu` VALUES (100, 1005);
INSERT INTO `sys_role_menu` VALUES (100, 1006);
INSERT INTO `sys_role_menu` VALUES (100, 1007);
INSERT INTO `sys_role_menu` VALUES (100, 1017);
INSERT INTO `sys_role_menu` VALUES (100, 1018);
INSERT INTO `sys_role_menu` VALUES (100, 1019);
INSERT INTO `sys_role_menu` VALUES (100, 1020);
INSERT INTO `sys_role_menu` VALUES (100, 1021);
INSERT INTO `sys_role_menu` VALUES (100, 1022);
INSERT INTO `sys_role_menu` VALUES (100, 1023);
INSERT INTO `sys_role_menu` VALUES (100, 1024);
INSERT INTO `sys_role_menu` VALUES (100, 1025);
INSERT INTO `sys_role_menu` VALUES (100, 1040);
INSERT INTO `sys_role_menu` VALUES (100, 1041);
INSERT INTO `sys_role_menu` VALUES (100, 1042);
INSERT INTO `sys_role_menu` VALUES (100, 1043);
INSERT INTO `sys_role_menu` VALUES (100, 1044);
INSERT INTO `sys_role_menu` VALUES (100, 1045);
INSERT INTO `sys_role_menu` VALUES (100, 1046);
INSERT INTO `sys_role_menu` VALUES (100, 1047);
INSERT INTO `sys_role_menu` VALUES (100, 1048);
INSERT INTO `sys_role_menu` VALUES (100, 2037);
INSERT INTO `sys_role_menu` VALUES (100, 2038);
INSERT INTO `sys_role_menu` VALUES (100, 2039);
INSERT INTO `sys_role_menu` VALUES (100, 2040);
INSERT INTO `sys_role_menu` VALUES (100, 2041);
INSERT INTO `sys_role_menu` VALUES (100, 2042);
INSERT INTO `sys_role_menu` VALUES (100, 2043);
INSERT INTO `sys_role_menu` VALUES (100, 2044);
INSERT INTO `sys_role_menu` VALUES (100, 2045);
INSERT INTO `sys_role_menu` VALUES (100, 2046);
INSERT INTO `sys_role_menu` VALUES (100, 2047);
INSERT INTO `sys_role_menu` VALUES (100, 2048);
INSERT INTO `sys_role_menu` VALUES (100, 2049);
INSERT INTO `sys_role_menu` VALUES (100, 2050);
INSERT INTO `sys_role_menu` VALUES (100, 2051);
INSERT INTO `sys_role_menu` VALUES (100, 2052);
INSERT INTO `sys_role_menu` VALUES (100, 2053);
INSERT INTO `sys_role_menu` VALUES (100, 2054);
INSERT INTO `sys_role_menu` VALUES (100, 2055);
INSERT INTO `sys_role_menu` VALUES (100, 2056);
INSERT INTO `sys_role_menu` VALUES (100, 2057);
INSERT INTO `sys_role_menu` VALUES (100, 2058);
INSERT INTO `sys_role_menu` VALUES (100, 2059);
INSERT INTO `sys_role_menu` VALUES (100, 2060);
INSERT INTO `sys_role_menu` VALUES (100, 2061);
INSERT INTO `sys_role_menu` VALUES (100, 2062);
INSERT INTO `sys_role_menu` VALUES (100, 2063);
INSERT INTO `sys_role_menu` VALUES (100, 2064);
INSERT INTO `sys_role_menu` VALUES (100, 2065);
INSERT INTO `sys_role_menu` VALUES (100, 2066);
INSERT INTO `sys_role_menu` VALUES (100, 2067);
INSERT INTO `sys_role_menu` VALUES (100, 2068);
INSERT INTO `sys_role_menu` VALUES (101, 1);
INSERT INTO `sys_role_menu` VALUES (101, 100);
INSERT INTO `sys_role_menu` VALUES (101, 1001);
INSERT INTO `sys_role_menu` VALUES (101, 1002);
INSERT INTO `sys_role_menu` VALUES (101, 1003);
INSERT INTO `sys_role_menu` VALUES (101, 1004);
INSERT INTO `sys_role_menu` VALUES (101, 1005);
INSERT INTO `sys_role_menu` VALUES (101, 1006);
INSERT INTO `sys_role_menu` VALUES (101, 1007);
INSERT INTO `sys_role_menu` VALUES (101, 2037);
INSERT INTO `sys_role_menu` VALUES (101, 2038);
INSERT INTO `sys_role_menu` VALUES (101, 2039);
INSERT INTO `sys_role_menu` VALUES (101, 2040);
INSERT INTO `sys_role_menu` VALUES (101, 2041);
INSERT INTO `sys_role_menu` VALUES (101, 2042);
INSERT INTO `sys_role_menu` VALUES (101, 2043);
INSERT INTO `sys_role_menu` VALUES (101, 2044);
INSERT INTO `sys_role_menu` VALUES (101, 2045);
INSERT INTO `sys_role_menu` VALUES (101, 2046);
INSERT INTO `sys_role_menu` VALUES (101, 2047);
INSERT INTO `sys_role_menu` VALUES (101, 2048);
INSERT INTO `sys_role_menu` VALUES (101, 2049);
INSERT INTO `sys_role_menu` VALUES (101, 2050);
INSERT INTO `sys_role_menu` VALUES (101, 2051);
INSERT INTO `sys_role_menu` VALUES (101, 2052);
INSERT INTO `sys_role_menu` VALUES (101, 2053);
INSERT INTO `sys_role_menu` VALUES (101, 2054);
INSERT INTO `sys_role_menu` VALUES (101, 2055);
INSERT INTO `sys_role_menu` VALUES (101, 2056);
INSERT INTO `sys_role_menu` VALUES (101, 2057);
INSERT INTO `sys_role_menu` VALUES (101, 2058);
INSERT INTO `sys_role_menu` VALUES (101, 2059);
INSERT INTO `sys_role_menu` VALUES (101, 2060);
INSERT INTO `sys_role_menu` VALUES (101, 2061);
INSERT INTO `sys_role_menu` VALUES (101, 2062);
INSERT INTO `sys_role_menu` VALUES (101, 2063);
INSERT INTO `sys_role_menu` VALUES (101, 2064);
INSERT INTO `sys_role_menu` VALUES (101, 2065);
INSERT INTO `sys_role_menu` VALUES (101, 2066);
INSERT INTO `sys_role_menu` VALUES (101, 2067);
INSERT INTO `sys_role_menu` VALUES (101, 2068);
INSERT INTO `sys_role_menu` VALUES (102, 2037);
INSERT INTO `sys_role_menu` VALUES (102, 2038);
INSERT INTO `sys_role_menu` VALUES (102, 2039);
INSERT INTO `sys_role_menu` VALUES (102, 2040);
INSERT INTO `sys_role_menu` VALUES (102, 2041);
INSERT INTO `sys_role_menu` VALUES (102, 2042);
INSERT INTO `sys_role_menu` VALUES (102, 2043);
INSERT INTO `sys_role_menu` VALUES (102, 2044);
INSERT INTO `sys_role_menu` VALUES (102, 2045);
INSERT INTO `sys_role_menu` VALUES (102, 2046);
INSERT INTO `sys_role_menu` VALUES (102, 2047);
INSERT INTO `sys_role_menu` VALUES (102, 2048);
INSERT INTO `sys_role_menu` VALUES (102, 2049);
INSERT INTO `sys_role_menu` VALUES (102, 2056);
INSERT INTO `sys_role_menu` VALUES (102, 2057);
INSERT INTO `sys_role_menu` VALUES (102, 2058);
INSERT INTO `sys_role_menu` VALUES (102, 2059);
INSERT INTO `sys_role_menu` VALUES (102, 2060);
INSERT INTO `sys_role_menu` VALUES (102, 2061);
INSERT INTO `sys_role_menu` VALUES (102, 2062);
INSERT INTO `sys_role_menu` VALUES (102, 2063);
INSERT INTO `sys_role_menu` VALUES (102, 2064);
INSERT INTO `sys_role_menu` VALUES (102, 2065);
INSERT INTO `sys_role_menu` VALUES (102, 2066);
INSERT INTO `sys_role_menu` VALUES (102, 2067);
INSERT INTO `sys_role_menu` VALUES (102, 2068);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2022-04-12 13:52:56', 'admin', '2022-04-01 14:03:32', '', '2022-04-12 13:52:55', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2022-04-08 11:33:24', 'admin', '2022-04-01 14:03:32', '', '2022-04-08 11:33:24', '测试员');
INSERT INTO `sys_user` VALUES (100, 200, 'lzy', '李正洋', '00', '1361773012@qq.com', '18282889252', '0', '', '$2a$10$15LtWiYOFpQIcuxJbYWfo.nKxiE/4PLlJUgcSV8q4RmaacjUTowuu', '0', '2', '127.0.0.1', '2022-04-08 12:44:42', 'admin', '2022-04-08 12:44:04', 'admin', '2022-04-08 12:46:57', '没备注');
INSERT INTO `sys_user` VALUES (101, 205, 'sc', '李正洋', '00', '1366666666@qq.com', '18288888888', '0', '', '$2a$10$CfuAnnESByggmvhjksOjj.V81hzFPTeWhYdlO6PQQo5vxWkiz/V36', '0', '0', '127.0.0.1', '2022-04-12 13:53:11', 'admin', '2022-04-08 13:00:29', 'admin', '2022-04-12 13:53:11', NULL);
INSERT INTO `sys_user` VALUES (102, 208, 'dl', '李正洋', '00', '1361111111@qq.com', '18288888881', '0', '', '$2a$10$sCHNZLi24yPzg5doNS2WfuY6ew2922fu.JuCkw9y/CRMvPr3RyLei', '0', '0', '127.0.0.1', '2022-04-12 13:53:57', 'admin', '2022-04-08 13:01:58', 'admin', '2022-04-12 13:53:57', NULL);
INSERT INTO `sys_user` VALUES (103, 209, 'yh', '李正洋', '00', '1362222222@qq.com', '18288888882', '0', '', '$2a$10$KaCf/gZ1FD7ajkTNA7Oz2OvqyzKYeFhUE2Og.L715hLpCkP2p69hq', '0', '0', '127.0.0.1', '2022-04-12 14:42:35', 'admin', '2022-04-08 13:03:06', 'admin', '2022-04-12 14:42:34', NULL);
INSERT INTO `sys_user` VALUES (104, 205, 'sc1', '李正洋_生产', '00', '1361773011@qq.com', '18282889254', '0', '/profile/avatar/2022/04/12/blob_20220412115345A001.jpeg', '$2a$10$Hb4BNBBX4JVIjq9woFXPluH.HK0CHFzYTQJAcj02896OlgaT9HQ4a', '0', '0', '127.0.0.1', '2022-04-12 12:26:33', 'admin', '2022-04-08 18:10:32', '', '2022-04-12 12:26:32', NULL);
INSERT INTO `sys_user` VALUES (105, 208, 'dl2', '李正洋_代理', '00', '', '', '0', '', '$2a$10$XozA512o.B0rPs92Wcr/MOV1OHg3FFgKQhCvmdkvqHEhD.WXlv596', '0', '0', '127.0.0.1', '2022-04-12 13:48:31', 'admin', '2022-04-08 18:10:59', '', '2022-04-12 13:48:31', NULL);
INSERT INTO `sys_user` VALUES (106, 209, 'yh2', '李正洋_用户', '00', '', '', '0', '', '$2a$10$kpxLrr5rLDRNBqm19Y0vH.SxQ4vhFD3MRTwKcVcoCI29W0I5Tcida', '0', '0', '127.0.0.1', '2022-04-12 13:50:21', 'admin', '2022-04-08 18:11:22', '', '2022-04-12 13:50:21', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);
INSERT INTO `sys_user_post` VALUES (101, 1);
INSERT INTO `sys_user_post` VALUES (101, 2);
INSERT INTO `sys_user_post` VALUES (101, 3);
INSERT INTO `sys_user_post` VALUES (101, 4);
INSERT INTO `sys_user_post` VALUES (102, 1);
INSERT INTO `sys_user_post` VALUES (102, 2);
INSERT INTO `sys_user_post` VALUES (102, 3);
INSERT INTO `sys_user_post` VALUES (102, 4);
INSERT INTO `sys_user_post` VALUES (103, 1);
INSERT INTO `sys_user_post` VALUES (103, 2);
INSERT INTO `sys_user_post` VALUES (103, 3);
INSERT INTO `sys_user_post` VALUES (103, 4);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (101, 100);
INSERT INTO `sys_user_role` VALUES (102, 101);
INSERT INTO `sys_user_role` VALUES (103, 102);
INSERT INTO `sys_user_role` VALUES (104, 100);
INSERT INTO `sys_user_role` VALUES (105, 101);
INSERT INTO `sys_user_role` VALUES (106, 102);

SET FOREIGN_KEY_CHECKS = 1;

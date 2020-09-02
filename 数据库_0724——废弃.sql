/*
SQLyog Ultimate v11.13 (64 bit)
MySQL - 8.0.17 : Database - ry
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ry` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ry`;

/*Table structure for table `gen_table` */

DROP TABLE IF EXISTS `gen_table`;

CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';

/*Data for the table `gen_table` */

insert  into `gen_table`(`table_id`,`table_name`,`table_comment`,`sub_table_name`,`sub_table_fk_name`,`class_name`,`tpl_category`,`package_name`,`module_name`,`business_name`,`function_name`,`function_author`,`gen_type`,`gen_path`,`options`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (21,'student','Student',NULL,NULL,'Student','crud','com.Felix.system','system','student','StudentInfo','Felix','0','/','{\"parentMenuId\":\"1\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"System Management\",\"treeCode\":\"\"}','admin','2020-07-24 10:02:33','','2020-07-24 10:03:33',''),(22,'postinfo','Post Information',NULL,NULL,'Postinfo','crud','com.Felix.system','system','postinfo','Post Information','Felix','0','/','{\"parentMenuId\":\"1\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"System Management\",\"treeCode\":\"\"}','admin','2020-07-24 10:10:46','','2020-07-24 10:11:23','');

/*Table structure for table `gen_table_column` */

DROP TABLE IF EXISTS `gen_table_column`;

CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';

/*Data for the table `gen_table_column` */

insert  into `gen_table_column`(`column_id`,`table_id`,`column_name`,`column_comment`,`column_type`,`java_type`,`java_field`,`is_pk`,`is_increment`,`is_required`,`is_insert`,`is_edit`,`is_list`,`is_query`,`query_type`,`html_type`,`dict_type`,`sort`,`create_by`,`create_time`,`update_by`,`update_time`) values (134,'21','id','id','int(11)','Long','id','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2020-07-24 10:02:34',NULL,'2020-07-24 10:03:33'),(135,'21','name','name','varchar(255)','String','name','0','0',NULL,'1','1','1','1','LIKE','input','',2,'admin','2020-07-24 10:02:34',NULL,'2020-07-24 10:03:33'),(136,'21','age','age','int(3)','Integer','age','0','0',NULL,'1','1','1','1','EQ','input','',3,'admin','2020-07-24 10:02:34',NULL,'2020-07-24 10:03:33'),(137,'21','score','score','varchar(255)','String','score','0','0',NULL,'1','1','1','1','EQ','input','',4,'admin','2020-07-24 10:02:34',NULL,'2020-07-24 10:03:33'),(138,'21','subject','subject','varchar(255)','String','subject','0','0',NULL,'1','1','1','1','EQ','input','',5,'admin','2020-07-24 10:02:34',NULL,'2020-07-24 10:03:33'),(139,'22','id','id','int(11)','Long','id','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2020-07-24 10:10:46',NULL,'2020-07-24 10:11:23'),(140,'22','name','name','varchar(255)','String','name','0','0',NULL,'1','1','1','1','LIKE','input','',2,'admin','2020-07-24 10:10:46',NULL,'2020-07-24 10:11:23'),(141,'22','code','code','int(3)','Integer','code','0','0',NULL,'1','1','1','1','EQ','input','',3,'admin','2020-07-24 10:10:47',NULL,'2020-07-24 10:11:23');

/*Table structure for table `postinfo` */

DROP TABLE IF EXISTS `postinfo`;

CREATE TABLE `postinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `postinfo` */

/*Table structure for table `qrtz_blob_triggers` */

DROP TABLE IF EXISTS `qrtz_blob_triggers`;

CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qrtz_blob_triggers` */

/*Table structure for table `qrtz_calendars` */

DROP TABLE IF EXISTS `qrtz_calendars`;

CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qrtz_calendars` */

/*Table structure for table `qrtz_cron_triggers` */

DROP TABLE IF EXISTS `qrtz_cron_triggers`;

CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qrtz_cron_triggers` */

insert  into `qrtz_cron_triggers`(`sched_name`,`trigger_name`,`trigger_group`,`cron_expression`,`time_zone_id`) values ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT','0/10 * * * * ?','Asia/Shanghai'),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT','0/15 * * * * ?','Asia/Shanghai'),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT','0/20 * * * * ?','Asia/Shanghai');

/*Table structure for table `qrtz_fired_triggers` */

DROP TABLE IF EXISTS `qrtz_fired_triggers`;

CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qrtz_fired_triggers` */

/*Table structure for table `qrtz_job_details` */

DROP TABLE IF EXISTS `qrtz_job_details`;

CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qrtz_job_details` */

insert  into `qrtz_job_details`(`sched_name`,`job_name`,`job_group`,`description`,`job_class_name`,`is_durable`,`is_nonconcurrent`,`is_update_data`,`requests_recovery`,`job_data`) values ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0','��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.ruoyi.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,�)�xpt\0\0pppt\01t\00/10 * * * * ?t\0ryTask.ryNoParamst\0DEFAULTsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0系统默认（无参）t\03t\01x\0'),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0','��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.ruoyi.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,�)�xpt\0\0pppt\01t\00/15 * * * * ?t\0ryTask.ryParams(\'ry\')t\0DEFAULTsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0系统默认（有参）t\03t\01x\0'),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0','��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.ruoyi.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,�)�xpt\0\0pppt\01t\00/20 * * * * ?t\08ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)t\0DEFAULTsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0系统默认（多参）t\03t\01x\0');

/*Table structure for table `qrtz_locks` */

DROP TABLE IF EXISTS `qrtz_locks`;

CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qrtz_locks` */

insert  into `qrtz_locks`(`sched_name`,`lock_name`) values ('RuoyiScheduler','STATE_ACCESS'),('RuoyiScheduler','TRIGGER_ACCESS');

/*Table structure for table `qrtz_paused_trigger_grps` */

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;

CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qrtz_paused_trigger_grps` */

/*Table structure for table `qrtz_scheduler_state` */

DROP TABLE IF EXISTS `qrtz_scheduler_state`;

CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qrtz_scheduler_state` */

insert  into `qrtz_scheduler_state`(`sched_name`,`instance_name`,`last_checkin_time`,`checkin_interval`) values ('RuoyiScheduler','PC-20170508QOOG1594778259403',1594797153424,15000);

/*Table structure for table `qrtz_simple_triggers` */

DROP TABLE IF EXISTS `qrtz_simple_triggers`;

CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qrtz_simple_triggers` */

/*Table structure for table `qrtz_simprop_triggers` */

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;

CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qrtz_simprop_triggers` */

/*Table structure for table `qrtz_triggers` */

DROP TABLE IF EXISTS `qrtz_triggers`;

CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(13) DEFAULT NULL,
  `prev_fire_time` bigint(13) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(2) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qrtz_triggers` */

insert  into `qrtz_triggers`(`sched_name`,`trigger_name`,`trigger_group`,`job_name`,`job_group`,`description`,`next_fire_time`,`prev_fire_time`,`priority`,`trigger_state`,`trigger_type`,`start_time`,`end_time`,`calendar_name`,`misfire_instr`,`job_data`) values ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT','TASK_CLASS_NAME1','DEFAULT',NULL,1594778260000,-1,5,'PAUSED','CRON',1594778259000,0,NULL,2,''),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT','TASK_CLASS_NAME2','DEFAULT',NULL,1594778265000,-1,5,'PAUSED','CRON',1594778259000,0,NULL,2,''),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT','TASK_CLASS_NAME3','DEFAULT',NULL,1594778260000,-1,5,'PAUSED','CRON',1594778260000,0,NULL,2,'');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`id`,`name`,`age`,`score`,`subject`) values (5,'Alix',25,'124','Math');

/*Table structure for table `sys_config` */

DROP TABLE IF EXISTS `sys_config`;

CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

/*Data for the table `sys_config` */

insert  into `sys_config`(`config_id`,`config_name`,`config_key`,`config_value`,`config_type`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','初始化密码 123456'),(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue'),(4,'账号自助-是否开启用户注册功能','sys.account.registerUser','false','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','是否开启注册用户功能');

/*Table structure for table `sys_dept` */

DROP TABLE IF EXISTS `sys_dept`;

CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8 COMMENT='部门表';

/*Data for the table `sys_dept` */

insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values (100,0,'0','Felix Company',0,'Felix','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','admin','2020-07-15 12:00:03'),(101,100,'0,100','Num 1',1,'','','','0','0','admin','2018-03-16 11:33:00','admin','2020-07-15 12:00:03'),(103,101,'0,100,101','Development Dept',1,'','','','0','0','admin','2018-03-16 11:33:00','admin','2020-07-15 11:59:56'),(105,101,'0,100,101','Test Dept',3,'','','','0','0','admin','2018-03-16 11:33:00','admin','2020-07-15 12:00:03'),(202,101,'0,100,101','Film and Television Dept',3,NULL,NULL,NULL,'0','0','admin','2020-07-15 15:03:28','',NULL);

/*Table structure for table `sys_dict_data` */

DROP TABLE IF EXISTS `sys_dict_data`;

CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

/*Data for the table `sys_dict_data` */

insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,1,'男','0','sys_user_sex','','','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别男'),(2,2,'女','1','sys_user_sex','','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别女'),(3,3,'未知','2','sys_user_sex','','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别未知'),(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','显示菜单'),(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','隐藏菜单'),(6,1,'Normal','0','sys_normal_disable','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','Normal Status'),(7,2,'Deactive','1','sys_normal_disable','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','Inactive status'),(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态'),(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','默认分组'),(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统分组'),(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统默认是'),(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统默认否'),(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知'),(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','公告'),(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','关闭状态'),(18,99,'其他','0','sys_oper_type','','info','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','其他操作'),(19,1,'新增','1','sys_oper_type','','info','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','新增操作'),(20,2,'修改','2','sys_oper_type','','info','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','修改操作'),(21,3,'删除','3','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','删除操作'),(22,4,'授权','4','sys_oper_type','','primary','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','授权操作'),(23,5,'导出','5','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','导出操作'),(24,6,'导入','6','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','导入操作'),(25,7,'强退','7','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','强退操作'),(26,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','生成操作'),(27,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','清空操作'),(28,1,'成功','0','sys_common_status','','primary','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(29,2,'失败','1','sys_common_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态');

/*Table structure for table `sys_dict_type` */

DROP TABLE IF EXISTS `sys_dict_type`;

CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

/*Data for the table `sys_dict_type` */

insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'用户性别','sys_user_sex','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','用户性别列表'),(2,'菜单状态','sys_show_hide','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','菜单状态列表'),(3,'系统开关','sys_normal_disable','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统开关列表'),(4,'任务状态','sys_job_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','任务状态列表'),(5,'任务分组','sys_job_group','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','任务分组列表'),(6,'系统是否','sys_yes_no','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统是否列表'),(7,'通知类型','sys_notice_type','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知类型列表'),(8,'通知状态','sys_notice_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知状态列表'),(9,'操作类型','sys_oper_type','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','操作类型列表'),(10,'系统状态','sys_common_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','登录状态列表');

/*Table structure for table `sys_job` */

DROP TABLE IF EXISTS `sys_job`;

CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

/*Data for the table `sys_job` */

insert  into `sys_job`(`job_id`,`job_name`,`job_group`,`invoke_target`,`cron_expression`,`misfire_policy`,`concurrent`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');

/*Table structure for table `sys_job_log` */

DROP TABLE IF EXISTS `sys_job_log`;

CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

/*Data for the table `sys_job_log` */

/*Table structure for table `sys_logininfor` */

DROP TABLE IF EXISTS `sys_logininfor`;

CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=259 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

/*Data for the table `sys_logininfor` */

insert  into `sys_logininfor`(`info_id`,`login_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (100,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-14 10:11:10'),(101,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-14 11:10:57'),(102,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-14 11:39:39'),(103,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-14 11:46:04'),(104,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-14 11:46:41'),(105,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-14 11:46:53'),(106,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-14 11:47:02'),(107,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-14 11:47:23'),(108,'admin','127.0.0.1','内网IP','Chrome','Windows 7','1','密码输入错误1次','2020-07-14 11:47:28'),(109,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-14 11:49:09'),(110,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-14 11:52:14'),(111,'ry','127.0.0.1','内网IP','Chrome','Windows 7','1','密码输入错误1次','2020-07-14 11:52:21'),(112,'ry','127.0.0.1','内网IP','Chrome','Windows 7','1','验证码错误','2020-07-14 11:52:29'),(113,'ry','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-14 11:52:33'),(114,'ry','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-14 11:53:07'),(115,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-14 11:53:15'),(116,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-14 11:55:50'),(117,'sys','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-14 11:55:59'),(118,'sys','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-14 11:56:10'),(119,'admin','127.0.0.1','内网IP','Chrome','Windows 7','1','验证码错误','2020-07-14 11:56:14'),(120,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-14 11:56:17'),(121,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-14 11:56:43'),(122,'sys','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-14 11:56:52'),(123,'sys','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-14 11:57:14'),(124,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-14 11:57:18'),(125,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-14 11:57:54'),(126,'sys','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-14 11:58:00'),(127,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-14 11:59:15'),(128,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-14 11:59:18'),(129,'sys','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-14 11:59:30'),(130,'sys','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-14 12:00:28'),(131,'admin','127.0.0.1','内网IP','Chrome','Windows 7','1','验证码错误','2020-07-14 12:00:33'),(132,'admin','127.0.0.1','内网IP','Chrome','Windows 7','1','验证码错误','2020-07-14 12:00:36'),(133,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-14 12:00:39'),(134,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-14 12:00:42'),(135,'sys','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-14 12:00:50'),(136,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-14 13:39:08'),(137,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-14 13:39:11'),(138,'sys','127.0.0.1','内网IP','Chrome','Windows 7','1','密码输入错误1次','2020-07-14 13:39:18'),(139,'sys','127.0.0.1','内网IP','Chrome','Windows 7','1','密码输入错误2次','2020-07-14 13:39:22'),(140,'sys','127.0.0.1','内网IP','Chrome','Windows 7','1','密码输入错误3次','2020-07-14 13:39:28'),(141,'sys','127.0.0.1','内网IP','Chrome','Windows 7','1','密码输入错误4次','2020-07-14 13:39:30'),(142,'sys','127.0.0.1','内网IP','Chrome','Windows 7','1','密码输入错误5次','2020-07-14 13:39:33'),(143,'sys','127.0.0.1','内网IP','Chrome','Windows 7','1','密码输入错误5次，帐户锁定10分钟','2020-07-14 13:39:46'),(144,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 09:14:54'),(145,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-15 09:14:59'),(146,'sys','127.0.0.1','内网IP','Chrome','Windows 7','1','验证码错误','2020-07-15 09:15:06'),(147,'sys','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 09:15:10'),(148,'sys','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-15 09:16:26'),(149,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 09:16:31'),(150,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 09:56:06'),(151,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 10:53:51'),(152,'admin','127.0.0.1','内网IP','Chrome','Windows 7','1','验证码错误','2020-07-15 11:36:18'),(153,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 11:36:21'),(154,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-15 12:03:17'),(155,'admin','127.0.0.1','内网IP','Chrome','Windows 7','1','验证码错误','2020-07-15 13:06:36'),(156,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 13:06:40'),(157,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-15 13:54:15'),(158,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 13:57:56'),(159,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-15 13:59:55'),(160,'ceshi','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 14:00:02'),(161,'ceshi','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-15 14:18:12'),(162,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 14:18:17'),(163,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-15 14:21:53'),(164,'ceshi','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 14:21:59'),(165,'ceshi','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-15 14:22:11'),(166,'admin','127.0.0.1','内网IP','Chrome','Windows 7','1','验证码错误','2020-07-15 14:22:15'),(167,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 14:22:17'),(168,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-15 14:22:56'),(169,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 14:23:26'),(170,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-15 14:26:05'),(171,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 14:26:09'),(172,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-15 14:26:39'),(173,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 14:26:54'),(174,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-15 14:31:24'),(175,'ceshi_houqin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 14:31:32'),(176,'ceshi_houqin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-15 14:31:49'),(177,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 14:31:55'),(178,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-15 14:32:50'),(179,'ceshi_houqin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 14:32:57'),(180,'ceshi_houqin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-15 14:34:03'),(181,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 14:34:06'),(182,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-15 14:35:54'),(183,'ceshi_houqin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 14:36:00'),(184,'ceshi_houqin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-15 14:36:08'),(185,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 14:36:12'),(186,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-15 14:37:03'),(187,'ceshi','127.0.0.1','内网IP','Chrome','Windows 7','1','对不起，您的账号已被删除','2020-07-15 14:37:10'),(188,'ceshi_houqin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 14:37:22'),(189,'ceshi_houqin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-15 14:37:31'),(190,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 14:37:37'),(191,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-15 14:40:37'),(192,'ceshi_houqin','127.0.0.1','内网IP','Chrome','Windows 7','1','验证码错误','2020-07-15 14:40:44'),(193,'ceshi_houqin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 14:40:46'),(194,'ceshi_houqin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-15 14:40:49'),(195,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 14:40:51'),(196,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-15 14:44:27'),(197,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 14:44:46'),(198,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-15 14:48:54'),(199,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 14:49:07'),(200,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-15 14:53:22'),(201,'ysadmin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 14:53:28'),(202,'ysadmin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-15 14:59:08'),(203,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 14:59:12'),(204,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-15 15:00:11'),(205,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 15:00:39'),(206,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-15 15:04:13'),(207,'ysadmin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 15:04:21'),(208,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 15:11:25'),(209,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 15:13:07'),(210,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-15 15:13:17'),(211,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 15:13:21'),(212,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 16:18:39'),(213,'ry','220.178.0.62','XX XX','Chrome','Windows 7','0','登录成功','2020-07-15 16:30:52'),(214,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-15 17:04:15'),(215,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-16 09:06:49'),(216,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2020-07-16 09:33:09'),(217,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-16 09:33:12'),(218,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-16 10:06:22'),(219,'admin','5.151.38.32','XX XX','Chrome 8','Windows 8.1','0','登录成功','2020-07-16 16:09:42'),(220,'111111','5.151.38.32','XX XX','Chrome 8','Windows 8.1','1','用户不存在/密码错误','2020-07-16 16:09:42'),(221,'admin','5.151.38.32','XX XX','Chrome 8','Windows 8.1','1','验证码错误','2020-07-16 16:09:42'),(222,'admin','220.178.0.62','XX XX','Chrome','Windows 7','0','登录成功','2020-07-16 16:14:06'),(223,'admin','112.32.66.73','XX XX','Chrome','Windows 10','0','登录成功','2020-07-16 20:16:56'),(224,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2020-07-16 20:39:13'),(225,'admin','220.178.0.62','XX XX','Chrome','Windows 7','0','登录成功','2020-07-17 16:58:46'),(226,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-18 10:15:15'),(227,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-18 10:56:53'),(228,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-18 10:58:49'),(229,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-18 10:59:57'),(230,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2020-07-19 20:48:06'),(231,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2020-07-19 20:48:06'),(232,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2020-07-19 20:48:13'),(233,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2020-07-19 20:53:00'),(234,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2020-07-19 20:54:28'),(235,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2020-07-19 20:54:32'),(236,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2020-07-19 20:54:37'),(237,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2020-07-19 20:55:56'),(238,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2020-07-19 20:56:00'),(239,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2020-07-19 20:58:38'),(240,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2020-07-19 21:04:13'),(241,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2020-07-19 21:07:46'),(242,'1111','127.0.0.1','内网IP','Chrome','Windows 10','1','用户不存在/密码错误','2020-07-19 21:10:18'),(243,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','captcha error','2020-07-19 21:21:22'),(244,'1111','127.0.0.1','内网IP','Chrome','Windows 10','1','captcha error','2020-07-19 21:21:31'),(245,'1111','127.0.0.1','内网IP','Chrome','Windows 10','1','User does not exist / password error','2020-07-19 21:21:36'),(246,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2020-07-19 21:21:44'),(247,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2020-07-20 20:30:29'),(248,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2020-07-20 21:06:18'),(249,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2020-07-20 21:07:00'),(250,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2020-07-20 21:13:21'),(251,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2020-07-20 21:16:49'),(252,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2020-07-20 21:19:11'),(253,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2020-07-20 21:20:00'),(254,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','Exit succeeded','2020-07-20 21:59:09'),(255,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2020-07-20 22:01:42'),(256,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2020-07-22 20:23:18'),(257,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-23 09:08:11'),(258,'admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2020-07-23 10:08:11');

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2060 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`url`,`target`,`menu_type`,`visible`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'System Management',0,1,'#','','M','0','','fa fa-gear','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统管理目录'),(2,'系统监控',0,2,'#','menuItem','M','1','','fa fa-video-camera','admin','2018-03-16 11:33:00','admin','2020-07-15 09:26:07','系统监控目录'),(3,'System Tool',0,3,'#','','M','0','','fa fa-bars','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统工具目录'),(4,'若依官网',0,4,'http://ruoyi.vip','menuBlank','C','1','','fa fa-location-arrow','admin','2018-03-16 11:33:00','admin','2020-07-15 09:16:54','若依官网地址'),(100,'User Management',1,1,'/system/user','','C','0','system:user:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','用户管理菜单'),(101,'Role Management',1,2,'/system/role','menuItem','C','1','system:role:view','#','admin','2018-03-16 11:33:00','admin','2020-07-15 09:26:25','角色管理菜单'),(102,'菜单管理',1,3,'/system/menu','menuItem','C','1','system:menu:view','#','admin','2018-03-16 11:33:00','admin','2020-07-15 09:27:16','菜单管理菜单'),(103,'Dept Management',1,4,'/system/dept','','C','1','system:dept:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','部门管理菜单'),(105,'字典管理',1,6,'/system/dict','menuItem','C','1','system:dict:view','#','admin','2018-03-16 11:33:00','admin','2020-07-15 09:26:52','字典管理菜单'),(106,'参数设置',1,7,'/system/config','menuItem','C','1','system:config:view','#','admin','2018-03-16 11:33:00','admin','2020-07-15 09:26:44','参数设置菜单'),(108,'日志管理',1,9,'#','menuItem','M','1','','#','admin','2018-03-16 11:33:00','admin','2020-07-15 09:26:31','日志管理菜单'),(109,'在线用户',2,1,'/monitor/online','','C','1','monitor:online:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','在线用户菜单'),(110,'定时任务',2,2,'/monitor/job','','C','1','monitor:job:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','定时任务菜单'),(111,'数据监控',2,3,'/monitor/data','','C','1','monitor:data:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','数据监控菜单'),(112,'服务监控',2,3,'/monitor/server','','C','1','monitor:server:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','服务监控菜单'),(113,'Form Construction',3,1,'/tool/build','menuItem','C','0','tool:build:view','#','admin','2018-03-16 11:33:00','admin','2020-07-15 09:25:39','表单构建菜单'),(114,'code generation',3,2,'/tool/gen','','C','0','tool:gen:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','代码生成菜单'),(115,'系统接口',3,3,'/tool/swagger','menuItem','C','1','tool:swagger:view','#','admin','2018-03-16 11:33:00','admin','2020-07-15 09:25:54','系统接口菜单'),(500,'操作日志',108,1,'/monitor/operlog','','C','1','monitor:operlog:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','操作日志菜单'),(501,'登录日志',108,2,'/monitor/logininfor','','C','1','monitor:logininfor:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','登录日志菜单'),(1000,'用户查询',100,1,'#','','F','0','system:user:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1001,'用户新增',100,2,'#','','F','0','system:user:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1002,'用户修改',100,3,'#','','F','0','system:user:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1003,'用户删除',100,4,'#','','F','0','system:user:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1004,'用户导出',100,5,'#','','F','0','system:user:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1005,'用户导入',100,6,'#','','F','0','system:user:import','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1006,'重置密码',100,7,'#','','F','0','system:user:resetPwd','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1007,'角色查询',101,1,'#','','F','1','system:role:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1008,'角色新增',101,2,'#','','F','1','system:role:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1009,'角色修改',101,3,'#','','F','1','system:role:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1010,'角色删除',101,4,'#','','F','1','system:role:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1011,'角色导出',101,5,'#','','F','1','system:role:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1012,'菜单查询',102,1,'#','','F','1','system:menu:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1013,'菜单新增',102,2,'#','','F','1','system:menu:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1014,'菜单修改',102,3,'#','','F','1','system:menu:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1015,'菜单删除',102,4,'#','','F','1','system:menu:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1016,'部门查询',103,1,'#','','F','1','system:dept:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1017,'部门新增',103,2,'#','','F','1','system:dept:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1018,'部门修改',103,3,'#','','F','1','system:dept:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1019,'部门删除',103,4,'#','','F','1','system:dept:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1025,'字典查询',105,1,'#','','F','1','system:dict:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1026,'字典新增',105,2,'#','','F','1','system:dict:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1027,'字典修改',105,3,'#','','F','1','system:dict:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1028,'字典删除',105,4,'#','','F','1','system:dict:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1029,'字典导出',105,5,'#','','F','1','system:dict:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1030,'参数查询',106,1,'#','','F','1','system:config:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1031,'参数新增',106,2,'#','','F','1','system:config:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1032,'参数修改',106,3,'#','','F','1','system:config:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1033,'参数删除',106,4,'#','','F','1','system:config:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1034,'参数导出',106,5,'#','','F','1','system:config:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1039,'操作查询',500,1,'#','','F','1','monitor:operlog:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1040,'操作删除',500,2,'#','','F','1','monitor:operlog:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1041,'详细信息',500,3,'#','','F','1','monitor:operlog:detail','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1042,'日志导出',500,4,'#','','F','1','monitor:operlog:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1043,'登录查询',501,1,'#','','F','1','monitor:logininfor:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1044,'登录删除',501,2,'#','','F','1','monitor:logininfor:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1045,'日志导出',501,3,'#','','F','1','monitor:logininfor:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1046,'账户解锁',501,4,'#','','F','1','monitor:logininfor:unlock','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1047,'在线查询',109,1,'#','','F','1','monitor:online:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1048,'批量强退',109,2,'#','','F','1','monitor:online:batchForceLogout','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1049,'单条强退',109,3,'#','','F','1','monitor:online:forceLogout','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1050,'任务查询',110,1,'#','','F','1','monitor:job:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1051,'任务新增',110,2,'#','','F','1','monitor:job:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1052,'任务修改',110,3,'#','','F','1','monitor:job:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1053,'任务删除',110,4,'#','','F','1','monitor:job:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1054,'状态修改',110,5,'#','','F','1','monitor:job:changeStatus','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1055,'任务详细',110,6,'#','','F','1','monitor:job:detail','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1056,'任务导出',110,7,'#','','F','1','monitor:job:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1057,'生成查询',114,1,'#','','F','0','tool:gen:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1058,'生成修改',114,2,'#','','F','0','tool:gen:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1059,'生成删除',114,3,'#','','F','0','tool:gen:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1060,'预览代码',114,4,'#','','F','0','tool:gen:preview','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1061,'生成代码',114,5,'#','','F','0','tool:gen:code','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(2048,'StudentInfo',1,1,'/system/student','','C','0','system:student:view','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00','StudentInfo菜单'),(2049,'StudentInfo查询',2048,1,'#','','F','0','system:student:list','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2050,'StudentInfo新增',2048,2,'#','','F','0','system:student:add','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2051,'StudentInfo修改',2048,3,'#','','F','0','system:student:edit','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2052,'StudentInfo删除',2048,4,'#','','F','0','system:student:remove','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2053,'StudentInfo导出',2048,5,'#','','F','0','system:student:export','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2054,'Post Information',1,1,'/system/postinfo','','C','0','system:postinfo:view','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00','Post Information菜单'),(2055,'Post Information查询',2054,1,'#','','F','0','system:postinfo:list','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2056,'Post Information新增',2054,2,'#','','F','0','system:postinfo:add','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2057,'Post Information修改',2054,3,'#','','F','0','system:postinfo:edit','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2058,'Post Information删除',2054,4,'#','','F','0','system:postinfo:remove','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2059,'Post Information导出',2054,5,'#','','F','0','system:postinfo:export','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00','');

/*Table structure for table `sys_notice` */

DROP TABLE IF EXISTS `sys_notice`;

CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='通知公告表';

/*Data for the table `sys_notice` */

insert  into `sys_notice`(`notice_id`,`notice_title`,`notice_type`,`notice_content`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'温馨提醒：2018-07-01 若依新版本发布啦','2','新版本内容','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','管理员'),(2,'维护通知：2018-07-01 若依系统凌晨维护','1','维护内容','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','管理员');

/*Table structure for table `sys_oper_log` */

DROP TABLE IF EXISTS `sys_oper_log`;

CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

/*Data for the table `sys_oper_log` */

insert  into `sys_oper_log`(`oper_id`,`title`,`business_type`,`method`,`request_method`,`operator_type`,`oper_name`,`dept_name`,`oper_url`,`oper_ip`,`oper_location`,`oper_param`,`json_result`,`status`,`error_msg`,`oper_time`) values (100,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\r\n  \"tables\" : [ \"sys_notice\" ]\r\n}','null',1,'illegal identifier : \\pos 1, line 1, column 2{\\\"parentMenuId\\\":\\\"\\\",\\\"treeName\\\":\\\"\\\",\\\"treeParentCode\\\":\\\"\\\",\\\"parentMenuName\\\":\\\"\\\",\\\"treeCode\\\":\\\"\\\"}','2020-07-14 10:26:59'),(101,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\r\n  \"tables\" : [ \"sys_notice\" ]\r\n}','null',1,'','2020-07-14 10:27:46'),(102,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\r\n  \"tables\" : [ \"sys_notice\" ]\r\n}','null',0,NULL,'2020-07-14 10:40:54'),(103,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\r\n  \"tables\" : [ \"sys_test\" ]\r\n}','null',0,NULL,'2020-07-14 10:42:42'),(104,'角色管理',1,'com.ruoyi.web.controller.system.SysRoleController.addSave()','POST',1,'admin','研发部门','/system/role/add','127.0.0.1','内网IP','{\r\n  \"roleName\" : [ \"sys\" ],\r\n  \"roleKey\" : [ \"sys\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"普通管理员\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,103,1016,1017,1018,1019,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,3,114,1057,1058,1059,1060,1061\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-14 11:45:15'),(105,'重置密码',2,'com.ruoyi.web.controller.system.SysProfileController.resetPwd()','POST',1,'admin','研发部门','/system/user/profile/resetPwd','127.0.0.1','内网IP','{\r\n  \"userId\" : [ \"1\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"oldPassword\" : [ \"admin123\" ],\r\n  \"newPassword\" : [ \"111111\" ],\r\n  \"confirm\" : [ \"111111\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-14 11:47:14'),(106,'重置密码',2,'com.ruoyi.web.controller.system.SysProfileController.resetPwd()','POST',1,'ry','测试部门','/system/user/profile/resetPwd','127.0.0.1','内网IP','{\r\n  \"userId\" : [ \"2\" ],\r\n  \"loginName\" : [ \"ry\" ],\r\n  \"oldPassword\" : [ \"admin123\" ],\r\n  \"newPassword\" : [ \"111111\" ],\r\n  \"confirm\" : [ \"111111\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-14 11:52:46'),(107,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.addSave()','POST',1,'admin','研发部门','/system/user/add','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"108\" ],\r\n  \"userName\" : [ \"普通管理员\" ],\r\n  \"deptName\" : [ \"市场部门\" ],\r\n  \"phonenumber\" : [ \"14755164307\" ],\r\n  \"email\" : [ \"978258922@qq.com\" ],\r\n  \"loginName\" : [ \"sys\" ],\r\n  \"password\" : [ \"123456\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ],\r\n  \"postIds\" : [ \"4\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-14 11:55:46'),(108,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.editSave()','POST',1,'admin','研发部门','/system/user/edit','127.0.0.1','内网IP','{\r\n  \"userId\" : [ \"100\" ],\r\n  \"deptId\" : [ \"108\" ],\r\n  \"userName\" : [ \"普通管理员\" ],\r\n  \"dept.deptName\" : [ \"市场部门\" ],\r\n  \"phonenumber\" : [ \"14755164307\" ],\r\n  \"email\" : [ \"978258922@qq.com\" ],\r\n  \"loginName\" : [ \"sys\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"100\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n  \"postIds\" : [ \"4\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-14 11:56:40'),(109,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"sys\" ],\r\n  \"roleKey\" : [ \"sys\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"普通管理员\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,103,1016,1017,1018,1019,3,114,1057,1058,1059,1060,1061\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-14 11:57:44'),(110,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"4\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"若依官网\" ],\r\n  \"url\" : [ \"http://ruoyi.vip\" ],\r\n  \"target\" : [ \"menuBlank\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"icon\" : [ \"fa fa-location-arrow\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 09:16:54'),(111,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"113\" ],\r\n  \"parentId\" : [ \"3\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"表单构建\" ],\r\n  \"url\" : [ \"/tool/build\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"tool:build:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 09:25:39'),(112,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"3\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"测试模块\" ],\r\n  \"url\" : [ \"/system/test\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:test:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 09:25:46'),(113,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"115\" ],\r\n  \"parentId\" : [ \"3\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"系统接口\" ],\r\n  \"url\" : [ \"/tool/swagger\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"tool:swagger:view\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 09:25:54'),(114,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统监控\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"fa fa-video-camera\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 09:26:07'),(115,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"101\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"角色管理\" ],\r\n  \"url\" : [ \"/system/role\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:role:view\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 09:26:25'),(116,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"108\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"日志管理\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"9\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 09:26:32'),(117,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"107\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"通知公告\" ],\r\n  \"url\" : [ \"/system/notice\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:notice:view\" ],\r\n  \"orderNum\" : [ \"8\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 09:26:38'),(118,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"106\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"参数设置\" ],\r\n  \"url\" : [ \"/system/config\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:config:view\" ],\r\n  \"orderNum\" : [ \"7\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 09:26:45'),(119,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"105\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"字典管理\" ],\r\n  \"url\" : [ \"/system/dict\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:dict:view\" ],\r\n  \"orderNum\" : [ \"6\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 09:26:52'),(120,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"104\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"岗位管理\" ],\r\n  \"url\" : [ \"/system/post\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:post:view\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 09:26:59'),(121,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"102\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"菜单管理\" ],\r\n  \"url\" : [ \"/system/menu\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:menu:view\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 09:27:16'),(122,'角色管理',3,'com.ruoyi.web.controller.system.SysRoleController.remove()','POST',1,'admin','研发部门','/system/role/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"100\" ]\r\n}','{\r\n  \"msg\" : \"sys已分配,不能删除\",\r\n  \"code\" : 500\r\n}',0,NULL,'2020-07-15 11:54:26'),(123,'角色管理',4,'com.ruoyi.web.controller.system.SysRoleController.cancelAuthUser()','POST',1,'admin','研发部门','/system/role/authUser/cancel','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"userId\" : [ \"100\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 11:54:33'),(124,'角色管理',3,'com.ruoyi.web.controller.system.SysRoleController.remove()','POST',1,'admin','研发部门','/system/role/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"100\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 11:54:38'),(125,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','GET',1,'admin','研发部门','/system/dept/remove/102','127.0.0.1','内网IP','{ }','{\r\n  \"msg\" : \"存在下级部门,不允许删除\",\r\n  \"code\" : 301\r\n}',0,NULL,'2020-07-15 11:54:54'),(126,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()','POST',1,'admin','研发部门','/system/dept/edit','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"108\" ],\r\n  \"parentId\" : [ \"102\" ],\r\n  \"parentName\" : [ \"长沙分公司\" ],\r\n  \"deptName\" : [ \"市场部门\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"leader\" : [ \"若依\" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"status\" : [ \"1\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 11:55:02'),(127,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','GET',1,'admin','研发部门','/system/dept/remove/108','127.0.0.1','内网IP','{ }','{\r\n  \"msg\" : \"部门存在用户,不允许删除\",\r\n  \"code\" : 301\r\n}',0,NULL,'2020-07-15 11:55:06'),(128,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','GET',1,'admin','研发部门','/system/dept/remove/109','127.0.0.1','内网IP','{ }','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 11:58:05'),(129,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()','POST',1,'admin','研发部门','/system/dept/edit','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"108\" ],\r\n  \"parentId\" : [ \"102\" ],\r\n  \"parentName\" : [ \"长沙分公司\" ],\r\n  \"deptName\" : [ \"市场部门\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"leader\" : [ \"若依\" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 11:58:23'),(130,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.editSave()','POST',1,'admin','研发部门','/system/user/edit','127.0.0.1','内网IP','{\r\n  \"userId\" : [ \"100\" ],\r\n  \"deptId\" : [ \"108\" ],\r\n  \"userName\" : [ \"普通管理员\" ],\r\n  \"dept.deptName\" : [ \"市场部门\" ],\r\n  \"phonenumber\" : [ \"14755164307\" ],\r\n  \"email\" : [ \"978258922@qq.com\" ],\r\n  \"loginName\" : [ \"sys\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"\" ],\r\n  \"postIds\" : [ \"4\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 11:58:33'),(131,'用户管理',3,'com.ruoyi.web.controller.system.SysUserController.remove()','POST',1,'admin','研发部门','/system/user/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"100\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 11:58:38'),(132,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','GET',1,'admin','研发部门','/system/dept/remove/108','127.0.0.1','内网IP','{ }','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 11:58:43'),(133,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','GET',1,'admin','研发部门','/system/dept/remove/102','127.0.0.1','内网IP','{ }','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 11:58:46'),(134,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','GET',1,'admin','研发部门','/system/dept/remove/104','127.0.0.1','内网IP','{ }','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 11:59:02'),(135,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','GET',1,'admin','研发部门','/system/dept/remove/106','127.0.0.1','内网IP','{ }','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 11:59:05'),(136,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','GET',1,'admin','研发部门','/system/dept/remove/107','127.0.0.1','内网IP','{ }','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 11:59:07'),(137,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()','POST',1,'admin','研发部门','/system/dept/edit','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"101\" ],\r\n  \"parentId\" : [ \"100\" ],\r\n  \"parentName\" : [ \"创新公司\" ],\r\n  \"deptName\" : [ \"合肥分公司\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"leader\" : [ \"\" ],\r\n  \"phone\" : [ \"\" ],\r\n  \"email\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 11:59:45'),(138,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()','POST',1,'admin','研发部门','/system/dept/edit','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"103\" ],\r\n  \"parentId\" : [ \"101\" ],\r\n  \"parentName\" : [ \"合肥分公司\" ],\r\n  \"deptName\" : [ \"研发部门\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"leader\" : [ \"\" ],\r\n  \"phone\" : [ \"\" ],\r\n  \"email\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 11:59:56'),(139,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()','POST',1,'admin','研发部门','/system/dept/edit','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"105\" ],\r\n  \"parentId\" : [ \"101\" ],\r\n  \"parentName\" : [ \"合肥分公司\" ],\r\n  \"deptName\" : [ \"测试部门\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"leader\" : [ \"\" ],\r\n  \"phone\" : [ \"\" ],\r\n  \"email\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 12:00:03'),(140,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\r\n  \"tables\" : [ \"sys_test\" ]\r\n}','null',0,NULL,'2020-07-15 12:01:15'),(141,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\r\n  \"tables\" : [ \"sys_oper_log\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 12:01:49'),(142,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','POST',1,'admin','研发部门','/tool/gen/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"2\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 12:01:59'),(143,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','POST',1,'admin','研发部门','/tool/gen/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"3\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 12:02:01'),(144,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\r\n  \"tables\" : [ \"sys_notice\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 12:02:08'),(145,'代码生成',8,'com.ruoyi.generator.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/sys_notice','127.0.0.1','内网IP','{ }','null',0,NULL,'2020-07-15 12:02:32'),(146,'个人信息',2,'com.ruoyi.web.controller.system.SysProfileController.update()','POST',1,'admin','研发部门','/system/user/profile/update','127.0.0.1','内网IP','{\r\n  \"id\" : [ \"\" ],\r\n  \"userName\" : [ \"管理员\" ],\r\n  \"phonenumber\" : [ \"15212425895\" ],\r\n  \"email\" : [ \"978253922@qq.com\" ],\r\n  \"sex\" : [ \"1\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 13:07:41'),(147,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\r\n  \"tables\" : [ \"sys_notice\" ]\r\n}','null',0,NULL,'2020-07-15 13:58:17'),(148,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.addSave()','POST',1,'admin','研发部门','/system/user/add','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"测试管理员\" ],\r\n  \"deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"15224589657\" ],\r\n  \"email\" : [ \"972258922@qq.com\" ],\r\n  \"loginName\" : [ \"ceshi\" ],\r\n  \"password\" : [ \"123456\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ],\r\n  \"postIds\" : [ \"2\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 13:59:20'),(149,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"普通角色\" ],\r\n  \"roleKey\" : [ \"common\" ],\r\n  \"roleSort\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"普通角色\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,3,114,1057,1060,1061\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 13:59:43'),(150,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.editSave()','POST',1,'admin','研发部门','/system/user/edit','127.0.0.1','内网IP','{\r\n  \"userId\" : [ \"101\" ],\r\n  \"deptId\" : [ \"105\" ],\r\n  \"userName\" : [ \"测试管理员\" ],\r\n  \"dept.deptName\" : [ \"测试部门\" ],\r\n  \"phonenumber\" : [ \"15224589657\" ],\r\n  \"email\" : [ \"972258922@qq.com\" ],\r\n  \"loginName\" : [ \"ceshi\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ],\r\n  \"postIds\" : [ \"2\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 14:21:49'),(151,'重置密码',2,'com.ruoyi.web.controller.system.SysUserController.resetPwd()','GET',1,'admin','研发部门','/system/user/resetPwd/101','127.0.0.1','内网IP','{ }','\"system/user/resetPwd\"',0,NULL,'2020-07-15 14:22:40'),(152,'用户管理',3,'com.ruoyi.web.controller.system.SysUserController.remove()','POST',1,'admin','研发部门','/system/user/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"101\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 14:22:48'),(153,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\r\n  \"tables\" : [ \"sys_notice\" ]\r\n}','null',0,NULL,'2020-07-15 14:23:41'),(154,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\r\n  \"tables\" : [ \"sys_notice,sys_oper_log\" ]\r\n}','null',0,NULL,'2020-07-15 14:27:02'),(155,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\r\n  \"tables\" : [ \"sys_job_log\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 14:29:31'),(156,'部门管理',1,'com.ruoyi.web.controller.system.SysDeptController.addSave()','POST',1,'admin','研发部门','/system/dept/add','127.0.0.1','内网IP','{\r\n  \"parentId\" : [ \"101\" ],\r\n  \"deptName\" : [ \"后勤部门\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"leader\" : [ \"\" ],\r\n  \"phone\" : [ \"\" ],\r\n  \"email\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 14:30:19'),(157,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.addSave()','POST',1,'admin','研发部门','/system/user/add','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"200\" ],\r\n  \"userName\" : [ \"后勤部测试\" ],\r\n  \"deptName\" : [ \"后勤部门\" ],\r\n  \"phonenumber\" : [ \"15896325478\" ],\r\n  \"email\" : [ \"9782258922@qq.com\" ],\r\n  \"loginName\" : [ \"ceshi_houqin\" ],\r\n  \"password\" : [ \"123456\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ],\r\n  \"postIds\" : [ \"3\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 14:31:14'),(158,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()','POST',1,'admin','研发部门','/system/role/authDataScope','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"普通角色\" ],\r\n  \"roleKey\" : [ \"common\" ],\r\n  \"dataScope\" : [ \"2\" ],\r\n  \"deptIds\" : [ \"100,101,103,105,200\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 14:35:47'),(159,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()','POST',1,'admin','研发部门','/system/role/authDataScope','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"普通角色\" ],\r\n  \"roleKey\" : [ \"common\" ],\r\n  \"dataScope\" : [ \"4\" ],\r\n  \"deptIds\" : [ \"\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 14:37:00'),(160,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.editSave()','POST',1,'admin','研发部门','/system/user/edit','127.0.0.1','内网IP','{\r\n  \"userId\" : [ \"102\" ],\r\n  \"deptId\" : [ \"200\" ],\r\n  \"userName\" : [ \"后勤部测试\" ],\r\n  \"dept.deptName\" : [ \"后勤部门\" ],\r\n  \"phonenumber\" : [ \"15896325478\" ],\r\n  \"email\" : [ \"9782258922@qq.com\" ],\r\n  \"loginName\" : [ \"ceshi_houqin\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"\" ],\r\n  \"postIds\" : [ \"\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 14:40:34'),(161,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\r\n  \"tables\" : [ \"sys_job_log,sys_notice,sys_oper_log\" ]\r\n}','null',0,NULL,'2020-07-15 14:45:18'),(162,'代码生成',8,'com.ruoyi.generator.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/sys_job_log','127.0.0.1','内网IP','{ }','null',0,NULL,'2020-07-15 14:45:53'),(163,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','POST',1,'admin','研发部门','/tool/gen/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"6\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 14:45:59'),(164,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\r\n  \"tables\" : [ \"sys_notice,sys_oper_log\" ]\r\n}','null',0,NULL,'2020-07-15 14:49:34'),(165,'部门管理',1,'com.ruoyi.web.controller.system.SysDeptController.addSave()','POST',1,'admin','研发部门','/system/dept/add','127.0.0.1','内网IP','{\r\n  \"parentId\" : [ \"101\" ],\r\n  \"deptName\" : [ \"影视部\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"leader\" : [ \"\" ],\r\n  \"phone\" : [ \"\" ],\r\n  \"email\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 14:52:32'),(166,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.addSave()','POST',1,'admin','研发部门','/system/user/add','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"201\" ],\r\n  \"userName\" : [ \"影视部管理员\" ],\r\n  \"deptName\" : [ \"影视部\" ],\r\n  \"phonenumber\" : [ \"15236587495\" ],\r\n  \"email\" : [ \"9722253922@qq.com\" ],\r\n  \"loginName\" : [ \"ysadmin\" ],\r\n  \"password\" : [ \"123456\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ],\r\n  \"postIds\" : [ \"\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 14:53:16'),(167,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','GET',1,'admin','研发部门','/system/dept/remove/201','127.0.0.1','内网IP','{ }','{\r\n  \"msg\" : \"部门存在用户,不允许删除\",\r\n  \"code\" : 301\r\n}',0,NULL,'2020-07-15 14:59:26'),(168,'用户管理',3,'com.ruoyi.web.controller.system.SysUserController.remove()','POST',1,'admin','研发部门','/system/user/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"103\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 14:59:35'),(169,'用户管理',3,'com.ruoyi.web.controller.system.SysUserController.remove()','POST',1,'admin','研发部门','/system/user/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"102\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 14:59:38'),(170,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','GET',1,'admin','研发部门','/system/dept/remove/201','127.0.0.1','内网IP','{ }','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 14:59:42'),(171,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','GET',1,'admin','研发部门','/system/dept/remove/200','127.0.0.1','内网IP','{ }','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 14:59:44'),(172,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\r\n  \"tables\" : [ \"sys_notice,sys_oper_log\" ]\r\n}','null',0,NULL,'2020-07-15 15:01:05'),(173,'部门管理',1,'com.ruoyi.web.controller.system.SysDeptController.addSave()','POST',1,'admin','研发部门','/system/dept/add','127.0.0.1','内网IP','{\r\n  \"parentId\" : [ \"101\" ],\r\n  \"deptName\" : [ \"影视部\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"leader\" : [ \"\" ],\r\n  \"phone\" : [ \"\" ],\r\n  \"email\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 15:03:28'),(174,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.addSave()','POST',1,'admin','研发部门','/system/user/add','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"202\" ],\r\n  \"userName\" : [ \"影视部管理员\" ],\r\n  \"deptName\" : [ \"影视部\" ],\r\n  \"phonenumber\" : [ \"15212425892\" ],\r\n  \"email\" : [ \"97825332@qq.com\" ],\r\n  \"loginName\" : [ \"ysadmin\" ],\r\n  \"password\" : [ \"123456\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ],\r\n  \"postIds\" : [ \"\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-15 15:04:06'),(175,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','5.151.38.32','XX XX','{\r\n  \"tables\" : [ \"sys_user_post\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-16 16:15:39'),(176,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','POST',1,'admin','研发部门','/tool/gen/remove','5.151.38.32','XX XX','{\r\n  \"ids\" : [ \"7\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-16 16:15:55'),(177,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','POST',1,'admin','研发部门','/tool/gen/remove','5.151.38.32','XX XX','{\r\n  \"ids\" : [ \"5\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-16 16:15:57'),(178,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','POST',1,'admin','研发部门','/tool/gen/remove','5.151.38.32','XX XX','{\r\n  \"ids\" : [ \"4\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-16 16:15:59'),(179,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','5.151.38.32','XX XX','{\r\n  \"tables\" : [ \"sys_role_dept\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-16 16:16:17'),(180,'代码生成',8,'com.ruoyi.generator.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/sys_role_dept','5.151.38.32','XX XX','{ }','null',0,NULL,'2020-07-16 16:16:24'),(181,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','POST',1,'admin','研发部门','/tool/gen/remove','220.178.0.62','XX XX','{\r\n  \"ids\" : [ \"5\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-16 16:19:44'),(182,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','220.178.0.62','XX XX','{\r\n  \"tables\" : [ \"sys_notice\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-16 16:19:49'),(183,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','POST',1,'admin','研发部门','/tool/gen/remove','220.178.0.62','XX XX','{\r\n  \"ids\" : [ \"9\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-16 16:20:01'),(184,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','POST',1,'admin','研发部门','/tool/gen/remove','220.178.0.62','XX XX','{\r\n  \"ids\" : [ \"8\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-16 16:20:03'),(185,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','220.178.0.62','XX XX','{\r\n  \"tables\" : [ \"sys_notice,sys_job_log\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-16 16:20:08'),(186,'代码生成',8,'com.ruoyi.generator.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/sys_notice','112.32.66.73','XX XX','{ }','null',0,NULL,'2020-07-16 20:27:27'),(187,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\r\n  \"tables\" : [ \"sys_post\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-16 20:40:08'),(188,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\r\n  \"tables\" : [ \"sys_dept\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-07-16 21:06:43'),(189,'代码生成',8,'com.Felix.generator.controller.GenController.download()','GET',1,'admin','Development Dept','/tool/gen/download/sys_dept','127.0.0.1','内网IP','{ }','null',0,NULL,'2020-07-20 22:15:40'),(190,'代码生成',8,'com.Felix.generator.controller.GenController.batchGenCode()','GET',1,'admin','Development Dept','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\r\n  \"tables\" : [ \"sys_dept,sys_post\" ]\r\n}','null',0,NULL,'2020-07-20 22:16:14');

/*Table structure for table `sys_post` */

DROP TABLE IF EXISTS `sys_post`;

CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';

/*Data for the table `sys_post` */

insert  into `sys_post`(`post_id`,`post_code`,`post_name`,`post_sort`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'ceo','CEO',1,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(2,'se','project manager',2,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(3,'hr','human resources',3,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(4,'user','employee',4,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

/*Data for the table `sys_role` */

insert  into `sys_role`(`role_id`,`role_name`,`role_key`,`role_sort`,`data_scope`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'超级管理员','admin',1,'1','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','超级管理员'),(2,'普通角色','common',2,'4','0','0','admin','2018-03-16 11:33:00','admin','2020-07-15 14:37:00','普通角色'),(100,'sys','sys',3,'1','0','2','admin','2020-07-14 11:45:15','admin','2020-07-14 11:57:44','普通管理员');

/*Table structure for table `sys_role_dept` */

DROP TABLE IF EXISTS `sys_role_dept`;

CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';

/*Data for the table `sys_role_dept` */

/*Table structure for table `sys_role_menu` */

DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

/*Data for the table `sys_role_menu` */

insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1),(2,3),(2,100),(2,114),(2,1000),(2,1001),(2,1002),(2,1003),(2,1004),(2,1005),(2,1006),(2,1057),(2,1060),(2,1061),(100,1),(100,3),(100,100),(100,103),(100,114),(100,1000),(100,1001),(100,1002),(100,1003),(100,1004),(100,1005),(100,1006),(100,1016),(100,1017),(100,1018),(100,1019),(100,1057),(100,1058),(100,1059),(100,1060),(100,1061);

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

/*Data for the table `sys_user` */

insert  into `sys_user`(`user_id`,`dept_id`,`login_name`,`user_name`,`user_type`,`email`,`phonenumber`,`sex`,`avatar`,`password`,`salt`,`status`,`del_flag`,`login_ip`,`login_date`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,103,'admin','administrator','00','978253922@qq.com','15212425895','1','','80f6ec6377775782112984228d2694b8','105624','0','0','127.0.0.1','2020-07-24 11:51:46','admin','2018-03-16 11:33:00','ry','2020-07-24 11:48:43','管理员'),(2,105,'ry','ruoyi','00','ry@qq.com','15666666666','1','','60f904d47890c481a652ddeef449b91b','735ff9','0','0','220.178.0.62','2020-07-15 16:30:53','admin','2018-03-16 11:33:00','ry','2020-07-15 16:30:52','测试员'),(104,202,'ysadmin','movieAdmin','00','97825332@qq.com','15212425892','0','','33e86ee04369e2bbbb21c14b3f33d2bf','2d8dbd','0','0','127.0.0.1','2020-07-15 15:06:58','admin','2020-07-15 15:04:06','','2020-07-15 15:04:21',NULL),(105,103,'test','测试管理员','00','9785258966@qq.com','14755256347','0','','752911a31c1fe343fb823904f21407f2','273764','0','2','',NULL,'admin','2020-07-23 20:45:15','',NULL,NULL);

/*Table structure for table `sys_user_online` */

DROP TABLE IF EXISTS `sys_user_online`;

CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线用户记录';

/*Data for the table `sys_user_online` */

/*Table structure for table `sys_user_post` */

DROP TABLE IF EXISTS `sys_user_post`;

CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';

/*Data for the table `sys_user_post` */

insert  into `sys_user_post`(`user_id`,`post_id`) values (1,1),(2,2),(100,4),(101,2);

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`user_id`,`role_id`) values (1,1),(2,2),(101,2),(103,2),(104,2),(105,2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

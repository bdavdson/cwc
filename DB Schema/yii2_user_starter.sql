/*
SQLyog Ultimate v11.4 (64 bit)
MySQL - 5.7.11 : Database - cwc
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cwc` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `cwc`;

/*Table structure for table `auth_assignment` */

DROP TABLE IF EXISTS `auth_assignment`;

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_assignment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_assignment` */

insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('caseWorkerRole',3,1472151510),('sysAdminRole',1,1472150461);

/*Table structure for table `auth_item` */

DROP TABLE IF EXISTS `auth_item`;

CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `group_code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  KEY `fk_auth_item_group_code` (`group_code`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_auth_item_group_code` FOREIGN KEY (`group_code`) REFERENCES `auth_item_group` (`code`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_item` */

insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`,`group_code`) values ('/*',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('//*',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('//controller',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('//crud',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('//extension',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('//form',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('//index',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('//model',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('//module',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/asset/*',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/asset/compress',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/asset/template',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/cache/*',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/cache/flush',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/cache/flush-all',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/cache/flush-schema',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/cache/index',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/debug/*',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/debug/default/*',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/debug/default/db-explain',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/debug/default/download-mail',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/debug/default/index',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/debug/default/toolbar',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/debug/default/view',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/fixture/*',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/fixture/load',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/fixture/unload',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/gii/*',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/gii/default/*',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/gii/default/action',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/gii/default/diff',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/gii/default/index',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/gii/default/preview',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/gii/default/view',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/hello/*',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/hello/index',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/help/*',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/help/index',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/message/*',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/message/config',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/message/config-template',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/message/extract',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/migrate/*',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/migrate/create',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/migrate/down',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/migrate/history',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/migrate/mark',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/migrate/new',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/migrate/redo',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/migrate/to',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/migrate/up',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/serve/*',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/serve/index',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/site/*',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/site/about',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/site/captcha',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/site/contact',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/site/error',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/site/index',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/site/login',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/site/logout',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/*',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/user-management/auth-item-group/*',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/auth-item-group/bulk-activate',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/auth-item-group/bulk-deactivate',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/auth-item-group/bulk-delete',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/auth-item-group/create',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/auth-item-group/delete',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/auth-item-group/grid-page-size',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/auth-item-group/grid-sort',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/auth-item-group/index',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/auth-item-group/toggle-attribute',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/auth-item-group/update',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/auth-item-group/view',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/auth/*',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/auth/captcha',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/auth/change-own-password',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/user-management/auth/confirm-email',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/auth/confirm-email-receive',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/auth/confirm-registration-email',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/auth/login',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/auth/logout',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/auth/password-recovery',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/auth/password-recovery-receive',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/auth/registration',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/permission/*',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/permission/bulk-activate',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/permission/bulk-deactivate',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/permission/bulk-delete',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/permission/create',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/permission/delete',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/permission/grid-page-size',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/permission/grid-sort',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/permission/index',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/permission/refresh-routes',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/permission/set-child-permissions',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/permission/set-child-routes',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/permission/toggle-attribute',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/permission/update',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/permission/view',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/role/*',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/role/bulk-activate',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/role/bulk-deactivate',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/role/bulk-delete',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/role/create',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/role/delete',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/role/grid-page-size',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/role/grid-sort',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/role/index',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/role/set-child-permissions',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/role/set-child-roles',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/role/toggle-attribute',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/role/update',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/role/view',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/user-permission/*',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/user-permission/set',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/user-management/user-permission/set-roles',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/user-management/user-visit-log/*',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/user-visit-log/bulk-activate',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/user-visit-log/bulk-deactivate',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/user-visit-log/bulk-delete',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/user-visit-log/create',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/user-visit-log/delete',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/user-visit-log/grid-page-size',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/user-visit-log/grid-sort',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/user-visit-log/index',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/user-visit-log/toggle-attribute',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/user-visit-log/update',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/user-visit-log/view',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/user/*',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/user/bulk-activate',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/user-management/user/bulk-deactivate',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/user-management/user/bulk-delete',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/user-management/user/change-password',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/user-management/user/create',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/user-management/user/delete',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/user-management/user/grid-page-size',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/user-management/user/grid-sort',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/user/index',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/user-management/user/toggle-attribute',3,NULL,NULL,NULL,1472150985,1472150985,NULL),('/user-management/user/update',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('/user-management/user/view',3,NULL,NULL,NULL,1472139011,1472139011,NULL),('activityAdminRole',1,'Activity Administrator',NULL,NULL,1472150084,1472150131,NULL),('advisorRole',1,'Advisor',NULL,NULL,1472150116,1472150116,NULL),('assignRolesToUsers',2,'Assign roles to users',NULL,NULL,1472139011,1472139011,'userManagement'),('bindUserToIp',2,'Bind user to IP',NULL,NULL,1472139011,1472139011,'userManagement'),('caseWorkerRole',1,'FACS Case Worker',NULL,NULL,1472150166,1472150166,NULL),('changeOwnPassword',2,'Change own password',NULL,NULL,1472139011,1472139011,'userCommonPermissions'),('changeUserPassword',2,'Change user password',NULL,NULL,1472139011,1472139011,'userManagement'),('commonPermission',2,'Common permission',NULL,NULL,1472139010,1472139010,NULL),('createUsers',2,'Create users',NULL,NULL,1472139011,1472139011,'userManagement'),('deleteUsers',2,'Delete users',NULL,NULL,1472139011,1472139011,'userManagement'),('editUserEmail',2,'Edit user email',NULL,NULL,1472139011,1472139011,'userManagement'),('editUsers',2,'Edit users',NULL,NULL,1472139011,1472139011,'userManagement'),('schoolAdminRole',1,'School Administrator',NULL,NULL,1472150195,1472150195,NULL),('schoolBoardAdminRole',1,'School Board Administrator',NULL,NULL,1472150226,1472150226,NULL),('sysAdminRole',1,'System Adminstrator',NULL,NULL,1472150243,1472150243,NULL),('viewIndex',2,'View Homepage',NULL,NULL,1472151431,1472151431,'userCommonPermissions'),('viewRegistrationIp',2,'View registration IP',NULL,NULL,1472139011,1472139011,'userManagement'),('viewUserEmail',2,'View user email',NULL,NULL,1472139011,1472139011,'userManagement'),('viewUserRoles',2,'View user roles',NULL,NULL,1472139011,1472139011,'userManagement'),('viewUsers',2,'View users',NULL,NULL,1472139011,1472139011,'userManagement'),('viewVisitLog',2,'View visit log',NULL,NULL,1472139011,1472139011,'userManagement');

/*Table structure for table `auth_item_child` */

DROP TABLE IF EXISTS `auth_item_child`;

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_item_child` */

insert  into `auth_item_child`(`parent`,`child`) values ('commonPermission','//index'),('viewIndex','/site/about'),('viewIndex','/site/contact'),('viewIndex','/site/error'),('viewIndex','/site/index'),('changeOwnPassword','/user-management/auth/change-own-password'),('assignRolesToUsers','/user-management/user-permission/set'),('assignRolesToUsers','/user-management/user-permission/set-roles'),('editUsers','/user-management/user/bulk-activate'),('editUsers','/user-management/user/bulk-deactivate'),('deleteUsers','/user-management/user/bulk-delete'),('changeUserPassword','/user-management/user/change-password'),('createUsers','/user-management/user/create'),('deleteUsers','/user-management/user/delete'),('viewUsers','/user-management/user/grid-page-size'),('viewUsers','/user-management/user/index'),('editUsers','/user-management/user/update'),('viewUsers','/user-management/user/view'),('sysAdminRole','assignRolesToUsers'),('sysAdminRole','bindUserToIp'),('caseWorkerRole','changeOwnPassword'),('sysAdminRole','changeOwnPassword'),('viewIndex','changeOwnPassword'),('sysAdminRole','changeUserPassword'),('sysAdminRole','createUsers'),('sysAdminRole','deleteUsers'),('sysAdminRole','editUserEmail'),('sysAdminRole','editUsers'),('caseWorkerRole','viewIndex'),('sysAdminRole','viewRegistrationIp'),('editUserEmail','viewUserEmail'),('sysAdminRole','viewUserEmail'),('assignRolesToUsers','viewUserRoles'),('sysAdminRole','viewUserRoles'),('assignRolesToUsers','viewUsers'),('changeUserPassword','viewUsers'),('createUsers','viewUsers'),('deleteUsers','viewUsers'),('editUsers','viewUsers'),('sysAdminRole','viewUsers'),('sysAdminRole','viewVisitLog');

/*Table structure for table `auth_item_group` */

DROP TABLE IF EXISTS `auth_item_group`;

CREATE TABLE `auth_item_group` (
  `code` varchar(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_item_group` */

insert  into `auth_item_group`(`code`,`name`,`created_at`,`updated_at`) values ('userCommonPermissions','User common permission',1472139011,1472139011),('userManagement','User management',1472139011,1472139011);

/*Table structure for table `auth_rule` */

DROP TABLE IF EXISTS `auth_rule`;

CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_rule` */

/*Table structure for table `migration` */

DROP TABLE IF EXISTS `migration`;

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `migration` */

insert  into `migration`(`version`,`apply_time`) values ('m000000_000000_base',1472138984),('m140608_173539_create_user_table',1472139009),('m140611_133903_init_rbac',1472139010),('m140808_073114_create_auth_item_group_table',1472139010),('m140809_072112_insert_superadmin_to_user',1472139010),('m140809_073114_insert_common_permisison_to_auth_item',1472139010),('m141023_141535_create_user_visit_log',1472139010),('m141116_115804_add_bind_to_ip_and_registration_ip_to_user',1472139010),('m141121_194858_split_browser_and_os_column',1472139011),('m141201_220516_add_email_and_email_confirmed_to_user',1472139011),('m141207_001649_create_basic_user_permissions',1472139011);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `superadmin` smallint(6) DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `registration_ip` varchar(15) DEFAULT NULL,
  `bind_to_ip` varchar(255) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `email_confirmed` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`auth_key`,`password_hash`,`confirmation_token`,`status`,`superadmin`,`created_at`,`updated_at`,`registration_ip`,`bind_to_ip`,`email`,`email_confirmed`) values (1,'bdavidson','gQvPBe18fkbbxaVmAUjFRi484atsAWJI','$2y$13$licXDdTe41ED96Ks5u9MaOdj.bdGAQqpxKMFzn5X0NJhu2kTTK68W',NULL,1,1,1472139010,1472139010,NULL,NULL,'ben.davidson@outlook.com',1),(3,'testuser','VqcNfh_Z6gBxcif_ffC7UE6NBCMGPzx2','$2y$13$0XT9.lfdO9h6QCHzcdP23OaZZ05nMMx33fUE/1gU0k0Un7Jwrc7bq',NULL,1,0,1472151083,1472151083,'::1','','bdavdson@gmail.com',1);

/*Table structure for table `user_visit_log` */

DROP TABLE IF EXISTS `user_visit_log`;

CREATE TABLE `user_visit_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `language` char(2) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visit_time` int(11) NOT NULL,
  `browser` varchar(30) DEFAULT NULL,
  `os` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_visit_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `user_visit_log` */

insert  into `user_visit_log`(`id`,`token`,`ip`,`language`,`user_agent`,`user_id`,`visit_time`,`browser`,`os`) values (1,'57bf0f731eff2','::1','en','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36',1,1472139123,'Chrome','Windows'),(2,'57bf10ca539bc','::1','en','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36',1,1472139466,'Chrome','Windows'),(3,'57bf26fbaeba7','::1','en','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36',1,1472145147,'Chrome','Windows'),(4,'57bf2786483e0','::1','en','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36',NULL,1472145286,'Chrome','Windows'),(5,'57bf2798a8323','::1','en','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36',1,1472145304,'Chrome','Windows'),(6,'57bf2a9813116','::1','en','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36',1,1472146072,'Chrome','Windows'),(7,'57bf2f6ccc751','::1','en','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36',1,1472147308,'Chrome','Windows'),(8,'57bf34f50df76','::1','en','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36',1,1472148725,'Chrome','Windows'),(9,'57bf3520db03e','::1','en','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36',1,1472148768,'Chrome','Windows'),(10,'57bf358ab9422','::1','en','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36',1,1472148874,'Chrome','Windows'),(11,'57bf361a0e5c8','::1','en','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36',NULL,1472149018,'Chrome','Windows'),(12,'57bf362adbb68','::1','en','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36',1,1472149034,'Chrome','Windows'),(13,'57bf3718c275f','::1','en','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36',1,1472149272,'Chrome','Windows'),(14,'57bf3788782b5','::1','en','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36',1,1472149384,'Chrome','Windows'),(15,'57bf39319af5c','::1','en','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36',1,1472149809,'Chrome','Windows'),(16,'57bf3ebad81d4','::1','en','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36',3,1472151226,'Chrome','Windows'),(17,'57bf3ec9e5fce','::1','en','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36',1,1472151241,'Chrome','Windows'),(18,'57bf3f223a61e','::1','en','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36',3,1472151330,'Chrome','Windows'),(19,'57bf3f2a7b051','::1','en','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36',1,1472151338,'Chrome','Windows'),(20,'57bf3fe6a8289','::1','en','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36',3,1472151526,'Chrome','Windows'),(21,'57bf403e95862','::1','en','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36',1,1472151614,'Chrome','Windows'),(22,'57bf40814d34f','::1','en','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36',3,1472151681,'Chrome','Windows'),(23,'57bf40d6cfec0','::1','en','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36',1,1472151766,'Chrome','Windows'),(24,'57bf40e9ab7a3','::1','en','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36',3,1472151785,'Chrome','Windows'),(25,'57bf410007f90','::1','en','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36',1,1472151808,'Chrome','Windows'),(26,'57bf46e792615','::1','en','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36',1,1472153319,'Chrome','Windows'),(27,'57bf48da8a0c7','::1','en','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36',1,1472153818,'Chrome','Windows'),(28,'57bf4f61ba8ff','::1','en','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36',1,1472155489,'Chrome','Windows'),(29,'57bf502032e5b','::1','en','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36',1,1472155680,'Chrome','Windows'),(30,'57bf50c908d08','::1','en','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36',1,1472155849,'Chrome','Windows');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

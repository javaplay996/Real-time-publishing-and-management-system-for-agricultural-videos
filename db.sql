/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jspmehlry
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jspmehlry` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jspmehlry`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspmehlry/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmehlry/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmehlry/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussnongyeshipin` */

DROP TABLE IF EXISTS `discussnongyeshipin`;

CREATE TABLE `discussnongyeshipin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='农业视频评论表';

/*Data for the table `discussnongyeshipin` */

insert  into `discussnongyeshipin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (81,'2021-03-13 21:11:52',1,1,'用户名1','评论内容1','回复内容1'),(82,'2021-03-13 21:11:52',2,2,'用户名2','评论内容2','回复内容2'),(83,'2021-03-13 21:11:52',3,3,'用户名3','评论内容3','回复内容3'),(84,'2021-03-13 21:11:52',4,4,'用户名4','评论内容4','回复内容4'),(85,'2021-03-13 21:11:52',5,5,'用户名5','评论内容5','回复内容5'),(86,'2021-03-13 21:11:52',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615641410057 DEFAULT CHARSET=utf8 COMMENT='论坛信息';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (61,'2021-03-13 21:11:52','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(62,'2021-03-13 21:11:52','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(63,'2021-03-13 21:11:52','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(64,'2021-03-13 21:11:52','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(65,'2021-03-13 21:11:52','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(66,'2021-03-13 21:11:52','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1615641403316,'2021-03-13 21:16:42','问题问题问题问题问题问题问题','<p>问题问题问题问题问题问题问题问题问题问题问题问题问题问题问题问题</p>',0,1615641336096,'1','开放'),(1615641410056,'2021-03-13 21:16:50',NULL,'请输入评论阿萨德撒打算',1615641403316,1615641336096,'1',NULL);

/*Table structure for table `nongyeshipin` */

DROP TABLE IF EXISTS `nongyeshipin`;

CREATE TABLE `nongyeshipin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shipinbianhao` varchar(200) DEFAULT NULL COMMENT '视频编号',
  `shipinfenlei` varchar(200) NOT NULL COMMENT '视频分类',
  `shipinmingcheng` varchar(200) NOT NULL COMMENT '视频名称',
  `shipinfengmian` varchar(200) DEFAULT NULL COMMENT '视频封面',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `shipinjieshao` longtext COMMENT '视频介绍',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shipinbianhao` (`shipinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615641371891 DEFAULT CHARSET=utf8 COMMENT='农业视频';

/*Data for the table `nongyeshipin` */

insert  into `nongyeshipin`(`id`,`addtime`,`shipinbianhao`,`shipinfenlei`,`shipinmingcheng`,`shipinfengmian`,`shipin`,`shipinjieshao`,`faburiqi`,`yonghuzhanghao`,`yonghuxingming`,`clicktime`,`clicknum`) values (31,'2021-03-13 21:11:52','视频编号1','视频分类1','视频名称1','http://localhost:8080/jspmehlry/upload/nongyeshipin_shipinfengmian1.jpg','','视频介绍1','2021-03-13','用户账号1','用户姓名1','2021-03-13 21:14:59',3),(32,'2021-03-13 21:11:52','视频编号2','视频分类2','视频名称2','http://localhost:8080/jspmehlry/upload/nongyeshipin_shipinfengmian2.jpg','','视频介绍2','2021-03-13','用户账号2','用户姓名2','2021-03-13 21:11:52',2),(33,'2021-03-13 21:11:52','视频编号3','视频分类3','视频名称3','http://localhost:8080/jspmehlry/upload/nongyeshipin_shipinfengmian3.jpg','','视频介绍3','2021-03-13','用户账号3','用户姓名3','2021-03-13 21:11:52',3),(34,'2021-03-13 21:11:52','视频编号4','视频分类4','视频名称4','http://localhost:8080/jspmehlry/upload/nongyeshipin_shipinfengmian4.jpg','','视频介绍4','2021-03-13','用户账号4','用户姓名4','2021-03-13 21:11:52',4),(35,'2021-03-13 21:11:52','视频编号5','视频分类5','视频名称5','http://localhost:8080/jspmehlry/upload/nongyeshipin_shipinfengmian5.jpg','','视频介绍5','2021-03-13','用户账号5','用户姓名5','2021-03-13 21:13:17',6),(36,'2021-03-13 21:11:52','视频编号6','视频分类6','视频名称6','http://localhost:8080/jspmehlry/upload/nongyeshipin_shipinfengmian6.jpg','','视频介绍6','2021-03-13','用户账号6','用户姓名6','2021-03-13 21:15:20',7),(1615641371890,'2021-03-13 21:16:11','1615641355','科普','xxx视频','http://localhost:8080/jspmehlry/upload/1615641364264.jpg','http://localhost:8080/jspmehlry/upload/1615641367838.mp4','asdasdasdasds\r\n','2021-03-25','1','xxx用户','2021-03-13 21:16:21',1);

/*Table structure for table `nongyezixun` */

DROP TABLE IF EXISTS `nongyezixun`;

CREATE TABLE `nongyezixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `zixunleixing` varchar(200) DEFAULT NULL COMMENT '资讯类型',
  `ziliaolaiyuan` varchar(200) DEFAULT NULL COMMENT '资料来源',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `neirong` longtext COMMENT '内容',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='农业资讯';

/*Data for the table `nongyezixun` */

insert  into `nongyezixun`(`id`,`addtime`,`biaoti`,`fengmian`,`zixunleixing`,`ziliaolaiyuan`,`fabushijian`,`neirong`,`clicknum`) values (41,'2021-03-13 21:11:52','标题1','http://localhost:8080/jspmehlry/upload/nongyezixun_fengmian1.jpg','资讯类型1','资料来源1','2021-03-13','内容1',3),(42,'2021-03-13 21:11:52','标题2','http://localhost:8080/jspmehlry/upload/nongyezixun_fengmian2.jpg','资讯类型2','资料来源2','2021-03-13','内容2',3),(43,'2021-03-13 21:11:52','标题3','http://localhost:8080/jspmehlry/upload/nongyezixun_fengmian3.jpg','资讯类型3','资料来源3','2021-03-13','内容3',3),(44,'2021-03-13 21:11:52','标题4','http://localhost:8080/jspmehlry/upload/nongyezixun_fengmian4.jpg','资讯类型4','资料来源4','2021-03-13','内容4',4),(45,'2021-03-13 21:11:52','标题5','http://localhost:8080/jspmehlry/upload/nongyezixun_fengmian5.jpg','资讯类型5','资料来源5','2021-03-13','内容5',5),(46,'2021-03-13 21:11:52','标题6','http://localhost:8080/jspmehlry/upload/nongyezixun_fengmian6.jpg','资讯类型6','资料来源6','2021-03-13','内容6',6);

/*Table structure for table `shipinfenlei` */

DROP TABLE IF EXISTS `shipinfenlei`;

CREATE TABLE `shipinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shipinfenlei` varchar(200) NOT NULL COMMENT '视频分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shipinfenlei` (`shipinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1615641290861 DEFAULT CHARSET=utf8 COMMENT='视频分类';

/*Data for the table `shipinfenlei` */

insert  into `shipinfenlei`(`id`,`addtime`,`shipinfenlei`) values (21,'2021-03-13 21:11:52','视频分类1'),(22,'2021-03-13 21:11:52','视频分类2'),(23,'2021-03-13 21:11:52','视频分类3'),(24,'2021-03-13 21:11:52','视频分类4'),(25,'2021-03-13 21:11:52','视频分类5'),(26,'2021-03-13 21:11:52','视频分类6'),(1615641290860,'2021-03-13 21:14:50','科普');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615641386110 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1615641386109,'2021-03-13 21:16:26',1615641336096,1615641371890,'nongyeshipin','xxx视频','http://localhost:8080/jspmehlry/upload/1615641364264.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','dkhpkvka1svfs5llmhcw9ospcrxppfiw','2021-03-13 21:14:33','2021-03-13 22:14:34'),(2,1615641336096,'1','yonghu','用户','8ptitq52s9v1xckmrtogsglzhvmzot30','2021-03-13 21:15:40','2021-03-13 22:15:40');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-13 21:11:52');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615641336097 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`yonghuxingming`,`xingbie`,`nianling`,`touxiang`,`yonghushouji`) values (11,'2021-03-13 21:11:52','用户1','123456','用户姓名1','男','年龄1','http://localhost:8080/jspmehlry/upload/yonghu_touxiang1.jpg','13823888881'),(12,'2021-03-13 21:11:52','用户2','123456','用户姓名2','男','年龄2','http://localhost:8080/jspmehlry/upload/yonghu_touxiang2.jpg','13823888882'),(13,'2021-03-13 21:11:52','用户3','123456','用户姓名3','男','年龄3','http://localhost:8080/jspmehlry/upload/yonghu_touxiang3.jpg','13823888883'),(14,'2021-03-13 21:11:52','用户4','123456','用户姓名4','男','年龄4','http://localhost:8080/jspmehlry/upload/yonghu_touxiang4.jpg','13823888884'),(15,'2021-03-13 21:11:52','用户5','123456','用户姓名5','男','年龄5','http://localhost:8080/jspmehlry/upload/yonghu_touxiang5.jpg','13823888885'),(16,'2021-03-13 21:11:52','用户6','123456','用户姓名6','男','年龄6','http://localhost:8080/jspmehlry/upload/yonghu_touxiang6.jpg','13823888886'),(1615641336096,'2021-03-13 21:15:36','1','1','xxx用户','男','11','http://localhost:8080/jspmehlry/upload/1615641349802.jpg','12346578910');

/*Table structure for table `zixunleixing` */

DROP TABLE IF EXISTS `zixunleixing`;

CREATE TABLE `zixunleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zixunleixing` varchar(200) DEFAULT NULL COMMENT '资讯类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='资讯类型';

/*Data for the table `zixunleixing` */

insert  into `zixunleixing`(`id`,`addtime`,`zixunleixing`) values (51,'2021-03-13 21:11:52','资讯类型1'),(52,'2021-03-13 21:11:52','资讯类型2'),(53,'2021-03-13 21:11:52','资讯类型3'),(54,'2021-03-13 21:11:52','资讯类型4'),(55,'2021-03-13 21:11:52','资讯类型5'),(56,'2021-03-13 21:11:52','资讯类型6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

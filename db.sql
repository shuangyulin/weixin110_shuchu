/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm1t1lz
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm1t1lz` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm1t1lz`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm1t1lz/upload/1617533252020.png'),(2,'picture2','http://localhost:8080/ssm1t1lz/upload/1617533298958.png'),(6,'homepage','http://localhost:8080/ssm1t1lz/upload/1617533309494.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=1617533196211 DEFAULT CHARSET=utf8 COMMENT='电子书论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (51,'2021-04-04 18:42:48','帖子标题1p','<p>帖子内容1pojo</p>',1,1,'用户名1','关闭'),(53,'2021-04-04 18:42:48','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(54,'2021-04-04 18:42:48','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(55,'2021-04-04 18:42:48','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(56,'2021-04-04 18:42:48','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1617533196210,'2021-04-04 18:46:36','hsdh','<p>fdhah</p>',NULL,1,'','开放');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617533236933 DEFAULT CHARSET=utf8 COMMENT='电子书资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (61,'2021-04-04 18:42:48','标题1hd','简介1hhfdfh','http://localhost:8080/ssm1t1lz/upload/news_picture1.jpg,http://localhost:8080/ssm1t1lz/upload/1617533214071.jpg','<p>内容1hdfhdf</p>'),(63,'2021-04-04 18:42:48','标题3','简介3','http://localhost:8080/ssm1t1lz/upload/news_picture3.jpg','内容3'),(64,'2021-04-04 18:42:48','标题4','简介4','http://localhost:8080/ssm1t1lz/upload/news_picture4.jpg','内容4'),(65,'2021-04-04 18:42:48','标题5','简介5','http://localhost:8080/ssm1t1lz/upload/news_picture5.jpg','内容5'),(66,'2021-04-04 18:42:48','标题6','简介6','http://localhost:8080/ssm1t1lz/upload/news_picture6.jpg','内容6'),(1617533236932,'2021-04-04 18:47:16','hdfh','fdhhda','http://localhost:8080/ssm1t1lz/upload/1617533232146.jpg','<p>ahfdhfhsfd</p>');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','xmew3pw4uqgkj16n25b6fpg3twt0yxx2','2021-04-04 18:43:57','2021-04-04 19:44:13');

/*Table structure for table `tushuleixing` */

DROP TABLE IF EXISTS `tushuleixing`;

CREATE TABLE `tushuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushuleixing` varchar(200) DEFAULT NULL COMMENT '图书类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617533161486 DEFAULT CHARSET=utf8 COMMENT='图书类型';

/*Data for the table `tushuleixing` */

insert  into `tushuleixing`(`id`,`addtime`,`tushuleixing`) values (31,'2021-04-04 18:42:48','图书类型12'),(33,'2021-04-04 18:42:48','图书类型3'),(34,'2021-04-04 18:42:48','图书类型4'),(35,'2021-04-04 18:42:48','图书类型5'),(36,'2021-04-04 18:42:48','图书类型6'),(1617533161485,'2021-04-04 18:46:00','58');

/*Table structure for table `tushuxinxi` */

DROP TABLE IF EXISTS `tushuxinxi`;

CREATE TABLE `tushuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushumingcheng` varchar(200) NOT NULL COMMENT '图书名称',
  `neirongguanjianci` varchar(200) DEFAULT NULL COMMENT '内容关键词',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushuleixing` varchar(200) NOT NULL COMMENT '图书类型',
  `tushujianjie` varchar(200) DEFAULT NULL COMMENT '图书简介',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `tushushangchuan` varchar(200) DEFAULT NULL COMMENT '图书上传',
  `tushuxiazai` varchar(200) DEFAULT NULL COMMENT '图书下载',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617533139244 DEFAULT CHARSET=utf8 COMMENT='图书信息';

/*Data for the table `tushuxinxi` */

insert  into `tushuxinxi`(`id`,`addtime`,`tushumingcheng`,`neirongguanjianci`,`tushubianhao`,`tushuleixing`,`tushujianjie`,`tupian`,`tushushangchuan`,`tushuxiazai`) values (21,'2021-04-04 18:42:48','图书名称12','内容关键词12','图书编号12','图书类型2','图书简介12','http://localhost:8080/ssm1t1lz/upload/tushuxinxi_tupian1.jpg,http://localhost:8080/ssm1t1lz/upload/1617533090611.png','http://localhost:8080/ssm1t1lz/upload/tushuxinxi_tushushangchuan1.jpg,http://localhost:8080/ssm1t1lz/upload/1617533095342.jpg','http://localhost:8080/ssm1t1lz/upload/1617533101966.png'),(23,'2021-04-04 18:42:48','图书名称3','内容关键词3','图书编号3','图书类型3','图书简介3','http://localhost:8080/ssm1t1lz/upload/tushuxinxi_tupian3.jpg','http://localhost:8080/ssm1t1lz/upload/tushuxinxi_tushushangchuan3.jpg',''),(24,'2021-04-04 18:42:48','图书名称4','内容关键词4','图书编号4','图书类型4','图书简介4','http://localhost:8080/ssm1t1lz/upload/tushuxinxi_tupian4.jpg','http://localhost:8080/ssm1t1lz/upload/tushuxinxi_tushushangchuan4.jpg',''),(25,'2021-04-04 18:42:48','图书名称5','内容关键词5','图书编号5','图书类型5','图书简介5','http://localhost:8080/ssm1t1lz/upload/tushuxinxi_tupian5.jpg','http://localhost:8080/ssm1t1lz/upload/tushuxinxi_tushushangchuan5.jpg',''),(26,'2021-04-04 18:42:48','图书名称6','内容关键词6','图书编号6','图书类型6','图书简介6','http://localhost:8080/ssm1t1lz/upload/tushuxinxi_tupian6.jpg','http://localhost:8080/ssm1t1lz/upload/tushuxinxi_tushushangchuan6.jpg',''),(1617533139243,'2021-04-04 18:45:38','24','24','24','图书类型3','24','http://localhost:8080/ssm1t1lz/upload/1617533128619.jpg','http://localhost:8080/ssm1t1lz/upload/1617533133178.jpg','http://localhost:8080/ssm1t1lz/upload/1617533136306.jpg');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo1','abo','管理员','2021-04-04 18:42:48');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (11,'2021-04-04 18:42:48','用户1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/ssm1t1lz/upload/yonghu_touxiang1.jpg'),(12,'2021-04-04 18:42:48','用户2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/ssm1t1lz/upload/yonghu_touxiang2.jpg'),(13,'2021-04-04 18:42:48','用户3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/ssm1t1lz/upload/yonghu_touxiang3.jpg'),(14,'2021-04-04 18:42:48','用户4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/ssm1t1lz/upload/yonghu_touxiang4.jpg'),(15,'2021-04-04 18:42:48','用户5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/ssm1t1lz/upload/yonghu_touxiang5.jpg'),(16,'2021-04-04 18:42:48','用户6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/ssm1t1lz/upload/yonghu_touxiang6.jpg');

/*Table structure for table `yuedujilu` */

DROP TABLE IF EXISTS `yuedujilu`;

CREATE TABLE `yuedujilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `yuedushijian` datetime DEFAULT NULL COMMENT '阅读时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `yuedujindu` varchar(200) DEFAULT NULL COMMENT '阅读进度',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='阅读记录';

/*Data for the table `yuedujilu` */

insert  into `yuedujilu`(`id`,`addtime`,`tushumingcheng`,`tushubianhao`,`tupian`,`yuedushijian`,`zhanghao`,`xingming`,`yuedujindu`) values (41,'2021-04-04 18:42:48','图书名称1','图书编号1','http://localhost:8080/ssm1t1lz/upload/yuedujilu_tupian1.jpg','2021-04-04 18:42:48','账号1','姓名1','阅读进度1'),(42,'2021-04-04 18:42:48','图书名称2','图书编号2','http://localhost:8080/ssm1t1lz/upload/yuedujilu_tupian2.jpg','2021-04-04 18:42:48','账号2','姓名2','阅读进度2'),(43,'2021-04-04 18:42:48','图书名称3','图书编号3','http://localhost:8080/ssm1t1lz/upload/yuedujilu_tupian3.jpg','2021-04-04 18:42:48','账号3','姓名3','阅读进度3'),(44,'2021-04-04 18:42:48','图书名称4','图书编号4','http://localhost:8080/ssm1t1lz/upload/yuedujilu_tupian4.jpg','2021-04-04 18:42:48','账号4','姓名4','阅读进度4'),(45,'2021-04-04 18:42:48','图书名称5','图书编号5','http://localhost:8080/ssm1t1lz/upload/yuedujilu_tupian5.jpg','2021-04-04 18:42:48','账号5','姓名5','阅读进度5'),(46,'2021-04-04 18:42:48','图书名称6','图书编号6','http://localhost:8080/ssm1t1lz/upload/yuedujilu_tupian6.jpg','2021-04-04 18:42:48','账号6','姓名6','阅读进度6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

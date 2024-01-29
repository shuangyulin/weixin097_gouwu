/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - thinkphp5cj1e5
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`thinkphp5cj1e5` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `thinkphp5cj1e5`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-05-12 21:18:44',1,'宇宙银河系金星1号','金某','13823888881','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (2,'2021-05-12 21:18:44',2,'宇宙银河系木星1号','木某','13823888882','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (3,'2021-05-12 21:18:44',3,'宇宙银河系水星1号','水某','13823888883','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (4,'2021-05-12 21:18:44',4,'宇宙银河系火星1号','火某','13823888884','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (5,'2021-05-12 21:18:44',5,'宇宙银河系土星1号','土某','13823888885','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (6,'2021-05-12 21:18:44',6,'宇宙银河系月球1号','月某','13823888886','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'jiajuxinpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/thinkphp5cj1e5/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/thinkphp5cj1e5/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/thinkphp5cj1e5/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussjiajuxinpin` */

DROP TABLE IF EXISTS `discussjiajuxinpin`;

CREATE TABLE `discussjiajuxinpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='家具新品评论表';

/*Data for the table `discussjiajuxinpin` */

insert  into `discussjiajuxinpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (91,'2021-05-12 21:18:44',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussjiajuxinpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (92,'2021-05-12 21:18:44',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussjiajuxinpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (93,'2021-05-12 21:18:44',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussjiajuxinpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (94,'2021-05-12 21:18:44',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussjiajuxinpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (95,'2021-05-12 21:18:44',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussjiajuxinpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (96,'2021-05-12 21:18:44',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `jiajufenlei` */

DROP TABLE IF EXISTS `jiajufenlei`;

CREATE TABLE `jiajufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiajufenlei` varchar(200) DEFAULT NULL COMMENT '家具分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='家具分类';

/*Data for the table `jiajufenlei` */

insert  into `jiajufenlei`(`id`,`addtime`,`jiajufenlei`) values (21,'2021-05-12 21:18:44','家具分类1');
insert  into `jiajufenlei`(`id`,`addtime`,`jiajufenlei`) values (22,'2021-05-12 21:18:44','家具分类2');
insert  into `jiajufenlei`(`id`,`addtime`,`jiajufenlei`) values (23,'2021-05-12 21:18:44','家具分类3');
insert  into `jiajufenlei`(`id`,`addtime`,`jiajufenlei`) values (24,'2021-05-12 21:18:44','家具分类4');
insert  into `jiajufenlei`(`id`,`addtime`,`jiajufenlei`) values (25,'2021-05-12 21:18:44','家具分类5');
insert  into `jiajufenlei`(`id`,`addtime`,`jiajufenlei`) values (26,'2021-05-12 21:18:44','家具分类6');

/*Table structure for table `jiajuxinpin` */

DROP TABLE IF EXISTS `jiajuxinpin`;

CREATE TABLE `jiajuxinpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiajumingcheng` varchar(200) DEFAULT NULL COMMENT '家具名称',
  `jiajufenlei` varchar(200) DEFAULT NULL COMMENT '家具分类',
  `jiajutupian` varchar(200) DEFAULT NULL COMMENT '家具图片',
  `jiajuxiangqing` longtext COMMENT '家具详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='家具新品';

/*Data for the table `jiajuxinpin` */

insert  into `jiajuxinpin`(`id`,`addtime`,`jiajumingcheng`,`jiajufenlei`,`jiajutupian`,`jiajuxiangqing`,`thumbsupnum`,`crazilynum`,`price`) values (31,'2021-05-12 21:18:44','家具名称1','家具分类1','http://localhost:8080/thinkphp5cj1e5/upload/jiajuxinpin_jiajutupian1.jpg','家具详情1',1,1,99.9);
insert  into `jiajuxinpin`(`id`,`addtime`,`jiajumingcheng`,`jiajufenlei`,`jiajutupian`,`jiajuxiangqing`,`thumbsupnum`,`crazilynum`,`price`) values (32,'2021-05-12 21:18:44','家具名称2','家具分类2','http://localhost:8080/thinkphp5cj1e5/upload/jiajuxinpin_jiajutupian2.jpg','家具详情2',2,2,99.9);
insert  into `jiajuxinpin`(`id`,`addtime`,`jiajumingcheng`,`jiajufenlei`,`jiajutupian`,`jiajuxiangqing`,`thumbsupnum`,`crazilynum`,`price`) values (33,'2021-05-12 21:18:44','家具名称3','家具分类3','http://localhost:8080/thinkphp5cj1e5/upload/jiajuxinpin_jiajutupian3.jpg','家具详情3',3,3,99.9);
insert  into `jiajuxinpin`(`id`,`addtime`,`jiajumingcheng`,`jiajufenlei`,`jiajutupian`,`jiajuxiangqing`,`thumbsupnum`,`crazilynum`,`price`) values (34,'2021-05-12 21:18:44','家具名称4','家具分类4','http://localhost:8080/thinkphp5cj1e5/upload/jiajuxinpin_jiajutupian4.jpg','家具详情4',4,4,99.9);
insert  into `jiajuxinpin`(`id`,`addtime`,`jiajumingcheng`,`jiajufenlei`,`jiajutupian`,`jiajuxiangqing`,`thumbsupnum`,`crazilynum`,`price`) values (35,'2021-05-12 21:18:44','家具名称5','家具分类5','http://localhost:8080/thinkphp5cj1e5/upload/jiajuxinpin_jiajutupian5.jpg','家具详情5',5,5,99.9);
insert  into `jiajuxinpin`(`id`,`addtime`,`jiajumingcheng`,`jiajufenlei`,`jiajutupian`,`jiajuxiangqing`,`thumbsupnum`,`crazilynum`,`price`) values (36,'2021-05-12 21:18:44','家具名称6','家具分类6','http://localhost:8080/thinkphp5cj1e5/upload/jiajuxinpin_jiajutupian6.jpg','家具详情6',6,6,99.9);

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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='家具广告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (81,'2021-05-12 21:18:44','标题1','简介1','http://localhost:8080/thinkphp5cj1e5/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (82,'2021-05-12 21:18:44','标题2','简介2','http://localhost:8080/thinkphp5cj1e5/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (83,'2021-05-12 21:18:44','标题3','简介3','http://localhost:8080/thinkphp5cj1e5/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (84,'2021-05-12 21:18:44','标题4','简介4','http://localhost:8080/thinkphp5cj1e5/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (85,'2021-05-12 21:18:44','标题5','简介5','http://localhost:8080/thinkphp5cj1e5/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (86,'2021-05-12 21:18:44','标题6','简介6','http://localhost:8080/thinkphp5cj1e5/upload/news_picture6.jpg','内容6');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'jiajuxinpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-12 21:18:44');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghu` varchar(200) NOT NULL COMMENT '用户',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`yonghu`,`xingbie`,`shouji`,`youxiang`,`touxiang`,`money`) values (11,'2021-05-12 21:18:44','用户1','123456','用户1','男','13823888881','773890001@qq.com','http://localhost:8080/thinkphp5cj1e5/upload/yonghu_touxiang1.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`yonghu`,`xingbie`,`shouji`,`youxiang`,`touxiang`,`money`) values (12,'2021-05-12 21:18:44','用户2','123456','用户2','男','13823888882','773890002@qq.com','http://localhost:8080/thinkphp5cj1e5/upload/yonghu_touxiang2.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`yonghu`,`xingbie`,`shouji`,`youxiang`,`touxiang`,`money`) values (13,'2021-05-12 21:18:44','用户3','123456','用户3','男','13823888883','773890003@qq.com','http://localhost:8080/thinkphp5cj1e5/upload/yonghu_touxiang3.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`yonghu`,`xingbie`,`shouji`,`youxiang`,`touxiang`,`money`) values (14,'2021-05-12 21:18:44','用户4','123456','用户4','男','13823888884','773890004@qq.com','http://localhost:8080/thinkphp5cj1e5/upload/yonghu_touxiang4.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`yonghu`,`xingbie`,`shouji`,`youxiang`,`touxiang`,`money`) values (15,'2021-05-12 21:18:44','用户5','123456','用户5','男','13823888885','773890005@qq.com','http://localhost:8080/thinkphp5cj1e5/upload/yonghu_touxiang5.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`yonghu`,`xingbie`,`shouji`,`youxiang`,`touxiang`,`money`) values (16,'2021-05-12 21:18:44','用户6','123456','用户6','男','13823888886','773890006@qq.com','http://localhost:8080/thinkphp5cj1e5/upload/yonghu_touxiang6.jpg',100);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

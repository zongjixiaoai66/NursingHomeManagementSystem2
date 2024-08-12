/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t334`;
CREATE DATABASE IF NOT EXISTS `t334` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t334`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'upload/picture1.jpg'),
	(2, 'picture2', 'upload/picture2.jpg'),
	(3, 'picture3', 'upload/picture3.jpg');

DROP TABLE IF EXISTS `feiyongxinxi`;
CREATE TABLE IF NOT EXISTS `feiyongxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanhao` varchar(200) DEFAULT NULL COMMENT '订单号',
  `jiaofeileixing` varchar(200) DEFAULT NULL COMMENT '缴费类型',
  `feiyong` varchar(200) DEFAULT NULL COMMENT '费用',
  `laorenbianhao` varchar(200) DEFAULT NULL COMMENT '老人编号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `jiashuxingming` varchar(200) DEFAULT NULL COMMENT '家属姓名',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanhao` (`dingdanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb3 COMMENT='费用信息';

DELETE FROM `feiyongxinxi`;
INSERT INTO `feiyongxinxi` (`id`, `addtime`, `dingdanhao`, `jiaofeileixing`, `feiyong`, `laorenbianhao`, `laorenxingming`, `jiashuxingming`, `dengjishijian`, `ispay`) VALUES
	(81, '2023-05-04 14:15:55', '1111111111', '缴费类型1', '费用1', '老人编号1', '老人姓名1', '家属姓名1', '2023-05-04 22:15:55', '未支付'),
	(82, '2023-05-04 14:15:55', '2222222222', '缴费类型2', '费用2', '老人编号2', '老人姓名2', '家属姓名2', '2023-05-04 22:15:55', '未支付'),
	(83, '2023-05-04 14:15:55', '3333333333', '缴费类型3', '费用3', '老人编号3', '老人姓名3', '家属姓名3', '2023-05-04 22:15:55', '未支付'),
	(84, '2023-05-04 14:15:55', '4444444444', '缴费类型4', '费用4', '老人编号4', '老人姓名4', '家属姓名4', '2023-05-04 22:15:55', '未支付'),
	(85, '2023-05-04 14:15:55', '5555555555', '缴费类型5', '费用5', '老人编号5', '老人姓名5', '家属姓名5', '2023-05-04 22:15:55', '未支付'),
	(86, '2023-05-04 14:15:55', '6666666666', '缴费类型6', '费用6', '老人编号6', '老人姓名6', '家属姓名6', '2023-05-04 22:15:55', '未支付'),
	(87, '2023-05-04 14:15:55', '7777777777', '缴费类型7', '费用7', '老人编号7', '老人姓名7', '家属姓名7', '2023-05-04 22:15:55', '未支付'),
	(88, '2023-05-04 14:15:55', '8888888888', '缴费类型8', '费用8', '老人编号8', '老人姓名8', '家属姓名8', '2023-05-04 22:15:55', '未支付');

DROP TABLE IF EXISTS `fuwugongdan`;
CREATE TABLE IF NOT EXISTS `fuwugongdan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwuxiangmu` varchar(200) DEFAULT NULL COMMENT '服务项目',
  `fengmian` longtext COMMENT '封面',
  `yihugonghao` varchar(200) DEFAULT NULL COMMENT '医护工号',
  `yihuxingming` varchar(200) DEFAULT NULL COMMENT '医护姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `laorenbianhao` varchar(200) DEFAULT NULL COMMENT '老人编号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `shijianduan` varchar(200) DEFAULT NULL COMMENT '时间段',
  `fuwuyaoqiu` longtext COMMENT '服务要求',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb3 COMMENT='服务工单';

DELETE FROM `fuwugongdan`;
INSERT INTO `fuwugongdan` (`id`, `addtime`, `fuwuxiangmu`, `fengmian`, `yihugonghao`, `yihuxingming`, `lianxidianhua`, `laorenbianhao`, `laorenxingming`, `shoujihao`, `shijianduan`, `fuwuyaoqiu`) VALUES
	(51, '2023-05-04 14:15:55', '服务项目1', 'upload/fuwugongdan_fengmian1.jpg,upload/fuwugongdan_fengmian2.jpg,upload/fuwugongdan_fengmian3.jpg', '医护工号1', '医护姓名1', '13823888881', '老人编号1', '老人姓名1', '13823888881', '时间段1', '服务要求1'),
	(52, '2023-05-04 14:15:55', '服务项目2', 'upload/fuwugongdan_fengmian2.jpg,upload/fuwugongdan_fengmian3.jpg,upload/fuwugongdan_fengmian4.jpg', '医护工号2', '医护姓名2', '13823888882', '老人编号2', '老人姓名2', '13823888882', '时间段2', '服务要求2'),
	(53, '2023-05-04 14:15:55', '服务项目3', 'upload/fuwugongdan_fengmian3.jpg,upload/fuwugongdan_fengmian4.jpg,upload/fuwugongdan_fengmian5.jpg', '医护工号3', '医护姓名3', '13823888883', '老人编号3', '老人姓名3', '13823888883', '时间段3', '服务要求3'),
	(54, '2023-05-04 14:15:55', '服务项目4', 'upload/fuwugongdan_fengmian4.jpg,upload/fuwugongdan_fengmian5.jpg,upload/fuwugongdan_fengmian6.jpg', '医护工号4', '医护姓名4', '13823888884', '老人编号4', '老人姓名4', '13823888884', '时间段4', '服务要求4'),
	(55, '2023-05-04 14:15:55', '服务项目5', 'upload/fuwugongdan_fengmian5.jpg,upload/fuwugongdan_fengmian6.jpg,upload/fuwugongdan_fengmian7.jpg', '医护工号5', '医护姓名5', '13823888885', '老人编号5', '老人姓名5', '13823888885', '时间段5', '服务要求5'),
	(56, '2023-05-04 14:15:55', '服务项目6', 'upload/fuwugongdan_fengmian6.jpg,upload/fuwugongdan_fengmian7.jpg,upload/fuwugongdan_fengmian8.jpg', '医护工号6', '医护姓名6', '13823888886', '老人编号6', '老人姓名6', '13823888886', '时间段6', '服务要求6'),
	(57, '2023-05-04 14:15:55', '服务项目7', 'upload/fuwugongdan_fengmian7.jpg,upload/fuwugongdan_fengmian8.jpg,upload/fuwugongdan_fengmian9.jpg', '医护工号7', '医护姓名7', '13823888887', '老人编号7', '老人姓名7', '13823888887', '时间段7', '服务要求7'),
	(58, '2023-05-04 14:15:55', '服务项目8', 'upload/fuwugongdan_fengmian8.jpg,upload/fuwugongdan_fengmian9.jpg,upload/fuwugongdan_fengmian10.jpg', '医护工号8', '医护姓名8', '13823888888', '老人编号8', '老人姓名8', '13823888888', '时间段8', '服务要求8');

DROP TABLE IF EXISTS `hulifengxian`;
CREATE TABLE IF NOT EXISTS `hulifengxian` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laorenbianhao` varchar(200) DEFAULT NULL COMMENT '老人编号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `laorenxingbie` varchar(200) DEFAULT NULL COMMENT '老人性别',
  `laorennianling` int DEFAULT NULL COMMENT '老人年龄',
  `fangjianhao` varchar(200) DEFAULT NULL COMMENT '房间号',
  `chuangweihao` varchar(200) DEFAULT NULL COMMENT '床位号',
  `tiwen` varchar(200) DEFAULT NULL COMMENT '体温',
  `yihugonghao` varchar(200) DEFAULT NULL COMMENT '医护工号',
  `yihuxingming` varchar(200) DEFAULT NULL COMMENT '医护姓名',
  `jiankangzhuangkuang` varchar(200) DEFAULT NULL COMMENT '健康状况',
  `hulifengxian` longtext COMMENT '护理风险',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb3 COMMENT='护理风险';

DELETE FROM `hulifengxian`;
INSERT INTO `hulifengxian` (`id`, `addtime`, `laorenbianhao`, `laorenxingming`, `laorenxingbie`, `laorennianling`, `fangjianhao`, `chuangweihao`, `tiwen`, `yihugonghao`, `yihuxingming`, `jiankangzhuangkuang`, `hulifengxian`) VALUES
	(91, '2023-05-04 14:15:55', '老人编号1', '老人姓名1', '老人性别1', 1, '房间号1', '床位号1', '体温1', '医护工号1', '医护姓名1', '良好', '护理风险1'),
	(92, '2023-05-04 14:15:55', '老人编号2', '老人姓名2', '老人性别2', 2, '房间号2', '床位号2', '体温2', '医护工号2', '医护姓名2', '良好', '护理风险2'),
	(93, '2023-05-04 14:15:55', '老人编号3', '老人姓名3', '老人性别3', 3, '房间号3', '床位号3', '体温3', '医护工号3', '医护姓名3', '良好', '护理风险3'),
	(94, '2023-05-04 14:15:55', '老人编号4', '老人姓名4', '老人性别4', 4, '房间号4', '床位号4', '体温4', '医护工号4', '医护姓名4', '良好', '护理风险4'),
	(95, '2023-05-04 14:15:55', '老人编号5', '老人姓名5', '老人性别5', 5, '房间号5', '床位号5', '体温5', '医护工号5', '医护姓名5', '良好', '护理风险5'),
	(96, '2023-05-04 14:15:55', '老人编号6', '老人姓名6', '老人性别6', 6, '房间号6', '床位号6', '体温6', '医护工号6', '医护姓名6', '良好', '护理风险6'),
	(97, '2023-05-04 14:15:55', '老人编号7', '老人姓名7', '老人性别7', 7, '房间号7', '床位号7', '体温7', '医护工号7', '医护姓名7', '良好', '护理风险7'),
	(98, '2023-05-04 14:15:55', '老人编号8', '老人姓名8', '老人性别8', 8, '房间号8', '床位号8', '体温8', '医护工号8', '医护姓名8', '良好', '护理风险8');

DROP TABLE IF EXISTS `hulijilu`;
CREATE TABLE IF NOT EXISTS `hulijilu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laorenbianhao` varchar(200) DEFAULT NULL COMMENT '老人编号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `laorenxingbie` varchar(200) DEFAULT NULL COMMENT '老人性别',
  `laorennianling` int DEFAULT NULL COMMENT '老人年龄',
  `fangjianhao` varchar(200) DEFAULT NULL COMMENT '房间号',
  `chuangweihao` varchar(200) DEFAULT NULL COMMENT '床位号',
  `xueya` varchar(200) DEFAULT NULL COMMENT '血压',
  `xinlv` varchar(200) DEFAULT NULL COMMENT '心率',
  `tiwen` varchar(200) DEFAULT NULL COMMENT '体温',
  `shangcesuocishu` varchar(200) DEFAULT NULL COMMENT '上厕所次数',
  `chuangdangenghuanshijian` datetime DEFAULT NULL COMMENT '床单更换时间',
  `jiankangzhuangkuang` varchar(200) DEFAULT NULL COMMENT '健康状况',
  `yihugonghao` varchar(200) DEFAULT NULL COMMENT '医护工号',
  `yihuxingming` varchar(200) DEFAULT NULL COMMENT '医护姓名',
  `yihudengji` varchar(200) DEFAULT NULL COMMENT '医护等级',
  `dengjishijian` datetime DEFAULT NULL COMMENT '等级时间',
  `huliqingkuang` longtext COMMENT '护理情况',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb3 COMMENT='护理记录';

DELETE FROM `hulijilu`;
INSERT INTO `hulijilu` (`id`, `addtime`, `laorenbianhao`, `laorenxingming`, `laorenxingbie`, `laorennianling`, `fangjianhao`, `chuangweihao`, `xueya`, `xinlv`, `tiwen`, `shangcesuocishu`, `chuangdangenghuanshijian`, `jiankangzhuangkuang`, `yihugonghao`, `yihuxingming`, `yihudengji`, `dengjishijian`, `huliqingkuang`) VALUES
	(71, '2023-05-04 14:15:55', '老人编号1', '老人姓名1', '老人性别1', 1, '房间号1', '床位号1', '血压1', '心率1', '体温1', '上厕所次数1', '2023-05-04 22:15:55', '良好', '医护工号1', '医护姓名1', '医护等级1', '2023-05-04 22:15:55', '护理情况1'),
	(72, '2023-05-04 14:15:55', '老人编号2', '老人姓名2', '老人性别2', 2, '房间号2', '床位号2', '血压2', '心率2', '体温2', '上厕所次数2', '2023-05-04 22:15:55', '良好', '医护工号2', '医护姓名2', '医护等级2', '2023-05-04 22:15:55', '护理情况2'),
	(73, '2023-05-04 14:15:55', '老人编号3', '老人姓名3', '老人性别3', 3, '房间号3', '床位号3', '血压3', '心率3', '体温3', '上厕所次数3', '2023-05-04 22:15:55', '良好', '医护工号3', '医护姓名3', '医护等级3', '2023-05-04 22:15:55', '护理情况3'),
	(74, '2023-05-04 14:15:55', '老人编号4', '老人姓名4', '老人性别4', 4, '房间号4', '床位号4', '血压4', '心率4', '体温4', '上厕所次数4', '2023-05-04 22:15:55', '良好', '医护工号4', '医护姓名4', '医护等级4', '2023-05-04 22:15:55', '护理情况4'),
	(75, '2023-05-04 14:15:55', '老人编号5', '老人姓名5', '老人性别5', 5, '房间号5', '床位号5', '血压5', '心率5', '体温5', '上厕所次数5', '2023-05-04 22:15:55', '良好', '医护工号5', '医护姓名5', '医护等级5', '2023-05-04 22:15:55', '护理情况5'),
	(76, '2023-05-04 14:15:55', '老人编号6', '老人姓名6', '老人性别6', 6, '房间号6', '床位号6', '血压6', '心率6', '体温6', '上厕所次数6', '2023-05-04 22:15:55', '良好', '医护工号6', '医护姓名6', '医护等级6', '2023-05-04 22:15:55', '护理情况6'),
	(77, '2023-05-04 14:15:55', '老人编号7', '老人姓名7', '老人性别7', 7, '房间号7', '床位号7', '血压7', '心率7', '体温7', '上厕所次数7', '2023-05-04 22:15:55', '良好', '医护工号7', '医护姓名7', '医护等级7', '2023-05-04 22:15:55', '护理情况7'),
	(78, '2023-05-04 14:15:55', '老人编号8', '老人姓名8', '老人性别8', 8, '房间号8', '床位号8', '血压8', '心率8', '体温8', '上厕所次数8', '2023-05-04 22:15:55', '良好', '医护工号8', '医护姓名8', '医护等级8', '2023-05-04 22:15:55', '护理情况8');

DROP TABLE IF EXISTS `jiankangdangan`;
CREATE TABLE IF NOT EXISTS `jiankangdangan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `danganbianhao` varchar(200) DEFAULT NULL COMMENT '档案编号',
  `laorenbianhao` varchar(200) DEFAULT NULL COMMENT '老人编号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `laorenxingbie` varchar(200) DEFAULT NULL COMMENT '老人性别',
  `laorennianling` varchar(200) DEFAULT NULL COMMENT '老人年龄',
  `shentiqingkuang` longtext COMMENT '身体情况',
  `jiazuyichuanshi` longtext COMMENT '家族遗传史',
  `shenghuojinji` longtext COMMENT '生活禁忌',
  `yaowuguominshi` longtext COMMENT '药物过敏史',
  `gengxinshijian` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `danganbianhao` (`danganbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb3 COMMENT='健康档案';

DELETE FROM `jiankangdangan`;
INSERT INTO `jiankangdangan` (`id`, `addtime`, `danganbianhao`, `laorenbianhao`, `laorenxingming`, `laorenxingbie`, `laorennianling`, `shentiqingkuang`, `jiazuyichuanshi`, `shenghuojinji`, `yaowuguominshi`, `gengxinshijian`) VALUES
	(61, '2023-05-04 14:15:55', '1111111111', '老人编号1', '老人姓名1', '老人性别1', '老人年龄1', '身体情况1', '家族遗传史1', '生活禁忌1', '药物过敏史1', '2023-05-04 22:15:55'),
	(62, '2023-05-04 14:15:55', '2222222222', '老人编号2', '老人姓名2', '老人性别2', '老人年龄2', '身体情况2', '家族遗传史2', '生活禁忌2', '药物过敏史2', '2023-05-04 22:15:55'),
	(63, '2023-05-04 14:15:55', '3333333333', '老人编号3', '老人姓名3', '老人性别3', '老人年龄3', '身体情况3', '家族遗传史3', '生活禁忌3', '药物过敏史3', '2023-05-04 22:15:55'),
	(64, '2023-05-04 14:15:55', '4444444444', '老人编号4', '老人姓名4', '老人性别4', '老人年龄4', '身体情况4', '家族遗传史4', '生活禁忌4', '药物过敏史4', '2023-05-04 22:15:55'),
	(65, '2023-05-04 14:15:55', '5555555555', '老人编号5', '老人姓名5', '老人性别5', '老人年龄5', '身体情况5', '家族遗传史5', '生活禁忌5', '药物过敏史5', '2023-05-04 22:15:55'),
	(66, '2023-05-04 14:15:55', '6666666666', '老人编号6', '老人姓名6', '老人性别6', '老人年龄6', '身体情况6', '家族遗传史6', '生活禁忌6', '药物过敏史6', '2023-05-04 22:15:55'),
	(67, '2023-05-04 14:15:55', '7777777777', '老人编号7', '老人姓名7', '老人性别7', '老人年龄7', '身体情况7', '家族遗传史7', '生活禁忌7', '药物过敏史7', '2023-05-04 22:15:55'),
	(68, '2023-05-04 14:15:55', '8888888888', '老人编号8', '老人姓名8', '老人性别8', '老人年龄8', '身体情况8', '家族遗传史8', '生活禁忌8', '药物过敏史8', '2023-05-04 22:15:55');

DROP TABLE IF EXISTS `jiashutanwang`;
CREATE TABLE IF NOT EXISTS `jiashutanwang` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laorenbianhao` varchar(200) DEFAULT NULL COMMENT '老人编号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `jiashuxingming` varchar(200) DEFAULT NULL COMMENT '家属姓名',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jiankangma` longtext COMMENT '健康码',
  `xingchengma` longtext COMMENT '行程码',
  `hesuanjiancejieguo` varchar(200) DEFAULT NULL COMMENT '核酸检测结果',
  `tanwangshijian` date DEFAULT NULL COMMENT '探望时间',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb3 COMMENT='家属探望';

DELETE FROM `jiashutanwang`;
INSERT INTO `jiashutanwang` (`id`, `addtime`, `laorenbianhao`, `laorenxingming`, `jiashuxingming`, `shoujihao`, `jiankangma`, `xingchengma`, `hesuanjiancejieguo`, `tanwangshijian`, `beizhu`) VALUES
	(171, '2023-05-04 14:15:55', '老人编号1', '老人姓名1', '家属姓名1', '手机号1', 'upload/jiashutanwang_jiankangma1.jpg,upload/jiashutanwang_jiankangma2.jpg,upload/jiashutanwang_jiankangma3.jpg', 'upload/jiashutanwang_xingchengma1.jpg,upload/jiashutanwang_xingchengma2.jpg,upload/jiashutanwang_xingchengma3.jpg', '阴性', '2023-05-04', '备注1'),
	(172, '2023-05-04 14:15:55', '老人编号2', '老人姓名2', '家属姓名2', '手机号2', 'upload/jiashutanwang_jiankangma2.jpg,upload/jiashutanwang_jiankangma3.jpg,upload/jiashutanwang_jiankangma4.jpg', 'upload/jiashutanwang_xingchengma2.jpg,upload/jiashutanwang_xingchengma3.jpg,upload/jiashutanwang_xingchengma4.jpg', '阴性', '2023-05-04', '备注2'),
	(173, '2023-05-04 14:15:55', '老人编号3', '老人姓名3', '家属姓名3', '手机号3', 'upload/jiashutanwang_jiankangma3.jpg,upload/jiashutanwang_jiankangma4.jpg,upload/jiashutanwang_jiankangma5.jpg', 'upload/jiashutanwang_xingchengma3.jpg,upload/jiashutanwang_xingchengma4.jpg,upload/jiashutanwang_xingchengma5.jpg', '阴性', '2023-05-04', '备注3'),
	(174, '2023-05-04 14:15:55', '老人编号4', '老人姓名4', '家属姓名4', '手机号4', 'upload/jiashutanwang_jiankangma4.jpg,upload/jiashutanwang_jiankangma5.jpg,upload/jiashutanwang_jiankangma6.jpg', 'upload/jiashutanwang_xingchengma4.jpg,upload/jiashutanwang_xingchengma5.jpg,upload/jiashutanwang_xingchengma6.jpg', '阴性', '2023-05-04', '备注4'),
	(175, '2023-05-04 14:15:55', '老人编号5', '老人姓名5', '家属姓名5', '手机号5', 'upload/jiashutanwang_jiankangma5.jpg,upload/jiashutanwang_jiankangma6.jpg,upload/jiashutanwang_jiankangma7.jpg', 'upload/jiashutanwang_xingchengma5.jpg,upload/jiashutanwang_xingchengma6.jpg,upload/jiashutanwang_xingchengma7.jpg', '阴性', '2023-05-04', '备注5'),
	(176, '2023-05-04 14:15:55', '老人编号6', '老人姓名6', '家属姓名6', '手机号6', 'upload/jiashutanwang_jiankangma6.jpg,upload/jiashutanwang_jiankangma7.jpg,upload/jiashutanwang_jiankangma8.jpg', 'upload/jiashutanwang_xingchengma6.jpg,upload/jiashutanwang_xingchengma7.jpg,upload/jiashutanwang_xingchengma8.jpg', '阴性', '2023-05-04', '备注6'),
	(177, '2023-05-04 14:15:55', '老人编号7', '老人姓名7', '家属姓名7', '手机号7', 'upload/jiashutanwang_jiankangma7.jpg,upload/jiashutanwang_jiankangma8.jpg,upload/jiashutanwang_jiankangma9.jpg', 'upload/jiashutanwang_xingchengma7.jpg,upload/jiashutanwang_xingchengma8.jpg,upload/jiashutanwang_xingchengma9.jpg', '阴性', '2023-05-04', '备注7'),
	(178, '2023-05-04 14:15:55', '老人编号8', '老人姓名8', '家属姓名8', '手机号8', 'upload/jiashutanwang_jiankangma8.jpg,upload/jiashutanwang_jiankangma9.jpg,upload/jiashutanwang_jiankangma10.jpg', 'upload/jiashutanwang_xingchengma8.jpg,upload/jiashutanwang_xingchengma9.jpg,upload/jiashutanwang_xingchengma10.jpg', '阴性', '2023-05-04', '备注8');

DROP TABLE IF EXISTS `laifangdengji`;
CREATE TABLE IF NOT EXISTS `laifangdengji` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laifangfenlei` varchar(200) DEFAULT NULL COMMENT '来访分类',
  `laifangshijian` date DEFAULT NULL COMMENT '来访时间',
  `laifangguocheng` longtext COMMENT '来访过程',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb3 COMMENT='来访登记';

DELETE FROM `laifangdengji`;
INSERT INTO `laifangdengji` (`id`, `addtime`, `laifangfenlei`, `laifangshijian`, `laifangguocheng`) VALUES
	(161, '2023-05-04 14:15:55', '志愿者', '2023-05-04', '来访过程1'),
	(162, '2023-05-04 14:15:55', '志愿者', '2023-05-04', '来访过程2'),
	(163, '2023-05-04 14:15:55', '志愿者', '2023-05-04', '来访过程3'),
	(164, '2023-05-04 14:15:55', '志愿者', '2023-05-04', '来访过程4'),
	(165, '2023-05-04 14:15:55', '志愿者', '2023-05-04', '来访过程5'),
	(166, '2023-05-04 14:15:55', '志愿者', '2023-05-04', '来访过程6'),
	(167, '2023-05-04 14:15:55', '志愿者', '2023-05-04', '来访过程7'),
	(168, '2023-05-04 14:15:55', '志愿者', '2023-05-04', '来访过程8');

DROP TABLE IF EXISTS `laoren`;
CREATE TABLE IF NOT EXISTS `laoren` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laorenbianhao` varchar(200) DEFAULT NULL COMMENT '老人编号',
  `laorenxingming` varchar(200) NOT NULL COMMENT '老人姓名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `laorenzhaopian` longtext COMMENT '老人照片',
  `laorenxingbie` varchar(200) DEFAULT NULL COMMENT '老人性别',
  `laorennianling` varchar(200) DEFAULT NULL COMMENT '老人年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiashuxingming` varchar(200) DEFAULT NULL COMMENT '家属姓名',
  `guanxi` varchar(200) DEFAULT NULL COMMENT '关系',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `laorenbianhao` (`laorenbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3 COMMENT='老人';

DELETE FROM `laoren`;
INSERT INTO `laoren` (`id`, `addtime`, `laorenbianhao`, `laorenxingming`, `mima`, `laorenzhaopian`, `laorenxingbie`, `laorennianling`, `lianxidianhua`, `jiashuxingming`, `guanxi`, `shoujihao`, `jiatingzhuzhi`) VALUES
	(31, '2023-05-04 14:15:55', '老人1', '老人姓名1', '123456', 'upload/laoren_laorenzhaopian1.jpg', '男', '老人年龄1', '13823888881', '家属姓名1', '关系1', '手机号1', '家庭住址1'),
	(32, '2023-05-04 14:15:55', '老人2', '老人姓名2', '123456', 'upload/laoren_laorenzhaopian2.jpg', '男', '老人年龄2', '13823888882', '家属姓名2', '关系2', '手机号2', '家庭住址2'),
	(33, '2023-05-04 14:15:55', '老人3', '老人姓名3', '123456', 'upload/laoren_laorenzhaopian3.jpg', '男', '老人年龄3', '13823888883', '家属姓名3', '关系3', '手机号3', '家庭住址3'),
	(34, '2023-05-04 14:15:55', '老人4', '老人姓名4', '123456', 'upload/laoren_laorenzhaopian4.jpg', '男', '老人年龄4', '13823888884', '家属姓名4', '关系4', '手机号4', '家庭住址4'),
	(35, '2023-05-04 14:15:55', '老人5', '老人姓名5', '123456', 'upload/laoren_laorenzhaopian5.jpg', '男', '老人年龄5', '13823888885', '家属姓名5', '关系5', '手机号5', '家庭住址5'),
	(36, '2023-05-04 14:15:55', '老人6', '老人姓名6', '123456', 'upload/laoren_laorenzhaopian6.jpg', '男', '老人年龄6', '13823888886', '家属姓名6', '关系6', '手机号6', '家庭住址6'),
	(37, '2023-05-04 14:15:55', '老人7', '老人姓名7', '123456', 'upload/laoren_laorenzhaopian7.jpg', '男', '老人年龄7', '13823888887', '家属姓名7', '关系7', '手机号7', '家庭住址7'),
	(38, '2023-05-04 14:15:55', '老人8', '老人姓名8', '123456', 'upload/laoren_laorenzhaopian8.jpg', '男', '老人年龄8', '13823888888', '家属姓名8', '关系8', '手机号8', '家庭住址8');

DROP TABLE IF EXISTS `qingjiashenqing`;
CREATE TABLE IF NOT EXISTS `qingjiashenqing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yihugonghao` varchar(200) DEFAULT NULL COMMENT '医护工号',
  `yihuxingming` varchar(200) DEFAULT NULL COMMENT '医护姓名',
  `qingjialeixing` varchar(200) DEFAULT NULL COMMENT '请假类型',
  `qishishijian` date DEFAULT NULL COMMENT '起始时间',
  `jieshushijian` date DEFAULT NULL COMMENT '结束时间',
  `qingjiashiyou` longtext COMMENT '请假事由',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8mb3 COMMENT='请假申请';

DELETE FROM `qingjiashenqing`;
INSERT INTO `qingjiashenqing` (`id`, `addtime`, `yihugonghao`, `yihuxingming`, `qingjialeixing`, `qishishijian`, `jieshushijian`, `qingjiashiyou`, `sfsh`, `shhf`) VALUES
	(181, '2023-05-04 14:15:55', '医护工号1', '医护姓名1', '事假', '2023-05-04', '2023-05-04', '请假事由1', '是', ''),
	(182, '2023-05-04 14:15:55', '医护工号2', '医护姓名2', '事假', '2023-05-04', '2023-05-04', '请假事由2', '是', ''),
	(183, '2023-05-04 14:15:55', '医护工号3', '医护姓名3', '事假', '2023-05-04', '2023-05-04', '请假事由3', '是', ''),
	(184, '2023-05-04 14:15:55', '医护工号4', '医护姓名4', '事假', '2023-05-04', '2023-05-04', '请假事由4', '是', ''),
	(185, '2023-05-04 14:15:55', '医护工号5', '医护姓名5', '事假', '2023-05-04', '2023-05-04', '请假事由5', '是', ''),
	(186, '2023-05-04 14:15:55', '医护工号6', '医护姓名6', '事假', '2023-05-04', '2023-05-04', '请假事由6', '是', ''),
	(187, '2023-05-04 14:15:55', '医护工号7', '医护姓名7', '事假', '2023-05-04', '2023-05-04', '请假事由7', '是', ''),
	(188, '2023-05-04 14:15:55', '医护工号8', '医护姓名8', '事假', '2023-05-04', '2023-05-04', '请假事由8', '是', '');

DROP TABLE IF EXISTS `shanshixinxi`;
CREATE TABLE IF NOT EXISTS `shanshixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `fengmian` longtext COMMENT '封面',
  `zaocan` varchar(200) DEFAULT NULL COMMENT '早餐',
  `wucan` varchar(200) DEFAULT NULL COMMENT '午餐',
  `wancan` varchar(200) DEFAULT NULL COMMENT '晚餐',
  `dianxin` varchar(200) DEFAULT NULL COMMENT '点心',
  `shuiguo` varchar(200) DEFAULT NULL COMMENT '水果',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb3 COMMENT='膳食信息';

DELETE FROM `shanshixinxi`;
INSERT INTO `shanshixinxi` (`id`, `addtime`, `biaoti`, `riqi`, `fengmian`, `zaocan`, `wucan`, `wancan`, `dianxin`, `shuiguo`) VALUES
	(101, '2023-05-04 14:15:55', '标题1', '2023-05-04', 'upload/shanshixinxi_fengmian1.jpg,upload/shanshixinxi_fengmian2.jpg,upload/shanshixinxi_fengmian3.jpg', '早餐1', '午餐1', '晚餐1', '点心1', '水果1'),
	(102, '2023-05-04 14:15:55', '标题2', '2023-05-04', 'upload/shanshixinxi_fengmian2.jpg,upload/shanshixinxi_fengmian3.jpg,upload/shanshixinxi_fengmian4.jpg', '早餐2', '午餐2', '晚餐2', '点心2', '水果2'),
	(103, '2023-05-04 14:15:55', '标题3', '2023-05-04', 'upload/shanshixinxi_fengmian3.jpg,upload/shanshixinxi_fengmian4.jpg,upload/shanshixinxi_fengmian5.jpg', '早餐3', '午餐3', '晚餐3', '点心3', '水果3'),
	(104, '2023-05-04 14:15:55', '标题4', '2023-05-04', 'upload/shanshixinxi_fengmian4.jpg,upload/shanshixinxi_fengmian5.jpg,upload/shanshixinxi_fengmian6.jpg', '早餐4', '午餐4', '晚餐4', '点心4', '水果4'),
	(105, '2023-05-04 14:15:55', '标题5', '2023-05-04', 'upload/shanshixinxi_fengmian5.jpg,upload/shanshixinxi_fengmian6.jpg,upload/shanshixinxi_fengmian7.jpg', '早餐5', '午餐5', '晚餐5', '点心5', '水果5'),
	(106, '2023-05-04 14:15:55', '标题6', '2023-05-04', 'upload/shanshixinxi_fengmian6.jpg,upload/shanshixinxi_fengmian7.jpg,upload/shanshixinxi_fengmian8.jpg', '早餐6', '午餐6', '晚餐6', '点心6', '水果6'),
	(107, '2023-05-04 14:15:55', '标题7', '2023-05-04', 'upload/shanshixinxi_fengmian7.jpg,upload/shanshixinxi_fengmian8.jpg,upload/shanshixinxi_fengmian9.jpg', '早餐7', '午餐7', '晚餐7', '点心7', '水果7'),
	(108, '2023-05-04 14:15:55', '标题8', '2023-05-04', 'upload/shanshixinxi_fengmian8.jpg,upload/shanshixinxi_fengmian9.jpg,upload/shanshixinxi_fengmian10.jpg', '早餐8', '午餐8', '晚餐8', '点心8', '水果8');

DROP TABLE IF EXISTS `sheshixinxi`;
CREATE TABLE IF NOT EXISTS `sheshixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sheshibianhao` varchar(200) DEFAULT NULL COMMENT '设施编号',
  `sheshimingcheng` varchar(200) DEFAULT NULL COMMENT '设施名称',
  `sheshitupian` longtext COMMENT '设施图片',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `shiyongnianxian` varchar(200) DEFAULT NULL COMMENT '使用年限',
  `xiangqing` longtext COMMENT '详情',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sheshibianhao` (`sheshibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3 COMMENT='设施信息';

DELETE FROM `sheshixinxi`;
INSERT INTO `sheshixinxi` (`id`, `addtime`, `sheshibianhao`, `sheshimingcheng`, `sheshitupian`, `zhuangtai`, `shiyongnianxian`, `xiangqing`) VALUES
	(41, '2023-05-04 14:15:55', '1111111111', '设施名称1', 'upload/sheshixinxi_sheshitupian1.jpg,upload/sheshixinxi_sheshitupian2.jpg,upload/sheshixinxi_sheshitupian3.jpg', '正常', '使用年限1', '详情1'),
	(42, '2023-05-04 14:15:55', '2222222222', '设施名称2', 'upload/sheshixinxi_sheshitupian2.jpg,upload/sheshixinxi_sheshitupian3.jpg,upload/sheshixinxi_sheshitupian4.jpg', '正常', '使用年限2', '详情2'),
	(43, '2023-05-04 14:15:55', '3333333333', '设施名称3', 'upload/sheshixinxi_sheshitupian3.jpg,upload/sheshixinxi_sheshitupian4.jpg,upload/sheshixinxi_sheshitupian5.jpg', '正常', '使用年限3', '详情3'),
	(44, '2023-05-04 14:15:55', '4444444444', '设施名称4', 'upload/sheshixinxi_sheshitupian4.jpg,upload/sheshixinxi_sheshitupian5.jpg,upload/sheshixinxi_sheshitupian6.jpg', '正常', '使用年限4', '详情4'),
	(45, '2023-05-04 14:15:55', '5555555555', '设施名称5', 'upload/sheshixinxi_sheshitupian5.jpg,upload/sheshixinxi_sheshitupian6.jpg,upload/sheshixinxi_sheshitupian7.jpg', '正常', '使用年限5', '详情5'),
	(46, '2023-05-04 14:15:55', '6666666666', '设施名称6', 'upload/sheshixinxi_sheshitupian6.jpg,upload/sheshixinxi_sheshitupian7.jpg,upload/sheshixinxi_sheshitupian8.jpg', '正常', '使用年限6', '详情6'),
	(47, '2023-05-04 14:15:55', '7777777777', '设施名称7', 'upload/sheshixinxi_sheshitupian7.jpg,upload/sheshixinxi_sheshitupian8.jpg,upload/sheshixinxi_sheshitupian9.jpg', '正常', '使用年限7', '详情7'),
	(48, '2023-05-04 14:15:55', '8888888888', '设施名称8', 'upload/sheshixinxi_sheshitupian8.jpg,upload/sheshixinxi_sheshitupian9.jpg,upload/sheshixinxi_sheshitupian10.jpg', '正常', '使用年限8', '详情8');

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'hqmeli5jg84demdw662a2qovc5zuc0ux', '2024-08-04 03:00:55', '2024-08-04 04:00:56'),
	(2, 21, '医护人员1', 'yihurenyuan', '医护人员', 'pffx8trs73t0jajd7t7rynbaen3hbd9j', '2024-08-04 03:02:44', '2024-08-04 04:02:44'),
	(3, 31, '老人1', 'laoren', '老人', 'jizc5n5kwfzcqphl841xg54qvv1b107i', '2024-08-04 03:03:00', '2024-08-04 04:03:00');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-05-04 14:15:55');

DROP TABLE IF EXISTS `wuzichuku`;
CREATE TABLE IF NOT EXISTS `wuzichuku` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chukubianhao` varchar(200) DEFAULT NULL COMMENT '出库编号',
  `wuzibianhao` varchar(200) DEFAULT NULL COMMENT '物资编号',
  `wuzimingcheng` varchar(200) DEFAULT NULL COMMENT '物资名称',
  `wuzifenlei` varchar(200) DEFAULT NULL COMMENT '物资分类',
  `wuzishuliang` int DEFAULT NULL COMMENT '物资数量',
  `chukushijian` datetime DEFAULT NULL COMMENT '出库时间',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chukubianhao` (`chukubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb3 COMMENT='物资出库';

DELETE FROM `wuzichuku`;
INSERT INTO `wuzichuku` (`id`, `addtime`, `chukubianhao`, `wuzibianhao`, `wuzimingcheng`, `wuzifenlei`, `wuzishuliang`, `chukushijian`, `beizhu`) VALUES
	(131, '2023-05-04 14:15:55', '1111111111', '物资编号1', '物资名称1', '物资分类1', 1, '2023-05-04 22:15:55', '备注1'),
	(132, '2023-05-04 14:15:55', '2222222222', '物资编号2', '物资名称2', '物资分类2', 2, '2023-05-04 22:15:55', '备注2'),
	(133, '2023-05-04 14:15:55', '3333333333', '物资编号3', '物资名称3', '物资分类3', 3, '2023-05-04 22:15:55', '备注3'),
	(134, '2023-05-04 14:15:55', '4444444444', '物资编号4', '物资名称4', '物资分类4', 4, '2023-05-04 22:15:55', '备注4'),
	(135, '2023-05-04 14:15:55', '5555555555', '物资编号5', '物资名称5', '物资分类5', 5, '2023-05-04 22:15:55', '备注5'),
	(136, '2023-05-04 14:15:55', '6666666666', '物资编号6', '物资名称6', '物资分类6', 6, '2023-05-04 22:15:55', '备注6'),
	(137, '2023-05-04 14:15:55', '7777777777', '物资编号7', '物资名称7', '物资分类7', 7, '2023-05-04 22:15:55', '备注7'),
	(138, '2023-05-04 14:15:55', '8888888888', '物资编号8', '物资名称8', '物资分类8', 8, '2023-05-04 22:15:55', '备注8');

DROP TABLE IF EXISTS `wuzifenlei`;
CREATE TABLE IF NOT EXISTS `wuzifenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wuzifenlei` varchar(200) DEFAULT NULL COMMENT '物资分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wuzifenlei` (`wuzifenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb3 COMMENT='物资分类';

DELETE FROM `wuzifenlei`;
INSERT INTO `wuzifenlei` (`id`, `addtime`, `wuzifenlei`) VALUES
	(111, '2023-05-04 14:15:55', '物资分类1'),
	(112, '2023-05-04 14:15:55', '物资分类2'),
	(113, '2023-05-04 14:15:55', '物资分类3'),
	(114, '2023-05-04 14:15:55', '物资分类4'),
	(115, '2023-05-04 14:15:55', '物资分类5'),
	(116, '2023-05-04 14:15:55', '物资分类6'),
	(117, '2023-05-04 14:15:55', '物资分类7'),
	(118, '2023-05-04 14:15:55', '物资分类8');

DROP TABLE IF EXISTS `wuziruku`;
CREATE TABLE IF NOT EXISTS `wuziruku` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `rukubianhao` varchar(200) DEFAULT NULL COMMENT '入库编号',
  `wuzimingcheng` varchar(200) DEFAULT NULL COMMENT '物资名称',
  `wuzishuliang` int DEFAULT NULL COMMENT '物资数量',
  `rukuriqi` date DEFAULT NULL COMMENT '入库日期',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rukubianhao` (`rukubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb3 COMMENT='物资入库';

DELETE FROM `wuziruku`;
INSERT INTO `wuziruku` (`id`, `addtime`, `rukubianhao`, `wuzimingcheng`, `wuzishuliang`, `rukuriqi`, `beizhu`) VALUES
	(141, '2023-05-04 14:15:55', '1111111111', '物资名称1', 1, '2023-05-04', '备注1'),
	(142, '2023-05-04 14:15:55', '2222222222', '物资名称2', 2, '2023-05-04', '备注2'),
	(143, '2023-05-04 14:15:55', '3333333333', '物资名称3', 3, '2023-05-04', '备注3'),
	(144, '2023-05-04 14:15:55', '4444444444', '物资名称4', 4, '2023-05-04', '备注4'),
	(145, '2023-05-04 14:15:55', '5555555555', '物资名称5', 5, '2023-05-04', '备注5'),
	(146, '2023-05-04 14:15:55', '6666666666', '物资名称6', 6, '2023-05-04', '备注6'),
	(147, '2023-05-04 14:15:55', '7777777777', '物资名称7', 7, '2023-05-04', '备注7'),
	(148, '2023-05-04 14:15:55', '8888888888', '物资名称8', 8, '2023-05-04', '备注8');

DROP TABLE IF EXISTS `wuzixinxi`;
CREATE TABLE IF NOT EXISTS `wuzixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wuzibianhao` varchar(200) DEFAULT NULL COMMENT '物资编号',
  `wuzimingcheng` varchar(200) DEFAULT NULL COMMENT '物资名称',
  `wuzifenlei` varchar(200) DEFAULT NULL COMMENT '物资分类',
  `wuzishuliang` int DEFAULT NULL COMMENT '物资数量',
  `gongyingshang` varchar(200) DEFAULT NULL COMMENT '供应商',
  `fengmian` longtext COMMENT '封面',
  `cunfangweizhi` varchar(200) DEFAULT NULL COMMENT '存放位置',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wuzibianhao` (`wuzibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb3 COMMENT='物资信息';

DELETE FROM `wuzixinxi`;
INSERT INTO `wuzixinxi` (`id`, `addtime`, `wuzibianhao`, `wuzimingcheng`, `wuzifenlei`, `wuzishuliang`, `gongyingshang`, `fengmian`, `cunfangweizhi`) VALUES
	(121, '2023-05-04 14:15:55', '1111111111', '物资名称1', '物资分类1', 1, '供应商1', 'upload/wuzixinxi_fengmian1.jpg,upload/wuzixinxi_fengmian2.jpg,upload/wuzixinxi_fengmian3.jpg', '存放位置1'),
	(122, '2023-05-04 14:15:55', '2222222222', '物资名称2', '物资分类2', 2, '供应商2', 'upload/wuzixinxi_fengmian2.jpg,upload/wuzixinxi_fengmian3.jpg,upload/wuzixinxi_fengmian4.jpg', '存放位置2'),
	(123, '2023-05-04 14:15:55', '3333333333', '物资名称3', '物资分类3', 3, '供应商3', 'upload/wuzixinxi_fengmian3.jpg,upload/wuzixinxi_fengmian4.jpg,upload/wuzixinxi_fengmian5.jpg', '存放位置3'),
	(124, '2023-05-04 14:15:55', '4444444444', '物资名称4', '物资分类4', 4, '供应商4', 'upload/wuzixinxi_fengmian4.jpg,upload/wuzixinxi_fengmian5.jpg,upload/wuzixinxi_fengmian6.jpg', '存放位置4'),
	(125, '2023-05-04 14:15:55', '5555555555', '物资名称5', '物资分类5', 5, '供应商5', 'upload/wuzixinxi_fengmian5.jpg,upload/wuzixinxi_fengmian6.jpg,upload/wuzixinxi_fengmian7.jpg', '存放位置5'),
	(126, '2023-05-04 14:15:55', '6666666666', '物资名称6', '物资分类6', 6, '供应商6', 'upload/wuzixinxi_fengmian6.jpg,upload/wuzixinxi_fengmian7.jpg,upload/wuzixinxi_fengmian8.jpg', '存放位置6'),
	(127, '2023-05-04 14:15:55', '7777777777', '物资名称7', '物资分类7', 7, '供应商7', 'upload/wuzixinxi_fengmian7.jpg,upload/wuzixinxi_fengmian8.jpg,upload/wuzixinxi_fengmian9.jpg', '存放位置7'),
	(128, '2023-05-04 14:15:55', '8888888888', '物资名称8', '物资分类8', 8, '供应商8', 'upload/wuzixinxi_fengmian8.jpg,upload/wuzixinxi_fengmian9.jpg,upload/wuzixinxi_fengmian10.jpg', '存放位置8');

DROP TABLE IF EXISTS `yihudengji`;
CREATE TABLE IF NOT EXISTS `yihudengji` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yihudengji` varchar(200) NOT NULL COMMENT '医护等级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COMMENT='医护等级';

DELETE FROM `yihudengji`;
INSERT INTO `yihudengji` (`id`, `addtime`, `yihudengji`) VALUES
	(11, '2023-05-04 14:15:54', '医护等级1'),
	(12, '2023-05-04 14:15:55', '医护等级2'),
	(13, '2023-05-04 14:15:55', '医护等级3'),
	(14, '2023-05-04 14:15:55', '医护等级4'),
	(15, '2023-05-04 14:15:55', '医护等级5'),
	(16, '2023-05-04 14:15:55', '医护等级6'),
	(17, '2023-05-04 14:15:55', '医护等级7'),
	(18, '2023-05-04 14:15:55', '医护等级8');

DROP TABLE IF EXISTS `yihurenyuan`;
CREATE TABLE IF NOT EXISTS `yihurenyuan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yihugonghao` varchar(200) NOT NULL COMMENT '医护工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yihuxingming` varchar(200) NOT NULL COMMENT '医护姓名',
  `yihuxingbie` varchar(200) DEFAULT NULL COMMENT '医护性别',
  `zhaopian` longtext COMMENT '照片',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `yihudengji` varchar(200) DEFAULT NULL COMMENT '医护等级',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yihugonghao` (`yihugonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 COMMENT='医护人员';

DELETE FROM `yihurenyuan`;
INSERT INTO `yihurenyuan` (`id`, `addtime`, `yihugonghao`, `mima`, `yihuxingming`, `yihuxingbie`, `zhaopian`, `zhicheng`, `yihudengji`, `lianxidianhua`, `shenfenzheng`) VALUES
	(21, '2023-05-04 14:15:55', '医护人员1', '123456', '医护姓名1', '男', 'upload/yihurenyuan_zhaopian1.jpg', '职称1', '医护等级1', '13823888881', '440300199101010001'),
	(22, '2023-05-04 14:15:55', '医护人员2', '123456', '医护姓名2', '男', 'upload/yihurenyuan_zhaopian2.jpg', '职称2', '医护等级2', '13823888882', '440300199202020002'),
	(23, '2023-05-04 14:15:55', '医护人员3', '123456', '医护姓名3', '男', 'upload/yihurenyuan_zhaopian3.jpg', '职称3', '医护等级3', '13823888883', '440300199303030003'),
	(24, '2023-05-04 14:15:55', '医护人员4', '123456', '医护姓名4', '男', 'upload/yihurenyuan_zhaopian4.jpg', '职称4', '医护等级4', '13823888884', '440300199404040004'),
	(25, '2023-05-04 14:15:55', '医护人员5', '123456', '医护姓名5', '男', 'upload/yihurenyuan_zhaopian5.jpg', '职称5', '医护等级5', '13823888885', '440300199505050005'),
	(26, '2023-05-04 14:15:55', '医护人员6', '123456', '医护姓名6', '男', 'upload/yihurenyuan_zhaopian6.jpg', '职称6', '医护等级6', '13823888886', '440300199606060006'),
	(27, '2023-05-04 14:15:55', '医护人员7', '123456', '医护姓名7', '男', 'upload/yihurenyuan_zhaopian7.jpg', '职称7', '医护等级7', '13823888887', '440300199707070007'),
	(28, '2023-05-04 14:15:55', '医护人员8', '123456', '医护姓名8', '男', 'upload/yihurenyuan_zhaopian8.jpg', '职称8', '医护等级8', '13823888888', '440300199808080008');

DROP TABLE IF EXISTS `yuangongdangan`;
CREATE TABLE IF NOT EXISTS `yuangongdangan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yihugonghao` varchar(200) DEFAULT NULL COMMENT '医护工号',
  `yihuxingming` varchar(200) DEFAULT NULL COMMENT '医护姓名',
  `yihuxingbie` varchar(200) DEFAULT NULL COMMENT '医护性别',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `ruzhishijian` datetime DEFAULT NULL COMMENT '入职时间',
  `lizhishijian` datetime DEFAULT NULL COMMENT '离职时间',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb3 COMMENT='员工档案';

DELETE FROM `yuangongdangan`;
INSERT INTO `yuangongdangan` (`id`, `addtime`, `yihugonghao`, `yihuxingming`, `yihuxingbie`, `zhicheng`, `lianxidianhua`, `ruzhishijian`, `lizhishijian`, `beizhu`) VALUES
	(151, '2023-05-04 14:15:55', '医护工号1', '医护姓名1', '医护性别1', '职称1', '13823888881', '2023-05-04 22:15:55', '2023-05-04 22:15:55', '备注1'),
	(152, '2023-05-04 14:15:55', '医护工号2', '医护姓名2', '医护性别2', '职称2', '13823888882', '2023-05-04 22:15:55', '2023-05-04 22:15:55', '备注2'),
	(153, '2023-05-04 14:15:55', '医护工号3', '医护姓名3', '医护性别3', '职称3', '13823888883', '2023-05-04 22:15:55', '2023-05-04 22:15:55', '备注3'),
	(154, '2023-05-04 14:15:55', '医护工号4', '医护姓名4', '医护性别4', '职称4', '13823888884', '2023-05-04 22:15:55', '2023-05-04 22:15:55', '备注4'),
	(155, '2023-05-04 14:15:55', '医护工号5', '医护姓名5', '医护性别5', '职称5', '13823888885', '2023-05-04 22:15:55', '2023-05-04 22:15:55', '备注5'),
	(156, '2023-05-04 14:15:55', '医护工号6', '医护姓名6', '医护性别6', '职称6', '13823888886', '2023-05-04 22:15:55', '2023-05-04 22:15:55', '备注6'),
	(157, '2023-05-04 14:15:55', '医护工号7', '医护姓名7', '医护性别7', '职称7', '13823888887', '2023-05-04 22:15:55', '2023-05-04 22:15:55', '备注7'),
	(158, '2023-05-04 14:15:55', '医护工号8', '医护姓名8', '医护性别8', '职称8', '13823888888', '2023-05-04 22:15:55', '2023-05-04 22:15:55', '备注8');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : mywarehouse

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-06-16 23:55:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_distribute_warehouse
-- ----------------------------
DROP TABLE IF EXISTS `tb_distribute_warehouse`;
CREATE TABLE `tb_distribute_warehouse` (
  `warehous_name` varchar(45) NOT NULL DEFAULT 'default',
  `article_number` varchar(45) NOT NULL,
  `quantity` double DEFAULT '0',
  `unit_price` double DEFAULT '0',
  `total_price` double DEFAULT '0',
  PRIMARY KEY (`article_number`,`warehous_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_distribute_warehouse
-- ----------------------------
INSERT INTO `tb_distribute_warehouse` VALUES ('1', '1', '3', '1', '3');

-- ----------------------------
-- Table structure for tb_entry_warrant
-- ----------------------------
DROP TABLE IF EXISTS `tb_entry_warrant`;
CREATE TABLE `tb_entry_warrant` (
  `warehous_name` varchar(45) DEFAULT 'default',
  `article_number` varchar(45) DEFAULT 'A00000000',
  `quantity` double DEFAULT '0',
  `unit_price` double DEFAULT '0',
  `total_price` double DEFAULT '0',
  `warrant_number` int(11) NOT NULL AUTO_INCREMENT,
  `affair_type` varchar(45) DEFAULT 'default',
  `time` varchar(45) DEFAULT NULL,
  `invoice_number` varchar(45) DEFAULT NULL,
  `article_name` varchar(45) DEFAULT NULL,
  `specification` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `measurement` varchar(45) DEFAULT NULL,
  `provider` varchar(45) DEFAULT NULL,
  `inspector` varchar(45) DEFAULT NULL,
  `administrator` varchar(45) DEFAULT NULL,
  `auditor` varchar(45) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`warrant_number`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_entry_warrant
-- ----------------------------
INSERT INTO `tb_entry_warrant` VALUES ('1', 'A00000001', '3', '1', '3', '2', 'default', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tb_entry_warrant` VALUES ('2', 'A00000002', '2', '1', '2', '3', 'default', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tb_entry_warrant` VALUES ('3', 'A00000003', '3', '2', '6', '4', 'default', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tb_entry_warrant` VALUES ('3', 'A00000004', '1', '100', '100', '5', 'default', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tb_entry_warrant` VALUES ('1', '1', '1', '1', '1', '24', 'in', '2018-06-13 18:06:26', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tb_entry_warrant` VALUES ('1', '1', '1', '1', '1', '25', 'in', '2018-06-13 18:17:53', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tb_entry_warrant` VALUES ('1', '1', '1', '1', '1', '26', 'in', '2018-06-13 18:29:16', null, 'sss', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for tb_exit_warrant
-- ----------------------------
DROP TABLE IF EXISTS `tb_exit_warrant`;
CREATE TABLE `tb_exit_warrant` (
  `warehous_name` varchar(45) DEFAULT 'default',
  `article_number` varchar(45) DEFAULT 'A00000000',
  `quantity` double DEFAULT '0',
  `unit_price` double DEFAULT '0',
  `total_price` double DEFAULT '0',
  `warrant_number` int(11) NOT NULL AUTO_INCREMENT,
  `affair_type` varchar(45) DEFAULT 'default',
  `time` varchar(45) DEFAULT NULL,
  `invoice_number` varchar(45) DEFAULT NULL,
  `article_name` varchar(45) DEFAULT NULL,
  `specification` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `measurement` varchar(45) DEFAULT NULL,
  `provider` varchar(45) DEFAULT NULL,
  `inspector` varchar(45) DEFAULT NULL,
  `administrator` varchar(45) DEFAULT NULL,
  `auditor` varchar(45) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`warrant_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_exit_warrant
-- ----------------------------
INSERT INTO `tb_exit_warrant` VALUES ('1', 'A00000000', '0', '0', '0', '1', 'default', null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for tb_general_warehouse
-- ----------------------------
DROP TABLE IF EXISTS `tb_general_warehouse`;
CREATE TABLE `tb_general_warehouse` (
  `article_number` varchar(45) NOT NULL DEFAULT 'A00000000',
  `article_name` varchar(255) DEFAULT NULL,
  `quantity` double DEFAULT '0',
  `unit_price` double DEFAULT '0',
  `total_price` double DEFAULT '0',
  PRIMARY KEY (`article_number`),
  UNIQUE KEY `article_number_UNIQUE` (`article_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_general_warehouse
-- ----------------------------
INSERT INTO `tb_general_warehouse` VALUES ('1', null, '3', '1', '3');
INSERT INTO `tb_general_warehouse` VALUES ('B', '材料', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01', '电器材料', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B0101', '自动开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010101', '高分断断路器(一)', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010101', '高分断断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010102', '高分断断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010103', '高分断断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010104', '高分断断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010105', '高分断断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010106', '高分断断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010107', '高分断断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010108', '高分断断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010109', '高分断断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010110', '高分断断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010102', '塑壳断路器(一)', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010201', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010202', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010203', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010204', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010205', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010206', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010207', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010208', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010209', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010210', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010103', '框架式断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010301', '抽屉式断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010302', '抽屉式断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010303', '智能断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010304', '框架式断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010305', '框架式断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010306', '框架式断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010307', '框架式断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010308', '框架式断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010309', '万能断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010310', '智能断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010311', '万能式断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010104', '漏电断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010401', '漏电开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010402', '漏电断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010403', '漏电断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010404', '漏电断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010405', '漏电断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010406', '漏电断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010407', '漏电断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010408', '漏电断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010409', '漏电断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010410', '漏电断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010105', '塑壳断路器(二)', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010500', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010501', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010502', '空气开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010503', '空气开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010504', '空气开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010505', '空气开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010506', '空气开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010507', '空气开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010508', '空气开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010509', '空气开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010510', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010512', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010106', '塑壳断路器(三）', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010601', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010602', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010603', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010604', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010605', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010606', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010607', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010608', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010609', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010610', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010107', '漏电断路器（二）', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010701', '漏电开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010702', '漏电开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010703', '漏电开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010704', '漏电开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010705', '漏电开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010706', '漏电开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010707', '漏电开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010708', '漏电开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010709', '漏电开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010710', '漏电开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010711', '漏电断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010712', '漏电开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010108', '高分断断路器（二）', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010801', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010802', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010803', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010804', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010805', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010806', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010807', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010808', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010809', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010810', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010811', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010812', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010109', '塑壳断路器TI(四)', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010901', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010902', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010903', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010904', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010905', '智能断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010906', '智能断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010907', '智能断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010908', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010909', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010910', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010911', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010912', '小型断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010913', '智能断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010914', '智能断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010915', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010916', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01010917', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B0102', '刀开关及转换开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010201', '单投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020101', '刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020102', '刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020103', '刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020104', '刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020105', '刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020106', '刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020107', '刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020108', '刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020109', '刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020110', '刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020111', '刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020112', '刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020113', '刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020114', '刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010202', '双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020201', '双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020202', '双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020203', '双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020204', '双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020205', '双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020206', '双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020207', '双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020208', '双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020209', '双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020210', '旋转式双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020211', '旋转式双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020212', '旋转式双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020213', '旋转式双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020214', '旋转式双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020215', '旋转式双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020216', '旋转式双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020217', '双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020218', '双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020219', '双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020220', '双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020221', '双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020222', '双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020223', '双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020224', '双投开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020225', '双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020226', '双投开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020227', '双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020228', '双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020229', '双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020230', '刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020231', '双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020232', '旋转式双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020233', '双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020234', '双投刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010203', '熔断式刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020301', '熔断式刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020302', '熔断式刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020303', '熔断式刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020304', '熔断式刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020305', '熔断式刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020306', '熔断式刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020307', '熔断式刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020308', '隔离开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020309', '隔离开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020310', '隔离开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020311', '隔离开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020312', '隔离开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020313', '隔离开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020314', '熔断器式隔离器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020315', '熔断器式隔离器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020316', '熔断器式隔离器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020317', '熔断器式隔离器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020318', '熔断器式隔离器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020319', '开关熔断器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020320', '开关熔断器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020321', '隔离开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020322', '熔断式刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020323', '刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020324', '熔断式刀开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010204', '负荷开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020401', '封闭式负荷开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020402', '封闭式负荷开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020403', '封闭式负荷开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020404', '开启式负荷开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020405', '开启式负荷开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020406', '开启式负荷开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020407', '开启式负荷开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020408', '开启式负荷开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020409', '开启式负荷开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020410', '开启式负荷开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020411', '开启式负荷开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020412', '隔离开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020413', '隔离开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020414', '隔离开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010205', '转换开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020501', '转换开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020502', '转换开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020503', '转换开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020504', '转换开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020505', '转换开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020506', '转换开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020507', '万能转换开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020508', '电压切换开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020509', '同期开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020510', '转换开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020511', '转换开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020512', '转换开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020513', '智能双电源转换开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020514', '双电源自动切换开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010206', '组合开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020601', '组合开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020602', '组合开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020603', '电焊机开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020604', '扭子开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020605', '组合开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020606', '组合开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020607', '组合开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010207', '其它闸刀', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020701', '石板闸刀', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020702', '石板闸刀', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020703', '倒顺开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020704', '倒顺开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010208', '动态无触点开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01020801', '动态无触点开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B0103', '接触器和继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010301', '普通接触器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030101', '接触器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030102', '接触器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030103', '接触器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030104', '接触器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030105', '接触器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030106', '接触器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030107', '接触器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030108', '接触器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030109', '接触器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030110', '接触器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030111', '接触器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030112', '接触器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030113', '接触器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030114', '接触器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030115', '接触器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010302', '节能接触器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030201', '节能接触器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030202', '节能接触器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030203', '节能接触器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030204', '节能接触器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030205', '接触器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030206', '接触器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010303', '切换电容器接触器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030301', '切换电容器接触器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030302', '切换电容器接触器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030303', '切换电容器接触器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030304', '切换电容接触器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030305', '切换电容接触器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030306', '切换电容接触器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030307', '切换电容接触器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030308', '切换电容接触器组合', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030309', '切换电容接触器组合', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010304', '热继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030401', '热继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030402', '热继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030403', '热继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030404', '热继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030405', '热继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010305', '时间继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030501', '时间继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030502', '时间继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030503', '时间控制器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030504', '时间继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030505', '时间继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030506', '时间继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030507', '时间继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030508', '时间继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030509', '时间继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030510', '定时开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010306', '电流继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030601', '电流继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030602', '电流继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030603', '电流继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010307', '中间继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030701', '中间继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030702', '中间继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030703', '中间继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030704', '中间继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030705', '中间继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030706', '接触器式继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030707', '继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030708', '继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030709', '中间继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010308', '信号继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030801', '信号继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030802', '欠频率继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030803', '信号继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030804', '低周率继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030805', '晶体管液位继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030806', '液位继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010309', '电压继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030901', '电压继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030902', '电压继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01030903', '电压继电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B0104', '熔断器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010401', '插入式熔断器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01040101', '插入式熔断器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01040102', '插入式熔断器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01040103', '插入式熔断器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01040104', '插入式熔断器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01040105', '插入式熔断器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01040106', '插入式熔断器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01040107', '插入式熔断器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010402', '其它熔断器(熔芯)', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01040202', '熔断器(熔芯)', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01040204', '管式熔断器(熔芯)', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01040205', '管式熔芯', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01040206', '熔断器（熔芯）', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01040207', '熔断器(熔芯)', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010403', '其它熔断器(熔座)', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01040302', '低压熔断器（熔座）', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010404', '熔断器端子', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01040401', '熔断器端子', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B0105', '互感器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010501', '电流互感器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010502', '电流互感器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010503', '电流互感器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010504', '电流互感器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010505', '电流互感器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010506', '电流互感器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010507', '电流互感器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010508', '电流互感器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010509', '电流互感器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010510', '电流互感器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010511', '电流互感器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010512', '电流互感器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B0106', '仪器和仪表', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010601', '其它类', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060101', '单相调压器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060102', '全自动稳压器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060103', '数字万用表', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060104', '秒表', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060105', '漏电保护器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060106', '电度表', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060107', '兆欧表', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060108', '有功功率因数表', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060109', '仿真器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060110', '电度表', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060111', '电度表', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060112', '变压器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060113', '漏电保护器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060114', '频率表', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060115', '无功电能表', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060116', '自动准同期装置', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010604', '无功率补偿自动控制器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060401', '无功功率补偿自动控制器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060402', '无功功率补偿自动控制器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060403', '无功功率补偿自动控制器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060404', '无功功率补偿自动控制器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060405', '无功功率补偿自动控制器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060406', '功率因数调整器（台湾）', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060407', '无功功率补偿自动控制器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010609', '交流功率表', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060901', '交流功率表', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060902', '交流功率表', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060903', '交流功率表', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060904', '交流功率表', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060905', '交流功率表', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060906', '交流功率表', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060907', '交流功率表', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060908', '交流功率表', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060909', '交流功率表', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060910', '交流功率表', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060911', '交流功率表', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060912', '交流功率表', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060913', '交流功率表', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060914', '交流功率表', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060915', '交流功率表', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01060916', '交流功率表', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B0107', '导体', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010701', '铜芯线', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070101', '铜芯线', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070102', '铜芯线', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070103', '铜芯线', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070104', '铜芯线', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070105', '铜芯线', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070106', '铜芯线', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070107', '铜芯线', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070108', '铜芯线', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070109', '铜芯线', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070110', '铜芯线', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070111', '铜芯线', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010702', '铜芯软线', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070201', '铜芯软线', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070202', '铜芯软线', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070203', '铜芯软线', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070204', '铜芯软线', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070205', '铜芯软线', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070206', '铜芯软线', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070207', '橡套软线', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070208', '橡套软线', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070209', '橡套软线', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070210', '橡套软线', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070211', '多股胶线', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010703', '铝排', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070301', '铝排(0.2025kg/m)', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070302', '铝排(0.243kg/m)', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070303', '铝排(0.432kg/m)', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070304', '铝排(0.675kg/m)', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070305', '铝排(0.975kg/m)', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070306', '铝排(1.728kg/m)', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070307', '铝排(2.700kg/m)', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010704', '铜排', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070401', '铜排(0.801kg/m)', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070402', '铜排(1.424kg/m)', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070403', '铜排(1.335kg/m)', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070404', '铜排(2.136kg/m)', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070405', '铜排(2.225kg/m)', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070406', '铜排(4.45kg/m)', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070407', '铜排(3.204kg/m)', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070408', '铜排(8.90kg/m)', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070409', '铜排(1.78kg/m)', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070410', '铜板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070411', '紫铜管', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010705', '铜接头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070501', '铜接头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070502', '铜接头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070503', '铜接头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070504', '铜接头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070505', '铜接头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070506', '铜接头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070507', '铜接头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070508', '铜接头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070509', '铜接头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070510', '铜接头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070511', '接地端棒', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070512', '插针', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070513', '铜接头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010706', '铝、铜接头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070601', '铝铜接头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070602', '铝铜接头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070603', '铝铜接头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070604', '铜铝接头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070605', '铜铝接头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070606', '铜铝接头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070607', '铜铝接头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070608', '铜铝接头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070609', '铜软连接', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010707', '圆形裸端头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070701', '圆形裸端头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070702', '圆形裸端头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070703', '圆形裸端头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070704', '圆形裸端头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070705', '圆形裸端头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070706', '圆形裸端头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070707', '圆形裸端头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070708', '圆形裸端头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070709', '圆形裸端头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070710', '圆形裸端头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070711', '圆形裸端头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070712', '圆形裸端头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070713', '圆形裸端头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070714', '圆形裸端头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070715', '圆形裸端头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070716', '圆形裸端头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070717', '圆形裸端头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010708', '叉形裸端头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070801', '叉形裸端头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070802', '叉形裸端头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070803', '叉形裸端头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070804', '叉形裸端头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070805', '叉形裸端头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070806', '叉形裸端头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070807', '叉形裸端头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070808', '叉形裸端头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070809', '叉形裸端头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070810', '叉形裸端头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070812', '叉形裸端头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070813', '铜接头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070820', '叉形裸端头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070821', '插针', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070822', '插针', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01070823', '插针', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B0108', '其它电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010801', '接线端子', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080101', '接线端子', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080102', '接线端子', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080103', '普通接线端子', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080104', '试验接线端子', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080105', '连接接线端子', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080106', '低压出线桩子', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080107', '低压出线桩子', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080108', '接线端子', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080109', '接线端子', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080110', '接线板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080111', '接线柱', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080112', '接线端子', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080113', '接线端子', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080114', '连接片', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080115', '接线端子', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010802', '接线板、盒', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080201', '接线柱', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080202', '接线板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080203', '组合接线盒', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080204', '接线柱', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080205', '接线柱', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080206', '补偿控制接线桩头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080207', '接线柱', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080208', '接线板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080209', '接线板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080210', '接线板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080211', '接线板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010804', '行程开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080401', '行程开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080402', '行程开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080403', '行程开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080404', '行程开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080405', '行程开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080406', '行程开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080407', '行程开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080408', '行程开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080409', '限位开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080410', '微动开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010805', '控制按钮', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080501', '控制按钮', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080502', '控制按钮', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080503', '旋转按钮', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080504', ' 按钮', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080505', '按钮', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080506', '按钮', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080507', '按钮', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080508', '按钮', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080509', '按钮', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080510', '行车按钮', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080511', '按钮', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080512', '按钮', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010806', '信号灯、电铃', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080601', '信号灯', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080602', '信号灯', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080603', '信号灯', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080604', '信号灯', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080605', '电铃', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080606', '超声波驱鼠器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080607', '主令开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080608', '电话机', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080609', '警铃', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080610', '同期灯', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080611', '信号灯', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080612', '光字牌', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080613', '信号灯', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080614', '信号灯', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080615', '指示灯', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010808', '避雷器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080801', '低压避雷器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080802', '高压避雷器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080803', '避雷器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080804', '避雷器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080805', '避雷器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080806', '浪涌装置', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080807', '浪涌保护器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080808', '浪涌保护器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080809', '浪涌保护器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01080810', '浪涌保护器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B0109', '配件', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010901', '欠压脱扣器线圈', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010902', '欠压脱扣器线圈', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010903', '辅助触头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010904', '拉簧', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010905', '分励脱扣器线圈', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010906', '分励脱扣器线圈', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010907', '接触器线圈', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010908', '接触器线圈', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010909', '接触器线圈', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010910', '接触器线圈', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010911', '接触器线圈', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010912', '接触器线圈', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B010913', '接触器线圈', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B0110', '绝缘材料', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011001', '固定母线架', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011002', '固定母线架', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011003', '固定母线架', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011004', '零线母线架', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011005', '零线母线架', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011006', '零线母线架', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011007', '零线母线架', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011008', '零线母线架', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011009', '组合母线架', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011010', '组合母线架', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B0111', '电力电容器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011101', '电容器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011102', '电容器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011103', '电容器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011104', '电容器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011105', '电容器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011106', '电容器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011107', '电容器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011108', '电容就地补偿器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011109', '电容就地补偿器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011110', '电容就地补偿器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011111', '电容就地补偿器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011112', '电容就地补偿器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011113', '电容就地补偿器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011114', '电容就地补偿器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011115', '电容就地补偿器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011116', '电容就地补偿器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011117', '电容就地补偿器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B0112', '其它材料', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011201', '行线槽', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120101', '行线槽', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120102', '行线槽', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120103', '行线槽', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011202', '绕线管', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120201', '无边绕线管', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120202', '有边绕线管', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011203', '记号管', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120301', '记号管', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120302', '记号管', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120303', '记号管', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120304', '记号管', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120305', '记号管', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120306', '记号管', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120307', '记号管', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120308', '记号管', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011204', '线扣', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120401', '线扣', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120402', '线扣', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120403', '线卡', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120404', '钢精轧头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120405', '管卡', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120406', '线卡', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120407', '线卡', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120408', '线卡', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011205', '元线夹', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120501', '元线夹', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120502', '元线夹', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120503', '元线夹', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011206', '橡皮圈', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120601', '橡皮圈', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120602', '橡皮圈', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120603', '橡皮圈', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120604', '橡皮圈', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120605', '橡皮圈', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120606', '橡皮圈', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120607', '橡皮圈', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120608', '橡胶O型圈', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120609', '橡皮圈', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011207', '橡皮嵌条', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120701', '橡皮嵌条', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120702', '矩形橡皮嵌条', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120703', '密封条', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120704', '矩形橡皮嵌条', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011208', '标签框', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120801', '标签框', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120802', '标签框', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120803', '标鉴框', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011209', '塑料框', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120901', '塑料框', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120902', '塑料框', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120903', '塑料框', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120904', '塑料框', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120905', '透明塑料框', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120906', '动力表箱框', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120907', '表框', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01120908', '表框', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B0113', '照明灯具', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011301', '灯架类', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130101', '日光灯架', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130102', '碘钨灯座', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130103', '日光灯座', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130104', '仿比利时灯罩', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130105', '桶灯灯罩', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130106', '圆球罩', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130107', '琵琶式路灯罩', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130108', '中波纹罩', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130109', '白塔松灯罩', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130110', '元球玻璃罩', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130111', '蘑菇罩', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130112', '高钠路灯罩', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130113', '高钠路灯罩', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130114', '高钠路灯罩', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130115', '高钠路灯罩', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130116', '瓷灯座', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130117', '草坪灯头子', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011302', '灯泡类', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130201', '日光灯管', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130202', '碘钨灯管', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130203', '碘钨灯管', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130204', '罗口灯泡', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130205', '罗口灯泡', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130206', '插口灯泡', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130207', '自镇流高压汞泡', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130208', '高压汞灯', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130209', '高压汞灯', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130210', '高压钠灯', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011303', '镇流器类', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130301', '日光灯镇流器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130302', '高压汞灯镇流器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130303', '高压汞灯镇流器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130304', '高压钠灯镇流器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130305', '高压钠灯镇流器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130306', '触发器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130307', '电子式镇流器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130308', '电子式镇流器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130309', '钠镇流器触发器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130310', '高压钠灯镇流器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130311', '钠镇流器触发器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011304', '插座、插头类', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130401', '单相插座', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130402', '三相插座', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130403', '三相四线插座', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130404', '三相四线插座', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130405', '三相四线插头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130406', '三相四线插头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130407', '单相插头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130408', '三相插头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130409', '普通多用插座', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130410', '多功能插座', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130411', '空调插座', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011305', '其它类', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130501', '启辉器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130502', '吊扇', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130503', '小电珠', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130504', '拉线开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130505', '灯头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130506', '吊扇吊钩', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130507', '自镇流汞灯头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130508', '吊扇电容器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130509', '吊扇调速器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01130510', '线令', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B0114', '电子元件', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011401', '发光二极管', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011402', '发光二极管', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011403', '发光二极管', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011404', '熔丝夹座', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011405', '可控硅', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011406', '数码管（红）', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011407', '可控硅', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011408', '散热片', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011409', '可控硅', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011410', '可控硅', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B0115', '10KV高压电器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011501', '带电显示器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011502', '传感器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011503', '户内电磁锁', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011504', '高压熔断器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011505', '高压互感器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011506', '高压互感器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011507', '高压负荷开关', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011508', ' 五防锁', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011509', '高压互感器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011510', '高压互感器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011511', '高压熔断器(座)', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011512', '高压熔管', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011513', '高压互感器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B0116', '自动开关（二）', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011601', '塑壳断路器RM（五）', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160101', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160102', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160103', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160104', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160105', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160106', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160107', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160108', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160109', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160110', '塑壳断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011602', '断路器CKB（六）', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160201', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160202', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160203', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160204', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160205', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160206', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160207', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160208', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160209', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160210', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160211', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160212', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011603', '断路器（七）', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160301', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160302', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160303', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160304', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160305', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160306', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160307', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160308', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160309', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160310', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160311', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160312', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B011604', '断路器NLM1（八）', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160401', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160402', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160403', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160404', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160405', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160406', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160407', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160408', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160409', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160410', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B01160411', '断路器', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02', '钢材料', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B0201', '角钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020101', '角钢(大钢厂）', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020102', '角钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020103', '角钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020104', '角钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020105', '角钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020106', '角钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020107', '角钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020108', '角钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020109', '角钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020111', '角钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020112', '角钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020113', '角钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020114', '角钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020115', '角钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020116', '角钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020117', '角钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020118', '角钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020119', '角钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020120', '角钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020121', '角钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020122', '角钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020123', '角钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020124', '角钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020125', '角钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020126', '角钢（小钢厂）', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020127', '角钢(小钢厂)', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B0202', '扁钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020201', '扁钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020202', '扁钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020203', '扁钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020204', '扁钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020205', '扁钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020206', '扁钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020207', '扁钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020208', '扁钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020209', '扁钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020210', '扁钢（小厂）', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020211', '扁钢(小钢厂)', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B0203', '圆钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020301', '圆钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020302', '圆钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020303', '圆钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020304', '圆钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020305', '圆钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020306', '圆钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020307', '圆钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020308', '圆钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020309', '圆钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020310', '圆钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020311', '圆钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020312', '圆钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020313', '圆钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B0204', '钢管', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020401', '焊管', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020402', '焊管', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020403', '焊管', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020404', '焊管', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020405', '焊管', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020406', '焊管', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020407', '焊管', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020408', '焊管', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020409', '焊管', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020410', '镀锌管', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B0205', '钢钣', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020501', '热板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050102', '热板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050103', '热板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050104', '热板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050105', '热板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050106', '热板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050107', '热板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050108', '热板（钢板网）', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020502', '冷板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050201', '冷板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050202', '冷板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050203', '冷板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050204', '冷板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050205', '冷板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050206', '冷板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020503', '中板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050301', '中板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050302', '中板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050303', '中板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050304', '中板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050305', '中板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050306', '中板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050307', '中板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050308', '中板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050309', '中板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050310', '中板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050311', '钢板网', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050312', '中板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050313', '花纹板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020504', '铝板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050401', '铝钣', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020505', '不锈钢板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050501', '不锈钢板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050502', '不锈钢板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050503', '不锈钢板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050504', '不锈钢板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050505', '不锈钢板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050506', '不锈钢板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050507', '不锈钢焊角片', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050508', '不锈钢板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050509', '不锈钢板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050510', '镜面板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050511', '镜面板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050512', '不锈钢板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050513', '不锈钢板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050514', '不锈钢板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020506', '镀锌板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050601', '镀锌板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050602', '镀锌板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050603', '镀锌板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020507', '不锈钢球', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050701', '不锈钢球', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050702', '不锈钢球', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050703', '不锈钢球', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050704', '不锈钢座', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050705', '不锈钢座', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050706', '不锈钢球', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050707', '菱形', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050708', '不锈钢弯头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050709', '不锈钢球座', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050710', '不锈钢盖', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050711', '不锈钢盖', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B02050712', '不锈钢弯头', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020508', '废料', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B0205080', '薄板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B0206', '槽钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020601', '槽钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020602', '槽钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020603', '槽钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020604', '槽钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020605', '槽钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020606', '槽钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020607', '槽钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020608', '工字钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020609', 'H型钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020610', 'C型钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020611', '工字钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020612', '轻轨', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020613', '槽钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020614', '槽钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B0207', '模具钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020701', '模具钢', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B020702', '45#碳板', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03', '五金材料', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B0301', '紧固件', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B030101', '木螺丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010101', '木螺丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010102', '木螺丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010103', '木螺丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010104', '木螺丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010105', '胶木螺丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010106', '木螺丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010107', '木螺丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010108', '木螺丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010109', '木螺丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B030102', '其它', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010201', '铜鼻螺丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010202', '自攻螺丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010203', '热镀锌元头脚钉', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010204', '自攻螺丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010205', '三角螺丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010206', '三角螺丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010207', '圆头自攻螺丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010208', '圆头自攻螺丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010209', '圆头自攻螺丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010210', '沉头螺丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B030103', '平机螺丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010301', '平机螺丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010302', '平机螺丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010303', '平机螺丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010304', '平机螺丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010305', '平机螺丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010306', '平机螺丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010307', '平机螺丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010308', '平机螺丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010309', '平机螺丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010310', '平机罗丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010311', '平机罗丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010312', '平机罗丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010313', '平机罗丝', '1', '1', '1');
INSERT INTO `tb_general_warehouse` VALUES ('B03010314', '平机罗丝', '1', '1', '1');

-- ----------------------------
-- Table structure for tb_pick_warrant
-- ----------------------------
DROP TABLE IF EXISTS `tb_pick_warrant`;
CREATE TABLE `tb_pick_warrant` (
  `warehous_name` varchar(45) DEFAULT 'default',
  `article_number` varchar(45) DEFAULT 'A00000000',
  `quantity` double DEFAULT '0',
  `unit_price` double DEFAULT '0',
  `total_price` double DEFAULT '0',
  `warrant_number` int(11) NOT NULL AUTO_INCREMENT,
  `affair_type` varchar(45) DEFAULT 'default',
  `time` varchar(45) DEFAULT NULL,
  `article_name` varchar(45) DEFAULT NULL,
  `specification` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `measurement` varchar(45) DEFAULT NULL,
  `provider` varchar(45) DEFAULT NULL,
  `inspector` varchar(45) DEFAULT NULL,
  `administrator` varchar(45) DEFAULT NULL,
  `auditor` varchar(45) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `workshop` varchar(45) DEFAULT NULL,
  `article_user` varchar(45) DEFAULT NULL,
  `use_aim` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`warrant_number`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_pick_warrant
-- ----------------------------
INSERT INTO `tb_pick_warrant` VALUES ('1', 'B00000001', '20', '8', '160', '7', 'in', '2018-05-29 21:47:28', 'xxxxarticle', 'zhi', 'type111', 'kg', 'xxxxcompany', 'AA', 'BB', 'cc', 'comment', 'xxwarkshop', 'xxuser', 'producesth');
INSERT INTO `tb_pick_warrant` VALUES ('2', 'B00000001', '20', '8', '160', '8', 'in', '2018-05-30 17:10:10', 'xxxxarticle', 'zhi', 'type111', 'kg', 'xxxxcompany', 'AA', 'BB', 'cc', 'comment', 'xxwarkshop', 'xxuser', 'producesth');

-- ----------------------------
-- Table structure for tb_return_warrant
-- ----------------------------
DROP TABLE IF EXISTS `tb_return_warrant`;
CREATE TABLE `tb_return_warrant` (
  `warehous_name` varchar(45) DEFAULT 'default',
  `article_number` varchar(45) DEFAULT 'A00000000',
  `quantity` double DEFAULT '0',
  `unit_price` double DEFAULT '0',
  `total_price` double DEFAULT '0',
  `warrant_number` int(11) NOT NULL AUTO_INCREMENT,
  `affair_type` varchar(45) DEFAULT 'default',
  `time` varchar(45) DEFAULT NULL,
  `article_name` varchar(45) DEFAULT NULL,
  `specification` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `measurement` varchar(45) DEFAULT NULL,
  `provider` varchar(45) DEFAULT NULL,
  `inspector` varchar(45) DEFAULT NULL,
  `administrator` varchar(45) DEFAULT NULL,
  `auditor` varchar(45) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `workshop` varchar(45) DEFAULT NULL,
  `article_user` varchar(45) DEFAULT NULL,
  `use_aim` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`warrant_number`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_return_warrant
-- ----------------------------
INSERT INTO `tb_return_warrant` VALUES ('1', 'B00000001', '20', '8', '160', '1', 'in', '2018-05-29 21:45:30', 'xxxxarticle', 'zhi', 'type111', 'kg', 'xxxxcompany', 'AA', 'BB', 'cc', 'comment', 'xxwarkshop', 'xxuser', 'producesth');
INSERT INTO `tb_return_warrant` VALUES ('2', 'B00000001', '20', '8', '160', '2', 'in', '2018-05-29 21:46:07', 'xxxxarticle', 'zhi', 'type111', 'kg', 'xxxxcompany', 'AA', 'BB', 'cc', 'comment', 'xxwarkshop', 'xxuser', 'producesth');

-- ----------------------------
-- Table structure for tb_standing_book
-- ----------------------------
DROP TABLE IF EXISTS `tb_standing_book`;
CREATE TABLE `tb_standing_book` (
  `warehous_name` varchar(45) DEFAULT 'default',
  `article_number` varchar(45) DEFAULT 'A00000000',
  `quantity_buy` double DEFAULT '0',
  `unit_price_buy` double DEFAULT '0',
  `total_price_buy` double DEFAULT '0',
  `quantity_use` double DEFAULT '0',
  `unit_price_use` double DEFAULT '0',
  `total_price_use` double DEFAULT '0',
  `quantity_surplus` double DEFAULT '0',
  `unit_price_surplus` double DEFAULT '0',
  `total_price_surplus` double DEFAULT '0',
  `affair_type` varchar(45) DEFAULT NULL,
  `standing_book_number` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(45) DEFAULT NULL,
  `specification` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `measurement` varchar(45) DEFAULT NULL,
  `abstract` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`standing_book_number`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_standing_book
-- ----------------------------
INSERT INTO `tb_standing_book` VALUES ('B', 'B00000001', null, null, null, '20', '8', '160', '30', '8', '240', 'return_article', '29', '2018-05-29 21:43:18', 'zhi', 'type111', 'kg', null);
INSERT INTO `tb_standing_book` VALUES ('B', 'B00000001', null, null, null, '20', '8', '160', '50', '8', '400', 'return_article', '30', '2018-05-29 21:45:30', 'zhi', 'type111', 'kg', null);
INSERT INTO `tb_standing_book` VALUES ('B', 'B00000001', null, null, null, '20', '8', '160', '70', '8', '560', 'return_article', '31', '2018-05-29 21:46:07', 'zhi', 'type111', 'kg', null);
INSERT INTO `tb_standing_book` VALUES ('B', 'B00000001', '20', '8', '160', null, null, null, '50', '8', '400', 'pick_article', '32', '2018-05-29 21:47:28', 'zhi', 'type111', 'kg', null);
INSERT INTO `tb_standing_book` VALUES ('B', 'B00000001', '20', '8', '160', null, null, null, '30', '8', '240', 'pick_article', '33', '2018-05-30 17:10:10', 'zhi', 'type111', 'kg', null);
INSERT INTO `tb_standing_book` VALUES ('1', '1', null, null, null, '1', '1', '1', '2', '1', '2', 'sale_in_article', '34', '2018-06-09 12:17:50', null, null, null, null);
INSERT INTO `tb_standing_book` VALUES ('3', '1', null, null, null, '2', '3', '4', '2', '3', '6', 'sale_in_article', '35', '2018-06-09 12:22:10', null, null, null, null);
INSERT INTO `tb_standing_book` VALUES ('1', '1', null, null, null, '1', '1', '1', '1', '1', '1', 'sale_in_article', '38', '2018-06-13 18:06:26', null, null, null, null);
INSERT INTO `tb_standing_book` VALUES ('1', '1', null, null, null, '1', '1', '1', '2', '1', '2', 'sale_in_article', '39', '2018-06-13 18:17:53', null, null, null, null);
INSERT INTO `tb_standing_book` VALUES ('1', '1', null, null, null, '1', '1', '1', '3', '1', '3', 'sale_in_article', '40', '2018-06-13 18:29:16', null, null, null, null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `type` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123456', 'admin');

-- ----------------------------
-- Procedure structure for allot_warehouse
-- ----------------------------
DROP PROCEDURE IF EXISTS `allot_warehouse`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `allot_warehouse`(IN `from_warehouse` varchar(45),IN `to_warehouse` varchar(45),IN `allot_article_number` varchar(45),IN `allot_quantity` double,IN `allot_unit_price` double,IN `allot_total_price` double,OUT `stat` int)
BEGIN
	
DECLARE stat_out INT DEFAULT 0;
DECLARE stat_in INT DEFAULT 0;
SET stat=1;
START TRANSACTION;
process:BEGIN  
  CALL sale_out(allot_article_number,allot_quantity,allot_unit_price,allot_total_price,from_warehouse,"allot_warehouse",@tmp1);
	SELECT @tmp1 INTO stat_out;
  IF stat_out=0 THEN 
		SET stat=0;
		LEAVE process;	
	END IF;
  
	CALL	sale_in(allot_article_number,allot_quantity,allot_unit_price,allot_total_price,to_warehouse,"allot_warehouse",@tmp2);
	SELECT @tmp2 INTO stat_in;
	IF stat_in=0 THEN 
		SET stat=0;
		LEAVE process;	
	END IF;

END;
IF stat=1 THEN
	COMMIT;
ELSE 
	ROLLBACK;
END IF;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pick_article
-- ----------------------------
DROP PROCEDURE IF EXISTS `pick_article`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pick_article`(IN `pick_article_number` varchar(45),IN `pick_quantity` double,IN `pick_unit_price` double,IN `pick_total_price` double,IN `pick_warehous_name` varchar(45),IN `pick_affair_type` varchar(45),OUT `stat` int)
BEGIN
DECLARE A INT;
DECLARE B INT;
DECLARE C INT;
SET stat=1;
START TRANSACTION;
process:BEGIN  
	SELECT quantity,unit_price,total_price INTO A,B,C  
		FROM tb_distribute_warehouse WHERE article_number=pick_article_number AND warehous_name=pick_warehous_name;
	IF ROW_COUNT()!=1 THEN 
		SET stat=0;
		LEAVE process;	
	END IF;
	
  INSERT INTO tb_standing_book(warehous_name,article_number,quantity_buy,unit_price_buy,total_price_buy,quantity_use,unit_price_use,total_price_use,
		quantity_surplus,unit_price_surplus,total_price_surplus,affair_type,time)VALUES(pick_warehous_name,pick_article_number,NULL,NULL,NULL,
		pick_quantity,pick_unit_price,pick_total_price,A,B,C,"pick_article",now()); 
	IF ROW_COUNT()!=1 THEN 
			SET stat=0;
			LEAVE process;	
	END IF;

	CALL put_out_warehouse(pick_article_number,pick_quantity,pick_unit_price,pick_total_price,pick_warehous_name ,"pick_article",@tmp);
  SELECT @tmp INTO stat;
	IF stat!=1 THEN 
			SET stat=0;
			LEAVE process;	
	END IF;
END;

IF stat=1 THEN
	COMMIT;
ELSE 
	ROLLBACK;
END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for put_in_warehouse
-- ----------------------------
DROP PROCEDURE IF EXISTS `put_in_warehouse`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `put_in_warehouse`(IN `in_article_number` varchar(45),IN `in_quantity` double,IN `in_unit_price` double,IN `in_total_price` double,IN `in_warehous_name` varchar(45),IN `in_affair_type` varchar(45),OUT `stat` int)
BEGIN
START TRANSACTION;
SET stat=1;

process:BEGIN 

	INSERT INTO tb_entry_warrant(warehous_name,article_number,quantity,unit_price,total_price,affair_type) 
       VALUES(in_warehous_name,in_article_number,in_quantity,in_unit_price,in_total_price,in_affair_type); 
	IF ROW_COUNT()!=1 THEN 
		SET stat=0;
		LEAVE process;	
	END IF;

	IF (SELECT COUNT(*) FROM tb_distribute_warehouse WHERE article_number=in_article_number AND warehous_name=in_warehous_name)=0 THEN
    INSERT INTO tb_distribute_warehouse VALUES(in_warehous_name,in_article_number,in_quantity,in_unit_price,in_total_price); 
		IF ROW_COUNT()!=1 THEN 
			SET stat=0;
			LEAVE process;	
		END IF;
	ELSE
    UPDATE tb_distribute_warehouse 
       SET quantity=quantity+in_quantity,total_price=total_price+in_quantity*in_unit_price,
			    unit_price=(total_price+in_quantity*in_unit_price)/(quantity+in_quantity) 
						WHERE article_number=in_article_number and warehous_name=in_warehous_name;  
		IF ROW_COUNT()!=1 THEN 
			SET stat=0;
			LEAVE process;	
		END IF;
	END IF;

	IF (SELECT COUNT(*) FROM tb_general_warehouse WHERE article_number=in_article_number)=0 THEN
    INSERT INTO tb_general_warehouse VALUES(in_article_number,in_quantity,in_unit_price,in_total_price);
		IF ROW_COUNT()!=1 THEN 
			SET stat=0;
			LEAVE process;	
		END IF;
	ELSE
    UPDATE tb_general_warehouse
       SET quantity=quantity+in_quantity,total_price=total_price+in_quantity*in_unit_price,
					unit_price=(total_price+in_quantity*in_unit_price)/(quantity+in_quantity)
						WHERE article_number=in_article_number; 
		IF ROW_COUNT()!=1 THEN 
			SET stat=0;
			LEAVE process;	
		END IF;
	END IF;
END;

IF stat=1 THEN
	COMMIT;
ELSE 
	ROLLBACK;
END IF;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for put_out_warehouse
-- ----------------------------
DROP PROCEDURE IF EXISTS `put_out_warehouse`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `put_out_warehouse`(IN `out_article_number` varchar(45),IN `out_quantity` double,IN `out_unit_price` double,IN `out_total_price` double,IN `out_warehous_name` varchar(45),IN `out_affair_type` varchar(45),OUT `stat` int)
BEGIN
DECLARE del  INT DEFAULT 0;
SET stat= 1;
START TRANSACTION;
process:BEGIN
	IF (SELECT COUNT(*) FROM tb_distribute_warehouse WHERE article_number=out_article_number AND warehous_name=out_warehous_name AND quantity>=out_quantity)=0 THEN
			SET stat=0;
			LEAVE process;	
	ELSE
    INSERT INTO tb_exit_warrant(warehous_name,article_number,quantity,unit_price,total_price,affair_type) 
           VALUES(out_warehous_name,out_article_number,out_quantity,out_unit_price,out_total_price,out_affair_type); 
		IF ROW_COUNT()!=1 THEN 
			SET stat=0;
			LEAVE process;	
		END IF;

    UPDATE tb_distribute_warehouse 
        SET quantity=quantity-out_quantity,total_price=total_price-out_quantity*out_unit_price,
					unit_price=(total_price-out_quantity*out_unit_price)/(quantity-out_quantity)
						WHERE article_number=out_article_number and warehous_name=out_warehous_name;
		IF ROW_COUNT()!=1 THEN 
			SET stat=0;
			LEAVE process;	
		END IF;
    
		SET del=(SELECT COUNT(*) FROM tb_distribute_warehouse where quantity=0 OR total_price=0);
    IF del>0 THEN
			DELETE FROM tb_distribute_warehouse where quantity=0 OR total_price=0;
			IF ROW_COUNT()!=del THEN 
				SET stat=0;
				LEAVE process;	
			END IF;
		END IF;

	END IF;

	IF (SELECT COUNT(*) FROM tb_general_warehouse WHERE article_number=out_article_number AND quantity>=out_quantity)=0 THEN
		SET stat=0;
		LEAVE process;	
	ELSE
    UPDATE tb_general_warehouse
       SET quantity=quantity-out_quantity,total_price=total_price-out_quantity*out_unit_price,
			   unit_price=(total_price-out_quantity*out_unit_price)/(quantity-out_quantity)
           WHERE article_number=out_article_number;
		IF ROW_COUNT()!=1 THEN 
			SET stat=0;
			LEAVE process;	
		END IF;

		SET del=(SELECT COUNT(*)FROM tb_general_warehouse WHERE quantity=0 OR total_price=0);
		IF del>0 THEN
			DELETE FROM tb_general_warehouse WHERE quantity=0 OR total_price=0;
			IF ROW_COUNT()!=del THEN 
				SET stat=0;
				LEAVE process;	
			END IF;
		END IF;

	END IF;

END;

IF stat=1 THEN
	COMMIT;
ELSE 
	ROLLBACK;
END IF;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for return_article
-- ----------------------------
DROP PROCEDURE IF EXISTS `return_article`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `return_article`(IN `return_article_number` varchar(45),IN `return_quantity` double,IN `return_unit_price` double,IN `return_total_price` double,IN `return_warehous_name` varchar(45),IN `return_affair_type` varchar(45),OUT stat int)
BEGIN
	
DECLARE A INT;
DECLARE B INT;
DECLARE C INT;
SET stat=1;
START TRANSACTION;
process:BEGIN  
	SELECT quantity,unit_price,total_price INTO A,B,C 
		FROM tb_distribute_warehouse WHERE article_number=return_article_number AND warehous_name=return_warehous_name;
	IF ROW_COUNT()!=1 THEN 
		SET stat=0;
		LEAVE process;	
	END IF;
	
  INSERT INTO tb_standing_book(warehous_name,article_number,quantity_buy,unit_price_buy,total_price_buy,quantity_use,unit_price_use,total_price_use,
		quantity_surplus,unit_price_surplus,total_price_surplus,affair_type,time)VALUES(return_warehous_name,return_article_number,NULL,NULL,NULL,
		return_quantity,return_unit_price,return_total_price,A+return_quantity,(C+return_quantity*return_unit_price)/(A+return_quantity),C+return_quantity*return_unit_price,"return_article",now()); 
	IF ROW_COUNT()!=1 THEN 
			SET stat=0;
			LEAVE process;	
	END IF;

	CALL put_in_warehouse(return_article_number,return_quantity,return_unit_price,return_total_price,return_warehous_name ,"return_article",@tmp);
  SELECT @tmp INTO stat; 
	IF stat!=1 THEN 
			SET stat=0;
			LEAVE process;	
	END IF;
END;

IF stat=1 THEN
	COMMIT;
ELSE 
	ROLLBACK;
END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sale_in
-- ----------------------------
DROP PROCEDURE IF EXISTS `sale_in`;
DELIMITER ;;
CREATE DEFINER=`skip-grants user`@`skip-grants host` PROCEDURE `sale_in`(IN `sale_in_article_number` varchar(45),IN `sale_in_quantity` double,IN `sale_in_unit_price` double,IN `sale_in_total_price` double,IN `sale_in_warehous_name` varchar(45),IN `sale_in_affair_type` varchar(45),OUT stat int)
BEGIN
	
DECLARE A INT;
DECLARE B INT;
DECLARE C INT;
SET stat=1;
START TRANSACTION;
process:BEGIN  

	IF sale_in_affair_type=NULL THEN
		SET sale_in_affair_type="sale_in";
	END IF;

	SELECT quantity,unit_price,total_price INTO A,B,C 
		FROM tb_distribute_warehouse WHERE article_number=sale_in_article_number AND warehous_name=sale_in_warehous_name;
  SET stat=ROW_COUNT();
	IF stat!=1 THEN 
		SET stat=0;
		LEAVE process;	
	END IF;
	
  INSERT INTO tb_standing_book(warehous_name,article_number,quantity_buy,unit_price_buy,total_price_buy,quantity_use,unit_price_use,total_price_use,
		quantity_surplus,unit_price_surplus,total_price_surplus,affair_type,time)VALUES(sale_in_warehous_name,sale_in_article_number,sale_in_quantity,sale_in_unit_price,sale_in_total_price,
		NULL,NULL,NULL,A+sale_in_quantity,(C+sale_in_quantity*sale_in_unit_price)/(A+sale_in_quantity),C+sale_in_quantity*sale_in_unit_price,sale_in_affair_type,now()); 
	IF ROW_COUNT()!=1 THEN 
			SET stat=0;
			LEAVE process;	
	END IF;
	
	CALL put_in_warehouse(sale_in_article_number,sale_in_quantity,sale_in_unit_price,sale_in_total_price,sale_in_warehous_name ,sale_in_affair_type,@tmp);
  SELECT @tmp INTO stat; 
	IF stat!=1 THEN 
			SET stat=0;
			LEAVE process;	
	END IF;

END;

IF stat=1 THEN
	COMMIT;
ELSE 
	ROLLBACK;
END IF;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sale_out
-- ----------------------------
DROP PROCEDURE IF EXISTS `sale_out`;
DELIMITER ;;
CREATE DEFINER=`skip-grants user`@`skip-grants host` PROCEDURE `sale_out`(IN `sale_out_article_number` varchar(45),IN `sale_out_quantity` double,IN `sale_out_unit_price` double,IN `sale_out_total_price` double,IN `sale_out_warehous_name` varchar(45),IN `sale_out_affair_type` varchar(45),OUT `stat` int)
BEGIN
	
DECLARE A INT;
DECLARE B INT;
DECLARE C INT;
SET stat=1;
START TRANSACTION;
process:BEGIN  

	IF sale_out_affair_type=NULL THEN
		SET sale_out_affair_type="sale_out";
	END IF;
	SELECT quantity,unit_price,total_price INTO A,B,C 
		FROM tb_distribute_warehouse WHERE article_number=sale_out_article_number AND warehous_name=sale_out_warehous_name;
	IF ROW_COUNT()!=1 THEN 
		SET stat=0;
		LEAVE process;	
	END IF;
	
  INSERT INTO tb_standing_book(warehous_name,article_number,quantity_buy,unit_price_buy,total_price_buy,quantity_use,unit_price_use,total_price_use,
		quantity_surplus,unit_price_surplus,total_price_surplus,affair_type,time)VALUES(sale_out_warehous_name,sale_out_article_number,sale_out_quantity,sale_out_unit_price,sale_out_total_price,
		NULL,NULL,NULL,A,B,C,sale_out_affair_type,now()); 
	IF ROW_COUNT()!=1 THEN 
			SET stat=0;
			LEAVE process;	
	END IF;

	CALL put_out_warehouse(sale_out_article_number,sale_out_quantity,sale_out_unit_price,sale_out_total_price,sale_out_warehous_name ,sale_out_affair_type,@tmp);
  SELECT @tmp INTO stat;
	IF stat!=1 THEN 
			SET stat=0;
			LEAVE process;	
	END IF;
END;

IF stat=1 THEN
	COMMIT;
ELSE 
	ROLLBACK;
END IF;
END
;;
DELIMITER ;

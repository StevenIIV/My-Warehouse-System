/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : mywarehouse

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-05-29 21:49:40
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
INSERT INTO `tb_distribute_warehouse` VALUES ('A', 'B00000001', '90', '8', '720');
INSERT INTO `tb_distribute_warehouse` VALUES ('B', 'B00000001', '50', '8', '400');

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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_entry_warrant
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_exit_warrant
-- ----------------------------

-- ----------------------------
-- Table structure for tb_general_warehouse
-- ----------------------------
DROP TABLE IF EXISTS `tb_general_warehouse`;
CREATE TABLE `tb_general_warehouse` (
  `article_number` varchar(45) NOT NULL DEFAULT 'A00000000',
  `quantity` double DEFAULT '0',
  `unit_price` double DEFAULT '0',
  `total_price` double DEFAULT '0',
  PRIMARY KEY (`article_number`),
  UNIQUE KEY `article_number_UNIQUE` (`article_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_general_warehouse
-- ----------------------------
INSERT INTO `tb_general_warehouse` VALUES ('B00000001', '140', '8', '1120');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_pick_warrant
-- ----------------------------
INSERT INTO `tb_pick_warrant` VALUES ('B', 'B00000001', '20', '8', '160', '7', 'in', '2018-05-29 21:47:28', 'xxxxarticle', 'zhi', 'type111', 'kg', 'xxxxcompany', 'AA', 'BB', 'cc', 'comment', 'xxwarkshop', 'xxuser', 'producesth');

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
INSERT INTO `tb_return_warrant` VALUES ('B', 'B00000001', '20', '8', '160', '1', 'in', '2018-05-29 21:45:30', 'xxxxarticle', 'zhi', 'type111', 'kg', 'xxxxcompany', 'AA', 'BB', 'cc', 'comment', 'xxwarkshop', 'xxuser', 'producesth');
INSERT INTO `tb_return_warrant` VALUES ('B', 'B00000001', '20', '8', '160', '2', 'in', '2018-05-29 21:46:07', 'xxxxarticle', 'zhi', 'type111', 'kg', 'xxxxcompany', 'AA', 'BB', 'cc', 'comment', 'xxwarkshop', 'xxuser', 'producesth');

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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_standing_book
-- ----------------------------
INSERT INTO `tb_standing_book` VALUES ('B', 'B00000001', null, null, null, '20', '8', '160', '30', '8', '240', 'return_article', '29', '2018-05-29 21:43:18', 'zhi', 'type111', 'kg', null);
INSERT INTO `tb_standing_book` VALUES ('B', 'B00000001', null, null, null, '20', '8', '160', '50', '8', '400', 'return_article', '30', '2018-05-29 21:45:30', 'zhi', 'type111', 'kg', null);
INSERT INTO `tb_standing_book` VALUES ('B', 'B00000001', null, null, null, '20', '8', '160', '70', '8', '560', 'return_article', '31', '2018-05-29 21:46:07', 'zhi', 'type111', 'kg', null);
INSERT INTO `tb_standing_book` VALUES ('B', 'B00000001', '20', '8', '160', null, null, null, '50', '8', '400', 'pick_article', '32', '2018-05-29 21:47:28', 'zhi', 'type111', 'kg', null);

-- ----------------------------
-- Procedure structure for allot_warehouse
-- ----------------------------
DROP PROCEDURE IF EXISTS `allot_warehouse`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `allot_warehouse`(IN `from_warehouse` varchar(45),IN `to_warehouse` varchar(45),IN `allot_article_number` varchar(45),IN `allot_quantity` double,IN `allot_unit_price` double,IN `allot_total_price` double,OUT `stat` int)
BEGIN
	#Routine body goes here...
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
       VALUES(in_warehous_name,in_article_number,in_quantity,in_unit_price,in_total_price,in_affair_type); #导入“入库表”
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
	#Routine body goes here...
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
	#Routine body goes here...
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
	#Routine body goes here...
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

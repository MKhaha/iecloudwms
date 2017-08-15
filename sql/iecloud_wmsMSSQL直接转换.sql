/*
Navicat MySQL Data Transfer

Source Server         : mysqlconnection
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : joowms

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2017-08-11 14:18:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `user_name` varchar(20) NOT NULL DEFAULT '' COMMENT '登录用户名',
  `pass_word` varchar(50) NOT NULL DEFAULT '' COMMENT '登录密码',
  `user_code` varchar(40) NOT NULL DEFAULT '' COMMENT '用户编号',
  `real_name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户编号',
  `email` varchar(30) DEFAULT '',
  `mobile` varchar(11) DEFAULT '',
  `phone` varchar(20) DEFAULT '',
  `create_time` datetime NOT NULL,
  `create_ip` varchar(20) DEFAULT '',
  `create_user` varchar(15) DEFAULT '',
  `login_count` int(11) NOT NULL DEFAULT '0',
  `picture` varchar(30) DEFAULT '',
  `update_time` datetime NOT NULL,
  `is_delete` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `depart_num` varchar(20) DEFAULT '',
  `parent_code` varchar(40) NOT NULL DEFAULT '',
  `role_num` varchar(20) NOT NULL DEFAULT '',
  `remark` varchar(20) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'administrator', 'adminjooshow', 'DA_0000', '系统管理员', 'hechenqingyuan@gmail.com', '', '', '2017-08-10 14:49:59', '', '', '6', '', '2017-08-10 14:49:59', '0', '0', '', '', 'DR_0000', '');

-- ----------------------------
-- Table structure for bad_report
-- ----------------------------
DROP TABLE IF EXISTS `bad_report`;
CREATE TABLE `bad_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(50) NOT NULL DEFAULT '',
  `bad_type` int(11) NOT NULL DEFAULT '0',
  `product_type` int(11) NOT NULL DEFAULT '0',
  `storage_num` varchar(50) NOT NULL DEFAULT '',
  `contract_order` varchar(50) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '0',
  `num` double DEFAULT '0',
  `amount` double DEFAULT '0',
  `weight` double DEFAULT '0',
  `is_delete` int(11) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `create_user` varchar(20) DEFAULT '',
  `audit_user` varchar(20) DEFAULT '',
  `audite_time` datetime DEFAULT NULL,
  `print_user` varchar(20) DEFAULT '',
  `print_time` datetime DEFAULT NULL,
  `reason` varchar(400) DEFAULT '',
  `operate_type` int(11) NOT NULL DEFAULT '0',
  `equipment_num` varchar(20) NOT NULL DEFAULT '',
  `equipment_code` varchar(20) NOT NULL DEFAULT '',
  `remark` varchar(400) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bad_report
-- ----------------------------

-- ----------------------------
-- Table structure for bad_report_detail
-- ----------------------------
DROP TABLE IF EXISTS `bad_report_detail`;
CREATE TABLE `bad_report_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn_num` varchar(50) NOT NULL DEFAULT '',
  `order_num` varchar(50) NOT NULL DEFAULT '',
  `product_name` varchar(100) DEFAULT '',
  `bar_code` varchar(50) NOT NULL DEFAULT '',
  `product_num` varchar(50) NOT NULL DEFAULT '',
  `batch_num` varchar(50) DEFAULT '',
  `num` double NOT NULL DEFAULT '0',
  `in_price` double DEFAULT '0',
  `amount` double DEFAULT '0',
  `create_time` datetime NOT NULL,
  `storage_num` varchar(20) DEFAULT '',
  `from_local_num` varchar(20) DEFAULT '',
  `to_local_num` varchar(20) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bad_report_detail
-- ----------------------------

-- ----------------------------
-- Table structure for check_data
-- ----------------------------
DROP TABLE IF EXISTS `check_data`;
CREATE TABLE `check_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(50) NOT NULL DEFAULT '',
  `local_num` varchar(50) DEFAULT '',
  `local_name` varchar(50) DEFAULT '',
  `storage_num` varchar(50) DEFAULT '',
  `product_num` varchar(50) DEFAULT '',
  `bar_code` varchar(50) DEFAULT '',
  `product_name` varchar(50) DEFAULT '',
  `batch_num` varchar(50) DEFAULT '',
  `local_qty` double DEFAULT '0',
  `first_qty` double DEFAULT '0',
  `second_qty` double DEFAULT '0',
  `dif_qty` double DEFAULT '0',
  `first_user` varchar(50) DEFAULT '',
  `second_user` varchar(50) DEFAULT '',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of check_data
-- ----------------------------

-- ----------------------------
-- Table structure for check_stock
-- ----------------------------
DROP TABLE IF EXISTS `check_stock`;
CREATE TABLE `check_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(20) NOT NULL DEFAULT '',
  `type` int(11) NOT NULL DEFAULT '0',
  `product_type` int(11) NOT NULL DEFAULT '0',
  `storage_num` varchar(50) NOT NULL DEFAULT '',
  `contract_order` varchar(50) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '0',
  `local_qty` double NOT NULL DEFAULT '0',
  `check_qty` double NOT NULL DEFAULT '0',
  `is_delete` int(11) NOT NULL DEFAULT '0',
  `is_complete` int(11) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `create_user` varchar(20) DEFAULT '',
  `audit_user` varchar(20) DEFAULT '',
  `audite_time` datetime DEFAULT NULL,
  `print_user` varchar(20) DEFAULT '',
  `print_time` datetime DEFAULT NULL,
  `reason` varchar(400) DEFAULT '',
  `operate_type` int(11) DEFAULT '0',
  `equipment_num` varchar(20) DEFAULT '',
  `equipment_code` varchar(20) DEFAULT '',
  `remark` varchar(400) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of check_stock
-- ----------------------------

-- ----------------------------
-- Table structure for check_stock_info
-- ----------------------------
DROP TABLE IF EXISTS `check_stock_info`;
CREATE TABLE `check_stock_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(50) NOT NULL DEFAULT '',
  `storage_num` varchar(50) NOT NULL DEFAULT '',
  `target_num` varchar(50) NOT NULL DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of check_stock_info
-- ----------------------------

-- ----------------------------
-- Table structure for clone_history
-- ----------------------------
DROP TABLE IF EXISTS `clone_history`;
CREATE TABLE `clone_history` (
  `clone_i_d` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(50) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL DEFAULT '0',
  `sn` varchar(50) NOT NULL DEFAULT '',
  `storage_num` varchar(50) DEFAULT '',
  `storage_name` varchar(50) DEFAULT '',
  `local_num` varchar(50) DEFAULT '',
  `local_name` varchar(50) DEFAULT '',
  `local_type` int(11) DEFAULT '0',
  `product_num` varchar(50) DEFAULT '',
  `bar_code` varchar(50) DEFAULT '',
  `product_name` varchar(200) DEFAULT '',
  `batch_num` varchar(50) DEFAULT '',
  `num` double NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `create_user` varchar(50) DEFAULT '',
  `create_name` varchar(50) DEFAULT '',
  `remark` varchar(200) DEFAULT '',
  PRIMARY KEY (`clone_i_d`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clone_history
-- ----------------------------

-- ----------------------------
-- Table structure for clone_temp
-- ----------------------------
DROP TABLE IF EXISTS `clone_temp`;
CREATE TABLE `clone_temp` (
  `clone_i_d` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(50) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL DEFAULT '0',
  `sn` varchar(50) NOT NULL DEFAULT '',
  `storage_num` varchar(50) DEFAULT '',
  `storage_name` varchar(50) DEFAULT '',
  `local_num` varchar(50) DEFAULT '',
  `local_name` varchar(50) DEFAULT '',
  `local_type` int(11) DEFAULT '0',
  `product_num` varchar(50) DEFAULT '',
  `bar_code` varchar(50) DEFAULT '',
  `product_name` varchar(200) DEFAULT '',
  `batch_num` varchar(50) DEFAULT '',
  `num` double NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `create_user` varchar(50) DEFAULT '',
  `create_name` varchar(50) DEFAULT '',
  `remark` varchar(200) DEFAULT '',
  PRIMARY KEY (`clone_i_d`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clone_temp
-- ----------------------------

-- ----------------------------
-- Table structure for cus_address
-- ----------------------------
DROP TABLE IF EXISTS `cus_address`;
CREATE TABLE `cus_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn_num` varchar(200) NOT NULL DEFAULT '',
  `cus_num` varchar(20) NOT NULL DEFAULT '',
  `contact` varchar(200) DEFAULT '',
  `phone` varchar(20) DEFAULT '',
  `address` varchar(200) NOT NULL DEFAULT '',
  `is_delete` int(11) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `create_user` varchar(20) DEFAULT '',
  `remark` varchar(200) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cus_address
-- ----------------------------

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_num` varchar(20) NOT NULL DEFAULT '',
  `cus_name` varchar(20) NOT NULL DEFAULT '',
  `phone` varchar(20) DEFAULT '',
  `email` varchar(30) DEFAULT '',
  `fax` varchar(30) DEFAULT '',
  `address` varchar(200) DEFAULT '',
  `cus_type` int(11) DEFAULT '0',
  `is_delete` int(11) DEFAULT '0',
  `create_time` datetime NOT NULL,
  `create_user` varchar(20) DEFAULT '',
  `remark` varchar(200) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', '000001', '谢国涛', '', '', '', null, '0', '0', '2017-08-10 15:38:22', null, '');

-- ----------------------------
-- Table structure for equipment
-- ----------------------------
DROP TABLE IF EXISTS `equipment`;
CREATE TABLE `equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn_num` varchar(20) NOT NULL DEFAULT '',
  `equipment_name` varchar(50) NOT NULL DEFAULT '',
  `equipment_num` varchar(20) NOT NULL DEFAULT '',
  `is_impower` int(11) NOT NULL DEFAULT '0',
  `flag` varchar(20) DEFAULT '',
  `is_delete` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `create_user` varchar(200) NOT NULL DEFAULT '',
  `create_time` datetime NOT NULL,
  `remark` varchar(400) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of equipment
-- ----------------------------

-- ----------------------------
-- Table structure for in_storage
-- ----------------------------
DROP TABLE IF EXISTS `in_storage`;
CREATE TABLE `in_storage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(50) NOT NULL DEFAULT '',
  `in_type` int(11) NOT NULL DEFAULT '0',
  `product_type` int(11) NOT NULL DEFAULT '0',
  `storage_num` varchar(50) NOT NULL DEFAULT '',
  `sup_num` varchar(50) NOT NULL DEFAULT '',
  `sup_name` varchar(100) NOT NULL DEFAULT '',
  `contact_name` varchar(100) DEFAULT '',
  `phone` varchar(50) DEFAULT '',
  `address` varchar(100) DEFAULT '',
  `contract_order` varchar(50) DEFAULT '',
  `contract_type` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `is_delete` int(11) NOT NULL DEFAULT '0',
  `num` double DEFAULT '0',
  `amount` double NOT NULL DEFAULT '0',
  `net_weight` double NOT NULL DEFAULT '0',
  `gross_weight` double NOT NULL DEFAULT '0',
  `order_time` datetime DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `create_user` varchar(50) DEFAULT '',
  `audit_user` varchar(50) DEFAULT '',
  `audite_time` datetime DEFAULT NULL,
  `print_user` varchar(50) DEFAULT '',
  `print_time` datetime DEFAULT NULL,
  `store_keeper` varchar(50) DEFAULT '',
  `reason` varchar(400) DEFAULT '',
  `operate_type` int(11) NOT NULL DEFAULT '0',
  `equipment_num` varchar(50) NOT NULL DEFAULT '',
  `equipment_code` varchar(50) NOT NULL DEFAULT '',
  `remark` varchar(400) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of in_storage
-- ----------------------------

-- ----------------------------
-- Table structure for instor_detail
-- ----------------------------
DROP TABLE IF EXISTS `instor_detail`;
CREATE TABLE `instor_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn_num` varchar(50) NOT NULL DEFAULT '',
  `order_num` varchar(50) NOT NULL DEFAULT '',
  `product_name` varchar(100) DEFAULT '',
  `bar_code` varchar(50) NOT NULL DEFAULT '',
  `product_num` varchar(50) NOT NULL DEFAULT '',
  `batch_num` varchar(50) DEFAULT '',
  `num` double NOT NULL DEFAULT '0',
  `is_pick` int(11) NOT NULL DEFAULT '0',
  `real_num` double NOT NULL DEFAULT '0',
  `in_price` double NOT NULL DEFAULT '0',
  `amount` double NOT NULL DEFAULT '0',
  `contract_order` varchar(50) DEFAULT '',
  `create_time` datetime NOT NULL,
  `local_num` varchar(50) DEFAULT '',
  `storage_num` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of instor_detail
-- ----------------------------

-- ----------------------------
-- Table structure for inventory_book
-- ----------------------------
DROP TABLE IF EXISTS `inventory_book`;
CREATE TABLE `inventory_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_num` varchar(50) NOT NULL DEFAULT '',
  `bar_code` varchar(50) NOT NULL DEFAULT '',
  `product_name` varchar(50) NOT NULL DEFAULT '',
  `batch_num` varchar(50) DEFAULT '',
  `num` double NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `contact_order` varchar(50) NOT NULL DEFAULT '',
  `from_local_num` varchar(50) DEFAULT '',
  `to_local_num` varchar(50) DEFAULT '',
  `store_num` varchar(50) DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `create_user` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inventory_book
-- ----------------------------

-- ----------------------------
-- Table structure for local_product
-- ----------------------------
DROP TABLE IF EXISTS `local_product`;
CREATE TABLE `local_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` varchar(50) NOT NULL DEFAULT '',
  `storage_num` varchar(50) DEFAULT '',
  `storage_name` varchar(50) DEFAULT '',
  `local_num` varchar(50) DEFAULT '',
  `local_name` varchar(50) DEFAULT '',
  `local_type` int(11) DEFAULT '0',
  `product_num` varchar(50) DEFAULT '',
  `bar_code` varchar(50) DEFAULT '',
  `product_name` varchar(200) DEFAULT '',
  `batch_num` varchar(50) DEFAULT '',
  `num` double NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `create_user` varchar(50) DEFAULT '',
  `create_name` varchar(50) DEFAULT '',
  `remark` varchar(200) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of local_product
-- ----------------------------

-- ----------------------------
-- Table structure for location
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `local_num` varchar(20) NOT NULL DEFAULT '',
  `local_bar_code` varchar(20) NOT NULL DEFAULT '',
  `local_name` varchar(30) NOT NULL DEFAULT '',
  `storage_num` varchar(20) NOT NULL DEFAULT '',
  `storage_type` int(11) NOT NULL DEFAULT '0',
  `local_type` int(11) NOT NULL DEFAULT '0',
  `rack` varchar(100) DEFAULT '',
  `length` double NOT NULL DEFAULT '0',
  `width` double NOT NULL DEFAULT '0',
  `height` double NOT NULL DEFAULT '0',
  `x` double NOT NULL DEFAULT '0',
  `y` double NOT NULL DEFAULT '0',
  `z` double NOT NULL DEFAULT '0',
  `unit_num` varchar(20) NOT NULL DEFAULT '',
  `unit_name` varchar(20) NOT NULL DEFAULT '',
  `remark` varchar(4000) DEFAULT '',
  `is_forbid` int(11) NOT NULL DEFAULT '0',
  `is_default` int(11) NOT NULL DEFAULT '0',
  `is_delete` int(11) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of location
-- ----------------------------
INSERT INTO `location` VALUES ('1', 'PLDWI0000', 'PLDWI0000', '待入库位', 'DSP_0000', '1', '2', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '2017-08-10 14:49:59');
INSERT INTO `location` VALUES ('2', 'PLDWC0000', 'PLDWC0000', '待检库位', 'DSP_0000', '1', '3', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '2017-08-10 14:49:59');
INSERT INTO `location` VALUES ('3', 'PLDWO0000', 'PLDWO0000', '待出库位', 'DSP_0000', '1', '4', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '2017-08-10 14:49:59');
INSERT INTO `location` VALUES ('4', 'PLDB0000', 'PLDB0000', '报损库位', 'DSP_0000', '1', '5', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '2017-08-10 14:49:59');

-- ----------------------------
-- Table structure for measure
-- ----------------------------
DROP TABLE IF EXISTS `measure`;
CREATE TABLE `measure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` varchar(50) NOT NULL DEFAULT '',
  `measure_num` varchar(50) DEFAULT '',
  `measure_name` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of measure
-- ----------------------------
INSERT INTO `measure` VALUES ('1', '000002', '000001', '个');
INSERT INTO `measure` VALUES ('2', '000004', '000003', '套');

-- ----------------------------
-- Table structure for measurerel
-- ----------------------------
DROP TABLE IF EXISTS `measurerel`;
CREATE TABLE `measurerel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` varchar(50) NOT NULL DEFAULT '',
  `measure_source` varchar(50) DEFAULT '',
  `measure_target` varchar(50) DEFAULT '',
  `rate` double DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of measurerel
-- ----------------------------

-- ----------------------------
-- Table structure for moveorder
-- ----------------------------
DROP TABLE IF EXISTS `moveorder`;
CREATE TABLE `moveorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(50) NOT NULL DEFAULT '',
  `move_type` int(11) NOT NULL DEFAULT '0',
  `product_type` int(11) NOT NULL DEFAULT '0',
  `storage_num` varchar(50) NOT NULL DEFAULT '',
  `contract_order` varchar(50) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '0',
  `is_delete` int(11) NOT NULL DEFAULT '0',
  `num` double NOT NULL DEFAULT '0',
  `amout` double DEFAULT '0',
  `weight` double DEFAULT '0',
  `create_time` datetime NOT NULL,
  `create_user` varchar(20) DEFAULT '',
  `audit_user` varchar(20) DEFAULT '',
  `audite_time` datetime DEFAULT NULL,
  `print_user` varchar(20) DEFAULT '',
  `print_time` datetime DEFAULT NULL,
  `reason` varchar(400) DEFAULT '',
  `operate_type` int(11) NOT NULL DEFAULT '0',
  `equipment_num` varchar(20) NOT NULL DEFAULT '',
  `equipment_code` varchar(20) NOT NULL DEFAULT '',
  `remark` varchar(400) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moveorder
-- ----------------------------

-- ----------------------------
-- Table structure for moveorderdetail
-- ----------------------------
DROP TABLE IF EXISTS `moveorderdetail`;
CREATE TABLE `moveorderdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn_num` varchar(50) NOT NULL DEFAULT '',
  `order_num` varchar(50) NOT NULL DEFAULT '',
  `product_name` varchar(100) DEFAULT '',
  `bar_code` varchar(50) NOT NULL DEFAULT '',
  `product_num` varchar(50) NOT NULL DEFAULT '',
  `batch_num` varchar(50) DEFAULT '',
  `num` double NOT NULL DEFAULT '0',
  `in_price` double DEFAULT '0',
  `amout` double DEFAULT '0',
  `is_pick` int(11) NOT NULL DEFAULT '0',
  `real_num` double NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `storage_num` varchar(50) DEFAULT '',
  `from_local_num` varchar(50) DEFAULT '',
  `to_local_num` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moveorderdetail
-- ----------------------------

-- ----------------------------
-- Table structure for outstodetail
-- ----------------------------
DROP TABLE IF EXISTS `outstodetail`;
CREATE TABLE `outstodetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn_num` varchar(50) NOT NULL DEFAULT '',
  `order_num` varchar(50) NOT NULL DEFAULT '',
  `product_name` varchar(100) DEFAULT '',
  `bar_code` varchar(50) NOT NULL DEFAULT '',
  `product_num` varchar(50) NOT NULL DEFAULT '',
  `batch_num` varchar(50) DEFAULT '',
  `local_num` varchar(50) NOT NULL DEFAULT '',
  `storage_num` varchar(50) DEFAULT '',
  `num` double NOT NULL DEFAULT '0',
  `is_pick` int(11) NOT NULL DEFAULT '0',
  `real_num` double NOT NULL DEFAULT '0',
  `out_price` double DEFAULT '0',
  `amount` double DEFAULT '0',
  `contract_order` varchar(50) DEFAULT '',
  `contract_sn` varchar(50) DEFAULT '',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of outstodetail
-- ----------------------------

-- ----------------------------
-- Table structure for outstorage
-- ----------------------------
DROP TABLE IF EXISTS `outstorage`;
CREATE TABLE `outstorage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(50) NOT NULL DEFAULT '',
  `out_type` int(11) NOT NULL DEFAULT '0',
  `product_type` int(11) NOT NULL DEFAULT '0',
  `storage_num` varchar(50) NOT NULL DEFAULT '',
  `cus_num` varchar(50) NOT NULL DEFAULT '',
  `cus_name` varchar(100) NOT NULL DEFAULT '',
  `contact` varchar(50) DEFAULT '',
  `phone` varchar(50) DEFAULT '',
  `address` varchar(100) DEFAULT '',
  `contract_order` varchar(50) NOT NULL DEFAULT '',
  `num` double DEFAULT '0',
  `amount` double DEFAULT '0',
  `weight` double DEFAULT '0',
  `send_date` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `is_delete` int(11) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `create_user` varchar(50) DEFAULT '',
  `audit_user` varchar(50) DEFAULT '',
  `audite_time` datetime DEFAULT NULL,
  `print_user` varchar(50) DEFAULT '',
  `print_time` datetime DEFAULT NULL,
  `reason` varchar(400) DEFAULT '',
  `operate_type` int(11) NOT NULL DEFAULT '0',
  `equipment_num` varchar(50) NOT NULL DEFAULT '',
  `equipment_code` varchar(50) NOT NULL DEFAULT '',
  `remark` varchar(400) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of outstorage
-- ----------------------------

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn_num` varchar(50) NOT NULL DEFAULT '',
  `bar_code` varchar(50) NOT NULL DEFAULT '',
  `product_name` varchar(100) NOT NULL DEFAULT '',
  `num` double NOT NULL DEFAULT '0',
  `min_num` double NOT NULL DEFAULT '0',
  `max_num` double NOT NULL DEFAULT '0',
  `unit_num` varchar(50) NOT NULL DEFAULT '',
  `unit_name` varchar(50) NOT NULL DEFAULT '',
  `cate_num` varchar(50) NOT NULL DEFAULT '',
  `cate_name` varchar(50) DEFAULT '',
  `size` varchar(400) DEFAULT '',
  `color` varchar(200) DEFAULT '',
  `in_price` double NOT NULL DEFAULT '0',
  `out_price` double NOT NULL DEFAULT '0',
  `avg_price` double NOT NULL DEFAULT '0',
  `net_weight` double NOT NULL DEFAULT '0',
  `gross_weight` double NOT NULL DEFAULT '0',
  `description` text,
  `pic_url` varchar(200) DEFAULT '',
  `is_delete` int(11) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `create_user` varchar(20) DEFAULT '',
  `storage_num` varchar(20) DEFAULT '',
  `default_local` varchar(20) DEFAULT '',
  `cus_num` varchar(20) DEFAULT '',
  `cus_name` varchar(30) DEFAULT '',
  `display` varchar(50) DEFAULT '',
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '000001', 'G001', 'fasdf', '0', '0', '0', '000001', '个', '000003', '套', '', null, '0', '0', '0', '0', '0', '', null, '0', '2017-08-10 15:02:22', 'DA_0000', '', null, '', '', null, null);

-- ----------------------------
-- Table structure for productcategory
-- ----------------------------
DROP TABLE IF EXISTS `productcategory`;
CREATE TABLE `productcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_num` varchar(15) NOT NULL DEFAULT '',
  `cate_name` varchar(50) DEFAULT '',
  `is_delete` int(11) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `create_user` varchar(20) DEFAULT '',
  `remark` varchar(200) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of productcategory
-- ----------------------------
INSERT INTO `productcategory` VALUES ('1', '000001', '家具', '1', '2017-08-10 15:00:37', 'DA_0000', '');
INSERT INTO `productcategory` VALUES ('2', '000002', '电器', '1', '2017-08-10 15:00:47', 'DA_0000', '');
INSERT INTO `productcategory` VALUES ('3', '000003', '套', '0', '2017-08-10 15:01:52', 'DA_0000', '');

-- ----------------------------
-- Table structure for report_params
-- ----------------------------
DROP TABLE IF EXISTS `report_params`;
CREATE TABLE `report_params` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `param_num` varchar(50) NOT NULL DEFAULT '',
  `report_num` varchar(50) NOT NULL DEFAULT '',
  `input_no` varchar(50) DEFAULT '',
  `param_name` varchar(50) DEFAULT '',
  `show_name` varchar(50) DEFAULT '',
  `param_type` varchar(50) DEFAULT '',
  `param_data` varchar(1000) DEFAULT '',
  `default_value` varchar(100) DEFAULT '',
  `param_element` varchar(200) DEFAULT '',
  `remark` varchar(200) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report_params
-- ----------------------------

-- ----------------------------
-- Table structure for reports
-- ----------------------------
DROP TABLE IF EXISTS `reports`;
CREATE TABLE `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report_num` varchar(50) NOT NULL DEFAULT '',
  `report_name` varchar(50) DEFAULT '',
  `report_type` int(11) DEFAULT '0',
  `remark` varchar(200) DEFAULT '',
  `data_source` varchar(4000) DEFAULT '',
  `ds_type` int(11) DEFAULT '0',
  `file_name` varchar(200) DEFAULT '',
  `is_delete` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reports
-- ----------------------------

-- ----------------------------
-- Table structure for return_detail
-- ----------------------------
DROP TABLE IF EXISTS `return_detail`;
CREATE TABLE `return_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn_num` varchar(50) NOT NULL DEFAULT '',
  `order_num` varchar(50) NOT NULL DEFAULT '',
  `contract_order` varchar(50) NOT NULL DEFAULT '',
  `product_name` varchar(100) DEFAULT '',
  `bar_code` varchar(50) NOT NULL DEFAULT '',
  `product_num` varchar(50) NOT NULL DEFAULT '',
  `batch_num` varchar(50) DEFAULT '',
  `local_num` varchar(50) NOT NULL DEFAULT '',
  `storage_num` varchar(50) DEFAULT '',
  `num` double NOT NULL DEFAULT '0',
  `out_price` double DEFAULT '0',
  `amount` double DEFAULT '0',
  `back_num` double NOT NULL DEFAULT '0',
  `back_amount` double NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of return_detail
-- ----------------------------

-- ----------------------------
-- Table structure for return_order
-- ----------------------------
DROP TABLE IF EXISTS `return_order`;
CREATE TABLE `return_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(50) NOT NULL DEFAULT '',
  `return_type` int(11) NOT NULL DEFAULT '0',
  `product_type` int(11) NOT NULL DEFAULT '0',
  `storage_num` varchar(50) NOT NULL DEFAULT '',
  `cus_num` varchar(50) NOT NULL DEFAULT '',
  `cus_name` varchar(100) NOT NULL DEFAULT '',
  `contact` varchar(50) DEFAULT '',
  `phone` varchar(50) DEFAULT '',
  `address` varchar(100) DEFAULT '',
  `contract_order` varchar(50) NOT NULL DEFAULT '',
  `num` double DEFAULT '0',
  `amount` double DEFAULT '0',
  `weight` double DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `is_delete` int(11) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `create_user` varchar(50) DEFAULT '',
  `audit_user` varchar(50) DEFAULT '',
  `audite_time` datetime DEFAULT NULL,
  `print_user` varchar(50) DEFAULT '',
  `print_time` datetime DEFAULT NULL,
  `reason` varchar(400) DEFAULT '',
  `operate_type` int(11) NOT NULL DEFAULT '0',
  `equipment_num` varchar(50) NOT NULL DEFAULT '',
  `equipment_code` varchar(50) NOT NULL DEFAULT '',
  `remark` varchar(400) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of return_order
-- ----------------------------

-- ----------------------------
-- Table structure for sequence
-- ----------------------------
DROP TABLE IF EXISTS `sequence`;
CREATE TABLE `sequence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` varchar(50) DEFAULT '',
  `tab_name` varchar(50) NOT NULL DEFAULT '',
  `first_type` int(11) NOT NULL DEFAULT '0',
  `first_rule` varchar(100) DEFAULT '',
  `first_length` int(11) DEFAULT '0',
  `second_type` int(11) DEFAULT '0',
  `second_rule` varchar(100) DEFAULT '',
  `second_length` int(11) DEFAULT '0',
  `third_type` int(11) DEFAULT '0',
  `third_rule` varchar(100) DEFAULT '',
  `third_length` int(11) DEFAULT '0',
  `four_type` int(11) DEFAULT '0',
  `four_rule` varchar(100) DEFAULT '',
  `four_length` int(11) DEFAULT '0',
  `join_char` varchar(10) DEFAULT '',
  `sample` varchar(100) DEFAULT '',
  `current_value` varchar(100) DEFAULT '',
  `remark` varchar(200) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sequence
-- ----------------------------
INSERT INTO `sequence` VALUES ('1', 'ffaab43e-98e7-4c3e-b23f-2ad1f811b256', 'SysDepart', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('2', '141197fe-490e-4b1c-8d2c-76920e961d50', 'SysRole', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('3', 'a74b1607-0f3d-4f02-9954-479c5c2baf2b', 'Admin', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('4', 'c6f833fd-9454-4c00-a785-6c7aea411c98', 'SysResource', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('5', '6af56b6e-8145-4eaf-9837-00d672d794a6', 'SysRelation', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('6', '1776a4ac-8ab6-4aea-bb81-bc7f0c194351', 'TNum', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('7', 'f3cfc76d-975e-4cea-b39a-d6b81c513dfd', 'Sequence', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('8', 'ce59c62b-cc70-4647-8583-4c166fc9e819', 'Storage', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('9', 'ff9b43f9-ce5e-4927-b7a6-2f1f0cd30b06', 'Location', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('10', '8d2411e3-3b67-4137-860d-4803cef5542a', 'Equipment', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('11', '13b1ec9b-d094-404a-b83e-fa6c303b5952', 'Supplier', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('12', '14257035-a705-4cbd-a9ff-53975ed8faa4', 'Customer', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('13', '9e8c3719-0a93-47ed-a2ff-a1bb9864a2d3', 'CusAddress', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('14', 'c63099e9-70e2-44ef-836c-d5831eaf6011', 'ProductCategory', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('15', '0536b3a2-011e-4661-8adf-d93ea71c770b', 'Product', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('16', '46d208d4-1151-45be-afd8-bf801a3e9697', 'Measure', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('17', 'fa1b3aaf-0b6f-4efa-83d0-f6c5c8171bb6', 'MeasureRel', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('18', '772074e4-f1af-4016-bbc4-575a41429a73', 'InStorage', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('19', 'c20a4bb6-327d-4c60-ab42-cf6a946f0a20', 'InStorDetail', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('20', '846ba4d3-f107-4429-85d3-997bcc33bc91', 'OutStorage', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('21', '62023d9d-f52b-4d10-8e3f-c63b0b838782', 'OutStoDetail', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('22', '2a4b7c21-0e88-42c2-8b3f-e7c4088558c3', 'LocalProduct', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('23', '7871c871-adee-4cc6-94b4-e7ddcfe23a2d', 'InventoryBook', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('24', '5a6d63a9-885a-49c1-9e14-4b9dede01b03', 'CheckStock', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('25', '783c6506-dfab-45d5-b4c9-9f8970e5b71a', 'CheckStockInfo', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('26', '26f7aeb5-3158-4ab3-879b-5bb1f2ad7787', 'CheckData', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('27', '46e3b2c9-e6db-4eb5-abcf-70ebf0ed1f27', 'CloneTemp', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('28', 'e590a580-2af1-45c9-90ec-b5e1f6e83b89', 'CloneHistory', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('29', 'a30ef0b2-4b04-4fa7-a2cc-46e8c2412c37', 'MoveOrder', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('30', '2f088538-75f5-492b-8c0d-93d51674296d', 'MoveOrderDetail', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('31', '559f7fad-354a-40fc-9af1-f2a41201c881', 'BadReport', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('32', 'ef1ac839-2be2-4fdf-ac33-63e90a78fba8', 'BadReportDetail', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('33', '22739d13-4cd4-435c-9a29-f851ccc000fe', 'ReturnOrder', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('34', '4048f903-63ef-4f99-9181-712008d563dd', 'ReturnDetail', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('35', 'c372d889-8794-4379-8448-e47866ada5dd', 'Reports', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('36', '2b69ea08-fecf-48ba-b4aa-6cf1ddc5fa65', 'ReportParams', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);
INSERT INTO `sequence` VALUES ('37', '5af7c7e3-0783-4553-81bf-cb5f8580a63c', 'sys_diagrams', '4', '', '6', '0', null, '0', '0', null, '0', '0', null, '0', '', null, null, null);

-- ----------------------------
-- Table structure for storage
-- ----------------------------
DROP TABLE IF EXISTS `storage`;
CREATE TABLE `storage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_num` varchar(20) NOT NULL DEFAULT '',
  `storage_name` varchar(50) DEFAULT '',
  `storage_type` int(11) NOT NULL DEFAULT '0',
  `length` double NOT NULL DEFAULT '0',
  `width` double NOT NULL DEFAULT '0',
  `height` double NOT NULL DEFAULT '0',
  `action` varchar(200) DEFAULT '',
  `is_delete` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `is_forbid` int(11) NOT NULL DEFAULT '0',
  `is_default` int(11) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `remark` varchar(200) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage
-- ----------------------------
INSERT INTO `storage` VALUES ('1', 'DSP_0000', '产品仓库', '1', '0', '0', '0', '', '0', '0', '1', '0', '2017-08-10 14:49:59', '');

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sup_num` varchar(50) NOT NULL DEFAULT '',
  `sup_name` varchar(50) NOT NULL DEFAULT '',
  `sup_type` int(11) DEFAULT '0',
  `phone` varchar(50) DEFAULT '',
  `fax` varchar(50) DEFAULT '',
  `email` varchar(30) DEFAULT '',
  `contact_name` varchar(20) DEFAULT '',
  `address` varchar(100) DEFAULT '',
  `create_user` varchar(50) DEFAULT '',
  `description` text,
  `contract_num` varchar(50) DEFAULT '',
  `is_delete` int(11) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supplier
-- ----------------------------

-- ----------------------------
-- Table structure for sys_depart
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart`;
CREATE TABLE `sys_depart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `depart_num` varchar(20) NOT NULL DEFAULT '',
  `depart_name` varchar(20) NOT NULL DEFAULT '',
  `child_count` int(11) NOT NULL DEFAULT '0',
  `parent_num` varchar(20) DEFAULT '',
  `depth` int(11) NOT NULL DEFAULT '0',
  `is_delete` int(11) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_depart
-- ----------------------------

-- ----------------------------
-- Table structure for sys_diagrams
-- ----------------------------
DROP TABLE IF EXISTS `sys_diagrams`;
CREATE TABLE `sys_diagrams` (
  `name` varchar(128) NOT NULL DEFAULT '',
  `principal_id` int(11) NOT NULL DEFAULT '0',
  `diagram_id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT '0',
  `definition` text,
  PRIMARY KEY (`diagram_id`),
  KEY `uk_principal_name` (`principal_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_diagrams
-- ----------------------------

-- ----------------------------
-- Table structure for sys_relation
-- ----------------------------
DROP TABLE IF EXISTS `sys_relation`;
CREATE TABLE `sys_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_num` varchar(20) NOT NULL DEFAULT '',
  `res_num` varchar(20) NOT NULL DEFAULT '',
  `res_type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_relation
-- ----------------------------
INSERT INTO `sys_relation` VALUES ('1', 'DR_0000', 'Sys_1000', '1');
INSERT INTO `sys_relation` VALUES ('2', 'DR_0000', 'Sys_2000', '1');
INSERT INTO `sys_relation` VALUES ('3', 'DR_0000', 'Sys_2001', '1');
INSERT INTO `sys_relation` VALUES ('4', 'DR_0000', 'Sys_2002', '1');
INSERT INTO `sys_relation` VALUES ('5', 'DR_0000', 'Sys_2003', '1');
INSERT INTO `sys_relation` VALUES ('6', 'DR_0000', 'Sys_2004', '1');
INSERT INTO `sys_relation` VALUES ('7', 'DR_0000', 'Sys_2005', '1');
INSERT INTO `sys_relation` VALUES ('8', 'DR_0000', 'Base_1000', '1');
INSERT INTO `sys_relation` VALUES ('9', 'DR_0000', 'Base_2000', '1');
INSERT INTO `sys_relation` VALUES ('10', 'DR_0000', 'Base_2001', '1');
INSERT INTO `sys_relation` VALUES ('11', 'DR_0000', 'Base_2002', '1');
INSERT INTO `sys_relation` VALUES ('12', 'DR_0000', 'Base_2003', '1');
INSERT INTO `sys_relation` VALUES ('13', 'DR_0000', 'Base_2004', '1');
INSERT INTO `sys_relation` VALUES ('14', 'DR_0000', 'Base_2005', '1');
INSERT INTO `sys_relation` VALUES ('15', 'DR_0000', 'Base_2006', '1');
INSERT INTO `sys_relation` VALUES ('16', 'DR_0000', 'Base_2007', '1');
INSERT INTO `sys_relation` VALUES ('17', 'DR_0000', 'Storage_1000', '1');
INSERT INTO `sys_relation` VALUES ('18', 'DR_0000', 'Storage_2000', '1');
INSERT INTO `sys_relation` VALUES ('19', 'DR_0000', 'Storage_3000', '1');
INSERT INTO `sys_relation` VALUES ('20', 'DR_0000', 'Storage_2001', '1');
INSERT INTO `sys_relation` VALUES ('21', 'DR_0000', 'Storage_3100', '1');
INSERT INTO `sys_relation` VALUES ('22', 'DR_0000', 'Storage_2002', '1');
INSERT INTO `sys_relation` VALUES ('23', 'DR_0000', 'Storage_3200', '1');
INSERT INTO `sys_relation` VALUES ('24', 'DR_0000', 'Storage_2003', '1');
INSERT INTO `sys_relation` VALUES ('25', 'DR_0000', 'Storage_3300', '1');
INSERT INTO `sys_relation` VALUES ('26', 'DR_0000', 'Storage_2004', '1');
INSERT INTO `sys_relation` VALUES ('27', 'DR_0000', 'Storage_3400', '1');
INSERT INTO `sys_relation` VALUES ('28', 'DR_0000', 'Storage_2005', '1');
INSERT INTO `sys_relation` VALUES ('29', 'DR_0000', 'Storage_3500', '1');
INSERT INTO `sys_relation` VALUES ('30', 'DR_0000', 'PO_1000', '1');
INSERT INTO `sys_relation` VALUES ('31', 'DR_0000', 'PO_2000', '1');
INSERT INTO `sys_relation` VALUES ('32', 'DR_0000', 'PO_2001', '1');
INSERT INTO `sys_relation` VALUES ('33', 'DR_0000', 'PO_2002', '1');
INSERT INTO `sys_relation` VALUES ('34', 'DR_0000', 'Report_1000', '1');
INSERT INTO `sys_relation` VALUES ('35', 'DR_0000', 'Report_2000', '1');
INSERT INTO `sys_relation` VALUES ('36', 'DR_0000', 'Report_2001', '1');
INSERT INTO `sys_relation` VALUES ('37', 'DR_0000', 'Report_2002', '1');
INSERT INTO `sys_relation` VALUES ('38', 'DR_0000', 'Report_2003', '1');
INSERT INTO `sys_relation` VALUES ('39', 'DR_0000', 'Report_2004', '1');
INSERT INTO `sys_relation` VALUES ('40', 'DR_0000', 'Report_2005', '1');
INSERT INTO `sys_relation` VALUES ('41', 'DR_0000', 'Report_2006', '1');
INSERT INTO `sys_relation` VALUES ('42', 'DR_0000', 'Report_2007', '1');
INSERT INTO `sys_relation` VALUES ('43', 'DR_0000', 'Report_2008', '1');
INSERT INTO `sys_relation` VALUES ('44', 'DR_0000', 'Report_2009', '1');

-- ----------------------------
-- Table structure for sys_resource
-- ----------------------------
DROP TABLE IF EXISTS `sys_resource`;
CREATE TABLE `sys_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `res_num` varchar(20) NOT NULL DEFAULT '',
  `res_name` varchar(20) NOT NULL DEFAULT '',
  `parent_num` varchar(20) DEFAULT '',
  `depth` int(11) NOT NULL DEFAULT '0',
  `parent_path` varchar(100) DEFAULT '',
  `child_count` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `is_hide` int(11) NOT NULL DEFAULT '0',
  `is_delete` int(11) NOT NULL DEFAULT '0',
  `url` varchar(200) NOT NULL DEFAULT '',
  `css_name` varchar(15) NOT NULL DEFAULT '',
  `create_time` datetime NOT NULL,
  `depart` int(11) NOT NULL DEFAULT '0',
  `res_type` int(11) NOT NULL DEFAULT '0',
  `update_time` datetime NOT NULL,
  `create_user` varchar(20) DEFAULT '',
  `update_user` varchar(20) DEFAULT '',
  `create_ip` varchar(20) DEFAULT '',
  `update_ip` varchar(20) DEFAULT '',
  `remark` varchar(200) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_resource
-- ----------------------------
INSERT INTO `sys_resource` VALUES ('1', 'Sys_1000', '系统设置', '', '0', '', '0', '0', '1', '0', '', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('2', 'Sys_2000', '员工管理', 'Sys_1000', '0', '', '0', '0', '1', '0', '/Home/UserList', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('3', 'Sys_2001', '角色管理', 'Sys_1000', '0', '', '0', '0', '1', '0', '/Home/RoleList', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('4', 'Sys_2002', '部门管理', 'Sys_1000', '0', '', '0', '0', '1', '0', '/Home/DepartList', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('5', 'Sys_2003', '菜单管理', 'Sys_1000', '0', '', '0', '0', '1', '0', '/Res/Index', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('6', 'Sys_2004', '权限分配', 'Sys_1000', '0', '', '0', '0', '1', '0', '/Res/Power', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('7', 'Sys_2007', '标识符管理', 'Sys_1000', '0', '', '0', '0', '1', '0', '/Home/SN', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('8', 'Base_1000', '基本资料', '', '0', '', '0', '0', '1', '0', '', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('9', 'Base_2001', '库位管理', 'Base_1000', '0', '', '0', '0', '1', '0', '/Storage/Location/List', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('10', 'Base_2003', '供应商管理', 'Base_1000', '0', '', '0', '0', '1', '0', '/Client/Supplier/Index', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('11', 'Base_2004', '客户管理', 'Base_1000', '0', '', '0', '0', '1', '0', '/Client/Customer/Index', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('12', 'Base_2005', '计量单位', 'Base_1000', '0', '', '0', '0', '1', '0', '/Storage/Measure/Index', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('13', 'Base_2006', '产品类别', 'Base_1000', '0', '', '0', '0', '1', '0', '/Product/Goods/List', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('14', 'Base_2007', '产品管理', 'Base_1000', '0', '', '0', '0', '1', '0', '/Product/Goods/Index', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('15', 'Storage_1000', '仓库作业', '', '0', '', '0', '0', '1', '0', '', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('16', 'Storage_2000', '入库管理', 'Storage_1000', '0', '', '0', '0', '1', '0', '/InStorage/Product/List', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('17', 'Storage_3000', '新增入库', 'Storage_2000', '0', '', '0', '0', '1', '0', '/InStorage/Product/Add', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('18', 'Storage_2001', '出库管理', 'Storage_1000', '0', '', '0', '0', '1', '0', '/OutStorage/Product/List', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('19', 'Storage_3100', '新增出库', 'Storage_2001', '0', '', '0', '0', '1', '0', '/OutStorage/Product/Add', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('20', 'Storage_2002', '报损管理', 'Storage_1000', '0', '', '0', '0', '1', '0', '/Bad/Product/List', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('21', 'Storage_3200', '新增报损', 'Storage_2002', '0', '', '0', '0', '1', '0', '/Bad/Product/Add', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('22', 'Storage_2003', '移库管理', 'Storage_1000', '0', '', '0', '0', '1', '0', '/Move/Product/List', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('23', 'Storage_3300', '新增移库', 'Storage_2003', '0', '', '0', '0', '1', '0', '/Move/Product/Add', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('24', 'Storage_2004', '盘点管理', 'Storage_1000', '0', '', '0', '0', '1', '0', '/Check/Product/List', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('25', 'Storage_3400', '新增盘点', 'Storage_2004', '0', '', '0', '0', '1', '0', '/Check/Product/Add', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('26', 'Storage_2005', '退货管理', 'Storage_1000', '0', '', '0', '0', '1', '0', '/Returns/Product/List', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('27', 'Storage_3500', '新增退货', 'Storage_2005', '0', '', '0', '0', '1', '0', '/Returns/Product/Add', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('28', 'Report_1000', '报表管理', '', '0', '', '0', '0', '1', '0', '', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('29', 'Report_2000', '库存清单', 'Report_1000', '0', '', '0', '0', '1', '0', '/Report/Report/StockBillReport', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('30', 'Report_2001', '货品统计', 'Report_1000', '0', '', '0', '0', '1', '0', '/Report/Report/ProductReport', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('31', 'Report_2002', '出入库报表', 'Report_1000', '0', '', '0', '0', '1', '0', '/Report/Report/ProductInOutReport', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('32', 'Report_2003', '入库报表', 'Report_1000', '0', '', '0', '0', '1', '0', '/Report/Report/InStorageReport', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('33', 'Report_2004', '出库报表', 'Report_1000', '0', '', '0', '0', '1', '0', '/Report/Report/OutStorageReport', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('34', 'Report_2005', '报损报表', 'Report_1000', '0', '', '0', '0', '1', '0', '/Report/Report/BadReport', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('35', 'Report_2006', '退货报表', 'Report_1000', '0', '', '0', '0', '1', '0', '/Report/Report/ReturnReport', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('36', 'Report_2007', '客户报表', 'Report_1000', '0', '', '0', '0', '1', '0', '/Report/Report/CustomerReport', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('37', 'Report_2008', '供应商报表', 'Report_1000', '0', '', '0', '0', '1', '0', '/Report/Report/SupplierReport', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('38', 'Report_2009', '台账记录', 'Report_1000', '0', '', '0', '0', '1', '0', '/Report/Report/InventoryReport', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('39', 'Report_2010', '自定义报表', 'Report_1000', '0', '', '0', '0', '1', '0', '/Report/Manager/List', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');
INSERT INTO `sys_resource` VALUES ('40', 'Report_31000', '新增报表', 'Report_2010', '0', '', '0', '0', '1', '0', '/Report/Manager/Add', '', '2017-08-10 14:50:06', '0', '1', '2017-08-10 14:50:06', '0001', 'DA_0000', '', '', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_num` varchar(20) NOT NULL DEFAULT '',
  `role_name` varchar(20) NOT NULL DEFAULT '',
  `is_delete` int(11) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `remark` varchar(200) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', 'DR_0000', '系统管理员', '0', '2017-08-10 14:49:59', '');

-- ----------------------------
-- Table structure for tnum
-- ----------------------------
DROP TABLE IF EXISTS `tnum`;
CREATE TABLE `tnum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL DEFAULT '0',
  `min_num` int(11) NOT NULL DEFAULT '0',
  `max_num` int(11) NOT NULL DEFAULT '0',
  `day` varchar(20) DEFAULT '',
  `tab_name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tnum
-- ----------------------------
INSERT INTO `tnum` VALUES ('1', '5', '1', '99999', '', 'Measure');
INSERT INTO `tnum` VALUES ('2', '4', '1', '99999', '', 'ProductCategory');
INSERT INTO `tnum` VALUES ('3', '2', '1', '99999', '', 'Product');
INSERT INTO `tnum` VALUES ('4', '2', '1', '99999', '', 'Customer');
INSERT INTO `tnum` VALUES ('5', '5', '1', '99999', '', 'OutStorage');

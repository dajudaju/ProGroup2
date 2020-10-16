/*
 Navicat MySQL Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : storesystem

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 16/10/2020 11:16:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

create database storesystem character set utf8 collate utf8_bin;

-- ----------------------------
-- Table structure for tb_address
-- ----------------------------
DROP TABLE IF EXISTS `tb_address`;
CREATE TABLE `tb_address`  (
  `a_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '地址主键编号',
  `c_id` int(11) NOT NULL COMMENT '用户的主键编号，外键约束',
  `a_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '地址详情',
  PRIMARY KEY (`a_id`) USING BTREE,
  INDEX `a_cid`(`c_id`) USING BTREE,
  CONSTRAINT `a_cid` FOREIGN KEY (`c_id`) REFERENCES `tb_customer` (`c_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_customer
-- ----------------------------
DROP TABLE IF EXISTS `tb_customer`;
CREATE TABLE `tb_customer`  (
  `c_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户主键编号',
  `c_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户账号名,唯一约束',
  `c_password` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户密码，MD5加密32位长度',
  `c_gender` bit(1) NULL DEFAULT b'0' COMMENT '用户性别,0：男，1：女',
  `c_tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户电话',
  `c_state` bit(1) NOT NULL DEFAULT b'0' COMMENT '用户账号状态，0：激活，1：禁用',
  PRIMARY KEY (`c_id`) USING BTREE,
  UNIQUE INDEX `c_name`(`c_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_discuss
-- ----------------------------
DROP TABLE IF EXISTS `tb_discuss`;
CREATE TABLE `tb_discuss`  (
  `d_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论主键编号',
  `c_id` int(11) NOT NULL COMMENT '用户主键编号，外键约束',
  `w_id` int(11) NOT NULL COMMENT '商品主键编号，外键约束',
  `d_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户的评论内容',
  `d_replay` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '管理员回复当条评论的内容',
  PRIMARY KEY (`d_id`) USING BTREE,
  INDEX `d_cid`(`c_id`) USING BTREE,
  INDEX `d_wid`(`w_id`) USING BTREE,
  CONSTRAINT `d_cid` FOREIGN KEY (`c_id`) REFERENCES `tb_customer` (`c_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `d_wid` FOREIGN KEY (`w_id`) REFERENCES `tb_ware` (`w_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_information
-- ----------------------------
DROP TABLE IF EXISTS `tb_information`;
CREATE TABLE `tb_information`  (
  `i_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '通知的主键编号',
  `c_id` int(11) NOT NULL COMMENT '用户的主键编号',
  `i_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '管理员发送的通知内容',
  `i_date` datetime(0) NOT NULL COMMENT '通知的发送时间',
  PRIMARY KEY (`i_id`) USING BTREE,
  INDEX `i_cid`(`c_id`) USING BTREE,
  CONSTRAINT `i_cid` FOREIGN KEY (`c_id`) REFERENCES `tb_customer` (`c_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_manager
-- ----------------------------
DROP TABLE IF EXISTS `tb_manager`;
CREATE TABLE `tb_manager`  (
  `m_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '管理员主键编号',
  `m_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '管理员账号名，唯一约束',
  `m_password` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '管理员密码，无加密，6~12位',
  PRIMARY KEY (`m_id`) USING BTREE,
  UNIQUE INDEX `m_name`(`m_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order`  (
  `o_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单主键编号',
  `c_id` int(11) NOT NULL COMMENT '用户主键编号，外键约束',
  `w_id` int(11) NOT NULL COMMENT '商品主键编号，外键约束',
  `a_id` int(11) NOT NULL COMMENT '地址主键编号，外键约束',
  `o_number` int(10) NOT NULL COMMENT '订单编号，固定10位长度',
  `o_consignee` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '订单收货人',
  `o_tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '收货人电话',
  `o_count` int(7) NOT NULL COMMENT '购买数量',
  `o_price` double(10, 2) NOT NULL COMMENT '订单总金额',
  `o_date` datetime(0) NOT NULL COMMENT '下单时间',
  `o_state` tinyint(2) NOT NULL DEFAULT 0 COMMENT '订单状态，0：未发货，1：已发货，2：已完成，3：待退款，4：已退款',
  PRIMARY KEY (`o_id`) USING BTREE,
  INDEX `o_cid`(`c_id`) USING BTREE,
  INDEX `o_wid`(`w_id`) USING BTREE,
  INDEX `o_aid`(`a_id`) USING BTREE,
  CONSTRAINT `o_aid` FOREIGN KEY (`a_id`) REFERENCES `tb_address` (`a_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `o_cid` FOREIGN KEY (`c_id`) REFERENCES `tb_customer` (`c_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `o_wid` FOREIGN KEY (`w_id`) REFERENCES `tb_ware` (`w_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_ware
-- ----------------------------
DROP TABLE IF EXISTS `tb_ware`;
CREATE TABLE `tb_ware`  (
  `w_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品主键编号',
  `t_id` int(4) NULL DEFAULT NULL COMMENT '商品分类主键编号，外键约束',
  `w_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '商品名称，唯一约束',
  `w_brand` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '小飞猪' COMMENT '商品品牌，只有一个值：小飞猪',
  `w_price` double(6, 2) NOT NULL COMMENT '商品单价',
  `w_repertory` int(11) NOT NULL DEFAULT 0 COMMENT '商品库存',
  `w_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '商品图片地址',
  `w_material` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '商品材料',
  `w_describe` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '商品描述',
  `w_sale` int(11) NOT NULL DEFAULT 0 COMMENT '商品销量',
  `w_state` bit(1) NULL DEFAULT b'0' COMMENT '商品上架/下架状态，0：未上架，1：已上架',
  PRIMARY KEY (`w_id`) USING BTREE,
  INDEX `w_tid`(`t_id`) USING BTREE,
  UNIQUE INDEX `w_name`(`w_name`) USING BTREE,
  CONSTRAINT `w_tid` FOREIGN KEY (`t_id`) REFERENCES `tb_waretype` (`t_id`) ON DELETE SET NULL ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_warecustomer
-- ----------------------------
DROP TABLE IF EXISTS `tb_warecustomer`;
CREATE TABLE `tb_warecustomer`  (
  `c_id` int(11) NOT NULL COMMENT '用户主键编号，联合主键',
  `w_id` int(11) NOT NULL COMMENT '商品主键编号，联合主键',
  `collect` bit(1) NOT NULL DEFAULT b'0' COMMENT '收藏状态，0：未收藏，1：已收藏',
  `trolley` bit(1) NOT NULL DEFAULT b'0' COMMENT '购物车状态，0：已加入购物车，1：未加入购物车',
  `number` int(11) NOT NULL DEFAULT 0 COMMENT '商品数量',
  PRIMARY KEY (`c_id`, `w_id`) USING BTREE,
  INDEX `wc_wid`(`w_id`) USING BTREE,
  CONSTRAINT `wc_cid` FOREIGN KEY (`c_id`) REFERENCES `tb_customer` (`c_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wc_wid` FOREIGN KEY (`w_id`) REFERENCES `tb_ware` (`w_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_waretype
-- ----------------------------
DROP TABLE IF EXISTS `tb_waretype`;
CREATE TABLE `tb_waretype`  (
  `t_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '商品分类主键编号',
  `t_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '商品分类名称',
  PRIMARY KEY (`t_id`) USING BTREE,
  UNIQUE INDEX `t_id`(`t_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

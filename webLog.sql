/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.23.144
 Source Server Type    : MySQL
 Source Server Version : 50741
 Source Host           : 192.168.23.144:3306
 Source Schema         : itheima

 Target Server Type    : MySQL
 Target Server Version : 50741
 File Encoding         : 65001

 Date: 17/05/2023 09:41:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dw_avgpv_user_everyhour_oneday
-- ----------------------------
DROP TABLE IF EXISTS `dw_avgpv_user_everyhour_oneday`;
CREATE TABLE `dw_avgpv_user_everyhour_oneday`  (
  `od` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `day` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hour` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `avgpv` double(50, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`od`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dw_avgpv_user_everyhour_oneday
-- ----------------------------
INSERT INTO `dw_avgpv_user_everyhour_oneday` VALUES ('1', '20181101', '23', 382);
INSERT INTO `dw_avgpv_user_everyhour_oneday` VALUES ('10', '20181101', '11', 285);
INSERT INTO `dw_avgpv_user_everyhour_oneday` VALUES ('11', '20181101', '10', 189);
INSERT INTO `dw_avgpv_user_everyhour_oneday` VALUES ('12', '20181101', '09', 137);
INSERT INTO `dw_avgpv_user_everyhour_oneday` VALUES ('13', '20181101', '08', 293);
INSERT INTO `dw_avgpv_user_everyhour_oneday` VALUES ('14', '20181101', '07', 84);
INSERT INTO `dw_avgpv_user_everyhour_oneday` VALUES ('15', '20181101', '05', 540);
INSERT INTO `dw_avgpv_user_everyhour_oneday` VALUES ('16', '20181101', '04', 569);
INSERT INTO `dw_avgpv_user_everyhour_oneday` VALUES ('17', '20181101', '03', 184);
INSERT INTO `dw_avgpv_user_everyhour_oneday` VALUES ('18', '20181101', '02', 273);
INSERT INTO `dw_avgpv_user_everyhour_oneday` VALUES ('19', '20181101', '00', 78);
INSERT INTO `dw_avgpv_user_everyhour_oneday` VALUES ('2', '20181101', '22', 351);
INSERT INTO `dw_avgpv_user_everyhour_oneday` VALUES ('3', '20181101', '19', 390);
INSERT INTO `dw_avgpv_user_everyhour_oneday` VALUES ('4', '20181101', '17', 191);
INSERT INTO `dw_avgpv_user_everyhour_oneday` VALUES ('5', '20181101', '16', 475);
INSERT INTO `dw_avgpv_user_everyhour_oneday` VALUES ('6', '20181101', '15', 759);
INSERT INTO `dw_avgpv_user_everyhour_oneday` VALUES ('7', '20181101', '14', 514);
INSERT INTO `dw_avgpv_user_everyhour_oneday` VALUES ('8', '20181101', '13', 265);
INSERT INTO `dw_avgpv_user_everyhour_oneday` VALUES ('9', '20181101', '12', 155);

-- ----------------------------
-- Table structure for dw_avgpvs_session_everyhour_oneday
-- ----------------------------
DROP TABLE IF EXISTS `dw_avgpvs_session_everyhour_oneday`;
CREATE TABLE `dw_avgpvs_session_everyhour_oneday`  (
  `od` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `day` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hour` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `avgpvs` double(50, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`od`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dw_avgpvs_session_everyhour_oneday
-- ----------------------------
INSERT INTO `dw_avgpvs_session_everyhour_oneday` VALUES ('1', '20181101', '23', 10);
INSERT INTO `dw_avgpvs_session_everyhour_oneday` VALUES ('10', '20181101', '14', 8);
INSERT INTO `dw_avgpvs_session_everyhour_oneday` VALUES ('11', '20181101', '13', 7);
INSERT INTO `dw_avgpvs_session_everyhour_oneday` VALUES ('12', '20181101', '12', 12);
INSERT INTO `dw_avgpvs_session_everyhour_oneday` VALUES ('13', '20181101', '11', 11);
INSERT INTO `dw_avgpvs_session_everyhour_oneday` VALUES ('14', '20181101', '10', 5);
INSERT INTO `dw_avgpvs_session_everyhour_oneday` VALUES ('15', '20181101', '09', 9);
INSERT INTO `dw_avgpvs_session_everyhour_oneday` VALUES ('16', '20181101', '08', 16);
INSERT INTO `dw_avgpvs_session_everyhour_oneday` VALUES ('17', '20181101', '07', 10);
INSERT INTO `dw_avgpvs_session_everyhour_oneday` VALUES ('18', '20181101', '06', 6);
INSERT INTO `dw_avgpvs_session_everyhour_oneday` VALUES ('19', '20181101', '05', 11);
INSERT INTO `dw_avgpvs_session_everyhour_oneday` VALUES ('2', '20181101', '22', 7);
INSERT INTO `dw_avgpvs_session_everyhour_oneday` VALUES ('20', '20181101', '04', 10);
INSERT INTO `dw_avgpvs_session_everyhour_oneday` VALUES ('21', '20181101', '03', 8);
INSERT INTO `dw_avgpvs_session_everyhour_oneday` VALUES ('22', '20181101', '02', 10);
INSERT INTO `dw_avgpvs_session_everyhour_oneday` VALUES ('23', '20181101', '01', 8);
INSERT INTO `dw_avgpvs_session_everyhour_oneday` VALUES ('24', '20181101', '00', 8);
INSERT INTO `dw_avgpvs_session_everyhour_oneday` VALUES ('3', '20181101', '21', 5);
INSERT INTO `dw_avgpvs_session_everyhour_oneday` VALUES ('4', '20181101', '20', 6);
INSERT INTO `dw_avgpvs_session_everyhour_oneday` VALUES ('5', '20181101', '19', 5);
INSERT INTO `dw_avgpvs_session_everyhour_oneday` VALUES ('6', '20181101', '18', 6);
INSERT INTO `dw_avgpvs_session_everyhour_oneday` VALUES ('7', '20181101', '17', 7);
INSERT INTO `dw_avgpvs_session_everyhour_oneday` VALUES ('8', '20181101', '16', 5);
INSERT INTO `dw_avgpvs_session_everyhour_oneday` VALUES ('9', '20181101', '15', 10);

-- ----------------------------
-- Table structure for dw_avgsessions_user_everyhour_oneday
-- ----------------------------
DROP TABLE IF EXISTS `dw_avgsessions_user_everyhour_oneday`;
CREATE TABLE `dw_avgsessions_user_everyhour_oneday`  (
  `od` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `day` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hour` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `avgsessions` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`od`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dw_avgsessions_user_everyhour_oneday
-- ----------------------------
INSERT INTO `dw_avgsessions_user_everyhour_oneday` VALUES ('1', '20181101', '00', '0.04');
INSERT INTO `dw_avgsessions_user_everyhour_oneday` VALUES ('10', '20181101', '09', '0.14');
INSERT INTO `dw_avgsessions_user_everyhour_oneday` VALUES ('11', '20181101', '10', '0.1');
INSERT INTO `dw_avgsessions_user_everyhour_oneday` VALUES ('12', '20181101', '11', '0.05');
INSERT INTO `dw_avgsessions_user_everyhour_oneday` VALUES ('13', '20181101', '12', '0.05');
INSERT INTO `dw_avgsessions_user_everyhour_oneday` VALUES ('14', '20181101', '13', '0.07');
INSERT INTO `dw_avgsessions_user_everyhour_oneday` VALUES ('15', '20181101', '14', '0.06');
INSERT INTO `dw_avgsessions_user_everyhour_oneday` VALUES ('16', '20181101', '15', '0.07');
INSERT INTO `dw_avgsessions_user_everyhour_oneday` VALUES ('17', '20181101', '16', '0.09');
INSERT INTO `dw_avgsessions_user_everyhour_oneday` VALUES ('18', '20181101', '17', '0.05');
INSERT INTO `dw_avgsessions_user_everyhour_oneday` VALUES ('19', '20181101', '18', '0.04');
INSERT INTO `dw_avgsessions_user_everyhour_oneday` VALUES ('2', '20181101', '01', '0.04');
INSERT INTO `dw_avgsessions_user_everyhour_oneday` VALUES ('20', '20181101', '19', '0.08');
INSERT INTO `dw_avgsessions_user_everyhour_oneday` VALUES ('21', '20181101', '20', '0.03');
INSERT INTO `dw_avgsessions_user_everyhour_oneday` VALUES ('22', '20181101', '21', '0.04');
INSERT INTO `dw_avgsessions_user_everyhour_oneday` VALUES ('23', '20181101', '22', '0.05');
INSERT INTO `dw_avgsessions_user_everyhour_oneday` VALUES ('24', '20181101', '23', '0.04');
INSERT INTO `dw_avgsessions_user_everyhour_oneday` VALUES ('3', '20181101', '02', '0.05');
INSERT INTO `dw_avgsessions_user_everyhour_oneday` VALUES ('4', '20181101', '03', '0.06');
INSERT INTO `dw_avgsessions_user_everyhour_oneday` VALUES ('5', '20181101', '04', '0.05');
INSERT INTO `dw_avgsessions_user_everyhour_oneday` VALUES ('6', '20181101', '05', '0.05');
INSERT INTO `dw_avgsessions_user_everyhour_oneday` VALUES ('7', '20181101', '06', '0.04');
INSERT INTO `dw_avgsessions_user_everyhour_oneday` VALUES ('8', '20181101', '07', '0.09');
INSERT INTO `dw_avgsessions_user_everyhour_oneday` VALUES ('9', '20181101', '08', '0.12');

-- ----------------------------
-- Table structure for dw_inime_topn_everyday
-- ----------------------------
DROP TABLE IF EXISTS `dw_inime_topn_everyday`;
CREATE TABLE `dw_inime_topn_everyday`  (
  `od` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `day` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `intime_hour` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `count_intime` bigint(50) NULL DEFAULT NULL,
  PRIMARY KEY (`od`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dw_inime_topn_everyday
-- ----------------------------
INSERT INTO `dw_inime_topn_everyday` VALUES ('1', '20181101', '23', 1);
INSERT INTO `dw_inime_topn_everyday` VALUES ('10', '20181101', '11', 2);
INSERT INTO `dw_inime_topn_everyday` VALUES ('11', '20181101', '10', 3);
INSERT INTO `dw_inime_topn_everyday` VALUES ('12', '20181101', '09', 10);
INSERT INTO `dw_inime_topn_everyday` VALUES ('13', '20181101', '08', 7);
INSERT INTO `dw_inime_topn_everyday` VALUES ('14', '20181101', '07', 12);
INSERT INTO `dw_inime_topn_everyday` VALUES ('15', '20181101', '05', 1);
INSERT INTO `dw_inime_topn_everyday` VALUES ('16', '20181101', '03', 3);
INSERT INTO `dw_inime_topn_everyday` VALUES ('17', '20181101', '02', 2);
INSERT INTO `dw_inime_topn_everyday` VALUES ('18', '20181101', '00', 4);
INSERT INTO `dw_inime_topn_everyday` VALUES ('2', '20181101', '22', 1);
INSERT INTO `dw_inime_topn_everyday` VALUES ('3', '20181101', '19', 1);
INSERT INTO `dw_inime_topn_everyday` VALUES ('4', '20181101', '17', 1);
INSERT INTO `dw_inime_topn_everyday` VALUES ('5', '20181101', '16', 1);
INSERT INTO `dw_inime_topn_everyday` VALUES ('6', '20181101', '15', 1);
INSERT INTO `dw_inime_topn_everyday` VALUES ('7', '20181101', '14', 1);
INSERT INTO `dw_inime_topn_everyday` VALUES ('8', '20181101', '13', 2);
INSERT INTO `dw_inime_topn_everyday` VALUES ('9', '20181101', '12', 4);

-- ----------------------------
-- Table structure for dw_inpage_newuser_topn
-- ----------------------------
DROP TABLE IF EXISTS `dw_inpage_newuser_topn`;
CREATE TABLE `dw_inpage_newuser_topn`  (
  `od` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `day` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `inpage` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `count_inpage` bigint(50) NULL DEFAULT NULL,
  PRIMARY KEY (`od`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dw_inpage_newuser_topn
-- ----------------------------
INSERT INTO `dw_inpage_newuser_topn` VALUES ('1', '20181101', '/hadoop-zookeeper-intro/', 5);
INSERT INTO `dw_inpage_newuser_topn` VALUES ('2', '20181101', '/hadoop-mahout-roadmap/', 10);
INSERT INTO `dw_inpage_newuser_topn` VALUES ('3', '20181101', '/hadoop-hive-intro/', 10);
INSERT INTO `dw_inpage_newuser_topn` VALUES ('4', '20181101', '/hadoop-family-roadmap/', 3);
INSERT INTO `dw_inpage_newuser_topn` VALUES ('5', '20181101', '/finance-rhive-repurchase/', 5);
INSERT INTO `dw_inpage_newuser_topn` VALUES ('6', '20181101', '/cassandra-clustor/', 3);
INSERT INTO `dw_inpage_newuser_topn` VALUES ('7', '20181101', '/black-ip-list/', 1);
INSERT INTO `dw_inpage_newuser_topn` VALUES ('8', '20181101', '/about', 2);

-- ----------------------------
-- Table structure for dw_inpage_olduser_topn
-- ----------------------------
DROP TABLE IF EXISTS `dw_inpage_olduser_topn`;
CREATE TABLE `dw_inpage_olduser_topn`  (
  `od` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `day` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `inpage` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `count_inpage` bigint(50) NULL DEFAULT NULL,
  PRIMARY KEY (`od`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dw_inpage_olduser_topn
-- ----------------------------
INSERT INTO `dw_inpage_olduser_topn` VALUES ('1', '20181101', '/hadoop-mahout-roadmap/', 5);
INSERT INTO `dw_inpage_olduser_topn` VALUES ('2', '20181101', '/hadoop-hive-intro/', 3);
INSERT INTO `dw_inpage_olduser_topn` VALUES ('3', '20181101', '/hadoop-family-roadmap/', 5);
INSERT INTO `dw_inpage_olduser_topn` VALUES ('4', '20181101', '/finance-rhive-repurchase/', 4);
INSERT INTO `dw_inpage_olduser_topn` VALUES ('5', '20181101', '/about', 1);

-- ----------------------------
-- Table structure for dw_inpage_topn_everyday
-- ----------------------------
DROP TABLE IF EXISTS `dw_inpage_topn_everyday`;
CREATE TABLE `dw_inpage_topn_everyday`  (
  `od` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `day` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `inpage` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `count_inpage` bigint(50) NULL DEFAULT NULL,
  PRIMARY KEY (`od`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dw_inpage_topn_everyday
-- ----------------------------
INSERT INTO `dw_inpage_topn_everyday` VALUES ('1', '20181101', '/hadoop-zookeeper-intro/', 5);
INSERT INTO `dw_inpage_topn_everyday` VALUES ('2', '20181101', '/hadoop-mahout-roadmap/', 15);
INSERT INTO `dw_inpage_topn_everyday` VALUES ('3', '20181101', '/hadoop-hive-intro/', 13);
INSERT INTO `dw_inpage_topn_everyday` VALUES ('4', '20181101', '/hadoop-family-roadmap/', 8);
INSERT INTO `dw_inpage_topn_everyday` VALUES ('5', '20181101', '/finance-rhive-repurchase/', 9);
INSERT INTO `dw_inpage_topn_everyday` VALUES ('6', '20181101', '/cassandra-clustor/', 3);
INSERT INTO `dw_inpage_topn_everyday` VALUES ('7', '20181101', '/black-ip-list/', 1);
INSERT INTO `dw_inpage_topn_everyday` VALUES ('8', '20181101', '/about', 3);

-- ----------------------------
-- Table structure for dw_ip_location_everyday
-- ----------------------------
DROP TABLE IF EXISTS `dw_ip_location_everyday`;
CREATE TABLE `dw_ip_location_everyday`  (
  `od` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `day` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ip` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`ip`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dw_ip_location_everyday
-- ----------------------------
INSERT INTO `dw_ip_location_everyday` VALUES ('1027', '20181101', '1.162.203.134');
INSERT INTO `dw_ip_location_everyday` VALUES ('1026', '20181101', '1.202.186.37');
INSERT INTO `dw_ip_location_everyday` VALUES ('1025', '20181101', '1.202.222.147');
INSERT INTO `dw_ip_location_everyday` VALUES ('1024', '20181101', '1.202.70.78');
INSERT INTO `dw_ip_location_everyday` VALUES ('1023', '20181101', '1.206.126.5');
INSERT INTO `dw_ip_location_everyday` VALUES ('1022', '20181101', '1.34.23.44');
INSERT INTO `dw_ip_location_everyday` VALUES ('1021', '20181101', '1.80.245.79');
INSERT INTO `dw_ip_location_everyday` VALUES ('1020', '20181101', '1.80.249.223');
INSERT INTO `dw_ip_location_everyday` VALUES ('1019', '20181101', '1.82.139.173');
INSERT INTO `dw_ip_location_everyday` VALUES ('1018', '20181101', '101.226.102.97');
INSERT INTO `dw_ip_location_everyday` VALUES ('1017', '20181101', '101.226.166.214');
INSERT INTO `dw_ip_location_everyday` VALUES ('1016', '20181101', '101.226.166.216');
INSERT INTO `dw_ip_location_everyday` VALUES ('1015', '20181101', '101.226.166.222');
INSERT INTO `dw_ip_location_everyday` VALUES ('1014', '20181101', '101.226.166.235');
INSERT INTO `dw_ip_location_everyday` VALUES ('1013', '20181101', '101.226.166.236');
INSERT INTO `dw_ip_location_everyday` VALUES ('1012', '20181101', '101.226.166.237');
INSERT INTO `dw_ip_location_everyday` VALUES ('1011', '20181101', '101.226.166.238');
INSERT INTO `dw_ip_location_everyday` VALUES ('1010', '20181101', '101.226.166.239');
INSERT INTO `dw_ip_location_everyday` VALUES ('1009', '20181101', '101.226.166.240');
INSERT INTO `dw_ip_location_everyday` VALUES ('1008', '20181101', '101.226.166.242');
INSERT INTO `dw_ip_location_everyday` VALUES ('1007', '20181101', '101.226.167.197');
INSERT INTO `dw_ip_location_everyday` VALUES ('1006', '20181101', '101.226.167.199');
INSERT INTO `dw_ip_location_everyday` VALUES ('1005', '20181101', '101.226.167.201');
INSERT INTO `dw_ip_location_everyday` VALUES ('1004', '20181101', '101.226.167.202');
INSERT INTO `dw_ip_location_everyday` VALUES ('1003', '20181101', '101.226.167.203');
INSERT INTO `dw_ip_location_everyday` VALUES ('1002', '20181101', '101.226.167.204');
INSERT INTO `dw_ip_location_everyday` VALUES ('1001', '20181101', '101.226.167.205');
INSERT INTO `dw_ip_location_everyday` VALUES ('1000', '20181101', '101.226.167.216');
INSERT INTO `dw_ip_location_everyday` VALUES ('999', '20181101', '101.226.167.217');
INSERT INTO `dw_ip_location_everyday` VALUES ('998', '20181101', '101.226.167.218');
INSERT INTO `dw_ip_location_everyday` VALUES ('997', '20181101', '101.226.167.219');
INSERT INTO `dw_ip_location_everyday` VALUES ('996', '20181101', '101.226.167.220');
INSERT INTO `dw_ip_location_everyday` VALUES ('995', '20181101', '101.226.167.221');
INSERT INTO `dw_ip_location_everyday` VALUES ('994', '20181101', '101.226.167.223');
INSERT INTO `dw_ip_location_everyday` VALUES ('993', '20181101', '101.226.167.224');
INSERT INTO `dw_ip_location_everyday` VALUES ('992', '20181101', '101.226.167.226');
INSERT INTO `dw_ip_location_everyday` VALUES ('991', '20181101', '101.226.167.227');
INSERT INTO `dw_ip_location_everyday` VALUES ('990', '20181101', '101.226.167.229');
INSERT INTO `dw_ip_location_everyday` VALUES ('989', '20181101', '101.226.167.230');
INSERT INTO `dw_ip_location_everyday` VALUES ('988', '20181101', '101.226.167.244');
INSERT INTO `dw_ip_location_everyday` VALUES ('987', '20181101', '101.226.167.247');
INSERT INTO `dw_ip_location_everyday` VALUES ('986', '20181101', '101.226.167.248');
INSERT INTO `dw_ip_location_everyday` VALUES ('985', '20181101', '101.226.167.249');
INSERT INTO `dw_ip_location_everyday` VALUES ('984', '20181101', '101.226.167.250');
INSERT INTO `dw_ip_location_everyday` VALUES ('983', '20181101', '101.226.167.251');
INSERT INTO `dw_ip_location_everyday` VALUES ('982', '20181101', '101.226.167.252');
INSERT INTO `dw_ip_location_everyday` VALUES ('981', '20181101', '101.226.167.253');
INSERT INTO `dw_ip_location_everyday` VALUES ('980', '20181101', '101.226.167.254');
INSERT INTO `dw_ip_location_everyday` VALUES ('979', '20181101', '101.226.168.195');
INSERT INTO `dw_ip_location_everyday` VALUES ('978', '20181101', '101.226.168.203');
INSERT INTO `dw_ip_location_everyday` VALUES ('977', '20181101', '101.226.168.204');
INSERT INTO `dw_ip_location_everyday` VALUES ('976', '20181101', '101.226.168.205');
INSERT INTO `dw_ip_location_everyday` VALUES ('975', '20181101', '101.226.168.207');
INSERT INTO `dw_ip_location_everyday` VALUES ('974', '20181101', '101.226.168.238');
INSERT INTO `dw_ip_location_everyday` VALUES ('973', '20181101', '101.226.168.243');
INSERT INTO `dw_ip_location_everyday` VALUES ('972', '20181101', '101.226.168.244');
INSERT INTO `dw_ip_location_everyday` VALUES ('971', '20181101', '101.226.168.245');
INSERT INTO `dw_ip_location_everyday` VALUES ('970', '20181101', '101.226.168.247');
INSERT INTO `dw_ip_location_everyday` VALUES ('969', '20181101', '101.226.168.248');
INSERT INTO `dw_ip_location_everyday` VALUES ('968', '20181101', '101.226.168.249');
INSERT INTO `dw_ip_location_everyday` VALUES ('967', '20181101', '101.226.168.250');
INSERT INTO `dw_ip_location_everyday` VALUES ('966', '20181101', '101.226.168.251');
INSERT INTO `dw_ip_location_everyday` VALUES ('965', '20181101', '101.226.168.253');
INSERT INTO `dw_ip_location_everyday` VALUES ('964', '20181101', '101.226.168.254');
INSERT INTO `dw_ip_location_everyday` VALUES ('963', '20181101', '101.226.169.195');
INSERT INTO `dw_ip_location_everyday` VALUES ('962', '20181101', '101.226.169.196');
INSERT INTO `dw_ip_location_everyday` VALUES ('961', '20181101', '101.226.169.198');
INSERT INTO `dw_ip_location_everyday` VALUES ('960', '20181101', '101.226.169.199');
INSERT INTO `dw_ip_location_everyday` VALUES ('959', '20181101', '101.226.169.201');
INSERT INTO `dw_ip_location_everyday` VALUES ('958', '20181101', '101.226.169.202');
INSERT INTO `dw_ip_location_everyday` VALUES ('957', '20181101', '101.226.169.203');
INSERT INTO `dw_ip_location_everyday` VALUES ('956', '20181101', '101.226.169.204');
INSERT INTO `dw_ip_location_everyday` VALUES ('955', '20181101', '101.226.169.205');
INSERT INTO `dw_ip_location_everyday` VALUES ('954', '20181101', '101.226.169.215');
INSERT INTO `dw_ip_location_everyday` VALUES ('953', '20181101', '101.226.169.216');
INSERT INTO `dw_ip_location_everyday` VALUES ('952', '20181101', '101.226.169.217');
INSERT INTO `dw_ip_location_everyday` VALUES ('951', '20181101', '101.226.169.218');
INSERT INTO `dw_ip_location_everyday` VALUES ('950', '20181101', '101.226.169.219');
INSERT INTO `dw_ip_location_everyday` VALUES ('949', '20181101', '101.226.169.220');
INSERT INTO `dw_ip_location_everyday` VALUES ('948', '20181101', '101.226.169.221');
INSERT INTO `dw_ip_location_everyday` VALUES ('947', '20181101', '101.226.169.222');
INSERT INTO `dw_ip_location_everyday` VALUES ('946', '20181101', '101.226.169.223');
INSERT INTO `dw_ip_location_everyday` VALUES ('945', '20181101', '101.226.169.224');
INSERT INTO `dw_ip_location_everyday` VALUES ('944', '20181101', '101.226.169.225');
INSERT INTO `dw_ip_location_everyday` VALUES ('943', '20181101', '101.226.169.226');
INSERT INTO `dw_ip_location_everyday` VALUES ('942', '20181101', '101.226.169.227');
INSERT INTO `dw_ip_location_everyday` VALUES ('941', '20181101', '101.226.169.228');
INSERT INTO `dw_ip_location_everyday` VALUES ('940', '20181101', '101.226.33.171');
INSERT INTO `dw_ip_location_everyday` VALUES ('939', '20181101', '101.226.33.172');
INSERT INTO `dw_ip_location_everyday` VALUES ('938', '20181101', '101.226.33.174');
INSERT INTO `dw_ip_location_everyday` VALUES ('937', '20181101', '101.226.33.180');
INSERT INTO `dw_ip_location_everyday` VALUES ('936', '20181101', '101.226.33.187');
INSERT INTO `dw_ip_location_everyday` VALUES ('935', '20181101', '101.226.33.188');
INSERT INTO `dw_ip_location_everyday` VALUES ('934', '20181101', '101.226.33.190');
INSERT INTO `dw_ip_location_everyday` VALUES ('933', '20181101', '101.226.33.202');
INSERT INTO `dw_ip_location_everyday` VALUES ('932', '20181101', '101.226.33.203');
INSERT INTO `dw_ip_location_everyday` VALUES ('931', '20181101', '101.226.33.204');
INSERT INTO `dw_ip_location_everyday` VALUES ('930', '20181101', '101.226.33.206');
INSERT INTO `dw_ip_location_everyday` VALUES ('929', '20181101', '101.226.33.222');
INSERT INTO `dw_ip_location_everyday` VALUES ('928', '20181101', '101.226.33.224');
INSERT INTO `dw_ip_location_everyday` VALUES ('927', '20181101', '101.226.33.225');
INSERT INTO `dw_ip_location_everyday` VALUES ('926', '20181101', '101.226.51.229');
INSERT INTO `dw_ip_location_everyday` VALUES ('925', '20181101', '101.226.65.105');
INSERT INTO `dw_ip_location_everyday` VALUES ('924', '20181101', '101.226.65.110');
INSERT INTO `dw_ip_location_everyday` VALUES ('923', '20181101', '101.226.66.174');
INSERT INTO `dw_ip_location_everyday` VALUES ('922', '20181101', '101.226.66.175');
INSERT INTO `dw_ip_location_everyday` VALUES ('921', '20181101', '101.226.66.176');
INSERT INTO `dw_ip_location_everyday` VALUES ('920', '20181101', '101.226.68.137');
INSERT INTO `dw_ip_location_everyday` VALUES ('919', '20181101', '101.226.89.116');
INSERT INTO `dw_ip_location_everyday` VALUES ('918', '20181101', '101.226.89.117');
INSERT INTO `dw_ip_location_everyday` VALUES ('917', '20181101', '101.226.89.120');
INSERT INTO `dw_ip_location_everyday` VALUES ('916', '20181101', '101.226.89.121');
INSERT INTO `dw_ip_location_everyday` VALUES ('915', '20181101', '101.226.89.61');
INSERT INTO `dw_ip_location_everyday` VALUES ('914', '20181101', '101.226.89.64');
INSERT INTO `dw_ip_location_everyday` VALUES ('913', '20181101', '101.226.89.69');
INSERT INTO `dw_ip_location_everyday` VALUES ('912', '20181101', '101.227.4.195');
INSERT INTO `dw_ip_location_everyday` VALUES ('911', '20181101', '101.228.112.98');
INSERT INTO `dw_ip_location_everyday` VALUES ('910', '20181101', '101.229.210.118');
INSERT INTO `dw_ip_location_everyday` VALUES ('909', '20181101', '101.71.217.39');
INSERT INTO `dw_ip_location_everyday` VALUES ('908', '20181101', '101.80.176.48');
INSERT INTO `dw_ip_location_everyday` VALUES ('907', '20181101', '101.80.8.50');
INSERT INTO `dw_ip_location_everyday` VALUES ('906', '20181101', '101.95.5.22');
INSERT INTO `dw_ip_location_everyday` VALUES ('905', '20181101', '103.244.232.122');
INSERT INTO `dw_ip_location_everyday` VALUES ('904', '20181101', '103.246.38.196');
INSERT INTO `dw_ip_location_everyday` VALUES ('903', '20181101', '103.29.134.208');
INSERT INTO `dw_ip_location_everyday` VALUES ('902', '20181101', '103.8.220.169');
INSERT INTO `dw_ip_location_everyday` VALUES ('901', '20181101', '106.186.17.20');
INSERT INTO `dw_ip_location_everyday` VALUES ('900', '20181101', '106.187.42.147');
INSERT INTO `dw_ip_location_everyday` VALUES ('899', '20181101', '106.187.44.226');
INSERT INTO `dw_ip_location_everyday` VALUES ('898', '20181101', '106.64.63.102');
INSERT INTO `dw_ip_location_everyday` VALUES ('897', '20181101', '107.21.232.43');
INSERT INTO `dw_ip_location_everyday` VALUES ('896', '20181101', '107.22.42.225');
INSERT INTO `dw_ip_location_everyday` VALUES ('895', '20181101', '108.163.205.172');
INSERT INTO `dw_ip_location_everyday` VALUES ('894', '20181101', '108.171.241.230');
INSERT INTO `dw_ip_location_everyday` VALUES ('893', '20181101', '110.152.56.103');
INSERT INTO `dw_ip_location_everyday` VALUES ('892', '20181101', '110.184.127.241');
INSERT INTO `dw_ip_location_everyday` VALUES ('891', '20181101', '110.211.10.14');
INSERT INTO `dw_ip_location_everyday` VALUES ('890', '20181101', '110.215.118.134');
INSERT INTO `dw_ip_location_everyday` VALUES ('889', '20181101', '110.75.121.138');
INSERT INTO `dw_ip_location_everyday` VALUES ('888', '20181101', '110.75.121.151');
INSERT INTO `dw_ip_location_everyday` VALUES ('887', '20181101', '110.77.43.162');
INSERT INTO `dw_ip_location_everyday` VALUES ('886', '20181101', '110.83.89.182');
INSERT INTO `dw_ip_location_everyday` VALUES ('885', '20181101', '110.86.165.138');
INSERT INTO `dw_ip_location_everyday` VALUES ('884', '20181101', '110.90.119.113');
INSERT INTO `dw_ip_location_everyday` VALUES ('883', '20181101', '111.1.171.77');
INSERT INTO `dw_ip_location_everyday` VALUES ('882', '20181101', '111.120.233.9');
INSERT INTO `dw_ip_location_everyday` VALUES ('881', '20181101', '111.161.17.104');
INSERT INTO `dw_ip_location_everyday` VALUES ('880', '20181101', '111.161.17.70');
INSERT INTO `dw_ip_location_everyday` VALUES ('879', '20181101', '111.161.17.77');
INSERT INTO `dw_ip_location_everyday` VALUES ('878', '20181101', '111.161.79.234');
INSERT INTO `dw_ip_location_everyday` VALUES ('877', '20181101', '111.165.19.118');
INSERT INTO `dw_ip_location_everyday` VALUES ('876', '20181101', '111.192.165.229');
INSERT INTO `dw_ip_location_everyday` VALUES ('875', '20181101', '111.192.253.92');
INSERT INTO `dw_ip_location_everyday` VALUES ('874', '20181101', '111.192.255.165');
INSERT INTO `dw_ip_location_everyday` VALUES ('873', '20181101', '111.193.224.9');
INSERT INTO `dw_ip_location_everyday` VALUES ('872', '20181101', '111.194.118.58');
INSERT INTO `dw_ip_location_everyday` VALUES ('871', '20181101', '111.196.44.235');
INSERT INTO `dw_ip_location_everyday` VALUES ('870', '20181101', '111.206.36.4');
INSERT INTO `dw_ip_location_everyday` VALUES ('869', '20181101', '111.249.76.59');
INSERT INTO `dw_ip_location_everyday` VALUES ('868', '20181101', '111.75.253.4');
INSERT INTO `dw_ip_location_everyday` VALUES ('867', '20181101', '111.8.53.21');
INSERT INTO `dw_ip_location_everyday` VALUES ('866', '20181101', '111.90.185.108');
INSERT INTO `dw_ip_location_everyday` VALUES ('865', '20181101', '112.10.84.236');
INSERT INTO `dw_ip_location_everyday` VALUES ('864', '20181101', '112.124.6.186');
INSERT INTO `dw_ip_location_everyday` VALUES ('863', '20181101', '112.226.252.20');
INSERT INTO `dw_ip_location_everyday` VALUES ('862', '20181101', '112.5.234.74');
INSERT INTO `dw_ip_location_everyday` VALUES ('861', '20181101', '112.64.235.245');
INSERT INTO `dw_ip_location_everyday` VALUES ('860', '20181101', '112.64.235.246');
INSERT INTO `dw_ip_location_everyday` VALUES ('859', '20181101', '112.64.235.248');
INSERT INTO `dw_ip_location_everyday` VALUES ('858', '20181101', '112.64.235.250');
INSERT INTO `dw_ip_location_everyday` VALUES ('857', '20181101', '112.64.235.252');
INSERT INTO `dw_ip_location_everyday` VALUES ('856', '20181101', '112.65.193.16');
INSERT INTO `dw_ip_location_everyday` VALUES ('855', '20181101', '112.65.211.248');
INSERT INTO `dw_ip_location_everyday` VALUES ('854', '20181101', '112.80.66.10');
INSERT INTO `dw_ip_location_everyday` VALUES ('853', '20181101', '112.94.170.216');
INSERT INTO `dw_ip_location_everyday` VALUES ('852', '20181101', '112.94.81.45');
INSERT INTO `dw_ip_location_everyday` VALUES ('851', '20181101', '112.95.185.111');
INSERT INTO `dw_ip_location_everyday` VALUES ('850', '20181101', '113.106.104.210');
INSERT INTO `dw_ip_location_everyday` VALUES ('849', '20181101', '113.107.237.31');
INSERT INTO `dw_ip_location_everyday` VALUES ('848', '20181101', '113.142.18.125');
INSERT INTO `dw_ip_location_everyday` VALUES ('847', '20181101', '113.57.132.186');
INSERT INTO `dw_ip_location_everyday` VALUES ('846', '20181101', '113.57.247.109');
INSERT INTO `dw_ip_location_everyday` VALUES ('845', '20181101', '113.67.106.91');
INSERT INTO `dw_ip_location_everyday` VALUES ('844', '20181101', '113.90.232.163');
INSERT INTO `dw_ip_location_everyday` VALUES ('843', '20181101', '113.90.48.158');
INSERT INTO `dw_ip_location_everyday` VALUES ('842', '20181101', '113.90.83.205');
INSERT INTO `dw_ip_location_everyday` VALUES ('841', '20181101', '114.113.221.252');
INSERT INTO `dw_ip_location_everyday` VALUES ('840', '20181101', '114.141.164.19');
INSERT INTO `dw_ip_location_everyday` VALUES ('839', '20181101', '114.221.170.42');
INSERT INTO `dw_ip_location_everyday` VALUES ('838', '20181101', '114.222.165.222');
INSERT INTO `dw_ip_location_everyday` VALUES ('837', '20181101', '114.222.41.251');
INSERT INTO `dw_ip_location_everyday` VALUES ('836', '20181101', '114.242.248.4');
INSERT INTO `dw_ip_location_everyday` VALUES ('835', '20181101', '114.245.225.185');
INSERT INTO `dw_ip_location_everyday` VALUES ('834', '20181101', '114.246.144.157');
INSERT INTO `dw_ip_location_everyday` VALUES ('833', '20181101', '114.247.188.26');
INSERT INTO `dw_ip_location_everyday` VALUES ('832', '20181101', '114.247.50.28');
INSERT INTO `dw_ip_location_everyday` VALUES ('831', '20181101', '114.252.89.91');
INSERT INTO `dw_ip_location_everyday` VALUES ('830', '20181101', '114.255.122.16');
INSERT INTO `dw_ip_location_everyday` VALUES ('829', '20181101', '114.255.3.132');
INSERT INTO `dw_ip_location_everyday` VALUES ('828', '20181101', '114.255.40.28');
INSERT INTO `dw_ip_location_everyday` VALUES ('827', '20181101', '114.40.203.153');
INSERT INTO `dw_ip_location_everyday` VALUES ('826', '20181101', '114.43.52.215');
INSERT INTO `dw_ip_location_everyday` VALUES ('825', '20181101', '114.44.31.222');
INSERT INTO `dw_ip_location_everyday` VALUES ('824', '20181101', '114.62.27.72');
INSERT INTO `dw_ip_location_everyday` VALUES ('823', '20181101', '114.80.243.201');
INSERT INTO `dw_ip_location_everyday` VALUES ('822', '20181101', '114.80.243.202');
INSERT INTO `dw_ip_location_everyday` VALUES ('821', '20181101', '114.81.255.37');
INSERT INTO `dw_ip_location_everyday` VALUES ('820', '20181101', '114.86.121.202');
INSERT INTO `dw_ip_location_everyday` VALUES ('819', '20181101', '114.88.23.229');
INSERT INTO `dw_ip_location_everyday` VALUES ('818', '20181101', '114.88.28.39');
INSERT INTO `dw_ip_location_everyday` VALUES ('817', '20181101', '114.91.138.137');
INSERT INTO `dw_ip_location_everyday` VALUES ('816', '20181101', '114.92.127.82');
INSERT INTO `dw_ip_location_everyday` VALUES ('815', '20181101', '115.197.222.93');
INSERT INTO `dw_ip_location_everyday` VALUES ('814', '20181101', '115.236.11.194');
INSERT INTO `dw_ip_location_everyday` VALUES ('813', '20181101', '115.236.48.12');
INSERT INTO `dw_ip_location_everyday` VALUES ('812', '20181101', '116.113.47.38');
INSERT INTO `dw_ip_location_everyday` VALUES ('811', '20181101', '116.204.64.165');
INSERT INTO `dw_ip_location_everyday` VALUES ('810', '20181101', '116.211.131.215');
INSERT INTO `dw_ip_location_everyday` VALUES ('809', '20181101', '116.226.35.135');
INSERT INTO `dw_ip_location_everyday` VALUES ('808', '20181101', '116.226.78.119');
INSERT INTO `dw_ip_location_everyday` VALUES ('807', '20181101', '116.226.79.52');
INSERT INTO `dw_ip_location_everyday` VALUES ('806', '20181101', '116.228.89.198');
INSERT INTO `dw_ip_location_everyday` VALUES ('805', '20181101', '116.231.13.115');
INSERT INTO `dw_ip_location_everyday` VALUES ('804', '20181101', '116.231.193.1');
INSERT INTO `dw_ip_location_everyday` VALUES ('803', '20181101', '116.231.73.98');
INSERT INTO `dw_ip_location_everyday` VALUES ('802', '20181101', '116.24.236.137');
INSERT INTO `dw_ip_location_everyday` VALUES ('801', '20181101', '116.24.8.156');
INSERT INTO `dw_ip_location_everyday` VALUES ('800', '20181101', '116.247.110.57');
INSERT INTO `dw_ip_location_everyday` VALUES ('799', '20181101', '116.27.69.192');
INSERT INTO `dw_ip_location_everyday` VALUES ('798', '20181101', '116.53.219.68');
INSERT INTO `dw_ip_location_everyday` VALUES ('797', '20181101', '116.6.21.98');
INSERT INTO `dw_ip_location_everyday` VALUES ('796', '20181101', '116.7.94.194');
INSERT INTO `dw_ip_location_everyday` VALUES ('795', '20181101', '116.9.163.2');
INSERT INTO `dw_ip_location_everyday` VALUES ('794', '20181101', '117.136.38.171');
INSERT INTO `dw_ip_location_everyday` VALUES ('793', '20181101', '117.207.86.49');
INSERT INTO `dw_ip_location_everyday` VALUES ('792', '20181101', '117.26.195.16');
INSERT INTO `dw_ip_location_everyday` VALUES ('791', '20181101', '117.32.153.135');
INSERT INTO `dw_ip_location_everyday` VALUES ('790', '20181101', '117.79.232.174');
INSERT INTO `dw_ip_location_everyday` VALUES ('789', '20181101', '117.79.232.182');
INSERT INTO `dw_ip_location_everyday` VALUES ('788', '20181101', '117.79.232.184');
INSERT INTO `dw_ip_location_everyday` VALUES ('787', '20181101', '118.114.119.236');
INSERT INTO `dw_ip_location_everyday` VALUES ('786', '20181101', '118.116.29.229');
INSERT INTO `dw_ip_location_everyday` VALUES ('785', '20181101', '118.117.254.233');
INSERT INTO `dw_ip_location_everyday` VALUES ('784', '20181101', '118.144.128.51');
INSERT INTO `dw_ip_location_everyday` VALUES ('783', '20181101', '118.161.33.212');
INSERT INTO `dw_ip_location_everyday` VALUES ('782', '20181101', '118.163.2.22');
INSERT INTO `dw_ip_location_everyday` VALUES ('781', '20181101', '118.163.55.114');
INSERT INTO `dw_ip_location_everyday` VALUES ('780', '20181101', '118.165.93.143');
INSERT INTO `dw_ip_location_everyday` VALUES ('779', '20181101', '118.166.91.239');
INSERT INTO `dw_ip_location_everyday` VALUES ('778', '20181101', '118.168.125.129');
INSERT INTO `dw_ip_location_everyday` VALUES ('777', '20181101', '118.186.153.72');
INSERT INTO `dw_ip_location_everyday` VALUES ('776', '20181101', '118.186.252.71');
INSERT INTO `dw_ip_location_everyday` VALUES ('775', '20181101', '118.194.195.205');
INSERT INTO `dw_ip_location_everyday` VALUES ('774', '20181101', '118.195.70.197');
INSERT INTO `dw_ip_location_everyday` VALUES ('773', '20181101', '118.242.3.210');
INSERT INTO `dw_ip_location_everyday` VALUES ('772', '20181101', '118.250.160.214');
INSERT INTO `dw_ip_location_everyday` VALUES ('771', '20181101', '119.101.46.46');
INSERT INTO `dw_ip_location_everyday` VALUES ('770', '20181101', '119.109.47.156');
INSERT INTO `dw_ip_location_everyday` VALUES ('769', '20181101', '119.129.149.194');
INSERT INTO `dw_ip_location_everyday` VALUES ('768', '20181101', '119.132.75.90');
INSERT INTO `dw_ip_location_everyday` VALUES ('767', '20181101', '119.137.99.229');
INSERT INTO `dw_ip_location_everyday` VALUES ('766', '20181101', '119.147.11.33');
INSERT INTO `dw_ip_location_everyday` VALUES ('765', '20181101', '119.147.146.118');
INSERT INTO `dw_ip_location_everyday` VALUES ('764', '20181101', '119.15.230.63');
INSERT INTO `dw_ip_location_everyday` VALUES ('763', '20181101', '119.162.130.119');
INSERT INTO `dw_ip_location_everyday` VALUES ('762', '20181101', '119.183.71.13');
INSERT INTO `dw_ip_location_everyday` VALUES ('761', '20181101', '119.254.241.67');
INSERT INTO `dw_ip_location_everyday` VALUES ('760', '20181101', '119.4.95.12');
INSERT INTO `dw_ip_location_everyday` VALUES ('759', '20181101', '119.56.115.236');
INSERT INTO `dw_ip_location_everyday` VALUES ('758', '20181101', '119.57.35.242');
INSERT INTO `dw_ip_location_everyday` VALUES ('757', '20181101', '119.62.41.10');
INSERT INTO `dw_ip_location_everyday` VALUES ('756', '20181101', '120.197.59.7');
INSERT INTO `dw_ip_location_everyday` VALUES ('755', '20181101', '120.42.97.63');
INSERT INTO `dw_ip_location_everyday` VALUES ('754', '20181101', '121.0.29.194');
INSERT INTO `dw_ip_location_everyday` VALUES ('753', '20181101', '121.15.56.160');
INSERT INTO `dw_ip_location_everyday` VALUES ('752', '20181101', '121.223.185.189');
INSERT INTO `dw_ip_location_everyday` VALUES ('751', '20181101', '121.229.211.250');
INSERT INTO `dw_ip_location_everyday` VALUES ('750', '20181101', '121.229.30.8');
INSERT INTO `dw_ip_location_everyday` VALUES ('749', '20181101', '121.237.197.29');
INSERT INTO `dw_ip_location_everyday` VALUES ('748', '20181101', '121.28.161.162');
INSERT INTO `dw_ip_location_everyday` VALUES ('747', '20181101', '121.32.130.122');
INSERT INTO `dw_ip_location_everyday` VALUES ('746', '20181101', '121.33.190.179');
INSERT INTO `dw_ip_location_everyday` VALUES ('745', '20181101', '121.33.210.170');
INSERT INTO `dw_ip_location_everyday` VALUES ('744', '20181101', '121.77.75.242');
INSERT INTO `dw_ip_location_everyday` VALUES ('743', '20181101', '121.8.153.6');
INSERT INTO `dw_ip_location_everyday` VALUES ('742', '20181101', '122.117.124.70');
INSERT INTO `dw_ip_location_everyday` VALUES ('741', '20181101', '122.117.53.176');
INSERT INTO `dw_ip_location_everyday` VALUES ('740', '20181101', '122.194.1.14');
INSERT INTO `dw_ip_location_everyday` VALUES ('739', '20181101', '122.225.226.184');
INSERT INTO `dw_ip_location_everyday` VALUES ('738', '20181101', '122.234.49.240');
INSERT INTO `dw_ip_location_everyday` VALUES ('737', '20181101', '122.95.27.176');
INSERT INTO `dw_ip_location_everyday` VALUES ('736', '20181101', '123.108.212.91');
INSERT INTO `dw_ip_location_everyday` VALUES ('735', '20181101', '123.116.73.157');
INSERT INTO `dw_ip_location_everyday` VALUES ('734', '20181101', '123.118.154.208');
INSERT INTO `dw_ip_location_everyday` VALUES ('733', '20181101', '123.118.214.62');
INSERT INTO `dw_ip_location_everyday` VALUES ('732', '20181101', '123.118.78.103');
INSERT INTO `dw_ip_location_everyday` VALUES ('731', '20181101', '123.119.172.11');
INSERT INTO `dw_ip_location_everyday` VALUES ('730', '20181101', '123.120.112.69');
INSERT INTO `dw_ip_location_everyday` VALUES ('729', '20181101', '123.120.39.97');
INSERT INTO `dw_ip_location_everyday` VALUES ('728', '20181101', '123.121.102.216');
INSERT INTO `dw_ip_location_everyday` VALUES ('727', '20181101', '123.121.157.179');
INSERT INTO `dw_ip_location_everyday` VALUES ('726', '20181101', '123.125.104.247');
INSERT INTO `dw_ip_location_everyday` VALUES ('725', '20181101', '123.125.199.104');
INSERT INTO `dw_ip_location_everyday` VALUES ('724', '20181101', '123.125.244.209');
INSERT INTO `dw_ip_location_everyday` VALUES ('723', '20181101', '123.125.244.210');
INSERT INTO `dw_ip_location_everyday` VALUES ('722', '20181101', '123.125.244.217');
INSERT INTO `dw_ip_location_everyday` VALUES ('721', '20181101', '123.125.71.102');
INSERT INTO `dw_ip_location_everyday` VALUES ('720', '20181101', '123.125.71.103');
INSERT INTO `dw_ip_location_everyday` VALUES ('719', '20181101', '123.125.71.104');
INSERT INTO `dw_ip_location_everyday` VALUES ('718', '20181101', '123.125.71.105');
INSERT INTO `dw_ip_location_everyday` VALUES ('717', '20181101', '123.125.71.106');
INSERT INTO `dw_ip_location_everyday` VALUES ('716', '20181101', '123.125.71.108');
INSERT INTO `dw_ip_location_everyday` VALUES ('715', '20181101', '123.125.71.109');
INSERT INTO `dw_ip_location_everyday` VALUES ('714', '20181101', '123.125.71.113');
INSERT INTO `dw_ip_location_everyday` VALUES ('713', '20181101', '123.125.71.115');
INSERT INTO `dw_ip_location_everyday` VALUES ('712', '20181101', '123.125.71.117');
INSERT INTO `dw_ip_location_everyday` VALUES ('711', '20181101', '123.125.71.12');
INSERT INTO `dw_ip_location_everyday` VALUES ('710', '20181101', '123.125.71.14');
INSERT INTO `dw_ip_location_everyday` VALUES ('709', '20181101', '123.125.71.16');
INSERT INTO `dw_ip_location_everyday` VALUES ('708', '20181101', '123.125.71.17');
INSERT INTO `dw_ip_location_everyday` VALUES ('707', '20181101', '123.125.71.18');
INSERT INTO `dw_ip_location_everyday` VALUES ('706', '20181101', '123.125.71.19');
INSERT INTO `dw_ip_location_everyday` VALUES ('705', '20181101', '123.125.71.20');
INSERT INTO `dw_ip_location_everyday` VALUES ('704', '20181101', '123.125.71.24');
INSERT INTO `dw_ip_location_everyday` VALUES ('703', '20181101', '123.125.71.29');
INSERT INTO `dw_ip_location_everyday` VALUES ('702', '20181101', '123.125.71.36');
INSERT INTO `dw_ip_location_everyday` VALUES ('701', '20181101', '123.125.71.41');
INSERT INTO `dw_ip_location_everyday` VALUES ('700', '20181101', '123.125.71.46');
INSERT INTO `dw_ip_location_everyday` VALUES ('699', '20181101', '123.125.71.51');
INSERT INTO `dw_ip_location_everyday` VALUES ('698', '20181101', '123.125.71.55');
INSERT INTO `dw_ip_location_everyday` VALUES ('697', '20181101', '123.125.71.56');
INSERT INTO `dw_ip_location_everyday` VALUES ('696', '20181101', '123.125.71.60');
INSERT INTO `dw_ip_location_everyday` VALUES ('695', '20181101', '123.125.71.69');
INSERT INTO `dw_ip_location_everyday` VALUES ('694', '20181101', '123.125.71.71');
INSERT INTO `dw_ip_location_everyday` VALUES ('693', '20181101', '123.125.71.74');
INSERT INTO `dw_ip_location_everyday` VALUES ('692', '20181101', '123.125.71.75');
INSERT INTO `dw_ip_location_everyday` VALUES ('691', '20181101', '123.125.71.76');
INSERT INTO `dw_ip_location_everyday` VALUES ('690', '20181101', '123.125.71.77');
INSERT INTO `dw_ip_location_everyday` VALUES ('689', '20181101', '123.125.71.78');
INSERT INTO `dw_ip_location_everyday` VALUES ('688', '20181101', '123.125.71.81');
INSERT INTO `dw_ip_location_everyday` VALUES ('687', '20181101', '123.125.71.83');
INSERT INTO `dw_ip_location_everyday` VALUES ('686', '20181101', '123.125.71.84');
INSERT INTO `dw_ip_location_everyday` VALUES ('685', '20181101', '123.125.71.85');
INSERT INTO `dw_ip_location_everyday` VALUES ('684', '20181101', '123.125.71.86');
INSERT INTO `dw_ip_location_everyday` VALUES ('683', '20181101', '123.125.71.90');
INSERT INTO `dw_ip_location_everyday` VALUES ('682', '20181101', '123.125.71.91');
INSERT INTO `dw_ip_location_everyday` VALUES ('681', '20181101', '123.125.71.92');
INSERT INTO `dw_ip_location_everyday` VALUES ('680', '20181101', '123.125.71.94');
INSERT INTO `dw_ip_location_everyday` VALUES ('679', '20181101', '123.125.71.95');
INSERT INTO `dw_ip_location_everyday` VALUES ('678', '20181101', '123.125.71.96');
INSERT INTO `dw_ip_location_everyday` VALUES ('677', '20181101', '123.125.71.97');
INSERT INTO `dw_ip_location_everyday` VALUES ('676', '20181101', '123.125.71.99');
INSERT INTO `dw_ip_location_everyday` VALUES ('675', '20181101', '123.126.50.83');
INSERT INTO `dw_ip_location_everyday` VALUES ('674', '20181101', '123.138.137.24');
INSERT INTO `dw_ip_location_everyday` VALUES ('673', '20181101', '123.151.139.208');
INSERT INTO `dw_ip_location_everyday` VALUES ('672', '20181101', '123.151.148.203');
INSERT INTO `dw_ip_location_everyday` VALUES ('671', '20181101', '123.151.23.13');
INSERT INTO `dw_ip_location_everyday` VALUES ('670', '20181101', '123.151.28.72');
INSERT INTO `dw_ip_location_everyday` VALUES ('669', '20181101', '123.194.136.142');
INSERT INTO `dw_ip_location_everyday` VALUES ('668', '20181101', '123.30.175.123');
INSERT INTO `dw_ip_location_everyday` VALUES ('667', '20181101', '123.30.175.124');
INSERT INTO `dw_ip_location_everyday` VALUES ('666', '20181101', '123.30.175.125');
INSERT INTO `dw_ip_location_everyday` VALUES ('665', '20181101', '123.30.175.88');
INSERT INTO `dw_ip_location_everyday` VALUES ('664', '20181101', '123.58.182.208');
INSERT INTO `dw_ip_location_everyday` VALUES ('663', '20181101', '123.58.182.211');
INSERT INTO `dw_ip_location_everyday` VALUES ('662', '20181101', '124.126.156.48');
INSERT INTO `dw_ip_location_everyday` VALUES ('661', '20181101', '124.126.233.247');
INSERT INTO `dw_ip_location_everyday` VALUES ('660', '20181101', '124.126.236.109');
INSERT INTO `dw_ip_location_everyday` VALUES ('659', '20181101', '124.127.244.11');
INSERT INTO `dw_ip_location_everyday` VALUES ('658', '20181101', '124.127.244.9');
INSERT INTO `dw_ip_location_everyday` VALUES ('657', '20181101', '124.128.247.184');
INSERT INTO `dw_ip_location_everyday` VALUES ('656', '20181101', '124.134.129.242');
INSERT INTO `dw_ip_location_everyday` VALUES ('655', '20181101', '124.193.125.176');
INSERT INTO `dw_ip_location_everyday` VALUES ('654', '20181101', '124.193.125.194');
INSERT INTO `dw_ip_location_everyday` VALUES ('653', '20181101', '124.193.167.1');
INSERT INTO `dw_ip_location_everyday` VALUES ('652', '20181101', '124.193.179.238');
INSERT INTO `dw_ip_location_everyday` VALUES ('651', '20181101', '124.205.129.37');
INSERT INTO `dw_ip_location_everyday` VALUES ('650', '20181101', '124.207.123.37');
INSERT INTO `dw_ip_location_everyday` VALUES ('649', '20181101', '124.207.5.34');
INSERT INTO `dw_ip_location_everyday` VALUES ('648', '20181101', '124.238.218.5');
INSERT INTO `dw_ip_location_everyday` VALUES ('647', '20181101', '124.248.237.130');
INSERT INTO `dw_ip_location_everyday` VALUES ('646', '20181101', '124.42.13.230');
INSERT INTO `dw_ip_location_everyday` VALUES ('645', '20181101', '124.80.238.2');
INSERT INTO `dw_ip_location_everyday` VALUES ('644', '20181101', '125.119.2.66');
INSERT INTO `dw_ip_location_everyday` VALUES ('643', '20181101', '125.125.183.67');
INSERT INTO `dw_ip_location_everyday` VALUES ('642', '20181101', '125.33.50.198');
INSERT INTO `dw_ip_location_everyday` VALUES ('641', '20181101', '125.33.65.76');
INSERT INTO `dw_ip_location_everyday` VALUES ('640', '20181101', '125.35.62.66');
INSERT INTO `dw_ip_location_everyday` VALUES ('639', '20181101', '125.39.34.39');
INSERT INTO `dw_ip_location_everyday` VALUES ('638', '20181101', '125.67.36.71');
INSERT INTO `dw_ip_location_everyday` VALUES ('637', '20181101', '125.78.9.139');
INSERT INTO `dw_ip_location_everyday` VALUES ('636', '20181101', '125.95.137.171');
INSERT INTO `dw_ip_location_everyday` VALUES ('635', '20181101', '129.12.248.35');
INSERT INTO `dw_ip_location_everyday` VALUES ('634', '20181101', '130.14.254.24');
INSERT INTO `dw_ip_location_everyday` VALUES ('633', '20181101', '130.192.1.81');
INSERT INTO `dw_ip_location_everyday` VALUES ('632', '20181101', '131.253.38.103');
INSERT INTO `dw_ip_location_everyday` VALUES ('631', '20181101', '137.132.3.9');
INSERT INTO `dw_ip_location_everyday` VALUES ('630', '20181101', '137.175.109.149');
INSERT INTO `dw_ip_location_everyday` VALUES ('629', '20181101', '137.189.88.229');
INSERT INTO `dw_ip_location_everyday` VALUES ('628', '20181101', '14.145.146.69');
INSERT INTO `dw_ip_location_everyday` VALUES ('627', '20181101', '14.145.239.206');
INSERT INTO `dw_ip_location_everyday` VALUES ('626', '20181101', '14.17.22.31');
INSERT INTO `dw_ip_location_everyday` VALUES ('625', '20181101', '14.17.29.86');
INSERT INTO `dw_ip_location_everyday` VALUES ('624', '20181101', '14.18.248.184');
INSERT INTO `dw_ip_location_everyday` VALUES ('623', '20181101', '14.18.248.186');
INSERT INTO `dw_ip_location_everyday` VALUES ('622', '20181101', '14.192.215.164');
INSERT INTO `dw_ip_location_everyday` VALUES ('621', '20181101', '14.198.142.70');
INSERT INTO `dw_ip_location_everyday` VALUES ('620', '20181101', '14.20.29.149');
INSERT INTO `dw_ip_location_everyday` VALUES ('619', '20181101', '140.112.28.101');
INSERT INTO `dw_ip_location_everyday` VALUES ('618', '20181101', '140.112.4.194');
INSERT INTO `dw_ip_location_everyday` VALUES ('617', '20181101', '140.114.34.66');
INSERT INTO `dw_ip_location_everyday` VALUES ('616', '20181101', '140.115.238.60');
INSERT INTO `dw_ip_location_everyday` VALUES ('615', '20181101', '141.217.203.151');
INSERT INTO `dw_ip_location_everyday` VALUES ('614', '20181101', '144.214.150.235');
INSERT INTO `dw_ip_location_everyday` VALUES ('613', '20181101', '144.76.34.226');
INSERT INTO `dw_ip_location_everyday` VALUES ('612', '20181101', '144.76.42.76');
INSERT INTO `dw_ip_location_everyday` VALUES ('611', '20181101', '147.6.1.21');
INSERT INTO `dw_ip_location_everyday` VALUES ('610', '20181101', '148.243.214.3');
INSERT INTO `dw_ip_location_everyday` VALUES ('609', '20181101', '149.174.147.140');
INSERT INTO `dw_ip_location_everyday` VALUES ('608', '20181101', '149.174.151.134');
INSERT INTO `dw_ip_location_everyday` VALUES ('607', '20181101', '149.174.154.140');
INSERT INTO `dw_ip_location_everyday` VALUES ('606', '20181101', '149.174.155.168');
INSERT INTO `dw_ip_location_everyday` VALUES ('605', '20181101', '149.174.158.157');
INSERT INTO `dw_ip_location_everyday` VALUES ('604', '20181101', '149.174.161.119');
INSERT INTO `dw_ip_location_everyday` VALUES ('603', '20181101', '149.174.163.38');
INSERT INTO `dw_ip_location_everyday` VALUES ('602', '20181101', '149.174.17.83');
INSERT INTO `dw_ip_location_everyday` VALUES ('601', '20181101', '149.174.183.143');
INSERT INTO `dw_ip_location_everyday` VALUES ('600', '20181101', '149.174.184.118');
INSERT INTO `dw_ip_location_everyday` VALUES ('599', '20181101', '149.174.186.29');
INSERT INTO `dw_ip_location_everyday` VALUES ('598', '20181101', '149.174.23.31');
INSERT INTO `dw_ip_location_everyday` VALUES ('597', '20181101', '150.70.172.109');
INSERT INTO `dw_ip_location_everyday` VALUES ('596', '20181101', '150.70.172.206');
INSERT INTO `dw_ip_location_everyday` VALUES ('595', '20181101', '150.70.173.52');
INSERT INTO `dw_ip_location_everyday` VALUES ('594', '20181101', '150.70.173.58');
INSERT INTO `dw_ip_location_everyday` VALUES ('593', '20181101', '150.70.64.215');
INSERT INTO `dw_ip_location_everyday` VALUES ('592', '20181101', '150.70.97.127');
INSERT INTO `dw_ip_location_everyday` VALUES ('591', '20181101', '153.34.28.160');
INSERT INTO `dw_ip_location_everyday` VALUES ('590', '20181101', '157.55.32.106');
INSERT INTO `dw_ip_location_everyday` VALUES ('589', '20181101', '157.55.32.221');
INSERT INTO `dw_ip_location_everyday` VALUES ('588', '20181101', '157.55.32.237');
INSERT INTO `dw_ip_location_everyday` VALUES ('587', '20181101', '157.55.32.60');
INSERT INTO `dw_ip_location_everyday` VALUES ('586', '20181101', '157.55.32.77');
INSERT INTO `dw_ip_location_everyday` VALUES ('585', '20181101', '157.55.32.88');
INSERT INTO `dw_ip_location_everyday` VALUES ('584', '20181101', '157.55.32.93');
INSERT INTO `dw_ip_location_everyday` VALUES ('583', '20181101', '157.55.32.95');
INSERT INTO `dw_ip_location_everyday` VALUES ('582', '20181101', '157.55.32.96');
INSERT INTO `dw_ip_location_everyday` VALUES ('581', '20181101', '157.55.32.98');
INSERT INTO `dw_ip_location_everyday` VALUES ('580', '20181101', '157.55.33.81');
INSERT INTO `dw_ip_location_everyday` VALUES ('579', '20181101', '157.55.34.179');
INSERT INTO `dw_ip_location_everyday` VALUES ('578', '20181101', '157.55.34.180');
INSERT INTO `dw_ip_location_everyday` VALUES ('577', '20181101', '157.55.35.102');
INSERT INTO `dw_ip_location_everyday` VALUES ('576', '20181101', '157.55.35.105');
INSERT INTO `dw_ip_location_everyday` VALUES ('575', '20181101', '157.55.35.113');
INSERT INTO `dw_ip_location_everyday` VALUES ('574', '20181101', '157.55.35.117');
INSERT INTO `dw_ip_location_everyday` VALUES ('573', '20181101', '157.55.35.35');
INSERT INTO `dw_ip_location_everyday` VALUES ('572', '20181101', '157.55.35.40');
INSERT INTO `dw_ip_location_everyday` VALUES ('571', '20181101', '157.55.35.48');
INSERT INTO `dw_ip_location_everyday` VALUES ('570', '20181101', '157.55.35.82');
INSERT INTO `dw_ip_location_everyday` VALUES ('569', '20181101', '157.55.35.94');
INSERT INTO `dw_ip_location_everyday` VALUES ('568', '20181101', '157.55.36.35');
INSERT INTO `dw_ip_location_everyday` VALUES ('567', '20181101', '157.55.36.52');
INSERT INTO `dw_ip_location_everyday` VALUES ('566', '20181101', '157.55.36.54');
INSERT INTO `dw_ip_location_everyday` VALUES ('565', '20181101', '157.56.92.147');
INSERT INTO `dw_ip_location_everyday` VALUES ('564', '20181101', '157.56.92.159');
INSERT INTO `dw_ip_location_everyday` VALUES ('563', '20181101', '157.56.92.164');
INSERT INTO `dw_ip_location_everyday` VALUES ('562', '20181101', '157.56.93.39');
INSERT INTO `dw_ip_location_everyday` VALUES ('561', '20181101', '157.56.93.49');
INSERT INTO `dw_ip_location_everyday` VALUES ('560', '20181101', '157.56.93.50');
INSERT INTO `dw_ip_location_everyday` VALUES ('559', '20181101', '157.56.93.60');
INSERT INTO `dw_ip_location_everyday` VALUES ('558', '20181101', '157.56.93.62');
INSERT INTO `dw_ip_location_everyday` VALUES ('557', '20181101', '157.56.93.72');
INSERT INTO `dw_ip_location_everyday` VALUES ('556', '20181101', '157.56.93.84');
INSERT INTO `dw_ip_location_everyday` VALUES ('555', '20181101', '159.226.110.22');
INSERT INTO `dw_ip_location_everyday` VALUES ('554', '20181101', '159.226.251.170');
INSERT INTO `dw_ip_location_everyday` VALUES ('553', '20181101', '162.105.203.28');
INSERT INTO `dw_ip_location_everyday` VALUES ('552', '20181101', '163.177.71.12');
INSERT INTO `dw_ip_location_everyday` VALUES ('551', '20181101', '171.212.191.76');
INSERT INTO `dw_ip_location_everyday` VALUES ('550', '20181101', '171.214.194.188');
INSERT INTO `dw_ip_location_everyday` VALUES ('549', '20181101', '171.221.158.109');
INSERT INTO `dw_ip_location_everyday` VALUES ('548', '20181101', '171.37.212.5');
INSERT INTO `dw_ip_location_everyday` VALUES ('547', '20181101', '173.192.17.197');
INSERT INTO `dw_ip_location_everyday` VALUES ('546', '20181101', '174.120.8.226');
INSERT INTO `dw_ip_location_everyday` VALUES ('545', '20181101', '174.129.228.67');
INSERT INTO `dw_ip_location_everyday` VALUES ('544', '20181101', '174.143.143.143');
INSERT INTO `dw_ip_location_everyday` VALUES ('543', '20181101', '175.0.233.165');
INSERT INTO `dw_ip_location_everyday` VALUES ('542', '20181101', '175.139.194.117');
INSERT INTO `dw_ip_location_everyday` VALUES ('541', '20181101', '178.24.29.69');
INSERT INTO `dw_ip_location_everyday` VALUES ('540', '20181101', '180.111.164.159');
INSERT INTO `dw_ip_location_everyday` VALUES ('539', '20181101', '180.149.135.15');
INSERT INTO `dw_ip_location_everyday` VALUES ('538', '20181101', '180.153.160.150');
INSERT INTO `dw_ip_location_everyday` VALUES ('537', '20181101', '180.153.160.199');
INSERT INTO `dw_ip_location_everyday` VALUES ('536', '20181101', '180.153.161.217');
INSERT INTO `dw_ip_location_everyday` VALUES ('535', '20181101', '180.153.163.187');
INSERT INTO `dw_ip_location_everyday` VALUES ('534', '20181101', '180.153.163.189');
INSERT INTO `dw_ip_location_everyday` VALUES ('533', '20181101', '180.153.163.190');
INSERT INTO `dw_ip_location_everyday` VALUES ('532', '20181101', '180.153.163.209');
INSERT INTO `dw_ip_location_everyday` VALUES ('531', '20181101', '180.153.201.214');
INSERT INTO `dw_ip_location_everyday` VALUES ('530', '20181101', '180.153.201.216');
INSERT INTO `dw_ip_location_everyday` VALUES ('529', '20181101', '180.153.201.64');
INSERT INTO `dw_ip_location_everyday` VALUES ('528', '20181101', '180.153.201.79');
INSERT INTO `dw_ip_location_everyday` VALUES ('527', '20181101', '180.153.205.103');
INSERT INTO `dw_ip_location_everyday` VALUES ('526', '20181101', '180.153.205.252');
INSERT INTO `dw_ip_location_everyday` VALUES ('525', '20181101', '180.153.205.254');
INSERT INTO `dw_ip_location_everyday` VALUES ('524', '20181101', '180.153.206.17');
INSERT INTO `dw_ip_location_everyday` VALUES ('523', '20181101', '180.153.206.26');
INSERT INTO `dw_ip_location_everyday` VALUES ('522', '20181101', '180.153.206.31');
INSERT INTO `dw_ip_location_everyday` VALUES ('521', '20181101', '180.153.206.33');
INSERT INTO `dw_ip_location_everyday` VALUES ('520', '20181101', '180.153.211.172');
INSERT INTO `dw_ip_location_everyday` VALUES ('519', '20181101', '180.153.214.176');
INSERT INTO `dw_ip_location_everyday` VALUES ('518', '20181101', '180.153.214.182');
INSERT INTO `dw_ip_location_everyday` VALUES ('517', '20181101', '180.153.214.191');
INSERT INTO `dw_ip_location_everyday` VALUES ('516', '20181101', '180.153.214.197');
INSERT INTO `dw_ip_location_everyday` VALUES ('515', '20181101', '180.153.219.13');
INSERT INTO `dw_ip_location_everyday` VALUES ('514', '20181101', '180.153.236.116');
INSERT INTO `dw_ip_location_everyday` VALUES ('513', '20181101', '180.153.236.156');
INSERT INTO `dw_ip_location_everyday` VALUES ('512', '20181101', '180.153.236.195');
INSERT INTO `dw_ip_location_everyday` VALUES ('511', '20181101', '180.153.236.197');
INSERT INTO `dw_ip_location_everyday` VALUES ('510', '20181101', '180.153.236.22');
INSERT INTO `dw_ip_location_everyday` VALUES ('509', '20181101', '180.158.43.38');
INSERT INTO `dw_ip_location_everyday` VALUES ('508', '20181101', '180.159.72.240');
INSERT INTO `dw_ip_location_everyday` VALUES ('507', '20181101', '180.166.199.43');
INSERT INTO `dw_ip_location_everyday` VALUES ('506', '20181101', '180.166.30.234');
INSERT INTO `dw_ip_location_everyday` VALUES ('505', '20181101', '180.166.31.2');
INSERT INTO `dw_ip_location_everyday` VALUES ('504', '20181101', '180.76.5.92');
INSERT INTO `dw_ip_location_everyday` VALUES ('503', '20181101', '182.118.20.202');
INSERT INTO `dw_ip_location_everyday` VALUES ('502', '20181101', '182.118.20.203');
INSERT INTO `dw_ip_location_everyday` VALUES ('501', '20181101', '182.118.20.215');
INSERT INTO `dw_ip_location_everyday` VALUES ('500', '20181101', '182.118.20.220');
INSERT INTO `dw_ip_location_everyday` VALUES ('499', '20181101', '182.118.20.221');
INSERT INTO `dw_ip_location_everyday` VALUES ('498', '20181101', '182.118.20.222');
INSERT INTO `dw_ip_location_everyday` VALUES ('497', '20181101', '182.118.20.223');
INSERT INTO `dw_ip_location_everyday` VALUES ('496', '20181101', '182.118.20.230');
INSERT INTO `dw_ip_location_everyday` VALUES ('495', '20181101', '182.118.20.231');
INSERT INTO `dw_ip_location_everyday` VALUES ('494', '20181101', '182.118.20.251');
INSERT INTO `dw_ip_location_everyday` VALUES ('493', '20181101', '182.118.20.252');
INSERT INTO `dw_ip_location_everyday` VALUES ('492', '20181101', '182.118.21.210');
INSERT INTO `dw_ip_location_everyday` VALUES ('491', '20181101', '182.118.21.211');
INSERT INTO `dw_ip_location_everyday` VALUES ('490', '20181101', '182.118.21.212');
INSERT INTO `dw_ip_location_everyday` VALUES ('489', '20181101', '182.118.21.213');
INSERT INTO `dw_ip_location_everyday` VALUES ('488', '20181101', '182.118.21.215');
INSERT INTO `dw_ip_location_everyday` VALUES ('487', '20181101', '182.118.21.217');
INSERT INTO `dw_ip_location_everyday` VALUES ('486', '20181101', '182.118.21.218');
INSERT INTO `dw_ip_location_everyday` VALUES ('485', '20181101', '182.118.21.231');
INSERT INTO `dw_ip_location_everyday` VALUES ('484', '20181101', '182.118.21.232');
INSERT INTO `dw_ip_location_everyday` VALUES ('483', '20181101', '182.118.21.234');
INSERT INTO `dw_ip_location_everyday` VALUES ('482', '20181101', '182.118.21.235');
INSERT INTO `dw_ip_location_everyday` VALUES ('481', '20181101', '182.118.21.236');
INSERT INTO `dw_ip_location_everyday` VALUES ('480', '20181101', '182.118.21.238');
INSERT INTO `dw_ip_location_everyday` VALUES ('479', '20181101', '182.118.21.241');
INSERT INTO `dw_ip_location_everyday` VALUES ('478', '20181101', '182.118.21.253');
INSERT INTO `dw_ip_location_everyday` VALUES ('477', '20181101', '182.118.22.211');
INSERT INTO `dw_ip_location_everyday` VALUES ('476', '20181101', '182.118.22.213');
INSERT INTO `dw_ip_location_everyday` VALUES ('475', '20181101', '182.118.22.214');
INSERT INTO `dw_ip_location_everyday` VALUES ('474', '20181101', '182.118.22.215');
INSERT INTO `dw_ip_location_everyday` VALUES ('473', '20181101', '182.118.22.226');
INSERT INTO `dw_ip_location_everyday` VALUES ('472', '20181101', '182.118.22.227');
INSERT INTO `dw_ip_location_everyday` VALUES ('471', '20181101', '182.118.22.228');
INSERT INTO `dw_ip_location_everyday` VALUES ('470', '20181101', '182.118.22.229');
INSERT INTO `dw_ip_location_everyday` VALUES ('469', '20181101', '182.118.22.230');
INSERT INTO `dw_ip_location_everyday` VALUES ('468', '20181101', '182.118.22.235');
INSERT INTO `dw_ip_location_everyday` VALUES ('467', '20181101', '182.118.22.238');
INSERT INTO `dw_ip_location_everyday` VALUES ('466', '20181101', '182.118.22.239');
INSERT INTO `dw_ip_location_everyday` VALUES ('465', '20181101', '182.118.25.161');
INSERT INTO `dw_ip_location_everyday` VALUES ('464', '20181101', '182.118.25.179');
INSERT INTO `dw_ip_location_everyday` VALUES ('463', '20181101', '182.118.25.207');
INSERT INTO `dw_ip_location_everyday` VALUES ('462', '20181101', '182.118.25.217');
INSERT INTO `dw_ip_location_everyday` VALUES ('461', '20181101', '182.118.25.226');
INSERT INTO `dw_ip_location_everyday` VALUES ('460', '20181101', '182.118.25.227');
INSERT INTO `dw_ip_location_everyday` VALUES ('459', '20181101', '182.118.25.228');
INSERT INTO `dw_ip_location_everyday` VALUES ('458', '20181101', '182.118.25.229');
INSERT INTO `dw_ip_location_everyday` VALUES ('457', '20181101', '182.118.25.234');
INSERT INTO `dw_ip_location_everyday` VALUES ('456', '20181101', '182.118.25.236');
INSERT INTO `dw_ip_location_everyday` VALUES ('455', '20181101', '182.118.25.238');
INSERT INTO `dw_ip_location_everyday` VALUES ('454', '20181101', '182.118.25.239');
INSERT INTO `dw_ip_location_everyday` VALUES ('453', '20181101', '182.118.25.240');
INSERT INTO `dw_ip_location_everyday` VALUES ('452', '20181101', '182.118.48.123');
INSERT INTO `dw_ip_location_everyday` VALUES ('451', '20181101', '182.148.111.151');
INSERT INTO `dw_ip_location_everyday` VALUES ('450', '20181101', '182.48.104.156');
INSERT INTO `dw_ip_location_everyday` VALUES ('449', '20181101', '183.12.96.73');
INSERT INTO `dw_ip_location_everyday` VALUES ('448', '20181101', '183.129.208.18');
INSERT INTO `dw_ip_location_everyday` VALUES ('447', '20181101', '183.136.223.162');
INSERT INTO `dw_ip_location_everyday` VALUES ('446', '20181101', '183.14.0.91');
INSERT INTO `dw_ip_location_everyday` VALUES ('445', '20181101', '183.15.91.1');
INSERT INTO `dw_ip_location_everyday` VALUES ('444', '20181101', '183.16.194.52');
INSERT INTO `dw_ip_location_everyday` VALUES ('443', '20181101', '183.16.85.82');
INSERT INTO `dw_ip_location_everyday` VALUES ('442', '20181101', '183.195.232.138');
INSERT INTO `dw_ip_location_everyday` VALUES ('441', '20181101', '183.20.246.36');
INSERT INTO `dw_ip_location_everyday` VALUES ('440', '20181101', '183.221.117.36');
INSERT INTO `dw_ip_location_everyday` VALUES ('439', '20181101', '183.240.177.83');
INSERT INTO `dw_ip_location_everyday` VALUES ('438', '20181101', '183.25.0.96');
INSERT INTO `dw_ip_location_everyday` VALUES ('437', '20181101', '183.250.205.162');
INSERT INTO `dw_ip_location_everyday` VALUES ('436', '20181101', '183.254.1.241');
INSERT INTO `dw_ip_location_everyday` VALUES ('435', '20181101', '183.39.216.93');
INSERT INTO `dw_ip_location_everyday` VALUES ('434', '20181101', '183.42.231.62');
INSERT INTO `dw_ip_location_everyday` VALUES ('433', '20181101', '183.60.177.228');
INSERT INTO `dw_ip_location_everyday` VALUES ('432', '20181101', '183.60.213.18');
INSERT INTO `dw_ip_location_everyday` VALUES ('431', '20181101', '183.60.214.108');
INSERT INTO `dw_ip_location_everyday` VALUES ('430', '20181101', '183.60.215.27');
INSERT INTO `dw_ip_location_everyday` VALUES ('429', '20181101', '183.60.9.217');
INSERT INTO `dw_ip_location_everyday` VALUES ('428', '20181101', '183.62.10.227');
INSERT INTO `dw_ip_location_everyday` VALUES ('427', '20181101', '183.62.40.7');
INSERT INTO `dw_ip_location_everyday` VALUES ('426', '20181101', '183.63.138.178');
INSERT INTO `dw_ip_location_everyday` VALUES ('425', '20181101', '183.63.22.66');
INSERT INTO `dw_ip_location_everyday` VALUES ('424', '20181101', '184.154.106.211');
INSERT INTO `dw_ip_location_everyday` VALUES ('423', '20181101', '184.169.201.185');
INSERT INTO `dw_ip_location_everyday` VALUES ('422', '20181101', '184.173.94.28');
INSERT INTO `dw_ip_location_everyday` VALUES ('421', '20181101', '184.22.211.146');
INSERT INTO `dw_ip_location_everyday` VALUES ('420', '20181101', '184.22.242.172');
INSERT INTO `dw_ip_location_everyday` VALUES ('419', '20181101', '188.168.46.53');
INSERT INTO `dw_ip_location_everyday` VALUES ('418', '20181101', '190.186.221.69');
INSERT INTO `dw_ip_location_everyday` VALUES ('417', '20181101', '192.151.146.202');
INSERT INTO `dw_ip_location_everyday` VALUES ('416', '20181101', '192.187.117.116');
INSERT INTO `dw_ip_location_everyday` VALUES ('415', '20181101', '192.55.46.38');
INSERT INTO `dw_ip_location_everyday` VALUES ('414', '20181101', '192.99.17.5');
INSERT INTO `dw_ip_location_everyday` VALUES ('413', '20181101', '192.99.3.60');
INSERT INTO `dw_ip_location_everyday` VALUES ('412', '20181101', '194.237.142.21');
INSERT INTO `dw_ip_location_everyday` VALUES ('411', '20181101', '195.110.138.105');
INSERT INTO `dw_ip_location_everyday` VALUES ('410', '20181101', '195.54.166.10');
INSERT INTO `dw_ip_location_everyday` VALUES ('409', '20181101', '198.100.149.130');
INSERT INTO `dw_ip_location_everyday` VALUES ('408', '20181101', '198.105.107.80');
INSERT INTO `dw_ip_location_everyday` VALUES ('407', '20181101', '198.199.97.25');
INSERT INTO `dw_ip_location_everyday` VALUES ('406', '20181101', '198.228.201.158');
INSERT INTO `dw_ip_location_everyday` VALUES ('405', '20181101', '198.23.152.160');
INSERT INTO `dw_ip_location_everyday` VALUES ('404', '20181101', '198.23.243.135');
INSERT INTO `dw_ip_location_everyday` VALUES ('403', '20181101', '198.245.50.215');
INSERT INTO `dw_ip_location_everyday` VALUES ('402', '20181101', '198.50.229.133');
INSERT INTO `dw_ip_location_everyday` VALUES ('401', '20181101', '199.119.124.44');
INSERT INTO `dw_ip_location_everyday` VALUES ('400', '20181101', '199.119.124.49');
INSERT INTO `dw_ip_location_everyday` VALUES ('399', '20181101', '199.119.124.50');
INSERT INTO `dw_ip_location_everyday` VALUES ('398', '20181101', '199.187.122.91');
INSERT INTO `dw_ip_location_everyday` VALUES ('397', '20181101', '199.21.99.79');
INSERT INTO `dw_ip_location_everyday` VALUES ('396', '20181101', '199.30.16.33');
INSERT INTO `dw_ip_location_everyday` VALUES ('395', '20181101', '199.30.20.131');
INSERT INTO `dw_ip_location_everyday` VALUES ('394', '20181101', '199.30.20.25');
INSERT INTO `dw_ip_location_everyday` VALUES ('393', '20181101', '199.30.20.86');
INSERT INTO `dw_ip_location_everyday` VALUES ('392', '20181101', '199.30.24.248');
INSERT INTO `dw_ip_location_everyday` VALUES ('391', '20181101', '199.30.25.138');
INSERT INTO `dw_ip_location_everyday` VALUES ('390', '20181101', '2.180.51.129');
INSERT INTO `dw_ip_location_everyday` VALUES ('389', '20181101', '202.100.20.73');
INSERT INTO `dw_ip_location_everyday` VALUES ('388', '20181101', '202.101.92.15');
INSERT INTO `dw_ip_location_everyday` VALUES ('387', '20181101', '202.104.106.49');
INSERT INTO `dw_ip_location_everyday` VALUES ('386', '20181101', '202.104.66.138');
INSERT INTO `dw_ip_location_everyday` VALUES ('385', '20181101', '202.105.136.60');
INSERT INTO `dw_ip_location_everyday` VALUES ('384', '20181101', '202.105.138.138');
INSERT INTO `dw_ip_location_everyday` VALUES ('383', '20181101', '202.118.253.110');
INSERT INTO `dw_ip_location_everyday` VALUES ('382', '20181101', '202.141.176.10');
INSERT INTO `dw_ip_location_everyday` VALUES ('381', '20181101', '202.205.103.29');
INSERT INTO `dw_ip_location_everyday` VALUES ('380', '20181101', '202.28.35.248');
INSERT INTO `dw_ip_location_everyday` VALUES ('379', '20181101', '202.45.129.180');
INSERT INTO `dw_ip_location_everyday` VALUES ('378', '20181101', '202.53.199.23');
INSERT INTO `dw_ip_location_everyday` VALUES ('377', '20181101', '202.68.199.102');
INSERT INTO `dw_ip_location_everyday` VALUES ('376', '20181101', '202.76.247.11');
INSERT INTO `dw_ip_location_everyday` VALUES ('375', '20181101', '202.84.17.41');
INSERT INTO `dw_ip_location_everyday` VALUES ('374', '20181101', '202.91.188.68');
INSERT INTO `dw_ip_location_everyday` VALUES ('373', '20181101', '202.99.27.196');
INSERT INTO `dw_ip_location_everyday` VALUES ('372', '20181101', '203.110.175.179');
INSERT INTO `dw_ip_location_everyday` VALUES ('371', '20181101', '203.156.252.8');
INSERT INTO `dw_ip_location_everyday` VALUES ('370', '20181101', '203.192.6.59');
INSERT INTO `dw_ip_location_everyday` VALUES ('369', '20181101', '203.196.98.24');
INSERT INTO `dw_ip_location_everyday` VALUES ('368', '20181101', '203.222.13.200');
INSERT INTO `dw_ip_location_everyday` VALUES ('367', '20181101', '204.236.186.224');
INSERT INTO `dw_ip_location_everyday` VALUES ('366', '20181101', '204.89.152.91');
INSERT INTO `dw_ip_location_everyday` VALUES ('365', '20181101', '205.188.178.115');
INSERT INTO `dw_ip_location_everyday` VALUES ('364', '20181101', '205.188.23.21');
INSERT INTO `dw_ip_location_everyday` VALUES ('363', '20181101', '206.71.250.50');
INSERT INTO `dw_ip_location_everyday` VALUES ('362', '20181101', '208.115.111.74');
INSERT INTO `dw_ip_location_everyday` VALUES ('361', '20181101', '208.115.113.90');
INSERT INTO `dw_ip_location_everyday` VALUES ('360', '20181101', '208.122.6.102');
INSERT INTO `dw_ip_location_everyday` VALUES ('359', '20181101', '208.43.225.84');
INSERT INTO `dw_ip_location_everyday` VALUES ('358', '20181101', '208.80.194.127');
INSERT INTO `dw_ip_location_everyday` VALUES ('357', '20181101', '209.114.36.70');
INSERT INTO `dw_ip_location_everyday` VALUES ('356', '20181101', '209.147.144.9');
INSERT INTO `dw_ip_location_everyday` VALUES ('355', '20181101', '210.21.121.52');
INSERT INTO `dw_ip_location_everyday` VALUES ('354', '20181101', '210.22.136.227');
INSERT INTO `dw_ip_location_everyday` VALUES ('353', '20181101', '210.22.158.133');
INSERT INTO `dw_ip_location_everyday` VALUES ('352', '20181101', '210.22.158.134');
INSERT INTO `dw_ip_location_everyday` VALUES ('351', '20181101', '210.242.153.61');
INSERT INTO `dw_ip_location_everyday` VALUES ('350', '20181101', '210.71.217.243');
INSERT INTO `dw_ip_location_everyday` VALUES ('349', '20181101', '210.72.8.23');
INSERT INTO `dw_ip_location_everyday` VALUES ('348', '20181101', '210.72.93.79');
INSERT INTO `dw_ip_location_everyday` VALUES ('347', '20181101', '210.73.21.74');
INSERT INTO `dw_ip_location_everyday` VALUES ('346', '20181101', '210.75.252.237');
INSERT INTO `dw_ip_location_everyday` VALUES ('345', '20181101', '211.142.144.9');
INSERT INTO `dw_ip_location_everyday` VALUES ('344', '20181101', '211.147.4.43');
INSERT INTO `dw_ip_location_everyday` VALUES ('343', '20181101', '211.151.238.51');
INSERT INTO `dw_ip_location_everyday` VALUES ('342', '20181101', '211.151.83.29');
INSERT INTO `dw_ip_location_everyday` VALUES ('341', '20181101', '211.155.113.247');
INSERT INTO `dw_ip_location_everyday` VALUES ('340', '20181101', '211.155.231.180');
INSERT INTO `dw_ip_location_everyday` VALUES ('339', '20181101', '211.157.146.147');
INSERT INTO `dw_ip_location_everyday` VALUES ('338', '20181101', '211.162.33.167');
INSERT INTO `dw_ip_location_everyday` VALUES ('337', '20181101', '211.67.25.20');
INSERT INTO `dw_ip_location_everyday` VALUES ('336', '20181101', '211.69.194.115');
INSERT INTO `dw_ip_location_everyday` VALUES ('335', '20181101', '213.203.143.54');
INSERT INTO `dw_ip_location_everyday` VALUES ('334', '20181101', '216.16.230.194');
INSERT INTO `dw_ip_location_everyday` VALUES ('333', '20181101', '216.24.199.48');
INSERT INTO `dw_ip_location_everyday` VALUES ('332', '20181101', '216.24.201.254');
INSERT INTO `dw_ip_location_everyday` VALUES ('331', '20181101', '216.244.71.18');
INSERT INTO `dw_ip_location_everyday` VALUES ('330', '20181101', '216.244.85.234');
INSERT INTO `dw_ip_location_everyday` VALUES ('329', '20181101', '216.38.216.101');
INSERT INTO `dw_ip_location_everyday` VALUES ('328', '20181101', '217.174.250.46');
INSERT INTO `dw_ip_location_everyday` VALUES ('327', '20181101', '218.0.217.9');
INSERT INTO `dw_ip_location_everyday` VALUES ('326', '20181101', '218.1.97.222');
INSERT INTO `dw_ip_location_everyday` VALUES ('325', '20181101', '218.103.86.74');
INSERT INTO `dw_ip_location_everyday` VALUES ('324', '20181101', '218.106.182.251');
INSERT INTO `dw_ip_location_everyday` VALUES ('323', '20181101', '218.108.30.29');
INSERT INTO `dw_ip_location_everyday` VALUES ('322', '20181101', '218.11.179.30');
INSERT INTO `dw_ip_location_everyday` VALUES ('321', '20181101', '218.11.179.35');
INSERT INTO `dw_ip_location_everyday` VALUES ('320', '20181101', '218.18.232.228');
INSERT INTO `dw_ip_location_everyday` VALUES ('319', '20181101', '218.202.1.207');
INSERT INTO `dw_ip_location_everyday` VALUES ('318', '20181101', '218.240.38.162');
INSERT INTO `dw_ip_location_everyday` VALUES ('317', '20181101', '218.240.60.248');
INSERT INTO `dw_ip_location_everyday` VALUES ('316', '20181101', '218.241.103.162');
INSERT INTO `dw_ip_location_everyday` VALUES ('315', '20181101', '218.28.41.2');
INSERT INTO `dw_ip_location_everyday` VALUES ('314', '20181101', '218.30.118.102');
INSERT INTO `dw_ip_location_everyday` VALUES ('313', '20181101', '218.30.118.99');
INSERT INTO `dw_ip_location_everyday` VALUES ('312', '20181101', '218.56.173.244');
INSERT INTO `dw_ip_location_everyday` VALUES ('311', '20181101', '218.6.169.95');
INSERT INTO `dw_ip_location_everyday` VALUES ('310', '20181101', '218.66.124.44');
INSERT INTO `dw_ip_location_everyday` VALUES ('309', '20181101', '218.69.11.90');
INSERT INTO `dw_ip_location_everyday` VALUES ('308', '20181101', '218.72.20.38');
INSERT INTO `dw_ip_location_everyday` VALUES ('307', '20181101', '218.82.101.100');
INSERT INTO `dw_ip_location_everyday` VALUES ('306', '20181101', '218.88.6.121');
INSERT INTO `dw_ip_location_everyday` VALUES ('305', '20181101', '219.133.13.252');
INSERT INTO `dw_ip_location_everyday` VALUES ('304', '20181101', '219.133.15.170');
INSERT INTO `dw_ip_location_everyday` VALUES ('303', '20181101', '219.134.187.135');
INSERT INTO `dw_ip_location_everyday` VALUES ('302', '20181101', '219.134.64.81');
INSERT INTO `dw_ip_location_everyday` VALUES ('301', '20181101', '219.134.75.27');
INSERT INTO `dw_ip_location_everyday` VALUES ('300', '20181101', '219.142.118.237');
INSERT INTO `dw_ip_location_everyday` VALUES ('299', '20181101', '219.142.118.249');
INSERT INTO `dw_ip_location_everyday` VALUES ('298', '20181101', '219.142.23.106');
INSERT INTO `dw_ip_location_everyday` VALUES ('297', '20181101', '219.142.53.236');
INSERT INTO `dw_ip_location_everyday` VALUES ('296', '20181101', '219.143.205.38');
INSERT INTO `dw_ip_location_everyday` VALUES ('295', '20181101', '219.150.71.5');
INSERT INTO `dw_ip_location_everyday` VALUES ('294', '20181101', '219.156.105.245');
INSERT INTO `dw_ip_location_everyday` VALUES ('293', '20181101', '219.82.251.144');
INSERT INTO `dw_ip_location_everyday` VALUES ('292', '20181101', '219.87.82.195');
INSERT INTO `dw_ip_location_everyday` VALUES ('291', '20181101', '220.128.223.100');
INSERT INTO `dw_ip_location_everyday` VALUES ('290', '20181101', '220.166.210.200');
INSERT INTO `dw_ip_location_everyday` VALUES ('289', '20181101', '220.178.81.22');
INSERT INTO `dw_ip_location_everyday` VALUES ('288', '20181101', '220.181.108.103');
INSERT INTO `dw_ip_location_everyday` VALUES ('287', '20181101', '220.181.108.113');
INSERT INTO `dw_ip_location_everyday` VALUES ('286', '20181101', '220.181.108.116');
INSERT INTO `dw_ip_location_everyday` VALUES ('285', '20181101', '220.181.108.120');
INSERT INTO `dw_ip_location_everyday` VALUES ('284', '20181101', '220.181.108.121');
INSERT INTO `dw_ip_location_everyday` VALUES ('283', '20181101', '220.181.108.147');
INSERT INTO `dw_ip_location_everyday` VALUES ('282', '20181101', '220.181.108.152');
INSERT INTO `dw_ip_location_everyday` VALUES ('281', '20181101', '220.181.108.153');
INSERT INTO `dw_ip_location_everyday` VALUES ('280', '20181101', '220.181.108.154');
INSERT INTO `dw_ip_location_everyday` VALUES ('279', '20181101', '220.181.108.155');
INSERT INTO `dw_ip_location_everyday` VALUES ('278', '20181101', '220.181.108.158');
INSERT INTO `dw_ip_location_everyday` VALUES ('277', '20181101', '220.181.108.159');
INSERT INTO `dw_ip_location_everyday` VALUES ('276', '20181101', '220.181.108.160');
INSERT INTO `dw_ip_location_everyday` VALUES ('275', '20181101', '220.181.108.166');
INSERT INTO `dw_ip_location_everyday` VALUES ('274', '20181101', '220.181.108.167');
INSERT INTO `dw_ip_location_everyday` VALUES ('273', '20181101', '220.181.108.169');
INSERT INTO `dw_ip_location_everyday` VALUES ('272', '20181101', '220.181.108.170');
INSERT INTO `dw_ip_location_everyday` VALUES ('271', '20181101', '220.181.108.176');
INSERT INTO `dw_ip_location_everyday` VALUES ('270', '20181101', '220.181.108.177');
INSERT INTO `dw_ip_location_everyday` VALUES ('269', '20181101', '220.181.108.178');
INSERT INTO `dw_ip_location_everyday` VALUES ('268', '20181101', '220.181.108.187');
INSERT INTO `dw_ip_location_everyday` VALUES ('267', '20181101', '220.181.108.79');
INSERT INTO `dw_ip_location_everyday` VALUES ('266', '20181101', '220.181.108.89');
INSERT INTO `dw_ip_location_everyday` VALUES ('265', '20181101', '220.181.108.90');
INSERT INTO `dw_ip_location_everyday` VALUES ('264', '20181101', '220.181.108.92');
INSERT INTO `dw_ip_location_everyday` VALUES ('263', '20181101', '220.181.108.97');
INSERT INTO `dw_ip_location_everyday` VALUES ('262', '20181101', '220.181.11.232');
INSERT INTO `dw_ip_location_everyday` VALUES ('261', '20181101', '220.181.126.4');
INSERT INTO `dw_ip_location_everyday` VALUES ('260', '20181101', '220.181.126.42');
INSERT INTO `dw_ip_location_everyday` VALUES ('259', '20181101', '220.181.127.126');
INSERT INTO `dw_ip_location_everyday` VALUES ('258', '20181101', '220.181.132.200');
INSERT INTO `dw_ip_location_everyday` VALUES ('257', '20181101', '220.181.136.93');
INSERT INTO `dw_ip_location_everyday` VALUES ('256', '20181101', '220.181.51.198');
INSERT INTO `dw_ip_location_everyday` VALUES ('255', '20181101', '220.181.51.199');
INSERT INTO `dw_ip_location_everyday` VALUES ('254', '20181101', '220.181.51.200');
INSERT INTO `dw_ip_location_everyday` VALUES ('253', '20181101', '220.181.51.201');
INSERT INTO `dw_ip_location_everyday` VALUES ('252', '20181101', '220.181.51.202');
INSERT INTO `dw_ip_location_everyday` VALUES ('251', '20181101', '220.181.51.203');
INSERT INTO `dw_ip_location_everyday` VALUES ('250', '20181101', '220.181.51.204');
INSERT INTO `dw_ip_location_everyday` VALUES ('249', '20181101', '220.181.51.205');
INSERT INTO `dw_ip_location_everyday` VALUES ('248', '20181101', '220.181.51.206');
INSERT INTO `dw_ip_location_everyday` VALUES ('247', '20181101', '220.181.51.207');
INSERT INTO `dw_ip_location_everyday` VALUES ('246', '20181101', '220.181.51.208');
INSERT INTO `dw_ip_location_everyday` VALUES ('245', '20181101', '220.181.51.209');
INSERT INTO `dw_ip_location_everyday` VALUES ('244', '20181101', '220.181.51.210');
INSERT INTO `dw_ip_location_everyday` VALUES ('243', '20181101', '220.181.51.211');
INSERT INTO `dw_ip_location_everyday` VALUES ('242', '20181101', '220.181.51.212');
INSERT INTO `dw_ip_location_everyday` VALUES ('241', '20181101', '220.181.89.162');
INSERT INTO `dw_ip_location_everyday` VALUES ('240', '20181101', '220.181.89.173');
INSERT INTO `dw_ip_location_everyday` VALUES ('239', '20181101', '220.181.89.174');
INSERT INTO `dw_ip_location_everyday` VALUES ('238', '20181101', '220.191.54.143');
INSERT INTO `dw_ip_location_everyday` VALUES ('237', '20181101', '221.11.29.153');
INSERT INTO `dw_ip_location_everyday` VALUES ('236', '20181101', '221.122.104.115');
INSERT INTO `dw_ip_location_everyday` VALUES ('235', '20181101', '221.130.41.156');
INSERT INTO `dw_ip_location_everyday` VALUES ('234', '20181101', '221.130.41.168');
INSERT INTO `dw_ip_location_everyday` VALUES ('233', '20181101', '221.178.200.106');
INSERT INTO `dw_ip_location_everyday` VALUES ('232', '20181101', '221.178.200.121');
INSERT INTO `dw_ip_location_everyday` VALUES ('231', '20181101', '221.179.161.41');
INSERT INTO `dw_ip_location_everyday` VALUES ('230', '20181101', '221.179.193.202');
INSERT INTO `dw_ip_location_everyday` VALUES ('229', '20181101', '221.179.193.203');
INSERT INTO `dw_ip_location_everyday` VALUES ('228', '20181101', '221.217.18.235');
INSERT INTO `dw_ip_location_everyday` VALUES ('227', '20181101', '221.223.72.21');
INSERT INTO `dw_ip_location_everyday` VALUES ('226', '20181101', '221.224.33.142');
INSERT INTO `dw_ip_location_everyday` VALUES ('225', '20181101', '221.225.150.157');
INSERT INTO `dw_ip_location_everyday` VALUES ('224', '20181101', '221.226.44.153');
INSERT INTO `dw_ip_location_everyday` VALUES ('223', '20181101', '221.227.56.105');
INSERT INTO `dw_ip_location_everyday` VALUES ('222', '20181101', '221.234.209.29');
INSERT INTO `dw_ip_location_everyday` VALUES ('221', '20181101', '221.237.156.47');
INSERT INTO `dw_ip_location_everyday` VALUES ('220', '20181101', '221.4.208.162');
INSERT INTO `dw_ip_location_everyday` VALUES ('219', '20181101', '222.129.52.255');
INSERT INTO `dw_ip_location_everyday` VALUES ('218', '20181101', '222.131.4.192');
INSERT INTO `dw_ip_location_everyday` VALUES ('217', '20181101', '222.178.10.253');
INSERT INTO `dw_ip_location_everyday` VALUES ('216', '20181101', '222.210.4.243');
INSERT INTO `dw_ip_location_everyday` VALUES ('215', '20181101', '222.212.181.168');
INSERT INTO `dw_ip_location_everyday` VALUES ('214', '20181101', '222.240.216.27');
INSERT INTO `dw_ip_location_everyday` VALUES ('213', '20181101', '222.244.35.118');
INSERT INTO `dw_ip_location_everyday` VALUES ('212', '20181101', '222.247.54.20');
INSERT INTO `dw_ip_location_everyday` VALUES ('211', '20181101', '222.29.102.47');
INSERT INTO `dw_ip_location_everyday` VALUES ('210', '20181101', '222.35.232.69');
INSERT INTO `dw_ip_location_everyday` VALUES ('209', '20181101', '222.44.41.33');
INSERT INTO `dw_ip_location_everyday` VALUES ('208', '20181101', '222.66.59.174');
INSERT INTO `dw_ip_location_everyday` VALUES ('207', '20181101', '222.67.16.252');
INSERT INTO `dw_ip_location_everyday` VALUES ('206', '20181101', '222.68.172.190');
INSERT INTO `dw_ip_location_everyday` VALUES ('205', '20181101', '222.68.18.124');
INSERT INTO `dw_ip_location_everyday` VALUES ('204', '20181101', '222.69.197.214');
INSERT INTO `dw_ip_location_everyday` VALUES ('203', '20181101', '222.70.152.149');
INSERT INTO `dw_ip_location_everyday` VALUES ('202', '20181101', '222.70.212.230');
INSERT INTO `dw_ip_location_everyday` VALUES ('201', '20181101', '222.92.8.142');
INSERT INTO `dw_ip_location_everyday` VALUES ('200', '20181101', '222.94.217.10');
INSERT INTO `dw_ip_location_everyday` VALUES ('199', '20181101', '223.141.23.103');
INSERT INTO `dw_ip_location_everyday` VALUES ('198', '20181101', '223.202.20.120');
INSERT INTO `dw_ip_location_everyday` VALUES ('197', '20181101', '223.65.143.117');
INSERT INTO `dw_ip_location_everyday` VALUES ('196', '20181101', '23.19.171.213');
INSERT INTO `dw_ip_location_everyday` VALUES ('195', '20181101', '23.19.171.220');
INSERT INTO `dw_ip_location_everyday` VALUES ('194', '20181101', '23.19.171.28');
INSERT INTO `dw_ip_location_everyday` VALUES ('193', '20181101', '23.19.171.90');
INSERT INTO `dw_ip_location_everyday` VALUES ('192', '20181101', '23.20.242.217');
INSERT INTO `dw_ip_location_everyday` VALUES ('191', '20181101', '24.18.195.210');
INSERT INTO `dw_ip_location_everyday` VALUES ('190', '20181101', '27.10.1.47');
INSERT INTO `dw_ip_location_everyday` VALUES ('189', '20181101', '27.105.12.160');
INSERT INTO `dw_ip_location_everyday` VALUES ('188', '20181101', '27.115.100.234');
INSERT INTO `dw_ip_location_everyday` VALUES ('187', '20181101', '27.153.185.211');
INSERT INTO `dw_ip_location_everyday` VALUES ('186', '20181101', '27.153.206.214');
INSERT INTO `dw_ip_location_everyday` VALUES ('185', '20181101', '27.210.9.151');
INSERT INTO `dw_ip_location_everyday` VALUES ('184', '20181101', '27.24.140.10');
INSERT INTO `dw_ip_location_everyday` VALUES ('183', '20181101', '27.36.218.178');
INSERT INTO `dw_ip_location_everyday` VALUES ('182', '20181101', '27.38.226.136');
INSERT INTO `dw_ip_location_everyday` VALUES ('181', '20181101', '31.184.238.158');
INSERT INTO `dw_ip_location_everyday` VALUES ('180', '20181101', '36.224.214.90');
INSERT INTO `dw_ip_location_everyday` VALUES ('179', '20181101', '36.232.95.253');
INSERT INTO `dw_ip_location_everyday` VALUES ('178', '20181101', '36.33.31.214');
INSERT INTO `dw_ip_location_everyday` VALUES ('177', '20181101', '36.44.50.171');
INSERT INTO `dw_ip_location_everyday` VALUES ('176', '20181101', '36.48.104.194');
INSERT INTO `dw_ip_location_everyday` VALUES ('175', '20181101', '37.115.189.44');
INSERT INTO `dw_ip_location_everyday` VALUES ('174', '20181101', '37.57.133.179');
INSERT INTO `dw_ip_location_everyday` VALUES ('173', '20181101', '37.59.236.68');
INSERT INTO `dw_ip_location_everyday` VALUES ('172', '20181101', '39.42.136.138');
INSERT INTO `dw_ip_location_everyday` VALUES ('171', '20181101', '41.141.25.186');
INSERT INTO `dw_ip_location_everyday` VALUES ('170', '20181101', '42.120.160.46');
INSERT INTO `dw_ip_location_everyday` VALUES ('169', '20181101', '42.120.161.46');
INSERT INTO `dw_ip_location_everyday` VALUES ('168', '20181101', '42.120.74.192');
INSERT INTO `dw_ip_location_everyday` VALUES ('167', '20181101', '42.120.74.210');
INSERT INTO `dw_ip_location_everyday` VALUES ('166', '20181101', '42.121.65.51');
INSERT INTO `dw_ip_location_everyday` VALUES ('165', '20181101', '42.156.136.14');
INSERT INTO `dw_ip_location_everyday` VALUES ('164', '20181101', '42.156.136.46');
INSERT INTO `dw_ip_location_everyday` VALUES ('163', '20181101', '42.156.137.46');
INSERT INTO `dw_ip_location_everyday` VALUES ('162', '20181101', '42.156.138.46');
INSERT INTO `dw_ip_location_everyday` VALUES ('161', '20181101', '42.156.139.46');
INSERT INTO `dw_ip_location_everyday` VALUES ('160', '20181101', '42.71.100.84');
INSERT INTO `dw_ip_location_everyday` VALUES ('159', '20181101', '42.76.10.92');
INSERT INTO `dw_ip_location_everyday` VALUES ('158', '20181101', '42.97.158.76');
INSERT INTO `dw_ip_location_everyday` VALUES ('157', '20181101', '46.161.41.24');
INSERT INTO `dw_ip_location_everyday` VALUES ('156', '20181101', '46.29.21.152');
INSERT INTO `dw_ip_location_everyday` VALUES ('155', '20181101', '49.212.97.93');
INSERT INTO `dw_ip_location_everyday` VALUES ('154', '20181101', '5.10.83.11');
INSERT INTO `dw_ip_location_everyday` VALUES ('153', '20181101', '5.10.83.12');
INSERT INTO `dw_ip_location_everyday` VALUES ('152', '20181101', '5.10.83.36');
INSERT INTO `dw_ip_location_everyday` VALUES ('151', '20181101', '5.10.83.39');
INSERT INTO `dw_ip_location_everyday` VALUES ('150', '20181101', '5.10.83.46');
INSERT INTO `dw_ip_location_everyday` VALUES ('149', '20181101', '5.10.83.55');
INSERT INTO `dw_ip_location_everyday` VALUES ('148', '20181101', '5.10.83.85');
INSERT INTO `dw_ip_location_everyday` VALUES ('147', '20181101', '5.10.83.89');
INSERT INTO `dw_ip_location_everyday` VALUES ('146', '20181101', '5.10.83.94');
INSERT INTO `dw_ip_location_everyday` VALUES ('145', '20181101', '5.10.83.96');
INSERT INTO `dw_ip_location_everyday` VALUES ('144', '20181101', '5.166.129.174');
INSERT INTO `dw_ip_location_everyday` VALUES ('143', '20181101', '5.39.81.6');
INSERT INTO `dw_ip_location_everyday` VALUES ('142', '20181101', '50.116.27.194');
INSERT INTO `dw_ip_location_everyday` VALUES ('141', '20181101', '50.16.120.139');
INSERT INTO `dw_ip_location_everyday` VALUES ('140', '20181101', '50.18.225.136');
INSERT INTO `dw_ip_location_everyday` VALUES ('139', '20181101', '50.93.195.98');
INSERT INTO `dw_ip_location_everyday` VALUES ('138', '20181101', '54.214.196.144');
INSERT INTO `dw_ip_location_everyday` VALUES ('137', '20181101', '54.226.153.225');
INSERT INTO `dw_ip_location_everyday` VALUES ('136', '20181101', '54.226.158.151');
INSERT INTO `dw_ip_location_everyday` VALUES ('135', '20181101', '54.226.2.237');
INSERT INTO `dw_ip_location_everyday` VALUES ('134', '20181101', '54.227.183.11');
INSERT INTO `dw_ip_location_everyday` VALUES ('133', '20181101', '54.227.26.191');
INSERT INTO `dw_ip_location_everyday` VALUES ('132', '20181101', '54.234.1.193');
INSERT INTO `dw_ip_location_everyday` VALUES ('131', '20181101', '54.234.159.77');
INSERT INTO `dw_ip_location_everyday` VALUES ('130', '20181101', '54.234.215.61');
INSERT INTO `dw_ip_location_everyday` VALUES ('129', '20181101', '54.241.198.78');
INSERT INTO `dw_ip_location_everyday` VALUES ('128', '20181101', '54.249.2.29');
INSERT INTO `dw_ip_location_everyday` VALUES ('127', '20181101', '58.100.63.173');
INSERT INTO `dw_ip_location_everyday` VALUES ('126', '20181101', '58.177.135.108');
INSERT INTO `dw_ip_location_everyday` VALUES ('125', '20181101', '58.209.132.183');
INSERT INTO `dw_ip_location_everyday` VALUES ('124', '20181101', '58.210.189.98');
INSERT INTO `dw_ip_location_everyday` VALUES ('123', '20181101', '58.215.204.118');
INSERT INTO `dw_ip_location_everyday` VALUES ('122', '20181101', '58.22.155.218');
INSERT INTO `dw_ip_location_everyday` VALUES ('121', '20181101', '58.23.89.187');
INSERT INTO `dw_ip_location_everyday` VALUES ('120', '20181101', '58.240.39.195');
INSERT INTO `dw_ip_location_everyday` VALUES ('119', '20181101', '58.246.170.210');
INSERT INTO `dw_ip_location_everyday` VALUES ('118', '20181101', '58.247.90.98');
INSERT INTO `dw_ip_location_everyday` VALUES ('117', '20181101', '58.248.178.212');
INSERT INTO `dw_ip_location_everyday` VALUES ('116', '20181101', '58.251.126.157');
INSERT INTO `dw_ip_location_everyday` VALUES ('115', '20181101', '58.55.124.228');
INSERT INTO `dw_ip_location_everyday` VALUES ('114', '20181101', '58.56.155.203');
INSERT INTO `dw_ip_location_everyday` VALUES ('113', '20181101', '58.61.218.30');
INSERT INTO `dw_ip_location_everyday` VALUES ('112', '20181101', '58.62.216.223');
INSERT INTO `dw_ip_location_everyday` VALUES ('111', '20181101', '59.115.103.15');
INSERT INTO `dw_ip_location_everyday` VALUES ('110', '20181101', '59.36.42.116');
INSERT INTO `dw_ip_location_everyday` VALUES ('109', '20181101', '59.39.192.108');
INSERT INTO `dw_ip_location_everyday` VALUES ('108', '20181101', '59.60.115.180');
INSERT INTO `dw_ip_location_everyday` VALUES ('107', '20181101', '59.66.218.198');
INSERT INTO `dw_ip_location_everyday` VALUES ('106', '20181101', '60.10.8.5');
INSERT INTO `dw_ip_location_everyday` VALUES ('105', '20181101', '60.161.145.243');
INSERT INTO `dw_ip_location_everyday` VALUES ('104', '20181101', '60.166.25.58');
INSERT INTO `dw_ip_location_everyday` VALUES ('103', '20181101', '60.166.58.226');
INSERT INTO `dw_ip_location_everyday` VALUES ('102', '20181101', '60.194.113.14');
INSERT INTO `dw_ip_location_everyday` VALUES ('101', '20181101', '60.194.32.8');
INSERT INTO `dw_ip_location_everyday` VALUES ('100', '20181101', '60.194.60.122');
INSERT INTO `dw_ip_location_everyday` VALUES ('99', '20181101', '60.208.6.156');
INSERT INTO `dw_ip_location_everyday` VALUES ('98', '20181101', '60.246.20.48');
INSERT INTO `dw_ip_location_everyday` VALUES ('97', '20181101', '60.247.46.156');
INSERT INTO `dw_ip_location_everyday` VALUES ('96', '20181101', '60.247.46.168');
INSERT INTO `dw_ip_location_everyday` VALUES ('95', '20181101', '60.247.46.87');
INSERT INTO `dw_ip_location_everyday` VALUES ('94', '20181101', '60.247.54.4');
INSERT INTO `dw_ip_location_everyday` VALUES ('93', '20181101', '60.247.77.253');
INSERT INTO `dw_ip_location_everyday` VALUES ('92', '20181101', '60.27.238.192');
INSERT INTO `dw_ip_location_everyday` VALUES ('91', '20181101', '60.29.35.66');
INSERT INTO `dw_ip_location_everyday` VALUES ('90', '20181101', '61.132.138.212');
INSERT INTO `dw_ip_location_everyday` VALUES ('89', '20181101', '61.135.172.68');
INSERT INTO `dw_ip_location_everyday` VALUES ('88', '20181101', '61.135.190.100');
INSERT INTO `dw_ip_location_everyday` VALUES ('87', '20181101', '61.135.190.101');
INSERT INTO `dw_ip_location_everyday` VALUES ('86', '20181101', '61.135.190.102');
INSERT INTO `dw_ip_location_everyday` VALUES ('85', '20181101', '61.135.190.103');
INSERT INTO `dw_ip_location_everyday` VALUES ('84', '20181101', '61.135.190.104');
INSERT INTO `dw_ip_location_everyday` VALUES ('83', '20181101', '61.135.190.105');
INSERT INTO `dw_ip_location_everyday` VALUES ('82', '20181101', '61.135.190.219');
INSERT INTO `dw_ip_location_everyday` VALUES ('81', '20181101', '61.135.190.220');
INSERT INTO `dw_ip_location_everyday` VALUES ('80', '20181101', '61.135.190.221');
INSERT INTO `dw_ip_location_everyday` VALUES ('79', '20181101', '61.135.190.222');
INSERT INTO `dw_ip_location_everyday` VALUES ('78', '20181101', '61.135.190.223');
INSERT INTO `dw_ip_location_everyday` VALUES ('77', '20181101', '61.135.190.224');
INSERT INTO `dw_ip_location_everyday` VALUES ('76', '20181101', '61.135.216.104');
INSERT INTO `dw_ip_location_everyday` VALUES ('75', '20181101', '61.135.216.105');
INSERT INTO `dw_ip_location_everyday` VALUES ('74', '20181101', '61.135.249.207');
INSERT INTO `dw_ip_location_everyday` VALUES ('73', '20181101', '61.135.249.214');
INSERT INTO `dw_ip_location_everyday` VALUES ('72', '20181101', '61.148.243.90');
INSERT INTO `dw_ip_location_everyday` VALUES ('71', '20181101', '61.148.244.188');
INSERT INTO `dw_ip_location_everyday` VALUES ('70', '20181101', '61.154.207.247');
INSERT INTO `dw_ip_location_everyday` VALUES ('69', '20181101', '61.154.9.84');
INSERT INTO `dw_ip_location_everyday` VALUES ('68', '20181101', '61.157.97.82');
INSERT INTO `dw_ip_location_everyday` VALUES ('67', '20181101', '61.165.237.35');
INSERT INTO `dw_ip_location_everyday` VALUES ('66', '20181101', '61.171.114.185');
INSERT INTO `dw_ip_location_everyday` VALUES ('65', '20181101', '61.185.190.199');
INSERT INTO `dw_ip_location_everyday` VALUES ('64', '20181101', '61.186.190.38');
INSERT INTO `dw_ip_location_everyday` VALUES ('63', '20181101', '61.186.190.39');
INSERT INTO `dw_ip_location_everyday` VALUES ('62', '20181101', '61.186.190.41');
INSERT INTO `dw_ip_location_everyday` VALUES ('61', '20181101', '61.186.190.42');
INSERT INTO `dw_ip_location_everyday` VALUES ('60', '20181101', '61.19.147.75');
INSERT INTO `dw_ip_location_everyday` VALUES ('59', '20181101', '61.228.132.84');
INSERT INTO `dw_ip_location_everyday` VALUES ('58', '20181101', '61.228.34.49');
INSERT INTO `dw_ip_location_everyday` VALUES ('57', '20181101', '61.234.74.235');
INSERT INTO `dw_ip_location_everyday` VALUES ('56', '20181101', '61.237.228.64');
INSERT INTO `dw_ip_location_everyday` VALUES ('55', '20181101', '62.143.146.232');
INSERT INTO `dw_ip_location_everyday` VALUES ('54', '20181101', '62.44.101.226');
INSERT INTO `dw_ip_location_everyday` VALUES ('53', '20181101', '64.12.250.152');
INSERT INTO `dw_ip_location_everyday` VALUES ('52', '20181101', '64.246.165.50');
INSERT INTO `dw_ip_location_everyday` VALUES ('51', '20181101', '65.19.138.33');
INSERT INTO `dw_ip_location_everyday` VALUES ('50', '20181101', '65.19.138.34');
INSERT INTO `dw_ip_location_everyday` VALUES ('49', '20181101', '65.36.241.79');
INSERT INTO `dw_ip_location_everyday` VALUES ('48', '20181101', '65.55.24.234');
INSERT INTO `dw_ip_location_everyday` VALUES ('47', '20181101', '65.55.24.237');
INSERT INTO `dw_ip_location_everyday` VALUES ('46', '20181101', '65.55.52.96');
INSERT INTO `dw_ip_location_everyday` VALUES ('45', '20181101', '65.88.2.2');
INSERT INTO `dw_ip_location_everyday` VALUES ('44', '20181101', '66.249.66.145');
INSERT INTO `dw_ip_location_everyday` VALUES ('43', '20181101', '66.249.66.208');
INSERT INTO `dw_ip_location_everyday` VALUES ('42', '20181101', '66.249.66.222');
INSERT INTO `dw_ip_location_everyday` VALUES ('41', '20181101', '66.249.66.234');
INSERT INTO `dw_ip_location_everyday` VALUES ('40', '20181101', '66.249.66.40');
INSERT INTO `dw_ip_location_everyday` VALUES ('39', '20181101', '66.249.66.80');
INSERT INTO `dw_ip_location_everyday` VALUES ('38', '20181101', '66.249.66.84');
INSERT INTO `dw_ip_location_everyday` VALUES ('37', '20181101', '66.249.75.194');
INSERT INTO `dw_ip_location_everyday` VALUES ('36', '20181101', '66.249.81.90');
INSERT INTO `dw_ip_location_everyday` VALUES ('35', '20181101', '66.249.82.84');
INSERT INTO `dw_ip_location_everyday` VALUES ('34', '20181101', '66.249.84.156');
INSERT INTO `dw_ip_location_everyday` VALUES ('33', '20181101', '66.249.84.39');
INSERT INTO `dw_ip_location_everyday` VALUES ('32', '20181101', '67.165.37.143');
INSERT INTO `dw_ip_location_everyday` VALUES ('31', '20181101', '67.243.168.245');
INSERT INTO `dw_ip_location_everyday` VALUES ('30', '20181101', '68.173.88.246');
INSERT INTO `dw_ip_location_everyday` VALUES ('29', '20181101', '68.47.129.55');
INSERT INTO `dw_ip_location_everyday` VALUES ('28', '20181101', '69.164.218.62');
INSERT INTO `dw_ip_location_everyday` VALUES ('27', '20181101', '71.133.107.222');
INSERT INTO `dw_ip_location_everyday` VALUES ('26', '20181101', '71.206.247.97');
INSERT INTO `dw_ip_location_everyday` VALUES ('25', '20181101', '71.96.108.116');
INSERT INTO `dw_ip_location_everyday` VALUES ('24', '20181101', '72.46.128.138');
INSERT INTO `dw_ip_location_everyday` VALUES ('23', '20181101', '72.46.128.139');
INSERT INTO `dw_ip_location_everyday` VALUES ('22', '20181101', '72.46.128.140');
INSERT INTO `dw_ip_location_everyday` VALUES ('21', '20181101', '72.46.128.141');
INSERT INTO `dw_ip_location_everyday` VALUES ('20', '20181101', '75.126.125.204');
INSERT INTO `dw_ip_location_everyday` VALUES ('19', '20181101', '76.185.96.8');
INSERT INTO `dw_ip_location_everyday` VALUES ('18', '20181101', '8.35.201.48');
INSERT INTO `dw_ip_location_everyday` VALUES ('17', '20181101', '8.35.201.49');
INSERT INTO `dw_ip_location_everyday` VALUES ('16', '20181101', '8.35.201.50');
INSERT INTO `dw_ip_location_everyday` VALUES ('15', '20181101', '8.35.201.51');
INSERT INTO `dw_ip_location_everyday` VALUES ('14', '20181101', '8.35.201.52');
INSERT INTO `dw_ip_location_everyday` VALUES ('13', '20181101', '8.35.201.53');
INSERT INTO `dw_ip_location_everyday` VALUES ('12', '20181101', '8.35.201.55');
INSERT INTO `dw_ip_location_everyday` VALUES ('11', '20181101', '81.17.28.58');
INSERT INTO `dw_ip_location_everyday` VALUES ('10', '20181101', '82.137.64.244');
INSERT INTO `dw_ip_location_everyday` VALUES ('9', '20181101', '82.65.126.167');
INSERT INTO `dw_ip_location_everyday` VALUES ('8', '20181101', '86.143.113.226');
INSERT INTO `dw_ip_location_everyday` VALUES ('7', '20181101', '86.57.155.226');
INSERT INTO `dw_ip_location_everyday` VALUES ('6', '20181101', '87.110.220.55');
INSERT INTO `dw_ip_location_everyday` VALUES ('5', '20181101', '89.107.7.120');
INSERT INTO `dw_ip_location_everyday` VALUES ('4', '20181101', '91.189.17.95');
INSERT INTO `dw_ip_location_everyday` VALUES ('3', '20181101', '91.207.7.58');
INSERT INTO `dw_ip_location_everyday` VALUES ('2', '20181101', '93.63.195.10');
INSERT INTO `dw_ip_location_everyday` VALUES ('1', '20181101', '98.26.89.118');

-- ----------------------------
-- Table structure for dw_outime_topn_everyday
-- ----------------------------
DROP TABLE IF EXISTS `dw_outime_topn_everyday`;
CREATE TABLE `dw_outime_topn_everyday`  (
  `od` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `day` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `outtime_hour` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `count_outtime` bigint(50) UNSIGNED ZEROFILL NULL DEFAULT NULL,
  PRIMARY KEY (`od`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dw_outime_topn_everyday
-- ----------------------------
INSERT INTO `dw_outime_topn_everyday` VALUES ('1', '20181101', '23', 00000000000000000000000000000000000000000000000001);
INSERT INTO `dw_outime_topn_everyday` VALUES ('10', '20181101', '10', 00000000000000000000000000000000000000000000000003);
INSERT INTO `dw_outime_topn_everyday` VALUES ('11', '20181101', '09', 00000000000000000000000000000000000000000000000010);
INSERT INTO `dw_outime_topn_everyday` VALUES ('12', '20181101', '08', 00000000000000000000000000000000000000000000000007);
INSERT INTO `dw_outime_topn_everyday` VALUES ('13', '20181101', '07', 00000000000000000000000000000000000000000000000012);
INSERT INTO `dw_outime_topn_everyday` VALUES ('14', '20181101', '05', 00000000000000000000000000000000000000000000000001);
INSERT INTO `dw_outime_topn_everyday` VALUES ('15', '20181101', '04', 00000000000000000000000000000000000000000000000001);
INSERT INTO `dw_outime_topn_everyday` VALUES ('16', '20181101', '03', 00000000000000000000000000000000000000000000000002);
INSERT INTO `dw_outime_topn_everyday` VALUES ('17', '20181101', '02', 00000000000000000000000000000000000000000000000002);
INSERT INTO `dw_outime_topn_everyday` VALUES ('18', '20181101', '00', 00000000000000000000000000000000000000000000000004);
INSERT INTO `dw_outime_topn_everyday` VALUES ('2', '20181101', '22', 00000000000000000000000000000000000000000000000001);
INSERT INTO `dw_outime_topn_everyday` VALUES ('3', '20181101', '19', 00000000000000000000000000000000000000000000000001);
INSERT INTO `dw_outime_topn_everyday` VALUES ('4', '20181101', '17', 00000000000000000000000000000000000000000000000002);
INSERT INTO `dw_outime_topn_everyday` VALUES ('5', '20181101', '15', 00000000000000000000000000000000000000000000000001);
INSERT INTO `dw_outime_topn_everyday` VALUES ('6', '20181101', '14', 00000000000000000000000000000000000000000000000001);
INSERT INTO `dw_outime_topn_everyday` VALUES ('7', '20181101', '13', 00000000000000000000000000000000000000000000000002);
INSERT INTO `dw_outime_topn_everyday` VALUES ('8', '20181101', '12', 00000000000000000000000000000000000000000000000004);
INSERT INTO `dw_outime_topn_everyday` VALUES ('9', '20181101', '11', 00000000000000000000000000000000000000000000000002);

-- ----------------------------
-- Table structure for dw_outpage_newuser_topn
-- ----------------------------
DROP TABLE IF EXISTS `dw_outpage_newuser_topn`;
CREATE TABLE `dw_outpage_newuser_topn`  (
  `od` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `day` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `outpage` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `count_outpage` bigint(50) NULL DEFAULT NULL,
  PRIMARY KEY (`od`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dw_outpage_newuser_topn
-- ----------------------------
INSERT INTO `dw_outpage_newuser_topn` VALUES ('1', '20181101', '/hadoop-zookeeper-intro/', 5);
INSERT INTO `dw_outpage_newuser_topn` VALUES ('2', '20181101', '/hadoop-mahout-roadmap/', 8);
INSERT INTO `dw_outpage_newuser_topn` VALUES ('3', '20181101', '/hadoop-hive-intro/', 10);
INSERT INTO `dw_outpage_newuser_topn` VALUES ('4', '20181101', '/hadoop-family-roadmap/', 5);
INSERT INTO `dw_outpage_newuser_topn` VALUES ('5', '20181101', '/finance-rhive-repurchase/', 5);
INSERT INTO `dw_outpage_newuser_topn` VALUES ('6', '20181101', '/cassandra-clustor/', 2);
INSERT INTO `dw_outpage_newuser_topn` VALUES ('7', '20181101', '/black-ip-list/', 1);
INSERT INTO `dw_outpage_newuser_topn` VALUES ('8', '20181101', '/about', 3);

-- ----------------------------
-- Table structure for dw_outpage_olduser_topn
-- ----------------------------
DROP TABLE IF EXISTS `dw_outpage_olduser_topn`;
CREATE TABLE `dw_outpage_olduser_topn`  (
  `od` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `day` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `outpage` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `count_outpage` bigint(50) NULL DEFAULT NULL,
  PRIMARY KEY (`od`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dw_outpage_olduser_topn
-- ----------------------------
INSERT INTO `dw_outpage_olduser_topn` VALUES ('1', '20181101', '/hadoop-mahout-roadmap/', 5);
INSERT INTO `dw_outpage_olduser_topn` VALUES ('2', '20181101', '/hadoop-hive-intro/', 3);
INSERT INTO `dw_outpage_olduser_topn` VALUES ('3', '20181101', '/hadoop-family-roadmap/', 5);
INSERT INTO `dw_outpage_olduser_topn` VALUES ('4', '20181101', '/finance-rhive-repurchase/', 4);
INSERT INTO `dw_outpage_olduser_topn` VALUES ('5', '20181101', '/about', 1);

-- ----------------------------
-- Table structure for dw_outpage_topn_everyday
-- ----------------------------
DROP TABLE IF EXISTS `dw_outpage_topn_everyday`;
CREATE TABLE `dw_outpage_topn_everyday`  (
  `od` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `day` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `outpage` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `count_outpage` bigint(50) NULL DEFAULT NULL,
  PRIMARY KEY (`od`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dw_outpage_topn_everyday
-- ----------------------------
INSERT INTO `dw_outpage_topn_everyday` VALUES ('1', '20181101', '/hadoop-zookeeper-intro/', 5);
INSERT INTO `dw_outpage_topn_everyday` VALUES ('2', '20181101', '/hadoop-mahout-roadmap/', 13);
INSERT INTO `dw_outpage_topn_everyday` VALUES ('3', '20181101', '/hadoop-hive-intro/', 13);
INSERT INTO `dw_outpage_topn_everyday` VALUES ('4', '20181101', '/hadoop-family-roadmap/', 10);
INSERT INTO `dw_outpage_topn_everyday` VALUES ('5', '20181101', '/finance-rhive-repurchase/', 9);
INSERT INTO `dw_outpage_topn_everyday` VALUES ('6', '20181101', '/cassandra-clustor/', 2);
INSERT INTO `dw_outpage_topn_everyday` VALUES ('7', '20181101', '/black-ip-list/', 1);
INSERT INTO `dw_outpage_topn_everyday` VALUES ('8', '20181101', '/about', 4);

-- ----------------------------
-- Table structure for dw_page_staylongest_topn_everyday
-- ----------------------------
DROP TABLE IF EXISTS `dw_page_staylongest_topn_everyday`;
CREATE TABLE `dw_page_staylongest_topn_everyday`  (
  `od` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `day` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `request` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `count_request` bigint(50) NULL DEFAULT NULL,
  PRIMARY KEY (`od`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dw_page_staylongest_topn_everyday
-- ----------------------------
INSERT INTO `dw_page_staylongest_topn_everyday` VALUES ('30', '20181101', '/item/nAxUzv0g', 4475);
INSERT INTO `dw_page_staylongest_topn_everyday` VALUES ('35', '20181101', '/item/hWeDu1pR', 4400);
INSERT INTO `dw_page_staylongest_topn_everyday` VALUES ('42', '20181101', '/item/bIcJzQXQ', 4405);
INSERT INTO `dw_page_staylongest_topn_everyday` VALUES ('63', '20181101', '/item/NnsTxujC', 4434);
INSERT INTO `dw_page_staylongest_topn_everyday` VALUES ('70', '20181101', '/item/LbbTResG', 4405);
INSERT INTO `dw_page_staylongest_topn_everyday` VALUES ('78', '20181101', '/item/HdlUcO9P', 4399);
INSERT INTO `dw_page_staylongest_topn_everyday` VALUES ('79', '20181101', '/item/HZxEY8vF', 4477);
INSERT INTO `dw_page_staylongest_topn_everyday` VALUES ('85', '20181101', '/item/FO5KWpx4', 4407);
INSERT INTO `dw_page_staylongest_topn_everyday` VALUES ('90', '20181101', '/item/AXNxjZdp', 4399);
INSERT INTO `dw_page_staylongest_topn_everyday` VALUES ('93', '20181101', '/item/8iCAWcmJ', 4405);

-- ----------------------------
-- Table structure for dw_page_stayshortest_topn_everyday
-- ----------------------------
DROP TABLE IF EXISTS `dw_page_stayshortest_topn_everyday`;
CREATE TABLE `dw_page_stayshortest_topn_everyday`  (
  `od` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `day` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `request` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `count_request` bigint(50) NULL DEFAULT NULL,
  PRIMARY KEY (`od`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dw_page_stayshortest_topn_everyday
-- ----------------------------
INSERT INTO `dw_page_stayshortest_topn_everyday` VALUES ('112', '20181101', '/hadoop-zookeeper-intro/', 6);
INSERT INTO `dw_page_stayshortest_topn_everyday` VALUES ('113', '20181101', '/hadoop-mahout-roadmap/', 20);
INSERT INTO `dw_page_stayshortest_topn_everyday` VALUES ('114', '20181101', '/hadoop-hive-intro/', 14);
INSERT INTO `dw_page_stayshortest_topn_everyday` VALUES ('115', '20181101', '/hadoop-family-roadmap/', 13);
INSERT INTO `dw_page_stayshortest_topn_everyday` VALUES ('116', '20181101', '/finance-rhive-repurchase/', 13);
INSERT INTO `dw_page_stayshortest_topn_everyday` VALUES ('121', '20181101', '/cassandra-clustor/', 3);
INSERT INTO `dw_page_stayshortest_topn_everyday` VALUES ('123', '20181101', '/black-ip-list/', 2);
INSERT INTO `dw_page_stayshortest_topn_everyday` VALUES ('124', '20181101', '/about', 5);
INSERT INTO `dw_page_stayshortest_topn_everyday` VALUES ('21', '20181101', '/item/r8191wUt', 4130);
INSERT INTO `dw_page_stayshortest_topn_everyday` VALUES ('8', '20181101', '/item/yrZqXxfN', 4162);

-- ----------------------------
-- Table structure for dw_pvs_everyhour_oneday
-- ----------------------------
DROP TABLE IF EXISTS `dw_pvs_everyhour_oneday`;
CREATE TABLE `dw_pvs_everyhour_oneday`  (
  `od` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `daystr` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hour` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pvs` bigint(50) NULL DEFAULT NULL,
  PRIMARY KEY (`od`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dw_pvs_everyhour_oneday
-- ----------------------------
INSERT INTO `dw_pvs_everyhour_oneday` VALUES ('1', '20181101', '23', 382);
INSERT INTO `dw_pvs_everyhour_oneday` VALUES ('10', '20181101', '14', 514);
INSERT INTO `dw_pvs_everyhour_oneday` VALUES ('11', '20181101', '13', 531);
INSERT INTO `dw_pvs_everyhour_oneday` VALUES ('12', '20181101', '12', 621);
INSERT INTO `dw_pvs_everyhour_oneday` VALUES ('13', '20181101', '11', 571);
INSERT INTO `dw_pvs_everyhour_oneday` VALUES ('14', '20181101', '10', 568);
INSERT INTO `dw_pvs_everyhour_oneday` VALUES ('15', '20181101', '09', 1374);
INSERT INTO `dw_pvs_everyhour_oneday` VALUES ('16', '20181101', '08', 2052);
INSERT INTO `dw_pvs_everyhour_oneday` VALUES ('17', '20181101', '07', 1010);
INSERT INTO `dw_pvs_everyhour_oneday` VALUES ('18', '20181101', '06', 261);
INSERT INTO `dw_pvs_everyhour_oneday` VALUES ('19', '20181101', '05', 540);
INSERT INTO `dw_pvs_everyhour_oneday` VALUES ('2', '20181101', '22', 351);
INSERT INTO `dw_pvs_everyhour_oneday` VALUES ('20', '20181101', '04', 569);
INSERT INTO `dw_pvs_everyhour_oneday` VALUES ('21', '20181101', '03', 552);
INSERT INTO `dw_pvs_everyhour_oneday` VALUES ('22', '20181101', '02', 546);
INSERT INTO `dw_pvs_everyhour_oneday` VALUES ('23', '20181101', '01', 324);
INSERT INTO `dw_pvs_everyhour_oneday` VALUES ('24', '20181101', '00', 312);
INSERT INTO `dw_pvs_everyhour_oneday` VALUES ('3', '20181101', '21', 213);
INSERT INTO `dw_pvs_everyhour_oneday` VALUES ('4', '20181101', '20', 211);
INSERT INTO `dw_pvs_everyhour_oneday` VALUES ('5', '20181101', '19', 390);
INSERT INTO `dw_pvs_everyhour_oneday` VALUES ('6', '20181101', '18', 262);
INSERT INTO `dw_pvs_everyhour_oneday` VALUES ('7', '20181101', '17', 382);
INSERT INTO `dw_pvs_everyhour_oneday` VALUES ('8', '20181101', '16', 475);
INSERT INTO `dw_pvs_everyhour_oneday` VALUES ('9', '20181101', '15', 759);

-- ----------------------------
-- Table structure for dw_pvs_referer_everyhour_oneday
-- ----------------------------
DROP TABLE IF EXISTS `dw_pvs_referer_everyhour_oneday`;
CREATE TABLE `dw_pvs_referer_everyhour_oneday`  (
  `od` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `day` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `referer_url` varchar(5000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `referer_host` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hour` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pv_referer_cnt` bigint(50) NULL DEFAULT NULL,
  PRIMARY KEY (`od`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dw_pvs_referer_everyhour_oneday
-- ----------------------------
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1', '20181101', '\"https://www.google.it/\"', 'www.google.it', '13', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('10', '20181101', '\"https://www.google.com/\"', 'www.google.com', '02', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('100', '20181101', '\"http://www.leonarding.com/26686207/viewspace-754947\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1000', '20181101', '\"http://blog.fens.me/category/r-lang/page/2/\"', 'blog.fens.me', '23', 26);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1001', '20181101', '\"http://blog.fens.me/category/r-lang/page/2/\"', 'blog.fens.me', '22', 24);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1002', '20181101', '\"http://blog.fens.me/category/r-lang/page/2/\"', 'blog.fens.me', '09', 27);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1003', '20181101', '\"http://blog.fens.me/category/r-lang/\"', 'blog.fens.me', '23', 11);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1004', '20181101', '\"http://blog.fens.me/category/r-lang/\"', 'blog.fens.me', '22', 8);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1005', '20181101', '\"http://blog.fens.me/category/r-lang/\"', 'blog.fens.me', '09', 37);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1006', '20181101', '\"http://blog.fens.me/category/r-lang/\"', 'blog.fens.me', '07', 26);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1007', '20181101', '\"http://blog.fens.me/category/javascript%e8%af%ad%e8%a8%80%e5%ae%9e%e8%b7%b5/page/2/\"', 'blog.fens.me', '08', 29);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1008', '20181101', '\"http://blog.fens.me/category/javascript%e8%af%ad%e8%a8%80%e5%ae%9e%e8%b7%b5/\"', 'blog.fens.me', '21', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1009', '20181101', '\"http://blog.fens.me/category/javascript%e8%af%ad%e8%a8%80%e5%ae%9e%e8%b7%b5/\"', 'blog.fens.me', '17', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('101', '20181101', '\"http://www.leonarding.com/26686207/viewspace-753872\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1010', '20181101', '\"http://blog.fens.me/category/javascript%e8%af%ad%e8%a8%80%e5%ae%9e%e8%b7%b5/\"', 'blog.fens.me', '08', 18);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1011', '20181101', '\"http://blog.fens.me/category/javascript%e8%af%ad%e8%a8%80%e5%ae%9e%e8%b7%b5/\"', 'blog.fens.me', '04', 9);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1012', '20181101', '\"http://blog.fens.me/category/javascript%e8%af%ad%e8%a8%80%e5%ae%9e%e8%b7%b5/\"', 'blog.fens.me', '03', 15);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1013', '20181101', '\"http://blog.fens.me/category/javascript%E8%AF%AD%E8%A8%80%E5%AE%9E%E8%B7%B5/page/3/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1014', '20181101', '\"http://blog.fens.me/category/hadoop-action/page/5/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1015', '20181101', '\"http://blog.fens.me/category/hadoop-action/page/3/\"', 'blog.fens.me', '02', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1016', '20181101', '\"http://blog.fens.me/category/hadoop-action/page/2/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1017', '20181101', '\"http://blog.fens.me/category/hadoop-action/page/2/\"', 'blog.fens.me', '08', 16);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1018', '20181101', '\"http://blog.fens.me/category/hadoop-action/\"', 'blog.fens.me', '20', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1019', '20181101', '\"http://blog.fens.me/category/hadoop-action/\"', 'blog.fens.me', '13', 32);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('102', '20181101', '\"http://www.leonarding.com/26686207/viewspace-753510\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1020', '20181101', '\"http://blog.fens.me/category/hadoop-action/\"', 'blog.fens.me', '12', 33);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1021', '20181101', '\"http://blog.fens.me/category/hadoop-action/\"', 'blog.fens.me', '10', 63);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1022', '20181101', '\"http://blog.fens.me/category/hadoop-action/\"', 'blog.fens.me', '09', 36);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1023', '20181101', '\"http://blog.fens.me/category/hadoop-action/\"', 'blog.fens.me', '08', 368);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1024', '20181101', '\"http://blog.fens.me/category/hadoop-action/\"', 'blog.fens.me', '07', 14);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1025', '20181101', '\"http://blog.fens.me/category/datagurucn/\"', 'blog.fens.me', '15', 9);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1026', '20181101', '\"http://blog.fens.me/category/datagurucn/\"', 'blog.fens.me', '08', 22);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1027', '20181101', '\"http://blog.fens.me/category/%e6%95%b0%e6%8d%ae%e6%8c%96%e6%8e%98/\"', 'blog.fens.me', '08', 16);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1028', '20181101', '\"http://blog.fens.me/category/%e5%8f%af%e8%a7%86%e5%8c%96%e6%8a%80%e6%9c%af/\"', 'blog.fens.me', '09', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1029', '20181101', '\"http://blog.fens.me/category/%E9%BB%91%E5%AE%A2%E6%94%BB%E9%98%B2/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('103', '20181101', '\"http://www.leonarding.com/26686207/viewspace-752943\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1030', '20181101', '\"http://blog.fens.me/category/%E9%87%91%E8%9E%8D/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1031', '20181101', '\"http://blog.fens.me/category/%E8%99%9A%E6%8B%9F%E5%8C%96%E5%AE%9E%E8%B7%B5/\"', 'blog.fens.me', '07', 20);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1032', '20181101', '\"http://blog.fens.me/category/%E7%BD%91%E7%BB%9C%E6%8A%80%E6%9C%AF/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1033', '20181101', '\"http://blog.fens.me/category/%E6%9E%B6%E6%9E%84%E8%AE%BE%E8%AE%A1/\"', 'blog.fens.me', '20', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1034', '20181101', '\"http://blog.fens.me/category/%E6%95%B0%E6%8D%AE%E6%8C%96%E6%8E%98/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1035', '20181101', '\"http://blog.fens.me/category/%E6%93%8D%E4%BD%9C%E7%B3%BB%E7%BB%9F/page/4/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1036', '20181101', '\"http://blog.fens.me/category/%E6%93%8D%E4%BD%9C%E7%B3%BB%E7%BB%9F/\"', 'blog.fens.me', '13', 31);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1037', '20181101', '\"http://blog.fens.me/cassandra-clustor/\"', 'blog.fens.me', '19', 19);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1038', '20181101', '\"http://blog.fens.me/cassandra-clustor/\"', 'blog.fens.me', '09', 11);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1039', '20181101', '\"http://blog.fens.me/black-ip-list/?replytocom=21\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('104', '20181101', '\"http://www.leonarding.com/26686207/viewspace-752413\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1040', '20181101', '\"http://blog.fens.me/black-ip-list/?replytocom=20\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1041', '20181101', '\"http://blog.fens.me/black-ip-list/\"', 'blog.fens.me', '11', 23);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1042', '20181101', '\"http://blog.fens.me/angularjs-yeoman-project/\"', 'blog.fens.me', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1043', '20181101', '\"http://blog.fens.me/angularjs-yeoman-project/\"', 'blog.fens.me', '15', 10);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1044', '20181101', '\"http://blog.fens.me/angularjs-yeoman-project/\"', 'blog.fens.me', '14', 23);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1045', '20181101', '\"http://blog.fens.me/angularjs-yeoman-project/\"', 'blog.fens.me', '07', 20);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1046', '20181101', '\"http://blog.fens.me/angularjs-yeoman-project/\"', 'blog.fens.me', '03', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1047', '20181101', '\"http://blog.fens.me/angularjs-yeoman-project/\"', 'blog.fens.me', '02', 31);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1048', '20181101', '\"http://blog.fens.me/angularjs-webstorm-ide/\"', 'blog.fens.me', '15', 40);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1049', '20181101', '\"http://blog.fens.me/angularjs-webstorm-ide/\"', 'blog.fens.me', '14', 63);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('105', '20181101', '\"http://www.leonarding.com/26686207/viewspace-751368\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1050', '20181101', '\"http://blog.fens.me/angularjs-webstorm-ide/\"', 'blog.fens.me', '12', 27);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1051', '20181101', '\"http://blog.fens.me/angularjs-webstorm-ide/\"', 'blog.fens.me', '09', 28);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1052', '20181101', '\"http://blog.fens.me/angularjs-webstorm-ide/\"', 'blog.fens.me', '08', 27);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1053', '20181101', '\"http://blog.fens.me/angularjs-webstorm-ide/\"', 'blog.fens.me', '05', 27);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1054', '20181101', '\"http://blog.fens.me/angularjs-webstorm-ide/\"', 'blog.fens.me', '02', 59);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1055', '20181101', '\"http://blog.fens.me/angularjs-route-template/\"', 'blog.fens.me', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1056', '20181101', '\"http://blog.fens.me/angularjs-route-template/\"', 'blog.fens.me', '08', 4);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1057', '20181101', '\"http://blog.fens.me/angularjs-ngtable-update/\"', 'blog.fens.me', '13', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1058', '20181101', '\"http://blog.fens.me/angularjs-ngtable-update/\"', 'blog.fens.me', '12', 22);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1059', '20181101', '\"http://blog.fens.me/angularjs-ngtable-update/\"', 'blog.fens.me', '03', 6);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('106', '20181101', '\"http://www.leonarding.com/26686207/viewspace-749844\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1060', '20181101', '\"http://blog.fens.me/about/\"', 'blog.fens.me', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1061', '20181101', '\"http://blog.fens.me/about/\"', 'blog.fens.me', '01', 18);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1062', '20181101', '\"http://blog.fens.me/about/\"', 'blog.fens.me', '00', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1063', '20181101', '\"http://blog.fens.me/about\"', 'blog.fens.me', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1064', '20181101', '\"http://blog.fens.me/?p=2445&preview=true\"', 'blog.fens.me', '12', 11);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1065', '20181101', '\"http://blog.fens.me/?p=2445&preview=true\"', 'blog.fens.me', '06', 20);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1066', '20181101', '\"http://blog.fens.me/?p=2445&preview=true\"', 'blog.fens.me', '05', 75);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1067', '20181101', '\"http://blog.fens.me/2013/page/9/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1068', '20181101', '\"http://blog.fens.me/2013/page/5/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1069', '20181101', '\"http://blog.fens.me/2013/page/13/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('107', '20181101', '\"http://www.leonarding.com/26686207/viewspace-746977\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1070', '20181101', '\"http://blog.fens.me/2013/page/12/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1071', '20181101', '\"http://blog.fens.me/2013/page/11/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1072', '20181101', '\"http://blog.fens.me/2013/page/10/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1073', '20181101', '\"http://blog.fens.me/2013/08/page/3/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1074', '20181101', '\"http://blog.fens.me/2013/08/page/2/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1075', '20181101', '\"http://blog.fens.me/2013/08/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1076', '20181101', '\"http://blog.fens.me/2013/07/\"', 'blog.fens.me', '23', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1077', '20181101', '\"http://blog.fens.me/2013/07/\"', 'blog.fens.me', '05', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1078', '20181101', '\"http://blog.fens.me/2013/07/\"', 'blog.fens.me', '02', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1079', '20181101', '\"http://blog.fens.me/2013/05/\"', 'blog.fens.me', '18', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('108', '20181101', '\"http://www.leonarding.com/26686207/viewspace-731889\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1080', '20181101', '\"http://blog.fens.me/2013/04/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1081', '20181101', '\"http://blog.fens.me/2013/01/\"', 'blog.fens.me', '13', 7);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1082', '20181101', '\"http://blog.fens.me/2013/\"', 'blog.fens.me', '22', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1083', '20181101', '\"http://blog.fens.me/2013/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1084', '20181101', '\"http://blog.fens.me/2012/\"', 'blog.fens.me', '19', 25);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1085', '20181101', '\"http://blog.fens.me/\"', 'blog.fens.me', '23', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1086', '20181101', '\"http://blog.fens.me/\"', 'blog.fens.me', '22', 7);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1087', '20181101', '\"http://blog.fens.me/\"', 'blog.fens.me', '21', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1088', '20181101', '\"http://blog.fens.me/\"', 'blog.fens.me', '17', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1089', '20181101', '\"http://blog.fens.me/\"', 'blog.fens.me', '16', 13);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('109', '20181101', '\"http://www.leonarding.com/26686207/viewspace-715992\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1090', '20181101', '\"http://blog.fens.me/\"', 'blog.fens.me', '15', 56);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1091', '20181101', '\"http://blog.fens.me/\"', 'blog.fens.me', '13', 28);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1092', '20181101', '\"http://blog.fens.me/\"', 'blog.fens.me', '12', 12);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1093', '20181101', '\"http://blog.fens.me/\"', 'blog.fens.me', '11', 23);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1094', '20181101', '\"http://blog.fens.me/\"', 'blog.fens.me', '10', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1095', '20181101', '\"http://blog.fens.me/\"', 'blog.fens.me', '09', 14);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1096', '20181101', '\"http://blog.fens.me/\"', 'blog.fens.me', '08', 160);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1097', '20181101', '\"http://blog.fens.me/\"', 'blog.fens.me', '07', 10);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1098', '20181101', '\"http://blog.fens.me/\"', 'blog.fens.me', '05', 9);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1099', '20181101', '\"http://blog.fens.me/\"', 'blog.fens.me', '04', 13);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('11', '20181101', '\"https://www.google.com.tw/\"', 'www.google.com.tw', '19', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('110', '20181101', '\"http://www.leonarding.com/26686207/spacelist-link\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1100', '20181101', '\"http://blog.fens.me/\"', 'blog.fens.me', '03', 20);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1101', '20181101', '\"http://blog.fens.me/\"', 'blog.fens.me', '02', 7);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1102', '20181101', '\"http://blog.fens.me./\"', 'blog.fens.me.', '09', 9);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1103', '20181101', '\"http://blog.csdn.net/showmyheart_libo/article/details/11660661\"', 'blog.csdn.net', '04', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1104', '20181101', '\"http://blog.csdn.net/legend_x/article/details/11595109\"', 'blog.csdn.net', '08', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1105', '20181101', '\"http://blog.chinaunix.net/uid-8746761-id-3846816.html\"', 'blog.chinaunix.net', '07', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1106', '20181101', '\"http://angularjs.cn/A0fq\"', 'angularjs.cn', '00', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1107', '20181101', '\"http://angularjs.cn/A0eQ\"', 'angularjs.cn', '00', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1108', '20181101', '\"http://angularjs.cn/A0eP\"', 'angularjs.cn', '08', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1109', '20181101', '\"http://angularjs.cn/A0dh\"', 'angularjs.cn', '08', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('111', '20181101', '\"http://www.leonarding.com/26686207/spacelist-friend\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1110', '20181101', '\"http://angularjs.cn/A0dI\"', 'angularjs.cn', '05', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1111', '20181101', '\"http://angularjs.cn/A0dC\"', 'angularjs.cn', '09', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1112', '20181101', '\"http://angularjs.cn/A0d8\"', 'angularjs.cn', '09', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1113', '20181101', '\"http://angularjs.cn/A0d8\"', 'angularjs.cn', '08', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1114', '20181101', '\"http://angularjs.cn/A0d2\"', 'angularjs.cn', '15', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1115', '20181101', '\"http://angularjs.cn/A0d2\"', 'angularjs.cn', '02', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1116', '20181101', '\"http://angularjs.cn/A0cu\"', 'angularjs.cn', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1117', '20181101', '\"http://angularjs.cn/A0cQ\"', 'angularjs.cn', '05', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1118', '20181101', '\"http://angularjs.cn/A0cL\"', 'angularjs.cn', '05', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1119', '20181101', '\"http://angularjs.cn/A08q\"', 'angularjs.cn', '12', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('112', '20181101', '\"http://www.leonarding.com/26686207/spacelist-bbs\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1120', '20181101', '\"http://angularjs.cn/A00q\"', 'angularjs.cn', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1121', '20181101', '\"http://angularjs.cn/A00q\"', 'angularjs.cn', '08', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1122', '20181101', '\"http://angularjs.cn/A00q\"', 'angularjs.cn', '03', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1123', '20181101', '\"http://angularjs.cn/A00n\"', 'angularjs.cn', '23', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1124', '20181101', '\"http://angularjs.cn/A00n\"', 'angularjs.cn', '13', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1125', '20181101', '\"http://angularjs.cn/A00n\"', 'angularjs.cn', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1126', '20181101', '\"http://angularjs.cn/A00f\"', 'angularjs.cn', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1127', '20181101', '\"http://angularjs.cn/A00f\"', 'angularjs.cn', '02', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1128', '20181101', '\"http://angularjs.cn/\"', 'angularjs.cn', '13', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1129', '20181101', '\"http://angularjs.cn/\"', 'angularjs.cn', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('113', '20181101', '\"http://www.leonarding.com/26686207/action-spacelist-starttime-1370016000-endtime-1372608000\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1130', '20181101', '\"http://74.125.128.160/url?sa=t&rct=j&q=rserve%E5%AE%89%E8%A3%85&source=web&cd=2&cad=rja&ved=0CC8QFjAB&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%72%2d%72%73%65%72%76%65%2d%6a%61%76%61%2f&ei=5Fo5UrCyJuKFiQfq7IGQAw&usg=AFQjCNGt22ywOFEd7CjXyoC9-iqaf9G4-g&bvm=bv.52288139,d.aGc\"', '74.125.128.160', '07', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1131', '20181101', '\"http://50.116.27.194/\"', '50.116.27.194', '13', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1132', '20181101', '\"http://42.121.84.157/A00q\"', '42.121.84.157', '13', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1133', '20181101', '\"http://203.208.46.145/url?sa=t&rct=j&q=mongodb%E5%A6%82%E4%BD%95%E4%BF%9D%E5%AD%98json%E6%95%B0%E6%8D%AE&source=web&cd=1&cad=rja&ved=0CCkQFjAA&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%6e%6f%64%65%6a%73%2d%6d%6f%6e%67%6f%6f%73%65%2d%6a%73%6f%6e%2f&ei=J_03Uv7BJeSyiAfy54HgDw&usg=AFQjCNFJSEqP5tXBQp6NewxVtByOKBTzWw&bvm=bv.52164340,d.aGc\"', '203.208.46.145', '23', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1134', '20181101', '\"http://203.208.46.145/url?sa=t&rct=j&q=mongodb%E5%A6%82%E4%BD%95%E4%BF%9D%E5%AD%98json%E6%95%B0%E6%8D%AE&source=web&cd=1&cad=rja&ved=0CCkQFjAA&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%6e%6f%64%65%6a%73%2d%6d%6f%6e%67%6f%6f%73%65%2d%6a%73%6f%6e%2f&ei=J_03Uv7BJeSyiAfy54HgDw&usg=AFQjCNFJSEqP5tXBQp6NewxVtByOKBTzWw&bvm=bv.52164340,d.aGc\"', '203.208.46.145', '12', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1135', '20181101', '\"http://100rmb.info/\"', '100rmb.info', '10', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('1136', '20181101', '\"http://100RMB.INFO/wp-login.php\"', '100RMB.INFO', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('114', '20181101', '\"http://www.leonarding.com/26686207/action-spacelist-starttime-1364745600-endtime-1367337600\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('115', '20181101', '\"http://www.leonarding.com/26686207/action-spacelist-starttime-1354291200-endtime-1356969600\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('116', '20181101', '\"http://www.leonarding.com/26686207/action-spacelist-starttime-1341072000-endtime-1343750400\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('117', '20181101', '\"http://www.leonarding.com/26686207/action-spacelist-starttime-1335801600-endtime-1338480000\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('118', '20181101', '\"http://www.leonarding.com/26686207/action-spacelist-starttime-1325347199\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('119', '20181101', '\"http://www.leonarding.com/26607903/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('12', '20181101', '\"https://www.google.com.tw/\"', 'www.google.com.tw', '17', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('120', '20181101', '\"http://www.leonarding.com/26442936/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('121', '20181101', '\"http://www.leonarding.com/26247018/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('122', '20181101', '\"http://www.leonarding.com/25618347/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('123', '20181101', '\"http://www.leonarding.com/25615991/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('124', '20181101', '\"http://www.leonarding.com/25454855/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('125', '20181101', '\"http://www.leonarding.com/24848867/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('126', '20181101', '\"http://www.leonarding.com/23135684/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('127', '20181101', '\"http://www.leonarding.com/22815499/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('128', '20181101', '\"http://www.leonarding.com/22664653/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('129', '20181101', '\"http://www.leonarding.com/22513874/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('13', '20181101', '\"https://www.google.com.tw/\"', 'www.google.com.tw', '15', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('130', '20181101', '\"http://www.leonarding.com/21558530/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('131', '20181101', '\"http://www.leonarding.com/20775027/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('132', '20181101', '\"http://www.leonarding.com/198791/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('133', '20181101', '\"http://www.leonarding.com/1711153\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('134', '20181101', '\"http://www.leonarding.com/15693674/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('135', '20181101', '\"http://www.leonarding.com/14551274/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('136', '20181101', '\"http://www.leonarding.com/13337857/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('137', '20181101', '\"http://www.leonarding.com/12637597/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('138', '20181101', '\"http://www.leonarding.com/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('139', '20181101', '\"http://www.leonarding.com/\"', 'www.leonarding.com', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('14', '20181101', '\"https://www.google.com.tw/\"', 'www.google.com.tw', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('140', '20181101', '\"http://www.leonarding.com/\"', 'www.leonarding.com', '11', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('141', '20181101', '\"http://www.leonarding.com/\"', 'www.leonarding.com', '00', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('142', '20181101', '\"http://www.leonarding.com\"', 'www.leonarding.com', '12', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('143', '20181101', '\"http://www.itpub.net/thread-1811743-1-1.html\"', 'www.itpub.net', '08', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('144', '20181101', '\"http://www.itpub.net/thread-1480316-1-1.html\"', 'www.itpub.net', '00', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('145', '20181101', '\"http://www.google.fr/url?sa=t&rct=j&q=r%20%E8%AF%AD%E8%A8%80%20%E4%B8%8Ejava&source=web&cd=4&ved=0CDwQFjAD&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%63%61%74%65%67%6f%72%79%2f%72%2d%6c%61%6e%67%2f&ei=2lw5UvfiI4KwiAfjzoG4Cg&usg=AFQjCNGVCFhI8Q5O1Og2toYpi1mx6BXDeg&bvm=bv.52288139,d.aGc&cad=rjt\"', 'www.google.fr', '07', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('146', '20181101', '\"http://www.google.com/url?sa=t&rct=j&q=nodejs%20%E5%BC%82%E6%AD%A5%E5%B9%BF%E6%92%AD&source=web&cd=1&cad=rja&ved=0CCgQFjAA&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%6e%6f%64%65%6a%73%2d%73%6f%63%6b%65%74%69%6f%2d%63%68%61%74%2f&ei=rko5UrylAefOiAe7_IGQBw&usg=AFQjCNG6YWoZsJ_bSj8kTnMHcH51hYQkAA&bvm=bv.52288139,d.aGc\"', 'www.google.com', '06', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('147', '20181101', '\"http://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=6&cad=rja&ved=0CHIQFjAF&url=http%3A%2F%2Fblog.fens.me%2Fvps-ip-dns%2F&ei=j045UrP5AYX22AXsg4G4DQ&usg=AFQjCNGsJfLMNZnwWXNpTSUl6SOEzfF6tg&sig2=YY1oxEybUL7wx3IrVIMfHA&bvm=bv.52288139,d.b2I\"', 'www.google.com', '06', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('148', '20181101', '\"http://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=2&cad=rja&ved=0CDIQFjAB&url=http%3A%2F%2Fblog.fens.me%2Fjava-websocket-intro%2F&ei=2vU5Usy4KtS6hAe7jYDgDA&usg=AFQjCNE1xojUbh1NuERaPAV-J1YJWfe6qQ&sig2=U1QaYcjLrhbe_kC55vx1BA&bvm=bv.52288139,d.ZG4\"', 'www.google.com', '18', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('149', '20181101', '\"http://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&sqi=2&ved=0CCgQFjAA&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%6e%6f%64%65%6a%73%2d%77%65%62%73%6f%63%6b%65%74%2f&ei=Hc85UtrYI6SViAf40YDICw&usg=AFQjCNFPJGjAeD_9z5OUaX-2hxqBvMIWvQ&bvm=bv.52288139,d.aGc\"', 'www.google.com', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('15', '20181101', '\"https://www.google.com.tw/\"', 'www.google.com.tw', '08', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('150', '20181101', '\"http://www.google.com.tw/url?sa=t&rct=j&q=websocket%20%E4%B8%8D%E6%94%AF%E6%8F%B4&source=web&cd=14&ved=0CEMQFjADOAo&url=http%3A%2F%2Fblog.fens.me%2Fnodejs-websocket%2F&ei=r8s5UofMGYewkAXbkYGgDw&usg=AFQjCNFPJGjAeD_9z5OUaX-2hxqBvMIWvQ&bvm=bv.52288139,d.dGI&cad=rja\"', 'www.google.com.tw', '15', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('151', '20181101', '\"http://www.google.com.hk/url?sa=t&rct=j&q=ylim+%E5%8F%96%E5%B0%8F%E6%95%B0%E7%82%B9%E5%90%8E%E4%B8%89%E4%BD%8D+R&source=web&cd=1&ved=0CC0QFjAA&url=http%3A%2F%2Fblog.fens.me%2F2012%2F&ei=KQU6UoGUBI6jhgeevICwAg&usg=AFQjCNEQc9E4JHeyIRxiJ15nijNU1E5yRQ\"', 'www.google.com.hk', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('152', '20181101', '\"http://www.google.com.hk/url?sa=t&rct=j&q=websocket&source=web&cd=27&ved=0CFMQFjAGOBQ&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%6e%6f%64%65%6a%73%2d%77%65%62%73%6f%63%6b%65%74%2f&ei=QFo5Urm8OZOgiQecqYHACw&usg=AFQjCNFPJGjAeD_9z5OUaX-2hxqBvMIWvQ&bvm=bv.52288139,d.aGc&cad=rjt\"', 'www.google.com.hk', '07', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('153', '20181101', '\"http://www.google.com.hk/url?sa=t&rct=j&q=ubuntu%E5%A6%82%E4%BD%95%E4%B8%8B%E8%BD%BD%E8%AF%81%E4%B9%A6cloud-cert.pem&source=web&cd=5&ved=0CEEQFjAE&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%63%61%74%65%67%6f%72%79%2f%25%45%38%25%39%39%25%39%41%25%45%36%25%38%42%25%39%46%25%45%35%25%38%43%25%39%36%25%45%35%25%41%45%25%39%45%25%45%38%25%42%37%25%42%35%2f&ei=elk5UqfFLc2ziQf86IDYCA&usg=AFQjCNEXj1k23PmurcxYYdcmVqH8wRr8ww\"', 'www.google.com.hk', '07', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('154', '20181101', '\"http://www.google.com.hk/url?sa=t&rct=j&q=rjava&source=web&cd=4&ved=0CE4QFjAD&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%72%2d%72%6a%61%76%61%2d%6a%61%76%61%2f&ei=h2I5UqnrL8SOige_7YHgCg&usg=AFQjCNEzOCjkkCJ3c3pL0myTVVKyeREaeg\"', 'www.google.com.hk', '08', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('155', '20181101', '\"http://www.google.com.hk/url?sa=t&rct=j&q=npm%E5%AE%89%E8%A3%85socketio%E5%90%8E%E6%89%BE%E4%B8%8D%E5%88%B0socket.io.js%20&source=web&cd=4&ved=0CDsQFjAD&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%70%61%67%65%2f%34%2f&ei=k386UsjbIuqKiQff14G4Bw&usg=AFQjCNE1dDIKm3oUt5kh9VjkCRMcnhdjvQ&bvm=bv.52288139,d.aGc&cad=rjt\"', 'www.google.com.hk', '04', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('156', '20181101', '\"http://www.google.com.hk/url?sa=t&rct=j&q=nodejs+log&source=web&cd=3&ved=0CEAQFjAC&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%6e%6f%64%65%6a%73%2d%6c%6f%67%34%6a%73%2f&ei=JWg5Upn6AYyhigeQmYGABw&usg=AFQjCNGMNPvUkZq2DvjK23JB483CHJn_eA\"', 'www.google.com.hk', '08', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('157', '20181101', '\"http://www.google.com.hk/url?sa=t&rct=j&q=node.js%20%E6%A1%86%E6%9E%B6&source=web&cd=5&ved=0CEgQFjAE&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%6e%6f%64%65%6a%73%2d%65%78%70%72%65%73%73%33%2f&ei=-E45Us-1KqKTyQGq2IDIAQ&usg=AFQjCNE1EkWIXulqJ-n4rNRQ1iW6MpmHUA&bvm=bv.52288139,d.aWc&cad=rjt\"', 'www.google.com.hk', '07', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('158', '20181101', '\"http://www.google.com.hk/url?sa=t&rct=j&q=node+js+error+the+specified+procedure&source=web&cd=7&ved=0CFwQFjAG&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%6e%6f%64%65%6a%73%2d%67%72%75%6e%74%2d%69%6e%74%72%6f%2f&ei=mGA5UquXB8WOigf0tYC4Dg&usg=AFQjCNG8MDaWxTn5oLasY86vrJtJaOJ_Kg\"', 'www.google.com.hk', '08', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('159', '20181101', '\"http://www.google.com.hk/url?sa=t&rct=j&q=mysql%20ibdata1&source=web&cd=6&ved=0CE4QFjAF&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%6d%79%73%71%6c%2d%69%62%64%61%74%61%31%2f&ei=GHQ5UpqgMMP_iAeyjIDwCw&usg=AFQjCNGDKOCozckJ8QkOMiCP31LvNPmy6Q&bvm=bv.52288139,d.aGc&cad=rjt\"', 'www.google.com.hk', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('16', '20181101', '\"https://www.google.com.tw/\"', 'www.google.com.tw', '02', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('160', '20181101', '\"http://www.google.com.hk/url?sa=t&rct=j&q=mysql%20BRIGHIHOUSE%20%20charset%20utf8%3B&source=web&cd=2&cad=rja&ved=0CDEQFjAB&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%6d%79%69%73%61%6d%2d%62%72%69%67%68%74%68%6f%75%73%65%2f&ei=xyw6UoGKG5OgiQecqYHACw&usg=AFQjCNFsnsoA62PGnMli0YdlCNL_9yi97w&bvm=bv.52288139,d.aGc\"', 'www.google.com.hk', '22', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('161', '20181101', '\"http://www.google.com.hk/url?sa=t&rct=j&q=linux%20hadoop%20thrift%E5%90%AF%E5%8A%A8&source=web&cd=13&ved=0CDAQFjACOAo&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%72%68%61%64%6f%6f%70%2d%68%62%61%73%65%2d%72%68%61%73%65%2f&ei=unQ5UobbAaWSiQfA2IGoAw&usg=AFQjCNFi-Bi6vLf9WIP-NKeN4Mr1EdrokA&bvm=bv.52288139,d.aGc&cad=rjt\"', 'www.google.com.hk', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('162', '20181101', '\"http://www.google.com.hk/url?sa=t&rct=j&q=jri%E4%B8%8Ejava%E7%BB%93%E5%90%88%20&source=web&cd=4&ved=0CD0QFjAD&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%74%61%67%2f%72%6a%61%76%61%2f&ei=jHg5UuCqIoXpiAeOm4C4BQ&usg=AFQjCNHbO8QV-7-SHpqbCN3CLdzT_hpjPw&bvm=bv.52288139,d.aGc&cad=rjt\"', 'www.google.com.hk', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('163', '20181101', '\"http://www.google.com.hk/url?sa=t&rct=j&q=jquery+%E5%B1%9E%E6%80%A7%E8%B5%8B%E5%80%BC+%E4%B8%8D%E8%BD%AC%E4%B9%89&source=web&cd=61&ved=0CCoQFjAAODw&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%6e%6f%64%65%6a%73%2d%75%6e%64%65%72%73%63%6f%72%65%2f&ei=WFg5UtWwGoiyiQfgpYDwCw&usg=AFQjCNEP_wKj4JqXlDLglP92RU4hIEX9jw\"', 'www.google.com.hk', '07', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('164', '20181101', '\"http://www.google.com.hk/url?sa=t&rct=j&q=java%20websocket%E5%AE%9E%E7%8E%B0&source=web&cd=4&ved=0CD4QFjAD&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%6a%61%76%61%2d%77%65%62%73%6f%63%6b%65%74%2d%69%6e%74%72%6f%2f&ei=wGc5UtTqDuuXiQeYnICAAg&usg=AFQjCNE1xojUbh1NuERaPAV-J1YJWfe6qQ&bvm=bv.52288139,d.aGc&cad=rjt\"', 'www.google.com.hk', '08', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('165', '20181101', '\"http://www.google.com.hk/url?sa=t&rct=j&q=ibdata1%20&source=web&cd=3&ved=0CDUQFjAC&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%6d%79%73%71%6c%2d%69%62%64%61%74%61%31%2f&ei=MXY5UuSaJ-eAiQeFsYDYCQ&usg=AFQjCNGDKOCozckJ8QkOMiCP31LvNPmy6Q&bvm=bv.52288139,d.aGc&cad=rja\"', 'www.google.com.hk', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('166', '20181101', '\"http://www.google.com.hk/url?sa=t&rct=j&q=hue%20mapreduce&source=web&cd=38&cad=rja&ved=0CFIQFjAHOB4&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%68%61%64%6f%6f%70%2d%66%61%6d%69%6c%79%2d%72%6f%61%64%6d%61%70%2f&ei=x1c5Ut2uGbCtiQe484DYCg&usg=AFQjCNFFaTuHEXHrg_VO2SVGQ4Rdy485iw&bvm=bv.52288139,d.aGc\"', 'www.google.com.hk', '07', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('167', '20181101', '\"http://www.google.com.hk/url?sa=t&rct=j&q=hive+%E4%BD%BF%E7%94%A8&source=web&cd=2&ved=0CDEQFjAB&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%68%61%64%6f%6f%70%2d%68%69%76%65%2d%69%6e%74%72%6f%2f&ei=1mI5UtfHGeT9iAe0xIH4Dg&usg=AFQjCNF8EFxPuCMrm7CvqVgzcBUzrJZStQ\"', 'www.google.com.hk', '08', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('168', '20181101', '\"http://www.google.com.hk/url?sa=t&rct=j&q=hive%E7%9A%84%E5%AE%89%E8%A3%85&source=web&cd=2&ved=0CC4QFjAB&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%68%61%64%6f%6f%70%2d%68%69%76%65%2d%69%6e%74%72%6f%2f&ei=5lw5Uo-2NpGZiQfCwoG4BA&usg=AFQjCNF8EFxPuCMrm7CvqVgzcBUzrJZStQ&bvm=bv.52164340,d.aGc&cad=rjt\"', 'www.google.com.hk', '07', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('169', '20181101', '\"http://www.google.com.hk/url?sa=t&rct=j&q=hadoop1.0.3%E5%AE%89%E8%A3%85+robby&source=web&cd=2&ved=0CC0QFjAB&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%74%61%67%2f%72%68%69%76%65%2f&ei=OXk6UquVEMWOigf0tYC4Dg&usg=AFQjCNHEEU4J249Ozz2fApKOrqIrPokF8w\"', 'www.google.com.hk', '04', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('17', '20181101', '\"https://www.google.com.tw/\"', 'www.google.com.tw', '01', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('170', '20181101', '\"http://www.google.com.hk/url?sa=t&rct=j&q=grunt+stylus+%E9%85%8D%E7%BD%AE&source=web&cd=2&ved=0CDYQFjAB&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%6e%6f%64%65%6a%73%2d%73%74%79%6c%75%73%2d%63%73%73%2f&ei=SGE5UsufO46SiAfUj4DYCg&usg=AFQjCNEjUanpNkyg42FIqWpYtrDNE_Zzrg\"', 'www.google.com.hk', '08', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('171', '20181101', '\"http://www.google.com.hk/url?sa=t&rct=j&q=grunt+stylus&source=web&cd=13&ved=0CD4QFjACOAo&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%74%61%67%2f%67%72%75%6e%74%2f&ei=9tc5Upz0I-eZiQeszoDICA&usg=AFQjCNGkIZAWF6vWO7SrtWNxGCQTogKT3A\"', 'www.google.com.hk', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('172', '20181101', '\"http://www.google.com.hk/url?sa=t&rct=j&q=couldn\'t+connect+to+new+shard+socket+exception+&source=web&cd=1&cad=rja&ved=0CC4QFjAA&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%74%61%67%2f%73%68%61%72%64%2f&ei=P1k5UqW1A4bniAeQhoDwAg&usg=AFQjCNHnQbtsK4g3exniCJeg9Ou3S_mgrA\"', 'www.google.com.hk', '07', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('173', '20181101', '\"http://www.google.com.hk/url?sa=t&rct=j&q=bootstrap%20select&source=web&cd=3&ved=0CDwQFjAC&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%6e%6f%64%65%6a%73%2d%62%6f%6f%74%73%74%72%61%70%2d%73%65%6c%65%63%74%2f&ei=rFY5UpL8EMiOigfhtIEI&usg=AFQjCNFjgOiLVhjRkhPBNFOE_4iE0_bw1A&bvm=bv.52288139,d.aGc&cad=rjt\"', 'www.google.com.hk', '07', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('174', '20181101', '\"http://www.google.com.hk/url?sa=t&rct=j&q=angularjs&source=web&cd=31&ved=0CCgQFjAAOB4&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%61%6e%67%75%6c%61%72%6a%73%2d%79%65%6f%6d%61%6e%2d%70%72%6f%6a%65%63%74%2f&ei=wc05UoCdNceviQeWooHYDg&usg=AFQjCNG9CcVvEwPIoaFoxxFnOFOyvO6csQ&bvm=bv.52288139,d.aGc&cad=rjt\"', 'www.google.com.hk', '16', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('175', '20181101', '\"http://www.google.com.hk/url?sa=t&rct=j&q=angularjs&source=web&cd=31&ved=0CCgQFjAAOB4&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%61%6e%67%75%6c%61%72%6a%73%2d%79%65%6f%6d%61%6e%2d%70%72%6f%6a%65%63%74%2f&ei=wc05UoCdNceviQeWooHYDg&usg=AFQjCNG9CcVvEwPIoaFoxxFnOFOyvO6csQ&bvm=bv.52288139,d.aGc&cad=rjt\"', 'www.google.com.hk', '15', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('176', '20181101', '\"http://www.google.com.hk/url?sa=t&rct=j&q=VPN%E6%9C%8D%E5%8A%A1%E5%99%A8%E6%96%B0%E5%BB%BAVPN%E8%B4%A6%E5%8F%B7&source=web&cd=12&ved=0CDkQFjABOAo&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%74%61%67%2f%76%70%6e%2f&ei=YMA5UsC6DYqZiAft2YDoDQ&usg=AFQjCNGpaQ7fpebuOpsIoSFw2cPwg6nuOA&bvm=bv.52288139,d.aGc&cad=rjt\"', 'www.google.com.hk', '15', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('177', '20181101', '\"http://www.google.com.hk/url?sa=t&rct=j&q=&esrc=s&frm=1&source=web&cd=1&ved=0CCsQFjAA&url=%68%74%74%70%3a%2f%2f%62%6c%6f%67%2e%66%65%6e%73%2e%6d%65%2f%6d%79%73%71%6c%2d%69%62%64%61%74%61%31%2f&ei=cWA5UrmvCYeBiQe2mYDwCw&usg=AFQjCNGDKOCozckJ8QkOMiCP31LvNPmy6Q&sig2=wibfTS-Z8Z6tuZrR-YmdGQ\"', 'www.google.com.hk', '08', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('178', '20181101', '\"http://www.google.com.hk/search?safe=strict&rlz=1C1CHVN_zh-CNUS552US552&q=ylim+%E5%8F%96%E5%B0%8F%E6%95%B0%E7%82%B9%E5%90%8E%E4%B8%89%E4%BD%8D+R&oq=ylim+%E5%8F%96%E5%B0%8F%E6%95%B0%E7%82%B9%E5%90%8E%E4%B8%89%E4%BD%8D+R&gs_l=serp.3..30i10.14486.14817.0.15067.2.2.0.0.0.0.213.401.0j1j1.2.0....0...1c.1.26.serp..0.2.398.Dg6Fm7rGOYY\"', 'www.google.com.hk', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('179', '20181101', '\"http://www.google.com.hk/search?q=webstorm\"', 'www.google.com.hk', '02', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('18', '20181101', '\"https://www.google.com.sg/\"', 'www.google.com.sg', '03', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('180', '20181101', '\"http://www.google.com.hk/search?newwindow=1&safe=strict&ei=ncE5UsPPAYqIiQeMiIGICw&q=highcharts+olap+client&oq=highcharts+olap+client&gs_l=mobile-gws-serp.3...59434.74144.0.75831.11.11.0.0.0.0.0.0..0.0....0...1c.1.26.mobile-gws-serp..11.0.0.AccPPn-LUj0\"', 'www.google.com.hk', '15', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('181', '20181101', '\"http://www.google.com.hk/imgres?imgurl=http://blog.fens.me/wp-content/uploads/2013/09/HadoopFamilyWordle.png&imgrefurl=http://blog.fens.me/series-hadoop-family/&usg=__qlx5d5n_r174f-mNeRectt56yiE=&h=400&w=600&sz=161&hl=zh-CN&start=25&zoom=1&tbnid=qKIghhYiu5wkmM:&tbnh=90&tbnw=135&ei=rFE5Usz7KObpiAftjoC4BA&um=1&itbs=1&sa=X&ved=0CDQQrQMwBDgU\"', 'www.google.com.hk', '07', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('182', '20181101', '\"http://www.google.com.hk/blank.html\"', 'www.google.com.hk', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('183', '20181101', '\"http://www.google.co.th/url?sa=i&rct=j&q=&esrc=s&frm=1&source=images&cd=&docid=Qw9vJaKiib4GNM&tbnid=6cYYdr2E4h6vKM:&ved=0CAUQjRw&url=http%3A%2F%2Fblog.fens.me%2Frhadoop-rmr2-pipemapred%2F&ei=73E5UqXTIYPtrQfaroCwAw&bvm=bv.52288139,d.bmk&psig=AFQjCNEuI1QlPu8waGWv0ks7Jv6tLX13uw&ust=1379582467822296\"', 'www.google.co.th', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('184', '20181101', '\"http://www.fens.me/robots.txt\"', 'www.fens.me', '17', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('185', '20181101', '\"http://www.fens.me/robots.txt\"', 'www.fens.me', '00', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('186', '20181101', '\"http://www.fens.me/js/jquery-ui-1.8.20.custom.min.js\"', 'www.fens.me', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('187', '20181101', '\"http://www.fens.me/js/jquery-1.7.2.min.js\"', 'www.fens.me', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('188', '20181101', '\"http://www.fens.me/js/google.js\"', 'www.fens.me', '23', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('189', '20181101', '\"http://www.fens.me/js/google.js\"', 'www.fens.me', '22', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('19', '20181101', '\"https://www.google.com.hk/\"', 'www.google.com.hk', '17', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('190', '20181101', '\"http://www.fens.me/js/google.js\"', 'www.fens.me', '16', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('191', '20181101', '\"http://www.fens.me/js/google.js\"', 'www.fens.me', '15', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('192', '20181101', '\"http://www.fens.me/js/google.js\"', 'www.fens.me', '13', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('193', '20181101', '\"http://www.fens.me/js/google.js\"', 'www.fens.me', '12', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('194', '20181101', '\"http://www.fens.me/js/google.js\"', 'www.fens.me', '10', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('195', '20181101', '\"http://www.fens.me/js/google.js\"', 'www.fens.me', '09', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('196', '20181101', '\"http://www.fens.me/js/google.js\"', 'www.fens.me', '08', 8);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('197', '20181101', '\"http://www.fens.me/js/google.js\"', 'www.fens.me', '07', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('198', '20181101', '\"http://www.fens.me/js/google.js\"', 'www.fens.me', '04', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('199', '20181101', '\"http://www.fens.me/js/google.js\"', 'www.fens.me', '03', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('2', '20181101', '\"https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=6&ved=0CFMQFjAF&url=http%3A%2F%2Fblog.fens.me%2Ftag%2Fnodejs%2F&ei=uqg5Ut-FCcni4APzqICADw&usg=AFQjCNGvlKh69v6x_Wqm5Mn12iv6ML0wsg&sig2=X9b_-9FKzna-qPpDyyRnfw\"', 'www.google.com', '13', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('20', '20181101', '\"https://www.google.com.hk/\"', 'www.google.com.hk', '15', 5);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('200', '20181101', '\"http://www.fens.me/js/common.js\"', 'www.fens.me', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('201', '20181101', '\"http://www.fens.me/js/baidu.js\"', 'www.fens.me', '23', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('202', '20181101', '\"http://www.fens.me/js/baidu.js\"', 'www.fens.me', '22', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('203', '20181101', '\"http://www.fens.me/js/baidu.js\"', 'www.fens.me', '16', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('204', '20181101', '\"http://www.fens.me/js/baidu.js\"', 'www.fens.me', '15', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('205', '20181101', '\"http://www.fens.me/js/baidu.js\"', 'www.fens.me', '13', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('206', '20181101', '\"http://www.fens.me/js/baidu.js\"', 'www.fens.me', '12', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('207', '20181101', '\"http://www.fens.me/js/baidu.js\"', 'www.fens.me', '10', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('208', '20181101', '\"http://www.fens.me/js/baidu.js\"', 'www.fens.me', '09', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('209', '20181101', '\"http://www.fens.me/js/baidu.js\"', 'www.fens.me', '08', 8);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('21', '20181101', '\"https://www.google.com.hk/\"', 'www.google.com.hk', '14', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('210', '20181101', '\"http://www.fens.me/js/baidu.js\"', 'www.fens.me', '07', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('211', '20181101', '\"http://www.fens.me/js/baidu.js\"', 'www.fens.me', '04', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('212', '20181101', '\"http://www.fens.me/js/baidu.js\"', 'www.fens.me', '03', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('213', '20181101', '\"http://www.fens.me/index.php/blog/14\"', 'www.fens.me', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('214', '20181101', '\"http://www.fens.me/\"', 'www.fens.me', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('215', '20181101', '\"http://www.fens.me/\"', 'www.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('216', '20181101', '\"http://www.fens.me/\"', 'www.fens.me', '08', 10);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('217', '20181101', '\"http://www.fens.me/\"', 'www.fens.me', '04', 12);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('218', '20181101', '\"http://www.fens.me/\"', 'www.fens.me', '00', 12);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('219', '20181101', '\"http://www.diffbot.com\"', 'www.diffbot.com', '03', 4);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('22', '20181101', '\"https://www.google.com.hk/\"', 'www.google.com.hk', '13', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('220', '20181101', '\"http://www.dataguru.cn/article-3511-1.html\"', 'www.dataguru.cn', '02', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('221', '20181101', '\"http://www.dataguru.cn/article-3475-1.html\"', 'www.dataguru.cn', '15', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('222', '20181101', '\"http://www.dataguru.cn/article-3475-1.html\"', 'www.dataguru.cn', '14', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('223', '20181101', '\"http://www.dataguru.cn/article-3466-1.html\"', 'www.dataguru.cn', '14', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('224', '20181101', '\"http://www.dataguru.cn/article-3466-1.html\"', 'www.dataguru.cn', '12', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('225', '20181101', '\"http://www.dataguru.cn/article-3466-1.html\"', 'www.dataguru.cn', '09', 5);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('226', '20181101', '\"http://www.dataguru.cn/article-3466-1.html\"', 'www.dataguru.cn', '08', 7);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('227', '20181101', '\"http://www.dataguru.cn/article-3429-1.html\"', 'www.dataguru.cn', '07', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('228', '20181101', '\"http://www.dataguru.cn/article-3398-1.html\"', 'www.dataguru.cn', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('229', '20181101', '\"http://www.dataguru.cn/article-3398-1.html\"', 'www.dataguru.cn', '07', 5);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('23', '20181101', '\"https://www.google.com.hk/\"', 'www.google.com.hk', '12', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('230', '20181101', '\"http://www.dataguru.cn/article-3363-1.html\"', 'www.dataguru.cn', '14', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('231', '20181101', '\"http://www.dataguru.cn/article-3363-1.html\"', 'www.dataguru.cn', '13', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('232', '20181101', '\"http://www.dataguru.cn/article-3350-1.html\"', 'www.dataguru.cn', '04', 6);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('233', '20181101', '\"http://www.dataguru.cn/article-3323-1.html\"', 'www.dataguru.cn', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('234', '20181101', '\"http://www.dataguru.cn/article-3315-1.html\"', 'www.dataguru.cn', '15', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('235', '20181101', '\"http://www.dataguru.cn/article-3299-1.html\"', 'www.dataguru.cn', '09', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('236', '20181101', '\"http://www.dataguru.cn/article-3283-1.html\"', 'www.dataguru.cn', '07', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('237', '20181101', '\"http://www.dataguru.cn/article-3242-1.html\"', 'www.dataguru.cn', '07', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('238', '20181101', '\"http://www.dataguru.cn/article-3242-1.html\"', 'www.dataguru.cn', '03', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('239', '20181101', '\"http://www.baidu.com/s?wd=yeoman%20ubuntu\"', 'www.baidu.com', '09', 13);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('24', '20181101', '\"https://www.google.com.hk/\"', 'www.google.com.hk', '11', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('240', '20181101', '\"http://www.baidu.com/s?wd=yeoman\"', 'www.baidu.com', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('241', '20181101', '\"http://www.baidu.com/s?wd=webstorm%20classroom_%B7%DB%CB%BF%C8%D5%D6%BE%20%7C%20%BF%E7%BD%E7%B5%C4IT%B2%A9%BF%CD\"', 'www.baidu.com', '15', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('242', '20181101', '\"http://www.baidu.com/s?wd=rjava%20eclipse%20java\"', 'www.baidu.com', '13', 13);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('243', '20181101', '\"http://www.baidu.com/s?wd=rjava\"', 'www.baidu.com', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('244', '20181101', '\"http://www.baidu.com/s?wd=rhive\"', 'www.baidu.com', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('245', '20181101', '\"http://www.baidu.com/s?wd=replica%20set%202013%20mongo\"', 'www.baidu.com', '10', 13);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('246', '20181101', '\"http://www.baidu.com/s?wd=replica\"', 'www.baidu.com', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('247', '20181101', '\"http://www.baidu.com/s?wd=org.apache.catalina.websocket.websocketservlet\"', 'www.baidu.com', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('248', '20181101', '\"http://www.baidu.com/s?wd=nodejs%20express%203.0\"', 'www.baidu.com', '16', 13);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('249', '20181101', '\"http://www.baidu.com/s?wd=nodejs%20%E7%88%AC%E7%BD%91%E9%A1%B5\"', 'www.baidu.com', '13', 13);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('25', '20181101', '\"https://www.google.com.hk/\"', 'www.google.com.hk', '10', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('250', '20181101', '\"http://www.baidu.com/s?wd=nodejs\"', 'www.baidu.com', '09', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('251', '20181101', '\"http://www.baidu.com/s?wd=node.js%20r\"', 'www.baidu.com', '16', 13);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('252', '20181101', '\"http://www.baidu.com/s?wd=node\"', 'www.baidu.com', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('253', '20181101', '\"http://www.baidu.com/s?wd=mongodb%E4%B8%AD%E6%A8%A1%E7%B3%8A%E6%9F%A5%E8%AF%A2\"', 'www.baidu.com', '06', 13);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('254', '20181101', '\"http://www.baidu.com/s?wd=mongodb%20draining\"', 'www.baidu.com', '08', 13);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('255', '20181101', '\"http://www.baidu.com/s?wd=mongodb%20%E6%9B%B4%E6%94%B9%E4%B8%BB%E5%88%86%E7%89%87&ie=utf-8\"', 'www.baidu.com', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('256', '20181101', '\"http://www.baidu.com/s?wd=mahout%E6%95%B0%E6%8D%AE%E6%8C%96%E6%8E%98&pn=70&tn=baiduhome_pg&ie=utf-8&rsv_page=1\"', 'www.baidu.com', '08', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('257', '20181101', '\"http://www.baidu.com/s?wd=in%20to.dfs(1%3A10)%20%3A%20converting%20to.dfs%20argument%20to%20keyval%20with%20a%20null%20key\"', 'www.baidu.com', '16', 13);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('258', '20181101', '\"http://www.baidu.com/s?wd=cassandra\"', 'www.baidu.com', '09', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('259', '20181101', '\"http://www.baidu.com/s?wd=Ubuntu%20%E4%B8%8A%E5%AE%89%E8%A3%85PPTP%E7%9A%84VPN%E6%9C%8D%E5%8A%A1%20%E7%AB%AF%E5%8F%A3&pn=10&tn=baiduhome_pg&ie=utf-8&rsv_page=1\"', 'www.baidu.com', '03', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('26', '20181101', '\"https://www.google.com.hk/\"', 'www.google.com.hk', '09', 6);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('260', '20181101', '\"http://www.baidu.com/s?wd=Nodejs%D3%EBR%BF%E7%C6%BD%CC%A8%CD%A8%D0%C5%7C%B7%DB%CB%BF%C8%D5%D6%BE\"', 'www.baidu.com', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('261', '20181101', '\"http://www.baidu.com/s?wd=If+you\'re+seeing+this+message%2C+either+a+Gruntfile+wasn\'t+found+or+grunt\"', 'www.baidu.com', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('262', '20181101', '\"http://www.baidu.com/s?wd=%CE%B1%B7%D6%B2%BC%CA%BD%CF%C2zookeeper%B0%B2%D7%B0\"', 'www.baidu.com', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('263', '20181101', '\"http://www.baidu.com/s?tn=baiduhome_pg&ie=utf-8&bs=%E5%9C%A8linux%E5%90%AF%E5%8A%A8%E4%B8%8Bmongodb.conf&f=8&rsv_bp=1&wd=about+to+fork+child+process%2C+waiting+until+server+is+ready+for+connections.&rsv_n=2&rsv_sug3=1&rsv_sug1=1&rsv_sug4=187&inputT=906\"', 'www.baidu.com', '06', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('264', '20181101', '\"http://www.baidu.com/s?ie=utf-8&bs=nodejs+%E5%88%86%E9%A1%B5%E6%9F%A5%E8%AF%A2&f=8&rsv_bp=1&rsv_spt=3&wd=nodejs+mongodb+%E5%88%86%E9%A1%B5%E6%9F%A5%E8%AF%A2&rsv_sug3=6&rsv_sug4=254&rsv_sug1=4&inputT=2704\"', 'www.baidu.com', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('265', '20181101', '\"http://www.baidu.com/s?ie=utf-8&bs=android+Draft_10&f=8&rsv_bp=1&wd=org.java_websocket.drafts.Draft_10&rsv_n=2&rsv_sug3=1&rsv_sug1=1&rsv_sug4=122&inputT=559\"', 'www.baidu.com', '07', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('266', '20181101', '\"http://www.baidu.com/s?bs=webstorm+education&tn=baiduhome_pg&ie=utf-8&f=8&rsv_bp=2&rsv_spt=1&wd=webstorm+classroom\"', 'www.baidu.com', '13', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('267', '20181101', '\"http://www.baidu.com/index.php?tn=monline_5_dg\"', 'www.baidu.com', '11', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('268', '20181101', '\"http://www.baidu.com/\"', 'www.baidu.com', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('269', '20181101', '\"http://www.baidu.com/\"', 'www.baidu.com', '08', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('27', '20181101', '\"https://www.google.com.hk/\"', 'www.google.com.hk', '08', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('270', '20181101', '\"http://www.angularjs.cn/A0fq\"', 'www.angularjs.cn', '13', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('271', '20181101', '\"http://www.angularjs.cn/A0eQ\"', 'www.angularjs.cn', '09', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('272', '20181101', '\"http://www.angularjs.cn/A0eQ\"', 'www.angularjs.cn', '08', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('273', '20181101', '\"http://www.angularjs.cn/A0eQ\"', 'www.angularjs.cn', '04', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('274', '20181101', '\"http://www.angularjs.cn/A0eK\"', 'www.angularjs.cn', '12', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('275', '20181101', '\"http://www.angularjs.cn/A0dE\"', 'www.angularjs.cn', '07', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('276', '20181101', '\"http://www.angularjs.cn/A0dC\"', 'www.angularjs.cn', '15', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('277', '20181101', '\"http://www.angularjs.cn/A0d9\"', 'www.angularjs.cn', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('278', '20181101', '\"http://www.angularjs.cn/A0d9\"', 'www.angularjs.cn', '14', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('279', '20181101', '\"http://www.angularjs.cn/A0d9\"', 'www.angularjs.cn', '13', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('28', '20181101', '\"https://www.google.com.hk/\"', 'www.google.com.hk', '07', 9);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('280', '20181101', '\"http://www.angularjs.cn/A0d9\"', 'www.angularjs.cn', '11', 5);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('281', '20181101', '\"http://www.angularjs.cn/A0d9\"', 'www.angularjs.cn', '10', 5);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('282', '20181101', '\"http://www.angularjs.cn/A0d9\"', 'www.angularjs.cn', '03', 4);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('283', '20181101', '\"http://www.angularjs.cn/A0d3\"', 'www.angularjs.cn', '07', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('284', '20181101', '\"http://www.angularjs.cn/A0d2\"', 'www.angularjs.cn', '20', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('285', '20181101', '\"http://www.angularjs.cn/A0d2\"', 'www.angularjs.cn', '11', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('286', '20181101', '\"http://www.angularjs.cn/A0d2\"', 'www.angularjs.cn', '04', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('287', '20181101', '\"http://www.angularjs.cn/A0d2\"', 'www.angularjs.cn', '03', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('288', '20181101', '\"http://www.angularjs.cn/A0cu\"', 'www.angularjs.cn', '01', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('289', '20181101', '\"http://www.angularjs.cn/A0ca\"', 'www.angularjs.cn', '11', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('29', '20181101', '\"https://www.google.com.hk/\"', 'www.google.com.hk', '05', 5);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('290', '20181101', '\"http://www.angularjs.cn/A0cV\"', 'www.angularjs.cn', '03', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('291', '20181101', '\"http://www.angularjs.cn/A0cF\"', 'www.angularjs.cn', '07', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('292', '20181101', '\"http://www.angularjs.cn/A0bz\"', 'www.angularjs.cn', '13', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('293', '20181101', '\"http://www.angularjs.cn/A0bE\"', 'www.angularjs.cn', '07', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('294', '20181101', '\"http://www.angularjs.cn/A08q\"', 'www.angularjs.cn', '08', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('295', '20181101', '\"http://www.angularjs.cn/A08q\"', 'www.angularjs.cn', '07', 9);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('296', '20181101', '\"http://www.angularjs.cn/A06h\"', 'www.angularjs.cn', '17', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('297', '20181101', '\"http://www.angularjs.cn/A06h\"', 'www.angularjs.cn', '07', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('298', '20181101', '\"http://www.angularjs.cn/A00z\"', 'www.angularjs.cn', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('299', '20181101', '\"http://www.angularjs.cn/A00z\"', 'www.angularjs.cn', '07', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('3', '20181101', '\"https://www.google.com/\"', 'www.google.com', '23', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('30', '20181101', '\"https://www.google.com.hk/\"', 'www.google.com.hk', '04', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('300', '20181101', '\"http://www.angularjs.cn/A00q\"', 'www.angularjs.cn', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('301', '20181101', '\"http://www.angularjs.cn/A00q\"', 'www.angularjs.cn', '14', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('302', '20181101', '\"http://www.angularjs.cn/A00q\"', 'www.angularjs.cn', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('303', '20181101', '\"http://www.angularjs.cn/A00n\"', 'www.angularjs.cn', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('304', '20181101', '\"http://www.angularjs.cn/A00n\"', 'www.angularjs.cn', '09', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('305', '20181101', '\"http://www.angularjs.cn/A00n\"', 'www.angularjs.cn', '06', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('306', '20181101', '\"http://www.angularjs.cn/A00n\"', 'www.angularjs.cn', '05', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('307', '20181101', '\"http://www.angularjs.cn/A00n\"', 'www.angularjs.cn', '04', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('308', '20181101', '\"http://www.angularjs.cn/A00n\"', 'www.angularjs.cn', '01', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('309', '20181101', '\"http://www.angularjs.cn/A00f\"', 'www.angularjs.cn', '14', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('31', '20181101', '\"https://www.google.com.hk/\"', 'www.google.com.hk', '02', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('310', '20181101', '\"http://www.angularjs.cn/A00f\"', 'www.angularjs.cn', '04', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('311', '20181101', '\"http://www.angularjs.cn/\"', 'www.angularjs.cn', '15', 4);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('312', '20181101', '\"http://www.angularjs.cn/\"', 'www.angularjs.cn', '14', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('313', '20181101', '\"http://www.angularjs.cn/\"', 'www.angularjs.cn', '07', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('314', '20181101', '\"http://www.angularjs.cn/\"', 'www.angularjs.cn', '06', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('315', '20181101', '\"http://www.angularjs.cn/\"', 'www.angularjs.cn', '03', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('316', '20181101', '\"http://www.100rmb.info/site/wiki/9\"', 'www.100rmb.info', '04', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('317', '20181101', '\"http://www.100rmb.info/site/wiki/7\"', 'www.100rmb.info', '04', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('318', '20181101', '\"http://www.100rmb.info/site/wiki/6\"', 'www.100rmb.info', '04', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('319', '20181101', '\"http://www.100rmb.info/site/wiki/5\"', 'www.100rmb.info', '04', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('32', '20181101', '\"https://www.google.com.hk/\"', 'www.google.com.hk', '01', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('320', '20181101', '\"http://www.100rmb.info/site/wiki/4\"', 'www.100rmb.info', '04', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('321', '20181101', '\"http://www.100rmb.info/site/wiki/2\"', 'www.100rmb.info', '04', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('322', '20181101', '\"http://www.100rmb.info/site/photo\"', 'www.100rmb.info', '04', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('323', '20181101', '\"http://www.100rmb.info/site/drink\"', 'www.100rmb.info', '04', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('324', '20181101', '\"http://www.100rmb.info/site/drink\"', 'www.100rmb.info', '03', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('325', '20181101', '\"http://www.100rmb.info/site/consult\"', 'www.100rmb.info', '04', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('326', '20181101', '\"http://www.100rmb.info/register.php\"', 'www.100rmb.info', '04', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('327', '20181101', '\"http://www.100rmb.info/member/\"', 'www.100rmb.info', '04', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('328', '20181101', '\"http://www.100rmb.info/index.php?page=en_Signup\"', 'www.100rmb.info', '04', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('329', '20181101', '\"http://www.100rmb.info/index.php?option=com_registration&task=register\"', 'www.100rmb.info', '04', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('33', '20181101', '\"https://www.google.com.hk/\"', 'www.google.com.hk', '00', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('330', '20181101', '\"http://www.100rmb.info/index.php?action=registernew\"', 'www.100rmb.info', '04', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('331', '20181101', '\"http://www.100rmb.info/\"', 'www.100rmb.info', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('332', '20181101', '\"http://www.100rmb.info/\"', 'www.100rmb.info', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('333', '20181101', '\"http://www.100rmb.info/\"', 'www.100rmb.info', '04', 45);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('334', '20181101', '\"http://woman.seopower.su/\"', 'woman.seopower.su', '12', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('335', '20181101', '\"http://whois.domaintools.com/52u.me\"', 'whois.domaintools.com', '23', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('336', '20181101', '\"http://whois.domaintools.com/100rmb.info\"', 'whois.domaintools.com', '21', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('337', '20181101', '\"http://weibo.com/yihuixie?wvr=5&lf=reg\"', 'weibo.com', '01', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('338', '20181101', '\"http://weibo.com/u/2120205037?wvr=5&wvr=5&lf=reg\"', 'weibo.com', '23', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('339', '20181101', '\"http://weibo.com/mygroups?gid=3407469978336669&wvr=5&leftnav=1\"', 'weibo.com', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('34', '20181101', '\"https://www.google.com.au/\"', 'www.google.com.au', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('340', '20181101', '\"http://weibo.com/asuka4j?wvr=5&page=2&pre_page=1&end_id=3611662882225275&end_msign=-1\"', 'weibo.com', '11', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('341', '20181101', '\"http://weibo.com/1765295490/profile?topnav=1&wvr=4\"', 'weibo.com', '18', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('342', '20181101', '\"http://weibo.com/1765295490/profile?topnav=1&wvr=4\"', 'weibo.com', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('343', '20181101', '\"http://tongji.baidu.com/web/2890512/overview/sole?siteId=1657360\"', 'tongji.baidu.com', '10', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('344', '20181101', '\"http://redir.yy.duowan.com/redir.php?url=http%3A%2F%2Fblog.fens.me%2Ffinance-rhive-repurchase%2F\"', 'redir.yy.duowan.com', '09', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('345', '20181101', '\"http://r.mail.qq.com/cgi-bin/reader_main?sid=IxfKYqT4TxkjMhJA&t=r_index&source=folderlist\"', 'r.mail.qq.com', '02', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('346', '20181101', '\"http://r.dataguru.cn/article-3429-1.html\"', 'r.dataguru.cn', '09', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('347', '20181101', '\"http://r.dataguru.cn/article-3251-1.html\"', 'r.dataguru.cn', '09', 6);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('348', '20181101', '\"http://r.dataguru.cn/article-3251-1.html\"', 'r.dataguru.cn', '07', 6);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('349', '20181101', '\"http://news.google.com/\"', 'news.google.com', '03', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('35', '20181101', '\"https://www.google.ca/\"', 'www.google.ca', '20', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('350', '20181101', '\"http://mp.weixin.qq.com/mp/appmsg/show?__biz=MjM5MzgyNDk3MQ==&appmsgid=10000407&itemidx=3&sign=b51009e1cc89a9fb1cf1fb1694f336f9&uin=MjE4OTY4MTcyMg%3D%3D&key=6a68cf733852b46ce8a01c05f13015f3d4f84214d1ebec194f346b62afccc3bae3741c3345fd500e26a59ecfa8bb40fc&devicetype=android-16&version=25000104&lang=zh_CN\"', 'mp.weixin.qq.com', '14', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('351', '20181101', '\"http://mp.weixin.qq.com/mp/appmsg/show?__biz=MjM5MTQzNzU2NA==&appmsgid=10000326&itemidx=3&sign=05c98678c82a701bdf3adb3486974c35&uin=NDY1NDE1NjM1&key=6a68cf733852b46cc867836c76779756287a4cb24824f6ec97df09db3ebc633821e131709b7aa5c758e035e8d21b9689&devicetype=android-15&version=25000105&lang=zh_CN\"', 'mp.weixin.qq.com', '01', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('352', '20181101', '\"http://mp.weixin.qq.com/mp/appmsg/show?__biz=MjM5MTQzNzU2NA==&appmsgid=10000326&itemidx=3&sign=05c98678c82a701bdf3adb3486974c35&uin=MjU5NTQxMTIyMg%3D%3D&key=6a68cf733852b46c08a52a856dceedc36223013d2402c025e36aa584b9dec9cc8fc2eeef088b3dc6d32dd4074d2bd1bb&devicetype=android-15&version=25000202&lang=zh_CN\"', 'mp.weixin.qq.com', '18', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('353', '20181101', '\"http://mp.weixin.qq.com/mp/appmsg/show?__biz=MjM5MTQzNzU2NA==&appmsgid=10000326&itemidx=3&sign=05c98678c82a701bdf3adb3486974c35&uin=MTMxMjg4MjA0MA%3D%3D&key=6a68cf733852b46c46f260488039558f79a0274c4666516126e37693d2ef2991c8fa83b47caa6e80ea5b49efafd6eec9&devicetype=android-16&version=25000104&lang=zh_CN\"', 'mp.weixin.qq.com', '22', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('354', '20181101', '\"http://mp.weixin.qq.com/mp/appmsg/show?__biz=MjM5MTQzNzU2NA==&appmsgid=10000326&itemidx=3&sign=05c98678c82a701bdf3adb3486974c35&uin=MTAxNjk2OTE1&key=ea62f072cf6447d8ddd10c5faca79bb58c85e18faa02acf3cb8f2e04546b78025506c9a2d491049102192eb7acbc15b3562cc741a6b44411380b8fd6daa5b2e709dc9ca324a6d744225ed96ce5c8de67eea4c6b6bf122a9374ea66602bf4f26ff63791a4a839a014dc18034923ae67176039c5e3f1638f6baa526ef037efe983&devicetype=iPhone+OS7.0&version=15000100&lang=zh_CN\"', 'mp.weixin.qq.com', '13', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('355', '20181101', '\"http://mp.weixin.qq.com/mp/appmsg/show?__biz=MjM5MTQzNzU2NA==&appmsgid=10000326&itemidx=3&sign=05c98678c82a701bdf3adb3486974c35\"', 'mp.weixin.qq.com', '13', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('356', '20181101', '\"http://mp.weixin.qq.com/mp/appmsg/show?__biz=MjM5MTQzNzU2NA==&appmsgid=10000326&itemidx=3&sign=05c98678c82a701bdf3adb3486974c35\"', 'mp.weixin.qq.com', '12', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('357', '20181101', '\"http://mp.weixin.qq.com/mp/appmsg/show?__biz=MjM5MTQzNzU2NA%3D%3D&appmsgid=10000326&itemidx=3&sign=05c98678c82a701bdf3adb3486974c35&scene=3\"', 'mp.weixin.qq.com', '11', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('358', '20181101', '\"http://mp.weixin.qq.com/mp/appmsg/show?__biz=MjM5MTQzNzU2NA%3D%3D&appmsgid=10000326&itemidx=3&sign=05c98678c82a701bdf3adb3486974c35&scene=2&from=timeline&isappinstalled=0&uin=MjI3MjQwMjEyMg%3D%3D&key=6a68cf733852b46cd23ab292da1d952e17e266ff774b8f942cab761641df09d16665fa15a47e954b7899f3523376dc30&devicetype=android-16&version=24050125&lang=zh_CN\"', 'mp.weixin.qq.com', '14', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('359', '20181101', '\"http://mp.weixin.qq.com/mp/appmsg/show?__biz=MjM5MTQzNzU2NA%3D%3D&appmsgid=10000326&itemidx=3&sign=05c98678c82a701bdf3adb3486974c35&scene=2&from=timeline&isappinstalled=0&uin=MTE1MzkwNTgyMA%3D%3D&key=6a68cf733852b46c1e2e080fa87dee255159b88dee7b5893e0f87bc19448d945a3ba664eccf450927a57ca6a6b91ac15&devicetype=android-16&version=25000105&lang=zh_CN\"', 'mp.weixin.qq.com', '14', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('36', '20181101', '\"https://r.mail.qq.com/cgi-bin/reader_main?sid=XlesFVaz-IixBhZE&t=r_index&source=folderlist\"', 'r.mail.qq.com', '18', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('360', '20181101', '\"http://mp.weixin.qq.com/mp/appmsg/show?__biz=MjM5MTQzNzU2NA%3D%3D&appmsgid=10000326&itemidx=3&sign=05c98678c82a701bdf3adb3486974c35&scene=1&uin=MjM4Nzk5ODA4MA%3D%3D&key=ea62f072cf6447d802d10f47463152a645f8a1f9bc4c4757faedf7c605aab5b2ba82e4460ab64b8b43e290e692bcacb229de5565af7c501446da88f7562b9bc15ef660abbc5cfedb74e23159533ff438bce488ad46e6030b9a33d59b2e855324f133ef942afc7923bfb93fc8612b2bf5ba8110e73399321c3843db3b179929ca&devicetype=iPhone+OS6.1.3&version=15000100&lang=zh_CN\"', 'mp.weixin.qq.com', '15', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('361', '20181101', '\"http://mp.weixin.qq.com/mp/appmsg/show?__biz=MjM5MTQzNzU2NA%3D%3D&appmsgid=10000326&itemidx=3&sign=05c98678c82a701bdf3adb3486974c35&scene=1&uin=MTU1MjEzNzIyMA%3D%3D&key=ea62f072cf6447d8e7e034307e86b7dbfee8166a5c3b60f642b3026031b112a93d33d64a456a333e469b6097256d6e4d3bcea7cefe4f43f817d89e5c150036a90b6939929a998b99827cf32905735181f926cc96e3820b0a717668e52e0a927293f0bd2a2eace1238bcd6169fc0f812500a9db3f8844100f4a8a7347ef9f9d98&devicetype=iPhone+OS6.0.1&version=15000100&lang=zh_CN\"', 'mp.weixin.qq.com', '03', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('362', '20181101', '\"http://mo.wanzn.cn/A0d9\"', 'mo.wanzn.cn', '18', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('363', '20181101', '\"http://michaelhsu.tw/2013/06/21/rhadoop-%E5%AF%A6%E4%BD%9C%E6%8E%A8%E8%96%A6%E7%B3%BB%E7%B5%B1/\"', 'michaelhsu.tw', '03', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('364', '20181101', '\"http://leonarding.com/attachments/2013/03/26686207_201303140719411.thumb.jpg\"', 'leonarding.com', '03', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('365', '20181101', '\"http://it.dataguru.cn/article-3493-1.html\"', 'it.dataguru.cn', '02', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('366', '20181101', '\"http://it.dataguru.cn/article-3466-1.html\"', 'it.dataguru.cn', '07', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('367', '20181101', '\"http://it.dataguru.cn/article-3323-1.html\"', 'it.dataguru.cn', '05', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('368', '20181101', '\"http://it.dataguru.cn/article-3315-1.html\"', 'it.dataguru.cn', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('369', '20181101', '\"http://image.baidu.com/i?ct=503316480&z=&tn=baiduimagedetail&ipn=d&word=%E6%B5%99%E6%B1%9F%E5%AE%89%E5%90%89&step_word=&ie=utf-8&in=17038&cl=2&lm=-1&st=&pn=0&rn=1&di=47839122900&ln=1998&fr=&&fmq=1379521091792_R&ic=&s=&se=&sme=0&tab=&width=&height=&face=&is=&istype=&ist=&jit=&objurl=http%3A%2F%2Fnews.eastday.com%2Feastday%2F06news%2Fchina%2Fzh2green%2Fanji%2Fnode327399%2Fimages%2F01517676.jpg\"', 'image.baidu.com', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('37', '20181101', '\"http://www.weibo.com/u/1219151651?wvr=5&\"', 'www.weibo.com', '07', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('370', '20181101', '\"http://image.baidu.com/i?ct=503316480&z=&tn=baiduimagedetail&ipn=d&word=%E6%9C%8D%E8%A3%85vi%E5%89%8D%E8%A8%80&step_word=&ie=utf-8&in=17758&cl=2&lm=-1&st=-1&pn=0&rn=1&di=210307182100&ln=1956&fr=&&fmq=1379489845312_R&ic=0&s=&se=&sme=0&tab=&width=&height=&face=&is=&istype=2&ist=&jit=&objurl=http%3A%2F%2Fpic23.nipic.com%2F20120813%2F1957166_145523046361_2.jpg\"', 'image.baidu.com', '07', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('371', '20181101', '\"http://h2w.iask.cn/jump.php?url=http%3A%2F%2Fwww.fens.me\"', 'h2w.iask.cn', '00', 5);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('372', '20181101', '\"http://h2w.iask.cn/jump.php?url=http%3A%2F%2Fblog.fens.me%2Fr-json-rjson%2F\"', 'h2w.iask.cn', '21', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('373', '20181101', '\"http://h2w.iask.cn/jump.php?url=http%3A%2F%2Fblog.fens.me%2Fr-json-rjson%2F\"', 'h2w.iask.cn', '01', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('374', '20181101', '\"http://h2w.iask.cn/jump.php?url=http%3A%2F%2Fblog.fens.me%2Fhadoop-mahout-roadmap%2F\"', 'h2w.iask.cn', '00', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('375', '20181101', '\"http://freemined.com/\"', 'freemined.com', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('376', '20181101', '\"http://freemined.com/\"', 'freemined.com', '02', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('377', '20181101', '\"http://fens.me/site/about\"', 'fens.me', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('378', '20181101', '\"http://fens.me/js/jquery-ui-1.8.20.custom.min.js\"', 'fens.me', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('379', '20181101', '\"http://fens.me/js/jquery-1.7.2.min.js\"', 'fens.me', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('38', '20181101', '\"http://www.w3c.com.cn/angularjs%E6%9C%80%E7%90%86%E6%83%B3%E5%BC%80%E5%8F%91%E5%B7%A5%E5%85%B7webstorm\"', 'www.w3c.com.cn', '15', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('380', '20181101', '\"http://fens.me/js/google.js\"', 'fens.me', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('381', '20181101', '\"http://fens.me/js/common.js\"', 'fens.me', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('382', '20181101', '\"http://fens.me/js/baidu.js\"', 'fens.me', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('383', '20181101', '\"http://fens.me/\"', 'fens.me', '18', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('384', '20181101', '\"http://fens.me/\"', 'fens.me', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('385', '20181101', '\"http://fens.me/\"', 'fens.me', '11', 12);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('386', '20181101', '\"http://f.dataguru.cn/thread-180354-1-1.html\"', 'f.dataguru.cn', '15', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('387', '20181101', '\"http://f.dataguru.cn/thread-180354-1-1.html\"', 'f.dataguru.cn', '14', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('388', '20181101', '\"http://f.dataguru.cn/thread-180354-1-1.html\"', 'f.dataguru.cn', '07', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('389', '20181101', '\"http://f.dataguru.cn/thread-180089-1-1.html\"', 'f.dataguru.cn', '23', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('39', '20181101', '\"http://www.w3c.com.cn/%E5%8D%9A%E5%AE%A2%E6%96%87%E7%AB%A0%EF%BC%9Amongoose%E4%BD%BF%E7%94%A8%E6%A1%88%E4%BE%8B-%E8%AE%A9json%E6%95%B0%E6%8D%AE%E7%9B%B4%E6%8E%A5%E5%85%A5%E5%BA%93mongodb\"', 'www.w3c.com.cn', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('390', '20181101', '\"http://f.dataguru.cn/thread-180089-1-1.html\"', 'f.dataguru.cn', '15', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('391', '20181101', '\"http://f.dataguru.cn/thread-180089-1-1.html\"', 'f.dataguru.cn', '14', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('392', '20181101', '\"http://f.dataguru.cn/thread-180089-1-1.html\"', 'f.dataguru.cn', '13', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('393', '20181101', '\"http://f.dataguru.cn/thread-177375-1-1.html\"', 'f.dataguru.cn', '12', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('394', '20181101', '\"http://f.dataguru.cn/thread-177375-1-1.html\"', 'f.dataguru.cn', '08', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('395', '20181101', '\"http://f.dataguru.cn/thread-177375-1-1.html\"', 'f.dataguru.cn', '07', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('396', '20181101', '\"http://f.dataguru.cn/thread-175501-1-1.html\"', 'f.dataguru.cn', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('397', '20181101', '\"http://f.dataguru.cn/thread-175501-1-1.html\"', 'f.dataguru.cn', '03', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('398', '20181101', '\"http://f.dataguru.cn/thread-11853-1-1.html\"', 'f.dataguru.cn', '08', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('399', '20181101', '\"http://f.dataguru.cn/space-username-bsspirit.html\"', 'f.dataguru.cn', '08', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('4', '20181101', '\"https://www.google.com/\"', 'www.google.com', '14', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('40', '20181101', '\"http://www.ruanyifeng.com/blog/2011/10/javascript_loading.html\"', 'www.ruanyifeng.com', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('400', '20181101', '\"http://f.dataguru.cn/space-uid-965.html\"', 'f.dataguru.cn', '15', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('401', '20181101', '\"http://f.dataguru.cn/forum.php?mod=viewthread&tid=85739\"', 'f.dataguru.cn', '12', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('402', '20181101', '\"http://f.dataguru.cn/forum.php?mod=viewthread&tid=180089&page=2\"', 'f.dataguru.cn', '14', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('403', '20181101', '\"http://f.dataguru.cn/forum.php?mod=viewthread&tid=177518&fromuid=6\"', 'f.dataguru.cn', '08', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('404', '20181101', '\"http://f.dataguru.cn/forum.php?mod=viewthread&tid=175501\"', 'f.dataguru.cn', '13', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('405', '20181101', '\"http://download.freemined.com/\"', 'download.freemined.com', '15', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('406', '20181101', '\"http://disqus.com/embed/comments/?f=bsspirit&t_i=1974%20http%3A%2F%2Fblog.fens.me%2F%3Fp%3D1974&t_u=http%3A%2F%2Fblog.fens.me%2Fnodejs-async-windjs%2F&t_e=wind.js%E5%8A%A9%E5%8A%9B%E5%BC%82%E6%AD%A5%E7%BC%96%E7%A8%8B&t_d=wind.js%E5%8A%A9%E5%8A%9B%E5%BC%82%E6%AD%A5%E7%BC%96%E7%A8%8B%20%7C%20%E7%B2%89%E4%B8%9D%E6%97%A5%E5%BF%97&t_t=wind.js%E5%8A%A9%E5%8A%9B%E5%BC%82%E6%AD%A5%E7%BC%96%E7%A8%8B&s_o=popular&l=&disqus_version=1379551450\"', 'disqus.com', '05', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('407', '20181101', '\"http://disqus.com/embed/comments/?f=bsspirit&t_i=1269%20http%3A%2F%2Fblog.fens.me%2F%3Fpage_id%3D1269&t_u=http%3A%2F%2Fblog.fens.me%2Fseries-it-finance%2F&t_e=%E7%94%A8IT%E6%8A%80%E6%9C%AF%E7%8E%A9%E9%87%91%E8%9E%8D%E7%B3%BB%E5%88%97%E6%96%87%E7%AB%A0&t_d=%E7%94%A8IT%E6%8A%80%E6%9C%AF%E7%8E%A9%E9%87%91%E8%9E%8D%E7%B3%BB%E5%88%97%E6%96%87%E7%AB%A0%20%7C%20%E7%B2%89%E4%B8%9D%E6%97%A5%E5%BF%97&t_t=%E7%94%A8IT%E6%8A%80%E6%9C%AF%E7%8E%A9%E9%87%91%E8%9E%8D%E7%B3%BB%E5%88%97%E6%96%87%E7%AB%A0&s_o=default&l=&disqus_version=1379450406\"', 'disqus.com', '14', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('408', '20181101', '\"http://cos.name/tag/rhadoop/\"', 'cos.name', '14', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('409', '20181101', '\"http://cos.name/tag/rhadoop/\"', 'cos.name', '05', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('41', '20181101', '\"http://www.linkedin.com/?trk=nav_logo\"', 'www.linkedin.com', '14', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('410', '20181101', '\"http://cos.name/tag/rhadoop/\"', 'cos.name', '04', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('411', '20181101', '\"http://cos.name/tag/rhadoop/\"', 'cos.name', '03', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('412', '20181101', '\"http://cos.name/tag/hadoop/\"', 'cos.name', '23', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('413', '20181101', '\"http://cos.name/tag/hadoop/\"', 'cos.name', '12', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('414', '20181101', '\"http://cos.name/tag/hadoop/\"', 'cos.name', '11', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('415', '20181101', '\"http://cos.name/tag/hadoop/\"', 'cos.name', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('416', '20181101', '\"http://cos.name/page/6/?ZUHfUJZlRR=CvSs7O3N6B&skinco=wind%2F\"', 'cos.name', '07', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('417', '20181101', '\"http://cos.name/category/website/\"', 'cos.name', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('418', '20181101', '\"http://cos.name/category/website/\"', 'cos.name', '08', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('419', '20181101', '\"http://cos.name/category/software/packages/\"', 'cos.name', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('42', '20181101', '\"http://www.leonarding.com/batch.manage.php?itemid=768322\"', 'www.leonarding.com', '20', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('420', '20181101', '\"http://cos.name/category/software/packages/\"', 'cos.name', '13', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('421', '20181101', '\"http://cos.name/category/software/packages/\"', 'cos.name', '11', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('422', '20181101', '\"http://cos.name/category/software/packages/\"', 'cos.name', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('423', '20181101', '\"http://cos.name/category/software/packages/\"', 'cos.name', '08', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('424', '20181101', '\"http://cos.name/category/software/packages/\"', 'cos.name', '07', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('425', '20181101', '\"http://cos.name/category/software/packages/\"', 'cos.name', '06', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('426', '20181101', '\"http://cos.name/category/software/packages/\"', 'cos.name', '04', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('427', '20181101', '\"http://cos.name/category/software/packages/\"', 'cos.name', '03', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('428', '20181101', '\"http://cos.name/category/software/\"', 'cos.name', '08', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('429', '20181101', '\"http://cos.name/author/dengyishuo/\"', 'cos.name', '13', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('43', '20181101', '\"http://www.leonarding.com/batch.manage.php?itemid=767749\"', 'www.leonarding.com', '20', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('430', '20181101', '\"http://cos.name/2013/08/r-rjava-java/#more-8180\"', 'cos.name', '08', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('431', '20181101', '\"http://cos.name/2013/08/r-rjava-java/\"', 'cos.name', '05', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('432', '20181101', '\"http://cos.name/2013/07/r-nosql-cassandra/\"', 'cos.name', '06', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('433', '20181101', '\"http://cos.name/2013/07/beijing-cos-salon-june-2013/\"', 'cos.name', '23', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('434', '20181101', '\"http://cos.name/2013/07/beijing-cos-salon-june-2013/\"', 'cos.name', '21', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('435', '20181101', '\"http://cos.name/2013/07/beijing-cos-salon-june-2013/\"', 'cos.name', '13', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('436', '20181101', '\"http://cos.name/\"', 'cos.name', '17', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('437', '20181101', '\"http://cos.name/\"', 'cos.name', '16', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('438', '20181101', '\"http://cos.name/\"', 'cos.name', '15', 8);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('439', '20181101', '\"http://cos.name/\"', 'cos.name', '14', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('44', '20181101', '\"http://www.leonarding.com/batch.manage.php?itemid=766639\"', 'www.leonarding.com', '20', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('440', '20181101', '\"http://cos.name/\"', 'cos.name', '13', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('441', '20181101', '\"http://cos.name/\"', 'cos.name', '08', 8);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('442', '20181101', '\"http://cos.name/\"', 'cos.name', '07', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('443', '20181101', '\"http://cos.name/\"', 'cos.name', '03', 6);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('444', '20181101', '\"http://cos.name/\"', 'cos.name', '02', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('445', '20181101', '\"http://cos.name/\"', 'cos.name', '01', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('446', '20181101', '\"http://comp.freemined.com/quiz?category=3\"', 'comp.freemined.com', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('447', '20181101', '\"http://comp.freemined.com/quiz?category=1\"', 'comp.freemined.com', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('448', '20181101', '\"http://comp.freemined.com/quiz\"', 'comp.freemined.com', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('449', '20181101', '\"http://comp.freemined.com/index.php/quiz/index?category=3\"', 'comp.freemined.com', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('45', '20181101', '\"http://www.leonarding.com/batch.manage.php?itemid=765782\"', 'www.leonarding.com', '20', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('450', '20181101', '\"http://comp.freemined.com/index.php/quiz/index?VQuiz_sort=owner_name.desc&category=2\"', 'comp.freemined.com', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('451', '20181101', '\"http://comp.freemined.com/index.php/quiz/index?VQuiz_sort=owner_name.desc&category=1\"', 'comp.freemined.com', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('452', '20181101', '\"http://comp.freemined.com/index.php/quiz/2\"', 'comp.freemined.com', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('453', '20181101', '\"http://comp.freemined.com/index.php/quiz/1\"', 'comp.freemined.com', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('454', '20181101', '\"http://comp.freemined.com/?category=3\"', 'comp.freemined.com', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('455', '20181101', '\"http://comp.freemined.com/?category=2\"', 'comp.freemined.com', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('456', '20181101', '\"http://comp.freemined.com/\"', 'comp.freemined.com', '20', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('457', '20181101', '\"http://comp.freemined.com/\"', 'comp.freemined.com', '15', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('458', '20181101', '\"http://comp.freemined.com\"', 'comp.freemined.com', '20', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('459', '20181101', '\"http://cnodejs.org:8080/topic/521a30d4bee8d3cb1272ac0f\"', 'cnodejs.org', '01', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('46', '20181101', '\"http://www.leonarding.com/batch.manage.php?itemid=764891\"', 'www.leonarding.com', '20', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('460', '20181101', '\"http://cnodejs.org/topic/52302489101e574521b4dbba\"', 'cnodejs.org', '08', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('461', '20181101', '\"http://cnodejs.org/topic/522b64c3101e574521332451\"', 'cnodejs.org', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('462', '20181101', '\"http://cnodejs.org/topic/522b64c3101e574521332451\"', 'cnodejs.org', '12', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('463', '20181101', '\"http://cnodejs.org/topic/522b64c3101e574521332451\"', 'cnodejs.org', '11', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('464', '20181101', '\"http://cnodejs.org/topic/522b64c3101e574521332451\"', 'cnodejs.org', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('465', '20181101', '\"http://cnodejs.org/topic/522b64c3101e574521332451\"', 'cnodejs.org', '04', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('466', '20181101', '\"http://cnodejs.org/topic/522b64c3101e574521332451\"', 'cnodejs.org', '02', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('467', '20181101', '\"http://cnodejs.org/topic/521efe0abee8d3cb12005e19\"', 'cnodejs.org', '14', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('468', '20181101', '\"http://cnodejs.org/topic/521d9e93bee8d3cb12d3ed5e\"', 'cnodejs.org', '18', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('469', '20181101', '\"http://cnodejs.org/topic/521c2cd6bee8d3cb12a82ea0\"', 'cnodejs.org', '08', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('47', '20181101', '\"http://www.leonarding.com/batch.manage.php?itemid=764596\"', 'www.leonarding.com', '20', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('470', '20181101', '\"http://cnodejs.org/topic/521c2cd6bee8d3cb12a82ea0\"', 'cnodejs.org', '07', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('471', '20181101', '\"http://cnodejs.org/topic/521a30d4bee8d3cb1272ac0f\"', 'cnodejs.org', '15', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('472', '20181101', '\"http://cnodejs.org/topic/521a30d4bee8d3cb1272ac0f\"', 'cnodejs.org', '08', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('473', '20181101', '\"http://cnodejs.org/topic/5215dd9ebee8d3cb1203d805\"', 'cnodejs.org', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('474', '20181101', '\"http://cnodejs.org/topic/5215dd9ebee8d3cb1203d805\"', 'cnodejs.org', '09', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('475', '20181101', '\"http://cnodejs.org/topic/5215dd9ebee8d3cb1203d805\"', 'cnodejs.org', '08', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('476', '20181101', '\"http://cnodejs.org/topic/52148d370a746c580b7120c8\"', 'cnodejs.org', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('477', '20181101', '\"http://cnodejs.org/topic/5210b7a80a746c580b11e496\"', 'cnodejs.org', '19', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('478', '20181101', '\"http://cnodejs.org/topic/520f796999f5db772c27098a\"', 'cnodejs.org', '14', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('479', '20181101', '\"http://cnodejs.org/topic/520f796999f5db772c27098a\"', 'cnodejs.org', '13', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('48', '20181101', '\"http://www.leonarding.com/batch.manage.php?itemid=764085\"', 'www.leonarding.com', '20', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('480', '20181101', '\"http://cnodejs.org/topic/51d4df1dd44cbfa3046904cf\"', 'cnodejs.org', '11', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('481', '20181101', '\"http://cnodejs.org/topic/51d123c073c638f370a93877\"', 'cnodejs.org', '07', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('482', '20181101', '\"http://cnodejs.org/topic/51cc3fa973c638f37041e10c\"', 'cnodejs.org', '08', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('483', '20181101', '\"http://cnodejs.org/topic/51c2b34773c638f3703d3482\"', 'cnodejs.org', '00', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('484', '20181101', '\"http://cnodejs.org/topic/51c192cc73c638f37002ae5d\"', 'cnodejs.org', '07', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('485', '20181101', '\"http://cnodejs.org/topic/51934c9263e9f8a542dddf78\"', 'cnodejs.org', '08', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('486', '20181101', '\"http://cnodejs.org/topic/5191d30e63e9f8a542bc2758\"', 'cnodejs.org', '08', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('487', '20181101', '\"http://cnodejs.org/topic/51834dca6d38277306334b0a\"', 'cnodejs.org', '12', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('488', '20181101', '\"http://cnodejs.org/topic/51834dca6d38277306334b0a\"', 'cnodejs.org', '11', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('489', '20181101', '\"http://cnodejs.org/topic/5017e156f767cc9a517869b1\"', 'cnodejs.org', '08', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('49', '20181101', '\"http://www.leonarding.com/batch.manage.php?itemid=764081\"', 'www.leonarding.com', '20', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('490', '20181101', '\"http://cn.bing.com/search?q=nodejs+underscore&go=&qs=AS&form=QBLH&pq=nodejs+under&sc=2-12&sp=1&sk=\"', 'cn.bing.com', '08', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('491', '20181101', '\"http://cloud.feedly.com/\"', 'cloud.feedly.com', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('492', '20181101', '\"http://blog.fens.me/zookeeper-queue/\"', 'blog.fens.me', '12', 23);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('493', '20181101', '\"http://blog.fens.me/zookeeper-queue/\"', 'blog.fens.me', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('494', '20181101', '\"http://blog.fens.me/zookeeper-queue/\"', 'blog.fens.me', '04', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('495', '20181101', '\"http://blog.fens.me/zookeeper-queue-fifo/\"', 'blog.fens.me', '03', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('496', '20181101', '\"http://blog.fens.me/wp-includes/js/jquery/jquery.js?ver=1.10.2\"', 'blog.fens.me', '23', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('497', '20181101', '\"http://blog.fens.me/wp-includes/js/jquery/jquery.js?ver=1.10.2\"', 'blog.fens.me', '22', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('498', '20181101', '\"http://blog.fens.me/wp-includes/js/jquery/jquery.js?ver=1.10.2\"', 'blog.fens.me', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('499', '20181101', '\"http://blog.fens.me/wp-includes/js/jquery/jquery.js?ver=1.10.2\"', 'blog.fens.me', '15', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('5', '20181101', '\"https://www.google.com/\"', 'www.google.com', '09', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('50', '20181101', '\"http://www.leonarding.com/batch.manage.php?itemid=762584\"', 'www.leonarding.com', '20', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('500', '20181101', '\"http://blog.fens.me/wp-includes/js/jquery/jquery.js?ver=1.10.2\"', 'blog.fens.me', '13', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('501', '20181101', '\"http://blog.fens.me/wp-includes/js/jquery/jquery.js?ver=1.10.2\"', 'blog.fens.me', '12', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('502', '20181101', '\"http://blog.fens.me/wp-includes/js/jquery/jquery.js?ver=1.10.2\"', 'blog.fens.me', '10', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('503', '20181101', '\"http://blog.fens.me/wp-includes/js/jquery/jquery.js?ver=1.10.2\"', 'blog.fens.me', '09', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('504', '20181101', '\"http://blog.fens.me/wp-includes/js/jquery/jquery.js?ver=1.10.2\"', 'blog.fens.me', '08', 8);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('505', '20181101', '\"http://blog.fens.me/wp-includes/js/jquery/jquery.js?ver=1.10.2\"', 'blog.fens.me', '07', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('506', '20181101', '\"http://blog.fens.me/wp-includes/js/jquery/jquery.js?ver=1.10.2\"', 'blog.fens.me', '04', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('507', '20181101', '\"http://blog.fens.me/wp-includes/js/jquery/jquery.js?ver=1.10.2\"', 'blog.fens.me', '03', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('508', '20181101', '\"http://blog.fens.me/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.2.1\"', 'blog.fens.me', '23', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('509', '20181101', '\"http://blog.fens.me/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.2.1\"', 'blog.fens.me', '22', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('51', '20181101', '\"http://www.leonarding.com/batch.manage.php?itemid=761416\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('510', '20181101', '\"http://blog.fens.me/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.2.1\"', 'blog.fens.me', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('511', '20181101', '\"http://blog.fens.me/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.2.1\"', 'blog.fens.me', '15', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('512', '20181101', '\"http://blog.fens.me/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.2.1\"', 'blog.fens.me', '13', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('513', '20181101', '\"http://blog.fens.me/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.2.1\"', 'blog.fens.me', '12', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('514', '20181101', '\"http://blog.fens.me/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.2.1\"', 'blog.fens.me', '10', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('515', '20181101', '\"http://blog.fens.me/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.2.1\"', 'blog.fens.me', '09', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('516', '20181101', '\"http://blog.fens.me/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.2.1\"', 'blog.fens.me', '08', 8);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('517', '20181101', '\"http://blog.fens.me/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.2.1\"', 'blog.fens.me', '07', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('518', '20181101', '\"http://blog.fens.me/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.2.1\"', 'blog.fens.me', '04', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('519', '20181101', '\"http://blog.fens.me/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.2.1\"', 'blog.fens.me', '03', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('52', '20181101', '\"http://www.leonarding.com/batch.manage.php?itemid=759493\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('520', '20181101', '\"http://blog.fens.me/wp-includes/js/comment-reply.min.js?ver=3.6\"', 'blog.fens.me', '23', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('521', '20181101', '\"http://blog.fens.me/wp-includes/js/comment-reply.min.js?ver=3.6\"', 'blog.fens.me', '22', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('522', '20181101', '\"http://blog.fens.me/wp-includes/js/comment-reply.min.js?ver=3.6\"', 'blog.fens.me', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('523', '20181101', '\"http://blog.fens.me/wp-includes/js/comment-reply.min.js?ver=3.6\"', 'blog.fens.me', '15', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('524', '20181101', '\"http://blog.fens.me/wp-includes/js/comment-reply.min.js?ver=3.6\"', 'blog.fens.me', '13', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('525', '20181101', '\"http://blog.fens.me/wp-includes/js/comment-reply.min.js?ver=3.6\"', 'blog.fens.me', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('526', '20181101', '\"http://blog.fens.me/wp-includes/js/comment-reply.min.js?ver=3.6\"', 'blog.fens.me', '09', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('527', '20181101', '\"http://blog.fens.me/wp-includes/js/comment-reply.min.js?ver=3.6\"', 'blog.fens.me', '08', 6);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('528', '20181101', '\"http://blog.fens.me/wp-includes/js/comment-reply.min.js?ver=3.6\"', 'blog.fens.me', '07', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('529', '20181101', '\"http://blog.fens.me/wp-includes/js/comment-reply.min.js?ver=3.6\"', 'blog.fens.me', '04', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('53', '20181101', '\"http://www.leonarding.com/batch.manage.php?itemid=758992\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('530', '20181101', '\"http://blog.fens.me/wp-includes/js/comment-reply.min.js?ver=3.6\"', 'blog.fens.me', '03', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('531', '20181101', '\"http://blog.fens.me/wp-content/uploads/2013/09/nodejs-mysql.png\"', 'blog.fens.me', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('532', '20181101', '\"http://blog.fens.me/wp-content/uploads/2013/09/node-mysql1.png\"', 'blog.fens.me', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('533', '20181101', '\"http://blog.fens.me/wp-content/uploads/2013/09/ngTable3.png\"', 'blog.fens.me', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('534', '20181101', '\"http://blog.fens.me/wp-content/uploads/2013/09/ngTable2.png\"', 'blog.fens.me', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('535', '20181101', '\"http://blog.fens.me/wp-content/uploads/2013/09/ngTable1.png\"', 'blog.fens.me', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('536', '20181101', '\"http://blog.fens.me/wp-content/uploads/2013/09/hadoopFamilyRoadmap.png\"', 'blog.fens.me', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('537', '20181101', '\"http://blog.fens.me/wp-content/uploads/2013/09/HadoopMahoutRoadmap.png\"', 'blog.fens.me', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('538', '20181101', '\"http://blog.fens.me/wp-content/uploads/2013/09/HadoopFamilySmall.png\"', 'blog.fens.me', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('539', '20181101', '\"http://blog.fens.me/wp-content/uploads/2013/09/Hadoop-mahout-roadmap.png\"', 'blog.fens.me', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('54', '20181101', '\"http://www.leonarding.com/batch.manage.php?itemid=758210\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('540', '20181101', '\"http://blog.fens.me/wp-content/uploads/2013/07/rstudio-login.png\"', 'blog.fens.me', '16', 6);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('541', '20181101', '\"http://blog.fens.me/wp-content/uploads/2013/07/rstudio-login.png\"', 'blog.fens.me', '10', 4);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('542', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/style.css\"', 'blog.fens.me', '23', 7);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('543', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/style.css\"', 'blog.fens.me', '19', 7);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('544', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/style.css\"', 'blog.fens.me', '18', 14);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('545', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/style.css\"', 'blog.fens.me', '16', 14);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('546', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/style.css\"', 'blog.fens.me', '15', 13);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('547', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/style.css\"', 'blog.fens.me', '14', 7);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('548', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/style.css\"', 'blog.fens.me', '12', 7);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('549', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/style.css\"', 'blog.fens.me', '11', 20);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('55', '20181101', '\"http://www.leonarding.com/batch.manage.php?itemid=757778\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('550', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/style.css\"', 'blog.fens.me', '09', 21);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('551', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/style.css\"', 'blog.fens.me', '08', 42);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('552', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/style.css\"', 'blog.fens.me', '07', 28);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('553', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/style.css\"', 'blog.fens.me', '06', 7);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('554', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/style.css\"', 'blog.fens.me', '04', 14);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('555', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/style.css\"', 'blog.fens.me', '03', 13);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('556', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/style.css\"', 'blog.fens.me', '02', 14);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('557', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/load.js\"', 'blog.fens.me', '23', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('558', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/load.js\"', 'blog.fens.me', '22', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('559', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/load.js\"', 'blog.fens.me', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('56', '20181101', '\"http://www.leonarding.com/batch.manage.php?itemid=755337\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('560', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/load.js\"', 'blog.fens.me', '15', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('561', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/load.js\"', 'blog.fens.me', '13', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('562', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/load.js\"', 'blog.fens.me', '12', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('563', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/load.js\"', 'blog.fens.me', '10', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('564', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/load.js\"', 'blog.fens.me', '09', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('565', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/load.js\"', 'blog.fens.me', '08', 8);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('566', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/load.js\"', 'blog.fens.me', '07', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('567', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/load.js\"', 'blog.fens.me', '04', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('568', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/load.js\"', 'blog.fens.me', '03', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('569', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/jquery.cycle.all.min.js\"', 'blog.fens.me', '23', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('57', '20181101', '\"http://www.leonarding.com/batch.manage.php?itemid=754644\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('570', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/jquery.cycle.all.min.js\"', 'blog.fens.me', '22', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('571', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/jquery.cycle.all.min.js\"', 'blog.fens.me', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('572', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/jquery.cycle.all.min.js\"', 'blog.fens.me', '15', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('573', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/jquery.cycle.all.min.js\"', 'blog.fens.me', '13', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('574', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/jquery.cycle.all.min.js\"', 'blog.fens.me', '12', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('575', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/jquery.cycle.all.min.js\"', 'blog.fens.me', '10', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('576', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/jquery.cycle.all.min.js\"', 'blog.fens.me', '09', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('577', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/jquery.cycle.all.min.js\"', 'blog.fens.me', '08', 8);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('578', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/jquery.cycle.all.min.js\"', 'blog.fens.me', '07', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('579', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/jquery.cycle.all.min.js\"', 'blog.fens.me', '04', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('58', '20181101', '\"http://www.leonarding.com/batch.manage.php?itemid=753510\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('580', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/jquery.cycle.all.min.js\"', 'blog.fens.me', '03', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('581', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/ie6/warning.js\"', 'blog.fens.me', '23', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('582', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/ie6/warning.js\"', 'blog.fens.me', '22', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('583', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/ie6/warning.js\"', 'blog.fens.me', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('584', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/ie6/warning.js\"', 'blog.fens.me', '15', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('585', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/ie6/warning.js\"', 'blog.fens.me', '13', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('586', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/ie6/warning.js\"', 'blog.fens.me', '12', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('587', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/ie6/warning.js\"', 'blog.fens.me', '10', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('588', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/ie6/warning.js\"', 'blog.fens.me', '09', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('589', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/ie6/warning.js\"', 'blog.fens.me', '08', 8);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('59', '20181101', '\"http://www.leonarding.com/batch.manage.php?itemid=752943\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('590', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/ie6/warning.js\"', 'blog.fens.me', '07', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('591', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/ie6/warning.js\"', 'blog.fens.me', '04', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('592', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/js/ie6/warning.js\"', 'blog.fens.me', '03', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('593', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/functions/js/shortcode.js\"', 'blog.fens.me', '23', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('594', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/functions/js/shortcode.js\"', 'blog.fens.me', '22', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('595', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/functions/js/shortcode.js\"', 'blog.fens.me', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('596', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/functions/js/shortcode.js\"', 'blog.fens.me', '15', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('597', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/functions/js/shortcode.js\"', 'blog.fens.me', '13', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('598', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/functions/js/shortcode.js\"', 'blog.fens.me', '12', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('599', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/functions/js/shortcode.js\"', 'blog.fens.me', '10', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('6', '20181101', '\"https://www.google.com/\"', 'www.google.com', '08', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('60', '20181101', '\"http://www.leonarding.com/batch.manage.php?itemid=752413\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('600', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/functions/js/shortcode.js\"', 'blog.fens.me', '09', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('601', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/functions/js/shortcode.js\"', 'blog.fens.me', '08', 8);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('602', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/functions/js/shortcode.js\"', 'blog.fens.me', '07', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('603', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/functions/js/shortcode.js\"', 'blog.fens.me', '04', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('604', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/functions/js/shortcode.js\"', 'blog.fens.me', '03', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('605', '20181101', '\"http://blog.fens.me/wp-admin/post.php?post=2445&action=edit&message=10\"', 'blog.fens.me', '16', 9);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('606', '20181101', '\"http://blog.fens.me/wp-admin/post.php?post=2445&action=edit&message=10\"', 'blog.fens.me', '15', 22);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('607', '20181101', '\"http://blog.fens.me/wp-admin/post.php?post=2445&action=edit&message=10\"', 'blog.fens.me', '14', 22);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('608', '20181101', '\"http://blog.fens.me/wp-admin/post.php?post=2445&action=edit&message=10\"', 'blog.fens.me', '13', 24);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('609', '20181101', '\"http://blog.fens.me/wp-admin/post.php?post=2445&action=edit&message=10\"', 'blog.fens.me', '12', 23);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('61', '20181101', '\"http://www.leonarding.com/batch.manage.php?itemid=751968\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('610', '20181101', '\"http://blog.fens.me/wp-admin/post.php?post=2445&action=edit&message=10\"', 'blog.fens.me', '11', 21);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('611', '20181101', '\"http://blog.fens.me/wp-admin/post.php?post=2445&action=edit&message=10\"', 'blog.fens.me', '10', 20);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('612', '20181101', '\"http://blog.fens.me/wp-admin/post.php?post=2445&action=edit&message=10\"', 'blog.fens.me', '09', 31);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('613', '20181101', '\"http://blog.fens.me/wp-admin/post.php?post=2445&action=edit&message=10\"', 'blog.fens.me', '08', 28);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('614', '20181101', '\"http://blog.fens.me/wp-admin/post.php?post=2445&action=edit&message=10\"', 'blog.fens.me', '06', 22);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('615', '20181101', '\"http://blog.fens.me/wp-admin/post.php?post=2445&action=edit&message=10\"', 'blog.fens.me', '05', 89);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('616', '20181101', '\"http://blog.fens.me/wp-admin/post.php?post=2445&action=edit&message=10\"', 'blog.fens.me', '04', 22);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('617', '20181101', '\"http://blog.fens.me/wp-admin/post.php?post=2445&action=edit&message=10\"', 'blog.fens.me', '03', 21);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('618', '20181101', '\"http://blog.fens.me/wp-admin/post.php?post=2445&action=edit&message=10\"', 'blog.fens.me', '02', 6);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('619', '20181101', '\"http://blog.fens.me/wp-admin/post-new.php\"', 'blog.fens.me', '12', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('62', '20181101', '\"http://www.leonarding.com/batch.manage.php?itemid=751259\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('620', '20181101', '\"http://blog.fens.me/wp-admin/post-new.php\"', 'blog.fens.me', '08', 9);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('621', '20181101', '\"http://blog.fens.me/wp-admin/post-new.php\"', 'blog.fens.me', '06', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('622', '20181101', '\"http://blog.fens.me/wp-admin/post-new.php\"', 'blog.fens.me', '05', 16);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('623', '20181101', '\"http://blog.fens.me/wp-admin/edit-comments.php?comment_status=trash\"', 'blog.fens.me', '05', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('624', '20181101', '\"http://blog.fens.me/wp-admin/\"', 'blog.fens.me', '05', 18);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('625', '20181101', '\"http://blog.fens.me/vps-network-error/\"', 'blog.fens.me', '07', 9);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('626', '20181101', '\"http://blog.fens.me/vps-kvm-disk/\"', 'blog.fens.me', '09', 20);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('627', '20181101', '\"http://blog.fens.me/vps-ip-dns/\"', 'blog.fens.me', '19', 25);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('628', '20181101', '\"http://blog.fens.me/vps-ip-dns/\"', 'blog.fens.me', '12', 44);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('629', '20181101', '\"http://blog.fens.me/vps-ip-dns/\"', 'blog.fens.me', '11', 25);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('63', '20181101', '\"http://www.leonarding.com/action/register\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('630', '20181101', '\"http://blog.fens.me/vps-ip-dns/\"', 'blog.fens.me', '10', 31);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('631', '20181101', '\"http://blog.fens.me/vps-ip-dns/\"', 'blog.fens.me', '06', 19);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('632', '20181101', '\"http://blog.fens.me/vps-ip-dns/\"', 'blog.fens.me', '04', 25);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('633', '20181101', '\"http://blog.fens.me/vps-ip-dns/\"', 'blog.fens.me', '02', 7);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('634', '20181101', '\"http://blog.fens.me/vpn-pptp-client-win7/\"', 'blog.fens.me', '05', 23);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('635', '20181101', '\"http://blog.fens.me/vpn-pptp-client-ubuntu/\"', 'blog.fens.me', '02', 20);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('636', '20181101', '\"http://blog.fens.me/vpn-pptp-client-ubuntu/\"', 'blog.fens.me', '00', 20);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('637', '20181101', '\"http://blog.fens.me/ubuntu-vpn-pptp/\"', 'blog.fens.me', '03', 13);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('638', '20181101', '\"http://blog.fens.me/ubuntu-vpn-pptp/\"', 'blog.fens.me', '01', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('639', '20181101', '\"http://blog.fens.me/tag/zookeeper/\"', 'blog.fens.me', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('64', '20181101', '\"http://www.leonarding.com/action-spacelist-uid-26686207-type-blog-starttime-1376438400-endtime-1376524800\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('640', '20181101', '\"http://blog.fens.me/tag/znode/\"', 'blog.fens.me', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('641', '20181101', '\"http://blog.fens.me/tag/zk/\"', 'blog.fens.me', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('642', '20181101', '\"http://blog.fens.me/tag/websocket/\"', 'blog.fens.me', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('643', '20181101', '\"http://blog.fens.me/tag/vpn/\"', 'blog.fens.me', '15', 18);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('644', '20181101', '\"http://blog.fens.me/tag/upstart/\"', 'blog.fens.me', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('645', '20181101', '\"http://blog.fens.me/tag/ubuntu/page/3/\"', 'blog.fens.me', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('646', '20181101', '\"http://blog.fens.me/tag/tomcat/\"', 'blog.fens.me', '10', 21);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('647', '20181101', '\"http://blog.fens.me/tag/testthat/\"', 'blog.fens.me', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('648', '20181101', '\"http://blog.fens.me/tag/shard/\"', 'blog.fens.me', '17', 21);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('649', '20181101', '\"http://blog.fens.me/tag/shard/\"', 'blog.fens.me', '08', 26);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('65', '20181101', '\"http://www.leonarding.com/action-spacelist-uid-26686207-type-blog-starttime-1375401600-endtime-1375488000\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('650', '20181101', '\"http://blog.fens.me/tag/shard/\"', 'blog.fens.me', '07', 19);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('651', '20181101', '\"http://blog.fens.me/tag/sayhello/\"', 'blog.fens.me', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('652', '20181101', '\"http://blog.fens.me/tag/rstudioserver/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('653', '20181101', '\"http://blog.fens.me/tag/rredis/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('654', '20181101', '\"http://blog.fens.me/tag/roadmap/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('655', '20181101', '\"http://blog.fens.me/tag/rjava/\"', 'blog.fens.me', '09', 11);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('656', '20181101', '\"http://blog.fens.me/tag/rio/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('657', '20181101', '\"http://blog.fens.me/tag/rhive/\"', 'blog.fens.me', '04', 23);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('658', '20181101', '\"http://blog.fens.me/tag/rcmd/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('659', '20181101', '\"http://blog.fens.me/tag/r/page/4/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('66', '20181101', '\"http://www.leonarding.com/9842/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('660', '20181101', '\"http://blog.fens.me/tag/r/\"', 'blog.fens.me', '08', 10);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('661', '20181101', '\"http://blog.fens.me/tag/queue/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('662', '20181101', '\"http://blog.fens.me/tag/partition/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('663', '20181101', '\"http://blog.fens.me/tag/package/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('664', '20181101', '\"http://blog.fens.me/tag/nosql/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('665', '20181101', '\"http://blog.fens.me/tag/nodejs/page/3/\"', 'blog.fens.me', '03', 29);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('666', '20181101', '\"http://blog.fens.me/tag/nodejs/\"', 'blog.fens.me', '15', 11);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('667', '20181101', '\"http://blog.fens.me/tag/nodejs/\"', 'blog.fens.me', '13', 29);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('668', '20181101', '\"http://blog.fens.me/tag/nodejs/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('669', '20181101', '\"http://blog.fens.me/tag/nodejs/\"', 'blog.fens.me', '02', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('67', '20181101', '\"http://www.leonarding.com/9240380/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('670', '20181101', '\"http://blog.fens.me/tag/node-mysql/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('671', '20181101', '\"http://blog.fens.me/tag/ng-view/\"', 'blog.fens.me', '09', 21);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('672', '20181101', '\"http://blog.fens.me/tag/network/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('673', '20181101', '\"http://blog.fens.me/tag/mysql/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('674', '20181101', '\"http://blog.fens.me/tag/mongodb/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('675', '20181101', '\"http://blog.fens.me/tag/log4js/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('676', '20181101', '\"http://blog.fens.me/tag/linux/\"', 'blog.fens.me', '15', 64);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('677', '20181101', '\"http://blog.fens.me/tag/linode/\"', 'blog.fens.me', '10', 21);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('678', '20181101', '\"http://blog.fens.me/tag/latex/\"', 'blog.fens.me', '15', 30);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('679', '20181101', '\"http://blog.fens.me/tag/kvm/page/2/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('68', '20181101', '\"http://www.leonarding.com/8197055/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('680', '20181101', '\"http://blog.fens.me/tag/jquery/\"', 'blog.fens.me', '08', 25);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('681', '20181101', '\"http://blog.fens.me/tag/jcall/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('682', '20181101', '\"http://blog.fens.me/tag/javascript/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('683', '20181101', '\"http://blog.fens.me/tag/it/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('684', '20181101', '\"http://blog.fens.me/tag/it%E6%8A%80%E6%9C%AF%E7%8E%A9%E9%87%91%E8%9E%8D/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('685', '20181101', '\"http://blog.fens.me/tag/istanbul/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('686', '20181101', '\"http://blog.fens.me/tag/ibdata1/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('687', '20181101', '\"http://blog.fens.me/tag/hive/\"', 'blog.fens.me', '08', 31);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('688', '20181101', '\"http://blog.fens.me/tag/hadoop/page/4/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('689', '20181101', '\"http://blog.fens.me/tag/hadoop/page/2/\"', 'blog.fens.me', '23', 24);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('69', '20181101', '\"http://www.leonarding.com/8092037/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('690', '20181101', '\"http://blog.fens.me/tag/grunt/\"', 'blog.fens.me', '16', 29);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('691', '20181101', '\"http://blog.fens.me/tag/fifo/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('692', '20181101', '\"http://blog.fens.me/tag/fdisk/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('693', '20181101', '\"http://blog.fens.me/tag/ejs/\"', 'blog.fens.me', '16', 21);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('694', '20181101', '\"http://blog.fens.me/tag/dig/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('695', '20181101', '\"http://blog.fens.me/tag/database/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('696', '20181101', '\"http://blog.fens.me/tag/bdd/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('697', '20181101', '\"http://blog.fens.me/tag/async/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('698', '20181101', '\"http://blog.fens.me/tag/%E9%9B%86%E7%BE%A4/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('699', '20181101', '\"http://blog.fens.me/tag/%E9%87%91%E8%9E%8D/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('7', '20181101', '\"https://www.google.com/\"', 'www.google.com', '07', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('70', '20181101', '\"http://www.leonarding.com/7607759/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('700', '20181101', '\"http://blog.fens.me/tag/%E9%80%9A%E4%BF%A1/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('701', '20181101', '\"http://blog.fens.me/tag/%E9%80%86%E5%9B%9E%E8%B4%AD/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('702', '20181101', '\"http://blog.fens.me/tag/%E8%BF%9E%E6%8E%A5%E6%B1%A0/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('703', '20181101', '\"http://blog.fens.me/tag/%E6%B5%8B%E8%AF%95%E5%85%88%E8%A1%8C/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('704', '20181101', '\"http://blog.fens.me/tag/%E6%A6%82%E7%8E%87%E5%AF%86%E5%BA%A6%E5%87%BD%E6%95%B0/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('705', '20181101', '\"http://blog.fens.me/tag/%E6%9E%81%E5%AE%A2/\"', 'blog.fens.me', '02', 30);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('706', '20181101', '\"http://blog.fens.me/tag/%E5%BC%80%E5%8F%91/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('707', '20181101', '\"http://blog.fens.me/tag/%E5%88%86%E6%AD%A5%E5%BC%8F%E9%98%9F%E5%88%97/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('708', '20181101', '\"http://blog.fens.me/tag/%E5%88%86%E5%B8%83%E5%BC%8F/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('709', '20181101', '\"http://blog.fens.me/tag/%E5%88%86%E5%B8%83%E5%BC%8F%E9%98%9F%E5%88%97/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('71', '20181101', '\"http://www.leonarding.com/685769/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('710', '20181101', '\"http://blog.fens.me/tag/%E5%88%86%E4%BA%AB/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('711', '20181101', '\"http://blog.fens.me/sitemap.xml\"', 'blog.fens.me', '14', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('712', '20181101', '\"http://blog.fens.me/series/\"', 'blog.fens.me', '14', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('713', '20181101', '\"http://blog.fens.me/series-vps/\"', 'blog.fens.me', '10', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('714', '20181101', '\"http://blog.fens.me/series-vps/\"', 'blog.fens.me', '08', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('715', '20181101', '\"http://blog.fens.me/series-visualisation/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('716', '20181101', '\"http://blog.fens.me/series-ubuntu/\"', 'blog.fens.me', '15', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('717', '20181101', '\"http://blog.fens.me/series-rhadoop/\"', 'blog.fens.me', '23', 18);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('718', '20181101', '\"http://blog.fens.me/series-rhadoop/\"', 'blog.fens.me', '15', 6);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('719', '20181101', '\"http://blog.fens.me/series-rhadoop/\"', 'blog.fens.me', '14', 19);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('72', '20181101', '\"http://www.leonarding.com/559870/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('720', '20181101', '\"http://blog.fens.me/series-rhadoop/\"', 'blog.fens.me', '13', 19);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('721', '20181101', '\"http://blog.fens.me/series-rhadoop/\"', 'blog.fens.me', '12', 24);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('722', '20181101', '\"http://blog.fens.me/series-rhadoop/\"', 'blog.fens.me', '11', 7);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('723', '20181101', '\"http://blog.fens.me/series-rhadoop/\"', 'blog.fens.me', '08', 6);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('724', '20181101', '\"http://blog.fens.me/series-rhadoop/\"', 'blog.fens.me', '07', 18);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('725', '20181101', '\"http://blog.fens.me/series-r/\"', 'blog.fens.me', '09', 9);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('726', '20181101', '\"http://blog.fens.me/series-r/\"', 'blog.fens.me', '08', 24);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('727', '20181101', '\"http://blog.fens.me/series-r/\"', 'blog.fens.me', '05', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('728', '20181101', '\"http://blog.fens.me/series-r/\"', 'blog.fens.me', '02', 11);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('729', '20181101', '\"http://blog.fens.me/series-r-nosql/\"', 'blog.fens.me', '15', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('73', '20181101', '\"http://www.leonarding.com/35489/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('730', '20181101', '\"http://blog.fens.me/series-r-nosql/\"', 'blog.fens.me', '11', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('731', '20181101', '\"http://blog.fens.me/series-nodejs/\"', 'blog.fens.me', '19', 8);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('732', '20181101', '\"http://blog.fens.me/series-nodejs/\"', 'blog.fens.me', '15', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('733', '20181101', '\"http://blog.fens.me/series-nodejs/\"', 'blog.fens.me', '10', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('734', '20181101', '\"http://blog.fens.me/series-nodejs/\"', 'blog.fens.me', '09', 5);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('735', '20181101', '\"http://blog.fens.me/series-nodejs/\"', 'blog.fens.me', '08', 37);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('736', '20181101', '\"http://blog.fens.me/series-nodejs/\"', 'blog.fens.me', '07', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('737', '20181101', '\"http://blog.fens.me/series-nodejs/\"', 'blog.fens.me', '06', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('738', '20181101', '\"http://blog.fens.me/series-nodejs/\"', 'blog.fens.me', '05', 8);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('739', '20181101', '\"http://blog.fens.me/series-nodejs/\"', 'blog.fens.me', '04', 14);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('74', '20181101', '\"http://www.leonarding.com/29171365/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('740', '20181101', '\"http://blog.fens.me/series-nodejs/\"', 'blog.fens.me', '03', 13);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('741', '20181101', '\"http://blog.fens.me/series-nodejs/\"', 'blog.fens.me', '02', 9);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('742', '20181101', '\"http://blog.fens.me/series-mongodb/\"', 'blog.fens.me', '00', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('743', '20181101', '\"http://blog.fens.me/series-java/\"', 'blog.fens.me', '08', 6);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('744', '20181101', '\"http://blog.fens.me/series-it-finance/\"', 'blog.fens.me', '23', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('745', '20181101', '\"http://blog.fens.me/series-it-finance/\"', 'blog.fens.me', '14', 5);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('746', '20181101', '\"http://blog.fens.me/series-it-finance/\"', 'blog.fens.me', '12', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('747', '20181101', '\"http://blog.fens.me/series-it-finance/\"', 'blog.fens.me', '08', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('748', '20181101', '\"http://blog.fens.me/series-it-finance/\"', 'blog.fens.me', '03', 12);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('749', '20181101', '\"http://blog.fens.me/series-it-finance/\"', 'blog.fens.me', '02', 6);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('75', '20181101', '\"http://www.leonarding.com/29063475/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('750', '20181101', '\"http://blog.fens.me/series-hadoop-family/\"', 'blog.fens.me', '15', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('751', '20181101', '\"http://blog.fens.me/series-hadoop-family/\"', 'blog.fens.me', '08', 4);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('752', '20181101', '\"http://blog.fens.me/series-hadoop-family/\"', 'blog.fens.me', '07', 21);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('753', '20181101', '\"http://blog.fens.me/series-hadoop-cloud/\"', 'blog.fens.me', '12', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('754', '20181101', '\"http://blog.fens.me/series-angular/\"', 'blog.fens.me', '12', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('755', '20181101', '\"http://blog.fens.me/series-angular/\"', 'blog.fens.me', '08', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('756', '20181101', '\"http://blog.fens.me/series-angular/\"', 'blog.fens.me', '03', 7);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('757', '20181101', '\"http://blog.fens.me/series-angular/\"', 'blog.fens.me', '02', 4);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('758', '20181101', '\"http://blog.fens.me/rhadoop-rmr2-pipemapred/\"', 'blog.fens.me', '13', 20);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('759', '20181101', '\"http://blog.fens.me/rhadoop-rmr2-pipemapred/\"', 'blog.fens.me', '09', 20);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('76', '20181101', '\"http://www.leonarding.com/28878820/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('760', '20181101', '\"http://blog.fens.me/rhadoop-rhadoop/\"', 'blog.fens.me', '12', 54);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('761', '20181101', '\"http://blog.fens.me/rhadoop-rhadoop/\"', 'blog.fens.me', '09', 4);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('762', '20181101', '\"http://blog.fens.me/rhadoop-rhadoop/\"', 'blog.fens.me', '07', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('763', '20181101', '\"http://blog.fens.me/rhadoop-rhadoop/\"', 'blog.fens.me', '04', 4);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('764', '20181101', '\"http://blog.fens.me/rhadoop-r-basic/\"', 'blog.fens.me', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('765', '20181101', '\"http://blog.fens.me/rhadoop-r-basic/\"', 'blog.fens.me', '15', 7);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('766', '20181101', '\"http://blog.fens.me/rhadoop-r-basic/\"', 'blog.fens.me', '14', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('767', '20181101', '\"http://blog.fens.me/rhadoop-r-basic/\"', 'blog.fens.me', '09', 5);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('768', '20181101', '\"http://blog.fens.me/rhadoop-r-basic/\"', 'blog.fens.me', '01', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('769', '20181101', '\"http://blog.fens.me/rhadoop-mapreduce-rmr/\"', 'blog.fens.me', '09', 4);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('77', '20181101', '\"http://www.leonarding.com/28710296/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('770', '20181101', '\"http://blog.fens.me/rhadoop-mapreduce-rmr/\"', 'blog.fens.me', '03', 23);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('771', '20181101', '\"http://blog.fens.me/rhadoop-linux-basic/\"', 'blog.fens.me', '15', 6);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('772', '20181101', '\"http://blog.fens.me/rhadoop-java-basic/\"', 'blog.fens.me', '11', 24);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('773', '20181101', '\"http://blog.fens.me/rhadoop-hbase-rhase/\"', 'blog.fens.me', '09', 24);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('774', '20181101', '\"http://blog.fens.me/rhadoop-hbase-rhase/\"', 'blog.fens.me', '07', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('775', '20181101', '\"http://blog.fens.me/rhadoop-hadoop/\"', 'blog.fens.me', '12', 73);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('776', '20181101', '\"http://blog.fens.me/rhadoop-demo-email/\"', 'blog.fens.me', '11', 5);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('777', '20181101', '\"http://blog.fens.me/r-rstudio-server/\"', 'blog.fens.me', '08', 8);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('778', '20181101', '\"http://blog.fens.me/r-rstudio-server/\"', 'blog.fens.me', '02', 26);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('779', '20181101', '\"http://blog.fens.me/r-rserve-nodejs/\"', 'blog.fens.me', '11', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('78', '20181101', '\"http://www.leonarding.com/28612009/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('780', '20181101', '\"http://blog.fens.me/r-rserve-nodejs/\"', 'blog.fens.me', '09', 12);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('781', '20181101', '\"http://blog.fens.me/r-rserve-nodejs/\"', 'blog.fens.me', '08', 20);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('782', '20181101', '\"http://blog.fens.me/r-rserve-nodejs/\"', 'blog.fens.me', '03', 22);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('783', '20181101', '\"http://blog.fens.me/r-rserve-nodejs/\"', 'blog.fens.me', '02', 6);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('784', '20181101', '\"http://blog.fens.me/r-rserve-java/\"', 'blog.fens.me', '14', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('785', '20181101', '\"http://blog.fens.me/r-rserve-java/\"', 'blog.fens.me', '08', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('786', '20181101', '\"http://blog.fens.me/r-rserve-java/\"', 'blog.fens.me', '07', 21);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('787', '20181101', '\"http://blog.fens.me/r-rjava-java/\"', 'blog.fens.me', '10', 7);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('788', '20181101', '\"http://blog.fens.me/r-rjava-java/\"', 'blog.fens.me', '09', 25);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('789', '20181101', '\"http://blog.fens.me/r-rjava-java/\"', 'blog.fens.me', '08', 33);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('79', '20181101', '\"http://www.leonarding.com/28468902/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('790', '20181101', '\"http://blog.fens.me/r-mahout-usercf/\"', 'blog.fens.me', '08', 21);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('791', '20181101', '\"http://blog.fens.me/r-json-rjson/\"', 'blog.fens.me', '23', 14);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('792', '20181101', '\"http://blog.fens.me/r-json-rjson/\"', 'blog.fens.me', '22', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('793', '20181101', '\"http://blog.fens.me/r-json-rjson/\"', 'blog.fens.me', '21', 20);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('794', '20181101', '\"http://blog.fens.me/r-json-rjson/\"', 'blog.fens.me', '18', 13);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('795', '20181101', '\"http://blog.fens.me/r-json-rjson/\"', 'blog.fens.me', '17', 20);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('796', '20181101', '\"http://blog.fens.me/r-json-rjson/\"', 'blog.fens.me', '16', 13);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('797', '20181101', '\"http://blog.fens.me/r-json-rjson/\"', 'blog.fens.me', '14', 33);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('798', '20181101', '\"http://blog.fens.me/r-json-rjson/\"', 'blog.fens.me', '12', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('799', '20181101', '\"http://blog.fens.me/r-json-rjson/\"', 'blog.fens.me', '10', 7);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('8', '20181101', '\"https://www.google.com/\"', 'www.google.com', '04', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('80', '20181101', '\"http://www.leonarding.com/28420564/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('800', '20181101', '\"http://blog.fens.me/r-json-rjson/\"', 'blog.fens.me', '09', 30);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('801', '20181101', '\"http://blog.fens.me/r-json-rjson/\"', 'blog.fens.me', '08', 10);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('802', '20181101', '\"http://blog.fens.me/r-json-rjson/\"', 'blog.fens.me', '07', 42);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('803', '20181101', '\"http://blog.fens.me/r-json-rjson/\"', 'blog.fens.me', '05', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('804', '20181101', '\"http://blog.fens.me/r-json-rjson/\"', 'blog.fens.me', '02', 7);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('805', '20181101', '\"http://blog.fens.me/r-json-rjson/\"', 'blog.fens.me', '01', 40);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('806', '20181101', '\"http://blog.fens.me/r-json-rjson/\"', 'blog.fens.me', '00', 21);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('807', '20181101', '\"http://blog.fens.me/r-hadoop-intro/\"', 'blog.fens.me', '22', 64);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('808', '20181101', '\"http://blog.fens.me/r-hadoop-intro/\"', 'blog.fens.me', '11', 7);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('809', '20181101', '\"http://blog.fens.me/r-hadoop-intro/\"', 'blog.fens.me', '09', 22);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('81', '20181101', '\"http://www.leonarding.com/27656059/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('810', '20181101', '\"http://blog.fens.me/r-hadoop-intro/\"', 'blog.fens.me', '08', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('811', '20181101', '\"http://blog.fens.me/r-density/\"', 'blog.fens.me', '04', 26);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('812', '20181101', '\"http://blog.fens.me/r-density/\"', 'blog.fens.me', '01', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('813', '20181101', '\"http://blog.fens.me/r-density/\"', 'blog.fens.me', '00', 26);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('814', '20181101', '\"http://blog.fens.me/r-data-function/\"', 'blog.fens.me', '09', 4);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('815', '20181101', '\"http://blog.fens.me/putty-timeout/?replytocom=58\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('816', '20181101', '\"http://blog.fens.me/page/7/\"', 'blog.fens.me', '16', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('817', '20181101', '\"http://blog.fens.me/page/7/\"', 'blog.fens.me', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('818', '20181101', '\"http://blog.fens.me/page/6/\"', 'blog.fens.me', '15', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('819', '20181101', '\"http://blog.fens.me/page/4/\"', 'blog.fens.me', '14', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('82', '20181101', '\"http://www.leonarding.com/27144762/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('820', '20181101', '\"http://blog.fens.me/page/4/\"', 'blog.fens.me', '04', 33);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('821', '20181101', '\"http://blog.fens.me/page/3/\"', 'blog.fens.me', '17', 16);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('822', '20181101', '\"http://blog.fens.me/page/20/\"', 'blog.fens.me', '21', 5);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('823', '20181101', '\"http://blog.fens.me/page/20/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('824', '20181101', '\"http://blog.fens.me/page/2/\"', 'blog.fens.me', '17', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('825', '20181101', '\"http://blog.fens.me/page/2/\"', 'blog.fens.me', '16', 22);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('826', '20181101', '\"http://blog.fens.me/page/2/\"', 'blog.fens.me', '09', 37);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('827', '20181101', '\"http://blog.fens.me/page/15/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('828', '20181101', '\"http://blog.fens.me/page/13/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('829', '20181101', '\"http://blog.fens.me/page/12/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('83', '20181101', '\"http://www.leonarding.com/27065479/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('830', '20181101', '\"http://blog.fens.me/page/11/\"', 'blog.fens.me', '07', 14);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('831', '20181101', '\"http://blog.fens.me/nosql-r-hive/\"', 'blog.fens.me', '09', 11);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('832', '20181101', '\"http://blog.fens.me/nosql-r-cassandra/\"', 'blog.fens.me', '11', 6);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('833', '20181101', '\"http://blog.fens.me/nosql-r-cassandra/\"', 'blog.fens.me', '09', 11);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('834', '20181101', '\"http://blog.fens.me/nodejs-yeoman-intro/\"', 'blog.fens.me', '14', 4);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('835', '20181101', '\"http://blog.fens.me/nodejs-yeoman-intro/\"', 'blog.fens.me', '09', 35);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('836', '20181101', '\"http://blog.fens.me/nodejs-yeoman-intro/\"', 'blog.fens.me', '08', 5);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('837', '20181101', '\"http://blog.fens.me/nodejs-websocket/\"', 'blog.fens.me', '22', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('838', '20181101', '\"http://blog.fens.me/nodejs-websocket/\"', 'blog.fens.me', '16', 19);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('839', '20181101', '\"http://blog.fens.me/nodejs-websocket/\"', 'blog.fens.me', '15', 25);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('84', '20181101', '\"http://www.leonarding.com/27005418/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('840', '20181101', '\"http://blog.fens.me/nodejs-websocket/\"', 'blog.fens.me', '07', 50);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('841', '20181101', '\"http://blog.fens.me/nodejs-websocket-monitor/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('842', '20181101', '\"http://blog.fens.me/nodejs-underscore/\"', 'blog.fens.me', '20', 21);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('843', '20181101', '\"http://blog.fens.me/nodejs-underscore/\"', 'blog.fens.me', '18', 20);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('844', '20181101', '\"http://blog.fens.me/nodejs-underscore/\"', 'blog.fens.me', '15', 8);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('845', '20181101', '\"http://blog.fens.me/nodejs-underscore/\"', 'blog.fens.me', '08', 20);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('846', '20181101', '\"http://blog.fens.me/nodejs-underscore/\"', 'blog.fens.me', '07', 53);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('847', '20181101', '\"http://blog.fens.me/nodejs-underscore/\"', 'blog.fens.me', '04', 40);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('848', '20181101', '\"http://blog.fens.me/nodejs-underscore/\"', 'blog.fens.me', '03', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('849', '20181101', '\"http://blog.fens.me/nodejs-underscore/\"', 'blog.fens.me', '02', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('85', '20181101', '\"http://www.leonarding.com/26739940/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('850', '20181101', '\"http://blog.fens.me/nodejs-stylus-css/\"', 'blog.fens.me', '15', 45);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('851', '20181101', '\"http://blog.fens.me/nodejs-stylus-css/\"', 'blog.fens.me', '08', 22);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('852', '20181101', '\"http://blog.fens.me/nodejs-socketio-chat/\"', 'blog.fens.me', '14', 19);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('853', '20181101', '\"http://blog.fens.me/nodejs-socketio-chat/\"', 'blog.fens.me', '09', 21);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('854', '20181101', '\"http://blog.fens.me/nodejs-socketio-chat/\"', 'blog.fens.me', '08', 8);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('855', '20181101', '\"http://blog.fens.me/nodejs-socketio-chat/\"', 'blog.fens.me', '07', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('856', '20181101', '\"http://blog.fens.me/nodejs-socketio-chat/\"', 'blog.fens.me', '06', 7);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('857', '20181101', '\"http://blog.fens.me/nodejs-nginx-log4js/\"', 'blog.fens.me', '17', 20);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('858', '20181101', '\"http://blog.fens.me/nodejs-nginx-log4js/\"', 'blog.fens.me', '08', 20);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('859', '20181101', '\"http://blog.fens.me/nodejs-mysql-intro/\"', 'blog.fens.me', '15', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('86', '20181101', '\"http://www.leonarding.com/26725423/\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('860', '20181101', '\"http://blog.fens.me/nodejs-mysql-intro/\"', 'blog.fens.me', '09', 21);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('861', '20181101', '\"http://blog.fens.me/nodejs-mysql-intro/\"', 'blog.fens.me', '08', 15);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('862', '20181101', '\"http://blog.fens.me/nodejs-mysql-intro/\"', 'blog.fens.me', '07', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('863', '20181101', '\"http://blog.fens.me/nodejs-mysql-intro/\"', 'blog.fens.me', '05', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('864', '20181101', '\"http://blog.fens.me/nodejs-mysql-intro/\"', 'blog.fens.me', '04', 21);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('865', '20181101', '\"http://blog.fens.me/nodejs-mysql-intro/\"', 'blog.fens.me', '03', 7);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('866', '20181101', '\"http://blog.fens.me/nodejs-mongoose-json/\"', 'blog.fens.me', '23', 24);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('867', '20181101', '\"http://blog.fens.me/nodejs-mongoose-json/\"', 'blog.fens.me', '15', 24);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('868', '20181101', '\"http://blog.fens.me/nodejs-mongoose-json/\"', 'blog.fens.me', '12', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('869', '20181101', '\"http://blog.fens.me/nodejs-mongoose-json/\"', 'blog.fens.me', '07', 6);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('87', '20181101', '\"http://www.leonarding.com/26686207/viewspace-769060\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('870', '20181101', '\"http://blog.fens.me/nodejs-mongodb-regexp/\"', 'blog.fens.me', '16', 22);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('871', '20181101', '\"http://blog.fens.me/nodejs-mongodb-regexp/\"', 'blog.fens.me', '08', 5);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('872', '20181101', '\"http://blog.fens.me/nodejs-log4js/\"', 'blog.fens.me', '10', 21);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('873', '20181101', '\"http://blog.fens.me/nodejs-log4js/\"', 'blog.fens.me', '09', 21);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('874', '20181101', '\"http://blog.fens.me/nodejs-log4js/\"', 'blog.fens.me', '08', 36);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('875', '20181101', '\"http://blog.fens.me/nodejs-log4js/\"', 'blog.fens.me', '07', 18);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('876', '20181101', '\"http://blog.fens.me/nodejs-karma-jasmine/\"', 'blog.fens.me', '09', 5);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('877', '20181101', '\"http://blog.fens.me/nodejs-karma-jasmine/\"', 'blog.fens.me', '08', 44);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('878', '20181101', '\"http://blog.fens.me/nodejs-karma-jasmine/\"', 'blog.fens.me', '05', 24);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('879', '20181101', '\"http://blog.fens.me/nodejs-jasmine-bdd/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('88', '20181101', '\"http://www.leonarding.com/26686207/viewspace-767749\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('880', '20181101', '\"http://blog.fens.me/nodejs-jasmine-bdd/\"', 'blog.fens.me', '08', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('881', '20181101', '\"http://blog.fens.me/nodejs-jasmine-bdd/\"', 'blog.fens.me', '05', 5);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('882', '20181101', '\"http://blog.fens.me/nodejs-jasmine-bdd\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('883', '20181101', '\"http://blog.fens.me/nodejs-grunt-intro/\"', 'blog.fens.me', '19', 6);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('884', '20181101', '\"http://blog.fens.me/nodejs-grunt-intro/\"', 'blog.fens.me', '14', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('885', '20181101', '\"http://blog.fens.me/nodejs-grunt-intro/\"', 'blog.fens.me', '13', 19);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('886', '20181101', '\"http://blog.fens.me/nodejs-grunt-intro/\"', 'blog.fens.me', '10', 20);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('887', '20181101', '\"http://blog.fens.me/nodejs-grunt-intro/\"', 'blog.fens.me', '09', 32);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('888', '20181101', '\"http://blog.fens.me/nodejs-grunt-intro/\"', 'blog.fens.me', '08', 37);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('889', '20181101', '\"http://blog.fens.me/nodejs-grunt-intro/\"', 'blog.fens.me', '07', 20);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('89', '20181101', '\"http://www.leonarding.com/26686207/viewspace-766639\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('890', '20181101', '\"http://blog.fens.me/nodejs-grunt-intro/\"', 'blog.fens.me', '06', 7);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('891', '20181101', '\"http://blog.fens.me/nodejs-express3/\"', 'blog.fens.me', '17', 24);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('892', '20181101', '\"http://blog.fens.me/nodejs-express3/\"', 'blog.fens.me', '15', 15);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('893', '20181101', '\"http://blog.fens.me/nodejs-express3/\"', 'blog.fens.me', '14', 23);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('894', '20181101', '\"http://blog.fens.me/nodejs-express3/\"', 'blog.fens.me', '09', 11);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('895', '20181101', '\"http://blog.fens.me/nodejs-express3/\"', 'blog.fens.me', '08', 49);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('896', '20181101', '\"http://blog.fens.me/nodejs-express3/\"', 'blog.fens.me', '07', 39);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('897', '20181101', '\"http://blog.fens.me/nodejs-express3/\"', 'blog.fens.me', '06', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('898', '20181101', '\"http://blog.fens.me/nodejs-express3/\"', 'blog.fens.me', '05', 23);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('899', '20181101', '\"http://blog.fens.me/nodejs-express3/\"', 'blog.fens.me', '03', 12);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('9', '20181101', '\"https://www.google.com/\"', 'www.google.com', '03', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('90', '20181101', '\"http://www.leonarding.com/26686207/viewspace-765782\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('900', '20181101', '\"http://blog.fens.me/nodejs-enviroment/\"', 'blog.fens.me', '09', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('901', '20181101', '\"http://blog.fens.me/nodejs-enviroment/\"', 'blog.fens.me', '08', 20);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('902', '20181101', '\"http://blog.fens.me/nodejs-enviroment/\"', 'blog.fens.me', '04', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('903', '20181101', '\"http://blog.fens.me/nodejs-enviroment/\"', 'blog.fens.me', '01', 20);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('904', '20181101', '\"http://blog.fens.me/nodejs-crawler-douban/\"', 'blog.fens.me', '19', 21);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('905', '20181101', '\"http://blog.fens.me/nodejs-crawler-douban/\"', 'blog.fens.me', '11', 36);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('906', '20181101', '\"http://blog.fens.me/nodejs-crawler-douban/\"', 'blog.fens.me', '09', 11);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('907', '20181101', '\"http://blog.fens.me/nodejs-crawler-douban/\"', 'blog.fens.me', '03', 9);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('908', '20181101', '\"http://blog.fens.me/nodejs-crawler-douban/\"', 'blog.fens.me', '01', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('909', '20181101', '\"http://blog.fens.me/nodejs-bower-intro/\"', 'blog.fens.me', '20', 11);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('91', '20181101', '\"http://www.leonarding.com/26686207/viewspace-764735\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('910', '20181101', '\"http://blog.fens.me/nodejs-bower-intro/\"', 'blog.fens.me', '19', 11);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('911', '20181101', '\"http://blog.fens.me/nodejs-bower-intro/\"', 'blog.fens.me', '16', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('912', '20181101', '\"http://blog.fens.me/nodejs-bower-intro/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('913', '20181101', '\"http://blog.fens.me/nodejs-bower-intro/\"', 'blog.fens.me', '08', 5);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('914', '20181101', '\"http://blog.fens.me/nodejs-bootstrap-select/\"', 'blog.fens.me', '09', 9);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('915', '20181101', '\"http://blog.fens.me/nodejs-bootstrap-select/\"', 'blog.fens.me', '08', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('916', '20181101', '\"http://blog.fens.me/nodejs-bootstrap-select/\"', 'blog.fens.me', '07', 21);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('917', '20181101', '\"http://blog.fens.me/nodejs-bootstrap-paginator/\"', 'blog.fens.me', '09', 21);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('918', '20181101', '\"http://blog.fens.me/nodejs-bootstrap-paginator/\"', 'blog.fens.me', '07', 27);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('919', '20181101', '\"http://blog.fens.me/nodejs-bootstrap-paginator/\"', 'blog.fens.me', '05', 7);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('92', '20181101', '\"http://www.leonarding.com/26686207/viewspace-764429\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('920', '20181101', '\"http://blog.fens.me/nodejs-bootstrap-paginator/\"', 'blog.fens.me', '04', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('921', '20181101', '\"http://blog.fens.me/nodejs-async/\"', 'blog.fens.me', '12', 7);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('922', '20181101', '\"http://blog.fens.me/nodejs-async/\"', 'blog.fens.me', '11', 20);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('923', '20181101', '\"http://blog.fens.me/nodejs-async/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('924', '20181101', '\"http://blog.fens.me/nodejs-async/\"', 'blog.fens.me', '08', 23);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('925', '20181101', '\"http://blog.fens.me/nodejs-async/\"', 'blog.fens.me', '06', 5);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('926', '20181101', '\"http://blog.fens.me/nodejs-async/\"', 'blog.fens.me', '05', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('927', '20181101', '\"http://blog.fens.me/nodejs-async/\"', 'blog.fens.me', '03', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('928', '20181101', '\"http://blog.fens.me/nodejs-async/\"', 'blog.fens.me', '02', 13);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('929', '20181101', '\"http://blog.fens.me/nodejs-async-windjs/\"', 'blog.fens.me', '15', 21);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('93', '20181101', '\"http://www.leonarding.com/26686207/viewspace-764083\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('930', '20181101', '\"http://blog.fens.me/nodejs-async-windjs/\"', 'blog.fens.me', '13', 5);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('931', '20181101', '\"http://blog.fens.me/nodejs-async-windjs/\"', 'blog.fens.me', '10', 5);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('932', '20181101', '\"http://blog.fens.me/nodejs-async-windjs/\"', 'blog.fens.me', '08', 7);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('933', '20181101', '\"http://blog.fens.me/nodejs-async-windjs/\"', 'blog.fens.me', '05', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('934', '20181101', '\"http://blog.fens.me/nodejs-async-windjs/\"', 'blog.fens.me', '01', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('935', '20181101', '\"http://blog.fens.me/mysql-select-count/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('936', '20181101', '\"http://blog.fens.me/mysql-ibdata1/\"', 'blog.fens.me', '09', 40);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('937', '20181101', '\"http://blog.fens.me/mysql-ibdata1/\"', 'blog.fens.me', '08', 20);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('938', '20181101', '\"http://blog.fens.me/mysql-ibdata1/\"', 'blog.fens.me', '01', 4);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('939', '20181101', '\"http://blog.fens.me/myisam-brighthouse/\"', 'blog.fens.me', '22', 18);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('94', '20181101', '\"http://www.leonarding.com/26686207/viewspace-762584\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('940', '20181101', '\"http://blog.fens.me/mongodb-shard/\"', 'blog.fens.me', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('941', '20181101', '\"http://blog.fens.me/mongodb-shard/\"', 'blog.fens.me', '07', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('942', '20181101', '\"http://blog.fens.me/mongodb-replica-set/\"', 'blog.fens.me', '09', 11);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('943', '20181101', '\"http://blog.fens.me/mongodb-replica-set/\"', 'blog.fens.me', '07', 4);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('944', '20181101', '\"http://blog.fens.me/mongodb-replica-set/\"', 'blog.fens.me', '06', 20);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('945', '20181101', '\"http://blog.fens.me/linux-upstart/\"', 'blog.fens.me', '14', 22);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('946', '20181101', '\"http://blog.fens.me/linux-upstart-mongodb/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('947', '20181101', '\"http://blog.fens.me/linux-ntp/\"', 'blog.fens.me', '15', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('948', '20181101', '\"http://blog.fens.me/linux-ntp/\"', 'blog.fens.me', '09', 19);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('949', '20181101', '\"http://blog.fens.me/linux-fdisk/\"', 'blog.fens.me', '07', 19);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('95', '20181101', '\"http://www.leonarding.com/26686207/viewspace-760871\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('950', '20181101', '\"http://blog.fens.me/java-websocket-intro/\"', 'blog.fens.me', '18', 20);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('951', '20181101', '\"http://blog.fens.me/java-websocket-intro/\"', 'blog.fens.me', '15', 26);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('952', '20181101', '\"http://blog.fens.me/java-websocket-intro/\"', 'blog.fens.me', '11', 26);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('953', '20181101', '\"http://blog.fens.me/java-websocket-intro/\"', 'blog.fens.me', '09', 11);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('954', '20181101', '\"http://blog.fens.me/java-websocket-intro/\"', 'blog.fens.me', '08', 19);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('955', '20181101', '\"http://blog.fens.me/java-websocket-intro/\"', 'blog.fens.me', '07', 26);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('956', '20181101', '\"http://blog.fens.me/hadoop-zookeeper-roadmap/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('957', '20181101', '\"http://blog.fens.me/hadoop-zookeeper-intro/\"', 'blog.fens.me', '09', 11);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('958', '20181101', '\"http://blog.fens.me/hadoop-zookeeper-intro/\"', 'blog.fens.me', '07', 20);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('959', '20181101', '\"http://blog.fens.me/hadoop-zookeeper-intro/\"', 'blog.fens.me', '00', 20);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('96', '20181101', '\"http://www.leonarding.com/26686207/viewspace-759604\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('960', '20181101', '\"http://blog.fens.me/hadoop-sqoop-roadmap/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('961', '20181101', '\"http://blog.fens.me/hadoop-pig-roadmap/\"', 'blog.fens.me', '10', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('962', '20181101', '\"http://blog.fens.me/hadoop-pig-roadmap/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('963', '20181101', '\"http://blog.fens.me/hadoop-mahout-roadmap/\"', 'blog.fens.me', '13', 21);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('964', '20181101', '\"http://blog.fens.me/hadoop-mahout-roadmap/\"', 'blog.fens.me', '12', 21);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('965', '20181101', '\"http://blog.fens.me/hadoop-mahout-roadmap/\"', 'blog.fens.me', '10', 21);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('966', '20181101', '\"http://blog.fens.me/hadoop-mahout-roadmap/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('967', '20181101', '\"http://blog.fens.me/hadoop-mahout-roadmap/\"', 'blog.fens.me', '08', 54);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('968', '20181101', '\"http://blog.fens.me/hadoop-mahout-roadmap/\"', 'blog.fens.me', '07', 21);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('969', '20181101', '\"http://blog.fens.me/hadoop-mahout-roadmap/\"', 'blog.fens.me', '03', 23);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('97', '20181101', '\"http://www.leonarding.com/26686207/viewspace-759292\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('970', '20181101', '\"http://blog.fens.me/hadoop-mahout-roadmap/\"', 'blog.fens.me', '00', 20);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('971', '20181101', '\"http://blog.fens.me/hadoop-hive-roadmap/\"', 'blog.fens.me', '09', 17);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('972', '20181101', '\"http://blog.fens.me/hadoop-hive-intro/\"', 'blog.fens.me', '14', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('973', '20181101', '\"http://blog.fens.me/hadoop-hive-intro/\"', 'blog.fens.me', '12', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('974', '20181101', '\"http://blog.fens.me/hadoop-hive-intro/\"', 'blog.fens.me', '10', 20);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('975', '20181101', '\"http://blog.fens.me/hadoop-hive-intro/\"', 'blog.fens.me', '09', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('976', '20181101', '\"http://blog.fens.me/hadoop-hive-intro/\"', 'blog.fens.me', '08', 21);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('977', '20181101', '\"http://blog.fens.me/hadoop-hive-intro/\"', 'blog.fens.me', '07', 41);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('978', '20181101', '\"http://blog.fens.me/hadoop-hive-intro/\"', 'blog.fens.me', '04', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('979', '20181101', '\"http://blog.fens.me/hadoop-hive-intro/\"', 'blog.fens.me', '02', 20);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('98', '20181101', '\"http://www.leonarding.com/26686207/viewspace-758427\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('980', '20181101', '\"http://blog.fens.me/hadoop-hive-10g/\"', 'blog.fens.me', '09', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('981', '20181101', '\"http://blog.fens.me/hadoop-family-roadmap/\"', 'blog.fens.me', '10', 3);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('982', '20181101', '\"http://blog.fens.me/hadoop-family-roadmap/\"', 'blog.fens.me', '09', 22);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('983', '20181101', '\"http://blog.fens.me/hadoop-family-roadmap/\"', 'blog.fens.me', '08', 17);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('984', '20181101', '\"http://blog.fens.me/hadoop-family-roadmap/\"', 'blog.fens.me', '07', 53);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('985', '20181101', '\"http://blog.fens.me/hadoop-family-roadmap/\"', 'blog.fens.me', '03', 7);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('986', '20181101', '\"http://blog.fens.me/hadoop-core-roadmap/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('987', '20181101', '\"http://blog.fens.me/hadoop-core-roadmap/\"', 'blog.fens.me', '08', 17);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('988', '20181101', '\"http://blog.fens.me/hadoop-base-kvm/\"', 'blog.fens.me', '09', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('989', '20181101', '\"http://blog.fens.me/hadoop-base-kvm/\"', 'blog.fens.me', '08', 21);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('99', '20181101', '\"http://www.leonarding.com/26686207/viewspace-757488\"', 'www.leonarding.com', '19', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('990', '20181101', '\"http://blog.fens.me/finance-rhive-repurchase/\"', 'blog.fens.me', '23', 28);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('991', '20181101', '\"http://blog.fens.me/finance-rhive-repurchase/\"', 'blog.fens.me', '14', 9);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('992', '20181101', '\"http://blog.fens.me/finance-rhive-repurchase/\"', 'blog.fens.me', '12', 1);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('993', '20181101', '\"http://blog.fens.me/finance-rhive-repurchase/\"', 'blog.fens.me', '09', 108);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('994', '20181101', '\"http://blog.fens.me/finance-rhive-repurchase/\"', 'blog.fens.me', '02', 9);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('995', '20181101', '\"http://blog.fens.me/data-scientist-problems/\"', 'blog.fens.me', '06', 18);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('996', '20181101', '\"http://blog.fens.me/data-scientist-problems/\"', 'blog.fens.me', '02', 18);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('997', '20181101', '\"http://blog.fens.me/category/r-lang/page/5/\"', 'blog.fens.me', '09', 2);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('998', '20181101', '\"http://blog.fens.me/category/r-lang/page/4/\"', 'blog.fens.me', '09', 14);
INSERT INTO `dw_pvs_referer_everyhour_oneday` VALUES ('999', '20181101', '\"http://blog.fens.me/category/r-lang/page/3/\"', 'blog.fens.me', '09', 13);

-- ----------------------------
-- Table structure for dw_pvs_referer_url_everyday
-- ----------------------------
DROP TABLE IF EXISTS `dw_pvs_referer_url_everyday`;
CREATE TABLE `dw_pvs_referer_url_everyday`  (
  `od` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `day` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ref_url` varchar(5000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ref_url_cnts` bigint(50) NULL DEFAULT NULL,
  PRIMARY KEY (`od`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dw_pvs_referer_url_everyday
-- ----------------------------
INSERT INTO `dw_pvs_referer_url_everyday` VALUES ('360', '20181101', '\"http://blog.fens.me/wp-content/themes/silesia/style.css\"', 228);
INSERT INTO `dw_pvs_referer_url_everyday` VALUES ('365', '20181101', '\"http://blog.fens.me/wp-admin/post.php?post=2445&action=edit&message=10\"', 360);
INSERT INTO `dw_pvs_referer_url_everyday` VALUES ('371', '20181101', '\"http://blog.fens.me/vps-ip-dns/\"', 176);
INSERT INTO `dw_pvs_referer_url_everyday` VALUES ('471', '20181101', '\"http://blog.fens.me/r-json-rjson/\"', 274);
INSERT INTO `dw_pvs_referer_url_everyday` VALUES ('491', '20181101', '\"http://blog.fens.me/nodejs-underscore/\"', 165);
INSERT INTO `dw_pvs_referer_url_everyday` VALUES ('503', '20181101', '\"http://blog.fens.me/nodejs-express3/\"', 198);
INSERT INTO `dw_pvs_referer_url_everyday` VALUES ('525', '20181101', '\"http://blog.fens.me/hadoop-mahout-roadmap/\"', 182);
INSERT INTO `dw_pvs_referer_url_everyday` VALUES ('545', '20181101', '\"http://blog.fens.me/category/hadoop-action/\"', 547);
INSERT INTO `dw_pvs_referer_url_everyday` VALUES ('562', '20181101', '\"http://blog.fens.me/angularjs-webstorm-ide/\"', 271);
INSERT INTO `dw_pvs_referer_url_everyday` VALUES ('583', '20181101', '\"http://blog.fens.me/\"', 377);

-- ----------------------------
-- Table structure for dw_pvs_refererhost_everyday
-- ----------------------------
DROP TABLE IF EXISTS `dw_pvs_refererhost_everyday`;
CREATE TABLE `dw_pvs_refererhost_everyday`  (
  `od` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `day` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ref_host` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ref_host_cnts` bigint(50) NULL DEFAULT NULL,
  PRIMARY KEY (`od`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dw_pvs_refererhost_everyday
-- ----------------------------
INSERT INTO `dw_pvs_refererhost_everyday` VALUES ('11', '20181101', 'www.google.com.hk', 81);
INSERT INTO `dw_pvs_refererhost_everyday` VALUES ('16', '20181101', 'www.fens.me', 98);
INSERT INTO `dw_pvs_refererhost_everyday` VALUES ('18', '20181101', 'www.dataguru.cn', 49);
INSERT INTO `dw_pvs_refererhost_everyday` VALUES ('19', '20181101', 'www.baidu.com', 143);
INSERT INTO `dw_pvs_refererhost_everyday` VALUES ('20', '20181101', 'www.angularjs.cn', 85);
INSERT INTO `dw_pvs_refererhost_everyday` VALUES ('21', '20181101', 'www.100rmb.info', 66);
INSERT INTO `dw_pvs_refererhost_everyday` VALUES ('42', '20181101', 'cos.name', 75);
INSERT INTO `dw_pvs_refererhost_everyday` VALUES ('44', '20181101', 'cnodejs.org', 46);
INSERT INTO `dw_pvs_refererhost_everyday` VALUES ('48', '20181101', 'blog.fens.me', 7588);
INSERT INTO `dw_pvs_refererhost_everyday` VALUES ('5', '20181101', 'www.leonarding.com', 101);

-- ----------------------------
-- Table structure for dw_pvs_refererhost_everyhour_oneday
-- ----------------------------
DROP TABLE IF EXISTS `dw_pvs_refererhost_everyhour_oneday`;
CREATE TABLE `dw_pvs_refererhost_everyhour_oneday`  (
  `od` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `day` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ref_host` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hour` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ref_host_cnts` bigint(50) NULL DEFAULT NULL,
  PRIMARY KEY (`od`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dw_pvs_refererhost_everyhour_oneday
-- ----------------------------
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('1', '20181101', 'www.weibo.com', '07', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('10', '20181101', 'www.leonarding.com', '11', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('100', '20181101', 'www.angularjs.cn', '11', 7);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('101', '20181101', 'www.angularjs.cn', '10', 7);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('102', '20181101', 'www.angularjs.cn', '09', 5);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('103', '20181101', 'www.angularjs.cn', '08', 4);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('104', '20181101', 'www.angularjs.cn', '07', 20);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('105', '20181101', 'www.angularjs.cn', '06', 4);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('106', '20181101', 'www.angularjs.cn', '05', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('107', '20181101', 'www.angularjs.cn', '04', 6);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('108', '20181101', 'www.angularjs.cn', '03', 7);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('109', '20181101', 'www.angularjs.cn', '01', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('11', '20181101', 'www.leonarding.com', '00', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('110', '20181101', 'www.100rmb.info', '16', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('111', '20181101', 'www.100rmb.info', '09', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('112', '20181101', 'www.100rmb.info', '04', 62);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('113', '20181101', 'www.100rmb.info', '03', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('114', '20181101', 'woman.seopower.su', '12', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('115', '20181101', 'whois.domaintools.com', '23', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('116', '20181101', 'whois.domaintools.com', '21', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('117', '20181101', 'weibo.com', '23', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('118', '20181101', 'weibo.com', '18', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('119', '20181101', 'weibo.com', '16', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('12', '20181101', 'www.itpub.net', '08', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('120', '20181101', 'weibo.com', '11', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('121', '20181101', 'weibo.com', '09', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('122', '20181101', 'weibo.com', '01', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('123', '20181101', 'tongji.baidu.com', '10', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('124', '20181101', 'redir.yy.duowan.com', '09', 3);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('125', '20181101', 'r.mail.qq.com', '18', 3);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('126', '20181101', 'r.mail.qq.com', '02', 3);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('127', '20181101', 'r.dataguru.cn', '09', 8);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('128', '20181101', 'r.dataguru.cn', '07', 6);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('129', '20181101', 'news.google.com', '03', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('13', '20181101', 'www.itpub.net', '00', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('130', '20181101', 'mp.weixin.qq.com', '22', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('131', '20181101', 'mp.weixin.qq.com', '18', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('132', '20181101', 'mp.weixin.qq.com', '15', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('133', '20181101', 'mp.weixin.qq.com', '14', 3);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('134', '20181101', 'mp.weixin.qq.com', '13', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('135', '20181101', 'mp.weixin.qq.com', '12', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('136', '20181101', 'mp.weixin.qq.com', '11', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('137', '20181101', 'mp.weixin.qq.com', '03', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('138', '20181101', 'mp.weixin.qq.com', '01', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('139', '20181101', 'mo.wanzn.cn', '18', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('14', '20181101', 'www.google.it', '13', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('140', '20181101', 'michaelhsu.tw', '03', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('141', '20181101', 'leonarding.com', '03', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('142', '20181101', 'it.dataguru.cn', '10', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('143', '20181101', 'it.dataguru.cn', '07', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('144', '20181101', 'it.dataguru.cn', '05', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('145', '20181101', 'it.dataguru.cn', '02', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('146', '20181101', 'image.baidu.com', '16', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('147', '20181101', 'image.baidu.com', '07', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('148', '20181101', 'h2w.iask.cn', '21', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('149', '20181101', 'h2w.iask.cn', '01', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('15', '20181101', 'www.google.fr', '07', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('150', '20181101', 'h2w.iask.cn', '00', 6);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('151', '20181101', 'freemined.com', '16', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('152', '20181101', 'freemined.com', '02', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('153', '20181101', 'fens.me', '18', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('154', '20181101', 'fens.me', '16', 6);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('155', '20181101', 'fens.me', '11', 12);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('156', '20181101', 'fens.me', '10', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('157', '20181101', 'f.dataguru.cn', '23', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('158', '20181101', 'f.dataguru.cn', '15', 3);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('159', '20181101', 'f.dataguru.cn', '14', 3);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('16', '20181101', 'www.google.com.tw', '19', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('160', '20181101', 'f.dataguru.cn', '13', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('161', '20181101', 'f.dataguru.cn', '12', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('162', '20181101', 'f.dataguru.cn', '10', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('163', '20181101', 'f.dataguru.cn', '08', 4);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('164', '20181101', 'f.dataguru.cn', '07', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('165', '20181101', 'f.dataguru.cn', '03', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('166', '20181101', 'download.freemined.com', '15', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('167', '20181101', 'disqus.com', '14', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('168', '20181101', 'disqus.com', '05', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('169', '20181101', 'cos.name', '23', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('17', '20181101', 'www.google.com.tw', '17', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('170', '20181101', 'cos.name', '21', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('171', '20181101', 'cos.name', '17', 3);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('172', '20181101', 'cos.name', '16', 5);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('173', '20181101', 'cos.name', '15', 8);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('174', '20181101', 'cos.name', '14', 4);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('175', '20181101', 'cos.name', '13', 6);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('176', '20181101', 'cos.name', '12', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('177', '20181101', 'cos.name', '11', 4);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('178', '20181101', 'cos.name', '10', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('179', '20181101', 'cos.name', '09', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('18', '20181101', 'www.google.com.tw', '15', 3);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('180', '20181101', 'cos.name', '08', 13);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('181', '20181101', 'cos.name', '07', 5);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('182', '20181101', 'cos.name', '06', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('183', '20181101', 'cos.name', '05', 4);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('184', '20181101', 'cos.name', '04', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('185', '20181101', 'cos.name', '03', 8);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('186', '20181101', 'cos.name', '02', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('187', '20181101', 'cos.name', '01', 3);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('188', '20181101', 'comp.freemined.com', '20', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('189', '20181101', 'comp.freemined.com', '16', 10);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('19', '20181101', 'www.google.com.tw', '09', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('190', '20181101', 'comp.freemined.com', '15', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('191', '20181101', 'cnodejs.org', '19', 4);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('192', '20181101', 'cnodejs.org', '18', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('193', '20181101', 'cnodejs.org', '16', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('194', '20181101', 'cnodejs.org', '15', 3);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('195', '20181101', 'cnodejs.org', '14', 3);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('196', '20181101', 'cnodejs.org', '13', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('197', '20181101', 'cnodejs.org', '12', 3);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('198', '20181101', 'cnodejs.org', '11', 3);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('199', '20181101', 'cnodejs.org', '10', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('2', '20181101', 'www.w3c.com.cn', '15', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('20', '20181101', 'www.google.com.tw', '08', 3);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('200', '20181101', 'cnodejs.org', '09', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('201', '20181101', 'cnodejs.org', '08', 13);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('202', '20181101', 'cnodejs.org', '07', 5);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('203', '20181101', 'cnodejs.org', '04', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('204', '20181101', 'cnodejs.org', '02', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('205', '20181101', 'cnodejs.org', '01', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('206', '20181101', 'cnodejs.org', '00', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('207', '20181101', 'cn.bing.com', '08', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('208', '20181101', 'cloud.feedly.com', '10', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('209', '20181101', 'blog.fens.me.', '09', 9);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('21', '20181101', 'www.google.com.tw', '02', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('210', '20181101', 'blog.fens.me', '23', 168);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('211', '20181101', 'blog.fens.me', '22', 133);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('212', '20181101', 'blog.fens.me', '21', 27);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('213', '20181101', 'blog.fens.me', '20', 34);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('214', '20181101', 'blog.fens.me', '19', 122);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('215', '20181101', 'blog.fens.me', '18', 68);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('216', '20181101', 'blog.fens.me', '17', 104);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('217', '20181101', 'blog.fens.me', '16', 181);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('218', '20181101', 'blog.fens.me', '15', 477);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('219', '20181101', 'blog.fens.me', '14', 259);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('22', '20181101', 'www.google.com.tw', '01', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('220', '20181101', 'blog.fens.me', '13', 243);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('221', '20181101', 'blog.fens.me', '12', 397);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('222', '20181101', 'blog.fens.me', '11', 245);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('223', '20181101', 'blog.fens.me', '10', 307);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('224', '20181101', 'blog.fens.me', '09', 1047);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('225', '20181101', 'blog.fens.me', '08', 1556);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('226', '20181101', 'blog.fens.me', '07', 711);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('227', '20181101', 'blog.fens.me', '06', 129);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('228', '20181101', 'blog.fens.me', '05', 336);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('229', '20181101', 'blog.fens.me', '04', 257);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('23', '20181101', 'www.google.com.sg', '03', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('230', '20181101', 'blog.fens.me', '03', 276);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('231', '20181101', 'blog.fens.me', '02', 311);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('232', '20181101', 'blog.fens.me', '01', 89);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('233', '20181101', 'blog.fens.me', '00', 111);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('234', '20181101', 'blog.csdn.net', '08', 3);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('235', '20181101', 'blog.csdn.net', '04', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('236', '20181101', 'blog.chinaunix.net', '07', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('237', '20181101', 'angularjs.cn', '23', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('238', '20181101', 'angularjs.cn', '15', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('239', '20181101', 'angularjs.cn', '13', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('24', '20181101', 'www.google.com.hk', '22', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('240', '20181101', 'angularjs.cn', '12', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('241', '20181101', 'angularjs.cn', '10', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('242', '20181101', 'angularjs.cn', '09', 8);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('243', '20181101', 'angularjs.cn', '08', 6);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('244', '20181101', 'angularjs.cn', '05', 4);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('245', '20181101', 'angularjs.cn', '03', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('246', '20181101', 'angularjs.cn', '02', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('247', '20181101', 'angularjs.cn', '00', 3);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('248', '20181101', '74.125.128.160', '07', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('249', '20181101', '50.116.27.194', '13', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('25', '20181101', 'www.google.com.hk', '19', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('250', '20181101', '42.121.84.157', '13', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('251', '20181101', '203.208.46.145', '23', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('252', '20181101', '203.208.46.145', '12', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('253', '20181101', '100rmb.info', '10', 3);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('254', '20181101', '100RMB.INFO', '19', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('26', '20181101', 'www.google.com.hk', '17', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('27', '20181101', 'www.google.com.hk', '16', 3);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('28', '20181101', 'www.google.com.hk', '15', 9);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('29', '20181101', 'www.google.com.hk', '14', 3);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('3', '20181101', 'www.w3c.com.cn', '09', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('30', '20181101', 'www.google.com.hk', '13', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('31', '20181101', 'www.google.com.hk', '12', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('32', '20181101', 'www.google.com.hk', '11', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('33', '20181101', 'www.google.com.hk', '10', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('34', '20181101', 'www.google.com.hk', '09', 11);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('35', '20181101', 'www.google.com.hk', '08', 9);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('36', '20181101', 'www.google.com.hk', '07', 20);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('37', '20181101', 'www.google.com.hk', '05', 5);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('38', '20181101', 'www.google.com.hk', '04', 4);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('39', '20181101', 'www.google.com.hk', '02', 3);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('4', '20181101', 'www.ruanyifeng.com', '09', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('40', '20181101', 'www.google.com.hk', '01', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('41', '20181101', 'www.google.com.hk', '00', 3);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('42', '20181101', 'www.google.com.au', '10', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('43', '20181101', 'www.google.com', '23', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('44', '20181101', 'www.google.com', '18', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('45', '20181101', 'www.google.com', '16', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('46', '20181101', 'www.google.com', '14', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('47', '20181101', 'www.google.com', '13', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('48', '20181101', 'www.google.com', '09', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('49', '20181101', 'www.google.com', '08', 3);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('5', '20181101', 'www.linkedin.com', '14', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('50', '20181101', 'www.google.com', '07', 3);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('51', '20181101', 'www.google.com', '06', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('52', '20181101', 'www.google.com', '04', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('53', '20181101', 'www.google.com', '03', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('54', '20181101', 'www.google.com', '02', 3);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('55', '20181101', 'www.google.co.th', '09', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('56', '20181101', 'www.google.ca', '20', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('57', '20181101', 'www.fens.me', '23', 4);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('58', '20181101', 'www.fens.me', '22', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('59', '20181101', 'www.fens.me', '17', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('6', '20181101', 'www.leonarding.com', '20', 9);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('60', '20181101', 'www.fens.me', '16', 8);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('61', '20181101', 'www.fens.me', '15', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('62', '20181101', 'www.fens.me', '13', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('63', '20181101', 'www.fens.me', '12', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('64', '20181101', 'www.fens.me', '10', 5);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('65', '20181101', 'www.fens.me', '09', 7);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('66', '20181101', 'www.fens.me', '08', 26);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('67', '20181101', 'www.fens.me', '07', 6);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('68', '20181101', 'www.fens.me', '04', 14);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('69', '20181101', 'www.fens.me', '03', 6);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('7', '20181101', 'www.leonarding.com', '19', 88);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('70', '20181101', 'www.fens.me', '00', 13);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('71', '20181101', 'www.diffbot.com', '03', 4);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('72', '20181101', 'www.dataguru.cn', '16', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('73', '20181101', 'www.dataguru.cn', '15', 3);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('74', '20181101', 'www.dataguru.cn', '14', 5);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('75', '20181101', 'www.dataguru.cn', '13', 3);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('76', '20181101', 'www.dataguru.cn', '12', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('77', '20181101', 'www.dataguru.cn', '09', 9);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('78', '20181101', 'www.dataguru.cn', '08', 7);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('79', '20181101', 'www.dataguru.cn', '07', 10);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('8', '20181101', 'www.leonarding.com', '16', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('80', '20181101', 'www.dataguru.cn', '04', 6);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('81', '20181101', 'www.dataguru.cn', '03', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('82', '20181101', 'www.dataguru.cn', '02', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('83', '20181101', 'www.baidu.com', '16', 40);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('84', '20181101', 'www.baidu.com', '15', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('85', '20181101', 'www.baidu.com', '13', 27);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('86', '20181101', 'www.baidu.com', '11', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('87', '20181101', 'www.baidu.com', '10', 15);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('88', '20181101', 'www.baidu.com', '09', 27);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('89', '20181101', 'www.baidu.com', '08', 15);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('9', '20181101', 'www.leonarding.com', '12', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('90', '20181101', 'www.baidu.com', '07', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('91', '20181101', 'www.baidu.com', '06', 14);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('92', '20181101', 'www.baidu.com', '03', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('93', '20181101', 'www.angularjs.cn', '20', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('94', '20181101', 'www.angularjs.cn', '17', 1);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('95', '20181101', 'www.angularjs.cn', '16', 2);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('96', '20181101', 'www.angularjs.cn', '15', 5);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('97', '20181101', 'www.angularjs.cn', '14', 6);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('98', '20181101', 'www.angularjs.cn', '13', 5);
INSERT INTO `dw_pvs_refererhost_everyhour_oneday` VALUES ('99', '20181101', 'www.angularjs.cn', '12', 2);

-- ----------------------------
-- Table structure for dw_pvs_refhost_topn_everyhour
-- ----------------------------
DROP TABLE IF EXISTS `dw_pvs_refhost_topn_everyhour`;
CREATE TABLE `dw_pvs_refhost_topn_everyhour`  (
  `daystr` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hour` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `toporder` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ref_host` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ref_host_cnts` bigint(50) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dw_pvs_refhost_topn_everyhour
-- ----------------------------
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '00', '1', 'h2w.iask.cn', 6);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '00', '2', 'angularjs.cn', 3);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '00', '3', 'www.google.com.hk', 3);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '01', '1', 'blog.fens.me', 89);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '01', '2', 'cos.name', 3);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '01', '3', 'www.google.com.tw', 2);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '02', '1', 'blog.fens.me', 311);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '02', '2', 'www.google.com', 3);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '02', '3', 'www.google.com.hk', 3);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '03', '1', 'cos.name', 8);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '03', '2', 'www.angularjs.cn', 7);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '03', '3', 'www.fens.me', 6);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '04', '1', 'www.100rmb.info', 62);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '04', '2', 'www.angularjs.cn', 6);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '04', '3', 'www.dataguru.cn', 6);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '05', '1', 'www.google.com.hk', 5);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '05', '2', 'angularjs.cn', 4);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '05', '3', 'cos.name', 4);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '06', '1', 'blog.fens.me', 68);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '06', '2', 'blog.fens.me', 61);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '06', '3', 'www.angularjs.cn', 3);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '07', '1', 'blog.fens.me', 711);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '07', '2', 'r.dataguru.cn', 6);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '07', '3', 'www.fens.me', 6);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '08', '1', 'www.google.com.hk', 9);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '08', '2', 'www.dataguru.cn', 7);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '08', '3', 'angularjs.cn', 6);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '09', '1', 'blog.fens.me.', 9);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '09', '2', 'www.dataguru.cn', 9);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '09', '3', 'r.dataguru.cn', 8);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '10', '1', 'www.angularjs.cn', 7);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '10', '2', 'www.fens.me', 5);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '10', '3', 'blog.fens.me', 307);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '11', '1', 'www.angularjs.cn', 7);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '11', '2', 'cos.name', 4);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '11', '3', 'cnodejs.org', 3);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '12', '1', 'blog.fens.me', 397);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '12', '2', 'cnodejs.org', 3);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '12', '3', 'www.angularjs.cn', 2);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '13', '1', 'cos.name', 6);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '13', '2', 'www.angularjs.cn', 5);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '13', '3', 'www.dataguru.cn', 3);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '14', '1', 'www.angularjs.cn', 6);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '14', '2', 'www.dataguru.cn', 5);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '14', '3', 'cos.name', 4);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '15', '1', 'www.google.com.hk', 9);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '15', '2', 'cos.name', 8);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '15', '3', 'www.angularjs.cn', 5);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '16', '1', 'www.fens.me', 8);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '16', '2', 'fens.me', 6);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '16', '3', 'cos.name', 5);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '17', '1', 'cos.name', 3);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '17', '2', 'blog.fens.me', 104);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '17', '3', 'www.angularjs.cn', 1);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '18', '1', 'blog.fens.me', 68);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '18', '2', 'r.mail.qq.com', 3);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '18', '3', 'cnodejs.org', 2);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '19', '1', 'www.leonarding.com', 88);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '19', '2', 'cnodejs.org', 4);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '19', '3', 'www.google.com.hk', 2);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '20', '1', 'www.leonarding.com', 9);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '20', '2', 'blog.fens.me', 34);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '20', '3', 'comp.freemined.com', 2);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '21', '1', 'blog.fens.me', 27);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '21', '2', 'cos.name', 2);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '21', '3', 'whois.domaintools.com', 1);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '22', '1', 'www.fens.me', 2);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '22', '2', 'blog.fens.me', 133);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '22', '3', 'www.google.com.hk', 1);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '23', '1', 'www.fens.me', 4);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '23', '2', 'cos.name', 2);
INSERT INTO `dw_pvs_refhost_topn_everyhour` VALUES ('20181101', '23', '3', 'blog.fens.me', 168);

-- ----------------------------
-- Table structure for dw_referer_newuser_topn
-- ----------------------------
DROP TABLE IF EXISTS `dw_referer_newuser_topn`;
CREATE TABLE `dw_referer_newuser_topn`  (
  `od` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `day` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `http_referer` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `count_referer` bigint(50) NULL DEFAULT NULL,
  PRIMARY KEY (`od`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dw_referer_newuser_topn
-- ----------------------------
INSERT INTO `dw_referer_newuser_topn` VALUES ('31', '20181101', '\"http://blog.fens.me/series-nodejs/\"', 28);
INSERT INTO `dw_referer_newuser_topn` VALUES ('34', '20181101', '\"http://blog.fens.me/series-hadoop-family/\"', 23);
INSERT INTO `dw_referer_newuser_topn` VALUES ('56', '20181101', '\"http://blog.fens.me/hadoop-zookeeper-intro/\"', 25);
INSERT INTO `dw_referer_newuser_topn` VALUES ('57', '20181101', '\"http://blog.fens.me/hadoop-mahout-roadmap/\"', 116);
INSERT INTO `dw_referer_newuser_topn` VALUES ('59', '20181101', '\"http://blog.fens.me/hadoop-hive-intro/\"', 70);
INSERT INTO `dw_referer_newuser_topn` VALUES ('61', '20181101', '\"http://blog.fens.me/hadoop-family-roadmap/\"', 44);
INSERT INTO `dw_referer_newuser_topn` VALUES ('62', '20181101', '\"http://blog.fens.me/finance-rhive-repurchase/\"', 109);
INSERT INTO `dw_referer_newuser_topn` VALUES ('67', '20181101', '\"http://blog.fens.me/cassandra-clustor/\"', 26);
INSERT INTO `dw_referer_newuser_topn` VALUES ('72', '20181101', '\"http://blog.fens.me/\"', 57);
INSERT INTO `dw_referer_newuser_topn` VALUES ('75', '20181101', '\"-\"', 605);

-- ----------------------------
-- Table structure for dw_referer_olduser_topn
-- ----------------------------
DROP TABLE IF EXISTS `dw_referer_olduser_topn`;
CREATE TABLE `dw_referer_olduser_topn`  (
  `od` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `day` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `http_referer` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `count_referer` bigint(50) NULL DEFAULT NULL,
  PRIMARY KEY (`od`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dw_referer_olduser_topn
-- ----------------------------
INSERT INTO `dw_referer_olduser_topn` VALUES ('10', '20181101', '\"http://www.fens.me/\"', 22);
INSERT INTO `dw_referer_olduser_topn` VALUES ('36', '20181101', '\"http://blog.fens.me/nodejs-mongoose-json/\"', 24);
INSERT INTO `dw_referer_olduser_topn` VALUES ('39', '20181101', '\"http://blog.fens.me/hadoop-mahout-roadmap/\"', 66);
INSERT INTO `dw_referer_olduser_topn` VALUES ('41', '20181101', '\"http://blog.fens.me/hadoop-hive-intro/\"', 25);
INSERT INTO `dw_referer_olduser_topn` VALUES ('42', '20181101', '\"http://blog.fens.me/hadoop-family-roadmap/\"', 53);
INSERT INTO `dw_referer_olduser_topn` VALUES ('44', '20181101', '\"http://blog.fens.me/finance-rhive-repurchase/\"', 46);
INSERT INTO `dw_referer_olduser_topn` VALUES ('47', '20181101', '\"http://blog.fens.me/angularjs-webstorm-ide/\"', 69);
INSERT INTO `dw_referer_olduser_topn` VALUES ('48', '20181101', '\"http://blog.fens.me/about/\"', 20);
INSERT INTO `dw_referer_olduser_topn` VALUES ('50', '20181101', '\"http://blog.fens.me/\"', 20);
INSERT INTO `dw_referer_olduser_topn` VALUES ('52', '20181101', '\"-\"', 26);

-- ----------------------------
-- Table structure for dw_user_newold_everyday
-- ----------------------------
DROP TABLE IF EXISTS `dw_user_newold_everyday`;
CREATE TABLE `dw_user_newold_everyday`  (
  `od` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `day` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `count_new_visit` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `count_old_visit` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `new_rate` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `old_rate` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`od`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dw_user_newold_everyday
-- ----------------------------
INSERT INTO `dw_user_newold_everyday` VALUES ('1', '20181101', '18', '35', '66.0', '34.0');

-- ----------------------------
-- Table structure for dw_user_returnrate_everyday
-- ----------------------------
DROP TABLE IF EXISTS `dw_user_returnrate_everyday`;
CREATE TABLE `dw_user_returnrate_everyday`  (
  `od` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `day` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `count_return` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `count_noreturn` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `return_rate` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`od`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dw_user_returnrate_everyday
-- ----------------------------
INSERT INTO `dw_user_returnrate_everyday` VALUES ('1', '20181101', '2', '51', '4.0');

-- ----------------------------
-- Table structure for dw_uvs_everyhour_oneday
-- ----------------------------
DROP TABLE IF EXISTS `dw_uvs_everyhour_oneday`;
CREATE TABLE `dw_uvs_everyhour_oneday`  (
  `od` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `day` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hour` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `uvs` bigint(50) NULL DEFAULT NULL,
  PRIMARY KEY (`od`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dw_uvs_everyhour_oneday
-- ----------------------------
INSERT INTO `dw_uvs_everyhour_oneday` VALUES ('1', '20181101', '23', 1);
INSERT INTO `dw_uvs_everyhour_oneday` VALUES ('10', '20181101', '11', 2);
INSERT INTO `dw_uvs_everyhour_oneday` VALUES ('11', '20181101', '10', 3);
INSERT INTO `dw_uvs_everyhour_oneday` VALUES ('12', '20181101', '09', 10);
INSERT INTO `dw_uvs_everyhour_oneday` VALUES ('13', '20181101', '08', 7);
INSERT INTO `dw_uvs_everyhour_oneday` VALUES ('14', '20181101', '07', 12);
INSERT INTO `dw_uvs_everyhour_oneday` VALUES ('15', '20181101', '05', 1);
INSERT INTO `dw_uvs_everyhour_oneday` VALUES ('16', '20181101', '04', 1);
INSERT INTO `dw_uvs_everyhour_oneday` VALUES ('17', '20181101', '03', 3);
INSERT INTO `dw_uvs_everyhour_oneday` VALUES ('18', '20181101', '02', 2);
INSERT INTO `dw_uvs_everyhour_oneday` VALUES ('19', '20181101', '00', 4);
INSERT INTO `dw_uvs_everyhour_oneday` VALUES ('2', '20181101', '22', 1);
INSERT INTO `dw_uvs_everyhour_oneday` VALUES ('3', '20181101', '19', 1);
INSERT INTO `dw_uvs_everyhour_oneday` VALUES ('4', '20181101', '17', 2);
INSERT INTO `dw_uvs_everyhour_oneday` VALUES ('5', '20181101', '16', 1);
INSERT INTO `dw_uvs_everyhour_oneday` VALUES ('6', '20181101', '15', 1);
INSERT INTO `dw_uvs_everyhour_oneday` VALUES ('7', '20181101', '14', 1);
INSERT INTO `dw_uvs_everyhour_oneday` VALUES ('8', '20181101', '13', 2);
INSERT INTO `dw_uvs_everyhour_oneday` VALUES ('9', '20181101', '12', 4);

-- ----------------------------
-- Table structure for dw_vvs_everyhour_oneday
-- ----------------------------
DROP TABLE IF EXISTS `dw_vvs_everyhour_oneday`;
CREATE TABLE `dw_vvs_everyhour_oneday`  (
  `od` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `day` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hour` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `vvs` bigint(50) NULL DEFAULT NULL,
  PRIMARY KEY (`od`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dw_vvs_everyhour_oneday
-- ----------------------------
INSERT INTO `dw_vvs_everyhour_oneday` VALUES ('1', '20181101', '23', 38);
INSERT INTO `dw_vvs_everyhour_oneday` VALUES ('10', '20181101', '14', 62);
INSERT INTO `dw_vvs_everyhour_oneday` VALUES ('11', '20181101', '13', 71);
INSERT INTO `dw_vvs_everyhour_oneday` VALUES ('12', '20181101', '12', 52);
INSERT INTO `dw_vvs_everyhour_oneday` VALUES ('13', '20181101', '11', 54);
INSERT INTO `dw_vvs_everyhour_oneday` VALUES ('14', '20181101', '10', 107);
INSERT INTO `dw_vvs_everyhour_oneday` VALUES ('15', '20181101', '09', 149);
INSERT INTO `dw_vvs_everyhour_oneday` VALUES ('16', '20181101', '08', 129);
INSERT INTO `dw_vvs_everyhour_oneday` VALUES ('17', '20181101', '07', 98);
INSERT INTO `dw_vvs_everyhour_oneday` VALUES ('18', '20181101', '06', 41);
INSERT INTO `dw_vvs_everyhour_oneday` VALUES ('19', '20181101', '05', 48);
INSERT INTO `dw_vvs_everyhour_oneday` VALUES ('2', '20181101', '22', 52);
INSERT INTO `dw_vvs_everyhour_oneday` VALUES ('20', '20181101', '04', 55);
INSERT INTO `dw_vvs_everyhour_oneday` VALUES ('21', '20181101', '03', 67);
INSERT INTO `dw_vvs_everyhour_oneday` VALUES ('22', '20181101', '02', 54);
INSERT INTO `dw_vvs_everyhour_oneday` VALUES ('23', '20181101', '01', 42);
INSERT INTO `dw_vvs_everyhour_oneday` VALUES ('24', '20181101', '00', 39);
INSERT INTO `dw_vvs_everyhour_oneday` VALUES ('3', '20181101', '21', 44);
INSERT INTO `dw_vvs_everyhour_oneday` VALUES ('4', '20181101', '20', 35);
INSERT INTO `dw_vvs_everyhour_oneday` VALUES ('5', '20181101', '19', 83);
INSERT INTO `dw_vvs_everyhour_oneday` VALUES ('6', '20181101', '18', 42);
INSERT INTO `dw_vvs_everyhour_oneday` VALUES ('7', '20181101', '17', 55);
INSERT INTO `dw_vvs_everyhour_oneday` VALUES ('8', '20181101', '16', 93);
INSERT INTO `dw_vvs_everyhour_oneday` VALUES ('9', '20181101', '15', 72);

-- ----------------------------
-- Table structure for single_index_everyday
-- ----------------------------
DROP TABLE IF EXISTS `single_index_everyday`;
CREATE TABLE `single_index_everyday`  (
  `od` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `day` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `avg_session_everyip` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `avg_access_time` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `leave_rate` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`od`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of single_index_everyday
-- ----------------------------
INSERT INTO `single_index_everyday` VALUES ('1', '20181101', '1.08', '211.25', '80.7');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `od` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `daystr` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hour` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pvs` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`od`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', '20181101', '23', '382');
INSERT INTO `test` VALUES ('10', '20181101', '14', '514');
INSERT INTO `test` VALUES ('11', '20181101', '13', '531');
INSERT INTO `test` VALUES ('12', '20181101', '12', '621');
INSERT INTO `test` VALUES ('13', '20181101', '11', '571');
INSERT INTO `test` VALUES ('14', '20181101', '10', '568');
INSERT INTO `test` VALUES ('15', '20181101', '09', '1374');
INSERT INTO `test` VALUES ('16', '20181101', '08', '2052');
INSERT INTO `test` VALUES ('17', '20181101', '07', '1010');
INSERT INTO `test` VALUES ('18', '20181101', '06', '261');
INSERT INTO `test` VALUES ('19', '20181101', '05', '540');
INSERT INTO `test` VALUES ('2', '20181101', '22', '351');
INSERT INTO `test` VALUES ('20', '20181101', '04', '569');
INSERT INTO `test` VALUES ('21', '20181101', '03', '552');
INSERT INTO `test` VALUES ('22', '20181101', '02', '546');
INSERT INTO `test` VALUES ('23', '20181101', '01', '324');
INSERT INTO `test` VALUES ('24', '20181101', '00', '312');
INSERT INTO `test` VALUES ('3', '20181101', '21', '213');
INSERT INTO `test` VALUES ('4', '20181101', '20', '211');
INSERT INTO `test` VALUES ('5', '20181101', '19', '390');
INSERT INTO `test` VALUES ('6', '20181101', '18', '262');
INSERT INTO `test` VALUES ('7', '20181101', '17', '382');
INSERT INTO `test` VALUES ('8', '20181101', '16', '475');
INSERT INTO `test` VALUES ('9', '20181101', '15', '759');

SET FOREIGN_KEY_CHECKS = 1;

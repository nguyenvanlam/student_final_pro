/*
Navicat MySQL Data Transfer

Source Server         : nguyenlam
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : student_final_pro

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2016-05-02 09:20:31
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `tbl_common_coords`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_common_coords`;
CREATE TABLE `tbl_common_coords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `common_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coord_x` double NOT NULL,
  `coord_y` double DEFAULT NULL,
  `id_university` int(11) DEFAULT NULL,
  `common_type` int(11) DEFAULT NULL,
  `other` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_common_coords
-- ----------------------------
INSERT INTO `tbl_common_coords` VALUES ('1', 'a4', '21.027502', '105.803014', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('2', 'a4', '21.027419', '105.802958', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('3', 'a4', '21.027151', '105.8035', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('4', 'a4', '21.027282', '105.803572', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('5', 'a4', '21.027399', '105.803333', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('6', 'a4', '21.027349', '105.8033', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('7', 'a1', '21.028761', '105.80265', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('8', 'a1', '21.028549', '105.802522', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('9', 'a1', '21.028507', '105.802579', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('10', 'a1', '21.028435', '105.802543', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('11', 'a1', '21.028401', '105.802623', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('12', 'a1', '21.028685', '105.802794', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('13', 'a2', '21.028396', '105.803266', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('14', 'a2', '21.02827', '105.803203', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('15', 'a2', '21.028021', '105.803719', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('16', 'a2', '21.028122', '105.803798', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('17', 'a5', '21.027897', '105.803694', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('18', 'a5', '21.027821', '105.80364', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('19', 'a5', '21.027824', '105.803601', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('20', 'a5', '21.027774', '105.803562', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('21', 'a5', '21.027782', '105.803514', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('22', 'a5', '21.027657', '105.803442', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('23', 'a5', '21.027581', '105.803583', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('24', 'a5', '21.027506', '105.803586', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('25', 'a5', '21.027378', '105.803526', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('26', 'a5', '21.027322', '105.803628', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('27', 'a5', '21.027785', '105.803913', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('28', 'a3', '21.027172', '105.803365', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('29', 'a3', '21.027049', '105.803287', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('30', 'a3', '21.027018', '105.803317', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('31', 'a3', '21.026517', '105.803012', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('32', 'a3', '21.026461', '105.803104', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('33', 'a3', '21.027099', '105.803521', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('34', 'a7', '21.026788', '105.802758', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('35', 'a7', '21.026749', '105.80274', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('36', 'a7', '21.026612', '105.802985', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('37', 'a7', '21.026534', '105.802937', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('38', 'a7', '21.026721', '105.80257', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('39', 'a7', '21.026835', '105.802636', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('40', 'a9', '21.028287', '105.802333', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('41', 'a9', '21.02797', '105.802124', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('42', 'a9', '21.027903', '105.80222', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('43', 'a9', '21.028122', '105.802368', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('44', 'a9', '21.02811', '105.802408', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('45', 'a9', '21.028207', '105.802465', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('50', 'a6', '21.02796', '105.802103', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('51', 'a6', '21.027623', '105.801828', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('52', 'a6', '21.027556', '105.801941', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('53', 'a6', '21.027892', '105.802208', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('54', 'htl', '21.027974', '105.802738', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('55', 'htl', '21.027727', '105.802569', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('56', 'htl', '21.02759', '105.802853', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('57', 'htl', '21.02784', '105.803013', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('58', 'b1', '21.027772', '105.80237', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('59', 'b1', '21.02758', '105.802221', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('60', 'b1', '21.027538', '105.802298', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('61', 'b1', '21.027728', '105.802442', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('62', 'b2', '21.028331', '105.802732', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('63', 'b2', '21.028276', '105.802818', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('64', 'b2', '21.028084', '105.802685', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('65', 'b2', '21.028137', '105.802596', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('66', 'yt1', '21.028548', '105.802869', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('67', 'yt1', '21.028493', '105.802958', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('68', 'yt1', '21.02832', '105.802839', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('69', 'yt1', '21.02837', '105.802753', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('70', 'yt2', '21.028432', '105.80306', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('71', 'yt2', '21.028382', '105.803137', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('72', 'yt2', '21.028209', '105.803015', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('73', 'yt2', '21.028249', '105.802938', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('78', 'bhtl', '21.027633', '105.80251', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('79', 'bhtl', '21.027481', '105.802424', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('80', 'bhtl', '21.027318', '105.802705', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('81', 'bhtl', '21.027476', '105.802797', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('82', 'center_utc', '21.027844', '105.803253', '1', '3', null);
INSERT INTO `tbl_common_coords` VALUES ('83', 'a8', '21.029015', '105.802265', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('84', 'a8', '21.028878', '105.802185', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('85', 'a8', '21.028684', '105.80254', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('86', 'a8', '21.02882', '105.802624', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('87', 't1', '21.028467', '105.802443', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('88', 't1', '21.02842', '105.802407', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('89', 't1', '21.028383', '105.802473', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('90', 't1', '21.028425', '105.802506', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('91', 't2', '21.028397', '105.802395', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('92', 't2', '21.028322', '105.80235', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('93', 't2', '21.02828', '105.80243', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('94', 't2', '21.028356', '105.802482', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('95', 'a2', '21.028262', '105.803413', '1', '2', 'nghieng45');
INSERT INTO `tbl_common_coords` VALUES ('96', 'a4', '21.027389', '105.80311', '1', '2', 'nghieng45');
INSERT INTO `tbl_common_coords` VALUES ('97', 'a7', '21.026701', '105.802747', '1', '2', 'nghieng45');
INSERT INTO `tbl_common_coords` VALUES ('98', 'hội trường lớn', '21.027895', '105.802671', '1', '2', 'nghieng45');
INSERT INTO `tbl_common_coords` VALUES ('99', 'a5', '21.027642', '105.803581', '1', '2', 'nghieng315');
INSERT INTO `tbl_common_coords` VALUES ('100', 'a3', '21.026813', '105.803214', '1', '2', 'nghieng315');
INSERT INTO `tbl_common_coords` VALUES ('101', 'a1', '21.028679', '105.802619', '1', '2', 'nghieng315');
INSERT INTO `tbl_common_coords` VALUES ('102', 'area_utc', '21.029228', '105.802297', '1', '4', null);
INSERT INTO `tbl_common_coords` VALUES ('103', 'area_utc', '105.801981', '21.028705', '1', '4', null);
INSERT INTO `tbl_common_coords` VALUES ('104', 'area_utc', '21.02841', '105.802369', '1', '4', null);
INSERT INTO `tbl_common_coords` VALUES ('105', 'area_utc', '21.027312', '105.80146', '1', '4', null);
INSERT INTO `tbl_common_coords` VALUES ('106', 'area_utc', '21.026355', '105.803108', '1', '4', null);
INSERT INTO `tbl_common_coords` VALUES ('107', 'area_utc', '21.028312', '105.804218', '1', '4', null);
INSERT INTO `tbl_common_coords` VALUES ('108', 'a8', '21.028903', '105.802334', '1', '2', 'nghieng45');
INSERT INTO `tbl_common_coords` VALUES ('109', 'a9', '21.028175', '105.802294', '1', '2', 'nghieng315');
INSERT INTO `tbl_common_coords` VALUES ('110', 'a6', '21.027804', '105.802008', '1', '2', 'nghieng315');
INSERT INTO `tbl_common_coords` VALUES ('111', 't1', '21.028475', '105.802428', '1', '2', 'nghieng315');
INSERT INTO `tbl_common_coords` VALUES ('112', 't2', '21.02838', '105.802377', '1', '2', 'nghieng315');
INSERT INTO `tbl_common_coords` VALUES ('113', '1', '21.037516', '105.781205', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('114', '1', '21.037355', '105.781369', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('115', '1', '21.037522', '105.781598', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('116', '1', '21.03768', '105.781419', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('117', '2', '21.037836', '105.781521', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('118', '2', '21.037686', '105.781664', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('119', 'center_international', '21.037866', '105.782362', '2', '3', null);
INSERT INTO `tbl_common_coords` VALUES ('120', '2', '21.037821', '105.781816', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('121', '2', '21.037952', '105.781691', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('122', '3', '21.037679', '105.782257', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('123', '3', '21.037568', '105.782257', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('124', '3', '21.037557', '105.782379', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('125', '3', '21.037184', '105.782364', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('126', '3', '21.03716', '105.782882', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('127', '3', '21.037277', '105.782881', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('128', '3', '21.037293', '105.782778', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('129', '3', '21.037538', '105.78278', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('130', '3', '21.037532', '105.782816', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('131', '3', '21.037654', '105.782819', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('132', '3', '21.037679', '105.782254', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('133', '4', '21.037649', '105.783065', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('134', '4', '21.03751', '105.783062', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('135', '4', '21.03749', '105.783644', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('136', '4', '21.037618', '105.783641', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('137', '4', '21.037635', '105.783062', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('138', '5', '21.038373', '105.782371', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('139', '5', '21.038284', '105.782356', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('140', '5', '21.038284', '105.782452', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('141', '5', '21.038029', '105.782458', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('142', '5', '21.038029', '105.782371', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('143', '5', '21.03792', '105.782377', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('144', '5', '21.037918', '105.782941', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('145', '5', '21.0384', '105.782947', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('146', '6', '21.038594', '105.78119', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('147', '6', '21.038482', '105.781181', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('148', '6', '21.038441', '105.782312', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('149', '6', '21.038533', '105.782312', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('150', '7', '21.038347', '105.781399', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('151', '7', '21.038228', '105.781396', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('152', '7', '21.038216', '105.781578', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('153', '7', '21.038333', '105.781575', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('154', '8', '21.038329', '105.781178', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('155', '8', '21.037941', '105.781163', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('156', '8', '21.037955', '105.781297', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('157', '8', '21.038329', '105.781321', '2', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('158', '9', '21.037619', '105.783831', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('159', '9', '21.037494', '105.783837', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('160', '9', '21.037477', '105.784429', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('161', '9', '21.037583', '105.784428', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('162', '10', '0', '105.669601', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('163', '10', '21.106001', '105.669553', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('164', '10', '21.105976', '105.669619', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('165', '10', '21.106109', '105.669672', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('166', '11', '21.03722', '105.783769', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('167', '11', '21.037131', '105.783772', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('168', '11', '21.037108', '105.784258', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('169', '11', '21.037214', '105.784251', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('170', '12', '21.037231', '105.784179', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('171', '12', '21.037231', '105.784279', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('172', '12', '21.037446', '105.784287', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('173', '12', '21.037455', '105.784242', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('174', '12', '21.037488', '105.784239', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('175', '12', '21.037485', '105.784191', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('176', '13', '21.037418', '105.784299', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('177', '13', '21.037189', '105.784288', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('178', '13', '21.037189', '105.784363', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('179', '13', '21.037424', '105.78437', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('180', 'center_sp', '21.037217', '105.783331', '3', '3', null);
INSERT INTO `tbl_common_coords` VALUES ('181', 'center_foreign', '21.039109', '105.781713', '4', '3', null);
INSERT INTO `tbl_common_coords` VALUES ('182', '14', '21.039425', '105.781375', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('183', '14', '21.039411', '105.781527', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('184', '14', '21.039444', '105.781531', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('185', '14', '21.039433', '105.781799', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('186', '14', '21.039397', '105.781796', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('187', '14', '21.039394', '105.781966', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('188', '14', '21.039272', '105.781972', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('189', '14', '21.039289', '105.78180221', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('190', '14', '21.039225', '105.781802', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('191', '14', '21.039225', '105.781739', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('192', '14', '21.039319', '105.781733', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('193', '14', '21.039319', '105.781593', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('194', '14', '21.03923', '105.781599', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('195', '14', '21.039236', '105.781533', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('196', '14', '21.039291', '105.781524', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('197', '14', '21.039303', '105.781381', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('198', '15', '21.039375', '105.782083', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('199', '15', '21.039292', '105.782083', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('200', '15', '21.039286', '105.782035', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('201', '15', '21.039208', '105.782044', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('202', '15', '21.039191', '105.782121', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('203', '15', '21.039155', '105.782118', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('204', '15', '21.039158', '105.782225', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('205', '15', '21.039222', '105.782229', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('206', '15', '21.039222', '105.782267', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('207', '15', '21.039322', '105.782265', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('208', '15', '21.039333', '105.782193', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('209', '15', '21.03937', '105.782193', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('210', '16', '21.039133', '105.781895', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('211', '16', '21.039066', '105.781891', '4', null, null);
INSERT INTO `tbl_common_coords` VALUES ('212', '16', '21.039063', '105.781856', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('213', '16', '21.038977', '105.781847', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('214', '16', '21.038969', '105.781957', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('215', '16', '21.03891', '105.781957', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('216', '16', '21.03891', '105.781891', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('217', '16', '21.038788', '105.781891', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('218', '16', '21.03878', '105.782016', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('219', '16', '21.038841', '105.782017', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('220', '16', '21.038838', '105.782121', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('221', '16', '21.038941', '105.782121', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('222', '16', '21.038946', '105.782061', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('223', '16', '21.038997', '105.782067', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('224', '16', '21.038994', '105.782124', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('225', '16', '21.039097', '105.782041', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('226', '16', '21.039127', '105.782026', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('227', '16', '21.039127', '105.781904', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('228', '17', '21.038762', '105.782084', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('229', '17', '21.038664', '105.782081', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('230', '17', '21.038664', '105.78212', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('231', '17', '21.038589', '105.78212', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('232', '17', '21.038594', '105.782213', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('233', '17', '21.038622', '105.782213', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('234', '17', '21.038625', '105.782305', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('235', '17', '21.038712', '105.782308', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('236', '17', '21.038712', '105.78227', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('237', '17', '21.038793', '105.782267', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('238', '17', '21.038798', '105.782171', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('239', '17', '21.038756', '105.78217', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('240', '18', '21.03912', '105.781437', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('241', '18', '21.039131', '105.781299', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('242', '18', '21.039061', '105.78129', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('243', '18', '21.039058', '105.781246', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('244', '18', '21.038955', '105.781243', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('245', '18', '21.038955', '105.781302', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('246', '18', '21.038907', '105.781302', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('247', '18', '21.03891', '105.781404', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('248', '18', '21.038949', '105.781407', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('249', '18', '21.038946', '105.78147', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('250', '18', '21.039044', '105.781473', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('251', '18', '21.039044', '105.781437', '4', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('252', 'area_international', '21.038645', '105.781108', '2', '4', null);
INSERT INTO `tbl_common_coords` VALUES ('253', 'area_international', '21.037514', '105.781034', '2', '4', null);
INSERT INTO `tbl_common_coords` VALUES ('254', 'area_international', '21.036921', '105.781662', '2', '4', null);
INSERT INTO `tbl_common_coords` VALUES ('255', 'area_international', '21.03682', '105.783014', '2', '4', null);
INSERT INTO `tbl_common_coords` VALUES ('256', 'area_international', '21.038583', '105.782978', '2', '4', null);
INSERT INTO `tbl_common_coords` VALUES ('258', 'line1', '21.028577', '105.802861', '1', '100', ' 259 277');
INSERT INTO `tbl_common_coords` VALUES ('259', 'line1', '21.028384', '105.803197', '1', '100', '258 260');
INSERT INTO `tbl_common_coords` VALUES ('260', 'line1', '21.028205', '105.803102', '1', '100', '259 273');
INSERT INTO `tbl_common_coords` VALUES ('261', 'line1', '21.027961', '105.803596', '1', '100', '273 262');
INSERT INTO `tbl_common_coords` VALUES ('262', 'line1', '21.027458', '105.803304', '1', '100', '272 261 263');
INSERT INTO `tbl_common_coords` VALUES ('263', 'line1', '21.027617', '105.802992', '1', '100', '262 265 264');
INSERT INTO `tbl_common_coords` VALUES ('264', 'line1', '21.027247', '105.802757', '1', '100', '265 274 272 263 271');
INSERT INTO `tbl_common_coords` VALUES ('265', 'line2', '21.027247', '105.802757', '1', '100', '264 274 272 273 271');
INSERT INTO `tbl_common_coords` VALUES ('266', 'line2', '21.027178', '105.802875', '1', '100', '265 264 267 270 271');
INSERT INTO `tbl_common_coords` VALUES ('267', 'line2', '21.026845', '105.802682', '1', '100', '266 271 268');
INSERT INTO `tbl_common_coords` VALUES ('268', 'line2', '21.026669', '105.803021', '1', '100', '267 269');
INSERT INTO `tbl_common_coords` VALUES ('269', 'line2', '21.027167', '105.803332', '1', '100', '270 268');
INSERT INTO `tbl_common_coords` VALUES ('270', 'line2', '21.027334', '105.802956', '1', '100', '271 266 269');
INSERT INTO `tbl_common_coords` VALUES ('271', 'line2', '21.027178', '105.802875', '1', '100', '266 265 264 270 267 ');
INSERT INTO `tbl_common_coords` VALUES ('272', 'line3', '21.027617', '105.802992', '1', '100', '265 264 276 262');
INSERT INTO `tbl_common_coords` VALUES ('273', 'line3', '21.02809', '105.803269', '1', '100', '270 261 276');
INSERT INTO `tbl_common_coords` VALUES ('274', 'line4', '21.027443', '105.802342', '1', '100', '264 265 277');
INSERT INTO `tbl_common_coords` VALUES ('275', 'line4', '21.02809', '105.802783', '1', '100', '274 276');
INSERT INTO `tbl_common_coords` VALUES ('276', 'line4', '21.027901', '105.803165', '1', '100', '272 273 276');
INSERT INTO `tbl_common_coords` VALUES ('277', 'line1', '21.027572', '105.80212', '1', '100', '274');
INSERT INTO `tbl_common_coords` VALUES ('278', 'line5', '21.028068', '105.802531', '1', '100', '258 279 280');
INSERT INTO `tbl_common_coords` VALUES ('279', 'line5', '21.027997', '105.802689', '1', '100', '278 281 275');
INSERT INTO `tbl_common_coords` VALUES ('280', 'line6', '21.027837', '105.802352', '1', '100', '278 281 277');
INSERT INTO `tbl_common_coords` VALUES ('281', 'line6', '21.027762', '105.802519', '1', '100', '280 279 274');
INSERT INTO `tbl_common_coords` VALUES ('282', 'line7', '21.028693', '105.802935', '1', '100', '258 278');
INSERT INTO `tbl_common_coords` VALUES ('283', 'line7', '21.02899', '105.802424', '1', '100', '282');
INSERT INTO `tbl_common_coords` VALUES ('284', 'line8', '21.036848', '105.782038', '2', '100', ' 285');
INSERT INTO `tbl_common_coords` VALUES ('285', 'line8', '21.037109', '105.78204', '2', '100', '286');
INSERT INTO `tbl_common_coords` VALUES ('286', 'line8', '21.037299', '105.782043', '2', '100', '287');
INSERT INTO `tbl_common_coords` VALUES ('287', 'line8', '21.037493', '105.782049', '2', '100', '288');
INSERT INTO `tbl_common_coords` VALUES ('288', 'line8', '21.037674', '105.782049', '2', '100', '289');
INSERT INTO `tbl_common_coords` VALUES ('289', 'line8', '21.037712', '105.782275', '2', '100', '290');
INSERT INTO `tbl_common_coords` VALUES ('290', 'line8', '21.037902', '105.782273', '2', '100', '291');
INSERT INTO `tbl_common_coords` VALUES ('291', 'line8', '21.038127', '105.782282', '2', '100', '292');
INSERT INTO `tbl_common_coords` VALUES ('292', 'line8', '21.038325', '105.782286', '2', '100', '293');
INSERT INTO `tbl_common_coords` VALUES ('293', 'line8', '21.038339', '105.781982', '2', '100', '294');
INSERT INTO `tbl_common_coords` VALUES ('294', 'line8', '21.038353', '105.781725', '2', '100', '295');
INSERT INTO `tbl_common_coords` VALUES ('295', 'line8', '21.038376', '105.781493', '2', '100', '296');
INSERT INTO `tbl_common_coords` VALUES ('296', 'line8', '21.038375', '105.781361', '2', '100', '297');
INSERT INTO `tbl_common_coords` VALUES ('297', 'line8', '21.038372', '105.781251', '2', '100', '296');
INSERT INTO `tbl_common_coords` VALUES ('298', 'line9', '21.037674', '105.782049', '2', '100', '288 299 289 287');
INSERT INTO `tbl_common_coords` VALUES ('299', 'line9', '21.037752', '105.781917', '2', '100', '298 288');
INSERT INTO `tbl_common_coords` VALUES ('300', 'line9', '21.037824', '105.781836', '2', '100', '299');
INSERT INTO `tbl_common_coords` VALUES ('301', 'line9', '21.037916', '105.781768', '2', '100', '300');
INSERT INTO `tbl_common_coords` VALUES ('302', 'line9', '21.038016', '105.781723', '2', '100', '301');
INSERT INTO `tbl_common_coords` VALUES ('303', 'line9', '21.038186', '105.781711', '2', '100', '302');
INSERT INTO `tbl_common_coords` VALUES ('304', 'line9', '21.038353', '105.781725', '2', '100', '303 294 293 295');
INSERT INTO `tbl_common_coords` VALUES ('305', 'line10', '21.037299', '105.782043', '2', '100', '286 306 287');
INSERT INTO `tbl_common_coords` VALUES ('306', 'line10', '21.037532', '105.78163', '2', '100', '306');
INSERT INTO `tbl_common_coords` VALUES ('307', 'line10', '21.037719', '105.781422', '2', '100', '307');
INSERT INTO `tbl_common_coords` VALUES ('308', 'line10', '21.037941', '105.781365', '2', '100', '308');
INSERT INTO `tbl_common_coords` VALUES ('309', 'line10', '21.038236', '105.781359', '2', '100', '309 310');
INSERT INTO `tbl_common_coords` VALUES ('310', 'line10', '21.038375', '105.781361', '2', '100', '296 295 309');

-- ----------------------------
-- Table structure for `tbl_search_info`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_search_info`;
CREATE TABLE `tbl_search_info` (
  `id_search_info` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `function` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_university` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_search_info`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_search_info
-- ----------------------------
INSERT INTO `tbl_search_info` VALUES ('1', 'Phòng đọc sách tiếng việt', 'tầng 5 - A8', 'phòng đọc sách tiếng việt', 'sáng: 8h15 - 11h15, chiều: 13h15 - 16h45', '1');
INSERT INTO `tbl_search_info` VALUES ('2', 'Phòng đọc sách ngoại văn, luận văn, luận án và nghiên cứu khoa học', 'tầng 6 - A8', 'Phòng đọc sách ngoại văn, luận văn, luận án và nghiên cứu khoa học', 'sáng: 8h15 - 11h15, chiều: 13h15 - 16h45', null);
INSERT INTO `tbl_search_info` VALUES ('3', 'Phòng mượn', 'tầng 7 - A8', 'Phòng mượn', 'sáng: 8h15 - 11h15, chiều: 13h15 - 16h45', null);
INSERT INTO `tbl_search_info` VALUES ('4', 'Phòng đọc sách điện tử', 'tầng 7 - A8', 'Phòng đọc sách điện tử', 'sáng: 8h15 - 11h15, chiều: 13h15 - 16h45', null);
INSERT INTO `tbl_search_info` VALUES ('5', 'Phòng giám đốc thư viện', 'tầng 5 - A8', 'Phòng giám đốc thư viện', null, null);
INSERT INTO `tbl_search_info` VALUES ('6', 'Phòng phó giám đốc thư viện', 'tầng 5 - A8', 'Phòng phó giám đốc thư viện', null, null);
INSERT INTO `tbl_search_info` VALUES ('7', 'Phòng nghiệp vụ thư viện', 'tầng 5 - A8', 'Phòng nghiệp vụ thư viện', null, null);
INSERT INTO `tbl_search_info` VALUES ('8', 'Trung tâm ứng dụng CNTT - Máy chủ', 'tầng 5 - A8', 'Trung tâm ứng dụng CNTT - Máy chủ', null, null);

-- ----------------------------
-- Table structure for `tbl_search_label`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_search_label`;
CREATE TABLE `tbl_search_label` (
  `label` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `coord_x` double NOT NULL,
  `coord_y` double NOT NULL,
  `id_university` int(11) DEFAULT NULL,
  PRIMARY KEY (`label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_search_label
-- ----------------------------
INSERT INTO `tbl_search_label` VALUES ('A1', '21.028635', '105.802658', '1');
INSERT INTO `tbl_search_label` VALUES ('A2', '21.028261', '105.803505', '1');
INSERT INTO `tbl_search_label` VALUES ('A3', '21.026823', '105.80324', '1');
INSERT INTO `tbl_search_label` VALUES ('A4', '21.027403', '105.803217', '1');
INSERT INTO `tbl_search_label` VALUES ('A5', '21.027592', '105.803719', '1');
INSERT INTO `tbl_search_label` VALUES ('A6', '21.027753', '105.802014', '1');
INSERT INTO `tbl_search_label` VALUES ('A7', '21.026732', '105.802726', '1');
INSERT INTO `tbl_search_label` VALUES ('A8', '21.028875', '105.802407', '1');
INSERT INTO `tbl_search_label` VALUES ('A9', '21.028126', '105.80231', '1');
INSERT INTO `tbl_search_label` VALUES ('B1', '21.027676', '105.802322', '1');
INSERT INTO `tbl_search_label` VALUES ('canhhtl', '21.027436', '105.802611', '1');
INSERT INTO `tbl_search_label` VALUES ('Chương trình đào tạo quốc tế', '21.028875', '105.802407', '1');
INSERT INTO `tbl_search_label` VALUES ('Hội trường lớn', '21.027806', '105.802778', '1');
INSERT INTO `tbl_search_label` VALUES ('Phòng đọc sách điện tử', '21.028875', '105.802407', '1');
INSERT INTO `tbl_search_label` VALUES ('Phòng đọc sách ngoại văn, luận văn, luận án và nghiên cứu khoa học', '21.028875', '105.802407', '1');
INSERT INTO `tbl_search_label` VALUES ('Phòng đọc sách tiếng Việt', '21.028875', '105.802407', '1');
INSERT INTO `tbl_search_label` VALUES ('Phòng giám đốc thư viện', '21.028875', '105.802407', '1');
INSERT INTO `tbl_search_label` VALUES ('Phòng mượn', '21.028875', '105.802407', '1');
INSERT INTO `tbl_search_label` VALUES ('Phòng nghiệp vụ thư viện', '21.028875', '105.802407', '1');
INSERT INTO `tbl_search_label` VALUES ('Phòng phó giám đốc thư viện', '21.028875', '105.802407', '1');
INSERT INTO `tbl_search_label` VALUES ('Trung tâm ứng dụng CNTT - Máy chủ', '21.028875', '105.802407', '1');
INSERT INTO `tbl_search_label` VALUES ('yt1', '21.028424', '105.802842', '1');
INSERT INTO `tbl_search_label` VALUES ('yt2', '21.028365', '105.803078', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=423 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_common_coords
-- ----------------------------
INSERT INTO `tbl_common_coords` VALUES ('1', 'a4', '21.027459', '105.803065', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('2', 'a4', '21.027396', '105.803019', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('3', 'a4', '21.027134', '105.803518', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('4', 'a4', '21.027274', '105.803612', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('5', 'a4', '21.027376', '105.803376', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('6', 'a4', '21.027321', '105.803341', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('7', 'a1', '21.028728', '105.802702', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('8', 'a1', '21.028491', '105.80257', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('9', 'a1', '21.028455', '105.802623', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('10', 'a1', '21.02838', '105.802592', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('11', 'a1', '21.028358', '105.802646', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('12', 'a1', '21.028663', '105.802831', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('13', 'a2', '21.028358', '105.803325', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('14', 'a2', '21.028268', '105.803276', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('15', 'a2', '21.028', '105.803781', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('16', 'a2', '21.02809', '105.803837', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('17', 'a5', '21.027852', '105.80374', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('18', 'a5', '21.027762', '105.803681', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('19', 'a5', '21.027787', '105.803625', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('20', 'a5', '21.027732', '105.803609', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('21', 'a5', '21.027747', '105.803563', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('22', 'a5', '21.027627', '105.803499', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('23', 'a5', '21.027544', '105.803622', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('24', 'a5', '21.027487', '105.803652', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('25', 'a5', '21.027336', '105.803561', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('26', 'a5', '21.027281', '105.80366', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('27', 'a5', '21.027749', '105.803942', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('28', 'a3', '21.027172', '105.803365', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('29', 'a3', '21.027049', '105.803287', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('30', 'a3', '21.027018', '105.803317', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('31', 'a3', '21.026517', '105.803012', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('32', 'a3', '21.026423', '105.803138', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('33', 'a3', '21.027091', '105.803561', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('34', 'a7', '21.026743', '105.802682', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('35', 'a7', '21.026663', '105.802623', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('36', 'a7', '21.026488', '105.802967', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('37', 'a7', '21.026568', '105.803036', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('38', 'a7', '0', '105.80257', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('39', 'a7', '0', '105.802636', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('40', 'a9', '21.028245', '105.802393', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('41', 'a9', '21.02792', '105.802157', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('42', 'a9', '21.027865', '105.802264', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('43', 'a9', '21.028085', '105.802409', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('44', 'a9', '21.028065', '105.802457', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('45', 'a9', '21.02817', '105.802511', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('50', 'a6', '21.02792', '105.802124', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('51', 'a6', '21.027564', '105.801851', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('52', 'a6', '21.027494', '105.801996', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('53', 'a6', '21.02784', '105.802253', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('54', 'htl', '21.027945', '105.80277', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('55', 'htl', '21.027684', '105.802595', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('56', 'htl', '21.027529', '105.802874', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('57', 'htl', '21.027797', '105.803073', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('58', 'b1', '21.027772', '105.80237', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('59', 'b1', '21.02758', '105.802221', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('60', 'b1', '21.027538', '105.802298', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('61', 'b1', '21.027728', '105.802442', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('62', 'b2', '21.02829', '105.802783', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('63', 'b2', '21.0281', '105.802651', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('64', 'b2', '21.028057', '105.802727', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('65', 'b2', '21.028248', '105.802855', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('66', 'yt1', '21.028503', '105.802928', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('67', 'yt1', '21.028315', '105.802802', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('68', 'yt1', '21.028275', '105.802874', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('69', 'yt1', '21.028453', '105.803008', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('70', 'yt2', '21.028403', '105.803105', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('71', 'yt2', '21.028215', '105.802981', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('72', 'yt2', '21.028178', '105.803046', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('73', 'yt2', '21.028368', '105.80318', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('78', 'bhtl', '21.027572', '105.802592', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('79', 'bhtl', '21.027432', '105.802491', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('80', 'bhtl', '21.027281', '105.802748', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('81', 'bhtl', '21.027421', '105.802847', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('82', 'center_utc', '21.027844', '105.803253', '1', '3', null);
INSERT INTO `tbl_common_coords` VALUES ('83', 'a8', '21.028961', '105.802307', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('84', 'a8', '21.028811', '105.802221', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('85', 'a8', '21.028616', '105.802564', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('86', 'a8', '21.028781', '105.802656', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('87', 't1', '21.028425', '105.802477', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('88', 't1', '21.02837', '105.802429', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('89', 't1', '21.028328', '105.802509', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('90', 't1', '21.028388', '105.802542', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('91', 't2', '21.028373', '105.802426', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('92', 't2', '21.028283', '105.802367', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('93', 't2', '21.028233', '105.802464', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('94', 't2', '21.02831', '105.802512', '1', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('95', 'a2', '21.028262', '105.803413', '1', '2', 'nghieng45');
INSERT INTO `tbl_common_coords` VALUES ('96', 'a4', '21.027331', '105.803215', '1', '2', 'nghieng45');
INSERT INTO `tbl_common_coords` VALUES ('97', 'a7', '21.026658', '105.802818', '1', '2', 'nghieng45');
INSERT INTO `tbl_common_coords` VALUES ('98', 'hội trường lớn', '21.02785', '105.802788', '1', '2', 'nghieng45');
INSERT INTO `tbl_common_coords` VALUES ('99', 'a5', '21.027602', '105.803732', '1', '2', 'nghieng315');
INSERT INTO `tbl_common_coords` VALUES ('100', 'a3', '21.026813', '105.803279', '1', '2', 'nghieng315');
INSERT INTO `tbl_common_coords` VALUES ('101', 'a1', '21.028633', '105.802721', '1', '2', 'nghieng315');
INSERT INTO `tbl_common_coords` VALUES ('102', 'area_utc', '21.029285', '105.802184', '1', '4', null);
INSERT INTO `tbl_common_coords` VALUES ('103', 'area_utc', '21.028774', '105.80184', '1', '4', null);
INSERT INTO `tbl_common_coords` VALUES ('104', 'area_utc', '21.028423', '105.802303', '1', '4', null);
INSERT INTO `tbl_common_coords` VALUES ('105', 'area_utc', '21.027312', '105.80146', '1', '4', null);
INSERT INTO `tbl_common_coords` VALUES ('106', 'area_utc', '21.026184', '105.803208', '1', '4', null);
INSERT INTO `tbl_common_coords` VALUES ('107', 'area_utc', '21.028271', '105.804391', '1', '4', null);
INSERT INTO `tbl_common_coords` VALUES ('108', 'a8', '21.028903', '105.802334', '1', '2', 'nghieng45');
INSERT INTO `tbl_common_coords` VALUES ('109', 'a9', '21.028133', '105.802362', '1', '2', 'nghieng315');
INSERT INTO `tbl_common_coords` VALUES ('110', 'a6', '21.027762', '105.802086', '1', '2', 'nghieng315');
INSERT INTO `tbl_common_coords` VALUES ('111', 't1', '21.028405', '105.802477', '1', '2', 'nghieng315');
INSERT INTO `tbl_common_coords` VALUES ('112', 't2', '21.028335', '105.802432', '1', '2', 'nghieng315');
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
INSERT INTO `tbl_common_coords` VALUES ('133', '4', '21.037591', '105.783093', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('134', '4', '21.037463', '105.783093', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('135', '4', '21.037438', '105.783675', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('136', '4', '21.037573', '105.78368', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('137', '4', '0', '105.783062', '3', '1', null);
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
INSERT INTO `tbl_common_coords` VALUES ('158', '9', '21.037566', '105.783906', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('159', '9', '21.037461', '105.7839', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('160', '9', '21.037448', '105.784477', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('161', '9', '21.037551', '105.784469', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('162', '10', '0', '105.669601', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('163', '10', '21.106001', '105.669553', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('164', '10', '21.105976', '105.669619', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('165', '10', '21.106109', '105.669672', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('166', '11', '21.037183', '105.783822', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('167', '11', '21.037078', '105.78382', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('168', '11', '21.037065', '105.784297', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('169', '11', '21.03717', '105.784294', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('170', '12', '21.037183', '105.784222', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('171', '12', '21.037188', '105.784319', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('172', '12', '21.037408', '105.784316', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('173', '12', '21.037408', '105.784276', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('174', '12', '21.037446', '105.784268', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('175', '12', '21.037438', '105.784227', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('176', '13', '21.037375', '105.784337', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('177', '13', '21.037163', '105.784329', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('178', '13', '21.037158', '105.78441', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('179', '13', '21.037378', '105.784407', '3', '1', null);
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
INSERT INTO `tbl_common_coords` VALUES ('258', 'line1', '21.028556', '105.802906', '1', '100', ' 259 277');
INSERT INTO `tbl_common_coords` VALUES ('259', 'line1', '21.028373', '105.803242', '1', '100', '258 260');
INSERT INTO `tbl_common_coords` VALUES ('260', 'line1', '21.028175', '105.803142', '1', '100', '259 273');
INSERT INTO `tbl_common_coords` VALUES ('261', 'line1', '21.02793', '105.803636', '1', '100', '273 262');
INSERT INTO `tbl_common_coords` VALUES ('262', 'line1', '21.027426', '105.80333', '1', '100', '272 261 263');
INSERT INTO `tbl_common_coords` VALUES ('263', 'line1', '21.027609', '105.803035', '1', '100', '262 265 264');
INSERT INTO `tbl_common_coords` VALUES ('264', 'line1', '21.027211', '105.802764', '1', '100', '265 274 272 263 271');
INSERT INTO `tbl_common_coords` VALUES ('265', 'line2', '21.027211', '105.802764', '1', '100', '264 274 272 273 271');
INSERT INTO `tbl_common_coords` VALUES ('266', 'line2', '21.027109', '105.802909', '1', '100', '265 264 267 270 271');
INSERT INTO `tbl_common_coords` VALUES ('267', 'line2', '21.026816', '105.802702', '1', '100', '266 271 268');
INSERT INTO `tbl_common_coords` VALUES ('268', 'line2', '21.0266', '105.80304', '1', '100', '267 269');
INSERT INTO `tbl_common_coords` VALUES ('269', 'line2', '21.027111', '105.803357', '1', '100', '270 268');
INSERT INTO `tbl_common_coords` VALUES ('270', 'line2', '21.027294', '105.803014', '1', '100', '271 266 269');
INSERT INTO `tbl_common_coords` VALUES ('271', 'line2', '21.027109', '105.802909', '1', '100', '266 265 264 270 267 ');
INSERT INTO `tbl_common_coords` VALUES ('272', 'line3', '21.027609', '105.803038', '1', '100', '265 264 276 262');
INSERT INTO `tbl_common_coords` VALUES ('273', 'line3', '21.02808', '105.803327', '1', '100', '261 276');
INSERT INTO `tbl_common_coords` VALUES ('274', 'line4', '21.027443', '105.802342', '1', '100', '264 265 277');
INSERT INTO `tbl_common_coords` VALUES ('275', 'line4', '21.02809', '105.802783', '1', '100', '274 276');
INSERT INTO `tbl_common_coords` VALUES ('276', 'line4', '21.027887', '105.803207', '1', '100', '272 273 276');
INSERT INTO `tbl_common_coords` VALUES ('277', 'line1', '21.027537', '105.802139', '1', '100', '274');
INSERT INTO `tbl_common_coords` VALUES ('278', 'line5', '21.028067', '105.802552', '1', '100', '258 279 280');
INSERT INTO `tbl_common_coords` VALUES ('279', 'line5', '21.02798', '105.802719', '1', '100', '278 281 275');
INSERT INTO `tbl_common_coords` VALUES ('280', 'line6', '21.027855', '105.802375', '1', '100', '278 281 277');
INSERT INTO `tbl_common_coords` VALUES ('281', 'line6', '21.027752', '105.80255', '1', '100', '280 279 274');
INSERT INTO `tbl_common_coords` VALUES ('282', 'line7', '21.028663', '105.802971', '1', '100', '258 278');
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
INSERT INTO `tbl_common_coords` VALUES ('311', 'htlsp', '21.038435', '105.784549', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('312', 'htlsp', '21.03791', '105.784534', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('313', 'htlsp', '21.037908', '105.784881', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('314', 'htlsp', '21.038421', '105.784898', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('315', 'v10_sp', '21.038407', '105.785018', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('316', 'v10_sp', '21.037922', '105.785007', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('317', 'v10_sp', '21.037913', '105.785163', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('318', 'v10_sp', '21.038399', '105.785176', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('319', 'thpt_sp', '21.038356', '105.783871', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('320', 'thpt_sp', '21.038225', '105.783874', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('321', 'thpt_sp', '21.038209', '105.784419', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('322', 'thpt_sp', '21.038329', '105.784413', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('323', 'thpt_sp2', '21.038164', '105.784222', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('324', 'thpt_sp2', '21.037958', '105.784214', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('325', 'thpt_sp2', '21.037952', '105.784301', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('326', 'thpt_sp2', '21.038167', '105.784304', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('327', 'thpt_sp3', '21.037824', '105.783879', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('328', 'thpt_sp3', '21.037949', '105.783876', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('329', 'thpt_sp3', '21.037935', '105.784244', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('330', 'thpt_sp3', '21.037829', '105.784241', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('331', 'thpt_sp4', '21.037916', '105.784244', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('332', 'thpt_sp4', '21.037829', '105.784247', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('333', 'thpt_sp4', '21.037816', '105.784412', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('334', 'thpt_sp4', '21.037913', '105.784406', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('335', 'dncn_sp', '21.038216', '105.783172', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('336', 'dncn_sp', '21.038002', '105.78316', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('337', 'dncn_sp', '21.037997', '105.78327', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('338', 'dncn_sp', '21.037947', '105.78327', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('339', 'dncn_sp', '21.037944', '105.783506', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('340', 'dncn_sp', '21.037994', '105.783509', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('341', 'dncn_sp', '21.037988', '105.78362', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('342', 'dncn_sp', '21.038203', '105.78362', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('343', 'photo_sp', '21.03851', '105.783237', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('344', 'photo_sp', '21.038341', '105.783226', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('345', 'photo_sp', '21.038334', '105.783539', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('346', 'photo_sp', '21.0385', '105.783545', '3', '1', null);
INSERT INTO `tbl_common_coords` VALUES ('347', 'line1_sp', '21.03681', '105.783332', '3', '100', '348 ');
INSERT INTO `tbl_common_coords` VALUES ('348', 'line1_sp', '21.03701', '105.783334', '3', '100', '347 358');
INSERT INTO `tbl_common_coords` VALUES ('349', 'line1_sp', '21.036995', '105.783731', '3', '100', '348 382');
INSERT INTO `tbl_common_coords` VALUES ('350', 'line1_sp', '21.037332', '105.783726', '3', '100', '349');
INSERT INTO `tbl_common_coords` VALUES ('351', 'line1_sp', '21.037616', '105.783736', '3', '100', '350');
INSERT INTO `tbl_common_coords` VALUES ('352', 'line1_sp', '21.038039', '105.783737', '3', '100', '351 378');
INSERT INTO `tbl_common_coords` VALUES ('353', 'line1_sp', '21.038277', '105.783743', '3', '100', '352');
INSERT INTO `tbl_common_coords` VALUES ('354', 'line1_sp', '21.03853', '105.783745', '3', '100', '353');
INSERT INTO `tbl_common_coords` VALUES ('355', 'line2_sp', '21.037332', '105.783726', '3', '100', '350');
INSERT INTO `tbl_common_coords` VALUES ('356', 'line2_sp', '21.037343', '105.783363', '3', '100', '355');
INSERT INTO `tbl_common_coords` VALUES ('357', 'line2_sp', '21.037366', '105.783035', '3', '100', '356 363');
INSERT INTO `tbl_common_coords` VALUES ('358', 'line2_sp', '21.03702', '105.78302', '3', '100', '357');
INSERT INTO `tbl_common_coords` VALUES ('359', 'line3_sp', '21.03856', '105.783066', '3', '100', '373');
INSERT INTO `tbl_common_coords` VALUES ('360', 'line3_sp', '21.038346', '105.783055', '3', '100', '359');
INSERT INTO `tbl_common_coords` VALUES ('361', 'line3_sp', '21.038152', '105.783043', '3', '100', '360');
INSERT INTO `tbl_common_coords` VALUES ('362', 'line3_sp', '21.037918', '105.783049', '3', '100', '361 379 ');
INSERT INTO `tbl_common_coords` VALUES ('363', 'line3_sp', '21.037631', '105.783055', '3', '100', '362 357');
INSERT INTO `tbl_common_coords` VALUES ('364', 'line3_sp', '21.037623', '105.783369', '3', '100', '363 365');
INSERT INTO `tbl_common_coords` VALUES ('365', 'line3_sp', '21.037616', '105.783736', '3', '100', '351 355 366');
INSERT INTO `tbl_common_coords` VALUES ('366', 'line3_sp', '21.037613', '105.784134', '3', '100', '351');
INSERT INTO `tbl_common_coords` VALUES ('367', 'line3_sp', '21.03762', '105.784439', '3', '100', '366 385');
INSERT INTO `tbl_common_coords` VALUES ('368', 'line3_sp', '21.037885', '105.784444', '3', '100', '367');
INSERT INTO `tbl_common_coords` VALUES ('369', 'line3_sp', '21.038216', '105.784461', '3', '100', '368');
INSERT INTO `tbl_common_coords` VALUES ('370', 'line3_sp', '21.038495', '105.784473', '3', '100', '369 391');
INSERT INTO `tbl_common_coords` VALUES ('371', 'line3_sp', '21.038512', '105.784153', '3', '100', '370 372');
INSERT INTO `tbl_common_coords` VALUES ('372', 'line3_sp', '21.03853', '105.783745', '3', '100', '354 371 353 373');
INSERT INTO `tbl_common_coords` VALUES ('373', 'line3_sp', '21.038549', '105.783373', '3', '100', '359 ');
INSERT INTO `tbl_common_coords` VALUES ('374', 'area_sp', '21.038682', '105.782857', '3', '4', null);
INSERT INTO `tbl_common_coords` VALUES ('375', 'area_sp', '21.036746', '105.782863', '3', '4', null);
INSERT INTO `tbl_common_coords` VALUES ('376', 'area_sp', '21.03668', '105.785195', '3', '4', null);
INSERT INTO `tbl_common_coords` VALUES ('377', 'area_sp', '21.038545', '105.785226', '3', '4', null);
INSERT INTO `tbl_common_coords` VALUES ('378', 'line4_sp', '21.037914', '105.783725', '3', '100', '351 365 352 379');
INSERT INTO `tbl_common_coords` VALUES ('379', 'line4_sp', '21.037918', '105.783372', '3', '100', '378 362');
INSERT INTO `tbl_common_coords` VALUES ('380', 'line5_sp', '21.037631', '105.783055', '3', '100', null);
INSERT INTO `tbl_common_coords` VALUES ('381', 'line5_sp', '21.037366', '105.783035', '3', '100', null);
INSERT INTO `tbl_common_coords` VALUES ('382', 'line6_sp', '21.036982', '105.784006', '3', '100', '349 383');
INSERT INTO `tbl_common_coords` VALUES ('383', 'line6_sp', '21.036967', '105.784484', '3', '100', '382');
INSERT INTO `tbl_common_coords` VALUES ('384', 'line6_sp', '21.037285', '105.784507', '3', '100', '383');
INSERT INTO `tbl_common_coords` VALUES ('385', 'line6_sp', '21.037589', '105.784525', '3', '100', '384 367');
INSERT INTO `tbl_common_coords` VALUES ('386', 'line6_sp', '21.037585', '105.784847', '3', '100', '385 394');
INSERT INTO `tbl_common_coords` VALUES ('387', 'line6_sp', '21.037568', '105.785164', '3', '100', '386 394');
INSERT INTO `tbl_common_coords` VALUES ('388', 'line6_sp', '21.037767', '105.785177', '3', '100', '387');
INSERT INTO `tbl_common_coords` VALUES ('389', 'line6_sp', '21.03824', '105.785199', '3', '100', '388');
INSERT INTO `tbl_common_coords` VALUES ('390', 'line6_sp', '21.038476', '105.785208', '3', '100', '389');
INSERT INTO `tbl_common_coords` VALUES ('391', 'line6_sp', '21.03848', '105.784939', '3', '100', '390 370 395 392');
INSERT INTO `tbl_common_coords` VALUES ('392', 'line7_sp', '21.038299', '105.784936', '3', '100', '395 391');
INSERT INTO `tbl_common_coords` VALUES ('393', 'line7_sp', '21.037925', '105.784922', '3', '100', '392 ');
INSERT INTO `tbl_common_coords` VALUES ('394', 'line7_sp', '21.037587', '105.784909', '3', '100', '393 386 387');
INSERT INTO `tbl_common_coords` VALUES ('395', 'line7_sp', '21.03848', '105.784939', '3', '100', '392 391');
INSERT INTO `tbl_common_coords` VALUES ('396', 'Hội trường 10/10', '21.038297', '105.784602', '3', '2', 'nghieng0-neu');
INSERT INTO `tbl_common_coords` VALUES ('397', 'D2', '21.038104', '105.784243', '3', '2', 'nghieng0-neu');
INSERT INTO `tbl_common_coords` VALUES ('398', 'D3', '21.038324', '105.784047', '3', '2', 'nghieng0-neu');
INSERT INTO `tbl_common_coords` VALUES ('399', 'Nhà hiệu bộ', '21.037615', '105.783192', '3', '2', 'nghieng0-neu-px');
INSERT INTO `tbl_common_coords` VALUES ('400', 'Nhà V', '21.038176', '105.784983', '3', '2', 'nghieng0-neu');
INSERT INTO `tbl_common_coords` VALUES ('401', 'Photo', '21.038438', '105.783278', '3', '2', 'nghieng0-neu');
INSERT INTO `tbl_common_coords` VALUES ('402', 'Khoa vật lý', '21.037571', '105.783912', '3', '2', 'nghieng0-neu-px');
INSERT INTO `tbl_common_coords` VALUES ('403', 'Trường chuyên SP1', '21.037926', '105.783878', '3', '2', 'nghieng0-neu-px');
INSERT INTO `tbl_common_coords` VALUES ('404', 'line8_utc', '21.028663', '105.802971', '1', '100', null);
INSERT INTO `tbl_common_coords` VALUES ('405', 'line8_utc', '21.028556', '105.802906', '1', '100', null);
INSERT INTO `tbl_common_coords` VALUES ('406', 'line8_utc', '21.028067', '105.802552', '1', '100', null);
INSERT INTO `tbl_common_coords` VALUES ('407', 'line8_utc', '21.027855', '105.802375', '1', '100', null);
INSERT INTO `tbl_common_coords` VALUES ('408', 'line8_utc', '21.027537', '105.802139', '1', '100', null);
INSERT INTO `tbl_common_coords` VALUES ('409', 'line9_utc', '21.027777', '105.803542', '1', '100', '410 261');
INSERT INTO `tbl_common_coords` VALUES ('410', 'line9_utc', '21.027599', '105.803435', '1', '100', '262 409');
INSERT INTO `tbl_common_coords` VALUES ('411', 'line10_utc', '21.028012', '105.802963', '1', '100', '275 276');
INSERT INTO `tbl_common_coords` VALUES ('412', 'line11_utc', '21.027421', '105.802925', '1', '100', '272 265 263 264');
INSERT INTO `tbl_common_coords` VALUES ('413', 'line8_sp', '21.038549', '105.783373', '3', '100', '373 359');
INSERT INTO `tbl_common_coords` VALUES ('414', 'line8_sp', '21.03856', '105.783066', '3', '100', '359 413 373');
INSERT INTO `tbl_common_coords` VALUES ('415', 'line9_sp', '21.037918', '105.783372', '3', '100', '379 362');
INSERT INTO `tbl_common_coords` VALUES ('416', 'line9_sp', '21.037918', '105.783049', '3', '100', '362 415 ');
INSERT INTO `tbl_common_coords` VALUES ('417', 'line10_sp', '21.03702', '105.78302', '3', '100', '358 418 348');
INSERT INTO `tbl_common_coords` VALUES ('418', 'line10_sp', '21.03701', '105.783334', '3', '100', '348 417 358');
INSERT INTO `tbl_common_coords` VALUES ('419', 'line11_sp', '21.038495', '105.784473', '3', '100', '370 395 391');
INSERT INTO `tbl_common_coords` VALUES ('420', 'line11_sp', '21.03848', '105.784939', '3', '100', '395 419');
INSERT INTO `tbl_common_coords` VALUES ('421', 'line12_sp', '21.036995', '105.783731', '3', '100', '349 382');
INSERT INTO `tbl_common_coords` VALUES ('422', 'line12_sp', '21.036982', '105.784006', '3', '100', '382 349');

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_search_info
-- ----------------------------
INSERT INTO `tbl_search_info` VALUES ('1', 'Phòng đọc sách tiếng việt', 'tầng 5 - A8', 'phòng đọc sách tiếng việt', 'sáng: 8h15 - 11h15, chiều: 13h15 - 16h45', '1');
INSERT INTO `tbl_search_info` VALUES ('2', 'Phòng đọc sách ngoại văn, luận văn, luận án và nghiên cứu khoa học', 'tầng 6 - A8', 'Phòng đọc sách ngoại văn, luận văn, luận án và nghiên cứu khoa học', 'sáng: 8h15 - 11h15, chiều: 13h15 - 16h45', '1');
INSERT INTO `tbl_search_info` VALUES ('3', 'Phòng mượn', 'tầng 7 - A8', 'Phòng mượn', 'sáng: 8h15 - 11h15, chiều: 13h15 - 16h45', '1');
INSERT INTO `tbl_search_info` VALUES ('4', 'Phòng đọc sách điện tử', 'tầng 7 - A8', 'Phòng đọc sách điện tử', 'sáng: 8h15 - 11h15, chiều: 13h15 - 16h45', '1');
INSERT INTO `tbl_search_info` VALUES ('5', 'Phòng giám đốc thư viện', 'tầng 5 - A8', 'Phòng giám đốc thư viện', null, '1');
INSERT INTO `tbl_search_info` VALUES ('6', 'Phòng phó giám đốc thư viện', 'tầng 5 - A8', 'Phòng phó giám đốc thư viện', null, '1');
INSERT INTO `tbl_search_info` VALUES ('7', 'Phòng nghiệp vụ thư viện', 'tầng 5 - A8', 'Phòng nghiệp vụ thư viện', null, '1');
INSERT INTO `tbl_search_info` VALUES ('8', 'Trung tâm ứng dụng CNTT - Máy chủ', 'tầng 5 - A8', 'Trung tâm ứng dụng CNTT - Máy chủ', null, '1');
INSERT INTO `tbl_search_info` VALUES ('9', 'Khoa công nghệ thông tin', 'Tầng 3 - A9', 'Khoa công nghệ thông tin', null, '1');
INSERT INTO `tbl_search_info` VALUES ('10', 'Phòng tài chính - kế toán', 'Phòng 103 - A1', 'Phòng tài chính kế toán', null, '1');
INSERT INTO `tbl_search_info` VALUES ('11', 'Phòng hành chính tổng hợp', 'Phòng 106 - A1', 'Phòng tài chính tổng hợp', null, '1');
INSERT INTO `tbl_search_info` VALUES ('12', 'Bộ môn công nghệ phần mềm', 'Phòng 310 - A9', 'Bộ môn công nghệ phần mềm', null, '1');
INSERT INTO `tbl_search_info` VALUES ('13', 'Bộ môn kỹ thuật và an toàn giao thông', 'Phòng 401 - A9', 'Bộ môn kỹ thuật và an toàn giao thông', null, '1');
INSERT INTO `tbl_search_info` VALUES ('14', 'Bộ môn kỹ thuật môi trường', 'Phòng 402 - A9', 'Bộ môn kỹ thuật môi trường', null, '1');
INSERT INTO `tbl_search_info` VALUES ('15', 'Trung tâm ứng dụng CNTT', 'Phòng 508, 512, 510 - A1', 'Trung tâm ứng dụng CNTT', null, '1');
INSERT INTO `tbl_search_info` VALUES ('16', 'Bộ môn vật lý', 'Phòng 708 - A6', 'Bộ môn vật lý', null, null);
INSERT INTO `tbl_search_info` VALUES ('17', 'Bộ môn thiết kế máy', 'Phòng 606 - A6', 'Bộ môn thiết kế máy', null, null);
INSERT INTO `tbl_search_info` VALUES ('18', 'Khoa điện - điện tử', 'Tầng 5 - A6', 'Khoa điện - điện tử', null, null);

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
INSERT INTO `tbl_search_label` VALUES ('Bộ môn công nghệ phần mềm', '21.028126', '105.80231', '1');
INSERT INTO `tbl_search_label` VALUES ('Bộ môn kỹ thuật môi trường', '21.028126', '105.80231', '1');
INSERT INTO `tbl_search_label` VALUES ('Bộ môn kỹ thuật và an toàn giao thông', '21.028126', '105.80231', '1');
INSERT INTO `tbl_search_label` VALUES ('Bộ môn thiết kế máy', '21.027753', '105.802014', '1');
INSERT INTO `tbl_search_label` VALUES ('Bộ môn vật lý', '21.027753', '105.802014', '1');
INSERT INTO `tbl_search_label` VALUES ('canhhtl', '21.027436', '105.802611', '1');
INSERT INTO `tbl_search_label` VALUES ('Chương trình đào tạo quốc tế', '21.028875', '105.802407', '1');
INSERT INTO `tbl_search_label` VALUES ('Hội trường lớn', '21.027806', '105.802778', '1');
INSERT INTO `tbl_search_label` VALUES ('Khoa công nghệ thông tin', '21.028115', '105.80233', '1');
INSERT INTO `tbl_search_label` VALUES ('Khoa điện - điện tử', '21.027753', '105.802014', '1');
INSERT INTO `tbl_search_label` VALUES ('Phòng đọc sách điện tử', '21.028875', '105.802407', '1');
INSERT INTO `tbl_search_label` VALUES ('Phòng đọc sách ngoại văn, luận văn, luận án và nghiên cứu khoa học', '21.028875', '105.802407', '1');
INSERT INTO `tbl_search_label` VALUES ('Phòng đọc sách tiếng Việt', '21.028875', '105.802407', '1');
INSERT INTO `tbl_search_label` VALUES ('Phòng giám đốc thư viện', '21.028875', '105.802407', '1');
INSERT INTO `tbl_search_label` VALUES ('Phòng hành chính tổng hợp', '21.028575', '105.802759', '1');
INSERT INTO `tbl_search_label` VALUES ('Phòng mượn', '21.028875', '105.802407', '1');
INSERT INTO `tbl_search_label` VALUES ('Phòng nghiệp vụ thư viện', '21.028875', '105.802407', '1');
INSERT INTO `tbl_search_label` VALUES ('Phòng phó giám đốc thư viện', '21.028875', '105.802407', '1');
INSERT INTO `tbl_search_label` VALUES ('Phòng tài chính - kế toán', '21.028575', '105.802759', '1');
INSERT INTO `tbl_search_label` VALUES ('Trung tâm ứng dụng CNTT', '21.028635', '105.802658', '1');
INSERT INTO `tbl_search_label` VALUES ('Trung tâm ứng dụng CNTT - Máy chủ', '21.028875', '105.802407', '1');
INSERT INTO `tbl_search_label` VALUES ('yt1', '21.028424', '105.802842', '1');
INSERT INTO `tbl_search_label` VALUES ('yt2', '21.028365', '105.803078', '1');

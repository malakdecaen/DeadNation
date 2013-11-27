/*
Navicat MySQL Data Transfer

Source Server         : dblocal
Source Server Version : 50613
Source Host           : localhost:3306
Source Database       : dblocal

Target Server Type    : MYSQL
Target Server Version : 50613
File Encoding         : 65001

Date: 2013-11-27 01:10:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `character_data`
-- ----------------------------
DROP TABLE IF EXISTS `character_data`;
CREATE TABLE `character_data` (
  `CharacterID` int(11) NOT NULL AUTO_INCREMENT,
  `PlayerID` int(11) NOT NULL DEFAULT '0',
  `PlayerUID` varchar(45) NOT NULL DEFAULT '0',
  `InstanceID` int(11) NOT NULL DEFAULT '0',
  `Datestamp` datetime DEFAULT NULL,
  `LastLogin` datetime NOT NULL,
  `Inventory` longtext,
  `Backpack` longtext,
  `Worldspace` varchar(70) NOT NULL DEFAULT '[]',
  `Medical` varchar(200) NOT NULL DEFAULT '[]',
  `Alive` tinyint(4) NOT NULL DEFAULT '1',
  `Generation` int(11) NOT NULL DEFAULT '1',
  `LastAte` datetime NOT NULL,
  `LastDrank` datetime NOT NULL,
  `KillsZ` int(11) NOT NULL DEFAULT '0',
  `HeadshotsZ` int(11) NOT NULL DEFAULT '0',
  `distanceFoot` int(11) NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL DEFAULT '0',
  `currentState` varchar(100) NOT NULL DEFAULT '[]',
  `KillsH` int(11) NOT NULL DEFAULT '0',
  `Model` varchar(50) NOT NULL DEFAULT '"Survivor2_DZ"',
  `KillsB` int(11) NOT NULL DEFAULT '0',
  `Humanity` int(11) NOT NULL DEFAULT '2500',
  `last_updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`CharacterID`),
  KEY `PlayerID` (`PlayerID`),
  KEY `Alive_PlayerID` (`Alive`,`LastLogin`,`PlayerID`),
  KEY `PlayerUID` (`PlayerUID`),
  KEY `Alive_PlayerUID` (`Alive`,`LastLogin`,`PlayerUID`)
) ENGINE=InnoDB AUTO_INCREMENT=43017 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of character_data
-- ----------------------------

-- ----------------------------
-- Table structure for `logs`
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `user` varchar(255) NOT NULL DEFAULT '',
  `timestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logs
-- ----------------------------

-- ----------------------------
-- Table structure for `object_classes`
-- ----------------------------
DROP TABLE IF EXISTS `object_classes`;
CREATE TABLE `object_classes` (
  `Classname` varchar(32) NOT NULL DEFAULT '',
  `Chance` varchar(4) NOT NULL DEFAULT '0',
  `MaxNum` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Damage` varchar(20) NOT NULL DEFAULT '0',
  `Type` text NOT NULL,
  PRIMARY KEY (`Classname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of object_classes
-- ----------------------------
INSERT INTO `object_classes` VALUES ('C_Quadbike_01_F', '0.75', '30', '0.05000', 'atv');
INSERT INTO `object_classes` VALUES ('I_Heli_Transport_02_F', '0.61', '10', '0.05000', 'heli');
INSERT INTO `object_classes` VALUES ('B_Heli_Light_01_F', '0.69', '10', '0.05000', 'heli');
INSERT INTO `object_classes` VALUES ('DN_Offroad_01_F', '0.9', '60', '0.05000', 'pickup');
INSERT INTO `object_classes` VALUES ('B_Truck_01_covered_F', '0.54', '30', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('C_Rubberboat', '0.7', '50', '0.05000', 'boat');
INSERT INTO `object_classes` VALUES ('TentStorage', '0.59', '0', '0.05000', 'tent');

-- ----------------------------
-- Table structure for `object_data`
-- ----------------------------
DROP TABLE IF EXISTS `object_data`;
CREATE TABLE `object_data` (
  `ObjectID` int(11) NOT NULL AUTO_INCREMENT,
  `ObjectUID` bigint(20) NOT NULL DEFAULT '0',
  `Instance` int(11) NOT NULL,
  `Classname` varchar(50) DEFAULT NULL,
  `Datestamp` datetime NOT NULL,
  `CharacterID` int(11) NOT NULL DEFAULT '0',
  `Worldspace` varchar(70) NOT NULL DEFAULT '[]',
  `Inventory` longtext,
  `Hitpoints` varchar(500) NOT NULL DEFAULT '[]',
  `Fuel` double(13,5) NOT NULL DEFAULT '1.00000',
  `Damage` double(13,5) NOT NULL DEFAULT '0.00000',
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ObjectID`),
  KEY `ObjectUID` (`ObjectUID`),
  KEY `Instance` (`Damage`,`Instance`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of object_data
-- ----------------------------

-- ----------------------------
-- Table structure for `object_spawns`
-- ----------------------------
DROP TABLE IF EXISTS `object_spawns`;
CREATE TABLE `object_spawns` (
  `ObjectUID` bigint(20) NOT NULL DEFAULT '0',
  `Classname` varchar(32) DEFAULT NULL,
  `Worldspace` varchar(64) DEFAULT NULL,
  `Inventory` longtext,
  `Hitpoints` varchar(999) NOT NULL DEFAULT '[]',
  `MapID` varchar(255) NOT NULL DEFAULT '',
  `Last_changed` int(10) DEFAULT NULL,
  PRIMARY KEY (`ObjectUID`,`MapID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of object_spawns
-- ----------------------------
INSERT INTO `object_spawns` VALUES ('3', 'C_Quadbike_01_F', '[0,[15061.461,17157.9,17.91]]', '[]', '[]', '110', null);
INSERT INTO `object_spawns` VALUES ('4', 'I_Heli_Transport_02_F', '[230,[15211.921,16780.094,17.91]]', '[]', '[]', '111', null);
INSERT INTO `object_spawns` VALUES ('3', 'C_Quadbike_01_F', '[110,[14133.645,16197.175,20.411835]]', '[]', '[]', '112', null);
INSERT INTO `object_spawns` VALUES ('4', 'B_Heli_Light_01_F', '[113,[16382.862,17229.754,23.778549]]', '[]', '[]', '113', null);
INSERT INTO `object_spawns` VALUES ('2', 'B_Truck_01_covered_F', '[265,[12551.6324,14441.823,18.936541]]', '[]', '[]', '114', null);
INSERT INTO `object_spawns` VALUES ('1', 'C_Offroad_01_F', '[95,[12914.314,15082.68,30.728937]]', '[]', '[]', '115', null);
INSERT INTO `object_spawns` VALUES ('3', 'C_Quadbike_01_F', '[175,[12436.047,15788.148,19.873772]]', '[]', '[]', '116', null);
INSERT INTO `object_spawns` VALUES ('3', 'C_Quadbike_01_F', '[0,[9540.2822,16042.76,103.46858]]', '[]', '[]', '117', null);
INSERT INTO `object_spawns` VALUES ('3', 'C_Quadbike_01_F', '[270,[9184.6748,15868.905,123.56039]]', '[]', '[]', '118', null);
INSERT INTO `object_spawns` VALUES ('4', 'I_Heli_Transport_02_F', '[270,[6096.1367,16219.688,43]]', '[]', '[]', '119', null);
INSERT INTO `object_spawns` VALUES ('1', 'C_Offroad_01_F', '[270,[3020.762,13179.104,46.191147]]', '[]', '[]', '120', null);
INSERT INTO `object_spawns` VALUES ('3', 'C_Quadbike_01_F', '[270,[3618.0806,12814.36,14.35835]]', '[]', '[]', '121', null);
INSERT INTO `object_spawns` VALUES ('2', 'B_Truck_01_covered_F', '[270,[3759.8525,13710.965,15.662972]]', '[]', '[]', '122', null);
INSERT INTO `object_spawns` VALUES ('1', 'C_Offroad_01_F', '[270,[4132.0981,11771.649,51.681477]]', '[]', '[]', '123', null);
INSERT INTO `object_spawns` VALUES ('3', 'C_Quadbike_01_F', '[90,[7874.8984,14624.676,274.58359]]', '[]', '[]', '124', null);
INSERT INTO `object_spawns` VALUES ('2', 'B_Truck_01_covered_F', '[90,[9011.4131,12003.723,25.630901]]', '[]', '[]', '125', null);
INSERT INTO `object_spawns` VALUES ('3', 'C_Quadbike_01_F', '[90,[9946.3252,6833.1699,110.75438]]', '[]', '[]', '126', null);
INSERT INTO `object_spawns` VALUES ('3', 'C_Quadbike_01_F', '[90,[16843.781,12670.759,24]]', '[]', '[]', '1127', null);
INSERT INTO `object_spawns` VALUES ('2', 'B_Truck_01_covered_F', '[225,[16941.746,12634.794,16.965073]]', '[]', '[]', '128', null);
INSERT INTO `object_spawns` VALUES ('1', 'C_Offroad_01_F', '[325,[20457.406,8856.332,35.966438]]', '[]', '[]', '129', null);
INSERT INTO `object_spawns` VALUES ('4', 'B_Heli_Light_01_F', '[325,[20798.527,7227.1289,29.118446]]', '[]', '[]', '130', null);
INSERT INTO `object_spawns` VALUES ('1', 'C_Offroad_01_F', '[110,[20213.389,11729.624,39.986046]]', '[]', '[]', '131', null);
INSERT INTO `object_spawns` VALUES ('3', 'C_Quadbike_01_F', '[110,[20886.527,14623.918,2.6950293]]', '[]', '[]', '132', null);
INSERT INTO `object_spawns` VALUES ('1', 'C_Offroad_01_F', '[30,[20870.383,16872.172,44.987167]]', '[]', '[]', '133', null);
INSERT INTO `object_spawns` VALUES ('3', 'C_Quadbike_01_F', '[300,[20963.072,17071.145,42.955742]]', '[]', '[]', '134', null);
INSERT INTO `object_spawns` VALUES ('3', 'C_Quadbike_01_F', '[50,[18703.17,16544.137,32.215294]]', '[]', '[]', '135', null);
INSERT INTO `object_spawns` VALUES ('4', 'B_Heli_Light_01_F', '[50,[22784.611,18992.486,12.781406]]', '[]', '[]', '136', null);
INSERT INTO `object_spawns` VALUES ('3', 'C_Quadbike_01_F', '[320,[25673.766,21273.523,18.852543]]', '[]', '[]', '137', null);
INSERT INTO `object_spawns` VALUES ('1', 'C_Offroad_01_F', '[125,[27126.807,23290.824,23.004683]]', '[]', '[]', '138', null);
INSERT INTO `object_spawns` VALUES ('2', 'B_Truck_01_covered_F', '[330,[8638.8105,18345.92,176.66559]]', '[]', '[]', '139', null);
INSERT INTO `object_spawns` VALUES ('2', 'B_Truck_01_covered_F', '[330,[13944.604,18787.711,23.504875]]', '[]', '[]', '140', null);
INSERT INTO `object_spawns` VALUES ('3', 'C_Quadbike_01_F', '[180,[9351.5576,20239.635,99.781868]]', '[]', '[]', '141', null);
INSERT INTO `object_spawns` VALUES ('1', 'C_Offroad_01_F', '[180,[4822.3486,21936.092,337.77121]]', '[]', '[]', '142', null);
INSERT INTO `object_spawns` VALUES ('2', 'B_Truck_01_covered_F', '[115,[14129.751,16207.355,2.0980835e-005]]', '[]', '[]', '141', null);
INSERT INTO `object_spawns` VALUES ('9', 'C_Rubberboat', '[87,[15497.693,15751.181,-0.00053509994]]', '[]', '[]', '142', null);
INSERT INTO `object_spawns` VALUES ('9', 'C_Rubberboat', '[170,[15450.558,15813.434,9.5033341e-005]]', '[]', '[]', '143', null);
INSERT INTO `object_spawns` VALUES ('9', 'C_Rubberboat', '[-8,[15454.526,15782.609,1.7411103e-006]]', '[]', '[]', '144', null);
INSERT INTO `object_spawns` VALUES ('9', 'C_Rubberboat', '[158,[15354.933,15771.679,2.91711e-005]]', '[]', '[]', '145', null);
INSERT INTO `object_spawns` VALUES ('9', 'C_Rubberboat', '[158,[15344.599,15816.874,4.1943807e-005]]', '[]', '[]', '146', null);
INSERT INTO `object_spawns` VALUES ('9', 'C_Rubberboat', '[158,[15336.617,15761.492,0.00067425065]]', '[]', '[]', '147', null);
INSERT INTO `object_spawns` VALUES ('9', 'C_Rubberboat', '[158,[15332.324,15780.096,-0.00015122998]]', '[]', '[]', '148', null);
INSERT INTO `object_spawns` VALUES ('3', 'C_Quadbike_01_F', '[124,[15395.227,15905.743,0.22354077]]', '[]', '[]', '149', null);
INSERT INTO `object_spawns` VALUES ('3', 'C_Quadbike_01_F', '[274,[14296.309,13030.615,5.4836273e-005]]', '[]', '[]', '150', null);
INSERT INTO `object_spawns` VALUES ('9', 'C_Rubberboat', '[353,[14268.788,13113.356,-2.6779906e-005]]', '[]', '[]', '151', null);
INSERT INTO `object_spawns` VALUES ('9', 'C_Rubberboat', '[353,[14270.988,13091.876,-2.6659527e-005]]', '[]', '[]', '152', null);
INSERT INTO `object_spawns` VALUES ('9', 'C_Rubberboat', '[353,[14229.923,13109.643,-0.00017458508]]', '[]', '[]', '153', null);
INSERT INTO `object_spawns` VALUES ('9', 'C_Rubberboat', '[353,[14231.806,13084.424,-1.6241349e-005]]', '[]', '[]', '154', null);
INSERT INTO `object_spawns` VALUES ('4', 'B_Heli_Light_01_F', '[-153,[13591.521,12175.146,3.8146973e-006]]', '[]', '[]', '155', null);
INSERT INTO `object_spawns` VALUES ('9', 'C_Rubberboat', '[353,[13475.088,12150.374,0]]', '[]', '[]', '156', null);
INSERT INTO `object_spawns` VALUES ('3', 'C_Quadbike_01_F', '[274,[11527.599,9412.6025,5.531311e-005]]', '[]', '[]', '157', null);
INSERT INTO `object_spawns` VALUES ('3', 'C_Quadbike_01_F', '[107,[11536.791,7046.8091,-7.6293945e-006]]', '[]', '[]', '158', null);
INSERT INTO `object_spawns` VALUES ('9', 'C_Rubberboat', '[197,[9332.4482,10892.156,1.957683e-006]]', '[]', '[]', '159', null);
INSERT INTO `object_spawns` VALUES ('9', 'C_Rubberboat', '[153,[9286.5625,10866.012,0]]', '[]', '[]', '160', null);
INSERT INTO `object_spawns` VALUES ('1', 'C_Offroad_01_F', '[47,[8696.3096,10363.229,6.4849854e-005]]', '[]', '[]', '161', null);
INSERT INTO `object_spawns` VALUES ('3', 'C_Quadbike_01_F', '[107,[8318.4385,10058.015,-7.6293945e-005]]', '[]', '[]', '162', null);
INSERT INTO `object_spawns` VALUES ('1', 'C_Offroad_01_F', '[0,[8222.4277,10879.484,-1.7166138e-005]]', '[]', '[]', '163', null);
INSERT INTO `object_spawns` VALUES ('0', 'O_Quadbike_01_F', '[-65,[8462.3301,10901.772,0.1572817]]', '[]', '[]', '164', null);
INSERT INTO `object_spawns` VALUES ('9', 'C_Rubberboat', '[232,[5061.6211,9919.5186,-0.1688388]]', '[]', '[]', '165', null);
INSERT INTO `object_spawns` VALUES ('1', 'C_Offroad_01_F', '[-125,[3817.1062,11116.694,-4.4822693e-005]]', '[]', '[]', '166', null);
INSERT INTO `object_spawns` VALUES ('9', 'C_Rubberboat', '[307,[2941.4519,12606.306,-0.00057227944]]', '[]', '[]', '167', null);
INSERT INTO `object_spawns` VALUES ('9', 'C_Rubberboat', '[360,[3067.5767,12655.394,-0.0002153449]]', '[]', '[]', '168', null);
INSERT INTO `object_spawns` VALUES ('1', 'C_Offroad_01_F', '[-55,[3276.1072,12439.742,1.3828278e-005]]', '[]', '[]', '169', null);
INSERT INTO `object_spawns` VALUES ('1', 'C_Offroad_01_F', '[-48,[3575.3169,12483.663,-5.1498413e-005]]', '[]', '[]', '170', null);
INSERT INTO `object_spawns` VALUES ('2', 'B_Truck_01_covered_F', '[175,[3773.1733,12368.313,-9.5367432e-005]]', '[]', '[]', '171', null);
INSERT INTO `object_spawns` VALUES ('2', 'B_Truck_01_covered_F', '[137,[3881.395,12424.991,-3.8146973e-006]]', '[]', '[]', '172', null);
INSERT INTO `object_spawns` VALUES ('1', 'C_Offroad_01_F', '[-48,[3759.8647,13273.885,1.1444092e-005]]', '[]', '[]', '173', null);
INSERT INTO `object_spawns` VALUES ('4', 'B_Heli_Light_01_F', '[0,[4262.0898,15067.093,6.7529092]]', '[]', '[]', '174', null);
INSERT INTO `object_spawns` VALUES ('2', 'B_Truck_01_covered_F', '[51,[6096.1548,16232.1,1.9073486e-005]]', '[]', '[]', '175', null);
INSERT INTO `object_spawns` VALUES ('0', null, null, null, '[]', '', null);

-- ----------------------------
-- Table structure for `object_spawns_original`
-- ----------------------------
DROP TABLE IF EXISTS `object_spawns_original`;
CREATE TABLE `object_spawns_original` (
  `ObjectUID` bigint(20) NOT NULL DEFAULT '0',
  `Classname` varchar(32) DEFAULT NULL,
  `Worldspace` varchar(64) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `last_updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ObjectUID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of object_spawns_original
-- ----------------------------
INSERT INTO `object_spawns_original` VALUES ('7', 'C_Rubberboat', '[87,[15497.693,15751.181,-0.00053509994]]]', 'boat', '2013-08-31 19:49:29');
INSERT INTO `object_spawns_original` VALUES ('8', 'C_Rubberboat', '[170,[15450.558,15813.434,9.5033341e-005]]', 'boat', '2013-08-31 19:49:30');
INSERT INTO `object_spawns_original` VALUES ('9', 'C_Rubberboat', '[-8,[15454.526,15782.609,1.7411103e-006]]', 'boat', '2013-08-31 19:49:31');
INSERT INTO `object_spawns_original` VALUES ('10', 'C_Rubberboat', '[158,[15354.933,15771.679,2.91711e-005]]', 'boat', '2013-08-31 19:49:33');
INSERT INTO `object_spawns_original` VALUES ('11', 'C_Rubberboat', '[158,[15344.599,15816.874,4.1943807e-005]]', 'boat', '2013-08-31 19:49:33');
INSERT INTO `object_spawns_original` VALUES ('12', 'C_Rubberboat', '[158,[15336.617,15761.492,0.00067425065]]', 'boat', '2013-08-31 19:49:34');
INSERT INTO `object_spawns_original` VALUES ('13', 'C_Rubberboat', '[158,[15332.324,15780.096,-0.00015122998]', 'boat', '2013-08-31 19:49:36');
INSERT INTO `object_spawns_original` VALUES ('14', 'C_Quadbike_01_F', '[124,[15395.227,15905.743,0.22354077]]', 'car', '2013-08-31 19:50:00');
INSERT INTO `object_spawns_original` VALUES ('15', 'C_Quadbike_01_F', '[274,[14296.309,13030.615,5.4836273e-005]]', 'car', '2013-08-31 19:49:59');
INSERT INTO `object_spawns_original` VALUES ('16', 'C_Rubberboat', '[353,[14268.788,13113.356,-2.6779906e-005]]', 'boat', '2013-08-31 19:49:38');
INSERT INTO `object_spawns_original` VALUES ('17', 'C_Rubberboat', '[353,[14270.988,13091.876,-2.6659527e-005]]', 'boat', '2013-08-31 19:49:39');
INSERT INTO `object_spawns_original` VALUES ('18', 'C_Rubberboat', '[353,[14229.923,13109.643,-0.00017458508]]', 'boat', '2013-08-31 19:49:40');
INSERT INTO `object_spawns_original` VALUES ('19', 'C_Rubberboat', '[353,[14231.806,13084.424,-1.6241349e-005]]', 'boat', '2013-08-31 19:49:40');
INSERT INTO `object_spawns_original` VALUES ('20', 'B_Heli_Light_0', '[-153,[13591.521,12175.146,3.8146973e-006]]', 'helicopter', '2013-08-31 19:49:47');
INSERT INTO `object_spawns_original` VALUES ('21', 'C_Rubberboat', '[353,[13475.088,12150.374,0]]', 'boat', '2013-08-31 19:49:49');
INSERT INTO `object_spawns_original` VALUES ('22', 'C_Quadbike_01_F', '[274,[11527.599,9412.6025,5.531311e-005]]', 'car', '2013-08-31 19:49:51');
INSERT INTO `object_spawns_original` VALUES ('23', 'C_Quadbike_01_F', '[107,[11536.791,7046.8091,-7.6293945e-006]]', 'car', '2013-08-31 19:49:52');
INSERT INTO `object_spawns_original` VALUES ('24', 'C_Rubberboat', '[197,[9332.4482,10892.156,1.957683e-006]]', 'boat', '2013-08-31 19:49:54');
INSERT INTO `object_spawns_original` VALUES ('25', 'C_Rubberboat', '[153,[9286.5625,10866.012,0]]', 'boat', '2013-08-31 19:49:56');
INSERT INTO `object_spawns_original` VALUES ('26', 'C_Offroad_01_F', '[47,[8696.3096,10363.229,6.4849854e-005]]', 'car', '2013-08-31 19:48:19');
INSERT INTO `object_spawns_original` VALUES ('27', 'C_Quadbike_01_F', '[107,[8318.4385,10058.015,-7.6293945e-005]]', 'car', '2013-08-31 19:48:18');
INSERT INTO `object_spawns_original` VALUES ('28', 'C_Offroad_01_F', '[0,[8222.4277,10879.484,-1.7166138e-005]]', 'car', '2013-08-31 19:48:17');
INSERT INTO `object_spawns_original` VALUES ('29', 'C_Quadbike_01_F', '[-65,[8462.3301,10901.772,0.1572817]]', 'car', '2013-08-31 19:48:15');
INSERT INTO `object_spawns_original` VALUES ('30', 'C_Rubberboat', '[232,[5061.6211,9919.5186,-0.1688388]]', 'boat', '2013-08-31 19:50:11');
INSERT INTO `object_spawns_original` VALUES ('31', 'C_Offroad_01_F', '[-125,[3817.1062,11116.694,-4.4822693e-005]]', 'car', '2013-08-31 19:50:06');
INSERT INTO `object_spawns_original` VALUES ('32', 'C_Rubberboat', '[307,[2941.4519,12606.306,-0.00057227944]]', 'boat', '2013-08-31 19:50:08');
INSERT INTO `object_spawns_original` VALUES ('33', 'C_Rubberboat', '[360,[3067.5767,12655.394,-0.0002153449]]', 'boat', '2013-08-31 19:50:10');
INSERT INTO `object_spawns_original` VALUES ('34', 'C_Offroad_01_F', '[-55,[3276.1072,12439.742,1.3828278e-005]]', 'car', '2013-08-31 19:48:08');
INSERT INTO `object_spawns_original` VALUES ('35', 'C_Offroad_01_F', '[-48,[3575.3169,12483.663,-5.1498413e-005]]', 'car', '2013-08-31 19:48:06');
INSERT INTO `object_spawns_original` VALUES ('36', 'B_Truck_01_covered_F', '[175,[3773.1733,12368.313,-9.5367432e-005]]', 'car', '2013-08-31 19:48:03');
INSERT INTO `object_spawns_original` VALUES ('37', 'B_Truck_01_covered_F', '[137,[3881.395,12424.991,-3.8146973e-006]]', 'car', '2013-08-31 19:47:58');
INSERT INTO `object_spawns_original` VALUES ('38', 'C_Offroad_01_F', '[-48,[3759.8647,13273.885,1.1444092e-005]]', 'car', '2013-08-31 19:48:01');
INSERT INTO `object_spawns_original` VALUES ('39', 'B_Heli_Light_0', '[0,[4262.0898,15067.093,6.7529092]]', 'helicopter', '2013-08-31 19:46:07');
INSERT INTO `object_spawns_original` VALUES ('40', 'B_Truck_01_covered_F', '[51,[6096.1548,16232.1,1.9073486e-005]]', 'car', '2013-08-31 19:45:58');
INSERT INTO `object_spawns_original` VALUES ('1', 'C_Offroad_01_F', '[302,[10745.8,11290.3,0.001]]', 'car', '2013-08-27 00:42:52');
INSERT INTO `object_spawns_original` VALUES ('2', 'B_Truck_01_covered_F', '[315,[10274.6,14801.9,0.001]]', 'car', '2013-08-27 12:40:04');
INSERT INTO `object_spawns_original` VALUES ('3', 'C_Quadbike_01_F', '[178,[10818.1,14741.8,0.001]]', 'atv', '2013-08-27 12:40:45');
INSERT INTO `object_spawns_original` VALUES ('4', 'B_Heli_Light_01_F', '[359,[12495.8,15195.5,0.001]]', 'helicopter', '2013-08-27 12:41:30');
INSERT INTO `object_spawns_original` VALUES ('5', 'I_Heli_Transport_02_F', '[230,[15211.921,16780.094,17.91]]', 'helicopter', '2013-08-30 11:53:38');
INSERT INTO `object_spawns_original` VALUES ('6', 'B_Truck_01_covered_F', '[115,[14129.751,16207.355,2.0980835e-005]]', 'car', '2013-08-31 18:56:08');

-- ----------------------------
-- Table structure for `player_data`
-- ----------------------------
DROP TABLE IF EXISTS `player_data`;
CREATE TABLE `player_data` (
  `playerID` int(11) NOT NULL DEFAULT '0',
  `playerUID` varchar(45) NOT NULL DEFAULT '0',
  `playerName` varchar(50) NOT NULL DEFAULT 'Null',
  `playerMorality` int(11) NOT NULL DEFAULT '0',
  `playerSex` int(11) NOT NULL DEFAULT '0',
  KEY `playerID` (`playerID`),
  KEY `playerUID` (`playerUID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of player_data
-- ----------------------------

-- ----------------------------
-- Table structure for `player_login`
-- ----------------------------
DROP TABLE IF EXISTS `player_login`;
CREATE TABLE `player_login` (
  `LoginID` int(11) NOT NULL AUTO_INCREMENT,
  `PlayerUID` varchar(45) NOT NULL,
  `CharacterID` int(11) NOT NULL DEFAULT '0',
  `datestamp` datetime NOT NULL,
  `Action` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`LoginID`)
) ENGINE=InnoDB AUTO_INCREMENT=193653 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of player_login
-- ----------------------------

-- ----------------------------
-- Table structure for `version`
-- ----------------------------
DROP TABLE IF EXISTS `version`;
CREATE TABLE `version` (
  `Version` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of version
-- ----------------------------
INSERT INTO `version` VALUES ('2');

-- ----------------------------
-- Procedure structure for `#remove empty tents older than seven days`
-- ----------------------------
DROP PROCEDURE IF EXISTS `#remove empty tents older than seven days`;
DELIMITER ;;
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `#remove empty tents older than seven days`()
BEGIN
	#remove empty tents older than seven days
	DELETE
		FROM object_data
		WHERE Classname = 'TentStorage'
			AND DATE(last_updated) < CURDATE() - INTERVAL 7 DAY
			AND Inventory = '[[[],[]],[[],[]],[[],[]]]';

	DELETE
		FROM object_data
		WHERE Classname = 'TentStorage'
			AND DATE(last_updated) < CURDATE() - INTERVAL 7 DAY
			AND Inventory = '[]';		

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `#remove tents whose owner has been dead for four days`
-- ----------------------------
DROP PROCEDURE IF EXISTS `#remove tents whose owner has been dead for four days`;
DELIMITER ;;
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `#remove tents whose owner has been dead for four days`()
BEGIN
#remove tents whose owner has been dead for four days
	DELETE
		FROM object_data
		USING object_data, character_data
		WHERE object_data.Classname = 'TentStorage'
			AND object_data.CharacterID = character_data.CharacterID
			AND character_data.Alive = 0
			AND DATE(character_data.last_updated) < CURDATE() - INTERVAL 4 DAY;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `Alive 0`
-- ----------------------------
DROP PROCEDURE IF EXISTS `Alive 0`;
DELIMITER ;;
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `Alive 0`()
BEGIN

	DELETE
		FROM character_data
		WHERE Alive='0';
DELETE
		FROM object_data 
		WHERE Damage = '1';	
	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pCleanup`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pCleanup`;
DELIMITER ;;
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `pCleanup`()
BEGIN
	#Routine body goes here...
DELETE 
		FROM character_data 
		WHERE Alive = '0';	
	
#remove vehicles with 100% damage
	DELETE
		FROM object_data 
		WHERE Damage = '1';	

#remove unused vehicles older then 14 days
	DELETE
		FROM object_data
		WHERE DATE(last_updated) < CURDATE() - INTERVAL 14 DAY
			AND Classname != 'dummy'
			AND Classname != 'Hedgehog_DZ'
			AND Classname != 'Wire_cat1'
			AND Classname != 'Sandbag1_DZ'
			AND Classname != 'BearTrap_DZ';

#remove barbed wire older than two days
	DELETE
		FROM object_data
		WHERE Classname = 'Wire_cat1'
			AND DATE(last_updated) < CURDATE() - INTERVAL 2 DAY;
			
#remove Tank Traps older than fifteen days
	DELETE
		FROM object_data
		WHERE Classname = 'Hedgehog_DZ'
			AND DATE(last_updated) < CURDATE() - INTERVAL 15 DAY;

#remove Sandbags older than twenty days
	DELETE
		FROM object_data
		WHERE Classname = 'Sandbag1_DZ'
			AND DATE(last_updated) < CURDATE() - INTERVAL 20 DAY;

#remove Bear Traps older than five days
	DELETE
		FROM object_data
		WHERE Classname = 'BearTrap_DZ'
			AND DATE(last_updated) < CURDATE() - INTERVAL 5 DAY;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pCleanupOOB`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pCleanupOOB`;
DELIMITER ;;
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `pCleanupOOB`()
BEGIN

	DECLARE intLineCount	INT DEFAULT 0;
	DECLARE intDummyCount	INT DEFAULT 0;
	DECLARE intDoLine			INT DEFAULT 0;
	DECLARE intWest				INT DEFAULT 0;
	DECLARE intNorth			INT DEFAULT 0;

	SELECT COUNT(*)
		INTO intLineCount
		FROM object_data;

	SELECT COUNT(*)
		INTO intDummyCount
		FROM object_data
		WHERE Classname = 'dummy';

	WHILE (intLineCount > intDummyCount) DO
	
		SET intDoLine = intLineCount - 1;

		SELECT ObjectUID, Worldspace
			INTO @rsObjectUID, @rsWorldspace
			FROM object_data
			LIMIT intDoLine, 1;

		SELECT REPLACE(@rsWorldspace, '[', '') INTO @rsWorldspace;
		SELECT REPLACE(@rsWorldspace, ']', '') INTO @rsWorldspace;
		SELECT REPLACE(SUBSTRING(SUBSTRING_INDEX(@rsWorldspace, ',', 2), LENGTH(SUBSTRING_INDEX(@rsWorldspace, ',', 2 -1)) + 1), ',', '') INTO @West;
		SELECT REPLACE(SUBSTRING(SUBSTRING_INDEX(@rsWorldspace, ',', 3), LENGTH(SUBSTRING_INDEX(@rsWorldspace, ',', 3 -1)) + 1), ',', '') INTO @North;

		SELECT INSTR(@West, '-') INTO intWest;
		SELECT INSTR(@North, '-') INTO intNorth;

		IF (intNorth = 0) THEN
			SELECT CONVERT(@North, DECIMAL(16,8)) INTO intNorth;
		END IF;

		IF (intWest > 0 OR intNorth > 15360) THEN
			DELETE FROM object_data
				WHERE ObjectUID = @rsObjectUID;
		END IF;
			
		SET intLineCount = intLineCount - 1;

	END WHILE;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pMain`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pMain`;
DELIMITER ;;
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `pMain`()
    MODIFIES SQL DATA
BEGIN

# maximum number of INSTANCE id's USED.
#-----------------------------------------------
	DECLARE sInstance VARCHAR(8) DEFAULT 1;
#-----------------------------------------------
#maximum number of vehicles allowed !!! theoretical max. amount
#-----------------------------------------------
	DECLARE iVehSpawnMax INT DEFAULT 120;
#-----------------------------------------------	

# DECLARE iVehSpawnMin				INT DEFAULT 0;		#ToDo !!!
	DECLARE iTimeoutMax 				INT DEFAULT 250;	#number of loops before timeout
	DECLARE iTimeout 						INT DEFAULT 0;		#internal counter for loops done; used to prevent infinite loops - DO NOT CHANGE
	DECLARE iNumVehExisting 		INT DEFAULT 0;		#internal counter for already existing vehicles - DO NOT CHANGE
	DECLARE iNumClassExisting 	INT DEFAULT 0;		#internal counter for already existing class types - DO NOT CHANGE
	DECLARE i INT DEFAULT 1; #internal counter for vehicles spawns - DO NOT CHANGE

#Starts Cleanup
	CALL pCleanup();
	
		SELECT COUNT(*) 				#retrieve the amount of already spawned vehicles...
			INTO iNumVehExisting
			FROM object_data_test 
			WHERE Instance = sInstance
			AND Classname != '-'						#exclude dummys
			AND Classname != 'Hedgehog_DZ'			#exclude hedgehog
			AND Classname != 'Wire_cat1'				#exclude wirecat
			AND Classname != 'Sandbag1_DZ'			#exclude Sanbag
			AND Classname != 'BearTrap_DZ'			#exclude trap
			AND Classname != 'TentStorage'		#exclude TentStorage
			AND Classname != 'ACampStorage';		#exclude ACampStorage

		WHILE (iNumVehExisting < iVehSpawnMax) DO		#loop until maximum amount of vehicles is reached

			#select a random vehicle class
			SELECT Classname, Chance, MaxNum, Damage
				INTO @rsClassname, @rsChance, @rsMaxNum, @rsDamage
				FROM object_classes ORDER BY RAND() LIMIT 1;

			#count number of same class already spawned
			SELECT COUNT(*) 
				INTO iNumClassExisting 
				FROM object_data_test 
				WHERE Instance = sInstance
				AND Classname = @rsClassname;

			IF (iNumClassExisting < @rsMaxNum) THEN

				IF (rndspawn(@rschance) = 1) THEN
				
					INSERT INTO object_data_test (ObjectUID, Instance, Classname, Damage, CharacterID, Worldspace, Inventory, Hitpoints, Fuel, Datestamp)
						SELECT ObjectUID, sInstance, Classname, RAND(@rsDamage), '0', Worldspace, Inventory, Hitpoints, RAND(1), SYSDATE() 
							FROM object_spawns 
							WHERE Classname = @rsClassname 
								AND NOT Worldspace IN (select Worldspace from object_data_test where instance = sInstance)
							ORDER BY RAND()
							LIMIT 0, 1;
							
					SELECT COUNT(*) 
						INTO iNumVehExisting 
						FROM object_data_test 
						WHERE Instance = sInstance
							AND Classname != '-'						#exclude dummys
							AND Classname != 'Hedgehog_DZ'			#exclude hedgehog
							AND Classname != 'Wire_cat1'				#exclude wirecat
							AND Classname != 'Sandbag1_DZ'			#exclude Sanbag
							AND Classname != 'BearTrap_DZ'			#exclude trap
							AND Classname != 'TentStorage'		#exclude TentStorage
							AND Classname != 'ACampStorage';		#exclude ACampStorage
		
					#update number of same class already spawned
					SELECT COUNT(*) 
						INTO iNumClassExisting 
						FROM object_data_test 
						WHERE Instance = sInstance
						AND Classname = @rsClassname;
				
				END IF;
			END IF;	
			
			SET iTimeout = iTimeout + 1; #raise timeout counter
			IF (iTimeout >= iTimeoutMax) THEN
				SET iNumVehExisting = iVehSpawnMax;
			END IF;
		END WHILE;
	SET i = i + 1;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pMaineu1`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pMaineu1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pMaineu1`()
    MODIFIES SQL DATA
BEGIN

# maximum number of INSTANCE id's USED.
#-----------------------------------------------
	DECLARE sInstance VARCHAR(8) DEFAULT 1;
#-----------------------------------------------
#maximum number of vehicles allowed !!! theoretical max. amount
#-----------------------------------------------
	DECLARE iVehSpawnMax INT DEFAULT 120;
#-----------------------------------------------	

# DECLARE iVehSpawnMin				INT DEFAULT 0;		#ToDo !!!
	DECLARE iTimeoutMax 				INT DEFAULT 250;	#number of loops before timeout
	DECLARE iTimeout 						INT DEFAULT 0;		#internal counter for loops done; used to prevent infinite loops - DO NOT CHANGE
	DECLARE iNumVehExisting 		INT DEFAULT 0;		#internal counter for already existing vehicles - DO NOT CHANGE
	DECLARE iNumClassExisting 	INT DEFAULT 0;		#internal counter for already existing class types - DO NOT CHANGE
	DECLARE i INT DEFAULT 1; #internal counter for vehicles spawns - DO NOT CHANGE

#Starts Cleanup
	CALL pCleanup();
	
		SELECT COUNT(*) 				#retrieve the amount of already spawned vehicles...
			INTO iNumVehExisting
			FROM object_data_eu1 
			WHERE Instance = sInstance
			AND Classname != '-'						#exclude dummys
			AND Classname != 'Hedgehog_DZ'			#exclude hedgehog
			AND Classname != 'Wire_cat1'				#exclude wirecat
			AND Classname != 'Sandbag1_DZ'			#exclude Sanbag
			AND Classname != 'BearTrap_DZ'			#exclude trap
			AND Classname != 'TentStorage'		#exclude TentStorage
			AND Classname != 'garage_repart';		#exclude ACampStorage

		WHILE (iNumVehExisting < iVehSpawnMax) DO		#loop until maximum amount of vehicles is reached

			#select a random vehicle class
			SELECT Classname, Chance, MaxNum, Damage
				INTO @rsClassname, @rsChance, @rsMaxNum, @rsDamage
				FROM object_classes ORDER BY RAND() LIMIT 1;

			#count number of same class already spawned
			SELECT COUNT(*) 
				INTO iNumClassExisting 
				FROM object_data_eu1 
				WHERE Instance = sInstance
				AND Classname = @rsClassname;

			IF (iNumClassExisting < @rsMaxNum) THEN

				IF (rndspawn(@rschance) = 1) THEN
				
					INSERT INTO object_data_eu1 (ObjectUID, Instance, Classname, Damage, CharacterID, Worldspace, Inventory, Hitpoints, Fuel, Datestamp)
						SELECT ObjectUID, sInstance, Classname, RAND(@rsDamage), '0', Worldspace, Inventory, Hitpoints, RAND(1), SYSDATE() 
							FROM object_spawns 
							WHERE Classname = @rsClassname 
								AND NOT Worldspace IN (select Worldspace from object_data_eu1 where instance = sInstance)
							ORDER BY RAND()
							LIMIT 0, 1;
							
					SELECT COUNT(*) 
						INTO iNumVehExisting 
						FROM object_data_eu1 
						WHERE Instance = sInstance
							AND Classname != '-'						#exclude dummys
							AND Classname != 'Hedgehog_DZ'			#exclude hedgehog
							AND Classname != 'Wire_cat1'				#exclude wirecat
							AND Classname != 'Sandbag1_DZ'			#exclude Sanbag
							AND Classname != 'BearTrap_DZ'			#exclude trap
							AND Classname != 'TentStorage'		#exclude TentStorage
							AND Classname != 'garage_repart';		#exclude ACampStorage
		
					#update number of same class already spawned
					SELECT COUNT(*) 
						INTO iNumClassExisting 
						FROM object_data_eu1 
						WHERE Instance = sInstance
						AND Classname = @rsClassname;
				
				END IF;
			END IF;	
			
			SET iTimeout = iTimeout + 1; #raise timeout counter
			IF (iTimeout >= iTimeoutMax) THEN
				SET iNumVehExisting = iVehSpawnMax;
			END IF;
		END WHILE;
	SET i = i + 1;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pMaineu2`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pMaineu2`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pMaineu2`()
    MODIFIES SQL DATA
BEGIN

# maximum number of INSTANCE id's USED.
#-----------------------------------------------
	DECLARE sInstance VARCHAR(8) DEFAULT 1;
#-----------------------------------------------
#maximum number of vehicles allowed !!! theoretical max. amount
#-----------------------------------------------
	DECLARE iVehSpawnMax INT DEFAULT 120;
#-----------------------------------------------	

# DECLARE iVehSpawnMin				INT DEFAULT 0;		#ToDo !!!
	DECLARE iTimeoutMax 				INT DEFAULT 250;	#number of loops before timeout
	DECLARE iTimeout 						INT DEFAULT 0;		#internal counter for loops done; used to prevent infinite loops - DO NOT CHANGE
	DECLARE iNumVehExisting 		INT DEFAULT 0;		#internal counter for already existing vehicles - DO NOT CHANGE
	DECLARE iNumClassExisting 	INT DEFAULT 0;		#internal counter for already existing class types - DO NOT CHANGE
	DECLARE i INT DEFAULT 1; #internal counter for vehicles spawns - DO NOT CHANGE

#Starts Cleanup
	CALL pCleanup();
	
		SELECT COUNT(*) 				#retrieve the amount of already spawned vehicles...
			INTO iNumVehExisting
			FROM object_data_eu2 
			WHERE Instance = sInstance
			AND Classname != '-'						#exclude dummys
			AND Classname != 'Hedgehog_DZ'			#exclude hedgehog
			AND Classname != 'Wire_cat1'				#exclude wirecat
			AND Classname != 'Sandbag1_DZ'			#exclude Sanbag
			AND Classname != 'BearTrap_DZ'			#exclude trap
			AND Classname != 'TentStorage'		#exclude TentStorage
			AND Classname != 'garage_repart';		#exclude ACampStorage

		WHILE (iNumVehExisting < iVehSpawnMax) DO		#loop until maximum amount of vehicles is reached

			#select a random vehicle class
			SELECT Classname, Chance, MaxNum, Damage
				INTO @rsClassname, @rsChance, @rsMaxNum, @rsDamage
				FROM object_classes ORDER BY RAND() LIMIT 1;

			#count number of same class already spawned
			SELECT COUNT(*) 
				INTO iNumClassExisting 
				FROM object_data_eu2 
				WHERE Instance = sInstance
				AND Classname = @rsClassname;

			IF (iNumClassExisting < @rsMaxNum) THEN

				IF (rndspawn(@rschance) = 1) THEN
				
					INSERT INTO object_data_eu2 (ObjectUID, Instance, Classname, Damage, CharacterID, Worldspace, Inventory, Hitpoints, Fuel, Datestamp)
						SELECT ObjectUID, sInstance, Classname, RAND(@rsDamage), '0', Worldspace, Inventory, Hitpoints, RAND(1), SYSDATE() 
							FROM object_spawns 
							WHERE Classname = @rsClassname 
								AND NOT Worldspace IN (select Worldspace from object_data_eu2 where instance = sInstance)
							ORDER BY RAND()
							LIMIT 0, 1;
							
					SELECT COUNT(*) 
						INTO iNumVehExisting 
						FROM object_data_eu2 
						WHERE Instance = sInstance
							AND Classname != '-'						#exclude dummys
							AND Classname != 'Hedgehog_DZ'			#exclude hedgehog
							AND Classname != 'Wire_cat1'				#exclude wirecat
							AND Classname != 'Sandbag1_DZ'			#exclude Sanbag
							AND Classname != 'BearTrap_DZ'			#exclude trap
							AND Classname != 'TentStorage'		#exclude TentStorage
							AND Classname != 'garage_repart';		#exclude ACampStorage
		
					#update number of same class already spawned
					SELECT COUNT(*) 
						INTO iNumClassExisting 
						FROM object_data_eu2 
						WHERE Instance = sInstance
						AND Classname = @rsClassname;
				
				END IF;
			END IF;	
			
			SET iTimeout = iTimeout + 1; #raise timeout counter
			IF (iTimeout >= iTimeoutMax) THEN
				SET iNumVehExisting = iVehSpawnMax;
			END IF;
		END WHILE;
	SET i = i + 1;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pMainus1`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pMainus1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pMainus1`()
    MODIFIES SQL DATA
BEGIN

# maximum number of INSTANCE id's USED.
#-----------------------------------------------
	DECLARE sInstance VARCHAR(8) DEFAULT 1;
#-----------------------------------------------
#maximum number of vehicles allowed !!! theoretical max. amount
#-----------------------------------------------
	DECLARE iVehSpawnMax INT DEFAULT 120;
#-----------------------------------------------	

# DECLARE iVehSpawnMin				INT DEFAULT 0;		#ToDo !!!
	DECLARE iTimeoutMax 				INT DEFAULT 250;	#number of loops before timeout
	DECLARE iTimeout 						INT DEFAULT 0;		#internal counter for loops done; used to prevent infinite loops - DO NOT CHANGE
	DECLARE iNumVehExisting 		INT DEFAULT 0;		#internal counter for already existing vehicles - DO NOT CHANGE
	DECLARE iNumClassExisting 	INT DEFAULT 0;		#internal counter for already existing class types - DO NOT CHANGE
	DECLARE i INT DEFAULT 1; #internal counter for vehicles spawns - DO NOT CHANGE

#Starts Cleanup
	CALL pCleanup();
	
		SELECT COUNT(*) 				#retrieve the amount of already spawned vehicles...
			INTO iNumVehExisting
			FROM object_data_us1 
			WHERE Instance = sInstance
			AND Classname != '-'						#exclude dummys
			AND Classname != 'Hedgehog_DZ'			#exclude hedgehog
			AND Classname != 'Wire_cat1'				#exclude wirecat
			AND Classname != 'Sandbag1_DZ'			#exclude Sanbag
			AND Classname != 'BearTrap_DZ'			#exclude trap
			AND Classname != 'TentStorage'		#exclude TentStorage
			AND Classname != 'garage_repart';		#exclude ACampStorage

		WHILE (iNumVehExisting < iVehSpawnMax) DO		#loop until maximum amount of vehicles is reached

			#select a random vehicle class
			SELECT Classname, Chance, MaxNum, Damage
				INTO @rsClassname, @rsChance, @rsMaxNum, @rsDamage
				FROM object_classes ORDER BY RAND() LIMIT 1;

			#count number of same class already spawned
			SELECT COUNT(*) 
				INTO iNumClassExisting 
				FROM object_data_us1 
				WHERE Instance = sInstance
				AND Classname = @rsClassname;

			IF (iNumClassExisting < @rsMaxNum) THEN

				IF (rndspawn(@rschance) = 1) THEN
				
					INSERT INTO object_data_us1 (ObjectUID, Instance, Classname, Damage, CharacterID, Worldspace, Inventory, Hitpoints, Fuel, Datestamp)
						SELECT ObjectUID, sInstance, Classname, RAND(@rsDamage), '0', Worldspace, Inventory, Hitpoints, RAND(1), SYSDATE() 
							FROM object_spawns 
							WHERE Classname = @rsClassname 
								AND NOT Worldspace IN (select Worldspace from object_data_us1 where instance = sInstance)
							ORDER BY RAND()
							LIMIT 0, 1;
							
					SELECT COUNT(*) 
						INTO iNumVehExisting 
						FROM object_data_us1 
						WHERE Instance = sInstance
							AND Classname != '-'						#exclude dummys
							AND Classname != 'Hedgehog_DZ'			#exclude hedgehog
							AND Classname != 'Wire_cat1'				#exclude wirecat
							AND Classname != 'Sandbag1_DZ'			#exclude Sanbag
							AND Classname != 'BearTrap_DZ'			#exclude trap
							AND Classname != 'TentStorage'		#exclude TentStorage
							AND Classname != 'garage_repart';		#exclude ACampStorage
		
					#update number of same class already spawned
					SELECT COUNT(*) 
						INTO iNumClassExisting 
						FROM object_data_us1 
						WHERE Instance = sInstance
						AND Classname = @rsClassname;
				
				END IF;
			END IF;	
			
			SET iTimeout = iTimeout + 1; #raise timeout counter
			IF (iTimeout >= iTimeoutMax) THEN
				SET iNumVehExisting = iVehSpawnMax;
			END IF;
		END WHILE;
	SET i = i + 1;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `Tents H.S et non utilisé depuis 4 jours`
-- ----------------------------
DROP PROCEDURE IF EXISTS `Tents H.S et non utilisé depuis 4 jours`;
DELIMITER ;;
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `Tents H.S et non utilisé depuis 4 jours`()
BEGIN
	DELETE
		FROM object_data
		WHERE Classname = 'TentStorage'
		AND Damage = '1';	

  DELETE
		FROM object_data
		WHERE Classname = 'TentStorage'
			AND DATE(last_updated) < CURDATE() - INTERVAL 4 DAY
			AND Inventory = '[[[],[]],[[],[]],[[],[]]]';
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `rndspawn`
-- ----------------------------
DROP FUNCTION IF EXISTS `rndspawn`;
DELIMITER ;;
CREATE DEFINER=`dayz`@`localhost` FUNCTION `rndspawn`(`chance` double) RETURNS tinyint(1)
BEGIN

	DECLARE bspawn tinyint(1) DEFAULT 0;

	IF (RAND() <= chance) THEN
		SET bspawn = 1;
	END IF;

	RETURN bspawn;

END
;;
DELIMITER ;

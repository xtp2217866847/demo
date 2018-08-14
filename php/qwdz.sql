/*
 Navicat MySQL Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50714
 Source Host           : localhost:3306
 Source Schema         : qwdz

 Target Server Type    : MySQL
 Target Server Version : 50714
 File Encoding         : 65001

 Date: 25/05/2018 17:49:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tp_city
-- ----------------------------
DROP TABLE IF EXISTS `tp_city`;
CREATE TABLE `tp_city`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 392 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_city
-- ----------------------------
INSERT INTO `tp_city` VALUES (1, 0, '中国', 0);
INSERT INTO `tp_city` VALUES (2, 1, '北京市', 1);
INSERT INTO `tp_city` VALUES (3, 1, '江苏省', 1);
INSERT INTO `tp_city` VALUES (4, 3, '南京市', 2);
INSERT INTO `tp_city` VALUES (5, 3, '苏州市', 2);
INSERT INTO `tp_city` VALUES (6, 3, '无锡市', 2);
INSERT INTO `tp_city` VALUES (7, 1, '浙江省', 1);
INSERT INTO `tp_city` VALUES (8, 1, '天津市', 1);
INSERT INTO `tp_city` VALUES (9, 1, '重庆市', 1);
INSERT INTO `tp_city` VALUES (10, 1, '河北省', 1);
INSERT INTO `tp_city` VALUES (11, 1, '山西省', 1);
INSERT INTO `tp_city` VALUES (12, 1, '内蒙古', 1);
INSERT INTO `tp_city` VALUES (13, 1, '辽宁省', 1);
INSERT INTO `tp_city` VALUES (14, 1, '吉林省', 1);
INSERT INTO `tp_city` VALUES (15, 1, '黑龙江', 1);
INSERT INTO `tp_city` VALUES (16, 1, '上海市', 1);
INSERT INTO `tp_city` VALUES (17, 1, '安徽省', 1);
INSERT INTO `tp_city` VALUES (18, 1, '福建省', 1);
INSERT INTO `tp_city` VALUES (19, 1, '江西省', 1);
INSERT INTO `tp_city` VALUES (20, 1, '山东省', 1);
INSERT INTO `tp_city` VALUES (21, 1, '河南省', 1);
INSERT INTO `tp_city` VALUES (22, 1, '湖北省', 1);
INSERT INTO `tp_city` VALUES (23, 1, '湖南省', 1);
INSERT INTO `tp_city` VALUES (24, 1, '广东省', 1);
INSERT INTO `tp_city` VALUES (25, 1, '广西省', 1);
INSERT INTO `tp_city` VALUES (26, 1, '海南省', 1);
INSERT INTO `tp_city` VALUES (27, 1, '四川省', 1);
INSERT INTO `tp_city` VALUES (28, 1, '贵州省', 1);
INSERT INTO `tp_city` VALUES (29, 1, '云南省', 1);
INSERT INTO `tp_city` VALUES (30, 1, '西藏区', 1);
INSERT INTO `tp_city` VALUES (31, 1, '陕西省', 1);
INSERT INTO `tp_city` VALUES (32, 1, '甘肃省', 1);
INSERT INTO `tp_city` VALUES (33, 1, '青海省', 1);
INSERT INTO `tp_city` VALUES (34, 1, '宁夏区', 1);
INSERT INTO `tp_city` VALUES (35, 1, '新疆区', 1);
INSERT INTO `tp_city` VALUES (36, 1, '台湾省', 1);
INSERT INTO `tp_city` VALUES (37, 1, '香港区', 1);
INSERT INTO `tp_city` VALUES (38, 1, '澳门区', 1);
INSERT INTO `tp_city` VALUES (39, 2, '北京市', 2);
INSERT INTO `tp_city` VALUES (40, 8, '天津市', 2);
INSERT INTO `tp_city` VALUES (41, 10, '石家庄', 2);
INSERT INTO `tp_city` VALUES (42, 10, '唐山市', 2);
INSERT INTO `tp_city` VALUES (43, 10, '秦皇岛', 2);
INSERT INTO `tp_city` VALUES (44, 10, '邯郸市', 2);
INSERT INTO `tp_city` VALUES (45, 10, '邢台市', 2);
INSERT INTO `tp_city` VALUES (46, 10, '保定市', 2);
INSERT INTO `tp_city` VALUES (47, 10, '张家口', 2);
INSERT INTO `tp_city` VALUES (48, 10, '承德市', 2);
INSERT INTO `tp_city` VALUES (49, 10, '衡水市', 2);
INSERT INTO `tp_city` VALUES (50, 10, '廊坊市', 2);
INSERT INTO `tp_city` VALUES (51, 10, '沧州市', 2);
INSERT INTO `tp_city` VALUES (52, 11, '太原市', 2);
INSERT INTO `tp_city` VALUES (53, 11, '大同市', 2);
INSERT INTO `tp_city` VALUES (54, 11, '阳泉市', 2);
INSERT INTO `tp_city` VALUES (55, 11, '长治市', 2);
INSERT INTO `tp_city` VALUES (56, 11, '晋城市', 2);
INSERT INTO `tp_city` VALUES (57, 11, '朔州市', 2);
INSERT INTO `tp_city` VALUES (58, 11, '晋中市', 2);
INSERT INTO `tp_city` VALUES (59, 11, '运城市', 2);
INSERT INTO `tp_city` VALUES (60, 11, '忻州市', 2);
INSERT INTO `tp_city` VALUES (61, 11, '临汾市', 2);
INSERT INTO `tp_city` VALUES (62, 11, '吕梁市', 2);
INSERT INTO `tp_city` VALUES (63, 12, '呼和浩特市', 2);
INSERT INTO `tp_city` VALUES (64, 12, '包头市', 2);
INSERT INTO `tp_city` VALUES (65, 12, '乌海市', 2);
INSERT INTO `tp_city` VALUES (66, 12, '赤峰市', 2);
INSERT INTO `tp_city` VALUES (67, 12, '通辽市', 2);
INSERT INTO `tp_city` VALUES (68, 12, '鄂尔多斯市', 2);
INSERT INTO `tp_city` VALUES (69, 12, '呼伦贝尔市', 2);
INSERT INTO `tp_city` VALUES (70, 12, '巴彦淖尔市', 2);
INSERT INTO `tp_city` VALUES (71, 12, '乌兰察布市', 2);
INSERT INTO `tp_city` VALUES (72, 12, '兴安盟', 2);
INSERT INTO `tp_city` VALUES (73, 12, '锡林郭勒盟', 2);
INSERT INTO `tp_city` VALUES (74, 12, '阿拉善盟', 2);
INSERT INTO `tp_city` VALUES (75, 13, '沈阳市', 2);
INSERT INTO `tp_city` VALUES (76, 13, '大连市', 2);
INSERT INTO `tp_city` VALUES (77, 13, '鞍山市', 2);
INSERT INTO `tp_city` VALUES (78, 13, '抚顺市', 2);
INSERT INTO `tp_city` VALUES (79, 13, '本溪市', 2);
INSERT INTO `tp_city` VALUES (80, 13, '丹东市', 2);
INSERT INTO `tp_city` VALUES (81, 13, '锦州市', 2);
INSERT INTO `tp_city` VALUES (82, 13, '营口市', 2);
INSERT INTO `tp_city` VALUES (83, 13, '阜新市', 2);
INSERT INTO `tp_city` VALUES (84, 13, '辽阳市', 2);
INSERT INTO `tp_city` VALUES (85, 13, '盘锦市', 2);
INSERT INTO `tp_city` VALUES (86, 13, '铁岭市', 2);
INSERT INTO `tp_city` VALUES (87, 13, '葫芦岛市', 2);
INSERT INTO `tp_city` VALUES (88, 13, '朝阳市', 2);
INSERT INTO `tp_city` VALUES (89, 14, '长春市', 2);
INSERT INTO `tp_city` VALUES (90, 14, '吉林市', 2);
INSERT INTO `tp_city` VALUES (91, 14, '四平市', 2);
INSERT INTO `tp_city` VALUES (92, 14, '辽源市', 2);
INSERT INTO `tp_city` VALUES (93, 14, '通化市', 2);
INSERT INTO `tp_city` VALUES (94, 14, '白山市', 2);
INSERT INTO `tp_city` VALUES (95, 14, '松原市', 2);
INSERT INTO `tp_city` VALUES (96, 14, '白城市', 2);
INSERT INTO `tp_city` VALUES (97, 14, '延边朝鲜', 2);
INSERT INTO `tp_city` VALUES (98, 15, '哈尔滨市', 2);
INSERT INTO `tp_city` VALUES (99, 15, '齐齐哈尔市', 2);
INSERT INTO `tp_city` VALUES (100, 15, '鸡西市', 2);
INSERT INTO `tp_city` VALUES (101, 15, '鹤岗市', 2);
INSERT INTO `tp_city` VALUES (102, 15, '双鸭山市', 2);
INSERT INTO `tp_city` VALUES (103, 15, '大庆市', 2);
INSERT INTO `tp_city` VALUES (104, 15, '伊春市', 2);
INSERT INTO `tp_city` VALUES (105, 15, '佳木斯市', 2);
INSERT INTO `tp_city` VALUES (106, 15, '七台河市', 2);
INSERT INTO `tp_city` VALUES (107, 15, '牡丹江市', 2);
INSERT INTO `tp_city` VALUES (108, 15, '黑河市', 2);
INSERT INTO `tp_city` VALUES (109, 15, '绥化市', 2);
INSERT INTO `tp_city` VALUES (110, 15, '大兴安', 2);
INSERT INTO `tp_city` VALUES (111, 16, '上海市', 2);
INSERT INTO `tp_city` VALUES (112, 3, '徐州市', 2);
INSERT INTO `tp_city` VALUES (113, 3, '常州市', 2);
INSERT INTO `tp_city` VALUES (114, 3, '南通市', 2);
INSERT INTO `tp_city` VALUES (115, 3, '连云港市', 2);
INSERT INTO `tp_city` VALUES (116, 3, '淮安市', 2);
INSERT INTO `tp_city` VALUES (117, 3, '盐城市', 2);
INSERT INTO `tp_city` VALUES (118, 3, '扬州市', 2);
INSERT INTO `tp_city` VALUES (119, 3, '镇江市', 2);
INSERT INTO `tp_city` VALUES (120, 3, '泰州市', 2);
INSERT INTO `tp_city` VALUES (121, 3, '宿迁市', 2);
INSERT INTO `tp_city` VALUES (122, 7, '杭州市', 2);
INSERT INTO `tp_city` VALUES (123, 7, '宁波市', 2);
INSERT INTO `tp_city` VALUES (124, 7, '温州市', 2);
INSERT INTO `tp_city` VALUES (125, 7, '嘉兴市', 2);
INSERT INTO `tp_city` VALUES (126, 7, '湖州市', 2);
INSERT INTO `tp_city` VALUES (127, 7, '绍兴市', 2);
INSERT INTO `tp_city` VALUES (128, 7, '舟山市', 2);
INSERT INTO `tp_city` VALUES (129, 7, '衢州市', 2);
INSERT INTO `tp_city` VALUES (130, 7, '金华市', 2);
INSERT INTO `tp_city` VALUES (131, 7, '台州市', 2);
INSERT INTO `tp_city` VALUES (132, 7, '丽水市', 2);
INSERT INTO `tp_city` VALUES (133, 17, '巢湖市', 2);
INSERT INTO `tp_city` VALUES (134, 17, '六安市', 2);
INSERT INTO `tp_city` VALUES (135, 17, '亳州市', 2);
INSERT INTO `tp_city` VALUES (136, 17, '池州市', 2);
INSERT INTO `tp_city` VALUES (137, 17, '宣城市', 2);
INSERT INTO `tp_city` VALUES (138, 17, '合肥市', 2);
INSERT INTO `tp_city` VALUES (139, 17, '芜湖市', 2);
INSERT INTO `tp_city` VALUES (140, 17, '蚌埠市', 2);
INSERT INTO `tp_city` VALUES (141, 17, '淮南市', 2);
INSERT INTO `tp_city` VALUES (142, 17, '马鞍山市', 2);
INSERT INTO `tp_city` VALUES (143, 17, '淮北市', 2);
INSERT INTO `tp_city` VALUES (144, 17, '铜陵市', 2);
INSERT INTO `tp_city` VALUES (145, 17, '安庆市', 2);
INSERT INTO `tp_city` VALUES (146, 17, '黄山市', 2);
INSERT INTO `tp_city` VALUES (147, 17, '滁州市', 2);
INSERT INTO `tp_city` VALUES (148, 17, '阜阳市', 2);
INSERT INTO `tp_city` VALUES (149, 17, '宿州市', 2);
INSERT INTO `tp_city` VALUES (150, 18, '福州市', 2);
INSERT INTO `tp_city` VALUES (151, 18, '厦门市', 2);
INSERT INTO `tp_city` VALUES (152, 18, '莆田市', 2);
INSERT INTO `tp_city` VALUES (153, 18, '三明市', 2);
INSERT INTO `tp_city` VALUES (154, 18, '泉州市', 2);
INSERT INTO `tp_city` VALUES (155, 18, '漳州市', 2);
INSERT INTO `tp_city` VALUES (156, 18, '南平市', 2);
INSERT INTO `tp_city` VALUES (157, 18, '龙岩市', 2);
INSERT INTO `tp_city` VALUES (158, 18, '宁德市', 2);
INSERT INTO `tp_city` VALUES (159, 19, '南昌市', 2);
INSERT INTO `tp_city` VALUES (160, 19, '景德镇市', 2);
INSERT INTO `tp_city` VALUES (161, 19, '萍乡市', 2);
INSERT INTO `tp_city` VALUES (162, 19, '九江市', 2);
INSERT INTO `tp_city` VALUES (163, 19, '新余市', 2);
INSERT INTO `tp_city` VALUES (164, 19, '鹰潭市', 2);
INSERT INTO `tp_city` VALUES (165, 19, '赣州市', 2);
INSERT INTO `tp_city` VALUES (166, 19, '吉安市', 2);
INSERT INTO `tp_city` VALUES (167, 19, '宜春市', 2);
INSERT INTO `tp_city` VALUES (168, 19, '抚州市', 2);
INSERT INTO `tp_city` VALUES (169, 19, '上饶市', 2);
INSERT INTO `tp_city` VALUES (170, 20, '济南市', 2);
INSERT INTO `tp_city` VALUES (171, 20, '青岛市', 2);
INSERT INTO `tp_city` VALUES (172, 20, '淄博市', 2);
INSERT INTO `tp_city` VALUES (173, 20, '枣庄市', 2);
INSERT INTO `tp_city` VALUES (174, 20, '东营市', 2);
INSERT INTO `tp_city` VALUES (175, 20, '烟台市', 2);
INSERT INTO `tp_city` VALUES (176, 20, '潍坊市', 2);
INSERT INTO `tp_city` VALUES (177, 20, '济宁市', 2);
INSERT INTO `tp_city` VALUES (178, 20, '泰安市', 2);
INSERT INTO `tp_city` VALUES (179, 20, '威海市', 2);
INSERT INTO `tp_city` VALUES (180, 20, '日照市', 2);
INSERT INTO `tp_city` VALUES (181, 20, '莱芜市', 2);
INSERT INTO `tp_city` VALUES (182, 20, '临沂市', 2);
INSERT INTO `tp_city` VALUES (183, 20, '德州市', 2);
INSERT INTO `tp_city` VALUES (184, 20, '聊城市', 2);
INSERT INTO `tp_city` VALUES (185, 20, '滨州市', 2);
INSERT INTO `tp_city` VALUES (186, 20, '菏泽市', 2);
INSERT INTO `tp_city` VALUES (187, 21, '济源市', 2);
INSERT INTO `tp_city` VALUES (188, 21, '驻马店市', 2);
INSERT INTO `tp_city` VALUES (189, 21, '濮阳市', 2);
INSERT INTO `tp_city` VALUES (190, 21, '许昌市', 2);
INSERT INTO `tp_city` VALUES (191, 21, '漯河市', 2);
INSERT INTO `tp_city` VALUES (192, 21, '三门峡市', 2);
INSERT INTO `tp_city` VALUES (193, 21, '南阳市', 2);
INSERT INTO `tp_city` VALUES (194, 21, '商丘市', 2);
INSERT INTO `tp_city` VALUES (195, 21, '信阳市', 2);
INSERT INTO `tp_city` VALUES (196, 21, '周口市', 2);
INSERT INTO `tp_city` VALUES (197, 21, '郑州市', 2);
INSERT INTO `tp_city` VALUES (198, 21, '开封市', 2);
INSERT INTO `tp_city` VALUES (199, 21, '洛阳市', 2);
INSERT INTO `tp_city` VALUES (200, 21, '平顶山市', 2);
INSERT INTO `tp_city` VALUES (201, 21, '安阳市', 2);
INSERT INTO `tp_city` VALUES (202, 21, '鹤壁市', 2);
INSERT INTO `tp_city` VALUES (203, 21, '新乡市', 2);
INSERT INTO `tp_city` VALUES (204, 21, '焦作市', 2);
INSERT INTO `tp_city` VALUES (205, 22, '荆门市', 2);
INSERT INTO `tp_city` VALUES (206, 22, '黄冈市', 2);
INSERT INTO `tp_city` VALUES (207, 22, '咸宁市', 2);
INSERT INTO `tp_city` VALUES (208, 22, '随州市', 2);
INSERT INTO `tp_city` VALUES (209, 22, '恩施土家族苗族自治州', 2);
INSERT INTO `tp_city` VALUES (210, 22, '仙桃市', 2);
INSERT INTO `tp_city` VALUES (211, 22, '潜江市', 2);
INSERT INTO `tp_city` VALUES (212, 22, '天门市', 2);
INSERT INTO `tp_city` VALUES (213, 22, '神农架林', 2);
INSERT INTO `tp_city` VALUES (214, 22, '武汉市', 2);
INSERT INTO `tp_city` VALUES (215, 22, '黄石市', 2);
INSERT INTO `tp_city` VALUES (216, 22, '十堰市', 2);
INSERT INTO `tp_city` VALUES (217, 22, '宜昌市', 2);
INSERT INTO `tp_city` VALUES (218, 22, '襄阳市', 2);
INSERT INTO `tp_city` VALUES (219, 22, '鄂州市', 2);
INSERT INTO `tp_city` VALUES (220, 23, '长沙市', 2);
INSERT INTO `tp_city` VALUES (221, 23, '株洲市', 2);
INSERT INTO `tp_city` VALUES (222, 23, '湘潭市', 2);
INSERT INTO `tp_city` VALUES (223, 23, '衡阳市', 2);
INSERT INTO `tp_city` VALUES (224, 23, '邵阳市', 2);
INSERT INTO `tp_city` VALUES (225, 23, '岳阳市', 2);
INSERT INTO `tp_city` VALUES (226, 23, '常德市', 2);
INSERT INTO `tp_city` VALUES (227, 23, '张家界市', 2);
INSERT INTO `tp_city` VALUES (228, 23, '益阳市', 2);
INSERT INTO `tp_city` VALUES (229, 23, '郴州市', 2);
INSERT INTO `tp_city` VALUES (230, 23, '永州市', 2);
INSERT INTO `tp_city` VALUES (231, 23, '怀化市', 2);
INSERT INTO `tp_city` VALUES (232, 23, '娄底市', 2);
INSERT INTO `tp_city` VALUES (233, 23, '湘西土家族', 2);
INSERT INTO `tp_city` VALUES (234, 24, '阳江市', 2);
INSERT INTO `tp_city` VALUES (235, 24, '清远市', 2);
INSERT INTO `tp_city` VALUES (236, 24, '东莞市', 2);
INSERT INTO `tp_city` VALUES (237, 24, '中山市', 2);
INSERT INTO `tp_city` VALUES (238, 24, '潮州市', 2);
INSERT INTO `tp_city` VALUES (239, 24, '揭阳市', 2);
INSERT INTO `tp_city` VALUES (240, 24, '云浮市', 2);
INSERT INTO `tp_city` VALUES (241, 24, '湛江市', 2);
INSERT INTO `tp_city` VALUES (242, 24, '茂名市', 2);
INSERT INTO `tp_city` VALUES (243, 24, '肇庆市', 2);
INSERT INTO `tp_city` VALUES (244, 24, '惠州市', 2);
INSERT INTO `tp_city` VALUES (245, 24, '梅州市', 2);
INSERT INTO `tp_city` VALUES (246, 24, '汕尾市', 2);
INSERT INTO `tp_city` VALUES (247, 24, '河源市', 2);
INSERT INTO `tp_city` VALUES (248, 24, '广州市', 2);
INSERT INTO `tp_city` VALUES (249, 24, '韶关市', 2);
INSERT INTO `tp_city` VALUES (250, 24, '深圳市', 2);
INSERT INTO `tp_city` VALUES (251, 24, '珠海市', 2);
INSERT INTO `tp_city` VALUES (252, 24, '汕头市', 2);
INSERT INTO `tp_city` VALUES (253, 24, '佛山市', 2);
INSERT INTO `tp_city` VALUES (254, 24, '江门市', 2);
INSERT INTO `tp_city` VALUES (255, 25, '玉林市', 2);
INSERT INTO `tp_city` VALUES (256, 25, '百色市', 2);
INSERT INTO `tp_city` VALUES (257, 25, '贺州市', 2);
INSERT INTO `tp_city` VALUES (258, 25, '河池市', 2);
INSERT INTO `tp_city` VALUES (259, 25, '来宾市', 2);
INSERT INTO `tp_city` VALUES (260, 25, '崇左市', 2);
INSERT INTO `tp_city` VALUES (261, 25, '南宁市', 2);
INSERT INTO `tp_city` VALUES (262, 25, '柳州市', 2);
INSERT INTO `tp_city` VALUES (263, 25, '桂林市', 2);
INSERT INTO `tp_city` VALUES (264, 25, '梧州市', 2);
INSERT INTO `tp_city` VALUES (265, 25, '北海市', 2);
INSERT INTO `tp_city` VALUES (266, 25, '防城港市', 2);
INSERT INTO `tp_city` VALUES (267, 25, '钦州市', 2);
INSERT INTO `tp_city` VALUES (268, 25, '贵港市', 2);
INSERT INTO `tp_city` VALUES (269, 26, '海口市', 2);
INSERT INTO `tp_city` VALUES (270, 26, '三亚市', 2);
INSERT INTO `tp_city` VALUES (271, 26, '五指山市', 2);
INSERT INTO `tp_city` VALUES (272, 26, '琼海市', 2);
INSERT INTO `tp_city` VALUES (273, 26, '儋州市', 2);
INSERT INTO `tp_city` VALUES (274, 26, '文昌市', 2);
INSERT INTO `tp_city` VALUES (275, 26, '万宁市', 2);
INSERT INTO `tp_city` VALUES (276, 26, '东方市', 2);
INSERT INTO `tp_city` VALUES (277, 9, '重庆市', 2);
INSERT INTO `tp_city` VALUES (278, 27, '巴中市', 2);
INSERT INTO `tp_city` VALUES (279, 27, '资阳市', 2);
INSERT INTO `tp_city` VALUES (280, 27, '雅安市', 2);
INSERT INTO `tp_city` VALUES (281, 27, '达州市', 2);
INSERT INTO `tp_city` VALUES (282, 27, '广安市', 2);
INSERT INTO `tp_city` VALUES (283, 27, '宜宾市', 2);
INSERT INTO `tp_city` VALUES (284, 27, '眉山市', 2);
INSERT INTO `tp_city` VALUES (285, 27, '南充市', 2);
INSERT INTO `tp_city` VALUES (286, 27, '乐山市', 2);
INSERT INTO `tp_city` VALUES (287, 27, '内江市', 2);
INSERT INTO `tp_city` VALUES (288, 27, '成都市', 2);
INSERT INTO `tp_city` VALUES (289, 27, '自贡市', 2);
INSERT INTO `tp_city` VALUES (290, 27, '攀枝花市', 2);
INSERT INTO `tp_city` VALUES (291, 27, '泸州市', 2);
INSERT INTO `tp_city` VALUES (292, 27, '德阳市', 2);
INSERT INTO `tp_city` VALUES (293, 27, '绵阳市', 2);
INSERT INTO `tp_city` VALUES (294, 27, '广元市', 2);
INSERT INTO `tp_city` VALUES (295, 27, '遂宁市', 2);
INSERT INTO `tp_city` VALUES (296, 28, '贵阳市', 2);
INSERT INTO `tp_city` VALUES (297, 28, '六盘水市', 2);
INSERT INTO `tp_city` VALUES (298, 28, '遵义市', 2);
INSERT INTO `tp_city` VALUES (299, 28, '安顺市', 2);
INSERT INTO `tp_city` VALUES (300, 28, '铜仁地区', 2);
INSERT INTO `tp_city` VALUES (301, 28, '六盘水市', 2);
INSERT INTO `tp_city` VALUES (302, 28, '黔西南', 2);
INSERT INTO `tp_city` VALUES (303, 28, '毕节地区', 2);
INSERT INTO `tp_city` VALUES (304, 28, '黔东南', 2);
INSERT INTO `tp_city` VALUES (305, 28, '黔南布依', 2);
INSERT INTO `tp_city` VALUES (306, 29, '昆明市', 2);
INSERT INTO `tp_city` VALUES (307, 29, '曲靖市', 2);
INSERT INTO `tp_city` VALUES (308, 29, '玉溪市', 2);
INSERT INTO `tp_city` VALUES (309, 29, '保山市', 2);
INSERT INTO `tp_city` VALUES (310, 29, '昭通市', 2);
INSERT INTO `tp_city` VALUES (311, 29, '丽江市', 2);
INSERT INTO `tp_city` VALUES (312, 29, '思茅市', 2);
INSERT INTO `tp_city` VALUES (313, 29, '临沧市', 2);
INSERT INTO `tp_city` VALUES (314, 30, '拉萨市', 2);
INSERT INTO `tp_city` VALUES (315, 30, '昌都地区', 2);
INSERT INTO `tp_city` VALUES (316, 30, '山南地区', 2);
INSERT INTO `tp_city` VALUES (317, 30, '日喀则地区', 2);
INSERT INTO `tp_city` VALUES (318, 30, '那曲地区', 2);
INSERT INTO `tp_city` VALUES (319, 30, '阿里地区', 2);
INSERT INTO `tp_city` VALUES (320, 30, '林芝地区', 2);
INSERT INTO `tp_city` VALUES (321, 31, '榆林市', 2);
INSERT INTO `tp_city` VALUES (322, 31, '安康市', 2);
INSERT INTO `tp_city` VALUES (323, 31, '商洛市', 2);
INSERT INTO `tp_city` VALUES (324, 31, '西安市', 2);
INSERT INTO `tp_city` VALUES (325, 31, '铜川市', 2);
INSERT INTO `tp_city` VALUES (326, 31, '宝鸡市', 2);
INSERT INTO `tp_city` VALUES (327, 31, '咸阳市', 2);
INSERT INTO `tp_city` VALUES (328, 31, '渭南市', 2);
INSERT INTO `tp_city` VALUES (329, 31, '延安市', 2);
INSERT INTO `tp_city` VALUES (330, 31, '汉中市', 2);
INSERT INTO `tp_city` VALUES (331, 32, '定西市', 2);
INSERT INTO `tp_city` VALUES (332, 32, '陇南市', 2);
INSERT INTO `tp_city` VALUES (333, 32, '宁夏回族自治州', 2);
INSERT INTO `tp_city` VALUES (334, 32, '甘南藏', 2);
INSERT INTO `tp_city` VALUES (335, 32, '兰州市', 2);
INSERT INTO `tp_city` VALUES (336, 32, '嘉峪关市', 2);
INSERT INTO `tp_city` VALUES (337, 32, '金昌市', 2);
INSERT INTO `tp_city` VALUES (338, 32, '白银市', 2);
INSERT INTO `tp_city` VALUES (339, 32, '天水市', 2);
INSERT INTO `tp_city` VALUES (340, 32, '武威市', 2);
INSERT INTO `tp_city` VALUES (341, 32, '张掖市', 2);
INSERT INTO `tp_city` VALUES (342, 32, '平凉市', 2);
INSERT INTO `tp_city` VALUES (343, 32, '酒泉市', 2);
INSERT INTO `tp_city` VALUES (344, 32, '庆阳市', 2);
INSERT INTO `tp_city` VALUES (345, 33, '西宁市', 2);
INSERT INTO `tp_city` VALUES (346, 33, '海东地区', 2);
INSERT INTO `tp_city` VALUES (347, 33, '海北藏族自治州', 2);
INSERT INTO `tp_city` VALUES (348, 33, '黄南藏族自治州', 2);
INSERT INTO `tp_city` VALUES (349, 33, '海南藏族自治州', 2);
INSERT INTO `tp_city` VALUES (350, 33, '果洛藏族自治州', 2);
INSERT INTO `tp_city` VALUES (351, 33, '玉树藏族自治州', 2);
INSERT INTO `tp_city` VALUES (352, 33, '海西蒙古族', 2);
INSERT INTO `tp_city` VALUES (353, 34, '银川市', 2);
INSERT INTO `tp_city` VALUES (354, 34, '石嘴山市', 2);
INSERT INTO `tp_city` VALUES (355, 34, '吴忠市', 2);
INSERT INTO `tp_city` VALUES (356, 34, '固原市', 2);
INSERT INTO `tp_city` VALUES (357, 34, '中卫市', 2);
INSERT INTO `tp_city` VALUES (358, 35, '和田地区', 2);
INSERT INTO `tp_city` VALUES (359, 35, '伊犁哈萨克自治州', 2);
INSERT INTO `tp_city` VALUES (360, 35, '塔城地区', 2);
INSERT INTO `tp_city` VALUES (361, 35, '阿勒泰地区', 2);
INSERT INTO `tp_city` VALUES (362, 35, '石河子市', 2);
INSERT INTO `tp_city` VALUES (363, 35, '阿拉尔市', 2);
INSERT INTO `tp_city` VALUES (364, 35, '图木舒克市', 2);
INSERT INTO `tp_city` VALUES (365, 35, '博尔塔拉蒙古自治州', 2);
INSERT INTO `tp_city` VALUES (366, 35, '巴音郭楞蒙古自治州', 2);
INSERT INTO `tp_city` VALUES (367, 35, '阿克苏地区', 2);
INSERT INTO `tp_city` VALUES (368, 35, '克孜勒苏柯尔克孜自治州', 2);
INSERT INTO `tp_city` VALUES (369, 35, '喀什地区', 2);
INSERT INTO `tp_city` VALUES (370, 35, '乌鲁木齐市', 2);
INSERT INTO `tp_city` VALUES (371, 35, '克拉玛依市', 2);
INSERT INTO `tp_city` VALUES (372, 35, '吐鲁番地区', 2);
INSERT INTO `tp_city` VALUES (373, 35, '哈密地区', 2);
INSERT INTO `tp_city` VALUES (374, 35, '昌吉回族自治州', 2);
INSERT INTO `tp_city` VALUES (375, 36, '台北市', 2);
INSERT INTO `tp_city` VALUES (376, 36, '高雄市', 2);
INSERT INTO `tp_city` VALUES (377, 36, '基隆市', 2);
INSERT INTO `tp_city` VALUES (378, 36, '台中市', 2);
INSERT INTO `tp_city` VALUES (379, 36, '台南市', 2);
INSERT INTO `tp_city` VALUES (380, 36, '新竹市', 2);
INSERT INTO `tp_city` VALUES (381, 36, '嘉义市', 2);
INSERT INTO `tp_city` VALUES (382, 37, '香港区', 2);
INSERT INTO `tp_city` VALUES (383, 38, '澳门区', 2);
INSERT INTO `tp_city` VALUES (384, 29, '楚雄彝族自治州', 2);
INSERT INTO `tp_city` VALUES (385, 29, '红河哈尼族彝族自治州', 2);
INSERT INTO `tp_city` VALUES (386, 29, '文山壮族苗族自治州', 2);
INSERT INTO `tp_city` VALUES (387, 29, '西双版纳傣族自治州', 2);
INSERT INTO `tp_city` VALUES (388, 29, '大理白族自治州', 2);
INSERT INTO `tp_city` VALUES (389, 29, '德宏傣族景颇族自治州', 2);
INSERT INTO `tp_city` VALUES (390, 29, '怒江傈僳族自治州 迪庆藏族', 2);
INSERT INTO `tp_city` VALUES (391, 29, '迪庆藏族自治州', 2);

-- ----------------------------
-- Table structure for tp_league
-- ----------------------------
DROP TABLE IF EXISTS `tp_league`;
CREATE TABLE `tp_league`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `region` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `store` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fax` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fruit` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `perpop` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `opentime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `area` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `floatpop` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `model` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `money` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `brand` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `local` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `other` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_league
-- ----------------------------
INSERT INTO `tp_league` VALUES (1, '可乐', '13765874621', '杭州', '红星美凯龙', '123', '123', '自营', '123', '123', '1', '1', '1', '1', '123', '1', '1');
INSERT INTO `tp_league` VALUES (2, '雪碧', '13869587424', '苏州', '中环百汇', '0592-88887777', '0396-5896457', '家族', '236人', '2018-03-56', '256m²', '2365人', '创业', '3000000元', '无', '无', '无');

-- ----------------------------
-- Table structure for tp_store
-- ----------------------------
DROP TABLE IF EXISTS `tp_store`;
CREATE TABLE `tp_store`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `logo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_store
-- ----------------------------
INSERT INTO `tp_store` VALUES (5, 117, '斯可馨全屋定制', '15695157999', '', '盐城市盐都区居然之家1楼', '/uploads/store/20180524\\55a61e80aa3b7bf605034be0f1cc3aa0.jpg');
INSERT INTO `tp_store` VALUES (6, 117, '斯可馨全屋定制', '18752208916', '', '盐城市亭湖区人民南路附近好又多家具超市（紫薇购物广场店）', '/uploads/store/20180524\\8bfa67921bc8a4e1095637910a132ba0.jpg');
INSERT INTO `tp_store` VALUES (7, 112, '斯可馨家具', '13951359959', '', '徐州市贾汪区世纪明珠装饰城五期12号楼123号', '/uploads/store/20180524\\c4469fab9f8db3612e7ae838dd6c2e6a.jpg');
INSERT INTO `tp_store` VALUES (8, 116, '斯可馨全屋定制', '18360218222', '', '淮安市淮阴区红星美凯龙', '/uploads/store/20180524\\1449ebf4e443ae478d440a5c323b6412.jpg');
INSERT INTO `tp_store` VALUES (9, 125, '斯可馨全屋定制', '18667305850', '', '嘉兴市南湖区文昌路月星家居', '/uploads/store/20180524\\8beb628bcde09ed03f2d895635d0137d.jpg');
INSERT INTO `tp_store` VALUES (10, 122, '斯可馨家居', '13567172875', '', '杭州市淳安县千岛湖镇阳光花园斯可馨独立店', '/uploads/store/20180524\\03cd899c9b337a1a762f26dae89d2207.jpg');
INSERT INTO `tp_store` VALUES (11, 138, '斯可馨全屋定制', '', '', '合肥市长江东路628号居然之家环宇店二楼 \"', '/uploads/store/20180524\\09a4465616350bdc65788e44dd044374.png');
INSERT INTO `tp_store` VALUES (12, 138, '斯可馨家居', '', '', '合肥居然之家滨湖店三楼（徽州大道与紫云路交口世纪金源购物中心D栋）', '/uploads/store/20180524\\601b39cc21e6b7ad650de6973fe1da78.png');
INSERT INTO `tp_store` VALUES (13, 149, '斯可馨家居', '', '', '宿州市埇桥区卞河街道北十里皇冠家居斯可馨旗舰店 ', '/uploads/store/20180524\\b530eef768695b0d4934bb233436001b.png');
INSERT INTO `tp_store` VALUES (14, 140, '斯可馨家居', '', '', '蚌埠市，禹会区，迎宾大道1399号，居然之家6号门一楼', '/uploads/store/20180524\\08d97fb947c73e2de7afbfb3e841891b.png');
INSERT INTO `tp_store` VALUES (15, 143, '斯可馨家居', '', '', '淮北市相山区淮海东路和龙山路交口红星美凯龙', '/uploads/store/20180524\\bb68ec612e2a85264e7ab0323e0ba3e8.png');
INSERT INTO `tp_store` VALUES (16, 175, '全屋定制', '', '', '烟台芝罘区美迎美家商场', '/uploads/store/20180524\\a3c8dcc6c5f622735d8e2f9c67875e43.png');
INSERT INTO `tp_store` VALUES (17, 384, '斯可馨家居', '', '', '楚雄滇中大商汇三期建材家具广场', '/uploads/store/20180524\\5cdbacc18d1b36119b19112a1bbd0320.png');
INSERT INTO `tp_store` VALUES (18, 218, '斯可馨全屋定制', '', '', '襄阳邓城大道与樊魏路交叉口南红星美凯龙一楼', '/uploads/store/20180524\\ef84e2b1e712680d4f002883f0882d37.png');

-- ----------------------------
-- Table structure for tp_ybj
-- ----------------------------
DROP TABLE IF EXISTS `tp_ybj`;
CREATE TABLE `tp_ybj`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `style` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `crowd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `environment` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `area` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `logo` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_ybj
-- ----------------------------
INSERT INTO `tp_ybj` VALUES (28, 4, '经典北欧橱柜', '经典北欧', '', '', '', '/uploads/20180523\\697dfb591cfe3c819fbcc40537cf94ab.jpg');
INSERT INTO `tp_ybj` VALUES (24, 1, '经典北欧隔断柜', '经典北欧', '', '', '', '/uploads/20180523\\ccd5f2bd7cb107672954e2c4088ee14d.jpg');
INSERT INTO `tp_ybj` VALUES (25, 1, '经典北欧衣帽柜', '经典北欧', '', '', '', '/uploads/20180523\\02670837a570abc12b5ba654716dcf06.jpg');
INSERT INTO `tp_ybj` VALUES (26, 2, '经典北欧电视柜', '经典北欧电视柜', '', '', '', '/uploads/20180523\\14a3fe774645a0d9282d02f9df8edc44.jpg');
INSERT INTO `tp_ybj` VALUES (27, 3, '经典北欧酒柜', '经典北欧', '', '', '', '/uploads/20180523\\0832c7f8ae9289e7e4ec490fe32cdb65.jpg');
INSERT INTO `tp_ybj` VALUES (29, 5, '经典北欧阳台柜', '经典北欧', '', '', '', '/uploads/20180523\\1325b0be43c62d243931803d7d067e67.jpg');
INSERT INTO `tp_ybj` VALUES (30, 6, '经典北欧次卧衣柜', '经典北欧', '', '', '', '/uploads/20180523\\680c10cf5b726e0fe57955f1abd21639.jpg');
INSERT INTO `tp_ybj` VALUES (31, 6, '经典北欧衣帽间', '经典北欧', '', '', '', '/uploads/20180523\\5e769007ab48c523aaac9c3433a90d9e.jpg');
INSERT INTO `tp_ybj` VALUES (32, 6, '经典北欧主卧飘窗', '经典北欧', '', '', '', '/uploads/20180523\\a6345ac2409985217e2e2f012d4223b9.jpg');
INSERT INTO `tp_ybj` VALUES (33, 6, '经典北欧主卧衣柜', '经典北欧', '', '', '', '/uploads/20180523\\9dad504709e6e7c30f4e9707ca1d83bc.jpg');
INSERT INTO `tp_ybj` VALUES (34, 7, '经典北欧榻榻米', '经典北欧', '', '', '', '/uploads/20180523\\d4a4181bb886e5fd4754e7aa439998f5.jpg');
INSERT INTO `tp_ybj` VALUES (35, 6, '流行现代卧室', '流行现代', '', '', '', '/uploads/20180523\\5455ccd28c8e7ab9004235b248ebe48e.jpg');
INSERT INTO `tp_ybj` VALUES (36, 1, '现代简约隔断柜', '现代简约', '', '', '', '/uploads/20180523\\14eefd52e578df7b2a087e09b7f005ba.jpg');
INSERT INTO `tp_ybj` VALUES (37, 1, '现代简约鞋柜', '现代简约', '', '', '', '/uploads/20180523\\16cb711e5df2c9cec0e49b94b8c44c46.jpg');
INSERT INTO `tp_ybj` VALUES (38, 2, '现代简约电视柜', '现代简约', '', '', '', '/uploads/20180523\\270b35b2914d7e0ee04f8639cdc0a076.jpg');
INSERT INTO `tp_ybj` VALUES (39, 3, '现代简约酒柜', '现代简约', '', '', '', '/uploads/20180523\\26cf6f5ec40979f5b4a80ccce35a4cc8.jpg');
INSERT INTO `tp_ybj` VALUES (40, 4, '现代简约橱柜', '现代简约', '', '', '', '/uploads/20180523\\6070db1b7a833ad17ec9175f68ff80cb.jpg');
INSERT INTO `tp_ybj` VALUES (41, 5, '现代简约阳台柜', '现代简约', '', '', '', '/uploads/20180523\\76f400db4da59d05b7cf9ca287907923.jpg');
INSERT INTO `tp_ybj` VALUES (42, 6, '现代简约次卧衣柜', '现代简约', '', '', '', '/uploads/20180523\\6473953f7039f658eb57158bdb628fd8.jpg');
INSERT INTO `tp_ybj` VALUES (43, 6, '现代简约主卧飘窗', '现代简约', '', '', '', '/uploads/20180523\\75fe5ba82fd50ba012639cef93eed01c.jpg');
INSERT INTO `tp_ybj` VALUES (44, 6, '现代简约主卧衣柜', '现代简约', '', '', '', '/uploads/20180523\\67751bea01ab248414ed3b474151223e.jpg');
INSERT INTO `tp_ybj` VALUES (45, 7, '现代简约青少年', '现代简约', '', '', '', '/uploads/20180523\\4e67792bf4272ac99dfac582bcccd14b.jpg');
INSERT INTO `tp_ybj` VALUES (46, 7, '现代简约榻榻米', '现代简约', '', '', '', '/uploads/20180523\\b904192a68076ebec6f5f32fea3cc420.jpg');
INSERT INTO `tp_ybj` VALUES (47, 6, '新美风格卧室', '新美风格', '', '', '', '/uploads/20180523\\9071140d1cdb584cfa986470069c3579.jpg');
INSERT INTO `tp_ybj` VALUES (48, 7, '新中式榻榻米', '新中式', '', '', '', '/uploads/20180523\\80e5c5b5bc0ee592b9217670ec0d37a8.jpg');
INSERT INTO `tp_ybj` VALUES (49, 2, '意式极简电视柜厅', '意式极简', '', '', '', '/uploads/20180523\\24ce1f7a0f1dbe3d65fcfe8f677b4032.jpg');
INSERT INTO `tp_ybj` VALUES (50, 2, '意式极简客厅', '意式极简', '', '', '', '/uploads/20180523\\d1355504ffe6185702b4e6f166f4dbf1.jpg');

-- ----------------------------
-- Table structure for tp_ypic
-- ----------------------------
DROP TABLE IF EXISTS `tp_ypic`;
CREATE TABLE `tp_ypic`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ybj_id` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_ypic
-- ----------------------------
INSERT INTO `tp_ypic` VALUES (60, '/uploads/20180523\\87fb4119f810e4d98554361ed45a8633.jpg', 48);
INSERT INTO `tp_ypic` VALUES (58, '/uploads/20180523\\f0109b7fffe1fcae3963f6c1998990d2.jpg', 46);
INSERT INTO `tp_ypic` VALUES (59, '/uploads/20180523\\97adc8612b9efc1cdfd08ba541aa91ea.jpg', 46);
INSERT INTO `tp_ypic` VALUES (57, '/uploads/20180523\\64bf62bfc5560385c4954f4c4e195668.jpg', 44);
INSERT INTO `tp_ypic` VALUES (56, '/uploads/20180523\\2e3d4febcc11bd0d3f4c58f81a95e0c3.jpg', 44);
INSERT INTO `tp_ypic` VALUES (55, '/uploads/20180523\\de7fe70c559ca084278112caf776d0a6.jpg', 44);
INSERT INTO `tp_ypic` VALUES (54, '/uploads/20180523\\7847b46e0ea1fa8ae9a779883ab1ba13.jpg', 42);
INSERT INTO `tp_ypic` VALUES (53, '/uploads/20180523\\034a6f4df76f6af780743ceee6bf4fd6.jpg', 42);
INSERT INTO `tp_ypic` VALUES (52, '/uploads/20180523\\bb7971fd6717d0c230f93990f72e7eb4.jpg', 39);
INSERT INTO `tp_ypic` VALUES (51, '/uploads/20180523\\a6a0e924e419359e0a9242480030149e.jpg', 38);
INSERT INTO `tp_ypic` VALUES (50, '/uploads/20180523\\fa2e5af10f889020ac0cb72b8f7a47df.jpg', 37);
INSERT INTO `tp_ypic` VALUES (49, '/uploads/20180523\\334956ff7df2d8667ee8ee483e41a77f.jpg', 33);
INSERT INTO `tp_ypic` VALUES (48, '/uploads/20180523\\14adbee3159deda80ae9b92ff38a7b6a.jpg', 31);
INSERT INTO `tp_ypic` VALUES (47, '/uploads/20180523\\d318e48367eec4c536b836498e58d97b.jpg', 30);
INSERT INTO `tp_ypic` VALUES (45, '/uploads/20180523\\cd81ee5cd7376c930b24d9e451297d4b.jpg', 24);
INSERT INTO `tp_ypic` VALUES (46, '/uploads/20180523\\4cc1afe80be7c7d8521e1779175de7ac.jpg', 27);

-- ----------------------------
-- Table structure for tp_ytype
-- ----------------------------
DROP TABLE IF EXISTS `tp_ytype`;
CREATE TABLE `tp_ytype`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`tname`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_ytype
-- ----------------------------
INSERT INTO `tp_ytype` VALUES (1, '入户');
INSERT INTO `tp_ytype` VALUES (2, '客厅');
INSERT INTO `tp_ytype` VALUES (3, '餐厅');
INSERT INTO `tp_ytype` VALUES (4, '厨房');
INSERT INTO `tp_ytype` VALUES (5, '阳台');
INSERT INTO `tp_ytype` VALUES (6, '卧室');
INSERT INTO `tp_ytype` VALUES (7, '主题');

SET FOREIGN_KEY_CHECKS = 1;

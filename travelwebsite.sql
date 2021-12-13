/*
 Navicat Premium Data Transfer

 Source Server         : localhostMySQL
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : travelwebsite

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 13/12/2021 20:18:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for backstage_user
-- ----------------------------
DROP TABLE IF EXISTS `backstage_user`;
CREATE TABLE `backstage_user`  (
  `uid` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of backstage_user
-- ----------------------------
INSERT INTO `backstage_user` VALUES (1, 'admin', 'admin');

-- ----------------------------
-- Table structure for travel_contact
-- ----------------------------
DROP TABLE IF EXISTS `travel_contact`;
CREATE TABLE `travel_contact`  (
  `CID` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cemail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cdate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 318 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of travel_contact
-- ----------------------------
INSERT INTO `travel_contact` VALUES (1, 'admin111', '3508886266@qq.com', '这里是内容1', '2021/6/6 18:30:05');
INSERT INTO `travel_contact` VALUES (2, '123', '2423258@qq.com', '推荐一些旅游景点', '2021/6/6 18:30:05');
INSERT INTO `travel_contact` VALUES (4, '11', '222@qq.com', '内容', '2021/6/6 18:30:05');
INSERT INTO `travel_contact` VALUES (121, '11', '234123123@qq.com', 'hello', '2021/6/6 18:30:05');
INSERT INTO `travel_contact` VALUES (122, '11', '234123123@qq.com', 'hello', '2021/6/6 18:30:05');
INSERT INTO `travel_contact` VALUES (123, '11', '234123123@qq.com', 'hello', '2021/6/6 18:30:05');
INSERT INTO `travel_contact` VALUES (124, '11', '234123123@qq.com', 'hello', '2021/6/6 18:30:05');
INSERT INTO `travel_contact` VALUES (125, '11', '234123123@qq.com', 'hello', '2021/6/6 18:30:05');
INSERT INTO `travel_contact` VALUES (126, '11', '234123123@qq.com', 'hello', '2021/6/6 18:30:05');
INSERT INTO `travel_contact` VALUES (127, 'zwj', '3508886266@qq.com', '123', '2021/6/6 18:30:05');
INSERT INTO `travel_contact` VALUES (128, 'zwx', '243735824@qq.com', '123123', '2021/6/6 18:30:05');
INSERT INTO `travel_contact` VALUES (130, '赵维隽', '2942453678@qq.com', '123', '2021/6/6 18:30:05');
INSERT INTO `travel_contact` VALUES (131, '赵维隽', '2942453678@qq.com', '123', '2021/6/6 18:30:05');
INSERT INTO `travel_contact` VALUES (132, '赵维隽', '2942453678@qq.com', '123', '2021/6/6 18:30:05');
INSERT INTO `travel_contact` VALUES (136, 'MickMick', '123456@qq.com', '即刻出发', '2021/6/6 18:30:05');
INSERT INTO `travel_contact` VALUES (138, '赵维隽', '2942453678@qq.com', '内容', '2021/6/6 18:30:05');
INSERT INTO `travel_contact` VALUES (156, 'MickJoe', '123456@qq.com', '123123', '2021/6/21 21:46:43');
INSERT INTO `travel_contact` VALUES (157, 'MickJoe', '123456@qq.com', '123123', '2021/6/21 21:46:43');
INSERT INTO `travel_contact` VALUES (288, '123', '123', '123', '123');
INSERT INTO `travel_contact` VALUES (309, '123', '123', '123', '123');
INSERT INTO `travel_contact` VALUES (310, '123', '123', '123', '123');
INSERT INTO `travel_contact` VALUES (313, '123', '123', '123', '123');
INSERT INTO `travel_contact` VALUES (314, '123', '123', '123', '123');
INSERT INTO `travel_contact` VALUES (315, '123', '123', '123', '123');
INSERT INTO `travel_contact` VALUES (316, '123', '123', '123', '123');
INSERT INTO `travel_contact` VALUES (317, '123', '123', '123', '123');
INSERT INTO `travel_contact` VALUES (318, 'testtest', 'test@qq.com', '测试内容', '2021/6/24 10:25:38');

-- ----------------------------
-- Table structure for travel_employee
-- ----------------------------
DROP TABLE IF EXISTS `travel_employee`;
CREATE TABLE `travel_employee`  (
  `EID` int(11) NOT NULL AUTO_INCREMENT,
  `ename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `eemail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `experience` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '大致工作经历',
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '期望岗位',
  `edate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`EID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of travel_employee
-- ----------------------------
INSERT INTO `travel_employee` VALUES (4, '赵维隽', '2942453678@qq.com', '2', '暂无', '技术', '2021/6/20 23:53:21');
INSERT INTO `travel_employee` VALUES (5, '赵维隽', '2942453678@qq.com', '1', '暂无', '人事/财务/行政', '2021/6/20 23:54:36');
INSERT INTO `travel_employee` VALUES (6, 'MickJoe', '123456@qq.com', '英国', '暂无', '金融', '2021/6/20 23:56:35');
INSERT INTO `travel_employee` VALUES (7, '11', '1@qq.com', '中国', '暑期实习', '产品', '2021/6/20 23:59:48');
INSERT INTO `travel_employee` VALUES (24, 'testtest', 'test@qq.com', '中国', '', '技术', '2021/6/24 10:26:37');

-- ----------------------------
-- Table structure for travel_line
-- ----------------------------
DROP TABLE IF EXISTS `travel_line`;
CREATE TABLE `travel_line`  (
  `LID` int(11) NOT NULL AUTO_INCREMENT,
  `destination` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图片',
  `rate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '评分',
  `startTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `endTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `member` int(11) NULL DEFAULT NULL,
  `cmtNums` int(11) NULL DEFAULT NULL COMMENT '点评数',
  PRIMARY KEY (`LID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of travel_line
-- ----------------------------
INSERT INTO `travel_line` VALUES (1, '中国', '黄山风景名胜', 'http://localhost:8085/travel/images/places/huangshan.jpg', '4.7', '2021-06-24', '2021-06-29', 3, 33372);
INSERT INTO `travel_line` VALUES (2, '中国', '唐城', 'http://localhost:8085/travel/images/places/tangcheng.jpg', '4.5', '2021-06-29', '2021-07-06', 2, 2694);
INSERT INTO `travel_line` VALUES (3, '中国', '渔村', 'http://localhost:8085/travel/images/places/yucun.jpg', '4.1', '2021-07-01', '2021-07-06', 3, 1530);
INSERT INTO `travel_line` VALUES (4, '中国', '汉城', 'http://localhost:8085/travel/images/places/hancheng.jpg', '4.2', '2021-07-10', '2021-07-19', 2, 264);
INSERT INTO `travel_line` VALUES (5, '中国', '张家界国家森林公园', 'http://localhost:8085/travel/images/places/zhangjiajie.jpg', '4.6', '2021-07-14', '2021-07-21', 3, 17391);
INSERT INTO `travel_line` VALUES (6, '中国', '上海外滩', 'http://localhost:8085/travel/images/places/shanghai.jpg', '4.8', '2021-07-17', '2021-07-22', 2, 63836);
INSERT INTO `travel_line` VALUES (7, '中国', '内蒙古呼伦贝尔', 'http://localhost:8085/travel/images/places/neimeng.jpg', '4.2', '2021-07-19', '2021-07-26', 3, 2215);
INSERT INTO `travel_line` VALUES (8, '中国', '厦门鼓浪屿', 'http://localhost:8085/travel/images/places/xiamen.jpg', '4.4', '2021-07-21', '2021-07-26', 2, 43465);
INSERT INTO `travel_line` VALUES (9, '中国', '香港尖沙咀', 'http://localhost:8085/travel/images/places/xianggang.jpg', '4.6', '2021-07-24', '2021-08-03', 3, 6133);
INSERT INTO `travel_line` VALUES (10, '中国', '苏州周庄', 'http://localhost:8085/travel/images/places/suzhou.jpg', '4.5', '2021-07-27', '2021-08-04', 2, 13107);
INSERT INTO `travel_line` VALUES (11, '日本', '心斋桥', 'http://localhost:8085/travel/images/places/xinzhaiqiao.jpg', '4.6', '2021-06-24', '2021-06-29', 3, 3492);
INSERT INTO `travel_line` VALUES (12, '日本', '清水寺', 'http://localhost:8085/travel/images/places/qingshuisi.jpg', '4.6', '2021-06-29', '2021-07-06', 2, 3090);
INSERT INTO `travel_line` VALUES (13, '日本', '银座', 'http://localhost:8085/travel/images/places/yinzuo.jpg', '4.6', '2021-07-01', '2021-07-06', 3, 3474);
INSERT INTO `travel_line` VALUES (14, '日本', '日本环球影城', 'http://localhost:8085/travel/images/places/huanqiuyingcheng.jpg', '4.8', '2021-07-10', '2021-07-19', 2, 13555);
INSERT INTO `travel_line` VALUES (15, '日本', '大阪城', 'http://localhost:8085/travel/images/places/dabancheng.jpg', '4.6', '2021-07-14', '2021-07-21', 3, 2049);
INSERT INTO `travel_line` VALUES (16, '日本', '东京塔', 'http://localhost:8085/travel/images/places/dongjingta.jpg', '4.6', '2021-07-17', '2021-07-22', 2, 3241);
INSERT INTO `travel_line` VALUES (17, '日本', '岚山', 'http://localhost:8085/travel/images/places/lanshan.jpg', '4.6', '2021-07-19', '2021-07-26', 3, 1415);
INSERT INTO `travel_line` VALUES (18, '日本', '新宿', 'http://localhost:8085/travel/images/places/xinsu.jpg', '4.6', '2021-07-21', '2021-07-26', 2, 1894);
INSERT INTO `travel_line` VALUES (19, '日本', '秋叶原', 'http://localhost:8085/travel/images/places/qiuyeyuan.jpg', '4.5', '2021-07-24', '2021-08-03', 3, 1296);
INSERT INTO `travel_line` VALUES (20, '日本', '富士山', 'http://localhost:8085/travel/images/places/fushishan.jpg', '4.6', '2021-07-27', '2021-08-04', 2, 1008);
INSERT INTO `travel_line` VALUES (21, '泰国', '大皇宫', 'http://localhost:8085/travel/images/places/dahuanggong.jpg', '4.4', '2021-06-24', '2021-06-29', 3, 9865);
INSERT INTO `travel_line` VALUES (22, '泰国', '芭东海滩', 'http://localhost:8085/travel/images/places/badonghaitan.jpg', '4.4', '2021-06-29', '2021-07-06', 2, 5846);
INSERT INTO `travel_line` VALUES (23, '泰国', '四面佛', 'http://localhost:8085/travel/images/places/simianfo.jpg', '4.5', '2021-07-01', '2021-07-06', 3, 4223);
INSERT INTO `travel_line` VALUES (24, '泰国', '湄南河', 'http://localhost:8085/travel/images/places/meinanhe.jpg', '4.4', '2021-07-10', '2021-07-19', 2, 2641);
INSERT INTO `travel_line` VALUES (25, '泰国', '双龙寺', 'http://localhost:8085/travel/images/places/shuanglongsi.jpg', '4.6', '2021-07-14', '2021-07-21', 3, 3275);
INSERT INTO `travel_line` VALUES (26, '泰国', '普吉镇', 'http://localhost:8085/travel/images/places/pujizhen.jpg', '4.4', '2021-07-17', '2021-07-22', 2, 2288);
INSERT INTO `travel_line` VALUES (27, '泰国', '考山路', 'http://localhost:8085/travel/images/places/kaoshanlu.jpg', '4.3', '2021-07-19', '2021-07-26', 3, 2161);
INSERT INTO `travel_line` VALUES (28, '泰国', '塔佩门', 'http://localhost:8085/travel/images/places/tapeimen.jpg', '4.4', '2021-07-21', '2021-07-26', 2, 2152);
INSERT INTO `travel_line` VALUES (29, '泰国', '珊瑚岛', 'http://localhost:8085/travel/images/places/shanhudao.jpg', '4.4', '2021-07-24', '2021-08-03', 3, 895);
INSERT INTO `travel_line` VALUES (30, '泰国', '幻多奇乐园', 'http://localhost:8085/travel/images/places/huanduoqi.jpg', '4.4', '2021-07-27', '2021-08-04', 2, 1879);
INSERT INTO `travel_line` VALUES (31, '美国', '好莱坞环球影城', 'http://localhost:8085/travel/images/places/huanqiuyingcheng2.jpg', '4.8', '2021-06-24', '2021-06-29', 3, 5195);
INSERT INTO `travel_line` VALUES (32, '美国', '金门大桥', 'http://localhost:8085/travel/images/places/jinmendaqiao.jpg', '4.6', '2021-06-29', '2021-07-06', 2, 1621);
INSERT INTO `travel_line` VALUES (33, '美国', '军舰岛', 'http://localhost:8085/travel/images/places/junjiandao.jpg', '4.7', '2021-07-01', '2021-07-06', 3, 1478);
INSERT INTO `travel_line` VALUES (34, '美国', '自由女神像', 'http://localhost:8085/travel/images/places/ziyounvshen.jpg', '4.7', '2021-07-10', '2021-07-19', 2, 2087);
INSERT INTO `travel_line` VALUES (35, '美国', '中央公园', 'http://localhost:8085/travel/images/places/zhongyanggongyuan.jpg', '4.6', '2021-07-14', '2021-07-21', 3, 1171);
INSERT INTO `travel_line` VALUES (36, '美国', '帝国大厦', 'http://localhost:8085/travel/images/places/diguodasha.jpg', '4.7', '2021-07-17', '2021-07-22', 2, 1880);
INSERT INTO `travel_line` VALUES (37, '美国', '渔人码头', 'http://localhost:8085/travel/images/places/yurenmatou.jpg', '4.5', '2021-07-19', '2021-07-26', 3, 1152);
INSERT INTO `travel_line` VALUES (38, '美国', '时代广场', 'http://localhost:8085/travel/images/places/shidaiguangchang.jpg', '4.6', '2021-07-21', '2021-07-26', 2, 1623);
INSERT INTO `travel_line` VALUES (39, '美国', '斯坦福大学', 'http://localhost:8085/travel/images/places/sitanfu.jpg', '4.7', '2021-07-24', '2021-08-03', 3, 622);
INSERT INTO `travel_line` VALUES (40, '美国', '夏威夷岛', 'http://localhost:8085/travel/images/places/xiaweiyi.jpg', '4.4', '2021-07-27', '2021-08-04', 2, 248);
INSERT INTO `travel_line` VALUES (41, '意大利', '圣马可广场', 'http://localhost:8085/travel/images/places/shengmake.jpg', '4.6', '2021-06-24', '2021-06-29', 3, 1246);
INSERT INTO `travel_line` VALUES (42, '意大利', '米兰大教堂', 'http://localhost:8085/travel/images/places/milandajiaotang.jpg', '4.6', '2021-06-29', '2021-07-06', 2, 1616);
INSERT INTO `travel_line` VALUES (43, '意大利', '大运河', 'http://localhost:8085/travel/images/places/dayunhe.jpg', '4.7', '2021-07-01', '2021-07-06', 3, 800);
INSERT INTO `travel_line` VALUES (44, '意大利', '叹息桥', 'http://localhost:8085/travel/images/places/tanxiqiao.jpg', '4.5', '2021-07-10', '2021-07-19', 2, 767);
INSERT INTO `travel_line` VALUES (45, '意大利', '万神殿', 'http://localhost:8085/travel/images/places/wanshendian.jpg', '4.6', '2021-07-14', '2021-07-21', 3, 864);
INSERT INTO `travel_line` VALUES (46, '意大利', '比萨斜塔', 'http://localhost:8085/travel/images/places/bisaxieta.jpg', '4.6', '2021-07-17', '2021-07-22', 2, 678);
INSERT INTO `travel_line` VALUES (47, '意大利', '圣天使堡', 'http://localhost:8085/travel/images/places/shengtianshibao.jpg', '4.5', '2021-07-19', '2021-07-26', 3, 358);
INSERT INTO `travel_line` VALUES (48, '意大利', '五渔村', 'http://localhost:8085/travel/images/places/wuyucun.jpg', '4.5', '2021-07-21', '2021-07-26', 2, 303);
INSERT INTO `travel_line` VALUES (49, '意大利', '佛罗伦萨', 'http://localhost:8085/travel/images/places/foluolunsa.jpg', '4.4', '2021-07-24', '2021-08-03', 3, 713);
INSERT INTO `travel_line` VALUES (50, '意大利', '维罗纳', 'http://localhost:8085/travel/images/places/weiluona.jpg', '4.4', '2021-07-27', '2021-08-04', 2, 111);
INSERT INTO `travel_line` VALUES (51, '法国', '卢浮宫博物馆', 'http://localhost:8085/travel/images/places/lufugong.jpg', '4.7', '2021-06-24', '2021-06-29', 3, 5119);
INSERT INTO `travel_line` VALUES (52, '法国', '埃菲尔铁塔', 'http://localhost:8085/travel/images/places/aifeier.jpg', '4.7', '2021-06-29', '2021-07-06', 2, 3429);
INSERT INTO `travel_line` VALUES (53, '法国', '塞纳河', 'http://localhost:8085/travel/images/places/sainahe.jpg', '4.7', '2021-07-01', '2021-07-06', 3, 1847);
INSERT INTO `travel_line` VALUES (54, '法国', '凯旋门', 'http://localhost:8085/travel/images/places/kaixuanmen.jpg', '4.6', '2021-07-10', '2021-07-19', 2, 2115);
INSERT INTO `travel_line` VALUES (55, '法国', '巴黎圣母院', 'http://localhost:8085/travel/images/places/balishengmuyuan.jpg', '4.6', '2021-07-14', '2021-07-21', 3, 2216);
INSERT INTO `travel_line` VALUES (56, '法国', '凡尔赛宫', 'http://localhost:8085/travel/images/places/fanersai.jpg', '4.6', '2021-07-17', '2021-07-22', 2, 2097);
INSERT INTO `travel_line` VALUES (57, '法国', '香榭丽舍大街', 'http://localhost:8085/travel/images/places/xiangxielishe.jpg', '4.5', '2021-07-19', '2021-07-26', 3, 879);
INSERT INTO `travel_line` VALUES (58, '法国', '协和广场', 'http://localhost:8085/travel/images/places/xieheguangchang.jpg', '4.4', '2021-07-21', '2021-07-26', 2, 669);
INSERT INTO `travel_line` VALUES (59, '法国', '卢森堡公园', 'http://localhost:8085/travel/images/places/lusenbao.jpg', '4.5', '2021-07-24', '2021-08-03', 3, 416);
INSERT INTO `travel_line` VALUES (60, '法国', '亚历山大三世桥', 'http://localhost:8085/travel/images/places/yalishanda.jpg', '4.5', '2021-07-27', '2021-08-04', 2, 357);

-- ----------------------------
-- Table structure for travel_services
-- ----------------------------
DROP TABLE IF EXISTS `travel_services`;
CREATE TABLE `travel_services`  (
  `SID` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `semail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `classify` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `isHot` tinyint(2) NULL DEFAULT NULL COMMENT '0为非热门/1为热门',
  `sdate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of travel_services
-- ----------------------------
INSERT INTO `travel_services` VALUES (1, '12345', '123', '123', '123', '123', 1, NULL);
INSERT INTO `travel_services` VALUES (2, '赵维隽', '2942453678@qq.com', '拜登：我盯紧中国 中东：你不行', '123', '典藏', 1, NULL);
INSERT INTO `travel_services` VALUES (4, '赵维隽', '2942453678@qq.com', '够有料', '123', '美图', 0, NULL);
INSERT INTO `travel_services` VALUES (5, '赵维隽', '2942453678@qq.com', 'gogogo', '大致内容', '美图', 1, NULL);
INSERT INTO `travel_services` VALUES (6, '赵维隽', '2942453678@qq.com', '真材实料', '啊这', '实用', 0, '2021/6/6 18:34:45');
INSERT INTO `travel_services` VALUES (20, 'testtest', 'test@qq.com', '测试内容', '测试', '美图', 1, '2021/6/24 10:28:02');

-- ----------------------------
-- Table structure for travel_services_official
-- ----------------------------
DROP TABLE IF EXISTS `travel_services_official`;
CREATE TABLE `travel_services_official`  (
  `OID` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tips` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `picNums` int(11) NULL DEFAULT NULL COMMENT '图片数',
  `cmtNums` int(11) NULL DEFAULT NULL COMMENT 'commentsNumbers(评论数)',
  `watchNums` int(11) NULL DEFAULT NULL COMMENT '浏览数',
  `days` int(11) NULL DEFAULT NULL COMMENT '游行天数',
  `fees` int(11) NULL DEFAULT NULL COMMENT '消费',
  `member` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '旅行成员',
  PRIMARY KEY (`OID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of travel_services_official
-- ----------------------------
INSERT INTO `travel_services_official` VALUES (1, 'http://localhost:8085/travel/images/services/services_1.jpg', '巴厘岛 | 总有一个假日，要属于bali', '筱莲', '2021-03-03', '是没想到，提笔写此巴厘岛执行的回忆时，是此番情况。', 152, 32, 37497, 6, 3000, '夫妻');
INSERT INTO `travel_services_official` VALUES (2, 'http://localhost:8085/travel/images/services/services_2.jpg', '马来西亚 | 惬意在槟城，纵身一跃仙本那', '段小澎湃', '2021-03-01', '马来西亚是我一直很想要去的地方，想去沙巴潜水，想去热浪岛回味年少时的夏日么么茶，想去槟城与斑斓的壁画融为一体，想去仙本那看看这个被称作世界上左后的伊甸园。', 508, 20, 18425, 9, 7800, '朋友');
INSERT INTO `travel_services_official` VALUES (3, 'http://localhost:8085/travel/images/services/services_3.jpg', '手绘琅勃拉邦 | 来日方长，在美丽旧世界“浪费”时光', 'Rinko咩咩', '2021-03-03', '“世界每天都在变，幸运的是，总有一些固守原貌的地方”。', 314, 21, 23987, 5, 4000, '朋友');
INSERT INTO `travel_services_official` VALUES (4, 'http://localhost:8085/travel/images/services/services_4.jpg', '成都在左，幸福在右，人间烟火，理想生活 | 2020成都最新版游记', '林琛Live', '2020-08-19', '在想到动笔开始写这篇游记之前，突然发现有一种和成都久违的感觉。可能是因为疫情的原因，相比以前在成都走街串巷的日子少了；也或许时因为，真的很久没有好好感受成都了。', 260, 31, 23307, 4, 2500, '朋友');

-- ----------------------------
-- Table structure for travel_total
-- ----------------------------
DROP TABLE IF EXISTS `travel_total`;
CREATE TABLE `travel_total`  (
  `TID` int(11) NOT NULL AUTO_INCREMENT,
  `travelNum` int(10) NULL DEFAULT NULL,
  `userNum` int(10) NULL DEFAULT NULL,
  `employeeNum` int(10) NULL DEFAULT NULL,
  `countryNum` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`TID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of travel_total
-- ----------------------------
INSERT INTO `travel_total` VALUES (1, 9014, 8492, 56, 125);

SET FOREIGN_KEY_CHECKS = 1;

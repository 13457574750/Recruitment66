/*
 Navicat Premium Data Transfer

 Source Server         : song
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : recruitment

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 20/04/2020 17:02:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `admin_Id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_Login_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员登录账号',
  `admin_Login_Password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员登录密码',
  PRIMARY KEY (`admin_Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of admin
-- ----------------------------
BEGIN;
INSERT INTO `admin` VALUES (1, 'admin', '123456');
COMMIT;

-- ----------------------------
-- Table structure for apply
-- ----------------------------
DROP TABLE IF EXISTS `apply`;
CREATE TABLE `apply`  (
  `apply_Id` int(50) NOT NULL AUTO_INCREMENT COMMENT '简历投递申请主键ID',
  `apply_Release_Time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位投递时间',
  `job_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职位主键ID',
  `job_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作名称',
  `job_Address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作地址',
  `job_Salary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '月薪',
  `job_ER` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经验',
  `job_Education` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历',
  `job_Release_Time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作发布时间',
  `job_Type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作类型',
  `company_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司名称',
  `company_Create_Time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司LOGO',
  `user_Real_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户真实姓名',
  PRIMARY KEY (`apply_Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 195 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of apply
-- ----------------------------
BEGIN;
INSERT INTO `apply` VALUES (146, 'Fri Apr 10 2020 21:33:08 GMT+0800 (中国标准时间)', '26', '小米工程师', '北京市', '10k-15k', '3-5年', '本科', '2020-04-05', '全职', '小米', 'xiaomi.jpg', '汉堡包'), (148, 'Sun Apr 12 2020 18:36:14 GMT+0800 (中国标准时间)', '27', '小米设计师', '北京市', '15k-20k', '3-5年', '硕士', '2020-04-03', '全职', '小米', 'xiaomi.jpg', '饭团'), (171, 'Sun Apr 12 2020 19:46:58 GMT+0800 (中国标准时间)', '43', '111', '不限', '', '不限', '不限', '', '不限', '中国移动', 'yidong.jpg', 'sss'), (174, 'Sun Apr 12 2020 20:06:04 GMT+0800 (中国标准时间)', '26', '小米工程师', '北京市', '10k-15k', '3-5年', '本科', '2020-04-05', '全职', '小米', 'xiaomi.jpg', '饭团'), (175, 'Sun Apr 12 2020 20:06:07 GMT+0800 (中国标准时间)', '29', '小米高级工程师', '广州', '25k-50k', '5-10年', '博士', '2020-04-02', '全职', '小米', 'xiaomi.jpg', '饭团'), (178, 'Mon Apr 13 2020 15:40:23 GMT+0800 (中国标准时间)', '26', '小米工程师', '北京市', '10k-15k', '3-5年', '本科', '2020-04-05', '全职', '小米', 'xiaomi.jpg', '小赵子'), (179, 'Mon Apr 13 2020 15:40:26 GMT+0800 (中国标准时间)', '29', '小米高级工程师', '广州', '25k-50k', '5-10年', '博士', '2020-04-02', '全职', '小米', 'xiaomi.jpg', '小赵子'), (180, 'Mon Apr 13 2020 15:40:28 GMT+0800 (中国标准时间)', '27', '小米设计师', '北京市', '15k-20k', '3-5年', '硕士', '2020-04-03', '全职', '小米', 'xiaomi.jpg', '小赵子'), (181, 'Mon Apr 13 2020 15:40:39 GMT+0800 (中国标准时间)', '52', '44', '不限', '3k-5k', '不限', '不限', '', '不限', '小米', 'xiaomi.jpg', '小赵子'), (182, 'Mon Apr 13 2020 15:42:17 GMT+0800 (中国标准时间)', '54', '66', '不限', '', '不限', '不限', '', '不限', '小米', 'xiaomi.jpg', '小赵子'), (184, 'Mon Apr 13 2020 15:42:42 GMT+0800 (中国标准时间)', '31', '百度设计师', '杭州', '10k-15k', '10年以上', '硕士', '2020-04-06', '实习', '百度', 'baidu.jpg', '小赵子'), (185, 'Mon Apr 13 2020 15:42:46 GMT+0800 (中国标准时间)', '32', '百架构师', '杭州', '3k-5k', '5-10年', '硕士', '2020-04-01', '兼职', '百度', 'baidu.jpg', '小赵子'), (186, 'Mon Apr 13 2020 15:42:49 GMT+0800 (中国标准时间)', '33', '百度高级设计师', '广州', '50k以上', '5-10年', '无学历要求', '2020-04-01', '兼职', '百度', 'baidu.jpg', '小赵子'), (187, 'Mon Apr 13 2020 15:43:17 GMT+0800 (中国标准时间)', '31', '百度设计师', '杭州', '10k-15k', '10年以上', '硕士', '2020-04-06', '实习', '百度', 'baidu.jpg', '小红子'), (192, 'Tue Apr 14 2020 18:05:29 GMT+0800 (中国标准时间)', '31', '百度设计师', '杭州', '10k-15k', '10年以上', '硕士', '2020-04-06', '实习', '百度', 'baidu.jpg', '饭团'), (193, 'Tue Apr 14 2020 18:06:19 GMT+0800 (中国标准时间)', '33', '百度高级设计师', '广州', '50k以上', '5-10年', '无学历要求', '2020-04-01', '兼职', '百度', 'baidu.jpg', '饭团'), (194, 'Tue Apr 14 2020 18:06:22 GMT+0800 (中国标准时间)', '35', '淘宝工程师', '杭州', '10k-15k', '5-10年', '硕士', '2020-04-01', '全职', '淘宝', 'taobao.jpg', '饭团'), (195, 'Tue Apr 14 2020 18:06:30 GMT+0800 (中国标准时间)', '52', '44', '不限', '3k-5k', '不限', '不限', '', '不限', '小米', 'xiaomi.jpg', '饭团');
COMMIT;

-- ----------------------------
-- Table structure for board
-- ----------------------------
DROP TABLE IF EXISTS `board`;
CREATE TABLE `board`  (
  `board_Id` int(50) NOT NULL AUTO_INCREMENT COMMENT '留言ID',
  `board_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '留言者',
  `board_Email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '留言者的邮箱',
  `board_Content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '留言内容',
  `board_Time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '留言时间',
  PRIMARY KEY (`board_Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of board
-- ----------------------------
BEGIN;
INSERT INTO `board` VALUES (1, '1', '1', '1', '1'), (2, '2', '2', '2', '2'), (3, '1', '1', '3', '3'), (4, '4', '4', '4', '4'), (5, '5', '5', '5', '5'), (6, '6', '6', '6', '6'), (7, '5', '5', '5', '5'), (8, '5', '5', '5', '5'), (9, '5', '5', '5', '5'), (19, '222', '22@QQ.COM', '222', 'Mon Apr 13 2020 21:06:35 GMT+0800 (中国标准时间)'), (20, '5555', '55@qq.com', '666', 'Mon Apr 13 2020 21:08:55 GMT+0800 (中国标准时间)'), (21, '7878', '78787@QQ.COM', '11111', 'Tue Apr 14 2020 16:44:57 GMT+0800 (中国标准时间)');
COMMIT;

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `company_Id` int(50) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `company_Login_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司登录名',
  `company_Login_Password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司登录密码',
  `company_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司名称',
  `company_Type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司所属类型',
  `company_Industry` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属行业',
  `company_Profile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司简介经营范围',
  `company_Address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司地址',
  `company_Web` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司网址',
  `company_Phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司电话',
  `company_Email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司邮箱',
  `company_Number` int(50) NULL DEFAULT NULL COMMENT '公司人数',
  `company_Owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司所有人',
  `company_Register_Capital` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司注册资本',
  `company_Create_Time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司创建时间',
  PRIMARY KEY (`company_Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of company
-- ----------------------------
BEGIN;
INSERT INTO `company` VALUES (27, '1', '1', '小米', '私营企业', '移动互联网', '小米居家', '北京', 'www.xiaomi.com', '13311112222', 'xiaomi@qq.com', 1000, '小卢', '10000万', 'xiaomi.jpg'), (28, '2', '2', '百度', '股份制企业', '人工智能', '百度啥都有', '南京', 'www.baidu.com', '12211221122', 'baidu@qq.com', 1000, '小范', '20000万', 'baidu.jpg'), (29, '3', '3', '淘宝', '外商投资企业', '电商', '买东西上淘宝', '广州', 'www.taobao.com', '12211221122', 'taobao@qq.com', 2000, '小黄', '30000万', 'taobao.jpg'), (30, '4', '4', '阿里巴巴', '外商投资企业', '教育', '阿里牛逼', '南京', 'www.alibab.com', '12211221122', 'alibaba@qq.com', 3000, '小李', '30000万', 'alibaba.jpg'), (31, '5', '5', '微软', '国有企业', '软件开发', '微软电脑专卖店', '天津', 'www.weiruan.com', '12211221122', 'weiruan@qq.com', 4000, '小张', '30000万', 'weiruan.jpg'), (32, '6', '6', '华为', '股份合作企业', '信息安全', '华为手机销售店', '北京', 'www.huawei.com', '12211221122', 'huawei@qq.com', 5000, '小谭', '30000万', 'huawei.jpg'), (33, '7', '7', '腾讯', '集体所有制企业', '教育', '腾讯充钱变无敌', '深圳', 'www.tengxun.com', '12211221122', 'tengxun@qq.com', 6000, '小杨', '30000万', 'tengxun.jpg'), (34, '8', '8', '网易云', '私营企业', '医疗', '网易云音乐天天听', '深圳', 'www.wangyiyun.com', '12211221122', 'wangyiyun@qq.com', 7000, '小红', '30000万', 'wangyiyun.jpg'), (35, '9', '9', '酷狗', '联营企业', '社交旅游', '酷狗音乐也有听', '福建', 'www.kugou.com', '12211221122', 'kugou@qq.com', 8000, '小华', '30000万', 'kugou.jpg'), (36, '10', '10', '雷霆游戏', '股份合作企业', '房产家居', '雷霆游戏我最爱', '厦门', 'www.leitinggame.com', '12211221122', 'leiting@qq.com', 9000, '小弟', '30000万', 'leitinggame.jpg'), (37, '11', '11', '中国移动', '私营企业', '移动互联网', '', '南宁', 'www.yidong.com', '12211221122', 'yidong@qq.com', 100, '小赵', '30000万', 'yidong.jpg'), (38, '12', '12', '中国联通', '港、澳、台投资企业', '信息安全', '中国联通业务卡', '南宁', 'www.liantong.com', '12211221122', 'liantong@qq.com', 9000, '小黎', '30000万', 'liantong.jpg'), (39, '13', '13', '中国电信', '港、澳、台投资企业', '信息安全', '中国电信网络卡', '南宁', 'www.dianxin.com', '12211221122', 'dianxin@qq.com', 9000, '小覃', '30000万', 'dianxin.jpg');
COMMIT;

-- ----------------------------
-- Table structure for favorites
-- ----------------------------
DROP TABLE IF EXISTS `favorites`;
CREATE TABLE `favorites`  (
  `favorite_Id` int(50) NOT NULL AUTO_INCREMENT COMMENT '收藏夹主键ID',
  `favorite_Release_Time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位收藏时间',
  `job_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职位主键ID',
  `job_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作名称',
  `job_Address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作地址',
  `job_Salary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '月薪',
  `job_ER` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经验',
  `job_Education` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历',
  `job_Release_Time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作发布时间',
  `job_Type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作类型',
  `company_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司名称',
  `company_Create_Time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司LOGO',
  `user_Real_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户真实姓名',
  PRIMARY KEY (`favorite_Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 119 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of favorites
-- ----------------------------
BEGIN;
INSERT INTO `favorites` VALUES (97, 'Sun Apr 12 2020 18:39:49 GMT+0800 (中国标准时间)', '27', '小米设计师', '北京市', '15k-20k', '3-5年', '硕士', '2020-04-03', '全职', '小米', 'xiaomi.jpg', '饭团'), (99, 'Sun Apr 12 2020 18:41:18 GMT+0800 (中国标准时间)', '30', '百度工程师', '不限', '', '3年以下', '硕士', '2020-04-09', '兼职', '百度', 'baidu.jpg', 'sss'), (102, 'Sun Apr 12 2020 18:49:29 GMT+0800 (中国标准时间)', '43', '111', '不限', '', '不限', '不限', '', '不限', '中国移动', 'yidong.jpg', 'sss'), (103, 'Sun Apr 12 2020 18:56:13 GMT+0800 (中国标准时间)', '29', '小米高级工程师', '广州', '25k-50k', '5-10年', '博士', '2020-04-02', '全职', '小米', 'xiaomi.jpg', '饭团'), (108, 'Sun Apr 12 2020 19:49:04 GMT+0800 (中国标准时间)', '31', '百度设计师', '杭州', '10k-15k', '10年以上', '硕士', '2020-04-06', '实习', '百度', 'baidu.jpg', 'sss'), (109, 'Sun Apr 12 2020 19:49:06 GMT+0800 (中国标准时间)', '32', '百架构师', '杭州', '3k-5k', '5-10年', '硕士', '2020-04-01', '兼职', '百度', 'baidu.jpg', 'sss'), (110, 'Sun Apr 12 2020 19:49:09 GMT+0800 (中国标准时间)', '33', '百度高级设计师', '广州', '50k以上', '5-10年', '无学历要求', '2020-04-01', '兼职', '百度', 'baidu.jpg', 'sss'), (111, 'Sun Apr 12 2020 19:49:13 GMT+0800 (中国标准时间)', '44', '222', '不限', '', '不限', '不限', '', '不限', '中国移动', 'yidong.jpg', 'sss'), (112, 'Sun Apr 12 2020 19:49:15 GMT+0800 (中国标准时间)', '45', '333', '不限', '', '不限', '不限', '', '不限', '中国移动', 'yidong.jpg', 'sss'), (113, 'Sun Apr 12 2020 19:49:17 GMT+0800 (中国标准时间)', '46', '444', '不限', '', '不限', '不限', '', '不限', '中国移动', 'yidong.jpg', 'sss'), (115, 'Mon Apr 13 2020 15:40:21 GMT+0800 (中国标准时间)', '27', '小米设计师', '北京市', '15k-20k', '3-5年', '硕士', '2020-04-03', '全职', '小米', 'xiaomi.jpg', '小赵子'), (116, 'Mon Apr 13 2020 15:47:08 GMT+0800 (中国标准时间)', '26', '小米工程师', '北京市', '10k-15k', '3-5年', '本科', '2020-04-05', '全职', '小米', 'xiaomi.jpg', '小红子'), (117, 'Mon Apr 13 2020 17:42:03 GMT+0800 (中国标准时间)', '30', '百度工程师', '不限', '', '3年以下', '硕士', '2020-04-09', '兼职', '百度', 'baidu.jpg', '小李子');
COMMIT;

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job`  (
  `job_Id` int(50) NOT NULL AUTO_INCREMENT COMMENT '职位主键ID',
  `job_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位名称',
  `job_Salary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位工资',
  `job_Address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位工作地址',
  `job_ER` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经验要求',
  `job_Education` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历要求',
  `job_Type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作类型',
  `job_Release_Time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位发布时间',
  `job_Number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '招聘人数',
  `job_Welfare` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位福利',
  `job_Content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位内容',
  `job_Requirements` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位要求',
  `company_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司ID',
  PRIMARY KEY (`job_Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of job
-- ----------------------------
BEGIN;
INSERT INTO `job` VALUES (26, '小米工程师', '10k-15k', '北京市', '3-5年', '本科', '全职', '2020-04-05', '50-100人', '美女多，有吃的', '看电脑', '玩电脑', '27'), (27, '小米设计师', '15k-20k', '北京市', '3-5年', '硕士', '全职', '2020-04-03', '10-50人', '设计', '设计', '设计', '27'), (29, '小米高级工程师', '25k-50k', '广州', '5-10年', '博士', '全职', '2020-04-02', '10人以下', '高级工程', '高级工程', '高级工程', '27'), (30, '百度工程师', '', '不限', '3年以下', '硕士', '兼职', '2020-04-09', '10-50人', '百度', '百度', '百度', '28'), (31, '百度设计师', '10k-15k', '杭州', '10年以上', '硕士', '实习', '2020-04-06', '100-200人', '百度', '百度', '百度', '28'), (32, '百架构师', '3k-5k', '杭州', '5-10年', '硕士', '兼职', '2020-04-01', '10-50人', '百度', '百度', '百度', '28'), (33, '百度高级设计师', '50k以上', '广州', '5-10年', '无学历要求', '兼职', '2020-04-01', '10-50人', '百度', '百度', '百度', '28'), (35, '淘宝工程师', '10k-15k', '杭州', '5-10年', '硕士', '全职', '2020-04-01', '50-100人', '淘宝啥都有', '淘宝啥都有', '淘宝啥都有', '29'), (38, '工程师', '10k-15k', '苏州', '3-5年', '博士', '全职', '2020-04-15', '10-50人', '2', '2', '2', '28'), (39, '通信工程师', '25k-50k', '广州', '3-5年', '本科', '全职', '2020-04-22', '50-100人', '33', '33', '33', '37'), (43, '111', '', '不限', '不限', '不限', '不限', '', '10人以下', '', '', '', '37'), (44, '222', '', '不限', '不限', '不限', '不限', '', '10人以下', '', '', '', '37'), (45, '333', '', '不限', '不限', '不限', '不限', '', '10人以下', '', '', '', '37'), (46, '444', '', '不限', '不限', '不限', '不限', '', '10人以下', '', '', '', '37'), (47, '5555', '', '不限', '不限', '不限', '不限', '', '10人以下', '', '', '', '37'), (48, '6666', '', '不限', '不限', '不限', '不限', '', '10人以下', '', '', '', '37'), (49, '7777', '', '不限', '不限', '不限', '不限', '', '10人以下', '', '', '', '37'), (50, '888888', '', '不限', '不限', '不限', '不限', '', '10人以下', '', '', '', '37'), (51, '百度', '', '不限', '不限', '不限', '不限', '', '10人以下', '111111', '111', '11', '28'), (52, '44', '3k-5k', '不限', '不限', '不限', '不限', '', '10人以下', '', '', '', '27'), (53, '55', '', '不限', '不限', '不限', '不限', '', '10人以下', '', '', '', '27'), (54, '66', '', '不限', '不限', '不限', '不限', '', '10人以下', '', '', '', '27');
COMMIT;

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `test_Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `test_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名字',
  `test_Sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`test_Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of test
-- ----------------------------
BEGIN;
INSERT INTO `test` VALUES (50, 'f29c762aee9c40b191e54fbeee76366b.jpeg', '1'), (51, 'f80bea4f1c184eae887693355643eaf9.jpeg', '2'), (52, 'ec9428b03c31441aa8b47c8b5497347b.png', '');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user_Login_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户登录账号',
  `user_Login_Password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户登录密码',
  `user_Phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户手机号',
  `user_Email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `user_Real_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户真实姓名',
  `user_Sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户性别',
  `user_Birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户出生日期',
  `user_Education` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户最高学历',
  `user_University` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户毕业院校',
  `user_Major` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户所学专业',
  `user_Profile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户简介',
  `user_Technology` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户掌握技能',
  `user_Want_Money` double(255, 0) NULL DEFAULT NULL COMMENT '用户期望薪资',
  `user_State` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户状态',
  `user_Create_Time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户创建时间',
  PRIMARY KEY (`user_Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, '11', '11', '110', 'xiaolizi@qq.com', '小李子', '男', '2020-02-01', '本科', '广西大学', '软件工程', '测试一号2', '电竞第一', 50000, '一周内就职', '1e44aceb-4040-4fe1-aec7-23d37ce1016bhashiqi.jpg'), (57, '22', '22', '12033', 'xiaozhaozi@qq.com', '小赵子', '女', '2020-03-01', '博士', '南京大学1', '网络工程', '测试二号44', '王者荣耀11', 100000, '半年内就职', 'maomi.jpg'), (58, '33', '33', '130', 'xiaohongzi@qq.com', '小红子', '女', '2020-04-01', '博士', '北京大学', '计算机专业', '测试三号2', '精通计算机', 500000, '半年内就职', 'samoye.jpg'), (62, '777', '777', '2', '121@qq.com', '饭团', '男', '2020-04-25', '本科', '南京大学1', '通信工程', '2', '7444', 50000, '半年内就职', 'maomi.jpg'), (63, '123456', '123456', '3333', '123456@qq.com', '汉堡包', '女', '2020-04-25', '硕士', '南京大学1', '网络工程', '1111', '王者荣耀111', 50000, '一个月内就职', 'hashiqi.jpg'), (64, '0', '0', '12121', '0@qq.com', 'sss', '男', '2020-04-03', '硕士', '4444', '通信工程', '测试二号44', '王者荣耀111', 100000, '一个月内就职', 'maomi2.jpg');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

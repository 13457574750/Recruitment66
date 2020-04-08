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

 Date: 07/04/2020 19:31:31
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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '123456');

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
) ENGINE = InnoDB AUTO_INCREMENT = 121 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of apply
-- ----------------------------
INSERT INTO `apply` VALUES (131, 'Tue Apr 07 2020 17:41:53 GMT+0800 (中国标准时间)', '26', '小米工程师', '北京市', '10k-15k', '3-5年', '本科', '2020-04-05', '全职', '小米', '1.jpg', '小羊');
INSERT INTO `apply` VALUES (132, 'Tue Apr 07 2020 17:42:01 GMT+0800 (中国标准时间)', '30', '百度工程师', '不限', '', '3年以下', '硕士', '2020-04-09', '兼职', '百度', '1.jpg', '小羊');
INSERT INTO `apply` VALUES (133, 'Tue Apr 07 2020 17:44:23 GMT+0800 (中国标准时间)', '33', '百度高级设计师', '广州', '50k以上', '5-10年', '无学历要求', '2020-04-01', '兼职', '百度', '1.jpg', '小羊');

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
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES (27, '123456', '123456', '小米', '私营企业', '移动互联网', '小米居家全能造', '北京', 'www.baidu.com', '13311112222', '123456@qq.com', 1000, '小卢', '10000万', '1.jpg');
INSERT INTO `company` VALUES (28, '1', '1', '百度', '私营企业', '移动互联网', '百度啥都有', '北京', 'www.baidu.com', '12211221122', '1@qq.com', 1000, '小范', '20000万', '1.jpg');
INSERT INTO `company` VALUES (29, '2', '2', '淘宝', '私营企业', '软件开发', '买东西上淘宝', '南京', 'www.baidu.com', '12211221122', '2@qq.com', 2000, '小黄', '30000万', '1.jpg');
INSERT INTO `company` VALUES (30, '3', '3', '阿里巴巴', '私营企业', '软件开发', '阿里爸爸', '南京', 'www.baidu.com', '12211221122', '2@qq.com', 3000, '小李', '30000万', '1.jpg');
INSERT INTO `company` VALUES (31, '4', '4', '阿里妈妈', '私营企业', '软件开发', '阿里妈妈', '北京', 'www.baidu.com', '12211221122', '2@qq.com', 4000, '小张', '30000万', '1.jpg');
INSERT INTO `company` VALUES (32, '5', '5', '华为', '私营企业', '软件开发', '华为手机牛逼', '北京', 'www.baidu.com', '12211221122', '2@qq.com', 5000, '小谭', '30000万', '1.jpg');
INSERT INTO `company` VALUES (33, '6', '6', '腾讯', '私营企业', '软件开发', '腾讯牛逼', '深圳', 'www.baidu.com', '12211221122', '2@qq.com', 6000, '小杨', '30000万', '1.jpg');
INSERT INTO `company` VALUES (34, '7', '7', '网易云', '私营企业', '软件开发', '网易云牛逼', '深圳', 'www.baidu.com', '12211221122', '2@qq.com', 7000, '小红', '30000万', '1.jpg');
INSERT INTO `company` VALUES (35, '8', '8', '酷狗', '私营企业', '软件开发', '酷狗牛逼', '厦门', 'www.baidu.com', '12211221122', '2@qq.com', 8000, '小华', '30000万', '1.jpg');
INSERT INTO `company` VALUES (36, '9', '9', '雷霆游戏', '私营企业', '软件开发', '雷霆游戏加油', '厦门', 'www.baidu.com', '12211221122', '2@qq.com', 9000, '小弟', '30000万', '1.jpg');

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
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of favorites
-- ----------------------------
INSERT INTO `favorites` VALUES (79, 'Tue Apr 07 2020 17:41:56 GMT+0800 (中国标准时间)', '27', '小米设计师', '北京市', '15k-20k', '3-5年', '硕士', '2020-04-03', '全职', '小米', '1.jpg', '小羊');

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
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES (26, '小米工程师', '10k-15k', '北京市', '3-5年', '本科', '全职', '2020-04-05', '50-100人', '美女多，有吃的', '看电脑', '玩电脑', '27');
INSERT INTO `job` VALUES (27, '小米设计师', '15k-20k', '北京市', '3-5年', '硕士', '全职', '2020-04-03', '10-50人', '设计', '设计', '设计', '27');
INSERT INTO `job` VALUES (28, '小米架构师', '10k-15k', '上海', '3年以下', '硕士', '全职', '2020-04-03', '100-200人', '架构', '架构', '架构', '27');
INSERT INTO `job` VALUES (29, '小米高级工程师', '25k-50k', '广州', '5-10年', '博士', '全职', '2020-04-02', '10人以下', '高级工程', '高级工程', '高级工程', '27');
INSERT INTO `job` VALUES (30, '百度工程师', '', '不限', '3年以下', '硕士', '兼职', '2020-04-09', '10-50人', '百度', '百度', '百度', '28');
INSERT INTO `job` VALUES (31, '百度设计师', '10k-15k', '杭州', '10年以上', '硕士', '实习', '2020-04-06', '100-200人', '百度', '百度', '百度', '28');
INSERT INTO `job` VALUES (32, '百架构师', '3k-5k', '杭州', '5-10年', '硕士', '兼职', '2020-04-01', '10-50人', '百度', '百度', '百度', '28');
INSERT INTO `job` VALUES (33, '百度高级设计师', '50k以上', '广州', '5-10年', '无学历要求', '兼职', '2020-04-01', '10-50人', '百度', '百度', '百度', '28');
INSERT INTO `job` VALUES (34, '小米产品经理', '10k-15k', '深圳', '3-5年', '本科', '全职', '2020-04-23', '50-100人', '产品', '产品', '产品', '27');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `test_Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `test_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名字',
  `test_Sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`test_Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES (1, '我', '我');
INSERT INTO `test` VALUES (12, '是', '是');
INSERT INTO `test` VALUES (13, '你', '13');
INSERT INTO `test` VALUES (14, '吧', '14');
INSERT INTO `test` VALUES (15, '把把', '2');
INSERT INTO `test` VALUES (16, '地点', '2');
INSERT INTO `test` VALUES (18, '顶顶顶', '2');
INSERT INTO `test` VALUES (19, '嗡嗡嗡', '19');
INSERT INTO `test` VALUES (20, '前期', '20');
INSERT INTO `test` VALUES (21, '地点', '2');
INSERT INTO `test` VALUES (22, '问我', '2');
INSERT INTO `test` VALUES (23, '轻轻3', '2');
INSERT INTO `test` VALUES (24, '氢气球', '2');
INSERT INTO `test` VALUES (25, '25', '25');
INSERT INTO `test` VALUES (26, '1', '2');
INSERT INTO `test` VALUES (27, '1', '2');
INSERT INTO `test` VALUES (28, '1', '2');
INSERT INTO `test` VALUES (29, '1', '2');
INSERT INTO `test` VALUES (30, '1', '2');
INSERT INTO `test` VALUES (31, '1', '2');
INSERT INTO `test` VALUES (33, '1', '2');

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
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '123456', '123456', '13412341234', '123456@qq.com', '小羊', '男', '2020-04-05', '博士', '桂林电子科技大学', '软件工程', '测试一号2', '22222', 22222, '33333', '2020-04-05');
INSERT INTO `user` VALUES (57, '1', '1', '13512341234', '1@qq.com', '小赵', '男', '2020-04-01', '硕士', '北京大学', '通信工程', '测试二号', '11111', 111111, '11111', '2020-04-05');
INSERT INTO `user` VALUES (58, '2', '2', '13112341234', '2@qq.com', '小红', '女', '2020-04-01', '硕士', '南京大学', '计算机专业', '测试三号2', '121212', 444444, '333333', '2020-04-03');

SET FOREIGN_KEY_CHECKS = 1;

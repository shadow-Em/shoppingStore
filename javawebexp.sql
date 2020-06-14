/*
Navicat MySQL Data Transfer

Source Server         : testMysql
Source Server Version : 80017
Source Host           : localhost:3306
Source Database       : javawebexp

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2020-06-13 20:22:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `gNo` varchar(255) NOT NULL,
  `gName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gIntroduce` varchar(255) NOT NULL,
  `gMoney` double NOT NULL,
  `gReserve` int(11) NOT NULL,
  `gType` int(11) NOT NULL,
  `gUrl` varchar(255) NOT NULL,
  `gDetail` varchar(255) NOT NULL,
  `gUrl2` varchar(255) NOT NULL,
  PRIMARY KEY (`gNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC
;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('157bbd9a-b42e-43c3-95c7-3a6fd5a8a346', '华为Mate30手机', '5G手机，赠送透明手机壳。', '4400', '600', '2', '..\\img\\157bbd9a-b42e-43c3-95c7-3a6fd5a8a346_1.jpg', '芯片：麒麟990', '..\\img\\157bbd9a-b42e-43c3-95c7-3a6fd5a8a346_2.jpg');
INSERT INTO `goods` VALUES ('2b0d0815-28a6-4d4d-9511-32ca305b3580', '泊舒祛痘膏', '清爽男士祛痘膏，每日薄涂2次，一个月见效！', '59', '400', '1', '..\\img\\2b0d0815-28a6-4d4d-9511-32ca305b3580_1.jpg', '男女通用', '..\\img\\2b0d0815-28a6-4d4d-9511-32ca305b3580_2.jpg');
INSERT INTO `goods` VALUES ('440419d1-f45d-4c46-8eee-a72f31a27f0f', '美加净身体乳', '一次获得三种香味哦，欲购从速！', '47', '700', '1', '..\\img\\440419d1-f45d-4c46-8eee-a72f31a27f0f_1.jpg', '三味装', '..\\img\\440419d1-f45d-4c46-8eee-a72f31a27f0f_2.jpg');
INSERT INTO `goods` VALUES ('7d29067e-2973-4813-82ae-cbccff7d761b', '华为平板M6', '新款上市，抢先加购哦！', '2200', '800', '2', '..\\img\\7d29067e-2973-4813-82ae-cbccff7d761b_1.jpg', '自买笔、键盘', '..\\img\\7d29067e-2973-4813-82ae-cbccff7d761b_2.jpg');
INSERT INTO `goods` VALUES ('a8ac673b-9573-4944-b67c-b7138b06c5dc', 'DHC润唇膏', '蝶翠诗热卖润唇膏，药用，可打底。', '78', '800', '1', '..\\img\\a8ac673b-9573-4944-b67c-b7138b06c5dc_1.jpg', '78元两支哦', '..\\img\\a8ac673b-9573-4944-b67c-b7138b06c5dc_2.jpg');
INSERT INTO `goods` VALUES ('a8fd3734-080e-4042-b733-cc90029cd2e7', 'YSL唇釉', '热卖色号——416番茄色', '320', '600', '1', '..\\img\\a8fd3734-080e-4042-b733-cc90029cd2e7_1.jpg', '色号：416', '..\\img\\a8fd3734-080e-4042-b733-cc90029cd2e7_2.jpg');
INSERT INTO `goods` VALUES ('b993d0c7-d64e-487e-b161-3e4edb857732', '华为P40手机', '5G，24期免息', '4180', '600', '2', '..\\img\\b993d0c7-d64e-487e-b161-3e4edb857732_1.jpg', '芯片：麒麟990', '..\\img\\b993d0c7-d64e-487e-b161-3e4edb857732_2.jpg');
INSERT INTO `goods` VALUES ('bdd982dc-507c-480f-9d98-f4416671dec4', 'MAC子弹头', '温柔的色号，黄皮也可入手哦！', '170', '999', '1', '..\\img\\bdd982dc-507c-480f-9d98-f4416671dec4_1.jpg', '色号646', '..\\img\\bdd982dc-507c-480f-9d98-f4416671dec4_2.jpg');
INSERT INTO `goods` VALUES ('c12d9782-c16c-4c4b-b17f-01012e342a09', '华为P40硅胶保护壳', '柔软贴合，有效保护手机', '90', '800', '2', '..\\img\\c12d9782-c16c-4c4b-b17f-01012e342a09_1.jpg', '华为P40系列', '..\\img\\c12d9782-c16c-4c4b-b17f-01012e342a09_2.jpg');
INSERT INTO `goods` VALUES ('df7980bd-2ae2-4c28-93f3-3451eec2660f', '充电宝', '新款充电宝，有超大容量哦！', '110', '999', '2', '..\\img\\df7980bd-2ae2-4c28-93f3-3451eec2660f_1.png', '5V/2A', '..\\img\\df7980bd-2ae2-4c28-93f3-3451eec2660f_2.png');
INSERT INTO `goods` VALUES ('e24e7807-511e-4272-b4b5-d41f5981ec48', '阿玛尼红管', '阿玛尼205，仅有1000支，欲购从速哦！', '310', '1000', '1', '..\\img\\e24e7807-511e-4272-b4b5-d41f5981ec48_1.jpg', '色号205', '..\\img\\e24e7807-511e-4272-b4b5-d41f5981ec48_2.jpg');
INSERT INTO `goods` VALUES ('f8244c51-9b0d-4599-a00a-82465d167475', '华为FreeBuds3无线耳机', '618直降50哦', '949', '400', '2', '..\\img\\f8244c51-9b0d-4599-a00a-82465d167475_1.jpg', '麒麟芯片', '..\\img\\f8244c51-9b0d-4599-a00a-82465d167475_2.jpg');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `lNo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `uId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lTime` datetime NOT NULL,
  `lType` int(11) NOT NULL,
  PRIMARY KEY (`lNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('01c56c0e-000e-4cbd-9825-02c1d2b5f55b', 'shadow', '2020-06-09 21:04:06', '1');
INSERT INTO `log` VALUES ('08db76e3-79e3-46af-8c9c-f87c209c785b', 'admin2', '2020-06-11 21:43:51', '2');
INSERT INTO `log` VALUES ('0aa4c061-e1a0-417a-837d-81d7ed42e43c', 'manager', '2020-06-13 11:59:56', '2');
INSERT INTO `log` VALUES ('0f3b3793-9b8b-4c35-aa8e-7a13b985111f', 'manager', '2020-06-13 18:44:29', '2');
INSERT INTO `log` VALUES ('11e8ca34-81a6-47a1-a435-46201596b36c', 'shadow', '2020-06-13 17:59:46', '1');
INSERT INTO `log` VALUES ('13fb9f0d-bcae-49db-a74a-2854c1f4c9c2', 'admin2', '2020-06-13 17:47:06', '1');
INSERT INTO `log` VALUES ('1857f8b2-598e-46d8-b1e8-acd37f946cdc', 'shadow', '2020-06-11 21:43:58', '1');
INSERT INTO `log` VALUES ('24fc0f8c-02e6-4897-a6c1-29ab6bf3224a', 'manager', '2020-06-13 18:00:41', '1');
INSERT INTO `log` VALUES ('2c3d5ebf-f141-47e3-acb2-03e9e3c503ca', 'shadow', '2020-06-13 17:46:49', '2');
INSERT INTO `log` VALUES ('2e96d034-09a0-46b9-b271-5fd1de963b16', 'shadow', '2020-06-13 17:32:35', '1');
INSERT INTO `log` VALUES ('2f53204d-b4b9-436b-8ba1-fcfe21bbc488', 'admin', '2020-06-10 11:05:05', '2');
INSERT INTO `log` VALUES ('2fe5f01c-404d-4385-aec0-c2fa39426d6c', 'admin', '2020-06-13 18:43:22', '2');
INSERT INTO `log` VALUES ('327e6d4a-8f97-4fe9-8f36-5a0cc11c45e3', 'admin', '2020-06-11 21:45:16', '2');
INSERT INTO `log` VALUES ('34eb733f-a483-460f-8a3b-65c3ea094d2b', 'admin2', '2020-06-11 21:45:46', '2');
INSERT INTO `log` VALUES ('373ee4d4-c91a-4b62-9e88-19ecf5cc0387', 'admin', '2020-06-11 22:03:14', '1');
INSERT INTO `log` VALUES ('390492ed-c984-4975-8d07-2ac39933f3c7', 'shadow', '2020-06-13 17:36:06', '2');
INSERT INTO `log` VALUES ('3be05cba-18b9-467b-97d4-ea88039122e0', 'admin', '2020-06-10 21:58:13', '2');
INSERT INTO `log` VALUES ('41e619a8-6297-42da-abe2-f57d6edf0936', 'shadow', '2020-06-13 18:31:30', '1');
INSERT INTO `log` VALUES ('422cce36-24fc-4037-9785-e7f52677a7ac', 'admin2', '2020-06-11 21:33:30', '1');
INSERT INTO `log` VALUES ('45b5daca-b20b-4ac2-9d30-b97ca57aa0dd', 'admin', '2020-06-13 17:44:23', '2');
INSERT INTO `log` VALUES ('45ee67cc-4798-49b8-8a74-033fbe96286b', 'admin', '2020-06-13 17:44:53', '1');
INSERT INTO `log` VALUES ('462651fa-8ec3-45dc-860a-cadf221115a8', 'admin', '2020-06-10 21:49:13', '1');
INSERT INTO `log` VALUES ('469b0711-3939-4152-aa2a-caa5bde69769', 'admin', '2020-06-10 22:12:49', '2');
INSERT INTO `log` VALUES ('4ad8000d-5622-453c-89e5-2bdd41f18e04', 'manager', '2020-06-13 11:58:00', '1');
INSERT INTO `log` VALUES ('4bef64c2-a726-4795-bdaa-55b86f01ff9b', 'admin', '2020-06-13 17:36:13', '1');
INSERT INTO `log` VALUES ('5a2e2307-26cd-432a-a58b-942e7ba44ce7', 'shadow', '2020-06-13 18:37:50', '1');
INSERT INTO `log` VALUES ('5ee79bd8-eabd-4367-ad26-8a16f3254a89', 'admin', '2020-06-10 21:44:32', '1');
INSERT INTO `log` VALUES ('6501d9b3-75d2-4f6f-b3d5-f1041fdb0d2b', 'shadow', '2020-06-13 18:43:10', '2');
INSERT INTO `log` VALUES ('68274230-0717-419a-b76d-3b82cf534b9d', 'shadow', '2020-06-10 10:31:47', '1');
INSERT INTO `log` VALUES ('68d3d7d5-ee42-42d7-b510-952c93a36478', 'shadow', '2020-06-13 17:44:30', '1');
INSERT INTO `log` VALUES ('70d4b426-113a-4591-8355-5f72e90def31', 'admin', '2020-06-10 22:06:19', '1');
INSERT INTO `log` VALUES ('71ae5454-1de8-451a-be00-6816089e2011', 'admin2', '2020-06-11 22:02:28', '1');
INSERT INTO `log` VALUES ('72c756cd-3060-494b-a090-e17201441483', 'admin2', '2020-06-13 17:59:40', '2');
INSERT INTO `log` VALUES ('795c3570-3b56-449a-855c-6f5f1154b1e4', 'admin', '2020-06-10 11:05:03', '1');
INSERT INTO `log` VALUES ('7b88bed7-674d-4bf8-a80f-cbb051157629', 'shadow', '2020-06-13 17:46:32', '1');
INSERT INTO `log` VALUES ('7cbfd394-fbbf-40ee-998a-94b7d1d67bb5', 'admin', '2020-06-10 21:58:00', '1');
INSERT INTO `log` VALUES ('7cc11c8e-fc2b-4bc3-adea-dbbf6c03018f', 'admin', '2020-06-10 22:02:54', '1');
INSERT INTO `log` VALUES ('7fc5cde0-90ec-448c-871b-c41574f65966', 'admin', '2020-06-13 18:43:16', '1');
INSERT INTO `log` VALUES ('844dd71f-e2e7-401b-be22-1a95dd4b74a7', 'shadow', '2020-06-13 17:35:57', '1');
INSERT INTO `log` VALUES ('87cf5587-f802-4db5-82a8-e41ed7dcf31f', 'shadow', '2020-06-13 18:32:40', '1');
INSERT INTO `log` VALUES ('8a690e81-70da-4ee7-b633-3d7c310bff26', 'admin', '2020-06-10 11:57:01', '1');
INSERT INTO `log` VALUES ('8e1414ab-0eeb-4b36-b162-570766fab7e5', 'manager', '2020-06-13 12:17:43', '1');
INSERT INTO `log` VALUES ('8e8d0024-ca1f-498c-b27e-c1ab8e47b53a', 'shadow', '2020-06-13 18:34:46', '1');
INSERT INTO `log` VALUES ('8f4c268d-9f67-4e5d-9e39-a205ad2b830d', 'shadow', '2020-06-13 17:35:23', '1');
INSERT INTO `log` VALUES ('95301b22-7fc8-443f-b392-a930865e2929', 'shadow', '2020-06-13 18:28:35', '1');
INSERT INTO `log` VALUES ('9a6e205c-f82a-4ebc-9ad8-b5fb17c42b9a', 'admin', '2020-06-10 21:51:51', '1');
INSERT INTO `log` VALUES ('9b187fc1-bde2-4735-9aa0-18c221bedcf5', 'admin2', '2020-06-11 22:03:06', '2');
INSERT INTO `log` VALUES ('9d6f021a-24c3-4427-95e1-ed79f2837776', 'admin', '2020-06-10 22:02:29', '2');
INSERT INTO `log` VALUES ('9e0c9c52-7cfe-4435-826b-b88343d49654', 'admin', '2020-06-10 11:50:27', '1');
INSERT INTO `log` VALUES ('a3127dcb-da8a-45f2-8a3c-daa68b9c7d7b', 'shadow', '2020-06-11 21:44:58', '2');
INSERT INTO `log` VALUES ('a3a8a399-2448-44b0-8c8a-d557e3d174ee', 'admin', '2020-06-10 21:45:45', '1');
INSERT INTO `log` VALUES ('a4bdb80c-06c5-4d1c-adad-c219d611dc12', 'shadow', '2020-06-13 17:44:45', '2');
INSERT INTO `log` VALUES ('a737b629-4a55-4571-b95e-5aa1a2beac93', 'shadow', '2020-06-11 22:00:04', '1');
INSERT INTO `log` VALUES ('aff19673-464a-4349-8c52-3e7b9e6b7fc8', 'admin2', '2020-06-11 21:45:22', '1');
INSERT INTO `log` VALUES ('b5ed02bc-500c-4525-a0cd-4734dca78e8f', 'manager', '2020-06-13 12:18:17', '2');
INSERT INTO `log` VALUES ('bc7307f1-565f-45f4-bebb-9b4962922f01', 'admin', '2020-06-11 21:45:04', '1');
INSERT INTO `log` VALUES ('bda94131-19da-4cf0-9092-e0fe956681bd', 'admin', '2020-06-10 21:46:03', '2');
INSERT INTO `log` VALUES ('be6139fb-f32f-4923-9e23-3081facb5113', 'shadow', '2020-06-10 11:04:17', '1');
INSERT INTO `log` VALUES ('bf3f66c1-9937-40ca-b30d-0834fda3f8a0', 'admin', '2020-06-10 21:51:54', '2');
INSERT INTO `log` VALUES ('c2529efb-58d9-4ccb-9c8a-5e2b19023e9b', 'manager', '2020-06-13 12:04:27', '1');
INSERT INTO `log` VALUES ('c8c59454-940d-4a86-8196-69922eb8cec4', 'admin', '2020-06-10 22:02:56', '2');
INSERT INTO `log` VALUES ('c917a3a1-2320-4245-8697-b42939b50613', 'admin', '2020-06-13 17:46:25', '2');
INSERT INTO `log` VALUES ('cd12c651-3ba0-48b7-9f68-c6604e1200eb', 'shadow', '2020-06-11 22:02:20', '2');
INSERT INTO `log` VALUES ('ced97663-f01d-49a1-b587-2fffaf585040', 'admin', '2020-06-10 21:44:49', '2');
INSERT INTO `log` VALUES ('d23af095-3ebc-42a1-9be4-4bb0f3472536', 'admin', '2020-06-10 22:03:21', '1');
INSERT INTO `log` VALUES ('d9f283bb-6a6e-48ee-a7c1-c6d50203a358', 'shadow', '2020-06-10 11:04:28', '2');
INSERT INTO `log` VALUES ('e0e56685-289b-4eac-9414-c09e3d59ee0c', 'admin2', '2020-06-11 21:42:34', '1');
INSERT INTO `log` VALUES ('e811a63c-8cbc-4fe4-b724-97b25f21f6e7', 'admin', '2020-06-10 22:01:44', '1');
INSERT INTO `log` VALUES ('ebebb638-02cc-438a-8a4a-ff1a5d3b7324', 'manager', '2020-06-13 18:01:40', '2');
INSERT INTO `log` VALUES ('ec45b5e2-91a8-422b-98f1-81b1e7c36bc0', 'admin2', '2020-06-11 21:36:11', '2');
INSERT INTO `log` VALUES ('ee36e420-3a2d-4537-bad4-2a73bea7a7ab', 'manager', '2020-06-13 18:44:22', '1');
INSERT INTO `log` VALUES ('f18338e5-5c5d-4b84-b1d6-d7e23c068db6', 'admin', '2020-06-10 22:12:32', '1');
INSERT INTO `log` VALUES ('f39c1f9e-14a0-495e-85b9-2c9674ab8f02', 'manager', '2020-06-13 12:04:47', '2');
INSERT INTO `log` VALUES ('f7164b70-8098-4875-a5ae-7d76f4dab56d', 'shadow', '2020-06-13 18:00:32', '2');
INSERT INTO `log` VALUES ('f953fcac-249d-4590-883a-2f2bbb3b6739', 'shadow', '2020-06-13 17:35:45', '2');
INSERT INTO `log` VALUES ('fc6c3bc4-0701-4c5c-9ce2-66404a816702', 'shadow', '2020-06-13 18:33:54', '1');
INSERT INTO `log` VALUES ('fcb9946d-60af-4a25-b46d-d39f720b5fd9', 'shadow', '2020-06-13 18:41:55', '1');

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `rNo` varchar(255) NOT NULL,
  `uNo` varchar(255) NOT NULL,
  `gNo` varchar(255) NOT NULL,
  `rTime` datetime NOT NULL,
  `rType` int(11) NOT NULL,
  `gNum` int(11) NOT NULL,
  `gMoney` double NOT NULL,
  PRIMARY KEY (`rNo`),
  KEY `uNo` (`uNo`),
  KEY `gNo` (`gNo`),
  CONSTRAINT `record_ibfk_1` FOREIGN KEY (`uNo`) REFERENCES `user` (`uNo`) ON DELETE CASCADE,
  CONSTRAINT `record_ibfk_2` FOREIGN KEY (`gNo`) REFERENCES `goods` (`gNo`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('0d2911b4-2f12-49e5-9b51-eaa81750d52d', '898af803-6721-408d-9328-255f80ab1f59', 'c12d9782-c16c-4c4b-b17f-01012e342a09', '2020-06-13 17:56:52', '4', '0', '0');
INSERT INTO `record` VALUES ('25715b54-2776-4cf2-a6b4-cd274588661b', '784726a1-e620-4627-b8fc-83ce19183c60', 'a8fd3734-080e-4042-b733-cc90029cd2e7', '2020-06-13 17:38:40', '4', '0', '0');
INSERT INTO `record` VALUES ('3606e5c7-6feb-4e7f-b8df-932c040f8f4e', '898af803-6721-408d-9328-255f80ab1f59', 'f8244c51-9b0d-4599-a00a-82465d167475', '2020-06-13 17:53:59', '4', '0', '0');
INSERT INTO `record` VALUES ('3bec11d1-2f91-437d-9d5d-3d8ef97e4b6a', '898af803-6721-408d-9328-255f80ab1f59', '157bbd9a-b42e-43c3-95c7-3a6fd5a8a346', '2020-06-13 17:59:28', '4', '0', '0');
INSERT INTO `record` VALUES ('3c3feb0a-b00a-40dd-a70b-0196e3d0f516', '784726a1-e620-4627-b8fc-83ce19183c60', 'e24e7807-511e-4272-b4b5-d41f5981ec48', '2020-06-13 17:46:20', '4', '0', '0');
INSERT INTO `record` VALUES ('463350b3-4382-46aa-83b7-e507f4f0f76b', '6c65f272-46ba-41dd-a115-466b9d38bb09', 'e24e7807-511e-4272-b4b5-d41f5981ec48', '2020-06-13 17:46:37', '1', '0', '0');
INSERT INTO `record` VALUES ('542e33f4-fef9-4dc6-bf40-a4f15fe5a00f', '898af803-6721-408d-9328-255f80ab1f59', '7d29067e-2973-4813-82ae-cbccff7d761b', '2020-06-13 17:58:18', '4', '0', '0');
INSERT INTO `record` VALUES ('6223c46f-2190-4cc4-935d-dd9a02f4e468', '784726a1-e620-4627-b8fc-83ce19183c60', '2b0d0815-28a6-4d4d-9511-32ca305b3580', '2020-06-13 17:41:34', '4', '0', '0');
INSERT INTO `record` VALUES ('6f47a7f6-9e5e-4058-93f2-7d0832b6444f', '6c65f272-46ba-41dd-a115-466b9d38bb09', 'bdd982dc-507c-480f-9d98-f4416671dec4', '2020-06-11 22:02:02', '3', '1', '170');
INSERT INTO `record` VALUES ('9bf145ca-118b-49dc-8880-c33d0467708f', '784726a1-e620-4627-b8fc-83ce19183c60', 'a8ac673b-9573-4944-b67c-b7138b06c5dc', '2020-06-13 17:40:20', '4', '0', '0');
INSERT INTO `record` VALUES ('a2239fef-47df-47c2-8959-d05b866a3160', '784726a1-e620-4627-b8fc-83ce19183c60', '2b0d0815-28a6-4d4d-9511-32ca305b3580', '2020-06-13 17:42:07', '6', '0', '0');
INSERT INTO `record` VALUES ('b1efb0c6-0106-4d2b-b763-89c2d8529b41', '898af803-6721-408d-9328-255f80ab1f59', 'df7980bd-2ae2-4c28-93f3-3451eec2660f', '2020-06-13 17:47:18', '6', '0', '0');
INSERT INTO `record` VALUES ('b4aefccb-c2b6-4be7-adf0-671bc0888a73', '784726a1-e620-4627-b8fc-83ce19183c60', '2b0d0815-28a6-4d4d-9511-32ca305b3580', '2020-06-13 17:42:15', '6', '0', '0');
INSERT INTO `record` VALUES ('c7862005-09bb-45ed-8063-10d2cd2e7122', '6c65f272-46ba-41dd-a115-466b9d38bb09', 'df7980bd-2ae2-4c28-93f3-3451eec2660f', '2020-06-11 22:01:58', '3', '1', '110');
INSERT INTO `record` VALUES ('d991fafa-f175-4aa1-bb76-b95cc06ac62b', '6c65f272-46ba-41dd-a115-466b9d38bb09', 'df7980bd-2ae2-4c28-93f3-3451eec2660f', '2020-06-11 21:44:14', '3', '1', '110');
INSERT INTO `record` VALUES ('e2c81df7-393a-4dd4-8534-debe44d6c076', '784726a1-e620-4627-b8fc-83ce19183c60', '440419d1-f45d-4c46-8eee-a72f31a27f0f', '2020-06-13 17:44:03', '4', '0', '0');
INSERT INTO `record` VALUES ('ea06ec1c-252b-47ef-bc99-b0b471a9ec88', '6c65f272-46ba-41dd-a115-466b9d38bb09', 'df7980bd-2ae2-4c28-93f3-3451eec2660f', '2020-06-13 17:32:51', '1', '0', '0');
INSERT INTO `record` VALUES ('ed2c7767-7302-4614-95a0-2d486b28c28d', '898af803-6721-408d-9328-255f80ab1f59', 'df7980bd-2ae2-4c28-93f3-3451eec2660f', '2020-06-11 21:43:36', '4', '0', '0');
INSERT INTO `record` VALUES ('f2757a0b-ba9d-4984-8175-c1244ffbbc52', '6c65f272-46ba-41dd-a115-466b9d38bb09', 'bdd982dc-507c-480f-9d98-f4416671dec4', '2020-06-13 17:46:41', '1', '0', '0');
INSERT INTO `record` VALUES ('f3b97df7-bbce-47c9-a9db-fefd5c8234b9', '898af803-6721-408d-9328-255f80ab1f59', 'b993d0c7-d64e-487e-b161-3e4edb857732', '2020-06-13 17:55:49', '4', '0', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uNo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `uId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `uPwd` varchar(255) NOT NULL,
  `uName` varchar(255) NOT NULL,
  `uPost` varchar(255) NOT NULL,
  `uMoney` double NOT NULL,
  `uAddress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uNo`),
  UNIQUE KEY `uId` (`uId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('0b8acbbc-4b75-4a56-96e9-10bea0265035', 'manager', 'manager', 'manager', '764215769@qq.com', '60000', '');
INSERT INTO `user` VALUES ('6c65f272-46ba-41dd-a115-466b9d38bb09', 'shadow', 'shadow', 'shadow', '764215769@qq.com', '39300', '');
INSERT INTO `user` VALUES ('784726a1-e620-4627-b8fc-83ce19183c60', 'admin', 'admin', 'admin', '764215769@qq.com', '60590', '');
INSERT INTO `user` VALUES ('898af803-6721-408d-9328-255f80ab1f59', 'admin2', 'admin2', 'admin2', '764215769@qq.com', '20110', '');

-- ----------------------------
-- Procedure structure for addBrowsedRecord
-- ----------------------------
DROP PROCEDURE IF EXISTS `addBrowsedRecord`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addBrowsedRecord`(IN `uuNo` varchar(255),IN `ggNo` varchar(255),IN `ttime` datetime,IN `newrrNo` varchar(255))
BEGIN
	
	DECLARE rrNo VARCHAR(255) CHARACTER SET utf8;
	SELECT rNo INTO rrNo FROM record WHERE uNo = uuNo and gNo = ggNo and rType = 1;
	IF rrNo IS NULL THEN
	INSERT INTO record VALUES (newrrNo,uuNo,ggNo,ttime,1,0,0);
	ELSE
	UPDATE record
	SET rTime = ttime
	WHERE rNo = rrNo;
	END IF ;
	COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for addNewGoods
-- ----------------------------
DROP PROCEDURE IF EXISTS `addNewGoods`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `addNewGoods`(IN `ggno` varchar(255),IN `ggname` varchar(255),IN `ggintro` varchar(255),IN `ggmoney` double,IN `ggreserve` int(11),IN `gtype` int(11),IN `gurl` varchar(255),IN `gdetail` varchar(255),IN `gurl2` varchar(255),IN `rrno` varchar(255),IN `uuno` varchar(255),IN `rtime` datetime)
BEGIN
	#Routine body goes here...
	insert into goods VALUES(ggno,ggname,ggintro,ggmoney,ggreserve,gtype,gurl,gdetail,gurl2);
	insert into record VALUES(rrno,uuno,ggno,rtime,4,0,0);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for addNewGoods2
-- ----------------------------
DROP PROCEDURE IF EXISTS `addNewGoods2`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `addNewGoods2`(IN `ggno` varchar(255),IN `ggname` varchar(255),IN `ggintro` varchar(255),IN `ggmoney` double,IN `ggreserve` int(11),IN `gtype` int(11),IN `gurl` varchar(255),IN `gdetail` varchar(255),IN `gurl2` varchar(255),IN `rrno` varchar(255),IN `uuno` varchar(255),IN `rtime` datetime)
BEGIN
	#Routine body goes here...
	insert into goods values(ggno,ggname,ggintro,ggmoney,ggreserve,gtype,gurl,gdetail,gurl2);
	insert into record VALUES(rrno,uuno,ggno,rtime,4,0,0);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for addShoppingCar
-- ----------------------------
DROP PROCEDURE IF EXISTS `addShoppingCar`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addShoppingCar`(IN `newrrNo` varchar(255),IN `uuNo` varchar(255),IN `ggNo` varchar(255),IN `ttime` datetime)
BEGIN
	
	DECLARE rrNo VARCHAR(255) CHARACTER SET utf8;
	SELECT rNo INTO rrNo FROM record WHERE uNo = uuNo and gNo = ggNo and rType = 2;
	IF rrNo IS NULL THEN
	INSERT INTO record VALUES(newrrNo,uuNo,ggNo,ttime,2,1,0);
	ELSE
	UPDATE record
	SET gNum = gNum +1
	WHERE rrNo = rNo ;
	END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for buyOne
-- ----------------------------
DROP PROCEDURE IF EXISTS `buyOne`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buyOne`(IN `newrrNo` varchar(255),IN `uuNo` varchar(255),IN `ggNo` varchar(255),IN `ttime` datetime)
BEGIN
	
	DECLARE num int;
	DECLARE reserve INT;
	DECLARE exist INT;
	DECLARE money DOUBLE;
	DECLARE type INT;
	SELECT gNum INTO num FROM record WHERE ggNo = gNo and uuNo = uNo and rType = 2;
	SELECT gReserve INTO reserve FROM goods WHERE gNo = ggNo ;
	SELECT gType into type FROM goods WHERE gNo=ggNo;
	IF `reserve` = -1 THEN
		SET exist = 4;
	ELSEIF reserve >= num THEN
		SELECT gMoney INTO money FROM goods WHERE ggNo = gNo;
		DELETE FROM record WHERE ggNo = gNo and uuNo = uNo and rType = 2;
		INSERT INTO record VALUES(newrrNo,uuNo,ggNo,ttime,3,num,money);
		UPDATE `user` SET `uMoney` = `uMoney` - `num`*`money` WHERE uuNo = uNo;
		IF `type`=1 THEN
			UPDATE `user` SET `uMoney` = `uMoney` + `num`*`money` WHERE uId = 'admin';
		ELSEIF `type`=2 THEN
			UPDATE `user` SET `uMoney` = `uMoney` + `num`*`money` WHERE uId = 'admin2';
		END IF;
		UPDATE 	`goods` SET `gReserve` = `gReserve` - `num` WHERE ggNo = gNo;
		SET exist = 1;
	ELSE 
		SET exist = 3;
	END IF ;
	SELECT exist;
	COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for changeGoods
-- ----------------------------
DROP PROCEDURE IF EXISTS `changeGoods`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `changeGoods`(IN `ggNo` varchar(255),IN `ggName` varchar(255),IN `ggIntroduce` varchar(255),IN `ggMoney` double,IN `ggReserve` int,IN `ggDetail` varchar(255),IN `ggUrl` varchar(255),IN `ggUrl2` varchar(255),IN `rrno` varchar(255),IN `uuno` varchar(255),IN `rtime` datetime)
BEGIN
	
	update goods set gName=ggName,gIntroduce=ggIntroduce,gMoney=ggMoney,gReserve=ggReserve,gDetail=ggDetail WHERE gNo = ggNo;
	IF ggUrl != '' THEN
	update goods set gUrl = ggUrl WHERE gNo = ggNo;
	END IF;
	IF ggUrl2 != '' THEN
	update goods set gUrl2 = ggUrl2 WHERE gNo = ggNo;
	END IF;
	insert into record VALUES(rrno,uuno,ggNo,rtime,6,0,0);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for checkUser
-- ----------------------------
DROP PROCEDURE IF EXISTS `checkUser`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `checkUser`(IN `uuid` varchar(255),IN `upwd` varchar(255),IN `lno` varchar(255),IN `ltime` datetime)
BEGIN
	#Routine body goes here...
	insert into `log` values(lno,uuid,ltime,1);
	select * from user where `user`.uId = uuid and `user`.uPwd = upwd;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for deleteGoods
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteGoods`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `deleteGoods`(IN `rrno` varchar(255),IN `uuno` varchar(255),IN `ggno` varchar(255),IN `rtime` datetime)
BEGIN
	#Routine body goes here...
	update goods set gReserve = -1 where `goods`.gNo = ggno;
	insert into record VALUES(rrno,uuno,ggno,rtime,5,0,0);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for loadAllBrought
-- ----------------------------
DROP PROCEDURE IF EXISTS `loadAllBrought`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `loadAllBrought`()
BEGIN
	#Routine body goes here...
	SELECT g.gName gName,r.gMoney gMoney,count(r.gNum) gNum	,r.gNo gNo,g.gIntroduce gIntroduce,g.gDetail gDetail,g.gReserve gReserve
	FROM record r LEFT JOIN goods g on r.gNo = g.gNo  
	WHERE r.rType = 3
	GROUP BY r.gNo,r.gMoney;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for loadBroughtGoods
-- ----------------------------
DROP PROCEDURE IF EXISTS `loadBroughtGoods`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `loadBroughtGoods`()
BEGIN
	
	SELECT g.gName gName,r.gMoney gMoney,count(r.gNum) gNum	,r.gNo gNo,g.gIntroduce gIntroduce,g.gDetail gDetail,g.gReserve gReserve
	FROM record r LEFT JOIN goods g on r.gNo = g.gNo  
	WHERE r.rType = 3 AND g.gType=1
	GROUP BY r.gNo,r.gMoney;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for loadBroughtGoods2
-- ----------------------------
DROP PROCEDURE IF EXISTS `loadBroughtGoods2`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `loadBroughtGoods2`()
BEGIN
	#Routine body goes here...
	SELECT g.gName gName,r.gMoney gMoney,count(r.gNum) gNum	,r.gNo gNo,g.gIntroduce gIntroduce,g.gDetail gDetail,g.gReserve gReserve
	FROM record r LEFT JOIN goods g on r.gNo = g.gNo  
	WHERE r.rType = 3 AND g.gType=2
	GROUP BY r.gNo,r.gMoney;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for loadCustomerInfo
-- ----------------------------
DROP PROCEDURE IF EXISTS `loadCustomerInfo`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `loadCustomerInfo`()
BEGIN
	
	SELECT rTime, uName,rType,gName,gNum
	FROM record LEFT JOIN `user` on record.uNo = `user`.uNo LEFT JOIN goods ON record.gNo = goods.gNo
	WHERE `user`.uId != 'admin'
	AND `user`.uId!='admin2'
	AND `user`.uId!='manager'
	AND goods.gType=1
	ORDER BY rTime DESC;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for loadCustomerInfo2
-- ----------------------------
DROP PROCEDURE IF EXISTS `loadCustomerInfo2`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `loadCustomerInfo2`()
BEGIN
	#Routine body goes here...
	SELECT rTime, uName,rType,gName,gNum
	FROM record LEFT JOIN `user` on record.uNo = `user`.uNo LEFT JOIN goods ON record.gNo = goods.gNo
	WHERE `user`.uId != 'admin'
	AND `user`.uId!='admin2'
	AND `user`.uId!='manager'
	AND goods.gType=2
	ORDER BY rTime DESC;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for loadSellerInfo
-- ----------------------------
DROP PROCEDURE IF EXISTS `loadSellerInfo`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `loadSellerInfo`()
BEGIN
	#Routine body goes here...
	select rTime,uName,rType,gName
	from record LEFT JOIN `user` on record.uNo=`user`.uNo LEFT JOIN goods on record.gNo=goods.gNo
	WHERE `user`.uId='admin'
	ORDER BY rTime DESC;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for loadSellerInfo2
-- ----------------------------
DROP PROCEDURE IF EXISTS `loadSellerInfo2`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `loadSellerInfo2`()
BEGIN
	#Routine body goes here...
	select rTime,uName,rType,gName
	from record LEFT JOIN `user` on record.uNo=`user`.uNo LEFT JOIN goods on record.gNo=goods.gNo
	WHERE `user`.uId='admin2'
	ORDER BY rTime DESC;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for logout
-- ----------------------------
DROP PROCEDURE IF EXISTS `logout`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `logout`(IN `uuid` varchar(255),IN `lno` varchar(255),IN `ltime` datetime)
BEGIN
	#Routine body goes here...
	insert into log values(lno,uuid,ltime,2);
END
;;
DELIMITER ;

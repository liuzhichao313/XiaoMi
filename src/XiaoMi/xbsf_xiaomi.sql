/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : xbsf_xiaomi

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2017-10-16 13:17:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_category`;
CREATE TABLE `tb_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(12) NOT NULL,
  `level` tinyint(4) DEFAULT NULL,
  `info` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_category
-- ----------------------------
INSERT INTO `tb_category` VALUES ('1', '手机', '7', '小米');
INSERT INTO `tb_category` VALUES ('2', '电视', '3', '小米');
INSERT INTO `tb_category` VALUES ('3', '笔记本', '5', '小米');
INSERT INTO `tb_category` VALUES ('4', '耳机', '6', '小米');
INSERT INTO `tb_category` VALUES ('5', '智能硬件', '2', '小米');
INSERT INTO `tb_category` VALUES ('6', '米兔', '1', '小米');
INSERT INTO `tb_category` VALUES ('7', '米家', '4', '小米');

-- ----------------------------
-- Table structure for tb_goods
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods`;
CREATE TABLE `tb_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `addr` varchar(80) DEFAULT NULL,
  `baoXiuQi` varchar(10) DEFAULT NULL,
  `miaoShu` varchar(100) DEFAULT NULL,
  `jiFen` int(11) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categoryid` (`categoryId`),
  CONSTRAINT `tb_goods_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `tb_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods
-- ----------------------------
INSERT INTO `tb_goods` VALUES ('181', '60cm柔软米兔抱枕', 'upload/9d08c4c0-ce93-4b46-8da1-6ecfe40d5c32.jpg', '129RMB', 'china', '1year', '严格选料，材质柔软 / 精制工艺，不易变形 / 午休时间，最佳搭档', '129', '5星级', '6');
INSERT INTO `tb_goods` VALUES ('182', '13cm皮质米兔挂饰', 'upload/ab76756b-7fb0-4b5f-bc6b-0959942c4867.jpg', '49RMB', 'china', '1year', '经典制作工艺，演绎全新米兔 / PU材质，精心设计', '49', '4星级', '6');
INSERT INTO `tb_goods` VALUES ('183', '米兔多功能护颈枕', 'upload/de1a4bd1-884d-4ee6-9662-1cc61dd71a3e.jpg', '49RMB', 'china', '1year', '科学U型设计 / 舒缓颈肩疲劳 / 家居旅行中睡眠的好伴侣', '49', '3星级', '6');
INSERT INTO `tb_goods` VALUES ('184', '40cm柔软米兔抱枕', 'upload/54634354-5c34-4ed0-88fc-bc6a217ade9f.jpg', '129RMB', 'china', '1year', '严格选料，材质柔软 / 精制工艺，不易变形 / 午休时间，最佳搭档', '129', '2星级', '6');
INSERT INTO `tb_goods` VALUES ('185', '米家扫地机器人', 'upload/e23321d4-bb1a-4e0e-a54d-8a10feff26f7.jpg', '1699RMB', 'china', '1year', '高精度激光测距，智能规划路径 / 1800Pa 大风压澎湃吸力 / 远程智能控制 ，定时清扫 / 大电池持久清扫', '1699', '1星级', '5');
INSERT INTO `tb_goods` VALUES ('186', 'AMAZFIT运动手表', 'upload/da852f2b-c8a8-4f8c-9e94-7f5c3b58faa1.jpg', '799RMB', 'china', '1year', '蓝牙听歌 / 索尼28纳米GPS / 陶瓷表圈 / 运动心率 / 智能通知提醒 / 支付宝快捷支付 / 5天续航', '799', '4星级', '5');
INSERT INTO `tb_goods` VALUES ('187', '米家行车记录仪', 'upload/9e89502a-2f2a-4d97-924a-61eb660c371e.jpg', '349RMB', 'china', '1year', 'SONY IMX323 图像传感器 / Mstar 1080p 图像处理芯片 / F 1.8 大光圈 / 160°超广角', '349', '3星级', '5');
INSERT INTO `tb_goods` VALUES ('188', '小米米家电动滑板车', 'upload/06901eee-c6fc-4e75-ada7-e691daa28d05.jpg', '1999RMB', 'china', '1year', '极简几何设计，1分钟轻松上手 / 30公里超长续航 / 双重刹车系统 / 便携折叠', '1999', '2星级', '5');
INSERT INTO `tb_goods` VALUES ('189', '小米蓝牙耳机', 'upload/411c8437-6596-4094-85fa-18848064af15.png', '79RMB', 'china', '1year', '6.5克轻巧，蓝牙4.1高清通话音质', '79', '5星级', '4');
INSERT INTO `tb_goods` VALUES ('190', '小米活塞耳机 清新版', 'upload/29b26a6a-4d45-451c-9c7e-3ba6b20bfd5a.png', '29RMB', 'china', '1year', '铝合金音腔 / 第三代平衡阻尼系统 / 五色可选', '29', '4星级', '4');
INSERT INTO `tb_goods` VALUES ('191', '小米运动蓝牙耳机', 'upload/411c8437-6596-4094-85fa-18848064af15.png', '149RMB', 'china', '1year', '生活级防水防汗 / 7小时超长播放 / 防脱落式耳挂设计', '149', '3星级', '4');
INSERT INTO `tb_goods` VALUES ('192', '小米圈铁耳机Pro', 'upload/29b26a6a-4d45-451c-9c7e-3ba6b20bfd5a.png', '149RMB', 'china', '1year', '独创双动圈 + 动铁 三单元发声 / 均衡自然声音 / 高保真石墨烯振膜 / 25 道工序打磨 / 弹力磨砂线材', '149', '2星级', '4');
INSERT INTO `tb_goods` VALUES ('193', '小米笔记本Air13.3英寸', 'upload/aa74af5e-9d32-4250-afed-a756eea6b7eb.jpg', '5499RMB', 'china', '1year', 'Intel 酷睿i5 处理器，NVIDIA MX150 2G独显，8GB 内存 + 256GB SSD，指纹解锁', '5499', '5星级', '3');
INSERT INTO `tb_goods` VALUES ('194', '小米笔记本Air13.3英寸', 'upload/7bbdf3cd-8dac-44ec-864c-21df87bd056b.jpg', '4999RMB', 'china', '1year', 'Intel 酷睿i5 处理器，NVIDIA 940MX 独立显卡，8GB 内存 + 256GB SSD', '4999', '4星级', '3');
INSERT INTO `tb_goods` VALUES ('195', '小米笔记本Air 12.5英寸', 'upload/6ec50e95-e88a-42c0-a812-316db960171e.jpg', '3599RMB', 'china', '1year', '新一代intel酷睿M3处理器，4GB 内存+128GB SSD', '3599', '3星级', '3');
INSERT INTO `tb_goods` VALUES ('196', '小米笔记本内胆包12.5英寸', 'upload/6e9c2f23-9a4f-4773-a36c-3dc751fc1bb6.jpg', '99RMB', 'china', '1year', '强力吸附，紧贴爱机每一角落 / 加密麂皮绒里布 / 适装MacBook Air 11寸笔记本及MacBook 12.5寸笔记本', '99', '2星级', '3');
INSERT INTO `tb_goods` VALUES ('197', '小米电视3s 55英寸', 'upload/4883ab0d-58f7-465a-8401-b5a7b261754b.jpg', '3599RMB', 'china', '1year', '人工智能电视 / 原装LG 4K IPS硬屏 / 64位处理器 支持HDR / 9.9毫米纤薄金属机身', '3599', '5星级', '2');
INSERT INTO `tb_goods` VALUES ('198', '小米电视4A 65英寸', 'upload/f450220c-f58f-43b6-8832-3cbb14a14bdf.png', '4699RMB', 'china', '1year', '4K超高清屏 / 四核64位高性能处理器，支持HDR10 / 2GB+8GB大存储，可选配32GB版', '4699', '4星级', '2');
INSERT INTO `tb_goods` VALUES ('199', '小米电视4A 49英寸', 'upload/c228ac5c-eab1-4be3-b3bf-172b86aede24.png', '2299RMB', 'china', '1year', '全高清HDR / 真四核64位高性能处理器 / 超窄边框 / 智能语音 / 杜比音效平板电视', '2299', '3星级', '2');
INSERT INTO `tb_goods` VALUES ('200', '小米电视4A 55英寸', 'upload/672bbfea-289f-4d03-a8b6-e89a8fc024db.png', '2799RMB', 'china', '1year', '4K高清HDR / 真四核64位高性能处理器 / 超窄边框 / 智能语音 / 杜比音效平板电视', '2799', '2星级', '2');
INSERT INTO `tb_goods` VALUES ('201', '小米5s Plus', 'upload/4421588e-ddf9-45f7-a4a2-8635a634e002.png', '2299RMB', 'china', '1year', '5.7\" 大屏双摄像头 / 骁龙 821 旗舰处理器 / 轻薄金属机身', '2299', '3星级', '1');
INSERT INTO `tb_goods` VALUES ('202', '小米5s', 'upload/674187a6-0854-481b-bda1-3009a4f3aada.jpg', '1999RMB', 'china', '1year', '“暗夜之眼”超感光相机 / 无孔式超声波指纹识别 / 骁龙 821 旗舰处理器 / 全金属一体化机身', '1999', '4星级', '1');
INSERT INTO `tb_goods` VALUES ('203', '小米MIX 全面屏概念手机', 'upload/91c96348-87a1-481a-a9c8-14e85ed5c944.jpg', '3499RMB', 'china', '1year', '6.4\" 全面屏 / 全陶瓷机身 / 骁龙 821 性能版 / 4400mAh 大电量 / 陶瓷声学系统 / 超声波距离感应', '3499', '3星级', '1');
INSERT INTO `tb_goods` VALUES ('204', '小米Note 2 双曲面商务旗舰', 'upload/f126d9c6-6c8a-4ca3-b539-f84bcc8af62c.jpg', '2899RMB', 'china', '1year', '5.7\" 双曲面柔性屏 / 3D曲面玻璃 / 骁龙 821 性能版 / 2256万超高像素相机 / 4070mAh 超长续航', '2899', '2星级', '1');
INSERT INTO `tb_goods` VALUES ('205', '小米路由器HD （8TB）', 'upload/e0c7ed7f-29ce-43f8-a9c6-754919fd5dd0.jpg', '3699RMB', 'china', '1year', '随时开启一场极速旅程 ／ 全新一代智能家庭中心 / 企业级硬盘 ／ 全天候无间断访问 ／ 双核处理器', '3699', '5星级', '7');
INSERT INTO `tb_goods` VALUES ('206', '小米净水器（厨下式）', 'upload/7e98ee33-7b7e-4a42-a9d9-4bf44ae23d31.jpg', '1999RMB', 'china', '1year', '含上门安装服务费 / 400加仑大流量 / RO反渗透直出纯净水 / 隐藏安装 / 健康家庭必备', '1999', '4星级', '7');
INSERT INTO `tb_goods` VALUES ('207', '米家空调伴侣', 'upload/071b311a-b1c0-4570-b7c4-5c09dc0ce53d.jpg', '169RMB', 'china', '1year', '自带网关功能 / 远程控制 / 功率检测 / 睡眠模式', '169', '3星级', '7');
INSERT INTO `tb_goods` VALUES ('208', '70迈智能后视镜', 'upload/fe63f074-eb5c-46a4-9edd-13475ed9050a.jpg', '1299RMB', 'china', '1year', '智能语音交互 / ADAS 高级驾辅 / 8.88\" 高清大屏 / 4G 全网通 / 1080P 行车记录', '1299', '5星级', '7');
INSERT INTO `tb_goods` VALUES ('209', '米兔积木机器人履带机甲', 'upload/74829a51-2757-4708-8695-25155764248f.jpg', '499RMB', 'china', '1year', '履带底盘 / 高精度零件 / 智能操控 / 百变拼插', '499', '4星级', '7');
INSERT INTO `tb_goods` VALUES ('210', '米兔儿童电话手表2', 'upload/6b69005a-aedc-4770-8216-f1cbac3a667f.jpg', '399RMB', 'china', '1year', 'AMOLED 高清彩屏 / 6 天超长续航 / 五重安全定位 / 前置摄像头', '399', '5星级', '7');
INSERT INTO `tb_goods` VALUES ('211', '小米无人机4K版套装', 'upload/200db1fb-1d23-42de-92b1-8759386a6075.jpg', '2999RMB', 'china', '1year', '易上手 / 高品质影像 / 安全 / 小巧便携', '2999', '5星级', '7');
INSERT INTO `tb_goods` VALUES ('212', '小米移动电源2 20000mAh', 'upload/bb146e96-412c-4696-b8f2-06914fa07e00.jpg', '149RMB', 'china', '1year', '双USB输出 / 双向快充 / 高密度锂聚合物电芯', '149', '4星级', '7');
INSERT INTO `tb_goods` VALUES ('213', '小米随身蓝牙音箱', 'upload/45777064-a1e3-4a45-9345-6b9cacb72079.jpg', '69RMB', 'china', '1year', '玲珑身材，不同凡响 / 车载通话，内置麦克风，稳定清晰，伴你安全前行 / 全金属外壳，3款经典配色', '69', '3星级', '7');
INSERT INTO `tb_goods` VALUES ('214', '米家随身风扇', 'upload/01548404-9cf5-4e69-b4be-b6c0859c7e03.jpg', '19.9RMB', 'china', '1year', '标准USB接口，可随意搭配数码设备 / 轻巧便携可拆卸，能放在口袋的小风扇', '20', '4星级', '7');
INSERT INTO `tb_goods` VALUES ('215', '米家运动鞋智能版', 'upload/6a13bc38-a9ea-485b-9988-8cce96d77eb8.jpg', '229RMB', 'china', '1year', '一体式高弹针织鞋面 / 鱼骨足弓锁紧系统 / 组合式鞋底 / 运动智能芯片', '229', '2星级', '7');
INSERT INTO `tb_goods` VALUES ('216', '最生活浴巾·青春系列', 'upload/c6e26033-7d62-402e-8cf8-692a97352d6a.jpg', '99RMB', 'china', '1year', '阿瓦提长棉绒 / 1.6秒强吸水 / 580克加厚', '99', '3星级', '7');
INSERT INTO `tb_goods` VALUES ('217', '8H乳胶床垫', 'upload/f3673a81-249f-414d-b012-a20c4beee849.jpg', '999RMB', 'china', '1year', '泰国直釆天然乳胶 / 0胶水分层设计 / 德国物理防螨内胆套 / 可拆洗', '999', '3星级', '7');
INSERT INTO `tb_goods` VALUES ('218', '90分旅行箱 20寸', 'upload/8200edf1-8751-44e8-b25d-f61d6801a8c5.jpg', '299RMB', 'china', '1year', '表面蜂窝形设计，不易刮花 / 高弹性静音轮胎 / 内饰采用优质纺织布料，环保安全', '229', '4星级', '7');
INSERT INTO `tb_goods` VALUES ('219', '小米便携鼠标', 'upload/a232a744-cb4d-4c3c-a74e-0a3a3addbdd7.jpg', '99RMB', 'china', '1year', '阳极氧化铝合金外壳+ABS材质 / 蓝牙或2.4G双模式 / 轻薄便携', '99', '5星级', '7');
INSERT INTO `tb_goods` VALUES ('220', '小米手环2', 'upload/b9d36bd3-569b-4aba-86e4-cd223e5f574c.jpg', '149RMB', 'china', '1year', 'OLED显示屏，时间、步数、心率，触手可及', '149', '5星级', '7');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` varchar(8) NOT NULL DEFAULT '',
  `name` varchar(14) NOT NULL,
  `tel` varchar(13) DEFAULT NULL,
  `nickname` varchar(10) DEFAULT NULL,
  `pwd` varchar(60) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `gender` bit(1) DEFAULT NULL,
  `zjlx` tinyint(4) DEFAULT NULL,
  `focus` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------

-- ----------------------------
-- Table structure for tb_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_userinfo`;
CREATE TABLE `tb_userinfo` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `DiZhi` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_userinfo
-- ----------------------------

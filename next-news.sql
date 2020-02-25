/*
Navicat MariaDB Data Transfer

Source Server         : .
Source Server Version : 100122
Source Host           : localhost:3306
Source Database       : next-news

Target Server Type    : MariaDB
Target Server Version : 100122
File Encoding         : 65001

Date: 2019-03-28 10:03:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` varchar(24) NOT NULL,
  `type_id` varchar(12) NOT NULL,
  `img_type` int(1) NOT NULL COMMENT '新闻列表显示模式：\r\n0：纯文字，无图片\r\n1：有一张图片\r\n3：有三张图片',
  `cover_img` varchar(255) DEFAULT NULL COMMENT '如果img_type为1或者3的话，本字段必填。\r\n是一个json数组\r\n['''']\r\n['''','''','''']',
  `title` varchar(56) NOT NULL COMMENT '新闻标题',
  `publisher` varchar(16) NOT NULL COMMENT '发布者',
  `publisher_face` varchar(255) NOT NULL COMMENT '发布者头像',
  `content` text NOT NULL COMMENT '新闻内容',
  `create_time` varchar(32) NOT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('news-1001', '1001', '1', '[\"http://itzixi.com:88/group1/M00/00/03/CpoxxFwIuoOAZj-iAAOgcrS6vVM205.png\"]', '冻哭！今冬首个棉裤预警发布 全国八成地区需棉裤护体', 'NEXT 学院', 'http://itzixi.com:88/group1/M00/00/03/CpoxxFwHa-yAeaJ5AABYaW2wCas265.jpg', '<p>随着今冬首个寒潮来袭，我国大部气温将创新低，0℃线将抵达长江中下游一带。中国天气网友情发布今冬首个棉裤预警，提醒全国小伙伴，这股寒潮有十足的诚意冻哭你，未来6天（5日至10日）全国超80%的地方都需要棉裤护体，9日棉裤分界线深入华南，广东、广西、福建都将“沦陷”</p><img src=\'http://itzixi.com:88/group1/M00/00/03/CpoxxFwIuoOAZj-iAAOgcrS6vVM205.png\' style=\'width:100%;\'><p>根据棉裤预报，受今冬首个寒潮影响，未来6天全国超80%的地方都需要棉裤护体，27省市区气温将达到今年入冬来气温最低值。最寒冷时段出现在9日至10日，0℃线可南压至长江中下游地区，届时北京将降至-10℃，南京0℃，广州10℃左右。</p>', '2018-12-03 11:12:57');
INSERT INTO `news` VALUES ('news-1002', '1001', '0', '', '正能量！小伙子捡到手机通过店家还给失主', 'NEXT 学院', 'http://itzixi.com:88/group1/M00/00/03/CpoxxFwHa-yAeaJ5AABYaW2wCas265.jpg', '<p>小伙子捡到手机通过店家还给失主</p><p>一读者：前两天晚上，有个小伙子捡到了一台手机，转交到我们店里了，说是在外面捡到的，“看到你们这边有店就交给你们了”，然后他转身就走了。</p><p>过了几分钟，失主通过朋友的微信打了语音电话过来。我们店员向其核对了一些相关问题，失主就过来拿走了。那个小哥也不知道叫啥，就叫他“雷锋”好了。社会需要这种正能量的好人。</p>', '2018-12-18 11:12:57');
INSERT INTO `news` VALUES ('news-2001', '2001', '3', '[\"http://itzixi.com:88/group1/M00/00/03/CpoxxFwIu3qAc4FRAAjU3-yxrCw066.png\",\"http://itzixi.com:88/group1/M00/00/03/CpoxxFwIu5WAdY3dAAV8JPn4QJs528.png\",\"http://itzixi.com:88/group1/M00/00/03/CpoxxFwIu7KAPWGDAAdY7yaftmA367.png\"]', '《我不是药神》获“澳洲奥斯卡”最佳亚洲电影', 'NEXT 学院', 'http://itzixi.com:88/group1/M00/00/03/CpoxxFwHa-yAeaJ5AABYaW2wCas265.jpg', '<p>AACTA是澳大利亚的年度“奥斯卡”，颁奖礼上同时嘉奖了过去一年中优秀的本土电影。在众多获奖人中，妮可·基德曼凭借在新片《被抹去的男孩》中的出色表演获颁最佳女配角奖；金球奖提名演员、同时身兼导演和编剧的乔·埃格顿也凭同一部电影夺得最佳改编剧本奖。金球奖和艾美奖提名男演员西蒙·贝克凭借电影《呼吸》获得最佳男配角奖。西蒙·贝克也身兼这部电影的导演、编剧和制片人。</p><img src=\'http://itzixi.com:88/group1/M00/00/03/CpoxxFwIu3qAc4FRAAjU3-yxrCw066.png\' style=\'width:100%;\'><p>中国电影《我不是药神》击败日本电影《小偷家族》等竞争者夺得AACTA奖最佳亚洲电影奖，这是中国电影人首次获得该项荣誉。澳大利亚知名女演员瑞秋·格里芬与该奖的评委会评审成员、曾执导《虎胆龙威2》的导演雷尼·哈林一起向《我不是药神》导演文牧野颁奖。文牧野登上领奖台发表获奖感言：“谢谢评审们把这个奖给我们的电影，能够代表中国电影站在这里我很荣幸。这是一部关于善良和希望的电影，我希望每一个看过电影的人都能从中感受到人性中的善念，然后更正面地面对生活中的苦难。谢谢悉尼，谢谢澳大利亚，谢谢。”</p>', '2018-12-03 11:12:57');
INSERT INTO `news` VALUES ('news-3001', '1003', '3', '[\"http://itzixi.com:88/group1/M00/00/03/CpoxxFwIu3qAc4FRAAjU3-yxrCw066.png\",\"http://itzixi.com:88/group1/M00/00/03/CpoxxFwIu5WAdY3dAAV8JPn4QJs528.png\",\"http://itzixi.com:88/group1/M00/00/03/CpoxxFwIu7KAPWGDAAdY7yaftmA367.png\"]', '《我不是药神》获“澳洲奥斯卡”最佳亚洲电影', 'NEXT 学院', 'http://itzixi.com:88/group1/M00/00/03/CpoxxFwHa-yAeaJ5AABYaW2wCas265.jpg', '<p>AACTA是澳大利亚的年度“奥斯卡”，颁奖礼上同时嘉奖了过去一年中优秀的本土电影。在众多获奖人中，妮可·基德曼凭借在新片《被抹去的男孩》中的出色表演获颁最佳女配角奖；金球奖提名演员、同时身兼导演和编剧的乔·埃格顿也凭同一部电影夺得最佳改编剧本奖。金球奖和艾美奖提名男演员西蒙·贝克凭借电影《呼吸》获得最佳男配角奖。西蒙·贝克也身兼这部电影的导演、编剧和制片人。</p><img src=\'http://itzixi.com:88/group1/M00/00/03/CpoxxFwIu3qAc4FRAAjU3-yxrCw066.png\' style=\'width:100%;\'><p>中国电影《我不是药神》击败日本电影《小偷家族》等竞争者夺得AACTA奖最佳亚洲电影奖，这是中国电影人首次获得该项荣誉。澳大利亚知名女演员瑞秋·格里芬与该奖的评委会评审成员、曾执导《虎胆龙威2》的导演雷尼·哈林一起向《我不是药神》导演文牧野颁奖。文牧野登上领奖台发表获奖感言：“谢谢评审们把这个奖给我们的电影，能够代表中国电影站在这里我很荣幸。这是一部关于善良和希望的电影，我希望每一个看过电影的人都能从中感受到人性中的善念，然后更正面地面对生活中的苦难。谢谢悉尼，谢谢澳大利亚，谢谢。”</p>', '2018-12-03 11:12:57');
INSERT INTO `news` VALUES ('news-3002', '1003', '3', '[\"http://itzixi.com:88/group1/M00/00/03/CpoxxFwE7riACnwsAAMf-Aw0fWU262.png\",\"http://itzixi.com:88/group1/M00/00/03/CpoxxFwE7saAFvUiAAMukM9mEVE452.png\",\"http://itzixi.com:88/group1/M00/00/03/CpoxxFwE7smAXRRRAALduDgC08Y279.png\"]', '凯迪拉克CT6，倍感奢华，只为你设计！', 'NEXT 学院', 'http://itzixi.com:88/group1/M00/00/03/CpoxxFwHa-yAeaJ5AABYaW2wCas265.jpg', '<p>侧面来看，新车相比老款变化不大，全新的20英寸V-Sport专属轮圈和Brembo刹车系统，看起来格外具有运动气息。车身尺寸方面略有增加，新车的长宽高分别为5182/1879/1472mm，轴距达到3106mm，整车显得更加稳重，大气。</p><img src=\'http://itzixi.com:88/group1/M00/00/03/CpoxxFwE7saAFvUiAAMukM9mEVE452.png\' style=\'width:100%;\'><p>新款CT6前脸的变化很大，进气格栅改为蜂窝状设计，加上四边的镀铬装饰，整个中网呈现出外凸的视觉感，棱角分明，看起来更加凶悍；标志性的泪眼式前大灯组，细节上也进行了一定的优化改进，两侧大灯下方装饰了类似于鱼鳃式的进气口，可以为轮胎提供更加的散热能力，颜值方面提高了很多。</p><img src=\'http://itzixi.com:88/group1/M00/00/03/CpoxxFwE7riACnwsAAMf-Aw0fWU262.png\' style=\'width:100%;\'><p>不懂车不心慌，欢迎观看山哥说车。凯迪拉克是美国通用汽车集团下一款豪华汽车品牌，一直都是美国总统的座驾，曾在汽车行业内创造无数个第一，然而来到中国，却一直不温不火，如今全新凯迪拉克CT6即将上市，看它有多大改变，能和三大豪华汽车品牌BBA叫板！</p><img src=\'http://itzixi.com:88/group1/M00/00/03/CpoxxFwE7smAXRRRAALduDgC08Y279.png\' style=\'width:100%;\'>', '2018-12-03 11:12:57');
INSERT INTO `news` VALUES ('news-33001', '3001', '1', '[\"http://itzixi.com:88/group1/M00/00/03/CpoxxFwIveWAQLilAAPyhJ1D2Ys477.png\"]', '凉山昭觉矿石开采爆破 暴露出大面积恐龙足迹群', 'NEXT 学院', 'http://itzixi.com:88/group1/M00/00/03/CpoxxFwHa-yAeaJ5AABYaW2wCas265.jpg', '<p>三比罗嘎东岸脚下蜥脚类恐龙行进足迹。</p><img src=\'http://itzixi.com:88/group1/M00/00/03/CpoxxFwIveWAQLilAAPyhJ1D2Ys477.png\' style=\'width:100%;\'><p>新发现的三比罗嘎东岸岩壁上多种类恐龙足迹分布点。</p>', '2018-12-03 11:12:57');
INSERT INTO `news` VALUES ('news-4001', '4001', '0', '', '2018新款Jeep牧马人SUV强势上市！越野情怀还不来看看？！', 'NEXT 学院', 'http://itzixi.com:88/group1/M00/00/03/CpoxxFwHa-yAeaJ5AABYaW2wCas265.jpg', '<p>新款牧马人不仅在外观上进行了大范围的优化，内饰上也更为规整耐看。对称式中控台非常均衡，体现了硬派车型的稳健风格。全新样式的出风口采用了一条线的水平布置，比现款中控屏下的两个大圆圈看起来舒服很多。仪表盘采用了液晶与指针的设计，科技感更强，视觉效果也更加清晰。三幅式多功能方向盘采用了亮色装饰，中控液晶屏集成新一代多媒体系统，车辆状态显示功能非常丰富。总的来看内饰风格较现款更为活泼一些，内外都朝着年轻化迈进了一大步。</p><p>我们看，新款车型的钢坯银与黑色进行搭配，整体看起来非常协调。新款的后轮眉有明显的收窄，在不减弱防护性的同时，最大程度的兼顾了美观性。后尾灯采用了全新的样式，不再是现款的平面造型，新款光照的角度更大，效果更出色。尾杠的指示灯也变换了位置，并且缩小后，设计在了备胎之下。整体来看，新款的外观更加精致。</p><p>新款牧马人（罗宾汉）的外观变化非常大，一改往日被吐槽的“拖拉机”前脸，新款保留硬派风格的同时，看起来更加精致。新车车头部分，自上而下，弧度内收的角度更大。圆形的头灯内收也很明显，分别嵌入了格栅的七孔之中，比现款看起来更精神了。两侧的轮眉不仅与保险杠加大了距离，并且还在轮眉上设置了灯光。保险杠也进行了全新的设计，采用了更多的线条和几何形状设计，不再显得那么呆板生硬。</p><p>前几日，Jeep牧马人与哈弗H9的拔河比赛，让我们这些看客过足了瘾。牧马人输得的确很难看，但这次偏向娱乐性的较量，根本不足以撼动牧马人在众多车友心中地位。牧马人依旧是吉普系列中最为强悍的品种，真正意义上的越野车。2018款全新牧马人已经到店，性能更加强悍，而且堪称史上最帅。我们一起来看看。</p>', '2018-12-18 11:12:57');
INSERT INTO `news` VALUES ('news-4002', '4001', '3', '[\"http://itzixi.com:88/group1/M00/00/03/CpoxxFwHbemAEEkcAANmV8Xre_o316.png\",\"http://itzixi.com:88/group1/M00/00/03/CpoxxFwHbs2AfbMTAAP6bMBZXUA255.png\",\"http://itzixi.com:88/group1/M00/00/03/CpoxxFwHbzyAXNbbAAK5OQZ9SHc127.png\"]', '此刻 正当燃 新豪华SUV 凯迪拉克XT4全新上市！', 'NEXT 学院', 'http://itzixi.com:88/group1/M00/00/03/CpoxxFwHa-yAeaJ5AABYaW2wCas265.jpg', '<p>说到豪车品牌，人们脑海中首先浮现的，要么是法拉利、兰博基尼、玛莎拉蒂等超豪华品牌，要么是奔驰、宝马、奥迪坚固的铁三角组成的一线豪华品牌，然后才是凯迪拉克、捷豹路虎、沃尔沃等二线。</p><img src=\'http://itzixi.com:88/group1/M00/00/03/CpoxxFwHbemAEEkcAANmV8Xre_o316.png\' style=\'width:100%;\'><p> 理论上来说，价格有优势的二线豪华品牌应该销量更多一些，但是在市场中的表现却恰恰相反，超豪华品牌高处不胜寒，受众小，最走量的却是BBA这三个一线豪华品牌，明星车型的销量稳定破万，和家用车领域产品都能一较高下。而二线豪车虽然品牌不多，但销量断层特别明显，首当其冲遥遥领先的就是来自美国的豪华品牌凯迪拉克</p><img src=\'http://itzixi.com:88/group1/M00/00/03/CpoxxFwHbs2AfbMTAAP6bMBZXUA255.png\' style=\'width:100%;\'><p>在2016年凯迪拉克就在华销售破十万辆，2017年更是创下新纪录达到17万辆，中国市场也一跃超过美国，成为品牌最大的单一市场。今年已过去五个月，累销已达98623辆，和沃尔沃49792辆以及路虎捷豹的60799辆相比，有明显的优势差距。有人说这是“瘸子里拔将军”，但是从数据上来看，二线豪车冠军之名当之无愧。</p><img src=\'http://itzixi.com:88/group1/M00/00/03/CpoxxFwHbzyAXNbbAAK5OQZ9SHc127.png\' style=\'width:100%;\'><p>最令人意想不到的是，一向以性能和运动著称的凯迪拉克，此次新款CT6的发动机参数竟然不升反降，虽然官方解释是采用了闭缸技术，但是2.0T发动机最大功率由276马力降为234马力，账面数据上来看，给消费者一种心理落差，当然同时带来的是一定的节油性能。让小编感到意外的是，凯迪拉克这次竟然改了尾灯！总算是开窍了。</p>', '2018-12-15 11:12:57');
INSERT INTO `news` VALUES ('news-4003', '4001', '3', '[\"http://itzixi.com:88/group1/M00/00/03/CpoxxFwE7riACnwsAAMf-Aw0fWU262.png\",\"http://itzixi.com:88/group1/M00/00/03/CpoxxFwE7saAFvUiAAMukM9mEVE452.png\",\"http://itzixi.com:88/group1/M00/00/03/CpoxxFwE7smAXRRRAALduDgC08Y279.png\"]', '凯迪拉克CT6，倍感奢华，只为你设计！', 'NEXT 学院', 'http://itzixi.com:88/group1/M00/00/03/CpoxxFwHa-yAeaJ5AABYaW2wCas265.jpg', '<p>侧面来看，新车相比老款变化不大，全新的20英寸V-Sport专属轮圈和Brembo刹车系统，看起来格外具有运动气息。车身尺寸方面略有增加，新车的长宽高分别为5182/1879/1472mm，轴距达到3106mm，整车显得更加稳重，大气。</p><img src=\'http://itzixi.com:88/group1/M00/00/03/CpoxxFwE7saAFvUiAAMukM9mEVE452.png\' style=\'width:100%;\'><p>新款CT6前脸的变化很大，进气格栅改为蜂窝状设计，加上四边的镀铬装饰，整个中网呈现出外凸的视觉感，棱角分明，看起来更加凶悍；标志性的泪眼式前大灯组，细节上也进行了一定的优化改进，两侧大灯下方装饰了类似于鱼鳃式的进气口，可以为轮胎提供更加的散热能力，颜值方面提高了很多。</p><img src=\'http://itzixi.com:88/group1/M00/00/03/CpoxxFwE7riACnwsAAMf-Aw0fWU262.png\' style=\'width:100%;\'><p>不懂车不心慌，欢迎观看山哥说车。凯迪拉克是美国通用汽车集团下一款豪华汽车品牌，一直都是美国总统的座驾，曾在汽车行业内创造无数个第一，然而来到中国，却一直不温不火，如今全新凯迪拉克CT6即将上市，看它有多大改变，能和三大豪华汽车品牌BBA叫板！</p><img src=\'http://itzixi.com:88/group1/M00/00/03/CpoxxFwE7smAXRRRAALduDgC08Y279.png\' style=\'width:100%;\'>', '2018-12-03 11:12:57');
INSERT INTO `news` VALUES ('news-4004', '4001', '1', '[\"http://itzixi.com:88/group1/M00/00/02/CpoxxFwE7k-ANI2kAAReVsBN3Kw664.png\"]', '2019新款Jeep大指挥官进入生产！', 'NEXT 学院', 'http://itzixi.com:88/group1/M00/00/03/CpoxxFwHa-yAeaJ5AABYaW2wCas265.jpg', '<p>JEEP品牌首辆七座SUV大指挥官于4月17日正式上市，这是一辆国内特供车型，也就是说全球只有中国地区销售。大指挥官指导价27.98-40.98万，竞品车型为丰田汉兰达、福特锐界、以及大众途昂等</p><img src=\'http://itzixi.com:88/group1/M00/00/02/CpoxxFwE7k-ANI2kAAReVsBN3Kw664.png\' style=\'width:100%;\'><p>全国首批大指挥官实车到店后，讯哥在一个交流群里看到了一位车友询问广汽菲克4S店销售的回复截图，从销售回复的内容来看，大指挥官目前订车优惠3万起步，同时还有大礼包赠送，高配车型的最高优惠可达5万。不过具体的真实性还有待确认，不过这也预示着大指挥官未来的终端优惠巨大。而从外观来看，大指挥官有着Jeep家族式风格，不过前脸造型更加扁平宽大，气势非常足，而且两边LED大灯组与中网相连，一体感更强</p>', '2018-12-03 11:12:57');
INSERT INTO `news` VALUES ('news-4005', '4001', '3', '[\"http://itzixi.com:88/group1/M00/00/03/CpoxxFwHdIOACnMVAAO3b5txIZk224.png\",\"http://itzixi.com:88/group1/M00/00/03/CpoxxFwHdIiAKVV1AAS8MMY1hsw159.png\",\"http://itzixi.com:88/group1/M00/00/03/CpoxxFwHdIuAXRfDAAPUKY6x18A766.png\"]', '永不磨灭的经典全进口Jeep指南者！', 'NEXT 学院', 'http://itzixi.com:88/group1/M00/00/03/CpoxxFwHa-yAeaJ5AABYaW2wCas265.jpg', '<p>我们在购车时，都有理性的购车需求，比如大空间、动力强或是性价比高。但是对于女性来说，感性永远大于理性，外观颜值高，是她们选车的第一要素。今天我们访谈的主角小杨也不例外，她一开始被Jeep指南者的外观吸引，随着一段时间的使用，指南者的空间与舒适性也得到了小杨的认可。那么指南者有哪些优缺点，是否值得购买呢？我们来听小杨娓娓道来</p><img src=\'http://itzixi.com:88/group1/M00/00/03/CpoxxFwHdIOACnMVAAO3b5txIZk224.png\' style=\'width:100%;\'><p>指南者的定位是紧凑型SUV，在这一点上，它就败于等价位车型！先来说一说它的优点，作为广汽旗下的主力军！它采用1.4T发动机！不要小瞧这个发动机，它的马力已经被调校到了165马力，比普通1.5T发动机的马力都高！质量为1500KG，即使被调校出了165马力，但是质量在那放着，还是有点小牛拉大车的感觉！</p><img src=\'http://itzixi.com:88/group1/M00/00/03/CpoxxFwHdIiAKVV1AAS8MMY1hsw159.png\' style=\'width:100%;\'><p>这款车全系标配了1.4T发动机！并且像一些主流配置，ABS防抱死，刹车辅助，车身稳定系统，儿童座椅接口等等 ！唯一不足的，低配的没有一键启动，真心想买的话，可以考虑高配的哟！</p><img src=\'http://itzixi.com:88/group1/M00/00/03/CpoxxFwHdIuAXRfDAAPUKY6x18A766.png\' style=\'width:100%;\'><p>经典还是经典，老款已不再，新款一般般！</p>', '2018-12-03 11:12:57');
INSERT INTO `news` VALUES ('news-42005', '4002', '3', '[\"http://itzixi.com:88/group1/M00/00/03/CpoxxFwIwKeAPYSgAALuNBMAtaE614.png\",\"http://itzixi.com:88/group1/M00/00/03/CpoxxFwIwLGAEkGMAALMH-GHXIg910.png\",\"http://itzixi.com:88/group1/M00/00/03/CpoxxFwIwLiAaVEwAAM9PEbwsE4931.png\"]', 'cpu的使用寿命大概有多少年？\r\n', 'NEXT 学院', 'http://itzixi.com:88/group1/M00/00/03/CpoxxFwHa-yAeaJ5AABYaW2wCas265.jpg', '<p>说不定还可能是第一个遇见外星人的CPU</p><img src=\'http://itzixi.com:88/group1/M00/00/03/CpoxxFwIwLGAEkGMAALMH-GHXIg910.png\' style=\'width:100%;\'><p>按照计划，到2025年，旅行者1号的同位素温差发电机才会完全停止工作。也就是说，4004处理器到那时才会完全退休</p><img src=\'http://itzixi.com:88/group1/M00/00/03/CpoxxFwIwKeAPYSgAALuNBMAtaE614.png\' style=\'width:100%;\'><p>2017年11月28日，NASA成功唤醒了旅行者1号4个备份的轨道校正推进器，效果还十分完美，证明至少有1块4004处理器还在勤勤恳恳地工作</p><img src=\'http://itzixi.com:88/group1/M00/00/03/CpoxxFwIwLiAaVEwAAM9PEbwsE4931.png\' style=\'width:100%;\'><p>4004不仅仅是英特尔首款微处理器，也是迄今为止最长寿的处理器，它现在还在“旅行者1号”探测器上兢兢业业地工作。</p>', '2018-12-03 11:12:57');
INSERT INTO `news` VALUES ('news-44001', '4002', '1', '[\"http://itzixi.com:88/group1/M00/00/03/CpoxxFwIv_iAcezYAAEqwNya9Os583.png\"]', '从苹果换到安卓手机是什么样的体验？网友神总结！', 'NEXT 学院', 'http://itzixi.com:88/group1/M00/00/03/CpoxxFwHa-yAeaJ5AABYaW2wCas265.jpg', '<p>智能手机市场的竞争，不仅仅是各个厂商之间的较量，也是安卓阵营和苹果阵营的一场博弈。iPhone的出现，开启了智能手机时代，原来的塞班系统也被iOS取代！总体来看，手机用户被分为安卓和苹果两派。果粉们主要守着苹果独有的iOS系统，安卓用户更注重功能性和操作性。</p><img src=\'[\'http://122.152.205.72:88/group1/M00/00/03/CpoxxFwIv_iAcezYAAEqwNya9Os583.png\']\' style=\'width:100%;\'><p></p>', '2018-12-03 11:12:57');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` varchar(12) NOT NULL,
  `name` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1001', '热点');
INSERT INTO `type` VALUES ('1002', '推荐');
INSERT INTO `type` VALUES ('1003', '资讯');
INSERT INTO `type` VALUES ('2001', '娱乐');
INSERT INTO `type` VALUES ('2002', '综艺');
INSERT INTO `type` VALUES ('3001', '历史');
INSERT INTO `type` VALUES ('4001', '汽车');
INSERT INTO `type` VALUES ('4002', '科技');

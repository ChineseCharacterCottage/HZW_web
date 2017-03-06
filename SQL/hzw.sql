﻿# Host: localhost  (Version: 5.5.47)
# Date: 2017-03-06 23:35:36
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "hzw_character"
#

DROP TABLE IF EXISTS `hzw_character`;
CREATE TABLE `hzw_character` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `character` varchar(255) DEFAULT NULL,
  `pinyin` varchar(255) DEFAULT NULL,
  `words` varchar(255) DEFAULT NULL,
  `sentence` varchar(255) DEFAULT NULL,
  `explanation` varchar(255) DEFAULT NULL,
  `radical_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `radical_id` (`radical_id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

#
# Data for table "hzw_character"
#

INSERT INTO `hzw_character` VALUES (1,'庄','zhuang1','村庄,village/庄严的,dignified/庄重的,solemn','仪式在庄严的气氛中进行。/The ceremony proceeded in a solemn atmosphere','village/serious/dignified','1'),(2,'庭','ting2','家庭,family/法庭,law court','她与家庭断绝了关系。/She broke with her family.','hall/courtyard;front yard','1'),(3,'库','ku4','仓库,warehouse/数据库,database','这些蔬菜贮藏在20摄氏度以下的仓库里。/These vegetables store in a wharehouse at temperatures below 20℃.','warehouse/coulomb','1'),(4,'店','dian4','书店,bookstore/饭店,restaurant/店员,shop assitant','那是城里最有名的饭店。/That\'s the restaurant in town.','store/shop','1'),(5,'庙','miao4','庙会,temple fair','北京最近有好多庙会。/Beijing has several temple fairs recently.','temple','1'),(6,'矿','kuang4','油矿,oil deposit/矿井,mine shaft','他的矿井在一次事故中倒塌。/His mine collapsed in an accident.','mineral deposit/mine','3'),(7,'床','chuang2','床铺,bed/车床,lathe','我喜欢他的大床。/I like his big bed.','bed/bed-shaped thing','1'),(8,'旷','kuang4','空旷,open and spacious/旷课,to be absent from school','你知道他为什么旷课吗?/Do you know why he is absent from school?','vast/to waste','4'),(9,'看','kan4','看电影,to see a film/看病,to see a doctor/照看,to look after','我看应该这么办。/I think it should be done in this way.','look/see/observe/to visit/to consider','5'),(10,'泪','lei4','眼泪,tear','我看见眼泪从她脸上流了下来。/I saw tears rolling down her face.','tear','6'),(11,'盯','ding1','盯着,stare at','每次我们停下来，每个人都会盯着我们。/Every time we stopped, everybody would stare at me.','stare','5'),(12,'眉','mei2','页眉,header','您拥有带页眉和页脚的空白页。/You have a blank page with a header a footer.','eyebrow','5'),(13,'眼','yan3','眼光,vision/耳朵眼儿,external opening of the ear','你的眼光应该是全局性的，这样你才能看到你理想的生活。/Your vision should be so global that you see your ideal life.','eye/hole','5'),(14,'瞎','xia1','瞎忙,to be busy to no purpose','我们瞎忙了整整一个上午。/We spent the whole morning just messing about.','blind/foolishly','5'),(15,'睡','shui4','睡觉,go to sleep','去睡觉吧， 你看上去困乏极了。/Go to bed. You look tired out.','to sleep','5'),(16,'督','du1','督促,to supervise and urge','那样的话，我就不会督促你和我一起去了。/In that case, I won\'t urge you to go with me.','to superintend/to oversee','5'),(17,'睹','du3','耳闻目睹,what one sees and hears','其间耳闻目睹的事，算起来也很不少。/During that time I witnessed or heard about a lot of things.','to see','5'),(18,'睦','mu4','和睦,harmony','这就是获得和睦的人际关系的关键。/This is the key to harmonious human relations.','harmonious','5'),(19,'瞩','zhu3','瞩目,to focus one\'s attention upon','然而在今年，奥沙利文自己却是众人瞩目的焦点。/But this year, O’Sullivan is himself the focus of most attention.','to gaze/to look steadily','5'),(20,'肌','ji1','肌肉,muscle','有些病人可能还肌肉酸痛。/Some paitients may also have muscle pain.','skin','7'),(21,'肿','zhong3','消肿,subside a swelling','芦荟胶含有的药剂能自然消肿。/Aloe Vera contains natural anti-swelling agent.','swell','7'),(22,'胀','zhang4','膨胀,dilate','气球充气将会膨胀。/The ballon will dilate with air.','expand','7'),(23,'胞','bao1','双胞胎,twins','我有一个双胞胎兄弟。/I have a twin brother.','both of the same parents','7'),(24,'膏','gao1','膏油,anointing','你的衣服时常洁白，你的头上也不少缺少膏油。/Always be clothed in white,and always anoint your head with oil.','fat','7'),(25,'旦','dan4','元旦,New year\'s day','元旦是一年的第一天。/New year\'s day is the first day of a year.','day','4'),(26,'旬','xun2','上旬,the first ten days of a month','今年的运动会在十月上旬举行。/Sports meeting will be held on the first ten days of Octorber.','a period of ten days','4'),(27,'旱','han4','旱季,dry season/抗旱,combat draught','在旱季我们需要抗旱。/ We need to combat draught in dry season.','draught','4'),(28,'晃','huang4','明晃晃,shining','他们发现房间里除了一面明晃晃的镜子什么都没有。/They found nothing in the room but a crystal mirror.','dazzle','4'),(29,'晰','xi1','清晰,distinct','你的语言应该简单、清晰。/Your language must be simple and clean.','clear','4'),(30,'叹','tan4','哀叹,sigh in sorrow','他哀叹道，“现在和过去不一样了。”/He sighed in sorrow, it was not the same.','sigh','8'),(31,'吞','tun1','吞没,absorb','他把鸡蛋吞了下去。/He swallowed the egg.','swallow','8'),(32,'唇','chun2','嘴唇,lip/唇膏,lipsticks','姑娘用唇膏乱涂了一下嘴唇。/The girl daubed her lips with lipsticks.','lip','8'),(33,'唤','huan4','召唤,summon','他急忙召唤他的下级去他的办公室商议。/He summoned his subordinates hastily to his office.','call','8'),(34,'喉','hou2','喉咙,throat/喉片,throat lozenge','这种喉片可以减轻你的喉咙疼。/This throat lozenge will quell your sore throat.','throat','8'),(35,'扣','kou4','衣扣,clothes button','把碗扣在桌子上。/Place a container upside down','buttom/to button/to place a container upside down','9'),(36,'叩','kou4','叩门,to kock at the door','他听见有人轻轻叩门。/He heard someone knocking lightly on the door.','to knock','8'),(37,'右','you4','右边,on the right','我站在她的右边。/I stood at her right.','right','8'),(38,'后','hou4','后门,back door/后天,the dar after tomorrow','我们快速走过后门。/We walked rapidly through the back door.','behind/after','8'),(39,'售','shou4','销售,to sell/零售,to sell by retail','零售物价上涨。/The rate of retail price rise.;','to sell','8'),(40,'明','ming2','明亮,bright/表明,to make clear/有话明说,to speak one;s mind plainly/明天,tomorrow','明天把她带到我家来。/Bring her to my house tomorrow.','light/clear/open/immediately following in time','4'),(41,'期','qi1','定期举行,to hold at regular intervals/期望,to expect','我期望见到我的舅舅。/I expect to see my uncle.','scheduled time/to expect','7'),(42,'回','hui2','回家,to go back home/回信,to write back','如果你回信的话，他就写信。/He would write if you would answer.','return/reply/to turn round','10'),(43,'国','guo2','国内,internals/国货,domestic goods','谁统治这个国家?/Who govern this country?','country/national','10'),(44,'囚','qiu2','囚犯,prisoner','那个囚犯交代了罪行。/The prisoner babbled out his guilt.','to prison/prisoner','10'),(45,'围','wei2','围巾,scarf/包围敌人,to encircle','今年流行那种围巾。/Those scarfs are in this year.','to enclose/around','10'),(46,'圆','yuan2','圆满,perfect','这个持续了60年的爱情故事终于有了圆满的结局。/A perfect ending for a love affair that had lasted nearly 60 years.','circle/ball-shaped/satisfactory','10'),(47,'建','jian4','建立,to establish/建议,to propose','你建议我们做什么?/What do you propose we do?','to establish/to built','11'),(48,'延','yan2','延长,to extend/延期,to delay','基于天气关系， 比赛延期进行。/The match was postponed on account of the weather.','to prolong/to postpone','11'),(49,'廷','ting2','宫廷,royal court','她在宫廷中失宠。/She was disgraced at court.','royal court','11'),(50,'过','guo4','过江,to cross a river/过节,to celebrate a festival','人人都喜欢过节！/Everyone loves a holiday!','to cross/to pass or spend','12'),(51,'还','hai2','还是,had better','咱们还是出去吧。/We\'d better go out.','still/even more','12'),(52,'还','huan2','还原,to restore to the original state or shape/还礼,to give a gift in return','要是老板送了你什么东西，不要觉得一定要还礼。/Don\'t feel the need to reciprocate if your boss gives you something.','to return/to do something in return','12'),(53,'运','yun4','日月运行,the revolution of the sun and the moon/运输,to transport/运用,to use/幸运,lucky','我们要运用两个其他的想法。/Well, we have to use two other ideas.','to rotate/to carry/to use/fate','12'),(54,'连','lian2','连忙,hurriedly/连说带笑,talking and laughing','他从前连字都不认得，现在会写信了。/He can write letters now but he couldn\'t even read a word before.','to connect/including/even','12'),(55,'逐','zhu2','逐客令,order for guests to leave/逐步进行,to proceed step by step','工作正在逐步开展。/Our work is progressing gradually.','to pursue/to expel/one by one','12'),(56,'追','zhui1','追逐,to chase/追念,to recall/追问,to make a detailed enquiry','我不追求名利。/I don\'t go after fame or money.','to chase/to date back to/to go after','12'),(57,'赶','gan3','赶火车,to rush for a train/赶羊,to herd the sheep','正赶上他没在家。/It so happened that he was not in.','to catch up/to drive away/to happen to','13'),(58,'越','yue4','爬山越岭,to cross over hills and mountains','越快越好。/The faster, the better.','to go beyond/the more…the more','13'),(59,'趋','qu1','趋势,trend','你们是怎么看待这种趋势的？/What do you think about this trend?','to rush/to incline towards','13'),(60,'行','xing2','行李,luggage','你还有其他行李吗?/Do you have any other baggage?','to walk/to circulate/to do/competent','14'),(61,'往','wang3','往往,often','树往房子那边倾斜。/The tree leans toward the house.','to go/past/towards','14'),(62,'征','zheng1','征税,to levy taxes','有些动物具有人类的特征。/Some animals possess the characteristic of man.','to make a long journey/to go on a campaign/to levy/to solicit/evidence','14'),(63,'得','de2','得奖,to win a prize/得当,proper','不得随地吐痰。/No spitting.','to get/fit/satisfied/','14'),(64,'循','xun2','循规蹈矩,to observe rules and follow orders docilely/循环,to circulate','如何打破这个循环？/How do you break the cycle?','to follow','14'),(65,'伐','fa2','伐树,to cut down trees/讨伐,to go on a punitive expedition','我们将砍伐这些树。/We will fell these trees.','to chop/to attack','15'),(66,'仁','ren2','杏仁儿,apricot kernel','孔子以“仁”为教育的核心。/Confucius regards \"benevolence\" as the core of education.','benevolence/kernel','15'),(67,'什','shen2','什么,what',NULL,NULL,'15'),(68,'保','bao3','保护,protect/保证,to pledge','她保护自己以免遭受袭击。/She defended herself from the attack.','to protect/to guarantee','15'),(69,'信','xin4','相信,believe/信用,trustworthiness/信号,signal','他的信用好。/His credit is good.','honesty/to believe/message','15'),(70,'债','zhai4','还债,to pay debts','那笔钱被用来还债了。/The money was applied to the payment of debts.','debt','15'),(71,'寺','si4','清真寺,mosque','第一站，伏虎寺。/Our first stop is Fuhu Temple.','temple','2'),(72,'里','li3','屋子里,inside the room/夜里,at the night/里面inside','他把钥匙藏在领带里面。/He concealed the key inside his tie.','inside/inner','2'),(73,'坐','zuo4','坐落,to be situated in/席地而坐,to sit on the floor','学校坐落在小河附近。/The school is located near the rivulet.','to sit','2'),(74,'埋','mai2','掩埋,to bury/埋没,to neglect','别埋没了你的思想，把目光投向现实。/Don\'t bury your thoughts, put your vision to reality.','to cover up','2'),(75,'灶','zao4','灶台,top of a cooking range','妈妈正在厨房擦洗灶台。/His mother was scrubbing the kitchen stove.','cooking stove','17'),(76,'砖','zhuan1','茶砖,tea brick','卡车装满了砖头。/The truck was loaded down with bricks.','brick/brick-shaped thing','3'),(77,'硬','ying4','硬件,hardware/欺软怕硬,to bully the weak and fear the strong','他的心肠一定很硬。/His heart must be very hard.','hard/strong/obstinately','3'),(78,'岩','yan2','石头,stone/岩石,stone','那所房子是石头造的。/That house is built of stone.','cliff/stone','18'),(79,'砂','sha1','砂子,sand','混凝土是由水泥， 砂子，石头和水混合而成。/Concrete is made of cement, sand, stone and water.','sand/sandlike','3'),(80,'汗','han4','汗水,sweat','汗水湿透了他的全身。/Sweat soused him all over.','sweat','6'),(81,'沐','mu4','沐浴,to have a bath','乡间沐浴在灿烂的阳光下。/The countryside was bathed in brilliant sunshine.','to wash one\'s head','6'),(82,'浴','yu4','浴室,bathroom','水是从浴室中溢出来的。/The water shed from the bathroom.','bath','6'),(83,'冰','bing1','冰块,ice cake','冰块不会慢慢地溶解，而是破裂。/The ice will not thaw slowly, it will break.','ice/to ice/to feel cold','16'),(84,'凉','liang2','凉快,nice and cool','试着在一个黑暗的，凉快的房间睡觉。/Try to sleep in a dark, cool room.','cool(of weather, not as severe as cold)','16'),(85,'凄','qi1','凄惨,miserable/凄凉,desolate','你不在我身边，显得这个世界如此凄凉。/The world looks bleak without you here by my side.','chilly/sad/bleak and desolate','16'),(86,'冻','dong4','果冻,jelly','这种植物禁不住冻。/This plant can\'t stand frost.','to freeze/jelly','16'),(87,'打','da3','打扮,to dress up/打扰,to break in','这男孩打扮得像个战士。/The boy was dressed as a soldier.','to hit/used to denotee kinds of actions in place of many specific verbs/used to form a new verb with some verbs/preposition,from','9'),(88,'托','tuo1','委托,to entrust/托故,to give as a pretext','我委托他传送。/I entrusted him with its transmission.','to hold in the palm/to ask/to plead','9'),(89,'把','ba3','把握,to grasp','把它拿到厨房去。/Take it to the kitchen.','to hold/to control/to guard/preposition','9'),(90,'搬','ban1','搬家,to move(one\'s household)','家具太笨， 搬起来很不方便。/The furniture is too cumbersome to move.','to relocate/to remove','9'),(91,'广','guang3','广场,square/广播,to broad cast','我们已经把广播录到了磁带上。/We have taken the broadcast on a tape.','widespread/numerous/to expand','1'),(92,'目','mu4','目录,catalogue/目前,at present','你必须安心于目前的工作。/You must reconcile yourself to your present job.','eye/to look/catalogue','5'),(93,'月','yue4','月饼,moon cake/月经,monthly period','你们只用一个月的时间来复习？/You only review your lessons in one month?','moon/month/round/monthly','7'),(94,'走','zou3','走亲戚,to visit relatives','他刚走。/He just left.','to walk/to leave','13'),(95,'日','ri4','生日,birthday/工作日,workday/春日,spring time','生日快乐！/Happy birthday!','sun/day/time','4'),(96,'口','kou3','门口,doorway/伤口,wound/一家五口,a family of five/借口,excuse','我不能相信他的借口。/I can\'t buy his excuse.','mouth/entrance/opening/quantifier','8'),(97,'人','ren2','人口,population/工人,worker/商人,businessman/助人为乐,to take pleasure in helping others','当着众人的面向上拉起裤子是丢人的行为。/It is a shame to hitch up your trousers before the public.','human being/person engaged in a particular acitivity/other people','19'),(98,'个','ge4','个人,individual/高个子,a trall person','我从不认识这样一个人。/I never know such a man.','single/size/quantifier','19'),(99,'从','cong2','服从,obey/从来,always','她弃舞台而从军。/She deserted the stage for army.','to follower/follower/to obey/to participate in','19'),(100,'众','zhong4','众人,many people/观众,audience','谁是你的观众？/Who is your audience?','crowd/many people','19'),(101,'命','zhong4','性命,life/命令,to order','他命令我们离开这所房子。/He ordered us out of the house.','life/fate/order/to order','19'),(102,'土','tu3','土地,land/土里土气,clodish','这是我从中国带来的土特产。/Here is a local speciality from China.','soil/local','2'),(103,'石','shi2','石头,stone','那所房子是石头造的。/That house is built of stone.','stone/of stone','3'),(104,'水','shui3','水平,standard/橘子水,orange juice','她的体重降到了令人满意的水平。/Her weight went down to a satisfactory level.','water','20'),(105,'尿','niao4','尿道,urethral canal','昨天他尿中又带血了。/He passed blood in his urine again yesterday.','urine','22'),(106,'汞','gong3','汞元素,The element mercury','汞元素已被证实会损害人的神经系统。/The element mercury has been shown to damage the human nervous system.','mercury','20'),(107,'泵','beng4','气泵,air pump','除非有泵，不然这些水井都是无用的。/These wells are useless unless there is power to run the pump.','pump','20'),(108,'泉','quan2','泉源,fountainhead','运动是一切生命的泉源。/Sport is the source of all lives.','spring/mouth of a spring/source of underground water','20'),(109,'浆','jiang1','豆浆,soya-bean milk','我早上喝了些豆浆。/I had some soybean milk for breakfast.','thick liquid','20'),(110,'泰','tai4','泰然处之,to take sth camely','祝愿我亲爱的祖国和人民， 国泰民安！/I wish our country and people prosperity.','safe','21'),(111,'求','qiu2','求学,to pursue one\'s studies','我不喜欢求人帮忙。/I hate asking favors of people.','to try to get/to request','21'),(112,'黎','li2','黎明,daybreak','这就是帝国的黎明。/It was the dawn of empire.','multitude','21'),(113,'手','shou3','选手,contestant/手册,handbook','他受了伤， 另一个选手取代了他。/He was hurt, and another player replaced him.','hand/person skilled in sth','23'),(114,'拿','na2','拿主意,to make up one;s mind','他拿起苹果一口咬下去。/He took the apple and bit down.','to hold/to have a firm grasp of','23'),(115,'拳','quan2','打拳,to practise Chinese boxing','她狠狠地打了他一拳。/She hit him a hard blow.','fist/Chinese boxing','23'),(116,'掌','zhang3','掌权,to be in power/掌握,to master','我们如何才能掌握？/How do we master this?','palm/to slap/to control','23'),(117,'拜','bai4','拜年,give new year\'s greetings/拜托,to entrust','现在，拜托，我们一定再也不要谈论这些东西了。/Now, please, we must never speak of these things again.','respectful formality in the past/to send greetings','23'),(118,'看','kan1','看门,to guard the entrance/看家,to look after the house/看护,to nurse','她整夜看护那位病人。/She watched the patient all night.','to look after','5'),(119,'行','hang2','行家,expert/银行,bank','咱们是同行。/We are of the same profession.','line/profession/bussiness form','14'),(120,'得','dei3','无','我得设法保住我的职位。/I have to hold down my post.','must/have to','14'),(122,'打','da2','无','一个人可以对付一打强盗。/One can manage a dozen robbers.','quantifier,dozen','9'),(123,'把','ba4','刀把儿,handle of a knife','睡前吃一小把核桃。/Eat a handful of walnuts before bed.','handle','9'),(124,'浆','jiang4','浆糊,paste','这糨糊不黏。/This paste is not sticky enough.','paste','20');

#
# Structure for table "hzw_component"
#

DROP TABLE IF EXISTS `hzw_component`;
CREATE TABLE `hzw_component` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `shape` varchar(255) NOT NULL DEFAULT '',
  `characters` varchar(255) NOT NULL DEFAULT '',
  `voice_or_shape` varchar(255) NOT NULL DEFAULT '',
  `explanation` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Data for table "hzw_component"
#

INSERT INTO `hzw_component` VALUES (1,'广','广/矿/庄/旷/床','v','a sound elelment relating to the pronounciation of \"uang\"'),(2,'广','广/庄/庙/庭/库/店','s','a meaning element relating to room or a certain space.'),(3,'目','目/看/泪/盯/眉/眼/瞎/睡','s','a meaning element relating to eye'),(4,'目','目/督/睹/睦/瞩','v','a sound elelment relating to the pronounciation of  \"u\"'),(5,'月','肌/肿/胀/胞/膏','s','It means meat in ancient time. When it is a meaning element, it is relating to body skin or organ.'),(6,'日','日/旦/旬/旱/晃/晰','s','a meaning elelment relating to sunshine or time'),(7,'口','口/叹/吞/唇/唤/喉','s','a meaning element of relating to the movement of mouth or characteristics of speaking sounds.'),(8,'口','扣/叩/右/后/售','v','a sound elelment relating to the pronounciation of \"ou\"'),(9,'月','月/明/期','s','a meaning element relating to moon'),(10,'囗','回/国/囚/围/圆','s','a meaning element relating to boundary or extension'),(11,'廴','建/廷/延','s',''),(12,'辶','过/还/运/连/逐/追','s',''),(13,'走','走/赶/越/趋','s',''),(14,'彳','行/往/征/得/循','s',''),(15,'人','伐/仁/什/保/信/债/人/个/从/众/命','s',''),(16,'土','灶/寺/里/坐/埋/土','s',''),(17,'石','矿/砖/硬/岩/砂/石','s',''),(18,'水','泪/汗/沐/浴/泪/水/尿/冰/汞/泵/泉/浆/泰/求/黎','s',''),(19,'手','扣/打/托/把/搬/手/看/拿/拳/掌/拜','s',''),(20,'冫','冰/凉/凄/冻','s','');

#
# Structure for table "hzw_radical"
#

DROP TABLE IF EXISTS `hzw_radical`;
CREATE TABLE `hzw_radical` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `radical_shape` varchar(255) DEFAULT NULL,
  `characters` varchar(255) DEFAULT NULL,
  `radical_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

#
# Data for table "hzw_radical"
#

INSERT INTO `hzw_radical` VALUES (1,'广','广/庄/庭/库/店/庙/床','广字旁/learn-to'),(2,'土','寺/里/坐/埋/土','提土旁,土字旁/earth'),(3,'石','矿/砖/硬/砂/石','石字旁/rock'),(4,'日','日/旷/旦/旬/旱/晃/晰/明','日字旁/sun'),(5,'目','目/看/盯/眉/眼/瞎/睡/督/睹/睦/瞩','目字旁/eye'),(6,'氵','泪/汗/沐/浴','三点水/three-dots water'),(7,'月','月/肌/肿/胀/胞/膏/期','月字旁/meat,moon'),(8,'口','口/叹/吞/唇/唤/喉','口字旁/mouth'),(9,'扌','扣/打/托/把/搬','提手旁/(side-)hand'),(10,'囗','回/国/囚/围/圆','囗字框/surround'),(11,'廴','建/廷/延','建字底/march'),(12,'辶','过/还/运/连/逐/追','走之旁/halt'),(13,'走','走/赶/越/趋','走字底/walk'),(14,'彳','行/往/征/得/循','双人旁/step'),(15,'亻','伐/仁/什/保/信/债','单人旁/(side-)man'),(16,'冫','冰/凉/凄/冻','两点水/ice'),(17,'火','灶','火字旁/fire'),(18,'山','岩','山字头/mountain'),(19,'人','人/个/从/众/命','人字头/person'),(20,'水','水/汞/泵/泉/浆','水字底/water'),(21,'氺','泰/求/黎','泰字底/water'),(22,'尸','尿','尸字头/corpse');

#
# Structure for table "hzw_relation_similar_radical"
#

DROP TABLE IF EXISTS `hzw_relation_similar_radical`;
CREATE TABLE `hzw_relation_similar_radical` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `radical_id1` varchar(255) DEFAULT NULL,
  `radical_id2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

#
# Data for table "hzw_relation_similar_radical"
#

INSERT INTO `hzw_relation_similar_radical` VALUES (1,'4','5'),(2,'5','7'),(3,'4','8'),(4,'7','8'),(5,'7','10'),(6,'14','15'),(7,'11','12'),(8,'11','13'),(9,'12','13'),(10,'6','16'),(11,'20','21');

#
# Structure for table "hzw_test_fill"
#

DROP TABLE IF EXISTS `hzw_test_fill`;
CREATE TABLE `hzw_test_fill` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `choice1` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `choice2` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `choice3` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `choice4` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `choice5` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `sentence1` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `sentence2` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `sentence3` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `sentence4` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `sentence5` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `correct_order` varchar(5) CHARACTER SET utf8 NOT NULL DEFAULT '12345' COMMENT '正确选项',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "hzw_test_fill"
#


#
# Structure for table "hzw_test_hear_choice"
#

DROP TABLE IF EXISTS `hzw_test_hear_choice`;
CREATE TABLE `hzw_test_hear_choice` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `correct_choice` char(1) CHARACTER SET utf8 NOT NULL DEFAULT 'A' COMMENT '正确选项',
  `pronunciation` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '听力发音',
  `relation_character_id` int(11) NOT NULL DEFAULT '0' COMMENT '关联字',
  `picture_a` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '四个选项',
  `picture_b` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `picture_c` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `picture_d` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `relation_character_id` (`relation_character_id`),
  CONSTRAINT `hzw_test_hear_choice_ibfk_1` FOREIGN KEY (`relation_character_id`) REFERENCES `hzw_character` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "hzw_test_hear_choice"
#


#
# Structure for table "hzw_test_hear_tof"
#

DROP TABLE IF EXISTS `hzw_test_hear_tof`;
CREATE TABLE `hzw_test_hear_tof` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `tof` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否正确，正确为1',
  `relation_character_id` int(11) NOT NULL DEFAULT '0' COMMENT '关联字id',
  `pronunciation` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `picture` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `relation_character_id` (`relation_character_id`),
  CONSTRAINT `hzw_test_hear_tof_ibfk_1` FOREIGN KEY (`relation_character_id`) REFERENCES `hzw_character` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "hzw_test_hear_tof"
#


#
# Structure for table "hzw_test_tof"
#

DROP TABLE IF EXISTS `hzw_test_tof`;
CREATE TABLE `hzw_test_tof` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `tof` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否正确，正确为1',
  `relation_character_id` int(11) NOT NULL DEFAULT '0' COMMENT '关联字id',
  `picture` varchar(255) NOT NULL DEFAULT '',
  `character` char(4) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `relation_character_id` (`relation_character_id`),
  CONSTRAINT `hzw_test_tof_ibfk_1` FOREIGN KEY (`relation_character_id`) REFERENCES `hzw_character` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "hzw_test_tof"
#


-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2017 at 01:12 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hzw`
--

-- --------------------------------------------------------

--
-- Table structure for table `hzw_character`
--

CREATE TABLE IF NOT EXISTS `hzw_character` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `character_shape` varchar(255) DEFAULT NULL,
  `pinyin` varchar(255) DEFAULT NULL,
  `words` varchar(255) DEFAULT NULL,
  `sentence` varchar(255) DEFAULT NULL,
  `explanation` varchar(255) DEFAULT NULL,
  `radical_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=206 ;

--
-- Dumping data for table `hzw_character`
--

INSERT INTO `hzw_character` (`ID`, `character_shape`, `pinyin`, `words`, `sentence`, `explanation`, `radical_id`) VALUES
(1, '庄', 'zhuang1', '村庄,village/庄严的,dignified/庄重的,solemn', '仪式在庄严的气氛中进行。/The ceremony proceeded in a solemn atmosphere', 'village/serious/dignified', '1'),
(2, '庭', 'ting2', '家庭,family/法庭,law court', '她与家庭断绝了关系。/She broke with her family.', 'hall/courtyard;front yard', '1'),
(3, '库', 'ku4', '仓库,warehouse/数据库,database', '这些蔬菜贮藏在20摄氏度以下的仓库里。/These vegetables store in a wharehouse at temperatures below 20℃.', 'warehouse/coulomb', '1'),
(4, '店', 'dian4', '书店,bookstore/饭店,restaurant/店员,shop assitant', '那是城里最有名的饭店。/That''s the restaurant in town.', 'store/shop', '1'),
(5, '庙', 'miao4', '庙会,temple fair', '北京最近有好多庙会。/Beijing has several temple fairs recently.', 'temple', '1'),
(6, '矿', 'kuang4', '油矿,oil deposit/矿井,mine shaft', '他的矿井在一次事故中倒塌。/His mine collapsed in an accident.', 'mineral deposit/mine', '3'),
(7, '床', 'chuang2', '床铺,bed/车床,lathe', '我喜欢他的大床。/I like his big bed.', 'bed/bed-shaped thing', '1'),
(8, '旷', 'kuang4', '空旷,open and spacious/旷课,to be absent from school', '你知道他为什么旷课吗?/Do you know why he is absent from school?', 'vast/to waste', '4'),
(9, '看', 'kan4', '看电影,to see a film/看病,to see a doctor/照看,to look after', '我看应该这么办。/I think it should be done in this way.', 'look/see/observe/to visit/to consider', '5'),
(10, '泪', 'lei4', '眼泪,tear', '我看见眼泪从她脸上流了下来。/I saw tears rolling down her face.', 'tear', '6'),
(11, '盯', 'ding1', '盯着,stare at', '每次我们停下来，每个人都会盯着我们。/Every time we stopped, everybody would stare at me.', 'stare', '5'),
(12, '眉', 'mei2', '页眉,header', '您拥有带页眉和页脚的空白页。/You have a blank page with a header a footer.', 'eyebrow', '5'),
(13, '眼', 'yan3', '眼光,vision/耳朵眼儿,external opening of the ear', '你的眼光应该是全局性的，这样你才能看到你理想的生活。/Your vision should be so global that you see your ideal life.', 'eye/hole', '5'),
(14, '瞎', 'xia1', '瞎忙,to be busy to no purpose', '我们瞎忙了整整一个上午。/We spent the whole morning just messing about.', 'blind/foolishly', '5'),
(15, '睡', 'shui4', '睡觉,go to sleep', '去睡觉吧， 你看上去困乏极了。/Go to bed. You look tired out.', 'to sleep', '5'),
(16, '督', 'du1', '督促,to supervise and urge', '那样的话，我就不会督促你和我一起去了。/In that case, I won''t urge you to go with me.', 'to superintend/to oversee', '5'),
(17, '睹', 'du3', '耳闻目睹,what one sees and hears', '其间耳闻目睹的事，算起来也很不少。/During that time I witnessed or heard about a lot of things.', 'to see', '5'),
(18, '睦', 'mu4', '和睦,harmony', '这就是获得和睦的人际关系的关键。/This is the key to harmonious human relations.', 'harmonious', '5'),
(19, '瞩', 'zhu3', '瞩目,to focus one''s attention upon', '然而在今年，奥沙利文自己却是众人瞩目的焦点。/But this year, O’Sullivan is himself the focus of most attention.', 'to gaze/to look steadily', '5'),
(20, '肌', 'ji1', '肌肉,muscle', '有些病人可能还肌肉酸痛。/Some paitients may also have muscle pain.', 'skin', '7'),
(21, '肿', 'zhong3', '消肿,subside a swelling', '芦荟胶含有的药剂能自然消肿。/Aloe Vera contains natural anti-swelling agent.', 'swell', '7'),
(22, '胀', 'zhang4', '膨胀,dilate', '气球充气将会膨胀。/The ballon will dilate with air.', 'expand', '7'),
(23, '胞', 'bao1', '双胞胎,twins', '我有一个双胞胎兄弟。/I have a twin brother.', 'both of the same parents', '7'),
(24, '膏', 'gao1', '膏油,anointing', '你的衣服时常洁白，你的头上也不少缺少膏油。/Always be clothed in white,and always anoint your head with oil.', 'fat', '7'),
(25, '旦', 'dan4', '元旦,New year''s day', '元旦是一年的第一天。/New year''s day is the first day of a year.', 'day', '4'),
(26, '旬', 'xun2', '上旬,the first ten days of a month', '今年的运动会在十月上旬举行。/Sports meeting will be held on the first ten days of Octorber.', 'a period of ten days', '4'),
(27, '旱', 'han4', '旱季,dry season/抗旱,combat draught', '在旱季我们需要抗旱。/ We need to combat draught in dry season.', 'draught', '4'),
(28, '晃', 'huang4', '明晃晃,shining', '他们发现房间里除了一面明晃晃的镜子什么都没有。/They found nothing in the room but a crystal mirror.', 'dazzle', '4'),
(29, '晰', 'xi1', '清晰,distinct', '你的语言应该简单、清晰。/Your language must be simple and clean.', 'clear', '4'),
(30, '叹', 'tan4', '哀叹,sigh in sorrow', '他哀叹道，“现在和过去不一样了。”/He sighed in sorrow, it was not the same.', 'sigh', '8'),
(31, '吞', 'tun1', '吞没,absorb', '他把鸡蛋吞了下去。/He swallowed the egg.', 'swallow', '8'),
(32, '唇', 'chun2', '嘴唇,lip/唇膏,lipsticks', '姑娘用唇膏乱涂了一下嘴唇。/The girl daubed her lips with lipsticks.', 'lip', '8'),
(33, '唤', 'huan4', '召唤,summon', '他急忙召唤他的下级去他的办公室商议。/He summoned his subordinates hastily to his office.', 'call', '8'),
(34, '喉', 'hou2', '喉咙,throat/喉片,throat lozenge', '这种喉片可以减轻你的喉咙疼。/This throat lozenge will quell your sore throat.', 'throat', '8'),
(35, '扣', 'kou4', '衣扣,clothes button', '把碗扣在桌子上。/Place a container upside down', 'buttom/to button/to place a container upside down', '9'),
(36, '叩', 'kou4', '叩门,to kock at the door', '他听见有人轻轻叩门。/He heard someone knocking lightly on the door.', 'to knock', '8'),
(37, '右', 'you4', '右边,on the right', '我站在她的右边。/I stood at her right.', 'right', '8'),
(38, '后', 'hou4', '后门,back door/后天,the dar after tomorrow', '我们快速走过后门。/We walked rapidly through the back door.', 'behind/after', '8'),
(39, '售', 'shou4', '销售,to sell/零售,to sell by retail', '零售物价上涨。/The rate of retail price rise.;', 'to sell', '8'),
(40, '明', 'ming2', '明亮,bright/表明,to make clear/有话明说,to speak one;s mind plainly/明天,tomorrow', '明天把她带到我家来。/Bring her to my house tomorrow.', 'light/clear/open/immediately following in time', '4'),
(41, '期', 'qi1', '定期举行,to hold at regular intervals/期望,to expect', '我期望见到我的舅舅。/I expect to see my uncle.', 'scheduled time/to expect', '7'),
(42, '回', 'hui2', '回家,to go back home/回信,to write back', '如果你回信的话，他就写信。/He would write if you would answer.', 'return/reply/to turn round', '10'),
(43, '国', 'guo2', '国内,internals/国货,domestic goods', '谁统治这个国家?/Who govern this country?', 'country/national', '10'),
(44, '囚', 'qiu2', '囚犯,prisoner', '那个囚犯交代了罪行。/The prisoner babbled out his guilt.', 'to prison/prisoner', '10'),
(45, '围', 'wei2', '围巾,scarf/包围敌人,to encircle', '今年流行那种围巾。/Those scarfs are in this year.', 'to enclose/around', '10'),
(46, '圆', 'yuan2', '圆满,perfect', '这个持续了60年的爱情故事终于有了圆满的结局。/A perfect ending for a love affair that had lasted nearly 60 years.', 'circle/ball-shaped/satisfactory', '10'),
(47, '建', 'jian4', '建立,to establish/建议,to propose', '你建议我们做什么?/What do you propose we do?', 'to establish/to built', '11'),
(48, '延', 'yan2', '延长,to extend/延期,to delay', '基于天气关系， 比赛延期进行。/The match was postponed on account of the weather.', 'to prolong/to postpone', '11'),
(49, '廷', 'ting2', '宫廷,royal court', '她在宫廷中失宠。/She was disgraced at court.', 'royal court', '11'),
(50, '过', 'guo4', '过江,to cross a river/过节,to celebrate a festival', '人人都喜欢过节！/Everyone loves a holiday!', 'to cross/to pass or spend', '12'),
(51, '还', 'hai2', '还是,had better', '咱们还是出去吧。/We''d better go out.', 'still/even more', '12'),
(52, '还', 'huan2', '还原,to restore to the original state or shape/还礼,to give a gift in return', '要是老板送了你什么东西，不要觉得一定要还礼。/Don''t feel the need to reciprocate if your boss gives you something.', 'to return/to do something in return', '12'),
(53, '运', 'yun4', '日月运行,the revolution of the sun and the moon/运输,to transport/运用,to use/幸运,lucky', '我们要运用两个其他的想法。/Well, we have to use two other ideas.', 'to rotate/to carry/to use/fate', '12'),
(54, '连', 'lian2', '连忙,hurriedly/连说带笑,talking and laughing', '他从前连字都不认得，现在会写信了。/He can write letters now but he couldn''t even read a word before.', 'to connect/including/even', '12'),
(55, '逐', 'zhu2', '逐客令,order for guests to leave/逐步进行,to proceed step by step', '工作正在逐步开展。/Our work is progressing gradually.', 'to pursue/to expel/one by one', '12'),
(56, '追', 'zhui1', '追逐,to chase/追念,to recall/追问,to make a detailed enquiry', '我不追求名利。/I don''t go after fame or money.', 'to chase/to date back to/to go after', '12'),
(57, '赶', 'gan3', '赶火车,to rush for a train/赶羊,to herd the sheep', '正赶上他没在家。/It so happened that he was not in.', 'to catch up/to drive away/to happen to', '13'),
(58, '越', 'yue4', '爬山越岭,to cross over hills and mountains', '越快越好。/The faster, the better.', 'to go beyond/the more…the more', '13'),
(59, '趋', 'qu1', '趋势,trend', '你们是怎么看待这种趋势的？/What do you think about this trend?', 'to rush/to incline towards', '13'),
(60, '行', 'xing2', '行李,luggage', '你还有其他行李吗?/Do you have any other baggage?', 'to walk/to circulate/to do/competent', '14'),
(61, '往', 'wang3', '往往,often', '树往房子那边倾斜。/The tree leans toward the house.', 'to go/past/towards', '14'),
(62, '征', 'zheng1', '征税,to levy taxes', '有些动物具有人类的特征。/Some animals possess the characteristic of man.', 'to make a long journey/to go on a campaign/to levy/to solicit/evidence', '14'),
(63, '得', 'de2', '得奖,to win a prize/得当,proper', '不得随地吐痰。/No spitting.', 'to get/fit/satisfied/', '14'),
(64, '循', 'xun2', '循规蹈矩,to observe rules and follow orders docilely/循环,to circulate', '如何打破这个循环？/How do you break the cycle?', 'to follow', '14'),
(65, '伐', 'fa2', '伐树,to cut down trees/讨伐,to go on a punitive expedition', '我们将砍伐这些树。/We will fell these trees.', 'to chop/to attack', '15'),
(66, '仁', 'ren2', '杏仁儿,apricot kernel', '孔子以“仁”为教育的核心。/Confucius regards "benevolence" as the core of education.', 'benevolence/kernel', '15'),
(67, '什', 'shen2', '什么,what', NULL, NULL, '15'),
(68, '保', 'bao3', '保护,protect/保证,to pledge', '她保护自己以免遭受袭击。/She defended herself from the attack.', 'to protect/to guarantee', '15'),
(69, '信', 'xin4', '相信,believe/信用,trustworthiness/信号,signal', '他的信用好。/His credit is good.', 'honesty/to believe/message', '15'),
(70, '债', 'zhai4', '还债,to pay debts', '那笔钱被用来还债了。/The money was applied to the payment of debts.', 'debt', '15'),
(71, '寺', 'si4', '清真寺,mosque', '第一站，伏虎寺。/Our first stop is Fuhu Temple.', 'temple', '2'),
(72, '里', 'li3', '屋子里,inside the room/夜里,at the night/里面inside', '他把钥匙藏在领带里面。/He concealed the key inside his tie.', 'inside/inner', '2'),
(73, '坐', 'zuo4', '坐落,to be situated in/席地而坐,to sit on the floor', '学校坐落在小河附近。/The school is located near the rivulet.', 'to sit', '2'),
(74, '埋', 'mai2', '掩埋,to bury/埋没,to neglect', '别埋没了你的思想，把目光投向现实。/Don''t bury your thoughts, put your vision to reality.', 'to cover up', '2'),
(75, '灶', 'zao4', '灶台,top of a cooking range', '妈妈正在厨房擦洗灶台。/His mother was scrubbing the kitchen stove.', 'cooking stove', '17'),
(76, '砖', 'zhuan1', '茶砖,tea brick', '卡车装满了砖头。/The truck was loaded down with bricks.', 'brick/brick-shaped thing', '3'),
(77, '硬', 'ying4', '硬件,hardware/欺软怕硬,to bully the weak and fear the strong', '他的心肠一定很硬。/His heart must be very hard.', 'hard/strong/obstinately', '3'),
(78, '岩', 'yan2', '石头,stone/岩石,stone', '那所房子是石头造的。/That house is built of stone.', 'cliff/stone', '18'),
(79, '砂', 'sha1', '砂子,sand', '混凝土是由水泥， 砂子，石头和水混合而成。/Concrete is made of cement, sand, stone and water.', 'sand/sandlike', '3'),
(80, '汗', 'han4', '汗水,sweat', '汗水湿透了他的全身。/Sweat soused him all over.', 'sweat', '6'),
(81, '沐', 'mu4', '沐浴,to have a bath', '乡间沐浴在灿烂的阳光下。/The countryside was bathed in brilliant sunshine.', 'to wash one''s head', '6'),
(82, '浴', 'yu4', '浴室,bathroom', '水是从浴室中溢出来的。/The water shed from the bathroom.', 'bath', '6'),
(83, '冰', 'bing1', '冰块,ice cake', '冰块不会慢慢地溶解，而是破裂。/The ice will not thaw slowly, it will break.', 'ice/to ice/to feel cold', '16'),
(84, '凉', 'liang2', '凉快,nice and cool', '试着在一个黑暗的，凉快的房间睡觉。/Try to sleep in a dark, cool room.', 'cool(of weather, not as severe as cold)', '16'),
(85, '凄', 'qi1', '凄惨,miserable/凄凉,desolate', '你不在我身边，显得这个世界如此凄凉。/The world looks bleak without you here by my side.', 'chilly/sad/bleak and desolate', '16'),
(86, '冻', 'dong4', '果冻,jelly', '这种植物禁不住冻。/This plant can''t stand frost.', 'to freeze/jelly', '16'),
(87, '打', 'da3', '打扮,to dress up/打扰,to break in', '这男孩打扮得像个战士。/The boy was dressed as a soldier.', 'to hit/used to denotee kinds of actions in place of many specific verbs/used to form a new verb with some verbs/preposition,from', '9'),
(88, '托', 'tuo1', '委托,to entrust/托故,to give as a pretext', '我委托他传送。/I entrusted him with its transmission.', 'to hold in the palm/to ask/to plead', '9'),
(89, '把', 'ba3', '把握,to grasp', '把它拿到厨房去。/Take it to the kitchen.', 'to hold/to control/to guard/preposition', '9'),
(90, '搬', 'ban1', '搬家,to move(one''s household)', '家具太笨， 搬起来很不方便。/The furniture is too cumbersome to move.', 'to relocate/to remove', '9'),
(91, '广', 'guang3', '广场,square/广播,to broad cast', '我们已经把广播录到了磁带上。/We have taken the broadcast on a tape.', 'widespread/numerous/to expand', '1'),
(92, '目', 'mu4', '目录,catalogue/目前,at present', '你必须安心于目前的工作。/You must reconcile yourself to your present job.', 'eye/to look/catalogue', '5'),
(93, '月', 'yue4', '月饼,moon cake/月经,monthly period', '你们只用一个月的时间来复习？/You only review your lessons in one month?', 'moon/month/round/monthly', '7'),
(94, '走', 'zou3', '走亲戚,to visit relatives', '他刚走。/He just left.', 'to walk/to leave', '13'),
(95, '日', 'ri4', '生日,birthday/工作日,workday/春日,spring time', '生日快乐！/Happy birthday!', 'sun/day/time', '4'),
(96, '口', 'kou3', '门口,doorway/伤口,wound/一家五口,a family of five/借口,excuse', '我不能相信他的借口。/I can''t buy his excuse.', 'mouth/entrance/opening/quantifier', '8'),
(97, '人', 'ren2', '人口,population/工人,worker/商人,businessman/助人为乐,to take pleasure in helping others', '当着众人的面向上拉起裤子是丢人的行为。/It is a shame to hitch up your trousers before the public.', 'human being/person engaged in a particular acitivity/other people', '19'),
(98, '个', 'ge4', '个人,individual/高个子,a trall person', '我从不认识这样一个人。/I never know such a man.', 'single/size/quantifier', '19'),
(99, '从', 'cong2', '服从,obey/从来,always', '她弃舞台而从军。/She deserted the stage for army.', 'to follower/follower/to obey/to participate in', '19'),
(100, '众', 'zhong4', '众人,many people/观众,audience', '谁是你的观众？/Who is your audience?', 'crowd/many people', '19'),
(101, '命', 'zhong4', '性命,life/命令,to order', '他命令我们离开这所房子。/He ordered us out of the house.', 'life/fate/order/to order', '19'),
(102, '土', 'tu3', '土地,land/土里土气,clodish', '这是我从中国带来的土特产。/Here is a local speciality from China.', 'soil/local', '2'),
(103, '石', 'shi2', '石头,stone', '那所房子是石头造的。/That house is built of stone.', 'stone/of stone', '3'),
(104, '水', 'shui3', '水平,standard/橘子水,orange juice', '她的体重降到了令人满意的水平。/Her weight went down to a satisfactory level.', 'water', '20'),
(105, '尿', 'niao4', '尿道,urethral canal', '昨天他尿中又带血了。/He passed blood in his urine again yesterday.', 'urine', '22'),
(106, '汞', 'gong3', '汞元素,The element mercury', '汞元素已被证实会损害人的神经系统。/The element mercury has been shown to damage the human nervous system.', 'mercury', '20'),
(107, '泵', 'beng4', '气泵,air pump', '除非有泵，不然这些水井都是无用的。/These wells are useless unless there is power to run the pump.', 'pump', '20'),
(108, '泉', 'quan2', '泉源,fountainhead', '运动是一切生命的泉源。/Sport is the source of all lives.', 'spring/mouth of a spring/source of underground water', '20'),
(109, '浆', 'jiang1', '豆浆,soya-bean milk', '我早上喝了些豆浆。/I had some soybean milk for breakfast.', 'thick liquid', '20'),
(110, '泰', 'tai4', '泰然处之,to take sth camely', '祝愿我亲爱的祖国和人民， 国泰民安！/I wish our country and people prosperity.', 'safe', '21'),
(111, '求', 'qiu2', '求学,to pursue one''s studies', '我不喜欢求人帮忙。/I hate asking favors of people.', 'to try to get/to request', '21'),
(112, '黎', 'li2', '黎明,daybreak', '这就是帝国的黎明。/It was the dawn of empire.', 'multitude', '21'),
(113, '手', 'shou3', '选手,contestant/手册,handbook', '他受了伤， 另一个选手取代了他。/He was hurt, and another player replaced him.', 'hand/person skilled in sth', '23'),
(114, '拿', 'na2', '拿主意,to make up one;s mind', '他拿起苹果一口咬下去。/He took the apple and bit down.', 'to hold/to have a firm grasp of', '23'),
(115, '拳', 'quan2', '打拳,to practise Chinese boxing', '她狠狠地打了他一拳。/She hit him a hard blow.', 'fist/Chinese boxing', '23'),
(116, '掌', 'zhang3', '掌权,to be in power/掌握,to master', '我们如何才能掌握？/How do we master this?', 'palm/to slap/to control', '23'),
(117, '拜', 'bai4', '拜年,give new year''s greetings/拜托,to entrust', '现在，拜托，我们一定再也不要谈论这些东西了。/Now, please, we must never speak of these things again.', 'respectful formality in the past/to send greetings', '23'),
(118, '看', 'kan1', '看门,to guard the entrance/看家,to look after the house/看护,to nurse', '她整夜看护那位病人。/She watched the patient all night.', 'to look after', '5'),
(119, '行', 'hang2', '行家,expert/银行,bank', '咱们是同行。/We are of the same profession.', 'line/profession/bussiness form', '14'),
(120, '得', 'dei3', '无', '我得设法保住我的职位。/I have to hold down my post.', 'must/have to', '14'),
(122, '打', 'da2', '无', '一个人可以对付一打强盗。/One can manage a dozen robbers.', 'quantifier,dozen', '9'),
(123, '把', 'ba4', '刀把儿,handle of a knife', '睡前吃一小把核桃。/Eat a handful of walnuts before bed.', 'handle', '9'),
(124, '浆', 'jiang4', '浆糊,paste', '这糨糊不黏。/This paste is not sticky enough.', 'paste', '20'),
(125, '人', 'ren2', '人民,people/人口,population', '没有人跟我的孩子一起玩。/My children have no one to play with.', 'person/people/human being', '19'),
(126, '山', 'shan1', '山丘,hill/山峰,peak', '刚过这座山， 路就分开了。Just over the hill the road forks.', 'mountain/hill', '18'),
(127, '门', 'men2', '大门,gate/门票,entrance ticket', '她把钱包和门钥匙放进了口袋里。/She pocketed her wallet and door keys.', 'door/gate', '23'),
(128, '木', 'mu4', '木头,wood/木板,plank', '她在木板上烧出了虎的形状。/She burned the image of a tiger into the wood panel.', 'wood', '24'),
(129, '火', 'huo3', '火焰,flame/红火,flourishing/火车,train', '他用扇子扇火。/He fanned the fire.', 'fire/flame', '17'),
(130, '跑', 'pao3', '跑步,run', '告诉你的孩子们不要跑着穿过大街/Tell your children not to run across the street.', 'run', '25'),
(134, '疤', 'ba1', '疤痕', '你脸上的疤是怎么留下的?/How did you come by that scar on your cheek?', 'scar', '27'),
(135, '爸', 'ba4', '爸爸/爸妈', '爸，为什么您这么宠我?/Dad, why do you spoil me?', 'dad/father', '28'),
(136, '帮', 'bang1', '帮会/帮助', '我能帮你什么忙吗?/What can I do for you?', 'help/assist', '29'),
(137, '绑', 'bang3', '绑架', '他被绑在了椅子上。/He was strapped onto the chair.', 'tie up/bind', '30'),
(139, '编', 'bian1', '编程/编号/编辑', '我们可以保证他能胜任编辑工作。/We can certify for him competence as an editor.', 'compile/redact', '30'),
(140, '遍', 'bian4', '遍布', '他把那个词重复了几遍。/He repeated the word several times.', 'all over/everywhere', '12'),
(141, '辩', 'bian4', '辩解/辩论', '他在辩论中驳倒了她。/He bested her in the argument.', 'argue', '32'),
(142, '辫', 'bian4', '辫子', '她的头发编成了一条辫子。/Her hair was pleated in a queue.', 'pigtail/braid', '30'),
(143, '伴', 'ban4', '伙伴/伴侣', '这个男孩被坏伙伴带坏了。/This boy was misled by bad companions.', 'partner/companion', '15'),
(145, '吧', 'ba1', '酒吧', '给我一些其他的吧。/Give me some others.', 'crackling/bar', '8'),
(146, '爬', 'pa2', '爬行', '他们从窗户爬出来。/They climbed out through the window.', 'climb/shin/creep/crawl', '33'),
(147, '案', 'an4', '案件,law case/案板,chopping board/答案,answer', '最小的那个小孩尖声地说出了答案。/The smallest child piped up with the answer.', 'record/file/table/desk/law case', '24'),
(148, '按', 'an4', '按照,according to/按住,press on', '我按小时付给他们钱。/I pay them by the hour.', 'press/according to', '9'),
(149, '趴', 'pa1', '趴下,get down/趴着,lie on one''s stomach', '你还可以四肢趴着。/you can onto all fours.', 'bend over/grovel/lie prone', '25'),
(150, '扒', 'ba1', '扒着,grip', '我紧扒着床边。/I gripped the edge of the mattress.', 'scrabble/hold to', '9'),
(151, '病', 'bing4', '疾病/病毒/病人/病痛', '她打电话告诉我说她病了。/She telephoned me that she was ill.', 'disease/illness/sickness', '27'),
(152, '补', 'bu3', '修补/补充', '这种式样的针脚掉了，要想补上是很困难的。/It''s very difficult to pick up dropped stitches in this pattern.', 'repair/mend/patch', '34'),
(153, '彩', 'cai3', '彩色', '老师用彩色粉笔在黑板上勾勒出中国的边界。/The teacher delineated China on the blackboard with a coloured chalk.', 'colours', '35'),
(154, '踩', 'cai3', '踩踏', '不要踩踏庄稼。/Don''t tread on crops.', 'trample/stamp', '25'),
(155, '菜', 'cai4', '菜单/menu', '这菜闻起来很好[香]。/The dish smells good [delicious].', 'greens', '36'),
(156, '仓', 'cang1', '苍白,pale/苍茫,boundless', '他的面色变得像死人一样苍白。/He turned as pale as death.', 'pale', '36'),
(157, '舱', 'cang1', '船舱/cabin', '他回到他们的船舱，让妻子给孩子们穿好衣服到甲板上去。/He returned to their cabin telling his wife to dress the children and go up on deck.', 'cabin', '37'),
(158, '倡', 'chang4', '倡导,initiate/提倡,advocate', '在中国，提倡一对夫妇只生一个孩子。/It is advocated in China that a couple only has one child.', 'promote/advocate', '15'),
(159, '唱', 'chang4', '唱歌,sing/唱片,record', '关在笼里的夜莺唱不出歌来。/Nightingales will not sing in a cage.', 'sing', '8'),
(160, '疮', 'chuang4', '疮口,wound/疮疤,scar', '这刀口不会留下疮疤。/The cut will not leave any scar.', 'scar', '27'),
(161, '创', 'chuang4', '创新,innovate/创意,creativity/创作,creation', '在你的家里，你怎么鼓励创新和创造性呢？/How do you encourage creativity and innovation in your home?', 'create/establish', '38'),
(162, '赴', 'fu4', '赴约,keep an appointment', '迅速穿上衣服，我们立即去赴晚会。/Fling a dress on and let''s go to the party at once.', 'attend', '13'),
(163, '愤', 'fen4', '愤慨,indignation/愤怒,wrath', '她愤怒地撕裂了她的衣服。/She splintered her dress with anger.', 'anger', '39'),
(164, '喷', 'pen1', '喷泉,geyser/喷射,spray/喷嚏,sneezing', '喷泉和火山均能喷发。/Geysers and volcanoes erupt.', 'sprinkle', '8'),
(165, '批', 'pi1', '批评,criticize/批判,criticize/批准,ratify', '他提出了批评，我反而更喜欢他了。/I like him all the better for his criticism.', 'batch', '9'),
(166, '劈', 'pi1', '劈开,split', '那块板被劈成了两半。/The board split in half.', 'chop', '40'),
(167, '脾', 'pi2', '脾气,temper/脾脏,spleen', '他的坏脾气使朋友们都离他而去。/His bad temper chased his friends away.', 'spleen', '7'),
(168, '偏', 'pian1', '偏离,departure', '他偏离了主题。/He deviated from the main theme.', 'prejudiced', '15'),
(169, '僻', 'pi4', '偏僻,out of the way/僻静,secluded', '现在连偏僻的山区也用上了拖拉机。/Nowadays tractors are used even in remote mountainous regions.', 'secluded', '15'),
(170, '篇', 'pian1', '篇章,writings', '他用打字机打出了一篇文章。/He tapped out an article on the typewriter.', 'piece', '41'),
(171, '柏', 'bai3', '柏树,cypress', '他们在院子里种了一棵柏树。/They planed a cypress in their yard.', 'cypress', '24'),
(172, '迫', 'po4', '紧迫,urgent', '他的要求很紧迫。/He was urgent in his demands.', 'compel', '12'),
(173, '扑', 'pu1', '扑灭,extinguish', '那条狗向我扑来。/The dog threw at me.', 'snap', '9'),
(174, '伯', 'bo2', '伯父,uncle', '我的伯父是这所大学的一名教授。/My uncle is a professor in this university.', 'uncle/father''s elder brother', '15'),
(175, '仆', 'pu2', '仆人,servant', '老板向着仆人吼叫。/The boss bellowed at the servant.', 'servant', '15'),
(176, '朴', 'pu3', '朴素,simplicity', '她穿着朴素整洁。/She was plainly but neatly dressed.', 'simple', '24'),
(177, '枪', 'qiang1', '枪毙/execute by shooting', '他弯下腰放下了他的枪。/He stooped and put down his gun.', 'gun', '24'),
(178, '帐', 'zhang4', '帐篷,tabernacle/账本,account book', '学生们把帐篷集中搭在一起。/The students clustered their tents together.', 'curtain', '29'),
(179, '怕', 'pa4', '害怕,fear/恐怕,be afraid of', '他怕这次考试/ He dreads the examination.', 'fear/be afraid of', '39'),
(180, '拍', 'pai1', '拍打,flap/拍照,take photos', '摄影师给坐着的孩子们拍了照。/The photographer took the children sitting down.', 'pat/beat/slap/bat', '9'),
(181, '迫', 'po4', '强迫,compel/紧迫,urgent', '他的要求很紧迫。/He was urgent in his demands.', 'compel/force/press/go towards/urgent', '12'),
(182, '泊', 'bo2', '停泊,beparked', '轮船已停泊在纽约港。/The ship has berthed in New York.', 'berth/moor/moar/anchor/lake', '6'),
(183, '魄', 'po4', '魄力,courage/魂魄,soul', '他很有魄力。/He is courageous.', 'soul/spirit/vigor', '42'),
(184, '拌', 'ban4', '搅拌,stir', '往面粉里加牛奶， 再拌入3个鸡蛋。/Add the milk to the flour, and then mix in three eggs', 'stir/rufh/malaxate /toss', '9'),
(185, '叛', 'pan4', '背叛,betray/叛徒,renegade', '忘记过去就意味着背叛。/Forgetting the past means betrayal.', 'betray/rebel against', '43'),
(186, '判', 'pan4', '判断,judge', '他相信他的判断。/He trusted in his judgement.', 'distinguish/ judge/decide/condemn', '38'),
(187, '雹', 'bao2', '冰雹,hail', '冰雹正打在屋顶上。/The hailstorm is pelting against the roof.', 'hail', '44'),
(188, '饱', 'bao3', '饱满,satiation/吃饱,full up', '我不能再吃了， 我已经很饱了。/I can''t eat any more; I''m full up.', 'full/satisfied/be fill/be full/plump', '31'),
(189, '抱', 'bao4', '抱歉,appology/抱怨,complain/拥抱,embrace', '朋友们热烈地拥抱。/The friends warmly embraced.', 'embrace', '9'),
(190, '炮', 'pao4', '大炮,cannon/开炮,fire', '现在，战士们，把炮对准那艘船。/Now, men, zero in your guns at the ship.', 'cannon', '17'),
(191, '袍', 'pao2', '袍子,robe', '他今天穿着一件礼袍。/He robed himself in a ceremonial gown today.', 'robe/gown', '34'),
(192, '泡', 'pao4', '泡沫,foam/浸泡,steep', '他用肥皂水吹泡泡。/He blows bubbles with soap water.', 'bubble/soak', '6'),
(193, '碑', 'bei1', '墓碑,tombstone', '这座碑是为纪念他而建的。/The monument was erected in his honour.', 'stele/tablet', '3'),
(194, '牌', 'pai2', '牌照,licence/牌子,plate', '牌已经洗好了。/The cards have shuffled.', 'board/plate/tablet', '48'),
(195, '毙', 'bi4', '枪毙,firing squad/毙命,get killed', '虽然他宁愿被枪毙，但法庭并没有满足他的要求。/Despite his request that he would rather by shot, the court did not favor him.', 'die/be killed', '49'),
(196, '臂', 'bi4', '手臂,arm', '埃利奥特臂下夹着一本厚书。/Elyot held a thick book under his arm.', 'arm', '7'),
(197, '避', 'bi4', '逃避,escape/避免,avoid', '轮船及时转向，避免了一次事故。/She sheered off in time to avoid an accident.', 'avoid/shun/prevent/escape/keep away', '12'),
(198, '壁', 'bi4', '墙壁,wall', '高大的墙壁回响着我们的欢呼声。 The high wall resounded our shouts of joy.', 'wall/cliff/rampart/paries', '2'),
(199, '骗', 'pian4', '骗子,fraud/欺骗,deceive', '自从她骗我以后，我就不信任她了。/ I have distrusted her ever since she cheated me.', 'cheat/deceive', '50'),
(200, '瓣', 'ban4', '花瓣,petal', '花瓣在阳光下绽开。/Flowers expanded their petals in the sunshine.', 'petal/section', '51'),
(201, '柄', 'bing3', '把柄,handle', '她手里拿着一把长柄伞。/She has a long umbrella in her hand.', 'handle/stem/stipe/haft/handgrip', '24'),
(202, '睬', 'cai3', '理睬,pay attention to', '但是，他们对他毫不理睬。/But they ignore him.', 'pay attention to/take notice of', '5'),
(203, '苍', 'cang1', '苍白,pale/苍凉,bleak', '他的面色变得像死人一样苍白。/He turned as pale as death.', 'grey/ashy', '36'),
(204, '张', 'zhang1', '张开,open/张贴,paste/纸张,paper', '写一些目标并张贴他们。/Write out some goals and post them.', 'open/spread/stretch/expand', '52'),
(205, '辨', 'bian4', '辨别,distinguish/分辨,tell apart', '这意味着你必须得辨别它们。/It means that you have to distinguish between them.', 'distinguish/tell apart', '53');

-- --------------------------------------------------------

--
-- Table structure for table `hzw_component`
--

CREATE TABLE IF NOT EXISTS `hzw_component` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `shape` varchar(255) NOT NULL DEFAULT '',
  `characters` varchar(255) NOT NULL DEFAULT '',
  `voice_or_shape` varchar(255) NOT NULL DEFAULT '',
  `explanation` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=126 ;

--
-- Dumping data for table `hzw_component`
--

INSERT INTO `hzw_component` (`ID`, `shape`, `characters`, `voice_or_shape`, `explanation`) VALUES
(1, '广', '广/矿/庄/旷/床', 'v', 'a sound elelment relating to the pronounciation of "uang"'),
(2, '广', '广/庄/庙/庭/库/店', 's', 'a meaning element relating to room or a certain space.'),
(5, '月', '肌/肿/胀/胞/膏', 's', 'It means meat in ancient time. When it is a meaning element, it is relating to body skin or organ.'),
(6, '日', '日/旦/旬/旱/晃/晰', 's', 'a meaning elelment relating to sunshine or time'),
(7, '口', '口/叹/吞/唇/唤/喉', 's', 'a meaning element of relating to the movement of mouth or characteristics of speaking sounds.'),
(8, '口', '扣/叩/右/后/售', 'v', 'a sound element relating to the pronunciation of "ou"'),
(9, '月', '月/明/期', 's', 'a meaning element relating to moon'),
(10, '囗', '回/国/囚/围/圆', 's', 'a meaning element relating to boundary or extension'),
(11, '廴', '建/廷/延', 's', ''),
(12, '辶', '过/还/运/连/逐/追', 's', ''),
(13, '走', '走/赶/越/趋', 's', ''),
(14, '彳', '行/往/征/得/循', 's', ''),
(15, '人', '伐/仁/什/保/信/债/人/个/从/众/命', 's', ''),
(16, '土', '灶/寺/里/坐/埋/土', 's', ''),
(17, '石', '矿/砖/硬/岩/砂/石', 's', ''),
(18, '水', '泪/汗/沐/浴/泪/水/尿/冰/汞/泵/泉/浆/泰/求/黎', 's', ''),
(19, '手', '扣/打/托/把/搬/手/看/拿/拳/掌/拜', 's', ''),
(20, '冫', '冰/凉/凄/冻', 's', ''),
(21, '巴', '把/爸/吧/疤/爬', 'v', 'a sound element relating to the pronunciation of "ba"'),
(22, '安', '案/按', 'v', 'a sound element relating to the pronunciation of “an”'),
(23, '八', '扒/趴', 'v', 'a sound element relating to the pronunciation of "ba"'),
(24, '白', '柏/伯/怕/拍/迫/泊/魄', 'v', 'a sound element relating to the pronunciation of “bai”'),
(25, '半', '拌/伴/叛/判', 'v', 'a sound element relating to the pronunciation of “ban”'),
(26, '邦', '帮/绑', 'v', 'a sound element relating to the pronunciation of “bang”'),
(27, '包', '胞/雹/饱/抱/炮/跑/袍/泡', 'v', 'a sound element relating to the pronunciation of “bao”'),
(28, '卑', '碑/牌/脾', 'v', 'a sound element relating to the pronunciation of “pi”'),
(29, '贲', '愤/喷', 'v', 'a sound element relating to the pronunciation of “ben”'),
(30, '比', '毙/批', 'v', 'a sound element relating to the pronunciation of “bi”'),
(31, '辟', '臂/避/壁/劈/僻', 'v', 'a sound element relating to the pronunciation of “pi”'),
(32, '扁', '编/遍/骗/篇/偏', 'v', 'a sound element relating to the pronunciation of “bian”'),
(33, '辡', '瓣/辨/辫/辩', 'v', 'a sound element relating to the pronunciation of “bian”'),
(34, '丙', '柄/病', 'v', 'a sound element relating to the pronunciation of “bing”'),
(35, '卜', '补/赴/扑/仆/朴', 'v', 'a sound element relating to the pronunciation of “bu”'),
(36, '采', '睬/踩/彩/菜', 'v', 'a sound element relating to the pronunciation of “cai”'),
(37, '仓', '舱/苍/疮/创/枪/抢', 'v', 'a sound element relating to the pronunciation of “cang”'),
(38, '昌', '倡/唱', 'v', 'a sound element relating to the pronunciation of “chang”'),
(39, '长', '帐/张/胀', 'v', 'a sound element relating to the pronunciation of “zhang”'),
(40, '代', '贷/袋', 'v', 'a sound element relating to the pronunciation of “dai”'),
(41, '旦', '担/坦/胆/但', 'v', 'a sound element relating to the pronunciation of “dan”'),
(42, '氐', '低/底/抵', 'v', 'a sound element relating to the pronunciation of “di”'),
(43, '丁', '灯/钉/盯/叮/顶/订/厅', 'v', 'a sound element relating to the pronunciation of “ding”'),
(44, '反', '版/板/返/贩/饭', 'v', 'a sound element relating to the pronunciation of “fan”'),
(45, '方', '芳/坊/防/房/妨/访/仿/纺/放', 'v', 'a sound element relating to the pronunciation of “fang”'),
(46, '分', '份/芬/吩/纷/粉', 'v', 'a sound element relating to the pronunciation of “fen”'),
(47, '夆', '峰/锋/蜂/缝/逢/蓬', 'v', 'a sound element relating to the pronunciation of “eng”'),
(48, '畐', '副/幅/富', 'v', 'a sound element relating to the pronunciation of “fu”'),
(49, '甫', '捕/辅/铺', 'v', 'a sound element relating to the pronunciation of “u”'),
(50, '府', '腐/俯', 'v', 'a sound element relating to the pronunciation of “fu”'),
(51, '付', '咐/符/府/附', 'v', 'a sound element relating to the pronunciation of “fu”'),
(52, '干', '竿/肝/杆/秆/赶/旱/刊', 'v', 'a sound element relating to the pronunciation of “gan”'),
(53, '冈', '刚/纲/钢/岗', 'v', 'a sound element relating to the pronunciation of “gang”'),
(54, '高', '膏/稿/搞/敲', 'v', 'a sound element relating to the pronunciation of “ao”'),
(55, '艮', '根/跟/痕/很/恨/恳/狠/垦', 'v', 'a sound element relating to the pronunciation of “en”'),
(56, '工', '缸/杠/攻/贡/红/虹/空', 'v', 'a sound element relating to the pronunciation of “ong”'),
(57, '共', '供/烘/洪/哄', 'v', 'a sound element relating to the pronunciation of “ong”'),
(58, '勾', '沟/购/构', 'v', 'a sound element relating to the pronunciation of “gou”'),
(59, '古', '估/辜/姑/固/故/胡/枯/苦', 'v', 'a sound element relating to the pronunciation of “u”'),
(60, '瓜', '孤/狐', 'v', 'a sound element relating to the pronunciation of “u”'),
(61, '官', '管/馆', 'v', 'a sound element relating to the pronunciation of “guan”'),
(62, '广', '旷/矿/扩', 'v', 'a sound element relating to the pronunciation of “uang”'),
(63, '亥', '该/孩/核', 'v', 'a sound element relating to the pronunciation of “ai”'),
(64, '曷', '葛/竭/渴/揭/喝', 'v', 'a sound element relating to the pronunciation of “e”'),
(65, '胡', '蝴/糊/湖', 'v', 'a sound element relating to the pronunciation of “hu”'),
(66, '户', '护/炉/芦/驴', 'v', 'a sound element relating to the pronunciation of “u”'),
(67, '及', '极/级/圾', 'v', 'a sound element relating to the pronunciation of “ji”'),
(68, '吉', '洁/结', 'v', 'a sound element relating to the pronunciation of “ji”'),
(69, '几', '肌/饥/机', 'v', 'a sound element relating to the pronunciation of “ji”'),
(70, '己', '纪/记/忌/起', 'v', 'a sound element relating to the pronunciation of “ji”'),
(71, '既', '概/慨/溉', 'v', 'a sound element relating to the pronunciation of “ai”'),
(72, '加', '嘉/驾/架/', 'v', 'a sound element relating to the pronunciation of “jia”'),
(73, '家', '嫁/稼', 'v', 'a sound element relating to the pronunciation of “jia”'),
(74, '叚', '假/霞', 'v', 'a sound element relating to the pronunciation of “ia”'),
(75, '戋', '践/贱/浅/钱/线/盏', 'v', 'a sound element relating to the pronunciation of “ian”'),
(76, '兼', '廉/歉/谦', 'v', 'a sound element relating to the pronunciation of “ian”'),
(77, '监', '篮/滥/蓝', 'v', 'a sound element relating to the pronunciation of “an”'),
(78, '建', '键/健', 'v', 'a sound element relating to the pronunciation of “jian”'),
(79, '将', '浆/桨/酱', 'v', 'a sound element relating to the pronunciation of “jiang”'),
(80, '交', '饺/郊/较/胶/狡/咬', 'v', 'a sound element relating to the pronunciation of “jiao”'),
(81, '焦', '瞧/蕉', 'v', 'a sound element relating to the pronunciation of “iao”'),
(82, '竟', '镜/境', 'v', 'a sound element relating to the pronunciation of “jing”'),
(83, '匊', '菊/鞠', 'v', 'a sound element relating to the pronunciation of “ju”'),
(84, '居', '剧/锯/据', 'v', 'a sound element relating to the pronunciation of “ju”'),
(85, '门', '阁/阔', 's', 'a meaning element of relating to the door'),
(86, '门', '闷/们/闻/问', 'v', 'a sound element relating to the pronunciation of "men"'),
(87, '宀', '富/宁/客', 's', 'a meaning element relating to house'),
(88, '贝', '贩/购/贱', 's', 'a meaning element relating to money'),
(89, '巾', '帐/帮', 's', 'a meaning element relating to cloth'),
(90, '灬', '煎/热/熟', 's', 'a meaning element relating to fire'),
(91, '艹', '苍/菜/草', 's', 'a meaning element relating to grass'),
(92, '厂', '厕/厅/厦', 's', 'a meaning element relating to house'),
(93, '车', '辆/轮', 's', 'a meaning element relating to car'),
(94, '虫', '蜜/蚊', 's', 'a meaning element relating to insect'),
(95, '刀', '剪/劈/辨', 's', 'a meaning element relating to knife'),
(96, '刂', '割/剑/判', 's', 'a meaning element relating to knife'),
(97, '耳', '聪/聋/闻', 's', 'a meaning element relating to ear'),
(98, '阝', '都/郊', 's', 'a meaning element relating to city'),
(99, '阝', '陵/阻', 's', 'a meaning element relating to mountain'),
(100, '弓', '弹/弦/张', 's', 'a meaning element relating to bow'),
(101, '禾', '积/税/种', 's', 'a meaning element relating to crop'),
(102, '火', '爆/灯/炮', 's', 'a meaning element relating to fire'),
(103, '钅', '钉/铃/锁', 's', 'a meaning element relating to metal'),
(104, '马', '驰/驴/驶', 's', 'a meaning element relating to horse'),
(105, '米', '米/粮', 's', 'a meaning element relating to rice'),
(106, '木', '案/柏/柄/枪/朴', 's', 'a meaning element relating to woods'),
(107, '疒', '疤/病/疮', 's', 'a meaning element relating to sickness'),
(108, '女', '姑/嫁/妈/妹', 's', 'a meaning element relating to female'),
(109, '犭', '狗/猴/狐/狼/猫/狮', 's', 'a meaning element relating to animal'),
(110, '亻', '伯/伴/仆', 's', 'a meaning element relating to people'),
(111, '山', '峰/岛', 's', 'a meaning element relating to mountain'),
(112, '饣', '饱/饿/饭', 's', 'a meaning element relating to eating'),
(113, '石', '碑/矿', 's', 'a meaning element relating to stone'),
(114, '纟', '绑/编/辫', 's', 'a meaning element relating to silk'),
(115, '土', '壁/地/域', 's', 'a meaning element relating to land'),
(116, '忄', '愤/怕/情', 's', 'a meaning element relating to emotion'),
(117, '心', '悲/恶/惑/闷/忘', 's', 'a meaning element relating to emotion'),
(118, '讠', '辩/讲/说/语', 's', 'a meaning element relating to speaking'),
(119, '页', '顶/额/颈', 's', 'a meaning element relating to head'),
(120, '衤', '补/裤/裙', 's', 'a meaning element relating to cloth'),
(121, '雨', '雹/露/霞/雾', 's', 'a meaning element relating to weather'),
(122, '舟', '船/航', 's', 'a meaning element relating to boat'),
(123, '竹', '篇/笼', 's', 'a meaning element relating to bamboo'),
(124, '子', '孩/孤', 's', 'a meaning element relating to child'),
(125, '足', '踩/跑/踢', 's', 'a meaning element relating to foot');

-- --------------------------------------------------------

--
-- Table structure for table `hzw_comp_character`
--

CREATE TABLE IF NOT EXISTS `hzw_comp_character` (
  `comp_id` int(11) NOT NULL DEFAULT '0',
  `comp_shape` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `char_id` int(11) NOT NULL DEFAULT '0',
  `char_shape` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

--
-- Dumping data for table `hzw_comp_character`
--

INSERT INTO `hzw_comp_character` (`comp_id`, `comp_shape`, `char_id`, `char_shape`) VALUES
(1, '广', 1, '庄'),
(2, '广', 1, '庄'),
(2, '广', 2, '庭'),
(2, '广', 3, '库'),
(2, '广', 4, '店'),
(2, '广', 5, '庙'),
(1, '广', 6, '矿'),
(17, '石', 6, '矿'),
(62, '广', 6, '矿'),
(1, '广', 7, '床'),
(1, '广', 8, '旷'),
(62, '广', 8, '旷'),
(19, '手', 9, '看'),
(18, '水', 10, '泪'),
(43, '丁', 11, '盯'),
(5, '月', 20, '肌'),
(69, '几', 20, '肌'),
(5, '月', 21, '肿'),
(5, '月', 22, '胀'),
(39, '长', 22, '胀'),
(5, '月', 23, '胞'),
(27, '包', 23, '胞'),
(5, '月', 24, '膏'),
(54, '高', 24, '膏'),
(6, '日', 25, '旦'),
(6, '日', 26, '旬'),
(6, '日', 27, '旱'),
(52, '干', 27, '旱'),
(6, '日', 28, '晃'),
(6, '日', 29, '晰'),
(7, '口', 30, '叹'),
(7, '口', 31, '吞'),
(7, '口', 32, '唇'),
(7, '口', 33, '唤'),
(7, '口', 34, '喉'),
(8, '口', 35, '扣'),
(19, '手', 35, '扣'),
(8, '口', 36, '叩'),
(8, '口', 37, '右'),
(8, '口', 38, '后'),
(8, '口', 39, '售'),
(9, '月', 40, '明'),
(9, '月', 41, '期'),
(10, '囗', 42, '回'),
(10, '囗', 43, '国'),
(10, '囗', 44, '囚'),
(10, '囗', 45, '围'),
(10, '囗', 46, '圆'),
(11, '廴', 47, '建'),
(11, '廴', 48, '延'),
(11, '廴', 49, '廷'),
(12, '辶', 50, '过'),
(12, '辶', 51, '还'),
(12, '辶', 52, '还'),
(12, '辶', 53, '运'),
(12, '辶', 54, '连'),
(12, '辶', 55, '逐'),
(12, '辶', 56, '追'),
(13, '走', 57, '赶'),
(52, '干', 57, '赶'),
(13, '走', 58, '越'),
(13, '走', 59, '趋'),
(14, '彳', 60, '行'),
(14, '彳', 61, '往'),
(14, '彳', 62, '征'),
(14, '彳', 63, '得'),
(14, '彳', 64, '循'),
(15, '人', 65, '伐'),
(15, '人', 66, '仁'),
(15, '人', 67, '什'),
(15, '人', 68, '保'),
(15, '人', 69, '信'),
(15, '人', 70, '债'),
(16, '土', 71, '寺'),
(16, '土', 72, '里'),
(16, '土', 73, '坐'),
(16, '土', 74, '埋'),
(16, '土', 75, '灶'),
(17, '石', 76, '砖'),
(17, '石', 77, '硬'),
(17, '石', 78, '岩'),
(17, '石', 79, '砂'),
(18, '水', 80, '汗'),
(18, '水', 81, '沐'),
(18, '水', 82, '浴'),
(18, '水', 83, '冰'),
(20, '冫', 83, '冰'),
(20, '冫', 84, '凉'),
(20, '冫', 85, '凄'),
(20, '冫', 86, '冻'),
(19, '手', 87, '打'),
(19, '手', 88, '托'),
(19, '手', 89, '把'),
(21, '巴', 89, '把'),
(19, '手', 90, '搬'),
(1, '广', 91, '广'),
(2, '广', 91, '广'),
(9, '月', 93, '月'),
(13, '走', 94, '走'),
(6, '日', 95, '日'),
(7, '口', 96, '口'),
(15, '人', 97, '人'),
(15, '人', 98, '个'),
(15, '人', 99, '从'),
(15, '人', 100, '众'),
(15, '人', 101, '命'),
(16, '土', 102, '土'),
(17, '石', 103, '石'),
(18, '水', 104, '水'),
(18, '水', 105, '尿'),
(18, '水', 106, '汞'),
(18, '水', 107, '泵'),
(18, '水', 108, '泉'),
(18, '水', 109, '浆'),
(79, '将', 109, '浆'),
(18, '水', 110, '泰'),
(18, '水', 111, '求'),
(18, '水', 112, '黎'),
(19, '手', 113, '手'),
(19, '手', 114, '拿'),
(19, '手', 115, '拳'),
(19, '手', 116, '掌'),
(19, '手', 117, '拜'),
(19, '手', 118, '看'),
(14, '彳', 119, '行'),
(14, '彳', 120, '得'),
(19, '手', 122, '打'),
(19, '手', 123, '把'),
(21, '巴', 123, '把'),
(18, '水', 124, '浆'),
(79, '将', 124, '浆'),
(15, '人', 125, '人'),
(27, '包', 130, '跑'),
(21, '巴', 134, '疤'),
(21, '巴', 135, '爸'),
(26, '邦', 136, '帮'),
(26, '邦', 137, '绑'),
(32, '扁', 139, '编'),
(32, '扁', 140, '遍'),
(33, '辡', 141, '辩'),
(33, '辡', 142, '辫'),
(25, '半', 143, '伴'),
(21, '巴', 145, '吧'),
(21, '巴', 146, '爬'),
(22, '安', 147, '案'),
(22, '安', 148, '按'),
(23, '八', 149, '趴'),
(23, '八', 150, '扒'),
(34, '丙', 151, '病'),
(35, '卜', 152, '补'),
(36, '采', 153, '彩'),
(36, '采', 154, '踩'),
(36, '采', 155, '菜'),
(37, '仓', 157, '舱'),
(38, '昌', 158, '倡'),
(38, '昌', 159, '唱'),
(37, '仓', 160, '疮'),
(37, '仓', 161, '创'),
(35, '卜', 162, '赴'),
(29, '贲', 163, '愤'),
(29, '贲', 164, '喷'),
(30, '比', 165, '批'),
(31, '辟', 166, '劈'),
(28, '卑', 167, '脾'),
(32, '扁', 168, '偏'),
(31, '辟', 169, '僻'),
(32, '扁', 170, '篇'),
(24, '白', 171, '柏'),
(24, '白', 172, '迫'),
(35, '卜', 173, '扑'),
(24, '白', 174, '伯'),
(35, '卜', 175, '仆'),
(35, '卜', 176, '朴'),
(37, '仓', 177, '枪'),
(39, '长', 178, '帐'),
(24, '白', 179, '怕'),
(24, '白', 180, '拍'),
(24, '白', 181, '迫'),
(24, '白', 182, '泊'),
(24, '白', 183, '魄'),
(25, '半', 184, '拌'),
(25, '半', 185, '叛'),
(25, '半', 186, '判'),
(27, '包', 187, '雹'),
(27, '包', 188, '饱'),
(27, '包', 189, '抱'),
(27, '包', 190, '炮'),
(27, '包', 191, '袍'),
(27, '包', 192, '泡'),
(28, '卑', 193, '碑'),
(28, '卑', 194, '牌'),
(30, '比', 195, '毙'),
(31, '辟', 196, '臂'),
(31, '辟', 197, '避'),
(31, '辟', 198, '壁'),
(32, '扁', 199, '骗'),
(33, '辡', 200, '瓣'),
(34, '丙', 201, '柄'),
(36, '采', 202, '睬'),
(37, '仓', 203, '苍'),
(39, '长', 204, '张'),
(33, '辡', 205, '辨');

-- --------------------------------------------------------

--
-- Table structure for table `hzw_comp_sort`
--

CREATE TABLE IF NOT EXISTS `hzw_comp_sort` (
  `c_order` int(11) NOT NULL AUTO_INCREMENT,
  `comp_id` int(11) NOT NULL,
  PRIMARY KEY (`c_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=gbk AUTO_INCREMENT=4 ;

--
-- Dumping data for table `hzw_comp_sort`
--

INSERT INTO `hzw_comp_sort` (`c_order`, `comp_id`) VALUES
(1, 1),
(2, 2),
(3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `hzw_knowledge`
--

CREATE TABLE IF NOT EXISTS `hzw_knowledge` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `video` varchar(255) NOT NULL DEFAULT '',
  `ktext` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=5 ;

--
-- Dumping data for table `hzw_knowledge`
--

INSERT INTO `hzw_knowledge` (`ID`, `title`, `video`, `ktext`) VALUES
(1, '解说1', 'knowledge1.3gp', 'What’s your impression of Chinese characters?	你对汉字的印象是什么样的呢？\r\nAre you used to think pinyin is enough.  Why should I learn Chinese characters? Maybe you ignored that some words have same sound but their meanings are totally different! For example, what’s the meaning of   \r\ntā shì tā  de péng you?  \r\ntā shì tā  Dde péng you\r\ntā shì tā  de péng you\r\ntā shì tā  de péng you（repeat 9 times）\r\nNow, try to read Chinese characters without pinyin!	你是不是觉得只要学拼音就够了呢？\r\n为什么我要学汉字呢？\r\n可能你忽视了一些词汇他们的拼音完全一样，但是意思完全不一样！\r\n比如tā shì tā  de péng you是什么意思呢？\r\n有九种句子！\r\ntā shì tā  Dde péng you\r\ntā shì tā  de péng you\r\ntā shì tā  de péng you（重复九次，语气越来越重）\r\n现在开始，不要依赖拼音！\r\nDid you used to think Chinese characters are pictures that are composed of a lot of curved lines?  However, Chinese characters are not some traffic signs or pictures. Chinese characters’ functions are as same as English alphabet which is to record the language. The difference is that English alphabet won’t have meanings  only if they are combined into a whole word. 	你过去是不是常常认为汉字就是图片或者就是一些弯曲的图片?\r\n然而汉字并不是一些交通标志或者图片。汉字的功能和英语字母的功能一样是去记录语言。不同在于英语字母只有在组合成词语才会表示意思，单个的字母不表示意思。\r\nIn this app, we will classify the Chinese characters into different kinds according to how they are formed. And the order of learning characters is decided by HZW so that you can get access to learn Chinese characters efficiently. Here are also some tests to test yourself! The knowledge part is to broaden your horizon!  	在汉字屋，我们根据汉字的形成过程对汉字进行分类。并且我们对汉字的顺序进行了规定，来帮助你更好的学习汉字。还有一些测试来帮助你检测。小知识可以帮助你了解更多的汉字文化！\r\nNow start to use the app now! We hope we can open the door of the new world for you!	现在开始用我们的app吧！我们希望能够给你打开一个新世界的大门！');

-- --------------------------------------------------------

--
-- Table structure for table `hzw_radical`
--

CREATE TABLE IF NOT EXISTS `hzw_radical` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `radical_shape` varchar(255) DEFAULT NULL,
  `characters` varchar(255) DEFAULT NULL,
  `radical_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `hzw_radical`
--

INSERT INTO `hzw_radical` (`ID`, `radical_shape`, `characters`, `radical_name`) VALUES
(1, '广', '广/庄/庭/库/店/庙/床', '广字旁/learn-to'),
(2, '土', '寺/里/坐/埋/土', '提土旁,土字旁/earth'),
(3, '石', '矿/砖/硬/砂/石', '石字旁/rock'),
(4, '日', '日/旷/旦/旬/旱/晃/晰/明', '日字旁/sun'),
(5, '目', '目/看/盯/眉/眼/瞎/睡/督/睹/睦/瞩', '目字旁/eye'),
(6, '氵', '泪/汗/沐/浴', '三点水/three-dots water'),
(7, '月', '月/肌/肿/胀/胞/膏/期', '月字旁/meat,moon'),
(8, '口', '口/叹/吞/唇/唤/喉', '口字旁/mouth'),
(9, '扌', '扣/打/托/把/搬', '提手旁/(side-)hand'),
(10, '囗', '回/国/囚/围/圆', '囗字框/surround'),
(11, '廴', '建/廷/延', '建字底/march'),
(12, '辶', '过/还/运/连/逐/追', '走之旁/halt'),
(13, '走', '走/赶/越/趋', '走字底/walk'),
(14, '彳', '行/往/征/得/循', '双人旁/step'),
(15, '亻', '伐/仁/什/保/信/债', '单人旁/(side-)man'),
(16, '冫', '冰/凉/凄/冻', '两点水/ice'),
(17, '火', '灶', '火字旁/fire'),
(18, '山', '岩', '山字头/mountain'),
(19, '人', '人/个/从/众/命', '人字头/person'),
(20, '水', '水/汞/泵/泉/浆', '水字底/water'),
(21, '氺', '泰/求/黎', '泰字底/water'),
(22, '尸', '尿', '尸字头/corpse'),
(23, '门', '们/闷/问/闻/阀/阁/阔/阅/闸', '门字框'),
(24, '木', '杨/柳', '木字旁'),
(25, '足', '跑/踢', '足字旁'),
(26, '宀', '安/案', '宝盖头'),
(27, '疒', '病/痛', '病字头'),
(28, '父', '爸/斧', '父子头'),
(29, '巾', '帮', '巾字底'),
(30, '纟', '绑/级', '绞丝旁'),
(31, '饣', '饱/饥/饿', '食字旁'),
(32, '讠', '说/话', '言字旁'),
(33, '爪', '爬', '爪字底'),
(34, '衤', '补/衫', '衣字旁'),
(35, '彡', '衫/彩', '彡字旁'),
(36, '艹', '花/草', '草字头'),
(37, '舟', '船/舱', '舟字旁'),
(38, '刂', '利/列', '利刀旁'),
(39, '忄', '忆/忙', '竖心旁'),
(40, '刀', '劈', '刀字底'),
(41, '⺮', '符/竿', '竹字头'),
(42, '鬼', '魄/魂', '鬼字旁'),
(43, '又', '叛', '又字部'),
(44, '雨', '雹', '雨字头'),
(45, '礻', '祸', '示字旁'),
(46, '心', '患', '心字底'),
(47, '贝', '贱', '贝字旁'),
(48, '片', '牌', '片字部'),
(49, '比', '毙', '比字部'),
(50, '马', '骗', '马字旁'),
(51, '瓜', '瓣', '瓜字部'),
(52, '弓', '张', '弓字旁'),
(53, '辛', '辨', '辛字部');

-- --------------------------------------------------------

--
-- Table structure for table `hzw_relation_similar_radical`
--

CREATE TABLE IF NOT EXISTS `hzw_relation_similar_radical` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `radical_id1` varchar(255) DEFAULT NULL,
  `radical_id2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `hzw_relation_similar_radical`
--

INSERT INTO `hzw_relation_similar_radical` (`ID`, `radical_id1`, `radical_id2`) VALUES
(1, '4', '5'),
(2, '5', '7'),
(3, '4', '8'),
(4, '7', '8'),
(5, '7', '10'),
(6, '14', '15'),
(7, '11', '12'),
(8, '11', '13'),
(9, '12', '13'),
(10, '6', '16'),
(11, '20', '21');

-- --------------------------------------------------------

--
-- Table structure for table `hzw_shape_character`
--

CREATE TABLE IF NOT EXISTS `hzw_shape_character` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CID` int(11) NOT NULL,
  `video` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `hzw_shape_character`
--

INSERT INTO `hzw_shape_character` (`ID`, `CID`, `video`) VALUES
(1, 92, 'pictogram_92.3gp'),
(2, 128, 'pictogram_128.3gp'),
(3, 95, 'pictogram_95.3gp'),
(4, 126, 'pictogram_126.3gp'),
(5, 97, 'pictogram_97.3gp'),
(6, 129, 'pictogram_129.3gp');

-- --------------------------------------------------------

--
-- Table structure for table `hzw_test_component`
--

CREATE TABLE IF NOT EXISTS `hzw_test_component` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `comp_id` int(11) NOT NULL,
  `choice_a` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `choice_b` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `choice_c` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `choice_d` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `correct_ans` char(1) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=gbk AUTO_INCREMENT=6 ;

--
-- Dumping data for table `hzw_test_component`
--

INSERT INTO `hzw_test_component` (`ID`, `comp_id`, `choice_a`, `choice_b`, `choice_c`, `choice_d`, `correct_ans`) VALUES
(1, 1, 'sadfsadf', 'sdfsadfsdf', 'sdfdsfsaf', 'sdafasfsadf', 'a'),
(2, 2, 'asfasf', 'afsdfa', 'sdafsdf', 'sdfsadfsadf', 'b'),
(3, 5, 'sadfsadf', 'sdfsadfsdf', 'sdfdsfsaf', 'sdafasfsadf', 'd');

-- --------------------------------------------------------

--
-- Table structure for table `hzw_test_fill`
--

CREATE TABLE IF NOT EXISTS `hzw_test_fill` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- Dumping data for table `hzw_test_fill`
--

INSERT INTO `hzw_test_fill` (`ID`, `choice1`, `choice2`, `choice3`, `choice4`, `choice5`, `sentence1`, `sentence2`, `sentence3`, `sentence4`, `sentence5`, `correct_order`) VALUES
(2, '元旦', '眼泪', '盯着', '家庭', '清晰', '我看见（）从她脸上流了下来。', '她与（）断绝了关系。', '你的语言应该简单、（）。', '（）是一年的第一天。', '每次我们停下来，每个人都会（）我们。', '24513'),
(3, '哀叹', '庙会', '明天', '圆满', '回信', '（）把她带到我家来。', '如果你（）的话，他就写信。', '他（）道，“现在和过去不一样了。”', '这个持续了60年的爱情故事终于有了（）的结局。', '北京最近有好多（）。', '35142'),
(4, '页眉', '瞎忙', '上旬', '嘴唇', '期望', '我（）见到我的舅舅。', '您拥有带（）和页脚的空白页。', '今年的运动会在十月（）举行。', '我们（）了整整一个上午。', '姑娘用唇膏乱涂了一下（）。', '51324'),
(5, '仓库', '目前', '睡觉', '生日', '围巾', '今年流行那种（）。', '你必须安心于（）的工作。', '（）快乐！', '这些蔬菜贮藏在20摄氏度以下的（）里。', '去（）吧，你看上去困乏极了。', '52413');

-- --------------------------------------------------------

--
-- Table structure for table `hzw_test_hear_choice`
--

CREATE TABLE IF NOT EXISTS `hzw_test_hear_choice` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `correct_choice` char(1) CHARACTER SET utf8 NOT NULL DEFAULT 'A' COMMENT '正确选项',
  `pronunciation` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '听力发音',
  `relation_character_id` int(11) NOT NULL DEFAULT '0' COMMENT '关联字',
  `picture_a` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '四个选项',
  `picture_b` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `picture_c` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `picture_d` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `relation_character_id` (`relation_character_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- Dumping data for table `hzw_test_hear_choice`
--

INSERT INTO `hzw_test_hear_choice` (`ID`, `correct_choice`, `pronunciation`, `relation_character_id`, `picture_a`, `picture_b`, `picture_c`, `picture_d`) VALUES
(1, 'd', 'zhuang1.mp3', 1, '7.jpg', '92.jpg', '13.jpg', '1.jpg'),
(2, 'a', 'ku4.mp3', 3, '3.jpg', '15.jpg', '32.jpg', '23.jpg'),
(3, 'c', 'dan4.mp3', 25, '2.jpg', '10.jpg', '25.jpg', '40.jpg'),
(4, 'a', 'zhuang1.mp3', 1, '1.jpg', '24.jpg', '27.jpg', '29.jpg'),
(5, 'd', 'tun1.mp3', 31, '21.jpg', '43.jpg', '46.jpg', '31.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hzw_test_hear_tof`
--

CREATE TABLE IF NOT EXISTS `hzw_test_hear_tof` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `tof` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否正确，正确为1',
  `relation_character_id` int(11) NOT NULL DEFAULT '0' COMMENT '关联字id',
  `pronunciation` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `picture` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `relation_character_id` (`relation_character_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- Dumping data for table `hzw_test_hear_tof`
--

INSERT INTO `hzw_test_hear_tof` (`ID`, `tof`, `relation_character_id`, `pronunciation`, `picture`) VALUES
(1, b'0', 1, 'zhuang1.mp3', '7.jpg'),
(2, b'1', 12, 'mei2.mp3', '12.jpg'),
(3, b'0', 10, 'lei4.mp3', '25.jpg'),
(4, b'0', 43, 'guo2.mp3', '27.jpg'),
(5, b'0', 2, 'ting2.mp3', '21.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hzw_test_tof`
--

CREATE TABLE IF NOT EXISTS `hzw_test_tof` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `tof` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否正确，正确为1',
  `relation_character_id` int(11) NOT NULL DEFAULT '0' COMMENT '关联字id',
  `picture` varchar(255) NOT NULL DEFAULT '',
  `character_shape` char(4) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `relation_character_id` (`relation_character_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `hzw_test_tof`
--

INSERT INTO `hzw_test_tof` (`ID`, `tof`, `relation_character_id`, `picture`, `character_shape`) VALUES
(1, b'1', 1, '1.jpg', '庄'),
(2, b'0', 5, '32.jpg', '庙'),
(3, b'0', 13, '95.jpg', '眼'),
(4, b'0', 13, '95.jpg', '眼'),
(5, b'1', 30, '30.jpg', '叹'),
(6, b'0', 11, '3.jpg', '盯');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hzw_test_hear_choice`
--
ALTER TABLE `hzw_test_hear_choice`
  ADD CONSTRAINT `hzw_test_hear_choice_ibfk_1` FOREIGN KEY (`relation_character_id`) REFERENCES `hzw_character` (`ID`);

--
-- Constraints for table `hzw_test_hear_tof`
--
ALTER TABLE `hzw_test_hear_tof`
  ADD CONSTRAINT `hzw_test_hear_tof_ibfk_1` FOREIGN KEY (`relation_character_id`) REFERENCES `hzw_character` (`ID`);

--
-- Constraints for table `hzw_test_tof`
--
ALTER TABLE `hzw_test_tof`
  ADD CONSTRAINT `hzw_test_tof_ibfk_1` FOREIGN KEY (`relation_character_id`) REFERENCES `hzw_character` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

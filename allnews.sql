/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : allnews

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-03-13 00:40:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ci_content`
-- ----------------------------
DROP TABLE IF EXISTS `ci_content`;
CREATE TABLE `ci_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dataC` int(10) NOT NULL,
  `dataU` int(10) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `menuId` int(11) DEFAULT NULL,
  `itemId` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `slider` tinyint(1) NOT NULL DEFAULT '0',
  `imgSlider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ci_content
-- ----------------------------
INSERT INTO `ci_content` VALUES ('22', '1489284230', '1489288223', 'britanskim-ministram-zapretili-vyiezjat-za-granitsu', 'Британским министрам запретили выезжать за границу', '<p><img src=\"/img/content/58c44b505c395_1489259344.jpg\" width=\"300\" style=\"float: left;\" height=\"195\">Консервативная партия Великобритании запретила членам кабинета министров отправляться в поездки за границу до запуска процесса Brexit, пишет газета Telegraph.<br><br>По данным издания, по меньшей мере два британских министра получили отказ в разрешении пропустить заседания парламента.<br><br>«Сейчас нет возможности уехать», — цитирует газета одного из министров.<br><br>Как пишет издание, запрет связан с опасениями, что больше ожидаемого число консерваторов выступят против двух поправок, предложенных палатой лордов, что помешает запуску процесса выхода Великобритании из Евросоюза.<br><br>Ранее сообщалось, что премьер-министр Великобритании Тереза Мэй может запустить процесс выхода страны из ЕС в ближайший вторник, 14 марта.<br><br>Во вторник Мэй должна выступить в палате общин парламента с отчетом о прошедшем на этой неделе саммите лидеров ЕС в Брюсселе. Премьер может воспользоваться этим выступлением как возможностью объявить о запуске Brexit.<br><br>Для того чтобы запустить процесс выхода из ЕС, Мэй нужно, чтобы в понедельник соответствующий законопроект одобрила палата общин, а во вторник — палата лордов, ранее принявшая две поправки и отправившая документ снова в нижнюю палату на повторное рассмотрение.<br><br>Также законопроект, чтобы вступить в силу, должен получить одобрение королевы Елизаветы Второй. Британское правительство не сообщает точные сроки запуска процесса Brexit, обещая лишь, что это произойдет до конца марта.</p>', null, '1', '2', null, null, '0', '1', null, null);
INSERT INTO `ci_content` VALUES ('20', '1489284230', '1489288204', 'turtsiya-prekratila-paromnoe-soobschenie-s-kryimom', 'Турция прекратила паромное сообщение с Крымом', '<p><img src=\"/img/content/58c3e1ee12414_1489232366.jpg\" width=\"300\" style=\"float: left;\">Турция прекратила паромное сообщение с Крымом менее чем через полгода после его возобновления, сообщил директор компании-оператора паромной линии «Крымское морское агентство» Станислав Гвоздилов.<br><br>«Из Крыма не принимают паромы, это уже длится две недели», — сказал он РИА Новости.<br><br>По его словам, причин своего решения Анкара не уточняет. При этом Гвоздилов подчеркнул, что приостановка сообщения сделала невозможным поставки продуктов и товаров из Турции на полуостров.<br><br>Между Крымом и Турцией ходили несколько паромов. Сообщение возобновилось в октябре прошлого года — тогда российский паром «Варяг» совершил первый рейс из Севастополя в Зонгулдак</p>', null, '1', '2', null, null, '0', '1', null, null);
INSERT INTO `ci_content` VALUES ('23', '1489286054', '1489288239', 'v-kazahstane-na-vyizov-cherez-uber-priehalo-taksi-s-derevyannyimi-stulyami-vmesto-sideniy-foto', 'В Казахстане на вызов через UBER приехало такси с деревянными стульями вместо сидений (фото)', '<p><img src=\"/img/content/1488889427-1649.jpg\" width=\"300\" style=\"float: left;\">Как сообщает Tengrinews.kz, по словам девушки, машину она вызвала 6 марта через приложение Uber. \"Приехал микроавтобус. Мы с мамой зашли в салон и очень удивились деревянным стульям, которые стояли там, и водитель нам их предложил. Мы начали смеяться. Там реально стояли два деревянных стула (....). Это просто дико. Как пристегиваться, к примеру. А водитель пошутил, что для нас он может еще и стол поставить. Вообще у Uber же есть стандарты и определенные требования к автомобилям, но тут непонятно, это еще и небезопасно. Я торопилась, поэтому и не стала перезаказывать, писать отзыв\", - рассказала девушка.</p>\n<p>Администрация Uber назвала это вопиющим случаем. В пресс-службе Uber сообщили, что уже приняли меры в отношении водителя.</p>', null, '1', '6', null, null, '0', '1', null, null);
INSERT INTO `ci_content` VALUES ('24', '1489286616', '1489288255', 'nevozmojnoe-vozmojno-dokazano-barselonoy', '\"Невозможное возможно\" - доказано \"Барселоной\"', '<p><img src=\"/img/content/684x384_360111.jpg\" width=\"300\" style=\"float: left;\">Уникальный камбек “Барселоны” в Лиге чемпионов стал главной новостью дня и в Испании, и во Франции. В Испании вслед за Мохамедом Али с гордостью могут заявить, что “невозможное – это всего лишь громкое слово”, во Франции – сожалеют, что ПСЖ вновь упустил то, что упустить, казалось, было невозможно. При этом мало кто в обеих странах вспоминает о судейских ошибках, которые несомненно немного помогли “каталонцам” совершить “чудо на “Камп Ноу”. Говорит Луис Энрике:<br><br>“Цель нашей команды – выигрывать все возможные трофеи во всех турнирах. Это значит, что мы должны поддерживать высокий уровень по ходу всего сезона. При этом турниры вроде Лиги чемпионов ошибок не прощают. Да, сегодня нам удалось отыграться. Но если мы сыграем еще один такой плохой матч, как на “Парк-де-Пренс”, соперник нас больше не простит”.<br><br>Главного тренера “Пари Сен-Жермена” Унаи Эмери брали на работу с, по сути, единственной целью – привезти, наконец, в столицу Франции Ушастый трофей. Однако первая попытка испанца оказалась неудачной.<br><br>“Барса” совершила то, что она совершила на своем стадионе и в ключевой момент сезона. Когда такое происходит, объяснений быть не может. Игроки хозяев сделали все что могли в последние минуты и, сделав это, они нас победили. Нам нужно признать, что у нас был шанс вырасти как команда, но мы его упустили”.<br><br>“Барселона” проиграла в первом матче в Париже со счетом 0:4, но на домашнем “Камп Ноу” смогла выиграть 6:1, причем два последних гола были забиты уже в добавленное арбитром время.</p>', null, '1', '4', null, null, '0', '1', null, null);
INSERT INTO `ci_content` VALUES ('25', '1489287032', '1489288265', 'issledovateli-nauchilis-hranit-informatsiyu-v-odnom-atome', 'Исследователи научились хранить информацию в одном атоме', '<p><img src=\"/img/content/1489141344-8146-bityi-na-diskete.jpg\" width=\"300\" style=\"float: left;\">Международная группа физиков-исследователей добилась предельной плотности записи информации в магнитном состоянии вещества — один бит в одном атоме. Это позволит увеличить емкость жестких дисков в тысячи раз.<br>Сейчас один бит в обычных жестких дисках занимает около миллиона атомов. В 2012 году был поставлен предыдущий рекорд — 12 атомов, говорится в исследовании, опубликованом в журнале Nature.<br><br>Это достижение, которое потенциально сможет изменить способ устройства хранения данных в будущем. Отмечается, что в исследовании ученые использовали гольмий, поместив данные на один его атом: данный металл подходит для создания магнита из одного атома, поскольку содержит много неспаренных электронов, создающих сильное магнитное поле. К тому же, они расположены близко к ядру атома, поэтому защищены от внешних воздействий.<br><br>\"Это важная веха. Наконец-то стабильность магнитов была неоспоримо доказана на одном атоме\", — отметил физик из Делфтского технического университета Сандер Отте.<br><br>Как рассчитывают авторы исследования, этот способ записи данных позволит повысить их плотность в тысячи раз.<br><br>Ранее УНИАН сообщал, что американские ученые записали в ДНК наибольшее на сегодняшний день количество данных - 200 мегабайт.</p>', null, '1', '5', null, null, '0', '1', null, null);
INSERT INTO `ci_content` VALUES ('26', '1489318081', '1489318081', 'novyiy-albom-eda-shirana-bt-rekordyi', 'Новый альбом Эда Ширана бьёт рекорды', '<p><img src=\"/img/content/684x384_360299.jpg\" width=\"300\" style=\"float: left;\">Популярный британский певец Эд Ширан на этой неделе сумел побить сразу несколько рекордов. Девять песен из его нового альбома Divide попали в первую десятку национального хит-парада, что случилось впервые в истории поп-музыки. Кроме того, всего за три дня альбом Ширана разошёлся рекордным тиражом 432 тысячи копий.</p>', '8', '1', '11', null, null, '0', '1', null, null);
INSERT INTO `ci_content` VALUES ('27', '1489320387', '1489320387', 'u-zdaniy-dipmissiy-niderlandov-v-turtsii-proshli-manifestatsii-protesta', 'У зданий дипмиссий Нидерландов в Турции прошли манифестации протеста', '<p><img src=\"/img/content/684x384_360298.jpg\" width=\"300\" style=\"float: left;\">Сотни человек собрались на акцию протеста у посольства Нидерландов в Анкаре в субботу вечером. Люди выражали возмущение решением Гааги не допустить проведения встречи турецких министров с гражданами Турции, живущими в Нидерландах. Здание посольства забросали яйцами.<br><br>Среди протестующих был и советник турецкого президента: «Люди собрались здесь в знак протеста против поведения правительства Нидерландов по отношению турецким властям. Такое поведение иррационально, неэтично и не соответствует дипломатическим правилам».<br><br>Аналогичная манифестация прошла и в Стамбуле, возле здания консульства Нидерландов: «Как я могу к этому относиться? Это просто позор для Европы, настоящий позор. Тот момент, когда уровень демократии опустился на самое дно. Неприемлемо, чтобы с министром Турции или любой другой страны обращались подобным образом».<br><br>Посол Нидерландов в Турции находится сейчас в отпуске. Турецкий МИД уже объявил, что его возвращение в страну нежелательно. Дипломатический скандал набирает обороты.</p>', '8', '1', '11', null, null, '0', '1', null, null);

-- ----------------------------
-- Table structure for `ci_items`
-- ----------------------------
DROP TABLE IF EXISTS `ci_items`;
CREATE TABLE `ci_items` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `menuId` int(11) DEFAULT NULL,
  `url` varchar(128) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `static` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ci_items
-- ----------------------------
INSERT INTO `ci_items` VALUES ('1', 'Главная', '1', '/', '0', '1');
INSERT INTO `ci_items` VALUES ('2', 'Политика', '1', 'politika', '2', null);
INSERT INTO `ci_items` VALUES ('3', 'Экономика', '1', 'ekonomika', '3', null);
INSERT INTO `ci_items` VALUES ('4', 'Спорт', '1', 'sport', '4', null);
INSERT INTO `ci_items` VALUES ('5', 'Наука и IT', '1', 'nauka-i-IT', '5', null);
INSERT INTO `ci_items` VALUES ('6', 'Курьёзы', '1', 'kurzyi', '6', null);
INSERT INTO `ci_items` VALUES ('7', 'gjkfdlk', '2', 'gjkfdlk', '7', '1');
INSERT INTO `ci_items` VALUES ('11', 'Мир', '1', 'mir', '1', null);
INSERT INTO `ci_items` VALUES ('9', 'Геническ', '1', 'genichesk', '7', null);

-- ----------------------------
-- Table structure for `ci_menu`
-- ----------------------------
DROP TABLE IF EXISTS `ci_menu`;
CREATE TABLE `ci_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ci_menu
-- ----------------------------
INSERT INTO `ci_menu` VALUES ('1', 'Главное меню');
INSERT INTO `ci_menu` VALUES ('2', 'test');

-- ----------------------------
-- Table structure for `ci_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ci_sessions
-- ----------------------------
INSERT INTO `ci_sessions` VALUES ('vdk3q0i8dsklmjpk1au36jrdna3sg42t', '127.0.0.1', '1489337075', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393333363931393B);
INSERT INTO `ci_sessions` VALUES ('he21lsbg8k06vnn8h3cmufkhpqalle9t', '127.0.0.1', '1489333921', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393333333930303B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('592atbmmou0n3pm5qpedm0k1m6d4m9p4', '127.0.0.1', '1489333900', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393333333930303B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('0lpdsrmiaiuv65h3so04saia0ctgi31e', '127.0.0.1', '1489336919', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393333363931393B);
INSERT INTO `ci_sessions` VALUES ('u31l1k9u9pv35e4tjdgucis59drsuil8', '127.0.0.1', '1489333562', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393333333536323B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('d59o6sgnbtqut8fonptkdt2loavsl61s', '127.0.0.1', '1489330890', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393333303839303B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('16nvbstrhl1j80pir5b7tlvnqe89l4k6', '127.0.0.1', '1489329519', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393332393531393B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('336trhikt9c5ujg6khtdrrhni9o7u5uv', '127.0.0.1', '1489329209', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393332393230393B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('p0vuo8luncas8nrogdmj5ubcj23a11ge', '127.0.0.1', '1489323143', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393332333134333B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('10g3tb7rn2dcpnnolla826ivpr49aruj', '127.0.0.1', '1489322326', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393332323332363B);
INSERT INTO `ci_sessions` VALUES ('3ur3sjalbdvala44f6j7knp4p10kfsf0', '127.0.0.1', '1489322821', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393332323832313B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('pb7idtcndq8vvip7bapnrjkf2n4lu92f', '127.0.0.1', '1489322043', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393332323034333B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('c03saj1t3fnu288cqjbdvbi1456cfnca', '127.0.0.1', '1489321735', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393332313733353B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('8t2j14avd101pe5ueieglftcceik3fps', '127.0.0.1', '1489320508', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393332303530383B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('erdt8ppm9stq0kr0nndjm4uqrfkpeoev', '127.0.0.1', '1489320155', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393332303135353B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('m4u6jf4bgddfhs8c0q4tiokfm2b47pe5', '127.0.0.1', '1489319850', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393331393835303B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('qu97ru5k3clqbdg2tslb0e2pbrjke9em', '127.0.0.1', '1489319537', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393331393533373B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('ls7htrvb1gm5kjm23aqq0pp24aa663m1', '127.0.0.1', '1489319049', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393331393034393B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('eirv0a6nubtcfr92i5jgrn9rfi92s83d', '127.0.0.1', '1489318720', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393331383732303B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('uh72bicc3dbik3q3uod4v1475o8ffcnu', '127.0.0.1', '1489318361', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393331383336313B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('rgg788ldlic0mq202gpumekuqup1r2vl', '127.0.0.1', '1489322326', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393332323332363B);
INSERT INTO `ci_sessions` VALUES ('rnf16ktkt5lb5v1frd7eka4mhbi2iqb7', '127.0.0.1', '1489318037', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393331383033373B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('1sab3aoikg2doku1jgne4s5cksslcu3o', '127.0.0.1', '1489316472', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393331363437323B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('rr6jg7kbvvc4rtgj9ubbkfvb9r6f807m', '127.0.0.1', '1489314750', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393331343735303B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('kehcu8lrsjf8duqqgpp5ql69r3recaed', '127.0.0.1', '1489317357', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393331373335373B);
INSERT INTO `ci_sessions` VALUES ('qi5icptulp5r5qv4q6qpb50r8nfhd8m4', '127.0.0.1', '1489313872', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393331333837323B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('72amcaecfspfcfsp42b6fhn6p8jr7p9k', '127.0.0.1', '1489289188', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393238393136393B);
INSERT INTO `ci_sessions` VALUES ('endg51hq4kbef16efn2sgah51dee2hfk', '127.0.0.1', '1489289019', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393238383939383B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('7fd9vlinck3ea34k005rhf2ih1lftrki', '127.0.0.1', '1489288998', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393238383939383B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('dfg4063s6mpnrlmcr6v1uvliotrm15p4', '127.0.0.1', '1489288634', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393238383633343B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('2meurdmrnl21lrqoqo5umelp2ja15nvl', '127.0.0.1', '1489288154', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393238383135343B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('0nfl4660jqcuehnjtk9vlhv88ipeqht8', '127.0.0.1', '1489287414', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393238373431343B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('hna4r25uc0oaskm028laldbdj7irb8dr', '127.0.0.1', '1489287032', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393238373033323B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('2i1q8877foi2enqcfchuu5391nj37q3e', '127.0.0.1', '1489286616', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393238363631363B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('bk46295itggf15oft50gqka9e06vsp1b', '127.0.0.1', '1489286054', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393238363035343B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('b0h8td7ft22cgo5tjcsfsremdfhdlqu4', '127.0.0.1', '1489285484', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393238353438343B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('m86jhsjerj951o7ncblng8mq18636f4e', '127.0.0.1', '1489285183', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393238353138333B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('iff22u9adff555ns0h3eht4sfr99jo2r', '127.0.0.1', '1489284861', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393238343836313B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('0cggf9lbpfq7jtl6r5mqd6igbesq9ffi', '127.0.0.1', '1489284557', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393238343535373B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('9rere4o5lmmf6sep4osvv8r1fmohcc08', '127.0.0.1', '1489284222', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393238343232323B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('73aojdv7rmah8ni2381hseuvjh6gp9us', '127.0.0.1', '1489283838', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393238333833383B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('nsa09r9m4rn7tjc3k18omkskokf69frh', '127.0.0.1', '1489283313', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393238333331333B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('7vip7ttn2c6rpdpkm1qm3co7172kqll1', '127.0.0.1', '1489278125', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393237383132353B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('lsi0jo4e77lo1bpg4iuio0gcnkul0hj6', '127.0.0.1', '1489277689', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393237373638393B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('t5sorevk0or1suu22t6ktodabi88uu05', '127.0.0.1', '1489277387', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393237373338373B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('u02cid491vovpev73emdevj7pm2d8qjs', '127.0.0.1', '1489276975', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393237363937353B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('ekr3nlsurdnbr50pdocvh6uj8e45ofpc', '127.0.0.1', '1489276650', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393237363635303B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('0u17qfmm9f2c2otlinjspojnjnko7qng', '127.0.0.1', '1489275971', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393237353937313B);
INSERT INTO `ci_sessions` VALUES ('ejkp5fqrkf8sai494akh5i8ve39veb59', '127.0.0.1', '1489276259', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393237363235393B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('pml57h8p6o73eineskj61uog0e6c4phg', '127.0.0.1', '1489275928', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393237353932383B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('33psev406lgv7hi010q2a4p142nm3dga', '127.0.0.1', '1489275525', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393237353532353B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('po7njt2557kil16lbga2k57dsqu0o62p', '127.0.0.1', '1489275183', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393237353138333B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('7sgh8diimormend06hs4e9o2nmsk69du', '127.0.0.1', '1489274874', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393237343837343B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('6b9uua40idr4goqdsbad2ut1v9i4kbf7', '127.0.0.1', '1489274548', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393237343534383B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('ibo7h5004frll8vdd149t47nvs7dksvu', '127.0.0.1', '1489274133', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393237343133333B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('5t0s79np1u306d5h0lt99n0jcr3vrloo', '127.0.0.1', '1489273827', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393237333832373B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('65etqe9hujd0jd877inblv3utc6k96h5', '127.0.0.1', '1489273332', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393237333333323B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('3trdbdrjpfftthkftolo2msdu3ge8t6r', '127.0.0.1', '1489273001', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393237333030313B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('ulf4g8jthkb69va9748erkqb4qr9rhbc', '127.0.0.1', '1489271633', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393237313633333B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('173gfjk3cl1b035tmgarl269mi0lv3h2', '127.0.0.1', '1489271166', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393237313136363B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('qc4p943j9pckb3ikcs086j57t9b8rf76', '127.0.0.1', '1489269055', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393236393035353B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('qondld0fsl1hi92h0c7qg4oo3kg3rm8o', '127.0.0.1', '1489268024', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393236383032343B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('obs4g7ni0q1j7433218uqvvjo9a983l5', '127.0.0.1', '1489267624', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393236373632343B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('2aahus2f8bafc4k2kv8aqj522jfsmcsp', '127.0.0.1', '1489267101', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393236373130313B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('plmtd5n23a70vtk487k45tvdu1o9tlnn', '127.0.0.1', '1489266617', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393236363631373B);
INSERT INTO `ci_sessions` VALUES ('hsk53t6l6h33i12vs07eltk96pt6fhv3', '127.0.0.1', '1489266299', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393236363239393B);
INSERT INTO `ci_sessions` VALUES ('f1cf4ckml87ij7t82fcvtct5d63rl3rb', '127.0.0.1', '1489265996', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393236353939363B);
INSERT INTO `ci_sessions` VALUES ('0t4tvpik8o9fld7c7qk5vsfe5s9nu5lq', '127.0.0.1', '1489265649', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393236353634393B);
INSERT INTO `ci_sessions` VALUES ('0088lgmqfi6lifiibr8nb8fabb7v8k4l', '127.0.0.1', '1489265319', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393236353331393B);
INSERT INTO `ci_sessions` VALUES ('f5hagoen2pmi5rs8g0nov3dt2aj81pcc', '127.0.0.1', '1489264860', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393236343836303B);
INSERT INTO `ci_sessions` VALUES ('d8d6e9bu21buta84uildhiiko6nlbuac', '127.0.0.1', '1489264505', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393236343530353B);
INSERT INTO `ci_sessions` VALUES ('s1qql9ufnpn8rgf5f0ij40a1f1n404di', '127.0.0.1', '1489264094', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393236343039343B);
INSERT INTO `ci_sessions` VALUES ('igf09kh73gkmssnr0f3ohoi7mtihdpul', '127.0.0.1', '1489263683', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393236333638333B);
INSERT INTO `ci_sessions` VALUES ('qidumlukc3j2kj2muc286v07s3f1lhsk', '127.0.0.1', '1489263375', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393236333337353B);
INSERT INTO `ci_sessions` VALUES ('iaueaf5bcljivhkrijmbm9fm08ap43ah', '127.0.0.1', '1489262860', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393236323836303B);
INSERT INTO `ci_sessions` VALUES ('osr0nc82anhmu3po4tmksi5kgei4fv79', '127.0.0.1', '1489262396', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393236323339363B);
INSERT INTO `ci_sessions` VALUES ('hqae6p6rc7ibeclfsja5ub8j5sjq49da', '127.0.0.1', '1489259726', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393235393732363B);
INSERT INTO `ci_sessions` VALUES ('ktr8ko8jl3638bf566ttmb4sikgjikr2', '127.0.0.1', '1489260032', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393236303033323B);
INSERT INTO `ci_sessions` VALUES ('o6aq8mqucqiv8a39nohm1n473tk5rref', '127.0.0.1', '1489260379', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393236303337393B);
INSERT INTO `ci_sessions` VALUES ('or9pukgildmgo00855gl9gd9end608c5', '127.0.0.1', '1489260752', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393236303735323B);
INSERT INTO `ci_sessions` VALUES ('o5mbuh2kui9buhbniuvnj28cscc2atn0', '127.0.0.1', '1489261425', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393236313432353B);
INSERT INTO `ci_sessions` VALUES ('4lr1qe24qkra0sc37q7nt99f900dju3o', '127.0.0.1', '1489261726', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393236313732363B);
INSERT INTO `ci_sessions` VALUES ('qfpjj8p72u53rum1cmsnqrkcn7k95e1t', '127.0.0.1', '1489262038', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438393236323033383B);

-- ----------------------------
-- Table structure for `ci_users`
-- ----------------------------
DROP TABLE IF EXISTS `ci_users`;
CREATE TABLE `ci_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dataC` int(10) DEFAULT NULL,
  `dataU` int(10) DEFAULT NULL,
  `login` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `activate` varchar(128) DEFAULT NULL,
  `role` varchar(128) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '1-если пройдена активация, 2 - если сделана авторизация',
  `onoff` tinyint(1) DEFAULT '0',
  `fname` varchar(128) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `oname` varchar(128) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `ban` tinyint(1) DEFAULT '0',
  `restorpass` varchar(32) DEFAULT NULL,
  `newpass` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ci_users
-- ----------------------------
INSERT INTO `ci_users` VALUES ('8', '1488326714', null, null, 'maxmuc@yandex.ru', '5157b959', null, 'admin', null, '0', null, null, null, null, '0', null, null);

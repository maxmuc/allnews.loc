/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : allnews

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-03-01 23:48:32
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
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `menuId` int(11) DEFAULT NULL,
  `itemId` int(11) DEFAULT NULL,
  `psevdonim` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slider` tinyint(1) NOT NULL DEFAULT '0',
  `imgSlider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ci_content
-- ----------------------------
INSERT INTO `ci_content` VALUES ('9', '1461093490', null, 'Сколько платят депутатам в Европе и в России', '<p>Во что обходятся народные избранники налогоплательщикам? Euronews изучил уровень зарплат депутатов в странах Евросоюза (см. инфографику).</p>\r\n<p><iframe style=\"border: none;\" title=\"MPs salaries vs mean earnings\" src=\"//e.infogr.am/EtN6eKRZf51mExjN?src=embed\" width=\"550\" height=\"3148\" frameborder=\"0\" scrolling=\"no\"></iframe><br /><br />Оказалось, что в ЕС больше всего получают члены парламента в Италии, а меньше всего – в Болгарии.<br /><br />Неплохие заработки у парламентариев в странах Прибалтики, если сравнить со средними доходами населения.<br /><br />Любопытно, что внутри Евросоюза цифры отличаются довольно сильно. Получается, что зарплата итальянского депутата в 10 раз выше, чем у болгарского коллеги.<br /><br />А что с российскими законодателями?<br /><br />Даже с учётом девальвации рубля, зарплаты депутатов Госдумы оказались вдвое выше, чем, например, в Литве. В 2016 году российские парламентарии получают в месяц 383 927 рублей (почти 5 тысяч евро по нынешнему курсу) или без малого 60 тысяч евро в год.<br /><br />Средняя зарплата в России не превышает отметку в 32 тысячи рублей (данные МЭР), соответственно коэффициент зарплаты депутатов и среднего оклада в России составляет 11,9. У европейского чемпиона по этому показателю – Италии – “всего” 5,3.<br />“Панамские документы”: офшоры депутатов Госдумы<br /><br />В “панамских документах” о деятельности офшоров, обнародованных Международным консорциумом журналистов-расследователей (ICIJ), упоминаются и российские чиновники, в частности, депутаты Госдумы.<br /><br />По российским законам, запрещается участие в предпринимательской деятельности. Тем не менее,согласно расследованию, эти ограничения не остановили как минимум трёх депутатов – Виктора Звагельского, Александра Бабакова и Михаила Слипенчука.<br /><br />Журналисты утверждают, что зампредседателя комитета по экономической политике и бывший бизнесмен Виктор Звагельский связан с компанией Bariton Consultants с 2007 года. Сам депутат говорит,что не нарушал закон, и собирается подать в суд на “Новую газету”, журналисты которой участвовали в расследовании.<br /><br />По декларации Александра Бабакова, он – один из самых бедных депутатов Госдумы, однако, по даннымICIJ, его семья владела помимо зарубежных компаний еще и недвижимостью во Франции, в частности домом вблизи Версаля и квартирой у Эйфелевой башни в Париже.<br /><br />Михаил Слипенчук, один из самых богатых депутатов Госдумы, номер 148 в списке богатейших россиян по версии российского Forbes, связан с офшором EuroImpex Group Corp на Сейшелах. Он заверяет, что продал свой пакет в этой компании ещё в 2007 году, хотя журналисты утверждают, что Слипенчук был единственным бенефициаром компании и оставался таковым вплоть до 2015 года.</p>\r\n<p>Источник: http://ru.euronews.com/</p>', null, '1', '2', null, null, null, '1', 'skolko-platyat-deputatam-v-evrope-i-v-rossii', '0', '', null);
INSERT INTO `ci_content` VALUES ('20', '0', null, 'Трамп - ЦРУ. Кто кого?', '<p>Впервые в истории США ЦРУ открыто выступило против новоизбранного президента. Разделаться с Дональдом Трампом решили с помощью компромата, распространяемого в подконтрольных СМИ.<br><br>Как отмечает британская The Daily Мail, ЦРУ напугано желанием Трампа сблизиться с Владимиром Путиным. Газета пишет, что в руководстве ЦРУ есть люди, которые хотели бы сменить непредсказуемого Трампа на вице-президента Майка Пенса, считая того человеком, с которым они могут сработаться.<br><br>Негласным лидером антитрамповского сообщества называют Барака Обаму. Вместо того чтобы удалиться к себе в Чикаго, он обзавелся в Вашингтоне роскошным особняком, чтобы плести в нем заговоры. Финансироваться вся эта деятельность, очевидно, будет из фонда Обамы.<br>БРИТАНСКИЙ АГЕНТ НА СЛУЖБЕ ЦРУ<br><br>ЦРУ не одиноко в борьбе против Трампа. Ему активно помогают британские коллеги из разведслужбы МИ-6.<br><br>По запросу ЦРУ МИ-6 провела сбор компромата на Трампа и сфабриковала историю о том, что он «контролируется» Москвой, якобы подославшей к нему агентов ФСБ под видом девиц легкого поведения. Исполнителем рискованной миссии по «разоблачению связей Трампа с Москвой» был выбран человек, входящий в элиту британских спецслужб.<br><br>Кристофер Стил в 1990-1993 гг. руководил британской разведкой в России, будучи вторым секретарем посольства. Вернувшись на родину, он пошел на повышение, возглавив русский отдел. В 2009 г. Стил ушел в отставку и возглавил частное разведывательное агентство «Орбис», причем тесных связей с МИ-6, ЦРУ и ФБР не утратил. Например, его агентство было подключено к расследованию, которое ФБР проводило в отношении ФИФА, оно привело к отставке Зеппа Блаттера.<br>«ЛИЦЕНЗИЯ» НА КЛИВЕТУ<br><br>Кристофер Стил не раз хвалился, что в российской столице он получает информацию от своих знакомых, бывших сотрудников спецслужб, также занявшихся частными сыском и разведкой. Стил так стремился отработать заплаченные ему 200 тыс. фунтов, что схватил все, что ему слили, без каких-либо документальных подтверждений.<br><br>В результате «рыцари плаща и кинжала» из ЦРУ и МИ-6 могут заполучить серьезные неприятности. Ведь их «информация», скорее всего, является инсинуациями, за которые надо будет отвечать по закону.<br><br>Больше всего достанется ЦРУ, которое дало добро на публикацию бездоказательного компромата на нового президента. Как отметил бывший директор Национальной разведки США и заместитель госсекретаря в администрации Джорджа Буша Джон Негропонте, 35-страничное досье на Трампа является «абсолютным мусором».<br><br>«Ко мне поступали тысячи подобных сообщений, не имевших никакого подтверждения, мы отбрасывали их в сторону, и я говорил, что нет необходимости показывать их президенту», - вспоминает Негропонте.<br><br>Трамп потребовал от Великобритании выдать авторов клеветнического досье, чтобы можно было подать на них в суд. В Лондоне говорят, что сначала МИ-6 всячески пыталась предотвратить огласку в СМИ имени автора досье, а затем предоставила Стилу, его жене и трем детям тайное убежище. Британский премьер-министр Тереза Мэй не может объяснить, почему власти укрывают клеветника.<br><br>Тем временем Трампа начали шантажировать еще одним досье с якобы имеющимся в распоряжении ЦРУ компроматом сексуального характера. Не хотят отставать от спецслужб и американские журналы для взрослых «Хастлер» и «Пентхаус». Они пообещали по миллиону долларов за документальное подтверждение якобы имевших место сексуальных похождений Трампа.<br>ЗАКУСИЛИ УДИЛА<br><br>«Я всегда очень осторожен и напоминаю своим людям, чтобы они соблюдали осторожность, - заявил Дональд Трамп, - ведь видеокамеры могут быть спрятаны где угодно, иначе увидишь себя в вечерних выпусках новостей».<br><br>    «Главы разведведомства, сделавшие ошибку, как и опубликовавшие компромат на меня в СМИ, должны принести извинения», - заявил Трамп.<br><br>Однако до этого пока не дошло.<br><br>ЦРУ принялось искать «русские деньги», якобы перечислявшиеся на избирательную кампанию Трампа. И СМИ, и их партнеры из спецслужб, похоже, закусили удила, понимая, что в этой войне победитель получит все, а доля проигравшего окажется плачевной.<br><br>Понятно, что Трамп никогда не забудет и не простит инициаторов грязной травли.</p>', null, '1', '2', null, null, null, '0', '', '0', null, null);

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ci_items
-- ----------------------------
INSERT INTO `ci_items` VALUES ('1', 'Главная', '1', '/', '0', '1');
INSERT INTO `ci_items` VALUES ('2', 'Политика', '1', 'politika', '1', null);
INSERT INTO `ci_items` VALUES ('3', 'Экономика', '1', 'ekonomika', '2', null);
INSERT INTO `ci_items` VALUES ('4', 'Спорт', '1', 'sport', '3', null);
INSERT INTO `ci_items` VALUES ('5', 'Наука и IT', '1', 'nauka-i-IT', '4', null);
INSERT INTO `ci_items` VALUES ('6', 'Курьёзы', '1', 'kurzyi', '6', null);
INSERT INTO `ci_items` VALUES ('7', 'gjkfdlk', '2', 'gjkfdlk', '7', '1');
INSERT INTO `ci_items` VALUES ('8', 'Общество', '1', 'obschestvo', '5', null);
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
INSERT INTO `ci_sessions` VALUES ('j589uqr7cmncgs3c8pvivvbihuvkkf3s', '127.0.0.1', '1488321927', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383332313932373B);
INSERT INTO `ci_sessions` VALUES ('hri5tkqfoql18u92a8s4dibkp7srujnh', '127.0.0.1', '1488322450', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383332323435303B);
INSERT INTO `ci_sessions` VALUES ('c5kedd74dntas95b79lc4uhn90q6vrj0', '127.0.0.1', '1488322769', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383332323736393B);
INSERT INTO `ci_sessions` VALUES ('6t0ot4k15s435tlln1rduggm6n62vghi', '127.0.0.1', '1488323073', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383332333037333B);
INSERT INTO `ci_sessions` VALUES ('a10pjclh86ga04cl6qeh2mfdvdvihjfh', '127.0.0.1', '1488323387', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383332333338373B);
INSERT INTO `ci_sessions` VALUES ('mihq7im6plb7e60hi9o94unmlm26iant', '127.0.0.1', '1488324606', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383332343630363B);
INSERT INTO `ci_sessions` VALUES ('17mgnofced2800elstjctatr187ohc1s', '127.0.0.1', '1488325339', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383332353333393B);
INSERT INTO `ci_sessions` VALUES ('spsm0l35rddoso5npc6l1289sf8jjnsp', '127.0.0.1', '1488325656', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383332353635363B);
INSERT INTO `ci_sessions` VALUES ('n3q8ruk7iolfhbratik55rrj5dr55l2e', '127.0.0.1', '1488326006', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383332363030363B);
INSERT INTO `ci_sessions` VALUES ('jkmba3ed34av0d8j6gc5a14ic27viuj3', '127.0.0.1', '1488326358', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383332363335383B);
INSERT INTO `ci_sessions` VALUES ('ks7von695ke4n5l3o1m3efrlgp7s7hqs', '127.0.0.1', '1488326696', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383332363639363B);
INSERT INTO `ci_sessions` VALUES ('jvmo16smtgrmmn4150joi74mfrsmaboc', '127.0.0.1', '1488327249', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383332373234393B);
INSERT INTO `ci_sessions` VALUES ('q8p349t6sjui1etstau4bccjnep08jd8', '127.0.0.1', '1488327559', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383332373535393B);
INSERT INTO `ci_sessions` VALUES ('c904r8a2nde5ur84jct2t14m49o0bq4e', '127.0.0.1', '1488327559', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383332373535393B);
INSERT INTO `ci_sessions` VALUES ('bdj8drea25dt30kor11tupl76kucikde', '127.0.0.1', '1488352387', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383335323131383B);
INSERT INTO `ci_sessions` VALUES ('jmbpueonkcesjddivqkdnf0u6d34q7tq', '127.0.0.1', '1488352671', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383335323434393B);
INSERT INTO `ci_sessions` VALUES ('fn5toa4ktnitcqrtdh3t9ldtrp6s49f6', '127.0.0.1', '1488353279', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383335333031383B);
INSERT INTO `ci_sessions` VALUES ('v64tl4f8tfceohuiqtpt6q5sp4cpe5cm', '127.0.0.1', '1488353637', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383335333337373B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('qgktg57u8vlg2oaefrovfrvppl2d1qs5', '127.0.0.1', '1488353881', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383335333736323B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('a5biabs3vmfpughijm6btj46dtuui1du', '127.0.0.1', '1488356825', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383335363832353B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('e4agki454naula36rrjc1a67q09dm806', '127.0.0.1', '1488357469', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383335373138343B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('50g2ktl7n2901klboos2ooku59oca0km', '127.0.0.1', '1488357693', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383335373438373B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('reg17e4nb231duik58jml80u92d96an7', '127.0.0.1', '1488358683', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383335383638333B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('fchta6otj7ppftp6tr4c9qp5fs9t11mc', '127.0.0.1', '1488359201', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383335393033393B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('8q49reeu8lmanvsbtf3luf8haehtq942', '127.0.0.1', '1488359630', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383335393430323B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('blg3937mmbrst1030g0cfkul2po1nrat', '127.0.0.1', '1488361721', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383336313432313B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('vs7eutoil8itqihq65i4or690uljme1m', '127.0.0.1', '1488361760', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383336313735313B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('d4a98li47u3em1g8i56db2ptiggu89k2', '127.0.0.1', '1488366166', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383336363038323B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('pvh5qs36pqmvvmb8gi1d72mvlvqd0qmn', '127.0.0.1', '1488366801', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383336363532373B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('f201k588017sggf8hlfedb1hfbgkaclg', '127.0.0.1', '1488367112', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383336363835303B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('kmcfu62jc2o96op842ed7f50u9v0kfog', '127.0.0.1', '1488367430', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383336373135373B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('l8onp00ala5dj7t4jj97p7loarlg4tcl', '127.0.0.1', '1488367766', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383336373532313B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('s3eilkjim6e88ji39h5gjhldui9g41ha', '127.0.0.1', '1488368957', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383336383636393B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('uqehcacp5lsle9q1g4ccol193r8b141p', '127.0.0.1', '1488369040', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383336383937363B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('s7if2psqq06mv1gvss7tlmfu34128e15', '127.0.0.1', '1488371506', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383337313530343B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('g46msdrcfodo28oj7876se96ia5dang1', '127.0.0.1', '1488375154', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383337343936363B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('04kug3v2ruj9umiv0a6s2omrfd9ojnv7', '127.0.0.1', '1488375314', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383337353238323B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('4d2kq0m9b34qe1kjlt1l7dgvlm086mrg', '127.0.0.1', '1488375731', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383337353630333B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('ji94447lkboou8a2e0isq3hb9jt2vbq7', '127.0.0.1', '1488376123', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383337363033363B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('rcmq5o4ankau42e9s9lgnph92v1rn5i2', '127.0.0.1', '1488376717', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383337363432343B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('oj916h05orrt257c03uo8mo3m2k39c3k', '127.0.0.1', '1488377030', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383337363733343B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('o3bshl75vf7dkob4ifhd3a7esi6hq1g0', '127.0.0.1', '1488377035', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383337373033353B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('6214qfs0e0d7cb49srfstsi9kuhikr0p', '127.0.0.1', '1488378465', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383337383333353B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('pnctnvub7pfumrs5s9uov8nmr4qho0hv', '127.0.0.1', '1488378884', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383337383636323B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('nofq9n7rr75in9leoli3h2g7qkvesg1k', '127.0.0.1', '1488379915', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383337393632343B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('558b1q0uphidsdc0069buue7man64eb9', '127.0.0.1', '1488391278', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383339313237383B);
INSERT INTO `ci_sessions` VALUES ('h1mt8jhub4kto30d2bg254g48lepfe3l', '127.0.0.1', '1488391582', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383339313538323B);
INSERT INTO `ci_sessions` VALUES ('kma5jjj95a9q1amqpevgo6p4mkobl4cp', '127.0.0.1', '1488391998', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383339313939383B);
INSERT INTO `ci_sessions` VALUES ('8l3677qumb7rv3mcvo33re2c4kc55ebb', '127.0.0.1', '1488396053', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383339363035333B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('38pug435bqekskj1r2hkhv4002929b76', '127.0.0.1', '1488392299', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383339323239343B);
INSERT INTO `ci_sessions` VALUES ('qrff7pbqomrthjlv9nnp9vhmgrqnu8c2', '127.0.0.1', '1488396160', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383339363035333B757349647C733A313A2238223B);
INSERT INTO `ci_sessions` VALUES ('keum1bn8b6lpcts5j0u42qnbrj5s594u', '127.0.0.1', '1488404547', 0x5F5F63695F6C6173745F726567656E65726174657C693A313438383430343531313B);

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

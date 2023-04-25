-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2022 at 04:33 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `genshinwiki`
--

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `NAME` varchar(18) NOT NULL PRIMARY KEY,
  `VISION` varchar(7) DEFAULT NULL,
  `RARITY` varchar(6) DEFAULT NULL,
  `WEAPON TYPE` varchar(8) DEFAULT NULL,
  `AFFILIATION` varchar(28) DEFAULT NULL,
  `SPECIALITY DISH` varchar(38) DEFAULT NULL,
  `GENDER` varchar(6) DEFAULT NULL,
  `DESCRIPTION` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`NAME`, `VISION`, `RARITY`, `WEAPON TYPE`, `AFFILIATION`, `SPECIALITY DISH`, `GENDER`, `DESCRIPTION`) VALUES
('Albedo', 'Geo', '5 Star', 'Sword', 'Knights of Favonious', 'Woodland Dream', 'Male', 'A genius known as the Kreideprinz, he is the Chief Alchemist and Captain of the Investigation Team of the Knights of Favonius.'),
('Aloy', 'Cryo', '6 Star', 'Bow', 'Wandering Heroine', 'Sateity Gel', 'Female', 'Formerly an outcast, now a hunter of unparalleled skill. Ready to do the right thing at any time.'),
('Amber', 'Pyro', '4 Star', 'Bow', 'Knights of Favonious', 'Outrider\'s Chanpion Steak', 'Female', 'Always energetic and full of life, Amber\'s the best — albeit only — Outrider of the Knights of Favonius.'),
('Arataki Itto', 'Geo', '5 Star', 'Claymore', 'Arataki Gang', 'Way of the Strong', 'Male', 'The first and greatest head of the Arataki Gang, famed throughout Inazuma City\'s Hanamizaka... Wait, what? You\'ve never heard of them? Are you trying to be funny here?'),
('Barbara', 'Hydro', '4 Star', 'Catalyst', 'Church of Favonius', 'Spicy Stew', 'Female', 'Every citizen of Mondstadt adores Barbara. She learned the word \\\"idol\\\" from a magazine.'),
('Beidou', 'Electro', '4 Star', 'Claymore', 'The Crux', 'Flash-Fried Fillet', 'Female', 'Captain of her crew, The Crux. She\'s quite an unbound and forthright woman.'),
('Bennett', 'Pyro', '4 Star', 'Sword', 'Adventurers\' Guild', 'Teyvat Charred Egg', 'Male', 'A good-natured adventurer from Mondstadt who\'s unfortunately extremely unlucky.'),
('Candace', 'Hydro', '4 Star', 'Polearm', 'Aaru Village', 'Utmost Care', 'Female', 'A descendant of King Deshret with an amber left eye. The defender of Aaru Village.'),
('Chongyun', 'Cryo', '4 Star', 'Claymore', 'Tianheng Thaumaturges', 'Cold Noodles with Mountain Delicacies', 'Male', 'A young exorcist from a family of exorcists. He does everything he can to suppress his abundance of yang energy.'),
('Collei', 'Dendro', '4 Star', 'Bow', 'Avidya Forest Ranger Trainee', 'Yearning', 'Female', 'A trainee ranger active in Avidya Forest. Behind her enthusiastic words and actions hides a slightly introverted personality.'),
('Cyno', 'Electro', '5 Star', 'Polearm', 'Temple of Silence', 'Duel Soul', 'Male', 'The General Mahamatra in charge of supervising the researchers of the Akademiya. It is said that when he gets down to work, the General Mahamatra is even more efficient than the \\\"Great Vayuvyastra\\\" made by the Kshahrewar.'),
('Diluc', 'Pyro', '5 Star', 'Claymore', 'Dawn Winery', 'Once Upon a Time in Mondstadt', 'Male', 'The tycoon of a winery empire in Mondstadt, unmatched in every possible way.'),
('Diona', 'Cryo', '4 Star', 'Bow', 'The Cat\'s Tail', 'Definitely Not Bar Food!', 'Female', 'A young lady who has inherited trace amounts of non-human blood. She is the incredibly popular bartender of the Cat\'s Tail tavern.'),
('Dori', 'Electro', '4 Star', 'Claymore', 'The Palace of Alcazarzaray', 'Show Me the Mora', 'Female', 'An elusive merchant who has a fondness for glittering Mora.'),
('Eula', 'Cryo', '5 Star', 'Claymore', 'Knights of Favonius', 'Stormcrest Pie', 'Female', 'The Spindrift Knight, a scion of the old aristocracy, and the Captain of the Knights of Favonius Reconnaissance Company. The reason for which a descendant of the ancient nobles might join the Knights remains a great mystery in Mondstadt to this very day.'),
('Fischl', 'Electro', '4 Star', 'Bow', 'Adventurers\' Guild', 'Die Heiilige Sinfonie', 'Female', 'A mysterious girl who calls herself \\\"Prinzessin der Verurteilung\\\" and travels with a night raven named Oz.'),
('Ganyu', 'Cryo', '5 Star', 'Bow', 'Yuehai Pavilion', 'Prosperous Peace', 'Female', 'The secretary at Yuehai Pavilion. The blood of the qilin, an illuminated beast, flows within her veins.'),
('Gorou', 'Geo', '4 Star', 'Bow', 'Watatsumi Island', 'Victorious Legend', 'Male', 'The great general of Watatsumi Island\'s forces. He is deeply trusted by his subordinates.'),
('Hu Tao', 'Pyro', '5 Star', 'Polearm', 'Wangsheng Funeral Parlor', 'Ghostly March', 'Female', 'The 77th Director of the Wangsheng Funeral Parlor. She took over the business at a rather young age.'),
('Jean', 'Anemo', '5 Star', 'Sword', 'Knights of Favonius', 'Invigorating Pizza', 'Female', 'The righteous and rigorous Dandelion Knight, and Acting Grand Master of Mondstadt\'s Knights of Favonius.'),
('Kaedahara Kazuha', 'Anemo', '5 Star', 'Sword', 'The Crux', 'All-Weather Beauty', 'Male', 'A wandering samurai from Inazuma who is currently with Liyue\'s Crux Fleet. A gentle and carefree soul whose heart hides a great many burdens from the past.'),
('Kaeya', 'Cryo', '4 Star', 'Sword', 'Knights of Favonius', 'Fruity Skewers', 'Male', 'An accomplished swordsman and a strategic thinker in the Knights of Favonius, rumored to hail from beyond Mondstadt.'),
('Kamisato Ayaka', 'Cryo', '5 Star', 'Sword', 'Yashiro Commission', 'Snow on the Hearth', 'Female', 'Daughter of the Yashiro Commission\'s Kamisato Clan. Dignified and elegant, as well as wise and strong.'),
('Kamisato Ayato', 'Hydro', '5 Star', 'Sword', 'Yashiro Commission', 'Quiet Elegance', 'Male', 'The young but highly accomplished head of the Yashiro Commission\'s Kamisato Clan. Cultured and polite, he is a man of many ways and means.'),
('Keqing', 'Electro', '5 Star', 'Sword', 'Liyue Qixing', 'Survival Grilled Fish', 'Female', 'The Yuheng of the Liyue Qixing. Keqing has much to say about Rex Lapis\'s unilateral approach to policymaking in Liyue — but in truth, gods admire skeptics such as her quite a lot.'),
('Klee', 'Pyro', '5 Star', 'Catalyst', 'Knights of Favonius', 'Fish-Flavoured Toast', 'Female', 'An explosives expert and a regular at the Knights of Favonius\'s confinement room. Also known as Fleeing Sunlight.'),
('Kujou Sara', 'Electro', '4 Star', 'Bow', 'Tenryou Commission', 'Faith Eternal', 'Female', 'A general of the Tenryou Commission. Bold, decisive, and skilled in battle.'),
('Kuki Shinobu', 'Electro', '4 Star', 'Sword', 'Arataki Gang', 'Omurice Waltz', 'Female', 'The capable and reliable deputy leader of the \\\"Arataki Gang.\\\" Please note: capable and reliable are not appellations for the \\\"Arataki Gang,\\\" but for their deputy leader in specific.'),
('Lisa', 'Electro', '4 Star', 'Catalyst', 'Knights of Favonius', 'Mysterious Bolognese', 'Female', 'The languid but knowledgeable Librarian of the Knights of Favonius, deemed by Sumeru Academia to be their most distinguished graduate in the past two centuries.'),
('Mona', 'Hydro', '5 Star', 'Catalyst', 'Mondstadt', 'Der Weisheit Letzter Schluss (Life)', 'Female', 'A mysterious young astrologer who proclaims herself to be \"Astrologist Mona Megistus,\" and who possesses abilities to match the title. Erudite, but prideful.'),
('Nilou', 'Hydro', '5 Star', 'Sword', 'Zubayr Theater', 'Swirling Steps', 'Female', '\"What\'s so great about that little theater? If she went with me on tour all around Teyvat, she could earn so much Mora, more than what she could ever dream of... Alas, she\'s too innocent. So innocent that she knows nothing of her own worth.\" — Dori'),
('Ninguang', 'Geo', '4 Star', 'Catalyst', 'Liyue Qixing', 'Qiankun Mora Meat', 'Female', 'The Tianquan of the Liyue Qixing. Her wealth is unsurpassed in all of Teyvat.'),
('Noelle', 'Geo', '4 Star', 'Claymore', 'Knights of Favonius', 'Lighter-Than-Air Pancake', 'Female', 'A maid who faithfully serves the Knights of Favonius. She dreams of joining their ranks someday.'),
('Qiqi', 'Cryo', '5 Star', 'Sword', 'Bubu Pharmacy', 'No Tomorrow', 'Female', 'An apprentice and herb gatherer at Bubu Pharmacy. An undead with a bone-white complexion, she seldom has much in the way of words or emotion.'),
('Raiden Shogun', 'Electro', '5 Star', 'Polearm', 'Inazuma City', '', 'Female', 'Her Excellency, the Almighty Narukami Ogosho, who promised the people of Inazuma an unchanging Eternity.'),
('Razor', 'Electro', '4 Star', 'Claymore', 'Wolvendom', 'Puppy-Paw Hash Brown', 'Male', 'A boy who lives among the wolves in Wolvendom of Mondstadt, away from human civilization. As agile as lightning.'),
('Rosaria', 'Cryo', '4 Star', 'Polearm', 'Church of Favonius', 'Dinner of Judgement', 'Female', 'A sister of the church, though you wouldn\'t know it if it weren\'t for her attire. Known for her sharp, cold words and manner, she often works alone.'),
('Sangonomiya Kokomi', 'Hydro', '5 Star', 'Catalyst', 'Watatsumi Island', 'A Stunning Stratagem', 'Female', 'The Divine Priestess of Watatsumi Island. All of the island\'s affairs are at this young lady\'s fingertips.'),
('Sayu', 'Anemo', '4 Star', 'Claymore', 'Shuumatsuban', 'Dizziness-Be-Gone no Jutsu Version 2.0', 'Female', 'A pint-sized ninja attached to the Shuumatsuban, who always seems sleep-deprived.'),
('Shenhe', 'Cryo', '5 Star', 'Polearm', 'Cloud Retainer\'s Abode', 'Heartstring Noodles', 'Female', 'An adepti disciple with a most unusual air about her. Having spent much time cultivating in isolation in Liyue\'s mountains, she has become every bit as cool and distant as the adepti themselves.'),
('Shikanoin Heizou', 'Anemo', '4 Star', 'Catalyst', 'Tenryou Commission', 'The Only Truth', 'Male', 'A young prodigy detective from the Tenryou Commission. His senses are sharp and his thoughts are clear.'),
('Sucrose', 'Anemo', '4 Star', 'Catalyst', 'Knights of Favonius', 'Nutritious Meal (V. 593)', 'Female', 'An alchemist filled with curiosity about all things. She researches bio-alchemy.'),
('Tartaglia', 'Hydro', '5 Star', 'Bow', 'Fatui', 'A Prize Catch', 'Male', 'No. 11 of The Harbingers, also known as \\\"Childe.\\\" His name is highly feared on the battlefield.'),
('Thoma', 'Pyro', '4 Star', 'Polearm', 'Yashiro Commission', '\"Warmth\"', 'Male', 'The Kamisato Clan\'s housekeeper. A well-known \\\"fixer\\\" in Inazuma.'),
('Tighnari', 'Dendro', '5 Star', 'Bow', 'Gandharva Ville', 'Forest Watcher\'s Choice', 'Male', 'A young researcher well-versed in botany who currently serves as a Forest Watcher in Avidya Forest. He is a straight shooter with a warm heart — and a dab hand at guiding even the dullest of pupils.'),
('Traveler(A)', 'Anemo', '5 Star', 'Sword', '', '', 'Male', 'A traveler from another world who had their only kin taken away, forcing them to embark on a journey to find The Seven.'),
('Traveler(G)', 'Geo', '5 Star', 'Sword', '', '', 'Male', 'A traveler from another world who had their only kin taken away, forcing them to embark on a journey to find The Seven.'),
('Traveler(E)', 'Electro', '5 Star', 'Sword', '', '', 'Male', 'A traveler from another world who had their only kin taken away, forcing them to embark on a journey to find The Seven.'),
('Traveler(D)', 'Dendro', '5 Star', 'Sword', '', '', 'Male', 'A traveler from another world who had their only kin taken away, forcing them to embark on a journey to find The Seven.'),
('Venti', 'Anemo', '5 Star', 'Bow', 'Mondstadt', 'A Buoyant Breeze', 'Male', 'One of the many bards of Mondstadt, who freely wanders the city\'s streets and alleys.'),
('Xiangling', 'Pyro', '4 Star', 'Polearm', 'Wanmin Restaurant', 'Wanmin Restaurant\'s Boiled Fish', 'Female', 'A renowned chef from Liyue. She\'s extremely passionate about cooking and excels at making her signature hot and spicy dishes.'),
('Xiao', 'Anemo', '5 Star', 'Polearm', 'Liyue Adeptus', '\"Sweet Dream\"', 'Male', 'A yaksha adeptus who defends Liyue. Also heralded as the \"Conqueror of Demons\" and \"Vigilant Yaksha.\"'),
('Xingqiu', 'Hydro', '4 Star', 'Sword', 'Feiyun Commerce Guild', 'All-Delicacy Parcels', 'Male', 'A young man carrying a longsword who is frequently seen at book booths. He has a chivalrous heart and yearns for justice and fairness for all.'),
('Xinyan', 'Pyro', '4 Star', 'Claymore', '\"The Red Strings\"', 'Rockin\' Riffin\' Chicken!', 'Female', 'Liyue\'s sole rock \'n\' roll musician. She rebels against ossified prejudices using her music and passionate singing.'),
('Yae Miko', 'Electro', '5 Star', 'Catalyst', 'Grand Narukami Shrine', 'Fukuuchi Udon', 'Female', 'Lady Guuji of the Grand Narukami Shrine. Also serves as the editor-in-chief of Yae Publishing House. Unimaginable intelligence and cunning are hidden under her beautiful appearance'),
('Yanfei', 'Pyro', '4 Star', 'Catalyst', 'Yanfei Legal Consultancy', '\"My Way\"', 'Female', 'A well-known legal adviser active in Liyue Harbor. A brilliant young lady in whose veins runs the blood of an illuminated beast.'),
('Yelan', 'Hydro', '5 Star', 'Bow', 'Yanshang Teahouse', 'Dew-Dipped Shrimp', 'Female', 'A mysterious person who claims to work for the Ministry of Civil Affairs, but is a \"non-entity\" on the Ministry of Civil Affairs\' list'),
('Yoimiya', 'Pyro', '5 Star', 'Bow', 'Naganohara Fireworks', 'Summer Festival Fish', 'Female', 'Owner of Naganohara Fireworks. Known as \"Queen of the Summer Festival,\" she excels in her craft of creating fireworks that symbolize people\'s hopes and dreams.'),
('Yun Jin', 'Geo', '4 Star', 'Polearm', 'Yun-Han Opera Troupe', 'Cloud Shrouded Jade', 'Female', 'A renowned Liyue opera singer who is skilled in both playwriting and singing. Her style is one-of-a-kind, exquisite and delicate, much like the person herself.'),
('Zhongli', 'Geo', '5 Star', 'Polearm', 'Liyue Harbor', 'Slow-Cooked Bamboo Shoot Soup', 'Male', 'A mysterious expert contracted by the Wangsheng Funeral Parlor. Extremely knowledgeable in all things.');

-- --------------------------------------------------------

--
-- Table structure for table `character_ascension_materials`
--

CREATE TABLE `character_ascension_materials` (
  `NAME` varchar(18) DEFAULT NULL,
  `ITEMS` varchar(20) DEFAULT NULL,
  `GEM` varchar(18) DEFAULT NULL,
  `DROPS` varchar(27) DEFAULT NULL,
  `BOSS_DROP` varchar(25) DEFAULT NULL,
  FOREIGN KEY (NAME) REFERENCES characters(NAME)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `character_ascension_materials`
--

INSERT INTO `character_ascension_materials` (`NAME`, `ITEMS`, `GEM`, `DROPS`, `BOSS_DROP`) VALUES
('Albedo', 'Cecilia', 'Prithvia Topaz', 'Divining Scroll', 'Basalt Pillar'),
('Aloy', 'Crystal Marrow', 'Shivada Jade', 'Spectral Husk', 'Crystalline Bloom'),
('Amber', 'Small Lamp Grass', 'Agnidus Agate', 'Firm Arrowhead', 'Everflame Seed'),
('Arataki Itto', 'Onikabuto', 'Prithvia Topaz', 'Slime Condensate', 'Riftborn Regalia'),
('Barbara', 'Philanemo Mushroom', 'Varunada Lazurite', 'Divining Scroll', 'Cleansing Heart'),
('Beidou', 'Noctilious Jade', 'Vajrada Amethyst', 'Treasure Hoarder\'s Insignia', 'Lightning Prism'),
('Bennett', 'Windwheel Aster', 'Agnidus Agate', 'Treasure Hoarder\'s Insignia', 'Everflame Seed'),
('Candace', 'Redcrest', 'Varunada Lazurite', 'Faded Red Stain', 'Light Guiding Tetrahedron'),
('Chongyun', 'Cor Lapis', 'Shivada Jade', 'Damaged Mask', 'Hoarfrost Core'),
('Collei', 'Rukkhashava Mushroom', 'Nagadus Emerald', 'Firm Arrowhead', 'Majestic Hooked Beak'),
('Cyno', 'Scarab', 'Vajrada Amethyst', 'Divining Scroll', 'Thunderclap Fruit'),
('Diluc', 'Small Lamp Grass', 'Agnidus Agate', 'Recruit\'s Insignia', 'Everflame Seed'),
('Diona', 'Calla Lily', 'Shivada Jade', 'Firm Arrowhead', 'Hoarfrost Core'),
('Dori', 'Kalpalata Lotus', 'Vajrada Amethyst', 'Faded Red Stain', 'Thunderclap Fruit'),
('Eula', 'Dandelion Seed', 'Shivada Jade', 'Damaged Mask', 'Crystalline Bloom'),
('Fischl', 'Small Lamp Grass', 'Vajrada Amethyst', 'Firm Arrowhead', 'Lightning Prism'),
('Ganyu', 'Qingxin', 'Shivada Jade', 'Whopperflower Nectar', 'Hoarfrost Core'),
('Gorou', 'Sango Pearl', 'Prithvia Topaz', 'Spectral Husk', 'Perpetual Heart'),
('Hu Tao', 'Silk Flower', 'Agnidus Agate', 'Whopperflower Nectar', 'Juvenlie Jade'),
('Jean', 'Dandelion Seed', 'Vayuda Turquoise', 'Damaged Mask', 'Hurricane Seed'),
('Kaedahara Kazuha', 'Sea Ganoderma', 'Vayuda Turquoise', 'Treasure Hoarder\'s Insignia', 'Marionette Core'),
('Kaeya', 'Calla Lily', 'Shivada Jade', 'Treasure Hoarder\'s Insignia', 'Hoarfrost Core'),
('Kamisato Ayaka', 'Sakura Bloom', 'Shivada Jade', 'Old Handguard', 'Perpetual Heart'),
('Kamisato Ayato', 'Sakura Bloom', 'Varunada Lazurite', 'Old Handguard', 'Dew of Repudiation'),
('Keqing', 'Cor Lapis', 'Vajrada Amethyst', 'Whopperflower Nectar', 'Lightning Prism'),
('Klee', 'Philanemo Mushroom', 'Agnidus Agate', 'Divining Scroll', 'Everflame Seed'),
('Kujou Sara', 'Dendrobium', 'Vajrada Amethyst', 'Damaged Mask', 'Storm Beads'),
('Kuki Shinobu', 'Naku Weed', 'Vajrada Amethyst', 'Spectral Husk', 'Runic Fang'),
('Lisa', 'Valberry', 'Vajrada Amethyst', 'Slime Condensate', 'Lightning Prism'),
('Mona', 'Philanemo Mushroom', 'Varunada Lazurite', 'Whopperflower Nectar', 'Cleansing Heart'),
('Nilou', 'Padisarah', 'Varunada Lazurite', 'Fungal Spores', 'Perpetual Caliber'),
('Ninguang', 'Glaze Lily', 'Prithvia Topaz', 'Recruit\'s Insignia', 'Basalt Pillar'),
('Noelle', 'Valberry', 'Prithvia Topaz', 'Damaged Mask', 'Basalt Pillar'),
('Qiqi', 'Violetgrass', 'Shivada Jade', 'Divining Scroll', 'Hoarfrost Core'),
('Raiden Shogun', 'Amakumo Fruit', 'Vajrada Amethyst', 'Old Handguard', 'Storm Beads'),
('Razor', 'Wolfhook', 'Vajrada Amethyst', 'Damaged Mask', 'Lightning Prism'),
('Rosaria', 'Valberry', 'Shivada Jade', 'Recruit\'s Insignia', 'Hoarfrost Core'),
('Sangonomiya Kokomi', 'Sango Pearl', 'Varunada Lazurite', 'Spectral Husk', 'Dew of Repudiation'),
('Sayu', 'Crystal Marrow', 'Vayuda Turquoise', 'Whopperflower Nectar', 'Marionette Core'),
('Shenhe', 'Qingxin', 'Shivada Jade', 'Whopperflower Nectar', 'Dragonheir\'s False Fin'),
('Shikanoin Heizou', 'Onikabuto', 'Vayuda Turquoise', 'Treasure Hoarder\'s Insignia', 'Runic Fang'),
('Sucrose', 'Windwheel Aster', 'Vayuda Turquoise', 'Whopperflower Nectar', 'Hurricane Seed'),
('Tartaglia', 'Starconch', 'Varunada Lazurite', 'Recruit\'s Insignia', 'Cleansing Heart'),
('Thoma', 'Fluorescent Fungus', 'Agnidus Agate', 'Treasure Hoarder\'s Insignia', 'Smoldering Pearl'),
('Tighnari', 'Nilotpala Lotus', 'Nagadus Emerald', 'Fungal Spores', 'Majestic Hooked Beak'),
('Traveler(A)', 'Windwheel Aster', 'Brilliant Diamond ', 'Damaged Mask', ''),
('Traveler(G)', 'Windwheel Aster', 'Brilliant Diamond ', 'Damaged Mask', ''),
('Traveler(E)', 'Windwheel Aster', 'Brilliant Diamond ', 'Damaged Mask', ''),
('Traveler(D)', 'Windwheel Aster', 'Brilliant Diamond ', 'Damaged Mask', ''),
('Venti', 'Cecilia', 'Vayuda Turquoise', 'Slime Condensate', 'Hurricane Seed'),
('Xiangling', 'Jueyun Chili', 'Agnidus Agate', 'Slime Condensate', 'Everflame Seed'),
('Xiao', 'Qingxin', 'Vayuda Turquoise', 'Slime Condensate', 'Juvenile Jade'),
('Xingqiu', 'Silk Flower', 'Varunada Lazurite', 'Damaged Mask', 'Cleansing Heart'),
('Xinyan', 'Violetgrass', 'Agnidus Agate', 'Treasure Hoarder\'s Insignia', 'Everflame Seed'),
('Yae Miko', 'Sea Ganoderma', 'Vajrada Amethyst', 'Old Handguard', 'Dragonheir\'s False Fin'),
('Yanfei', 'Noctilious Jade', 'Agnidus Agate', 'Treasure Hoarder\'s Insignia', 'Juvenile Jade'),
('Yelan', 'Starconch', 'Varunada Lazurite', 'Recruit\'s Insignia', 'Runic Fang'),
('Yoimiya', 'Naku Weed', 'Agnidus Agate', 'Divining Scroll', 'Smoldering Pearl'),
('Yun Jin', 'Glaze Lily', 'Prithvia Topaz', 'Damaged Mask', 'Riftborn Regalia'),
('Zhongli', 'Cor Lapis', 'Prithvia Topaz', 'Slime Condensate', 'Basalt Pillar');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `Char_name` varchar(18) NOT NULL,
  `Talent_name1` varchar(25) DEFAULT NULL,
  `Talent_name2` varchar(25) DEFAULT NULL,
  `Talent_name3` varchar(28) NOT NULL PRIMARY KEY,
  `English VA` varchar(57) DEFAULT NULL,
  `Chinese VA` varchar(49) DEFAULT NULL,
  `Japanese VA` varchar(58) DEFAULT NULL,
  `Koean VA` varchar(61) DEFAULT NULL,
  FOREIGN KEY (Char_name) REFERENCES characters(NAME)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`Char_name`, `Talent_name1`, `Talent_name2`, `Talent_name3`, `English VA`, `Chinese VA`, `Japanese VA`, `Koean VA`, `Idle animation1`, `Idle animation2`) VALUES
('Albedo', 'Favonius Baldework', 'Abiogenesis', 'Rite of Progeniture', 'Khoi Dao', 'Mace', 'Nojima Kenji (野島 健児)', 'Kim Myung-jun (김명준)', '', ''),
('Aloy', 'Rapid Fire', 'Frozen Wilds', 'Prophecies of Dawn', 'Giselle Fernandez', 'Mufei (沐霏)', 'Takagaki Ayahi (高垣 彩陽)', 'Jo Hyeon-jeong (조현정)', '', ''),
('Amber', 'Sharpshooter', 'Explosive Puppet', 'Fiery Rain', 'Kelly Baskin[8]', 'Cai Shujin (蔡书瑾)[9] (Version 1.4 onwards)', 'Iwami Manaka (石見舞菜香)[8]', 'Kim Yeon-woo (김연우)[10]', '', ''),
('Arataki Itto', 'Fight Club', 'Masatsu Zetsugi', 'Royal Descent', 'Max Mittelman[11]', 'Liu Zhaokun (刘照坤)[12]', 'Nishikawa Takanori (西川貴教)[11]', 'Song Joon-seok (송준석)[13]', '', ''),
('Barbara', 'Whisper of Water', 'Let the Show Begin', 'Shining Miracle', 'Laura Stahl[14]', 'Song Yuanyuan (宋媛媛)[15]', 'Kitou Akari (鬼頭明里)[14]', 'Yun Ah-yeong (윤아영)[16]', '', ''),
('Beidou', 'Oceanborne', 'Tidecaller', 'Stormbreaker', 'Allegra Clark[17]', 'Tang Yajing (唐雅菁)[18]', 'Koshimizu Ami (小清水亜美)[17]', 'Jeong Yoo-mi (정유미)[19]', '', ''),
('Bennett', 'Strike of Fortune', 'Passion Overload', 'Fantastic Voyage', 'Cristina Vee Valenzuela[20]', 'Mu Xueting (穆雪婷)[21]', 'Ryōta Ōsaka (逢坂 良太)[20]', 'Song Ha-rim (송하림)[22]', '', ''),
('Candace', 'Gleaming Spear', 'Heron\'s Sanctum', 'Wagtail\'s Tide', 'Shara Kirby[23]', 'Zhang Qi (张琦)[23]', 'Yuzuki Ryoka (柚木 涼香)[24]', 'Jeon Yeongsu (전영수)[25]', '', ''),
('Chongyun', 'Demonbane', 'Chongua\'s Layered Frost', 'Cloud-Parting Star', 'Beau Bridgland[26]', 'kinsen[27]', 'Saito Soma (斉藤壮馬)[26]', 'Yang Jeong-hwa (양정화)[28]', '', ''),
('Collei', 'Supplicant\'s Bowmanship', 'Floral Brush', 'Trump-Card Kitty', 'Christina Costello[29]', 'Qin Wenjing (秦文静)[30]', 'Maekawa Ryoko (前川 涼子)[31]', 'Bang Siu (방시우)[32]', '', ''),
('Cyno', 'Invoker\'s Spear', 'Chasmic Soulfarer', 'Wolf\'s Swiftness', 'Alejandro Saab[33]', 'Li Qingyang (李轻扬)[34]', 'Irino Miyu (入野 自由)[33]', 'Lee Woo-ri (이우리)[35]', '', ''),
('Diluc', 'Tempered Sword', 'Searing Onslaught', 'Dawn', 'Sean Chiplock[36]', 'Ma Yang (马洋)[37]', 'Ono Kensho (小野賢章)[36]', 'Choi Seung-hoon (최승훈)[38]', '', ''),
('Diona', 'Katzlein Style', 'Icy Paws', 'Signature Mix', 'Dina Sherman[39]', 'Nuoya (诺亚)[40]', 'Izawa Shiori (井澤詩織)[39]', 'Woo Jeong-sin (우정신)[41]', '', ''),
('Dori', 'Marvelous Sword Dance', 'Troubleshooter Canon', 'Alcazarzaray\'s Exactitude', 'Anjali Kunapaneni', 'Wang Xiaotong (王晓彤)[42]', 'Kaneda Tomoko (金田朋子)[43]', 'Lee Myeong-ho (이명호)[44]', '', ''),
('Eula', 'Favonius Baldework-Edel', 'Icetide Vortex', 'Glacial Illumination', 'Suzie Yeung[45]', 'Ziyin (子音)[46]', 'Satou Rina (佐藤 利奈)[47]', 'Kim Hyeon-ji (김현지)[48]', '', ''),
('Fischl', 'Bolts of Downfall', 'Nightrider', 'Midnight Phantasmagoria', 'Brittany Cox[49]\nOz: Ben Pronsky[50]', 'Mace[51]\nOz: Zhao Yuecheng (赵悦程)[52]', 'Uchida Maaya (内田真礼)[49]\nOz: Masutani Yasunori (増谷康紀)[50]', 'Park Go-woon (박고운)[53]\nOz: Lee Hyun (이현)[54]', '', ''),
('Ganyu', 'Liutian Archery', 'Trail of the Qilin', 'Celestial Shower', 'Jennifer Losi[55]', 'Lin Su (林簌)[56]', 'Ueda Reina (上田 麗奈)[55]', 'Kim Sun-hye (김선혜)[57]', '', ''),
('Gorou', 'Ripping Fang Fetching', 'Inuzaka All-Round Defense', 'Juuga', 'Cory Yee[58]', 'Yang Xinran (杨昕燃)[59]', 'Hatanaka Tasuku (畠中 祐)[58]', 'Lee Sae-byeok (이새벽)[60]', '', ''),
('Hu Tao', 'Secret Spear of Wangsheng', 'Guide to Afterlife', 'Spirit Soother', 'Brianna Knickerbocker[61]', 'Tao Dian (陶典)[62]', 'Takahashi Rie (高橋李依)[61]', 'Kim Ha-ru (김하루)[63]', '', ''),
('Jean', 'Favonius Bladework', 'Gale Blade', 'Dandelion Breeze', 'Stephanie Southerland[64]', 'Lin Su (林簌)[65]', 'Chiwa Saitou (斎藤 千和)[64]', 'Ahn Young-mi (안영미)[66]', '', ''),
('Kaedahara Kazuha', 'Garyuu Bladework', 'Chihayaburu', 'Kazuha Slash', 'Mark Whitten[67]', 'Banma (斑马)[68]', 'Nobunaga Shimazaki (島崎 信長)[67]', 'Kim Shin-woo (김신우)[69]', '', ''),
('Kaeya', 'Ceremonial Bladework', 'Frostgnaw', 'Glaciall Waltz', 'Josey Montana McCoy[70]', 'Sun Ye (孙晔)[71]', 'Kousuke Toriumi (鳥海 浩輔)[70]', 'Jeong Joo-won (정주원)[72]', '', ''),
('Kamisato Ayaka', 'Kabuki', 'Hyouka', 'Soumetsu', 'Erica Mendez[73]', 'Xiao N (小N)[74]', 'Saori Hayami (早見 沙織)[75]', 'Lee Yu-ri (이유리)[76]', '', ''),
('Kamisato Ayato', 'Marobashi', 'Kyouka', 'Suiyuu', 'Chris Hackney[77]', 'Zhao Lu (赵路)[78]', 'Akira Ishida (石田 彰)[77]', 'Jang Min-hyeok (장민혁)[79]', '', ''),
('Keqing', 'Yunlai Swordmanship', 'Stellar Restoration', 'Starward Sword', 'Kayli Mills[80]', 'Xie Ying (谢莹)[81]', 'Eri Kitamura (喜多村 英梨)[80]', 'Lee Bo-hee (이보희)[82]', '', ''),
('Klee', 'Kaboom!', 'Jumpty Dumpty', 'Sparks \'n\' Splash', 'Poonam Basu[83]', 'Hualing (花玲)[84]', 'Kuno Misaki (久野美咲)[83]', 'Bang Yeon-ji (방연지)[85]', '', ''),
('Kujou Sara', 'Tengu Bowmanship', 'Tengu Stormcall', 'Koukou Sendou', 'Jeannie Tirado[86]', 'Yang Menglu (杨梦露)[87]', 'Seto Asami (瀬戸麻沙美)[88]', 'Mun Ji-yeong (문지영)[89]', '', ''),
('Kuki Shinobu', 'Shinobu\'s Shadowsword', 'Sanctifying Ring', 'Gyoei Narukami Kariyama Rite', 'Kira Buckland[90]', 'Yang Ning (杨凝)[91]', 'Kaori Mizuhashi (水橋 かおり)[92]', 'Kim Yool (김율)[93]', '', ''),
('Lisa', 'Lightning Touch', 'Violet Arc', 'Lightning Rose', 'Mara Junot[94]', 'Zhong Ke (钟可)[95]', 'Tanaka Rie (田中理恵)[94]', 'Park Go-woon (박고운)[96]', '', ''),
('Mona', 'Ripple of Fate', 'Mirror Reflection of Doom', 'Stellaris Phantasm', 'Felecia Angelle[97]', 'Chen Tingting (陈婷婷)[98]', 'Konomi Kohara (小原 好美)[97]', 'Woo Jeong-sin (우정신)[99]', '', ''),
('Nilou', 'Dance of Samser', 'Dance of Haftkarsvar', 'Dance of Absendegi', 'Dani Chambers[100]', 'Zisu Jiuyue (紫苏九月)[101]', 'Kanemoto Hisako (金元寿子)[100]', 'Chae Rim (채림)[102]', '', ''),
('Ninguang', 'Sparkling Scatter', 'Jade Screen', 'Starshatter', 'Erin Ebers[103]', 'Du Mingya (杜冥鸦)[104]', 'Sayaka Ohara (大原 さやか)[103]', 'Gwak Gyu-mi (곽규미)[105]', '', ''),
('Noelle', 'Favonius Baldework-Maid', 'Breastplate', 'Sweeping Time', 'Laura Faye Smith[106]', 'Yanning (宴宁)[107]', 'Kanon Takao (高尾 奏音)[106]', 'Lee Bo-hee (이보희)[108]', '', ''),
('Qiqi', 'Ancient Sword Art', 'Herald of Frost', 'Preserver of Fortune', 'Christie Cate[109]', 'Yanning (宴宁)[110]', 'Yukari Tamura (田村 ゆかり)[109]', 'Lee Seul (이슬)[111]', '', ''),
('Raiden Shogun', 'Origin', 'Baleful Omen', 'Musou Shinetsu', 'Anne Yatco[112]', 'Juhuahua (菊花花)[113]', 'Miyuki Sawashiro (沢城 みゆき)[114]', 'Park Ji-yoon (박지윤)[115]', '', ''),
('Razor', 'Steel Fang', 'Claw and Thunder', 'Lightning Fang', 'Todd Haberkorn[116]', 'Zhou Shuai (周帅)[117]', 'Kouki Uchiyama (内山 昂輝)[116]', 'Kim Seo-yeong (김서영)[118]', '', ''),
('Rosaria', 'Spear of the Church', 'Ravaging Confession', 'Rites of termination', 'Elizabeth Maxwell[119]', 'Zhang Anqi (张安琪)[120]', 'Ai Kakuma (加隈 亜衣)[121]', 'Kim Bo-na (김보나)[122]', '', ''),
('Sangonomiya Kokomi', 'The shape of the Water', 'Kurage\'s Oath', 'Nereid\'s Ascension', 'Risa Mei[123]', 'Guiniang (龟娘)[124]', 'Suzuko Mimori (三森 すずこ)[125]', 'Yeo Yun-mi (여윤미)[126]', '', ''),
('Sayu', 'Shuumatsuban Ninja Blade', 'Fuuin Dash', 'Mujina Furry', 'Lilypichu (Lily Ki)[127]', 'Sakula小舞[128]', 'Suzaki Aya (洲崎綾)[129]', 'Lee Ji-hyeon (이지현)[130]', '', ''),
('Shenhe', 'Dawnstar Piercer', 'Spring Spirit Summoning', 'Divine Maiden\'s Deliverance', 'Chelsea Kwoka[131]', 'Qin Ziyi (秦紫翼)[132]', 'Kawasumi Ayako (川澄綾子)[133]', 'Lee Hyun-jin (이현진)[134]', '', ''),
('Shikanoin Heizou', 'Fudou Style Martial Arts', 'Heartstopper Strike', 'Windmuster Kick', 'Kieran Regan[135]', 'Lin Jing (林景)[136]', 'Yuuichi Iguchi (井口 祐一)[135]', 'Jeong-Ui-jin (정의진)[137]', '', ''),
('Sucrose', 'Wind Spirit Creation', 'Astable Anemohypostasis', 'Forbidden Creation', 'Valeria Rodriguez[138]', 'Xiaogan (小敢)[139]', 'Fujita Akane (藤田茜)[138]', 'Kim Ha-yeong (김하영)[140]', '', ''),
('Tartaglia', 'Cutting Torment', 'Foul Legacy', 'Obliteration', 'Griffin Burns[141]', 'Yudong (鱼冻)[142]', 'Kimura Ryohei (木村良平)[141]', 'Nam Doh-hyeong (남도형)[143]', '', ''),
('Thoma', 'Swiftshatter Spear', 'Blazing Blessing', 'Crimson Ooyoroi', 'Christian Banas[144]', 'Zhang Pei (张沛)[145]', 'Morita Masakazu (森田成一)[146]', 'Ryu Seung-gon (류승곤)[147]', '', ''),
('Tighnari', 'Khanda Barrier-Buster', 'Vijnana-Phala Mine', 'Fashioner\'s Tanglevine Shaft', 'Elliot Gindi[29]', 'Moran (莫然)[148]', 'Kobayashi Sanae (小林 沙苗)[149]', 'Jung Ui-taek (정의택)[150]', '', ''),
('Traveler(A)', 'Foreign Ironwind', 'Palm Vortex', 'Gust Surge', 'Aether: Zach Aguilar[151]\nLumine: Sarah Miller-Crews[151]', 'Aether: Luyin (鹿喑)[152]\nLumine: Yanning (宴宁)[152]', 'Aether: Horie Shun (堀江瞬)[151]\nLumine: Yuuki Aoi (悠木碧)[151]', 'Aether: Lee Kyung-tae (이경태)[153]\nLumine: Lee Sae-a (이새아)[153]', '', ''),
('Traveler(G)', 'Foreign Rockblade', 'Starfell Sword', 'Wake of Earth', 'Aether: Zach Aguilar[151]\nLumine: Sarah Miller-Crews[151]', 'Aether: Luyin (鹿喑)[152]\nLumine: Yanning (宴宁)[152]', 'Aether: Horie Shun (堀江瞬)[151]\nLumine: Yuuki Aoi (悠木碧)[151]', 'Aether: Lee Kyung-tae (이경태)[153]\nLumine: Lee Sae-a (이새아)[153]', '', ''),
('Traveler(E)', 'Foreign Thundershock', 'Lightning Blade', 'Bellowing Thunder', 'Aether: Zach Aguilar[151]\nLumine: Sarah Miller-Crews[151]', 'Aether: Luyin (鹿喑)[152]\nLumine: Yanning (宴宁)[152]', 'Aether: Horie Shun (堀江瞬)[151]\nLumine: Yuuki Aoi (悠木碧)[151]', 'Aether: Lee Kyung-tae (이경태)[153]\nLumine: Lee Sae-a (이새아)[153]', '', ''),
('Traveler(D)', 'Foreign Fieldcleaver', 'Razorgrass Blade', 'Surgent Manifestation', 'Aether: Zach Aguilar[151]\nLumine: Sarah Miller-Crews[151]', 'Aether: Luyin (鹿喑)[152]\nLumine: Yanning (宴宁)[152]', 'Aether: Horie Shun (堀江瞬)[151]\nLumine: Yuuki Aoi (悠木碧)[151]', 'Aether: Lee Kyung-tae (이경태)[153]\nLumine: Lee Sae-a (이새아)[153]', '', ''),
('Venti', 'Divine Marksmanship', 'Skyward Sonnet', 'Wind\'s Grand Ode', 'Erika Harlacher-Stone[154]', 'Miaojiang (喵酱)[155]', 'Ayumu Murase (村瀬 歩)[154]', 'Jung Yoo-jung (정유정)[156]', '', ''),
('Xiangling', 'Dough-Fu', 'Gouba Attack', 'Pyronado', 'Jackie Lastra[157]', 'Xiao N (小N)[158]', 'Ozawa Ari (小澤亜李)[157]', 'Yun A-yeong (윤아영)[159]', '', ''),
('Xiao', 'Whirlwind Thrust', 'Lemniscatic Wind Cycling', 'Bane of All Evil', 'Laila Berzins[160]', 'kinsen[161]', 'Yoshitsugu Matsuoka (松岡 禎丞)[160]', 'Sim Kyu-hyuk (심규혁)[162]', '', ''),
('Xingqiu', 'Guhua Style', 'Fatal Rainscreen', 'Raincutter', 'Cristina Vee Valenzuela[163]', 'Tang Yajing (唐雅菁)[164]', 'Junko Minagawa (皆川 純子)[163]', 'Gwak Gyu-mi (곽규미)[165]', '', ''),
('Xinyan', 'Dance on Fire', 'Sweeping Fervor', 'Riff Revolution', 'Laura Stahl[166]', 'Wang Yaxin (王雅欣)[167]', 'Takahashi Chiaki (たかはし智秋)[166]', 'Kim Chae-ha (김채하)[168]', '', ''),
('Yae Miko', 'Spirit Sin-Eater', 'Sesshou Sakura', 'Tenko Kenshin', 'Ratana[169]', 'Du Mingya (杜冥鸦)[170]', 'Sakura Ayane (佐倉綾音)[171]', 'Moon Yoo-jeong (문유정)[172]', '', ''),
('Yanfei', 'Seal of Approval', 'Signed Edict', 'Done Deal', 'Lizzie Freeman[173]', 'Su Ziwu (苏子芜)[174]', 'Hanamori Yumiri (花守 ゆみり)[175]', 'Cho Kyung-yi (조경이)[176]', '', ''),
('Yelan', 'Stealthy Bowshot', 'Lingering Lifeline', 'Depth-Clarion Dice', 'Laura Post[177]', 'Xu Hui (徐慧)[178]', 'Endou Aya (遠藤 綾)[177]', 'Min-a (민아)[179]', '', ''),
('Yoimiya', 'Firework Flare-Up', 'Niwabi Fire-Dance', 'Ryuukin Saxifrage', 'Jenny Yokobori[180]', 'Jin Na (金娜)[181]', 'Kana Ueda (植田 佳奈)[182]', 'Bak Sin-hee (박신희)[183]', '', ''),
('Yun Jin', 'Cloud-Grazing Strike', 'Opening Flourish', 'Cliffbreaker\'s Banner', 'Judy Alice Lee[184]\nYang Yang (杨扬)', 'He Wenxiao (贺文潇)[185]\nYang Yang (杨扬)', 'Koiwai Kotori (小岩井ことり)[186]\nYang Yang (杨扬)', 'Sa Mun-yeong (사문영)[187]\nYang Yang (杨扬)', '', ''),
('Zhongli', 'Rain of Stone', 'Dominus Lapidis', 'Planet Befall', 'Keith Silverstein[188]', 'Peng Bo (彭博)[189]', 'Maeno Tomoaki (前野智昭)[188]', 'Pyo Yeong-jae (표영재)[190]', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `NAME` varchar(9) NOT NULL PRIMARY KEY,
  `ELEMENT` varchar(7) DEFAULT NULL,
  `WINGS` varchar(22) DEFAULT NULL,
  `ARCHON` varchar(20) DEFAULT NULL,
  `AFFILIATION_GROUP1` varchar(19) DEFAULT NULL,
  `AFFILIATION_GROUP2` varchar(19) DEFAULT NULL,
  `AFFILIATION_GROUP3` varchar(18) DEFAULT NULL,
  `AFFILIATION_GROUP4` varchar(24) DEFAULT NULL,
  `AFFILIATION_GROUP5` varchar(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`NAME`, `ELEMENT`, `WINGS`, `ARCHON`, `AFFILIATION_GROUP1`, `AFFILIATION_GROUP2`, `AFFILIATION_GROUP3`, `AFFILIATION_GROUP4`, `AFFILIATION_GROUP5`) VALUES
('Mondstadt', 'Anemo', 'Wings of Azure Wind', 'Barbatos', 'Knights of Favonius', 'Church of Favonious', 'Adventurer\'s Guild', 'Dawn Winery', 'The Cat\'s Tail'),
('Liyue', 'Geo', 'Wings of Golden Flight', 'Rex Lapis', 'Liyue Qixing', 'Liyue Adeptus', 'The Crux', 'Wangsheng Funeral Parlor', 'Feiyun Commerce Guild'),
('Inazuma ', 'Electro', 'Wings of Stormrider', 'Raiden Shogun', 'Tenryou Commission', 'Yashiro Commission', 'Arataki Gang', 'Watatsumi Island', 'Grand Narukami Shrine'),
('Snezhnaya', 'Cryo', '', 'Tsaritsa', 'The Fatui', '', '', '', ''),
('Sumeru', 'Dendro', 'Wings of the Forest', 'Lesser Lord Kusanali', 'Temple of Silence', 'Zubayr Theatre', 'Gandharva Ville', 'Academiya', ''),
('Fontaine', 'Hydro', '', '', '', '', '', '', ''),
('Natlan', 'Pyro', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE `relations` (
  `Char_name` varchar(14) NOT NULL,
  `Relative_name` varchar(14) DEFAULT NULL,
  `Relation_type` varchar(16) DEFAULT NULL,
  FOREIGN KEY (Char_name) REFERENCES characters(NAME)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `relations`
--

INSERT INTO `relations` (`Char_name`, `Relative_name`, `Relation_type`) VALUES
('Barbara', 'Jean ', 'Siblings'),
('Chongyun', 'Shenhe ', 'Aunt-Nephew'),
('Diluc', 'Kaeya', 'Adopted Siblings'),
('Diona', 'Draff', 'Father-daughter'),
('Kamisato Ayaka', 'Kamisato Ayato', 'Siblings'),
('Klee', 'Albedo ', 'Adopted Siblings'),
('Kujou Sara', 'Takayuki', 'Father-daughter'),
('Tartaglia', 'Tuecer', 'Siblings'),
('Xiangling', 'Chef Mao', 'Father-daughter'),
('Yoimiya', 'Ryunnosuke', 'Father-daughter');

-- --------------------------------------------------------

--
-- Table structure for table `talents`
--

CREATE TABLE `talents` (
  `Domain` varchar(20) NOT NULL PRIMARY KEY,
  `Char_name` varchar(18) DEFAULT NULL,
  `Items` varchar(27) DEFAULT NULL,
  `Books` varchar(11) DEFAULT NULL,
  `Weekly_boss` varchar(10) DEFAULT NULL,
  `Boss_drop` varchar(28) DEFAULT NULL,
  `Talent_name1` varchar(25) DEFAULT NULL,
  `Talent_name2` varchar(25) DEFAULT NULL,
  `Talent_name3` varchar(28) DEFAULT NULL,
  FOREIGN KEY (Char_name) REFERENCES characters(NAME)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `talents`
--

INSERT INTO `talents` (`Domain`, `Char_name`, `Items`, `Books`, `Weekly_boss`, `Boss_drop`, `Talent_name1`, `Talent_name2`, `Talent_name3`) VALUES
('Foresaken Rift', 'Albedo', 'Divining Scroll', 'Ballad', 'Childe', 'Tusk of Monoceros Caeli', 'Favonius Baldework', 'Abiogenesis', 'Rite of Progeniture'),
('Foresaken Rift', 'Aloy', 'Spectral Husk', 'Freedom', 'La Signora', 'Molten Moment', 'Rapid Fire', 'Frozen Wilds', 'Prophecies of Dawn'),
('Foresaken Rift', 'Amber', 'Firm Arrowhead', 'Freedom', 'Dvalin', 'Dvalin\'s Sigh', 'Sharpshooter', 'Explosive Puppet', 'Fiery Rain'),
('Violet Court', 'Arataki Itto', 'Slime Condensate', 'Elegance', 'La Signora', 'Ashen Heart', 'Fight Club', 'Masatsu Zetsugi', 'Royal Descent'),
('Foresaken Rift', 'Barbara', 'Divining Scroll', 'Freedom', 'Andrius', 'Ring of Boreas', 'Whisper of Water', 'Let the Show Begin', 'Shining Miracle'),
('Taishan Mansion', 'Beidou', 'Treasure Hoarder\'s Insignia', 'Gold', 'Dvalin', 'Dvalin\'s Sigh', 'Oceanborne', 'Tidecaller', 'Stormbreaker'),
('Foresaken Rift', 'Bennett', 'Treasure Hoarder\'s Insignia', 'Resistance', 'Dvalin', 'Dvalin\'s Plume', 'Strike of Fortune', 'Passion Overload', 'Fantastic Voyage'),
('Steeple of Ignorance', 'Candace', 'Faded Red Stain', 'Admonition', 'Mikoto', 'Tears of the Calamitous God', 'Gleaming Spear', 'Heron\'s Sanctum', 'Wagtail\'s Tide'),
('Taishan Mansion', 'Chongyun', 'Damaged Mask', 'Diligence', 'Dvalin', 'Dvalin\'s Sigh', 'Demonbane', 'Chongua\'s Layered Frost', 'Cloud-Parting Star'),
('Dvalin\'s Plume', 'Collei', 'Firm Arrowhead', 'Praxis', 'Mikoto', 'Tears of the Calamitous God', 'Supplicant\'s Bowmanship', 'Floral Brush', 'Trump-Card Kitty'),
('Dvalin\'s Plume', 'Cyno', 'Divining Scroll', 'Admonition', 'Mikoto', 'Mudra of the Malefic General', 'Invoker\'s Spear', 'Chasmic Soulfarer', 'Wolf\'s Swiftness'),
('Foresaken Rift', 'Diluc', 'Recruit\'s Insignia', 'Resistance', 'Dvalin', 'Dvalin\'s Plume', 'Tempered Sword', 'Searing Onslaught', 'Dawn'),
('Foresaken Rift', 'Diona', 'Firm Arrowhead', 'Freedom', 'Childe', 'Shard of a Foul Legacy', 'Katzlein Style', 'Icy Paws', 'Signature Mix'),
('Dvalin\'s Plume', 'Dori', 'Faded Red Stain', 'Ingenuity', 'Azdaha', 'Bloodjade Branch', 'Marvelous Sword Dance', 'Troubleshooter Canon', 'Alcazarzaray\'s Exactitude'),
('Foresaken Rift', 'Eula', 'Damaged Mask', 'Resistance', 'Azdaha', 'Dragon Lord\'s Crown', 'Favonius Baldework-Edel', 'Icetide Vortex', 'Glacial Illumination'),
('Foresaken Rift', 'Fischl', 'Firm Arrowhead', 'Ballad', 'Andrius', 'Spirit Locket of Boreas', 'Bolts of Downfall', 'Nightrider', 'Midnight Phantasmagoria'),
('Taishan Mansion', 'Ganyu', 'Whopperflower Nectar', 'Diligence', 'Childe', 'Shadow of the Warrior', 'Liutian Archery', 'Trail of the Qilin', 'Celestial Shower'),
('Violet Court', 'Gorou', 'Spectral Husk', 'Light', 'La Signora', 'Molten Moment', 'Ripping Fang Fetching', 'Inuzaka All-Round Defense', 'Juuga'),
('Taishan Mansion', 'Hu Tao', 'Whopperflower Nectar', 'Diligence', 'Childe', 'Shard of a Foul Legacy', 'Secret Spear of Wangsheng', 'Guide to Afterlife', 'Spirit Soother'),
('Foresaken Rift', 'Jean', 'Damaged Mask', 'Resistance', 'Dvalin', 'Dvalin\'s Plume', 'Favonius Bladework', 'Gale Blade', 'Dandelion Breeze'),
('Taishan Mansion', 'Kaedahara Kazuha', 'Treasure Hoarder\'s Insignia', 'Diligence', 'Azdaha', 'Gilded Scale', 'Garyuu Bladework', 'Chihayaburu', 'Kazuha Slash'),
('Foresaken Rift', 'Kaeya', 'Treasure Hoarder\'s Insignia', 'Ballad', 'Andrius', 'Spirit Locket of Boreas', 'Ceremonial Bladework', 'Frostgnaw', 'Glaciall Waltz'),
('Violet Court', 'Kamisato Ayaka', 'Old Handguard', 'Elegance', 'Azdaha', 'Bloodjade Branch', 'Kabuki', 'Hyouka', 'Soumetsu'),
('Violet Court', 'Kamisato Ayato', 'Old Handguard', 'Elegance', 'Mikoto', 'Mudra of the Malefic General', 'Marobashi', 'Kyouka', 'Suiyuu'),
('Taishan Mansion', 'Keqing', 'Whopperflower Nectar', 'Prosperity', 'Andrius', 'Ring of Boreas', 'Yunlai Swordmanship', 'Stellar Restoration', 'Starward Sword'),
('Foresaken Rift', 'Klee', 'Divining Scroll', 'Freedom', 'Andrius', 'Ring of Boreas', 'Kaboom!', 'Jumpty Dumpty', 'Sparks \'n\' Splash'),
('Violet Court', 'Kujou Sara', 'Damaged Mask', 'Elegance', 'La Signora', 'Ashen Heart', 'Tengu Bowmanship', 'Tengu Stormcall', 'Koukou Sendou'),
('Violet Court', 'Kuki Shinobu', 'Spectral Husk', 'Elegance', 'Mikoto', 'Tears of the Calamitous God', 'Shinobu\'s Shadowsword', 'Sanctifying Ring', 'Gyoei Narukami Kariyama Rite'),
('Foresaken Rift', 'Lisa', 'Slime Condensate', 'Ballad', 'Dvalin', 'Dvalin\'s Claw', 'Lightning Touch', 'Violet Arc', 'Lightning Rose'),
('Foresaken Rift', 'Mona', 'Whopperflower Nectar', 'Resistance', 'Andrius', 'Ring of Boreas', 'Ripple of Fate', 'Mirror Reflection of Doom', 'Stellaris Phantasm'),
('Dvalin\'s Plume', 'Nilou', 'Fungal Spores', 'Praxis', 'Mikoto', 'Tears of the Calamitous God', 'Dance of Samser', 'Dance of Haftkarsvar', 'Dance of Absendegi'),
('Taishan Mansion', 'Ninguang', 'Recruit\'s Insignia', 'Prosperity', 'Andrius', 'Spirit Locket of Boreas', 'Sparkling Scatter', 'Jade Screen', 'Starshatter'),
('Foresaken Rift', 'Noelle', 'Damaged Mask', 'Resistance', 'Dvalin', 'Dvalin\'s Claw', 'Favonius Baldework-Maid', 'Breastplate', 'Sweeping Time'),
('Taishan Mansion', 'Qiqi', 'Divining Scroll', 'Prosperity', 'Andrius', 'Tail of Boreas', 'Ancient Sword Art', 'Herald of Frost', 'Preserver of Fortune'),
('Violet Court', 'Raiden Shogun', 'Old Handguard', 'Light', 'La Signora', 'Molten Moment', 'Origin', 'Baleful Omen', 'Musou Shinetsu'),
('Foresaken Rift', 'Razor', 'Damaged Mask', 'Resistance', 'Dvalin', 'Dvalin\'s Claw', 'Steel Fang', 'Claw and Thunder', 'Lightning Fang'),
('Foresaken Rift', 'Rosaria', 'Recruit\'s Insignia', 'Ballad', 'Childe', 'Shadow of the Warrior', 'Spear of the Church', 'Ravaging Confession', 'Rites of termination'),
('Violet Court', 'Sangonomiya Kokomi', 'Spectral Husk', 'Transcience', 'La Signora', 'Hellfire Butterfly', 'The shape of the Water', 'Kurage\'s Oath', 'Nereid\'s Ascension'),
('Violet Court', 'Sayu', 'Whopperflower Nectar', 'Light', 'Azdaha', 'Gilded Scale', 'Shuumatsuban Ninja Blade', 'Fuuin Dash', 'Mujina Furry'),
('Taishan Mansion', 'Shenhe', 'Whopperflower Nectar', 'Prosperity', 'La Signora', 'Hellfire Butterfly', 'Dawnstar Piercer', 'Spring Spirit Summoning', 'Divine Maiden\'s Deliverance'),
('Violet Court', 'Shikanoin Heizou', 'Treasure Hoarder\'s Insignia', 'Transcience', 'Mikoto', 'The Meaning of Aeons', 'Fudou Style Martial Arts', 'Heartstopper Strike', 'Windmuster Kick'),
('Foresaken Rift', 'Sucrose', 'Whopperflower Nectar', 'Freedom', 'Andrius', 'Spirit Locket of Boreas', 'Wind Spirit Creation', 'Astable Anemohypostasis', 'Forbidden Creation'),
('Foresaken Rift', 'Tartaglia', 'Recruit\'s Insignia', 'Freedom', 'Childe', 'Shard of a Foul Legacy', 'Cutting Torment', 'Foul Legacy', 'Obliteration'),
('Violet Court', 'Thoma', 'Treasure Hoarder\'s Insignia', 'Transcience', 'La Signora', 'Hellfire Butterfly', 'Swiftshatter Spear', 'Blazing Blessing', 'Crimson Ooyoroi'),
('Dvalin\'s Plume', 'Tighnari', 'Fungal Spores', 'Admonition', 'Mikoto', 'The Meaning of Aeons', 'Khanda Barrier-Buster', 'Vijnana-Phala Mine', 'Fashioner\'s Tanglevine Shaft'),
('Foresaken Rift', 'Traveler(A)', 'Divining Scroll', 'All', 'Dvalin', 'Dvalin\'s Claw', 'Foreign Ironwind', 'Palm Vortex', 'Gust Surge'),
('Taishan Mansion', 'Traveler(G)', 'Firm Arrowhead', 'All', 'Andrius', 'Tail of Boreas', 'Foreign Rockblade', 'Starfell Sword', 'Wake of Earth'),
('Violet Court', 'Traveler(E)', 'Old Handguard', 'All', 'Azdaha', 'Dragon Lord\'s Crown', 'Foreign Thundershock', 'Lightning Blade', 'Bellowing Thunder'),
('Dvalin\'s Plume', 'Traveler(D)', 'Fungal Spores', 'All', 'Mikoto', 'Mudra of the Malefic General', 'Foreign Fieldcleaver', 'Razorgrass Blade', 'Surgent Manifestation'),
('Foresaken Rift', 'Venti', 'Slime Condensate', 'Ballad', 'Andrius', 'Tail of Boreas', 'Divine Marksmanship', 'Skyward Sonnet', 'Wind\'s Grand Ode'),
('Taishan Mansion', 'Xiangling', 'Slime Condensate', 'Diligence', 'Dvalin', 'Dvalin\'s Claw', 'Dough-Fu', 'Gouba Attack', 'Pyronado'),
('Taishan Mansion', 'Xiao', 'Slime Condensate', 'Prosperity', 'Childe', 'Shadow of the Warrior', 'Whirlwind Thrust', 'Lemniscatic Wind Cycling', 'Bane of All Evil'),
('Taishan Mansion', 'Xingqiu', 'Damaged Mask', 'Gold', 'Andrius', 'Tail of Boreas', 'Guhua Style', 'Fatal Rainscreen', 'Raincutter'),
('Taishan Mansion', 'Xinyan', 'Treasure Hoarder\'s Insignia', 'Gold', 'Childe', 'Tusk of Monoceros Caeli', 'Dance on Fire', 'Sweeping Fervor', 'Riff Revolution'),
('Violet Court', 'Yae Miko', 'Old Handguard', 'Light', 'Mikoto', 'The Meaning of Aeons', 'Spirit Sin-Eater', 'Sesshou Sakura', 'Tenko Kenshin'),
('Taishan Mansion', 'Yanfei', 'Treasure Hoarder\'s Insignia', 'Gold', 'Azdaha', 'Bloodjade Branch', 'Seal of Approval', 'Signed Edict', 'Done Deal'),
('Taishan Mansion', 'Yelan', 'Recruit\'s Insignia', 'Prosperity', 'Azdaha', 'Gilded Scale', 'Stealthy Bowshot', 'Lingering Lifeline', 'Depth-Clarion Dice'),
('Violet Court', 'Yoimiya', 'Divining Scroll', 'Transcience', 'Azdaha', 'Dragon Lord\'s Crown', 'Firework Flare-Up', 'Niwabi Fire-Dance', 'Ryuukin Saxifrage'),
('Taishan Mansion', 'Yun Jin', 'Damaged Mask', 'Diligence', 'La Signora', 'Ashen Heart', 'Cloud-Grazing Strike', 'Opening Flourish', 'Cliffbreaker\'s Banner'),
('Taishan Mansion', 'Zhongli', 'Slime Condensate', 'Gold', 'Childe', 'Tusk of Monoceros Caeli', 'Rain of Stone', 'Dominus Lapidis', 'Planet Befall');

-- --------------------------------------------------------

--
-- Table structure for table `weapons`
--

CREATE TABLE `weapons` (
  `NAME` varchar(33) NOT NULL PRIMARY KEY,
  `RARITY` varchar(6) DEFAULT NULL,
  `TYPE` varchar(8) DEFAULT NULL,
  `STAT` varchar(18) DEFAULT NULL,
  `DESCRIPTION` varchar(245) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `weapons`
--

INSERT INTO `weapons` (`NAME`, `RARITY`, `TYPE`, `STAT`, `DESCRIPTION`) VALUES
('Wandering Evenstar', '4 Star', 'Catalyst', 'Elemental Mastery', 'This was originally a device used by researchers to observe and perform calculations on celestial phenomena. It serves as a conduit and catalyst.'),
('Xiphos\' Moonlight', '4 Star', 'Sword', 'Elemental Mastery', 'This ancient double-edged sword glimmers with moonlight. It is said that a now-silent Jinni dwells within it.'),
('Key of Khaj-Nisut', '5 Star', 'Sword', 'HP Percentage', 'One of a paired set of scepters fashioned from obsidian. They say that this can be used as a key to open the gate to a paradise that lies at the end of the ocean of sand.'),
('Staff of the Scarlet Sands', '5 Star', 'Polearm', 'CRIT Rate', 'One of a paired set of scepters fashioned from obsidian. Legend has it that these staves grant the right to lead the people of the desert, but no retainer now lives who can verify the proper appearance of these regalia.'),
('Makhaira Aquamarine', '4 Star', 'Claymore', 'Elemental Mastery', 'An ancient greatsword that gleams like the waters themselves. A thousand years of sand erosion has not dulled its unnaturally sharp edge one bit.'),
('Missive Windspear', '4 Star', 'Polearm', 'ATK Percentage', 'A beacon that shows the direction of the wind. Not every idyll carried on the breeze remains a gentle thing...'),
('Forest Regalia', '4 Star', 'Claymore', 'Energy Recharge', 'It has taken on the shape of a greatsword that shall cut down the foes of the forest.'),
('King\'s Squire', '4 Star', 'Bow', 'ATK Percentage', 'It has taken on the shape of a bow that can shoot the enemies of the forest down.'),
('Hunter\'s Path', '5 Star', 'Bow', 'CRIT Rate', 'This gilded bow was made using precious white branches. It has felled countless wicked beasts attempting to infiltrate the woods.'),
('Aqua Simulacra', '5 Star', 'Bow', 'CRIT DMG', 'This longbow\'s color is unpredictable. Under the light, it takes on a lustrous, watery blue.'),
('Blackcliff Longsword', '4 Star', 'Sword', 'CRIT DMG', 'A sword made of a material known as \"blackcliff.\" It has a dark crimson glow on its black blade.'),
('Blackcliff Agate', '4 Star', 'Catalyst', 'CRIT DMG', 'A mysterious catalyst made of a material known as \"blackcliff.\" It has an ominous crimson glow that seems to pulse in synchronization with the tremors from deep within the earth.'),
('Blackcliff Slasher', '4 Star', 'Claymore', 'CRIT DMG', 'An extremely sturdy greatsword from the Blackcliff Forge. It has a dark crimson color from the blade to pommel.'),
('Blackcliff Warbow', '4 Star', 'Bow', 'CRIT DMG', 'A bow made of blackcliff that features extremely sturdy bow limbs. It requires an archer with a strong bow arm to use.'),
('Blackcliff Pole', '4 Star', 'Polearm', 'CRIT DMG', 'A weapon made of blackcliff and aerosiderite. There is a dark crimson glow on its cold black sheen.'),
('The Black Sword', '4 Star', 'Sword', 'CRIT Rate', 'A pitch-black longsword that thirsts for violence and conflict. It is said that this weapon can cause its user to become drunk on the red wine of slaughter.'),
('Thundering Pulse', '5 Star', 'Bow', 'CRIT DMG', 'A longbow that was a gift from the Shogun. Eternal lightning crackles all around it.'),
('Aquila Favonia', '5 Star', 'Sword', 'Physical DMG Bonus', 'The soul of the Knights of Favonius. Millennia later, it still calls on the winds of swift justice to vanquish all evil — just like the last heroine who wielded it.'),
('Windblume Ode', '4 Star', 'Bow', 'Elemental Mastery', 'A bow adorned with nameless flowers that bears the earnest hopes of an equally nameless person.'),
('Mitsplitter Reforged', '5 Star', 'Sword', 'CRIT DMG', 'A sword that blazes with a fierce violet light. The name \"Reforged\" comes from it having been broken once before.'),
('Amos\'s Bow', '5 Star', 'Bow', 'ATK Percentage', 'An extremely ancient bow that has retained its power despite its original master being long gone. It draws power from everyone and everything in the world, and the further away you are from that which your heart desires, the more powerful it is.'),
('Iron Sting', '4 Star', 'Sword', 'Elemental Mastery', 'An exotic long-bladed rapier that somehow found its way into Liyue via foreign traders. It is light, agile, and sharp.'),
('Compound Bow', '4 Star', 'Bow', 'Physical DMG Bonus', 'An exotic metallic bow from a distant land. Though extremely difficult to maintain, it is easy to nock and fires with tremendous force.'),
('Cinnabar Spindle', '4 Star', 'Sword', 'DEF Percentage', 'A sword made from materials that do not belong in this world. The power within might even be able to withstand the corruption of a venom that could corrode a mighty dragon.'),
('Redhorn Stonethresher', '5 Star', 'Claymore', 'CRIT DMG', 'According to its previous owner, this weapon is the \"Mighty Redhorn Stoic Stonethreshing Gilded Goldcrushing Lion Lord\" that can send any monster packing with its tail between its legs.'),
('Vortex Vanquisher', '5 Star', 'Polearm', 'ATK Percentage', 'This sharp polearm can seemingly pierce through anything. When swung, one can almost see the rift it tears in the air.'),
('Prototype Amber', '4 Star', 'Catalyst', 'HP Percentage', 'A dully gilded catalyst secretly guarded in the Blackcliff Forge. It seems to glow with the very light from the sky.'),
('Prototype Crescent', '4 Star', 'Bow', 'ATK Percentage', 'A prototype longbow discovered in the Blackcliff Forge. The arrow fired from this bow glimmers like a ray of moonlight.'),
('Prototype Starglitter', '4 Star', 'Polearm', 'Energy Recharge', 'A hooked spear discovered hidden away in the Blackcliff Forge. The glimmers along the sharp edge are like stars in the night.'),
('Prototype Rancour', '4 Star', 'Sword', 'Physical DMG Bonus', 'An ancient longsword discovered in the Blackcliff Forge that cuts through rocks like a hot knife through butter.'),
('Prototype Archaic', '4 Star', 'Claymore', 'ATK Percentage', 'An ancient greatsword discovered in the Blackcliff Forge. It swings with such an immense force that one feels it could cut straight through reality itself.'),
('Oathsworn Eye', '4 Star', 'Catalyst', 'ATK Percentage', 'A national treasure of Byakuyakoku stored in the Dainichi Mikoshi. With the coming of the Serpent God, this item was used to notarize great oaths and wishes.'),
('Waster Greatsword', '1 Star', 'Claymore', '', 'A sturdy sheet of iron that may be powerful enough to break apart mountains if wielded with enough willpower.'),
('Thrilling Tales of Dragon Slayers', '3 Star', 'Catalyst', 'HP Percentage', 'A fictional story of a band of five heroes who go off on a dragon hunt. It is poorly written and structurally incoherent. Its value lies in the many lessons that can be learned from failure.'),
('Favonious Lance', '4 Star', 'Polearm', 'Energy Recharge', 'A polearm made in the style of the Knights of Favonius. Its shaft is straight, and its tip flows lightly like the wind.'),
('Favonious Codex', '4 Star', 'Catalyst', 'Energy Recharge', 'A secret tome that belonged to the scholars of the Knights of Favonius. It describes the logic and power of elements and matter.'),
('Favonious Warbow', '4 Star', 'Bow', 'Energy Recharge', 'A standard-issue recurve bow of the Knights of Favonius. Only the best archers can unleash its full potential.'),
('Favonious Greatsword', '4 Star', 'Claymore', 'Energy Recharge', 'A heavy ceremonial sword of the Knights of Favonius. It channels elemental power easily and is highly destructive.'),
('Favonious Sword', '4 Star', 'Sword', 'Energy Recharge', 'A standard-issue longsword of the Knights of Favonius. When you\'re armed with this agile and sharp weapon, channeling the power of the elements has never been so easy!'),
('Luxurious Sea-Lord', '4 Star', 'Claymore', 'ATK Percentage', 'The great king of the ocean. Having been air-dried, it makes for a fine weapon as well as emergency sustenance.'),
('Serpent Spine', '4 Star', 'Claymore', 'CRIT Rate', 'A rare weapon whose origin is the ancient ocean. One can hear the sound of the ageless waves as one swings it.'),
('Engulfing Lightning', '5 Star', 'Polearm', 'Energy Recharge', 'A naginata used to \"cut grass.\" Any army that stands before this weapon will probably be likewise cut down...'),
('The Viridescent Hunter', '4 Star', 'Bow', 'CRIT Rate', 'A pure green hunting bow. This once belonged to a certain hunter whose home was the forest.'),
('Freedom-Sworn', '5 Star', 'Sword', 'Elemental Mastery', 'A straight sword, azure as antediluvian song, and as keen as the oaths of freedom taken in the Land of Wind.'),
('Festering Desire', '4 Star', 'Sword', 'Energy Recharge', 'A creepy straight sword that almost seems to yearn for life. It drips with a shriveling venom that could even corrupt a mighty dragon.'),
('Emerald Orb', '3 Star', 'Catalyst', 'Elemental Mastery', 'A catalyst carved out of the hard jade from Jueyun Karst north of Liyue. Small, light, and durable, it is known more colloquially as the \"jade ball\".'),
('The Stringless', '4 Star', 'Bow', 'Elemental Mastery', 'A bow that once served as an extraordinary instrument. It is no longer capable of getting people up and dancing.'),
('Elegy for the End', '5 Star', 'Bow', 'Energy Recharge', 'A bow as lovely as any bard\'s lyre, its arrows pierce the heart like a lamenting sigh.'),
('The Flute', '4 Star', 'Sword', 'ATK Percentage', 'Beneath its rusty exterior is a lavishly decorated thin blade. It swings as swiftly as the wind.'),
('Sacrificial Fragments', '4 Star', 'Catalyst', 'Elemental Mastery', 'A weathered script, the text of which is no longer legible. A cursed item eroded by the winds of time.'),
('Sacrificial Bow', '4 Star', 'Bow', 'Energy Recharge', 'A ceremonial hunting bow that has become petrified over time. The trinkets on it are still visible. It grants the wielder the power to withstand the winds of time'),
('Sacrificial Greatsword', '4 Star', 'Claymore', 'Energy Recharge', 'A ceremonial greatsword that has become petrified over time. The trinkets on it are still visible. It grants the wielder the power to withstand the winds of time.'),
('Sacrificial Sword', '4 Star', 'Sword', 'Energy Recharge', 'A ceremonial sword that has become petrified over time. The trinkets on it are still visible. It grants the wielder the power to withstand the winds of time.'),
('Sharpshooter\'s Oath', '3 Star', 'Bow', 'CRIT DMG', 'This superior bow once belonged to a master archer. However, it gives off a strong scent, thus making it unsuitable for hunting.'),
('Kagura\'s Verity', '5 Star', 'Catalyst', 'CRIT DMG', 'The bells used when performing the Kagura Dance, blessed by the Guuji herself. The scent of the Sacred Sakura tree lingers on it.'),
('Primordial Jade Cutter', '5 Star', 'Sword', 'CRIT Rate', 'A ceremonial sword masterfully carved from pure jade. There almost seems to be an audible sigh in the wind as it is swung.'),
('Hamayumi', '4 Star', 'Bow', 'ATK Percentage', 'A certain shrine maiden once owned this warbow. It was made with surpassing skill, and is both intricate and sturdy.'),
('White Iron Greatsword', '3 Star', 'Claymore', 'DEF Percentage', 'A claymore made from white iron. Lightweight without compromising on power. Effective even when wielded by one of average strength, it is extremely deadly in the hands of a physically stronger wielder.'),
('Hakushin Ring', '4 Star', 'Catalyst', 'Energy Recharge', 'A catalyst that carries the memory of the Kitsune Saiguu of ancient times. However, this device is but an impoverished vessel for the full breadth of her thought.'),
('White Tassel', '3 Star', 'Polearm', 'CRIT Rate', 'A standard-issue weapon of the Millelith soldiers. It has a sturdy shaft and sharp spearhead. It\'s a reliable weapon.'),
('Whiteblind', '4 Star', 'Claymore', 'DEF Percentage', 'An exotic sword with one section of the blade left blunt. It made its way into Liyue via the hands of foreign traders. Incredibly powerful in the hands of someone who knows how to use it.'),
('Twin Nephrite', '3 Star', 'Catalyst', 'CRIT Rate', 'A jade pendant formed by piecing together two jade stones.'),
('Hunter\'s Bow', '1 Star', 'Bow', '', 'A hunter\'s music consists of but two sounds: the twang of the bowstring and the whoosh of soaring arrows.'),
('Wolf\'s Gravestone', '5 Star', 'Claymore', 'ATK Percentage', 'A longsword used by the Wolf Knight. Originally just a heavy sheet of iron given to the knight by a blacksmith from the city, it became endowed with legendary power owing to his friendship with the wolves.'),
('The Widsith', '4 Star', 'Catalyst', 'CRIT DMG', 'A heavy notebook filled with musical scores. Though suffering from moth damage and heavy wear-and-tear, there is still much power to be found among the hand-written words within.'),
('Crescent Pike', '4 Star', 'Polearm', 'Physical DMG Bonus', 'An exotic weapon with an extremely long blade on the top and a crescent blade at the bottom. It found its way into Liyue through foreign traders. With practice, it can deal heavy damage.'),
('Haran Geppaku Futsu', '5 Star', 'Sword', 'CRIT Rate', 'A famed work by the Futsu line of smiths. The name \"Haran\" comes from the manner in which it resembles the violent, roiling waves.'),
('Bloodtainted Greatsword', '3 Star', 'Claymore', 'Elemental Mastery', 'A steel sword that is said to have been coated with dragon blood, rendering it invulnerable to damage. This effect is not extended to its wielder, however.'),
('Katsuragikiri Nagamasa', '4 Star', 'Claymore', 'Energy Recharge', 'A blade that was once made in Tatarasuna. Heavy and tough.'),
('Song of Broken Pines', '5 Star', 'Claymore', 'Physical DMG Bonus', 'A greatsword as light as the sigh of grass in the breeze, yet as merciless to the corrupt as a typhoon.'),
('Mouun\'s Moon', '4 Star', 'Bow', 'ATK Percentage', 'A lovely warbow made from seashells and coral. A mournful brilliance flows along its moonlight-colored arms.'),
('Dark Iron Sword', '3 Star', 'Sword', 'Elemental Mastery', 'A perfectly ordinary iron sword, just slightly darker than most.'),
('The Alley Flash', '4 Star', 'Sword', 'Elemental Mastery', 'A straight sword as black as the night. It once belonged to a thief who roamed the benighted streets.'),
('Wine and Song', '4 Star', 'Catalyst', 'Energy Recharge', 'A songbook from the bygone aristocratic era, whose composer has become forgotten. It chronicles the tale of a certain heroic outlaw.'),
('Alley Hunter', '4 Star', 'Bow', 'ATK Percentage', 'An intricate, opulent longbow. It once belonged to a gentleman thief who was never caught.'),
('Eye of Perception ', '4 Star', 'Catalyst', 'ATK Percentage', 'A dim black glaze pearl that is said to have the power to read the purity of one\'s heart.'),
('Dull Blade', '1 Star', 'Sword', '', 'Youthful dreams and the thrill of adventure. If this isn\'t enough, then make it up with valiance.'),
('The Unforged', '5 Star', 'Claymore', 'ATK Percentage', 'Capable of driving away evil spirits and wicked people alike, this edgeless claymore seems to possess divine might.'),
('Traveler\'s Handy Sword', '3 Star', 'Sword', 'DEF Percentage', 'A handy steel sword which contains scissors, a magnifying glass, tinder, and other useful items in its sheath.'),
('Beginner\'s Protector', '1 Star', 'Polearm', '', 'A polearm as straight as a flag pole. Well suited to most combat situations, it has an imposing presence when swung.'),
('Wavebreaker\'s Fin', '4 Star', 'Polearm', 'ATK Percentage', 'A naginata forged from luminescent material deep in the ocean depths. It was once the possession of the tengu race.'),
('Summit Shaper', '5 Star', 'Sword', 'ATK Percentage', 'A symbol of a legendary pact, this sharp blade once cut off the peak of a mountain.'),
('Predeator', '4 Star', 'Bow', 'ATK Percentage', 'A uniquely-designed bow. This should not belong in this world.'),
('Staff of Homa', '5 Star', 'Polearm', 'CRIT DMG', 'A \"firewood staff\" that was once used in ancient and long-lost rituals.'),
('Akuoumaru', '4 Star', 'Claymore', 'ATK Percentage', 'The beloved sword of the legendary \"Akuou.\" The blade is huge and majestic, but is surprisingly easy to wield.'),
('Calamity Queller', '5 Star', 'Polearm', 'ATK Percentage', 'A keenly honed weapon forged from some strange crystal. Its faint blue light seems to whisper of countless matters now past.'),
('Frostbearer', '4 Star', 'Catalyst', 'ATK Percentage', 'A fruit that possesses a strange, frosty will. A faint sense of agony emanates from it.'),
('Slingshot', '3 Star', 'Bow', 'CRIT Rate', 'A bow, despite the name. After countless experiments and improvements to the design, the creator of the ultimate slingshot found himself to have made what was actually a bow.'),
('Rust', '4 Star', 'Bow', 'ATK Percentage', 'A completely rusted iron greatbow. The average person would lack the strength to even lift it, let alone fire it.'),
('Otherwordly Story', '3 Star', 'Catalyst', 'Energy Recharge', 'A cheap fantasy novel with no value whatsoever. Any claim that it possesses the power of catalysis is also pure fantasy.'),
('Mitternachts Waltz', '4 Star', 'Bow', 'Physical DMG Bonus', 'A bow painted the color of transgression and nights of illusion.'),
('Memory of Dust', '5 Star', 'Catalyst', 'ATK Percentage', 'A stone dumbbell containing distant memories. Its endless transformations reveal the power within.'),
('Royal Bow', '4 Star', 'Bow', 'ATK Percentage', 'An old longbow that belonged to the erstwhile aristocratic rulers of Mondstadt. Countless generations later, the bowstring is still tight and can still fire arrows with great force.'),
('Royal Longsword', '4 Star', 'Sword', 'ATK Percentage', 'An old longsword that belonged to the erstwhile rulers of Mondstadt. Exquisitely crafted, the carvings and embellishments testify to the stature of its owner.'),
('Royal Grimoire', '4 Star', 'Claymore', 'ATK Percentage', 'A book that once belonged to a court mage of Mondstadt who served the nobility. It contains faithful and comprehensive historical accounts as well as magic spells.'),
('Royal Spear', '4 Star', 'Polearm', 'ATK Percentage', 'This polearm was once cherished by a member of the old nobility that governed Mondstadt long ago. Although it has never seen the light of day, it is still incomparably sharp.'),
('Royal Greatsword', '4 Star', 'Claymore', 'ATK Percentage', 'An old greatsword that belonged to the erstwhile rulers of Mondstadt. It is made from the finest-quality materials and has stood the test of time. A weapon for use by the nobility only.'),
('Apprentice\'s Notes', '1 Star', 'Catalyst', '', 'Notes left behind by a top student. Many useful spells are listed, and the handwriting is beautiful.'),
('Skyward Spine', '5 Star', 'Polearm', 'Energy Recharge', 'A polearm that symbolizes Dvalin\'s firm resolve. The upright shaft of this weapon points towards the heavens, clad in the might of sky and wind'),
('Skyward Harp', '5 Star', 'Bow', 'CRIT Rate', 'A greatbow that symbolizes Dvalin\'s affiliation with the Anemo Archon. The sound of the bow firing is music to the Anemo Archon\'s ears. It contains the power of the sky and wind within.'),
('Skyward Atlas', '5 Star', 'Catalyst', 'ATK Percentage', 'A cloud atlas symbolizing Dvalin and his former master, the Anemo Archon. It details the winds and clouds of the northern regions and contains the powers of the sky and wind.'),
('Skyward Blade', '5 Star', 'Sword', 'Energy Recharge', 'The sword of a knight that symbolizes the restored honor of Dvalin. The blessings of the Anemo Archon rest on the fuller of the blade, imbuing the sword with the powers of the sky and the wind.'),
('Skyward Pride', '5 Star', 'Claymore', 'Energy Recharge', 'A claymore that symbolizes the pride of Dvalin soaring through the skies. When swung, it emits a deep hum as the full force of Dvalin\'s command of the sky and the wind is unleashed.'),
('Amenoma Kageuchi', '4 Star', 'Sword', 'ATK Percentage', 'A blade custom made for a famed samurai who could strike down a tengu warrior, known for their incredible agility, in midair.'),
('Lost Prayer to the Sacred Winds', '5 Star', 'Catalyst', 'CRIT Rate', 'An educational tome written by anonymous early inhabitants who worshiped the wind. It has been blessed by the wind for its faithfulness and influence over the millennia.'),
('Dodoco Tales', '4 Star', 'Catalyst', 'ATK Percentage', 'A children\'s book filled with childish short stories at which one cannot help but laugh. Even those readers who have long reached adulthood cannot help but be absorbed by the innocent, naive little adventures portrayed within.'),
('Kitain Cross Spear', '4 Star', 'Polearm', 'Elemental Mastery', 'A special lance that was once used by a famed warrior who guarded the Tatarigami on Yashiori Island.'),
('Primordial Jade Winged-Spear', '5 Star', 'Polearm', 'CRIT Rate', 'A jade polearm made by the archons, capable of slaying ancient beasts.'),
('Fillet Blade', '3 Star', 'Sword', 'ATK Percentage', 'A sharp filleting knife. The blade is long, thin, and incredibly sharp.'),
('Pocket Grimoire', '2 Star', 'Catalyst', '', 'A carefully compiled notebook featuring the essentials needed to pass a magic exam.'),
('Recurve Bow', '3 Star', 'Bow', 'HP Percentage', 'It is said that this bow can shoot down eagles in flight, but ultimately how true that is depends on the skill of the archer.'),
('Seasoned Hunter\'s Bow', '2 Star', 'Bow', '', 'A bow that has been well-polished by time and meticulously cared for by its owner. It feels almost like an extension of the archer\'s arm.'),
('Lithic Spear', '4 Star', 'Polearm', 'ATK Percentage', 'A spear forged from the rocks of the Guyun Stone Forest. Its hardness knows no equal.'),
('Lithic Blade', '4 Star', 'Claymore', 'ATK Percentage', 'A greatsword carved and chiseled from the very bedrock of Liyue.'),
('Lion\'s Roar', '4 Star', 'Sword', 'ATK Percentage', 'A sharp blade with extravagant carvings that somehow does not compromise on durability and sharpness. It roars like a lion as it cuts through the air.'),
('Dragon\'s Bane', '4 Star', 'Polearm', 'Elemental Mastery', 'A polearm decorated with an entwining golden dragon. Light and sharp, this weapon may very well kill dragons with ease.'),
('Solar Pearl', '4 Star', 'Catalyst', 'CRIT Rate', 'A dull, golden pearl made of an unknown substance that harbors the light of the sun and the moon and pulses with a warm strength.'),
('Cool Steel', '3 Star', 'Sword', 'ATK Percentage', 'A reliable steel-forged weapon that serves as a testament to the great adventures of its old master.'),
('Deathmatch', '4 Star', 'Polearm', 'CRIT Rate', 'A sharp crimson polearm that was once a gladiator\'s priceless treasure. Its awl has been stained by the blood of countless beasts and men.'),
('Polar Star', '5 Star', 'Bow', 'CRIT Rate', 'A pristine bow that is as sharp as the glaciers of the far north.'),
('Messenger', '3 Star', 'Bow', 'CRIT DMG', 'A basic wooden bow. It is said to have once been used as a tool for long-distance communication.'),
('Old Merc\'s Pal', '2 Star', 'Claymore', '', 'A battle-tested greatsword that has seen better days and worse.'),
('Debate Club', '3 Star', 'Claymore', 'ATK Percentage', 'A handy club made of fine steel. The most persuasive line of reasoning in any debater\'s arsenal.'),
('Everlasting Moonglow', '5 Star', 'Catalyst', 'HP Percentage', 'A string of lovely jasper from the deep sea. It shines with a pure radiance like that of the moon, and just as ever-distant.'),
('Mappa Mare', '4 Star', 'Catalyst', 'Elemental Mastery', 'A nautical chart featuring nearby currents and climates that somehow found its way into Liyue via foreign traders.'),
('\"The Catch\"', '4 Star', 'Polearm', 'Energy Recharge', 'In the distant past, this was the beloved spear of a famed Inazuman bandit.');

-- --------------------------------------------------------

--
-- Table structure for table `weapon_ascension_materials`
--

CREATE TABLE `weapon_ascension_materials` (
  `WEAPON NAME` varchar(33) NOT NULL PRIMARY KEY,
  `DOMAIN NAME` varchar(32) DEFAULT NULL,
  `MORA` varchar(7) DEFAULT NULL,
  `ITEMS` varchar(27) DEFAULT NULL,
  `DROP` varchar(26) DEFAULT NULL,
  FOREIGN KEY (`DOMAIN NAME`) REFERENCES weapon_domain(DOMAIN)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `weapon_ascension_materials`
--

INSERT INTO `weapon_ascension_materials` (`WEAPON NAME`, `DOMAIN NAME`, `MORA`, `ITEMS`, `DROP`) VALUES
('\"The Catch\"', 'Court of Flowing Sand', '150,000', 'Spectral Husk', 'Chaos Gear'),
('Akuoumaru', 'Court of Flowing Sand', '150,000', 'Old Handguard', 'Concealed Claw'),
('Alley Hunter', 'Cecilia Garden', '150,000', 'Slime Condensate', 'Chaos Device'),
('Amenoma Kageuchi', 'Court of Flowing Sand', '150,000', 'Old Handguard', 'Chaos Gear'),
('Amos\'s Bow', 'Cecilia Garden', '225,000', 'Slime Condensate', 'Chaos Device'),
('Apprentice\'s Notes', 'Cecilia Garden', '20,000', 'Damaged Mask', 'Heavy Horn'),
('Aqua Simulacra', 'Hidden Palace of Laishan Formula', '225,000', 'Spectral Husk', 'Gloomy Statuette'),
('Aquila Favonia', 'Cecilia Garden', '225,000', 'Firm Arrowhead', 'Heavy Horn'),
('Beginner\'s Protector', '', '20,000', 'Divining Scroll', 'Chaos Device'),
('Blackcliff Agate', 'Hidden Palace of Laishan Formula', '150,000', 'Divining Scroll', 'Hunter\'s Sacrificial Knife'),
('Blackcliff Longsword', 'Hidden Palace of Laishan Formula', '150,000', 'Firm Arrowhead', 'Hunter\'s Sacrificial Knife'),
('Blackcliff Pole', 'Hidden Palace of Laishan Formula', '150,000', 'Recruit\'s Insignia', 'Mist Grass Pollen'),
('Blackcliff Slasher', 'Hidden Palace of Laishan Formula', '150,000', 'Recruit\'s Insignia', 'Mist Grass Pollen'),
('Blackcliff Warbow', 'Hidden Palace of Laishan Formula', '150,000', 'Whopperflower Nectar', 'Hunter\'s Sacrificial Knife'),
('Bloodtainted Greatsword', 'Cecilia Garden', '105,000', 'Firm Arrowhead', 'Dead Ley Line Branch'),
('Calamity Queller', 'Hidden Palace of Laishan Formula', '225,000', 'Whopperflower Nectar', 'Mist Grass Pollen'),
('Cinnabar Spindle', 'Cecilia Garden', '150,000', 'Damaged Mask', 'Chaos Device'),
('Compound Bow', 'Hidden Palace of Laishan Formula', '150,000', 'Recruit\'s Insignia', 'Fragile Bone Shard'),
('Cool Steel', 'Cecilia Garden', '105,000', 'Firm Arrowhead', 'Heavy Horn'),
('Crescent Pike', 'Hidden Palace of Laishan Formula', '150,000', 'Treasure Hoarder\'s Insignia', 'Hunter\'s Sacrificial Knife'),
('Dark Iron Sword', 'Hidden Palace of Laishan Formula', '105,000', 'Damaged Mask', 'Hunter\'s Sacrificial Knife'),
('Deathmatch', 'Cecilia Garden', '150,000', 'Whopperflower Nectar', 'Dead Ley Line Branch'),
('Debate Club', 'Hidden Palace of Laishan Formula', '105,000', 'Damaged Mask', 'Mist Grass Pollen'),
('Dodoco Tales', 'Cecilia Garden', '150,000', 'Damaged Mask', 'Dead Ley Line Branch'),
('Dragon\'s Bane', 'Hidden Palace of Laishan Formula', '150,000', 'Divining Scroll', 'Mist Grass Pollen'),
('Dull Blade', 'Cecilia Garden', '20,000', 'Firm Arrowhead', 'Heavy Horn'),
('Elegy for the End', 'Cecilia Garden', '225,000', 'Recruit\'s Insignia', 'Heavy Horn'),
('Emerald Orb', 'Hidden Palace of Laishan Formula', '105,000', 'Treasure Hoarder\'s Insignia', 'Hunter\'s Sacrificial Knife'),
('Engulfing Lightning', 'Court of Flowing Sand', '225,000', 'Old Handguard', 'Chaos Gear'),
('Everlasting Moonglow', 'Court of Flowing Sand', '225,000', 'Spectral Husk', 'Dismal Prism'),
('Eye of Perception ', 'Hidden Palace of Laishan Formula', '150,000', 'Damaged Mask', 'Mist Grass Pollen'),
('Favonious Codex', 'Cecilia Garden', '150,000', 'Divining Scroll', 'Heavy Horn'),
('Favonious Greatsword', 'Cecilia Garden', '150,000', 'Recruit\'s Insignia', 'Chaos Device'),
('Favonious Lance', 'Cecilia Garden', '150,000', 'Slime Condensate', 'Chaos Device'),
('Favonious Sword', 'Cecilia Garden', '150,000', 'Firm Arrowhead', 'Heavy Horn'),
('Favonious Warbow', 'Cecilia Garden', '150,000', 'Whopperflower Nectar', 'Chaos Device'),
('Festering Desire', 'Cecilia Garden', '150,000', 'Recruit\'s Insignia', 'Heavy Horn'),
('Fillet Blade', 'Hidden Palace of Laishan Formula', '105,000', 'Treasure Hoarder\'s Insignia', 'Mist Grass Pollen'),
('Forest Regalia', 'Tower of Abject Pride', '150,000', 'Faded Red Stain', 'Chaos Storage'),
('Freedom-Sworn', 'Cecilia Garden', '225,000', 'Divining Scroll', 'Chaos Device'),
('Frostbearer', 'Cecilia Garden', '150,000', 'Whopperflower Nectar', 'Chaos Device'),
('Hakushin Ring', 'Court of Flowing Sand', '150,000', 'Divining Scroll', 'Dismal Prism'),
('Hamayumi', 'Court of Flowing Sand', '150,000', 'Firm Arrowhead', 'Dismal Prism'),
('Haran Geppaku Futsu', 'Court of Flowing Sand', '225,000', 'Old Handguard', 'Gloomy Statuette'),
('Hunter\'s Bow', 'Cecilia Garden', '20,000', 'Treasure Hoarder\'s Insignia', 'Dead Ley Line Branch'),
('Hunter\'s Path', 'Tower of Abject Pride', '225,000', 'Faded Red Stain', 'Inactivated Fungal Nucleus'),
('Iron Sting', 'Hidden Palace of Laishan Formula', '150,000', 'Whopperflower Nectar', 'Fragile Bone Shard'),
('Kagura\'s Verity', 'Court of Flowing Sand', '225,000', 'Spectral Husk', 'Concealed Claw'),
('Katsuragikiri Nagamasa', '', '150,000', 'Old Handguard', 'Chaos Gear'),
('Key of Khaj-Nisut', 'Tower of Abject Pride', '225,000', 'Faded Red Stain', 'Damaged Prism'),
('King\'s Squire', 'Tower of Abject Pride', '150,000', 'Firm Arrowhead', 'Inactivated Fungal Nucleus'),
('Kitain Cross Spear', 'Court of Flowing Sand', '150,000', 'Treasure Hoarder\'s Insignia', 'Chaos Gear'),
('Lion\'s Roar', 'Hidden Palace of Laishan Formula', '150,000', 'Treasure Hoarder\'s Insignia', 'Hunter\'s Sacrificial Knife'),
('Lithic Blade', 'Hidden Palace of Laishan Formula', '150,000', 'Firm Arrowhead', 'Hunter\'s Sacrificial Knife'),
('Lithic Spear', 'Hidden Palace of Laishan Formula', '150,000', 'Firm Arrowhead', 'Fragile Bone Shard'),
('Lost Prayer to the Sacred Winds', 'Cecilia Garden', '225,000', 'Slime Condensate', 'Chaos Device'),
('Luxurious Sea-Lord', 'Hidden Palace of Laishan Formula', '150,000', 'Slime Condensate', 'Fragile Bone Shard'),
('Makhaira Aquamarine', 'Tower of Abject Pride', '150,000', 'Treasure Hoarder\'s Insignia', 'Chaos Storage'),
('Mappa Mare', 'Hidden Palace of Laishan Formula', '150,000', 'Slime Condensate', 'Fragile Bone Shard'),
('Memory of Dust', 'Hidden Palace of Laishan Formula', '225,000', 'Damaged Mask', 'Fragile Bone Shard'),
('Messenger', 'Hidden Palace of Laishan Formula', '105,000', 'Treasure Hoarder\'s Insignia', 'Mist Grass Pollen'),
('Missive Windspear', 'Cecilia Garden', '150,000', 'Slime Condensate', 'Gloomy Statuette'),
('Mitsplitter Reforged', 'Court of Flowing Sand', '225,000', 'Old Handguard', 'Chaos Gear'),
('Mitternachts Waltz', 'Cecilia Garden', '150,000', 'Treasure Hoarder\'s Insignia', 'Heavy Horn'),
('Mouun\'s Moon', 'Court of Flowing Sand', '150,000', 'Spectral Husk', 'Dismal Prism'),
('Oathsworn Eye', 'Court of Flowing Sand', '150,000', 'Spectral Husk', 'Concealed Claw'),
('Old Merc\'s Pal', '', '35,000', 'Slime Condensate', 'Dead Ley Line Branch'),
('Otherwordly Story', 'Cecilia Garden', '105,000', 'Damaged Mask', 'Chaos Device'),
('Pocket Grimoire', '', '35,000', 'Damaged Mask', 'Heavy Horn'),
('Polar Star', 'Court of Flowing Sand', '225,000', 'Spectral Husk', 'Concealed Claw'),
('Predeator', 'Court of Flowing Sand', '150,000', 'Firm Arrowhead', 'Dismal Prism'),
('Primordial Jade Cutter', 'Hidden Palace of Laishan Formula', '225,000', 'Treasure Hoarder\'s Insignia', 'Mist Grass Pollen'),
('Primordial Jade Winged-Spear', 'Hidden Palace of Laishan Formula', '225,000', 'Recruit\'s Insignia', 'Hunter\'s Sacrificial Knife'),
('Prototype Amber', 'Hidden Palace of Laishan Formula', '150,000', 'Firm Arrowhead', 'Mist Grass Pollen'),
('Prototype Archaic', 'Hidden Palace of Laishan Formula', '150,000', 'Damaged Mask', 'Fragile Bone Shard'),
('Prototype Crescent', 'Hidden Palace of Laishan Formula', '150,000', 'Treasure Hoarder\'s Insignia', 'Mist Grass Pollen'),
('Prototype Rancour', 'Hidden Palace of Laishan Formula', '150,000', 'Recruit\'s Insignia', 'Mist Grass Pollen'),
('Prototype Starglitter', 'Hidden Palace of Laishan Formula', '150,000', 'Damaged Mask', 'Fragile Bone Shard'),
('Recurve Bow', 'Cecilia Garden', '105,000', 'Divining Scroll', 'Chaos Device'),
('Redhorn Stonethresher', 'Court of Flowing Sand', '225,000', 'Old Handguard', 'Concealed Claw'),
('Royal Bow', 'Cecilia Garden', '150,000', 'Slime Condensate', 'Chaos Device'),
('Royal Greatsword', 'Cecilia Garden', '150,000', 'Slime Condensate', 'Chaos Device'),
('Royal Grimoire', 'Cecilia Garden', '150,000', 'Recruit\'s Insignia', 'Heavy Horn'),
('Royal Longsword', 'Cecilia Garden', '150,000', 'Firm Arrowhead', 'Heavy Horn'),
('Royal Spear', 'Hidden Palace of Laishan Formula', '150,000', 'Recruit\'s Insignia', 'Mist Grass Pollen'),
('Rust', 'Hidden Palace of Laishan Formula', '150,000', 'Damaged Mask', 'Hunter\'s Sacrificial Knife'),
('Sacrificial Bow', 'Cecilia Garden', '150,000', 'Slime Condensate', 'Dead Ley Line Branch'),
('Sacrificial Fragments', 'Cecilia Garden', '150,000', 'Treasure Hoarder\'s Insignia', 'Chaos Device'),
('Sacrificial Greatsword', 'Cecilia Garden', '150,000', 'Firm Arrowhead', 'Dead Ley Line Branch'),
('Sacrificial Sword', 'Cecilia Garden', '150,000', 'Divining Scroll', 'Chaos Device'),
('Seasoned Hunter\'s Bow', 'Cecilia Garden', '35,000', 'Treasure Hoarder\'s Insignia', 'Dead Ley Line Branch'),
('Serpent Spine', 'Hidden Palace of Laishan Formula', '150,000', 'Whopperflower Nectar', 'Fragile Bone Shard'),
('Sharpshooter\'s Oath', 'Cecilia Garden', '105,000', 'Slime Condensate', 'Dead Ley Line Branch'),
('Skyward Atlas', 'Cecilia Garden', '225,000', 'Firm Arrowhead', 'Dead Ley Line Branch'),
('Skyward Blade', 'Cecilia Garden', '225,000', 'Slime Condensate', 'Dead Ley Line Branch'),
('Skyward Harp', 'Cecilia Garden', '225,000', 'Firm Arrowhead', 'Dead Ley Line Branch'),
('Skyward Pride', 'Cecilia Garden', '225,000', 'Slime Condensate', 'Dead Ley Line Branch'),
('Skyward Spine', 'Cecilia Garden', '225,000', 'Divining Scroll', 'Chaos Device'),
('Slingshot', 'Hidden Palace of Laishan Formula', '105,000', 'Damaged Mask', 'Hunter\'s Sacrificial Knife'),
('Solar Pearl', 'Hidden Palace of Laishan Formula', '150,000', 'Whopperflower Nectar', 'Hunter\'s Sacrificial Knife'),
('Song of Broken Pines', 'Cecilia Garden', '225,000', 'Damaged Mask', 'Heavy Horn'),
('Staff of Homa', 'Hidden Palace of Laishan Formula', '225,000', 'Slime Condensate', 'Dead Ley Line Branch'),
('Staff of the Scarlet Sands', 'Tower of Abject Pride', '225,000', 'Fungal Spores', 'Chaos Storage'),
('Summit Shaper', 'Hidden Palace of Laishan Formula', '225,000', 'Damaged Mask', 'Hunter\'s Sacrificial Knife'),
('The Alley Flash', 'Cecilia Garden', '150,000', 'Divining Scroll', 'Heavy Horn'),
('The Black Sword', 'Cecilia Garden', '150,000', 'Slime Condensate', 'Dead Ley Line Branch'),
('The Flute', 'Cecilia Garden', '150,000', 'Slime Condensate', 'Dead Ley Line Branch'),
('The Stringless', 'Cecilia Garden', '150,000', 'Firm Arrowhead', 'Heavy Horn'),
('The Unforged', 'Hidden Palace of Laishan Formula', '225,000', 'Treasure Hoarder\'s Insignia', 'Mist Grass Pollen'),
('The Viridescent Hunter', 'Cecilia Garden', '150,000', 'Firm Arrowhead', 'Heavy Horn'),
('The Widsith', 'Cecilia Garden', '150,000', 'Damaged Mask', 'Dead Ley Line Branch'),
('Thrilling Tales of Dragon Slayers', 'Cecilia Garden', '150,000', 'Divining Scroll', 'Dead Ley Line Branch'),
('Thundering Pulse', 'Court of Flowing Sand', '225,000', 'Firm Arrowhead', 'Dismal Prism'),
('Traveler\'s Handy Sword', 'Cecilia Garden', '105,000', 'Divining Scroll', 'Chaos Device'),
('Twin Nephrite', 'Hidden Palace of Laishan Formula', '105,000', 'Recruit\'s Insignia', 'Mist Grass Pollen'),
('Vortex Vanquisher', 'Hidden Palace of Laishan Formula', '225,000', 'Treasure Hoarder\'s Insignia', 'Fragile Bone Shard'),
('Wandering Evenstar', 'Tower of Abject Pride', '150,000', 'Fungal Spores', 'Inactivated Fungal Nucleus'),
('Waster Greatsword', 'Cecilia Garden', '20,000', 'Slime Condensate', 'Dead Ley Line Branch'),
('Wavebreaker\'s Fin', 'Court of Flowing Sand', '150,000', 'Old Handguard', 'Concealed Claw'),
('White Iron Greatsword', 'Cecilia Garden', '105,000', 'Slime Condensate', 'Chaos Device'),
('White Tassel', 'Hidden Palace of Laishan Formula', '105,000', 'Recruit\'s Insignia', 'Hunter\'s Sacrificial Knife'),
('Whiteblind', 'Hidden Palace of Laishan Formula', '150,000', 'Treasure Hoarder\'s Insignia', 'Hunter\'s Sacrificial Knife'),
('Windblume Ode', 'Cecilia Garden', '150,000', 'Whopperflower Nectar', 'Dead Ley Line Branch'),
('Wine and Song', 'Cecilia Garden', '150,000', 'Treasure Hoarder\'s Insignia', 'Dead Ley Line Branch'),
('Wolf\'s Gravestone', 'Cecilia Garden', '225,000', 'Divining Scroll', 'Chaos Device'),
('Xiphos\' Moonlight', 'Tower of Abject Pride', '150,000', 'Faded Red Stain', 'Damaged Prism');

-- --------------------------------------------------------

--
-- Table structure for table `weapon_domain`
--

CREATE TABLE `weapon_domain` (
  `DOMAIN` varchar(33) NOT NULL PRIMARY KEY,
  `WEEKDAY1` varchar(9) DEFAULT NULL,
  `WEEKDAY2` varchar(8) DEFAULT NULL,
  `DROP1` varchar(33) DEFAULT NULL,
  `DROP2` varchar(32) DEFAULT NULL,
  `DROP3` varchar(33) DEFAULT NULL,
  `DROP4` varchar(37) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `weapon_domain`
--

INSERT INTO `weapon_domain` (`DOMAIN`, `WEEKDAY1`, `WEEKDAY2`, `DROP1`, `DROP2`, `DROP3`, `DROP4`) VALUES
('Cecilia Garden', 'Monday', 'Thursday', 'Tile of Decarabian\'s Tower', 'Debris of Decarabian\'s City', 'Fragment of Decarabian\'s Epic', 'Scattered Piece of Decarabian\'s Dream'),
('Cecilia Garden', 'Tuesday', 'Friday', 'Boreal Wolf\'s Milk Tooth', 'Boreal Wolf\'s Cracked Tooth', 'Boreal Wolf\'s Broken Fang', 'Boreal Wolf\'s Nostalgia'),
('Cecilia Garden', 'Wednesday', 'Saturday', 'Fetters of Dandelion Gladiator', 'Chains of Dandelion Gladiator', 'Shackles of Dandelion Gladiator', 'Dream of Dandelion Gladiator'),
('Hidden Palace of Lainshan Formula', 'Monday', 'Thursday', 'Luminous Sands from Guyun', 'Lustrous Stone from Guyun', 'Relic from Guyun', 'Divine Body from Guyun'),
('Hidden Palace of Lainshan Formula', 'Tuesday', 'Friday', 'Mist Veiled Lead Elixir', 'Mist Veiled Mercury Elixir', 'Mist Veiled Gold Elixir', 'Mist Veiled Primo Elixir'),
('Hidden Palace of Lainshan Formula', 'Wednesday', 'Saturday', 'Grain of Aerosiderite', 'Piece of Aerosiderite', 'Bit of Aerosiderite', 'Chunk of Aerosiderite'),
('Court of Flowing Sand', 'Monday', 'Thursday', 'Narukami’s Wisdom', 'Narukami’s Joy', 'Narukami’s Affection', 'Narukami’s Valor'),
('Court of Flowing Sand', 'Tuesday', 'Friday', 'Coral Branch of a Distant Sea', 'Jeweled Branch of a Distant Sea', 'Jade Branch of a Distant Sea', 'Golden Branch of a Distant Sea'),
('Court of Flowing Sand', 'Wednesday', 'Saturday', 'Mask of the Wicked Liutenant', 'Mask of the Tiger\'s Bite', 'Mask of the One-Horned', 'Mask of the Kijin'),
('Tower of Abject Pride', 'Monday', 'Thursday', 'Copper Talisman of the Forest Dew', 'Iron Talisman of the Forest Dew', 'Silver Talisman of the Forest Dew', 'Golden Talisman of the Forest Dew'),
('Tower of Abject Pride', 'Tuesday', 'Friday', 'Oasis Garden\'s Reminiscence', 'Oasis Garden\'s Kindness', 'Oasis Garden\'s Mourning', 'Oasis Garden\'s Truth'),
('Tower of Abject Pride', 'Wednesday', 'Saturday', 'Echo of Scorching Might', 'Remenant Glow of Scorching Might', 'Dream of Scorching Might', 'Olden Days of Scorching Might');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

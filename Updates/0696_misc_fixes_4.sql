-- Heavy Hide DropChance

-- classic/tbc/wotlk diff, align
-- 1511 2,9878 - https://www.wowhead.com/classic/npc=1511/enraged-silverback-gorilla#skinning
-- 1514 2,2989 - https://www.wowhead.com/classic/npc=1514/mokk-the-savage#skinning
-- 1516 1,3423 - https://www.wowhead.com/classic/npc=1516/konda#skinning
-- 4342 3 - https://www.wowhead.com/classic/npc=4342/drywallow-vicejaw#skinning
-- 4355 3 - https://www.wowhead.com/classic/npc=4355/bloodfen-scytheclaw#skinning
-- 4396 3 - https://www.wowhead.com/classic/npc=4396/mudrock-tortoise#skinning
-- 4398 3 - https://www.wowhead.com/classic/npc=4398/mudrock-burrower#skinning
-- 4399 2 - https://www.wowhead.com/classic/npc=4399/mudrock-borer#skinning
-- 4400 4 - https://www.wowhead.com/classic/npc=4400/mudrock-snapjaw#skinning
-- 4504 1,9231 - https://www.wowhead.com/classic/npc=4504/frostmaw#skinning
-- 6071 2,2718 - https://www.wowhead.com/classic/npc=6071/legion-hound#skinning
-- 6215 1,7857 - https://www.wowhead.com/classic/npc=6215/chomper#skinning
-- 8138 6,0672 - https://www.wowhead.com/classic/npc=8138/sullithuz-broodling#skinning
-- 10882 0,8368 - https://www.wowhead.com/classic/npc=10882/arikara#skinning
-- 14232 3,81 - https://www.wowhead.com/classic/npc=14232/dart#skinning
-- 14233 3,077 - https://www.wowhead.com/classic/npc=14233/ripscale#skinning - reinserts for classicmangos only (classic went wrong somehow)
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (1511, 4235, 2.9878, 1, 1, 1, 0, 'Heavy Hide');
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (1514, 4235, 2.2989, 1, 1, 1, 0, 'Heavy Hide');
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (1516, 4235, 1.3423, 1, 1, 1, 0, 'Heavy Hide');
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (4342, 4235, 3, 1, 1, 1, 0, 'Heavy Hide');
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (4355, 4235, 3, 1, 1, 1, 0, 'Heavy Hide');
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (4396, 4235, 3, 1, 1, 1, 0, 'Heavy Hide');
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (4398, 4235, 3, 1, 1, 1, 0, 'Heavy Hide');
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (4399, 4235, 2, 1, 1, 1, 0, 'Heavy Hide');
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (4400, 4235, 4, 1, 1, 1, 0, 'Heavy Hide');
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (4504, 4235, 1.9231, 1, 1, 1, 0, 'Heavy Hide');
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (6071, 4235, 2.2718, 1, 1, 1, 0, 'Heavy Hide');
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (6215, 4235, 1.7857, 1, 1, 1, 0, 'Heavy Hide');
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (8138, 4235, 6.0672, 1, 1, 1, 0, 'Heavy Hide');
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (10882, 4235, 0.8368, 1, 1, 1, 0, 'Heavy Hide');
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (14232, 4235, 3.81, 1, 1, 1, 0, 'Heavy Hide');
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (14233, 4235, 3.077, 1, 1, 1, 0, 'Heavy Hide');

-- https://github.com/cmangos/classic-db/commit/8bac77a1b455461779d6339a4dd5fb24d5556796#r179609522 - mistake in commit
-- https://www.wowhead.com/tbc/npc=2447/narillasanz#skinning
DELETE FROM `skinning_loot_template` WHERE `entry` = 2447;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(2447, 4234, 40, 1, 1, 2, 0, 'Heavy Leather'),
(2447, 4235, 5, 1, 1, 1, 0, 'Heavy Hide'),
(2447, 4304, 50, 1, 1, 2, 0, 'Thick Leather'),
(2447, 8169, 5, 1, 1, 1, 0, 'Thick Hide'),
(2447, 8165, 10, 2, 1, 1, 0, 'Worn Dragonscale');

-- more wrong templates, we dont want abuse

-- https://www.wowhead.com/tbc/npc=10136/chemist-fuely
UPDATE `creature_template` SET `SkinningLootId` = 0 WHERE `entry` = 10136;
DELETE FROM `skinning_loot_template` WHERE `entry` = 10136;

-- https://www.wowhead.com/tbc/npc=756/skullsplitter-panther
UPDATE `creature_template` SET `SkinningLootId` = 0 WHERE `entry` = 756;
DELETE FROM `skinning_loot_template` WHERE `entry` = 10240;

-- https://www.wowhead.com/tbc/npc=10237/yor-unused
UPDATE `creature_template` SET `SkinningLootId` = 0 WHERE `entry` = 10237;
DELETE FROM `skinning_loot_template` WHERE `entry` = 10237;

-- https://www.wowhead.com/tbc/npc=12741/warrior-40-more-leash
UPDATE `creature_template` SET `SkinningLootId` = 0 WHERE `entry` = 12741;
DELETE FROM `skinning_loot_template` WHERE `entry` = 12741;

-- vmangos unique temlpates better then our currents
-- https://www.wowhead.com/classic/npc=7997/captured-sprite-darter#skinning
UPDATE `creature_template` SET `SkinningLootId` = 7997 WHERE `entry` = 7997;
DELETE FROM `skinning_loot_template` WHERE `entry` = 7997;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(7997, 4234, 44, 1, 1, 1, 0), -- Heavy Leather
(7997, 4235, 3, 1, 1, 1, 0), -- Heavy Hide
(7997, 4304, 44, 1, 1, 1, 0), -- Thick Leather
(7997, 8165, 3, 1, 1, 1, 0), -- Worn Dragonscale
(7997, 8169, 6, 1, 1, 1, 0); -- Thick Hide

UPDATE `creature_template` SET `SkinningLootId` = 14280 WHERE `entry` = 14280;
DELETE FROM `skinning_loot_template` WHERE `entry` = 14280;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(14280, 2319, 60, 1, 1, 1, 0), -- Medium Leather
(14280, 4234, 35, 1, 1, 1, 0), -- Heavy Leather
(14280, 4235, 5, 1, 1, 1, 0); -- Heavy Hide

-- https://www.wowhead.com/wotlk/npc=976/kurzen-war-tiger#skinning
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 3 WHERE `entry` = 976 AND `item` = 4232; -- Medium Hide
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 47 WHERE `entry` = 976 AND `item` = 2319; -- Medium Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 47 WHERE `entry` = 976 AND `item` = 4234; -- Heavy Leather
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(976, 4235, 3, 1, 1, 1, 0, 'Heavy Hide');

-- https://www.wowhead.com/classic/npc=2347/wild-gryphon#skinning
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 77 WHERE `entry` = 2347 AND `item` = 4234; -- Heavy Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 22 WHERE `entry` = 2347 AND `item` = 4304; -- Thick Leather
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(2347, 4235, 1, 1, 1, 1, 0, 'Heavy Hide');

-- https://www.wowhead.com/classic/npc=4339/brimgore#skinning
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 30 WHERE `entry` = 4339 AND `item` = 4234; -- Heavy Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 65 WHERE `entry` = 4339 AND `item` = 4304; -- Thick Leather
DELETE FROM `skinning_loot_template` WHERE `entry` = 4339 AND `item` = 8169; -- Thick Hide
UPDATE `skinning_loot_template` SET `groupid` = 0 WHERE `entry` = 4339 AND `item` = 8165; -- Worn Dragonscale
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(4339, 4235, 5, 1, 1, 1, 0, 'Heavy Hide');

-- https://www.wowhead.com/classic/npc=4425/blind-hunter#skinning
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 50 WHERE `entry` = 4425 AND `item` = 4234; -- Heavy Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 40 WHERE `entry` = 4425 AND `item` = 2319; -- Medium Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 5 WHERE `entry` = 4425 AND `item` = 4232; -- Medium Hide
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(4425, 4235, 5, 1, 1, 1, 0, 'Heavy Hide');

-- https://www.wowhead.com/classic/npc=4660/maraudine-bonepaw#skinning
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 75 WHERE `entry` = 4660 AND `item` = 4234; -- Heavy Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 20 WHERE `entry` = 4660 AND `item` = 4304; -- Thick Leather
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(4660, 4235, 5, 1, 1, 1, 0, 'Heavy Hide');

-- https://www.wowhead.com/classic/npc=14223/cranky-benj#skinning
UPDATE `creature_template` SET `SkinningLootId` = 14223 WHERE `entry` = 14223; -- 100002
DELETE FROM `skinning_loot_template` WHERE `entry` = 14223;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(14223, 4234, 75, 1, 1, 1, 0, 'Heavy Leather'),
(14223, 4304, 20, 1, 1, 1, 0, 'Thick Leather'),
(14223, 4235, 5, 1, 1, 1, 0, 'Heavy Hide'),
(14223, 8167, 20, 2, 1, 1, 0, 'Turtle Scale');

-- https://www.wowhead.com/classic/npc=534/nefaru#skinning
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 50 WHERE `entry` = 534 AND `item` = 4234; -- Heavy Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 40 WHERE `entry` = 534 AND `item` = 2319; -- Medium Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 5 WHERE `entry` = 534 AND `item` = 4232; -- Medium Hide
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(534, 4235, 5, 1, 1, 1, 0, 'Heavy Hide');

-- https://www.wowhead.com/classic/npc=5935/ironeye-the-invincible#skinning
UPDATE `creature_template` SET `SkinningLootId` = 5935 WHERE `entry` = 5935; -- 100004
DELETE FROM `skinning_loot_template` WHERE `entry` = 5935;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5935, 4234, 65, 1, 1, 2, 0, 'Heavy Leather'),
(5935, 4304, 30, 1, 1, 2, 0, 'Thick Leather'),
(5935, 4235, 5, 1, 1, 1, 0, 'Heavy Hide');

-- https://www.wowhead.com/classic/npc=8208/murderous-blisterpaw#skinning
UPDATE `creature_template` SET `SkinningLootId` = 8208 WHERE `entry` = 8208; -- 100004
DELETE FROM `skinning_loot_template` WHERE `entry` = 8208;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(8208, 4234, 45, 1, 1, 1, 0, 'Heavy Leather'),
(8208, 4304, 50, 1, 1, 1, 0, 'Thick Leather'),
(8208, 4235, 5, 1, 1, 1, 0, 'Heavy Hide');

-- ============
-- classic only
-- ============
-- https://www.wowhead.com/classic/npc=1559/king-mukla#skinning - classic only
DELETE FROM `skinning_loot_template` WHERE `entry` = 1559;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1559, 8170, 50, 1, 1, 2, 0, 'Rugged Leather'),
(1559, 4304, 40, 1, 1, 2, 0, 'Thick Leather'),
(1559, 8171, 5, 1, 1, 1, 0, 'Rugged Hide'),
(1559, 8169, 5, 1, 1, 1, 0, 'Thick Hide');

-- https://www.wowhead.com/classic/npc=3792/terrowulf-packlord#skinning - classic only
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 55 WHERE `entry` = 3792 AND `item` = 4234; -- Heavy Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 40 WHERE `entry` = 3792 AND `item` = 2319; -- Medium Leather
DELETE FROM `skinning_loot_template` WHERE `entry` = 3792 AND `item` = 4235; -- Heavy Hide
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(3792, 4232, 5, 1, 1, 1, 0, 'Medium Hide');
-- ============

-- =========
-- tbc+ only
-- =========
-- https://www.wowhead.com/tbc/npc=1559/king-mukla#skinning - tbc+ only
DELETE FROM `skinning_loot_template` WHERE `entry` = 1559;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1559, 4304, 50, 1, 1, 1, 0, 'Thick Leather'),
(1559, 4234, 40, 1, 1, 1, 0, 'Heavy Leather'),
(1559, 8169, 5, 1, 1, 1, 0, 'Thick Hide'),
(1559, 4235, 5, 1, 1, 1, 0, 'Heavy Hide');

-- https://www.wowhead.com/tbc/npc=3792/terrowulf-packlord#skinning - tbc+ only
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 55 WHERE `entry` = 3792 AND `item` = 4234; -- Heavy Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 40 WHERE `entry` = 3792 AND `item` = 2319; -- Medium Leather
DELETE FROM `skinning_loot_template` WHERE `entry` = 3792 AND `item` = 4232; -- Medium Hide
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(3792, 4235, 5, 1, 1, 1, 0, 'Heavy Hide');

-- https://www.wowhead.com/tbc/npc=23873/goreclaw-the-ravenous#skinning - tbc+ only
UPDATE `creature_template` SET `SkinningLootId` = 23873 WHERE `entry` = 23873;
DELETE FROM `skinning_loot_template` WHERE `entry` = 23873;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23873, 4234, 75, 1, 1, 1, 0, 'Heavy Leather'),
(23873, 4304, 20, 1, 1, 1, 0, 'Thick Leather'),
(23873, 4235, 5, 1, 1, 1, 0, 'Heavy Hide');
-- =========



2026-03-22 13:13:01 Table 'skinning_loot_template' entry 2447 group 1 has total chance > 100% (106.000000)


SELECT * FROM skinning_loot_template where item IN (4235) order by entry;
SELECT * FROM skinning_loot_template where entry IN (4339) order by entry;
SELECT * FROM creature_template where entry IN (205,206,507,533,681,682,683,684,685,686,687,688,689,690,728,729,730,736,740,741,742,743,744,745,746,767,768,772,854,855,856,898,920,976,977,1018,1019,1023,1044,1082,1084,1085,1087,1108,1114,1150,1151,1152,1353,1511,1514,1516,1550,1551,1552,1557,1558,1559,1713,2248,2249,2250,2251,2347,2385,2406,2407,2408,2447,2452,2473,2474,2559,2560,2561,2635,2657,2658,2725,2726,2727,2728,2729,2730,2731,2732,2734,2753,2923,2924,3476,3789,3791,3792,3811,3815,3818,3825,3927,4017,4041,4066,4107,4109,4110,4118,4119,4124,4139,4140,4142,4143,4144,4147,4150,4151,4248,4249,4274,4304,4323,4324,4328,4329,4331,4334,4339,4341,4342,4343,4344,4345,4346,4347,4348,4351,4352,4355,4356,4357,4388,4389,4390,4396,4397,4398,4399,4400,4422,4504,4512,4538,4539,4548,4662,4678,4681,4685,4688,4689,4690,4696,4697,4699,4700,4701,4702,4726,4727,4728,4729,4825,4829,4830,4841,4861,4863,5224,5260,5268,5272,5278,5286,5287,5292,5293,5295,5300,5304,5305,5307,5308,5356,5419,5420,5422,5423,5425,5426,5827,5934,6071,6167,6170,6215,7022,7078,7268,7333,7334,7405,7997,8138,8211,8437,10131,10882,10992,11785,11786,12676,12677,13602,14123,14227,14228,14232,14233,14234,14280,23873,100005) or skinninglootid = 100005;
SELECT * FROM creature_template where entry IN (4422, 4830, 14234, 2753, 3792, 6215, 14227, 4863, 8208, 8211, 11785, 11786, 7334, 746, 4331, 4334, 4328, 4329, 744, 742, 1559, 4347, 2726, 4861, 8138, 7022, 743, 3927, 728, 4425, 4390, 2635, 10992, 507, 23873, 4539, 5935, 4685, 5287, 5286, 4678, 2923, 1514, 4398, 5224, 534, 2730, 745, 4304, 2924, 4689, 7333, 740, 4700, 4825, 4702, 5426, 4357, 4351, 4356, 4352, 4355, 4688, 7997, 7078, 690, 2727, 689, 7405, 741, 4341, 4345, 4343, 4342, 4701, 2729, 1557, 1713, 1085, 4727, 5295, 1511, 2728, 5292, 2249, 5300, 5305, 5304, 2251, 5419, 5420, 2473, 4728, 5272, 5260, 6170, 8437, 2561, 2560, 4110, 5293, 4729, 2407, 5268, 1551, 687, 1114, 1516, 4538, 2474, 976, 686, 4681, 4660, 1108, 4344, 2406, 2250, 4399, 4400, 4397, 4396, 4348, 736, 4690, 4726, 2658, 2732, 2731, 2734, 5308, 4512, 4151, 4150, 1151, 7268, 1082, 1087, 2725, 4696, 5422, 4140, 5423, 4139, 4323, 4324, 768, 684, 12677, 1558, 729, 1152, 4144, 4143, 5278, 5425, 14123, 688, 685, 682, 772, 767, 730, 1550, 2657, 5307, 856, 4388, 1084, 4274, 4119, 3818, 2385, 3825, 2559, 4109, 4107, 1023, 4124, 205, 533, 920, 4248, 4249, 1150, 4147, 4041, 4697, 4699, 4142, 4118, 854, 2248, 206, 898, 2408, 3789, 3791, 683, 681);

UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = XXX WHERE `entry` = XXX AND `item` = 4232; -- Medium Hide
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = XXX WHERE `entry` = XXX AND `item` = 2319; -- Medium Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = XXX WHERE `entry` = XXX AND `item` = 4234; -- Heavy Leather


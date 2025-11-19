-- Rework all Elwyn Forest NPCs into spell_lists
-- Rechecking passives, timers and targets for all spells

-- Forest Spider
-- old ACID: ('3001','30','11','0','100','0','0','0','0','0','0','0','11','11959','0','34','0','0','0','0','0','0','0','0','Forest Spider - Cast Poison Proc on Spawn'),
-- Passive via creature_template_addon 
DELETE FROM creature_template_addon WHERE entry = 30;
INSERT INTO creature_template_addon (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES (30, 0, 0, 1, 0, 0, 11959);


-- Kobold Miner
-- Tests on classic showed a higher cd then we had
-- old ACID: ('4001','40','0','0','100','1025','4000','14100','38000','42000','0','0','11','6016','1','0','0','0','0','0','0','0','0','0','Kobold Miner - Cast Pierce Armor'),
DELETE FROM `creature_template_spells` WHERE `entry` = 40;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 4001;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(4001, 'Elwynn Forest - Kobold Miner', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 4001;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(4001, 1, 6016, 0, -1, 1, 0, 100, 0, 5000, 18000, 42000, 60000, 'Kobold Miner - Pierce Armor - current');

UPDATE `creature_template` SET `SpellList` = 4001 WHERE `entry` = 40;

-- Mine Spider
-- Old ACID: ('4301','43','1','0','100','0','1000','1000','0','0','0','0','11','11959','0','32','0','0','0','0','0','0','0','0','Mine Spider - Cast Poison Proc OOC'),
-- Passive via creature_template_addon 
DELETE FROM creature_template_addon WHERE entry = 43;
INSERT INTO creature_template_addon (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES (43, 0, 0, 1, 0, 0, 11959);


-- Murloc Forager
-- Only on self, casted when under 50% (unit_condition)
-- old ACID: ('4601','46','2','0','100','1024','40','0','0','0','0','0','11','3368','0','0','0','0','0','0','0','0','0','0','Murloc Forager - Drink Minor Potion at 40% HP'),
DELETE FROM `creature_template_spells` WHERE `entry` = 46;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 4601;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(4601, 'Elwynn Forest - Murloc Forager', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 4601;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(4601, 1, 3368, 0, 281, 2, 0, 100, 0, 2000, 8000, 28000, 34000, 'Murloc Forager - Pierce Armor - self');

UPDATE `creature_template` SET `SpellList` = 4601 WHERE `entry` = 46;


-- Ruklar the Trapper
-- Timer for Pierce Armor adjusted, timer for net adjusted
-- old ACID ('6001','60','0','0','100','1025','19600','19600','21000','31000','0','0','11','12024','1','0','0','0','0','0','0','0','0','0','Ruklar the Trapper - Cast Net'),
-- old ACID ('6002','60','0','0','100','1025','4300','8200','45000','50000','0','0','11','6016','1','0','0','0','0','0','0','0','0','0','Ruklar the Trapper - Cast Pierce Armor'),
DELETE FROM `creature_template_spells` WHERE `entry` = 60;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 6001;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(6001, 'Elwynn Forest - Ruklar the Trapper', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 6001;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(6001, 1, 12024, 0, -1, 1, 0, 100, 0, 2000, 14000, 18000, 32000, 'Ruklar the Trapper - Net - current'),
(6001, 2, 6016, 0, -1, 1, 0, 100, 0, 5000, 18000, 40000, 60000, 'Ruklar the Trapper - Pierce Armor - current');

UPDATE `creature_template` SET `SpellList` = 6001 WHERE `entry` = 60;

-- Thuros Lightfingers
-- old ACID ('6101','61','33','0','100','1025','0','0','3400','5400','0','0','11','7159','1','0','0','0','0','0','0','0','0','0','Thuros Lightfingers - Cast Backstab on Facing Target Back'),
DELETE FROM `creature_template_spells` WHERE `entry` = 61;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 6101;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(6101, 'Elwynn Forest - Thuros Lightfingers', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 6101;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(6101, 1, 7159, 0, -1, 1, 0, 100, 0, 2000, 5000, 3000, 6000, 'Thuros Lightfingers - Backstab - current');

UPDATE `creature_template` SET `SpellList` = 6101 WHERE `entry` = 61;


-- Narg the Taskmaster
-- Timer adjusted to classic tests
-- old acid ('7902','79','0','0','100','1025','2000','4000','18000','29000','0','0','11','9128','0','0','0','0','0','0','0','0','0','0','Narg the Taskmaster - Cast Battleshout'),
DELETE FROM `creature_template_spells` WHERE `entry` = 79;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 7901;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(7901, 'Elwynn Forest - Narg the Taskmaster', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 7901;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(7901, 1, 9128, 0, -1, 2, 0, 100, 0, 2000, 8000, 15000, 25000, 'Narg the Taskmaster - Battleshout - self');

UPDATE `creature_template` SET `SpellList` = 7901 WHERE `entry` = 79;

-- Defias Cutpurse
-- Timer adjusted to classic tests
-- old acid ('9402','94','33','0','100','1025','0','0','2400','7900','0','0','11','53','1','0','0','0','0','0','0','0','0','0','Defias Cutpurse - Cast Backstab on Facing Target Back'),
DELETE FROM `creature_template_spells` WHERE `entry` = 94;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 9401;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(9401, 'Elwynn Forest - Defias Cutpurse', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 9401;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(9401, 1, 53, 0, -1, 1, 0, 100, 0, 0, 8000, 1000, 12000, 'Defias Cutpurse - Backstab - current');

UPDATE `creature_template` SET `SpellList` = 9401 WHERE `entry` = 94;

-- Morgaine the Sly
-- Passive via creature_template_addon 
-- Timer for backstab and gouge adjusted, both can get casted on first hit (initmin 0), spell_ids confirmed from classic sniffs
DELETE FROM creature_template_addon WHERE entry = 99;
INSERT INTO creature_template_addon (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES (99, 0, 0, 1, 0, 0, 11959);
-- Old ACID:
-- ('9901','99','11','0','100','0','0','0','0','0','0','0','11','11959','0','34','0','0','0','0','0','0','0','0','Morgaine the Sly - Cast Poison Proc on Spawn'),
-- ('9902','99','33','0','100','1025','1','0','16300','16300','0','0','11','1776','1','0','0','0','0','0','0','0','0','0','Morgaine the Sly - Cast Gouge on Facing Target'),
-- ('9903','99','33','0','100','1025','0','0','3400','5400','0','0','11','53','1','0','0','0','0','0','0','0','0','0','Morgaine the Sly - Cast Backstab on Facing Target Back'),
DELETE FROM `creature_template_spells` WHERE `entry` = 99;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 9901;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(9901, 'Elwynn Forest - Morgaine the Sly', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 9901;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(9901, 1, 1776, 0, -1, 1, 0, 100, 0, 0, 10000, 20000, 30000, 'Morgaine the Sly - Gouge - current'),
(9901, 2, 53, 0, -1, 1, 0, 100, 0, 0, 8000, 1000, 12000, 'Morgaine the Sly - Backstab - current');

UPDATE `creature_template` SET `SpellList` = 9901 WHERE `entry` = 99;

-- TODO:
-- Stonetusk Boar
-- Casts Rushing Charge when player is not in melee range 
-- old acid: ('11301','113','9','0','100','1025','10','60','7000','9000','0','0','11','6268','0','0','0','0','0','0','0','0','0','0','Stonetusk Boar - Cast Rushing Charge'),
DELETE FROM `creature_template_spells` WHERE `entry` = 113;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 11301;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(11301, 'Elwynn Forest - Stonetusk Boar', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 11301;
-- unit_condition 
-- id 361 - Number of melee attackers EQUAL TO 0
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(11301, 1, 6268, 0, 361, 0, 0, 100, 0, 0, 4000, 2000, 6000, 'Stonetusk Boar - Rushing Charge - current');

UPDATE `creature_template` SET `SpellList` = 11301 WHERE `entry` = 113;


-- Defias Bandit
-- Timer adjusted to classic tests, cd was realy high
-- old acid ('11602','116','0','0','65','1025','4000','7000','5000','9000','0','0','11','8646','1','0','0','0','0','0','0','0','0','0','Defias Bandit - Cast Snap Kick')
DELETE FROM `creature_template_spells` WHERE `entry` = 116;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 11601;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(11601, 'Elwynn Forest - Defias Bandit', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 11601;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(11601, 1, 8646, 0, -1, 0, 0, 100, 0, 2000, 25000, 24000, 60000, 'Defias Bandit - Snap Kick - current');

UPDATE `creature_template` SET `SpellList` = 11601 WHERE `entry` = 116;

-- ToDO:
-- Longsnout
-- old acid ('11901','119','9','0','100','1025','10','60','7000','9000','0','0','11','6268','0','0','0','0','0','0','0','0','0','0','Longsnout - Cast Rushing Charge'),
DELETE FROM `creature_template_spells` WHERE `entry` = 119;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 11901;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(11901, 'Elwynn Forest - Stonetusk Boar', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 11901;
-- unit_condition 
-- id 361 - Number of melee attackers EQUAL TO 0
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(11901, 1, 6268, 0, 361, 0, 0, 100, 0, 0, 4000, 2000, 6000, 'Longsnout - Rushing Charge - current');

UPDATE `creature_template` SET `SpellList` = 11901 WHERE `entry` = 119;
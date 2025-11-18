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
(6001, 2, 6016, 0, -1, 1, 0, 100, 0, 5000, 18000, 42000, 60000, 'Ruklar the Trapper - Pierce Armor - current');

UPDATE `creature_template` SET `SpellList` = 6001 WHERE `entry` = 60;
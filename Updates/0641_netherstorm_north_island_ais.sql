-- ----------------
-- Netherstorm 
-- North Island
-- ---------------

-- Gan''arg Warp-Tinker
DELETE FROM `creature_template_spells` WHERE `entry` = 20285;
DELETE FROM `creature_spell_list_entry` WHERE `Id`= 2028501;

INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2028501, 'Netherstorm - Gan''arg Warp-Tinker', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2028501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2028501, 1, 36846, 0, -1, 105, 0, 100, 0, 3000, 15000, 10000, 20000, 'Gan''arg Warp-Tinker - Mana Bomb - random mana user'),
(2028501, 2, 36208, 0, -1, 1, 0, 100, 0, 6000, 17000, 12000, 23000, 'Gan''arg Warp-Tinker - Steal Weapon - current');

UPDATE `creature_template` SET `SpellList` = 2028501 WHERE `entry` = 20285;


-- Mo''arg Warp-Master
DELETE FROM `creature_template_spells` WHERE `entry` = 20326;
DELETE FROM `creature_spell_list_entry` WHERE `Id`= 2032601;

INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2032601, 'Netherstorm - Mo''arg Warp-Master', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2032601);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2032601, 1, 36486, 0, -1, 1, 0, 100, 0, 12000, 18000, 12000, 18000, 'Mo''arg Warp-Master - Slime Spray - current');

UPDATE `creature_template` SET `SpellList` = 2032601 WHERE `entry` = 20326;


-- Sunfury Nethermancer
DELETE FROM `creature_template_spells` WHERE `entry` = 20248;
DELETE FROM `creature_spell_list_entry` WHERE `Id`= 2024801;

INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2024801, 'Netherstorm - Sunfury Nethermancer', 80, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2024801);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2024801, 1, 17173, 0, -1, 1, 0, 100, 0, 4000, 12000, 6000, 14000, 'Sunfury Nethermancer - Drain Life - current'),
(2024801, 2, 9613, 1, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Sunfury Nethermancer - Shadow Bolt - current');

UPDATE `creature_template` SET `SpellList` = 2024801 WHERE `entry` = 20248;


-- Overmaster Grindgarr
DELETE FROM `creature_template_spells` WHERE `entry` = 20803;
DELETE FROM `creature_spell_list_entry` WHERE `Id`= 2080301;

INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2080301, 'Netherstorm - Overmaster Grindgarr', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2080301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2080301, 1, 35238, 0, -1, 1, 0, 100, 0, 10000, 18000, 10000, 18000, 'Overmaster Grindgarr - War Stomp - current'),
(2080301, 2, 36487, 0, -1, 0, 0, 100, 0, 15000, 18000, 15000, 18000, 'Overmaster Grindgarr - Fel Flames - none');

UPDATE `creature_template` SET `SpellList` = 2080301 WHERE `entry` = 20803;

-- Mana Beast
DELETE FROM `creature_template_spells` WHERE `entry` = 21267;
DELETE FROM `creature_spell_list_entry` WHERE `Id`= 2126701;

INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2126701, 'Netherstorm - Mana Beast', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2126701);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2126701, 1, 36484, 0, -1, 105, 0, 100, 0, 6000, 12000, 6000, 12000, 'Mana Beast - Mana Burn - random mana user');

UPDATE `creature_template` SET `SpellList` = 2126701 WHERE `entry` = 21267;




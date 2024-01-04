-- Mechanar updates
-- Sunseeker Netherbinder, Bloodwarder Physician, Bloodwarder Centurion, Tempest-Forge Patroller, Bloodwarder Slayer, Sunseeker Engineer
-- All have Walkspeed 2.5 (/2.5 = 1) in sniffs
-- [25] WalkSpeed: 2.5
UPDATE creature_template SET SpeedWalk= '1' WHERE Entry IN (20059, 21541, 20990, 21523, 19510, 21522, 19166, 21543, 19167, 21524, 20988, 21540);

-- Mechanar Driller
-- [1] UpdateType: CreateObject1
-- [1] Object Guid: Full: 0x20458045401340000026B70000170CBF Creature/0 R4448/S9911 Map: 554 Entry: 19712 Low: 1510591
-- [1] WalkSpeed: 2,36110997200012207 (/.24 = 0,9444439888
UPDATE creature_template SET SpeedWalk= '0.9444' WHERE Entry IN (19712, 21528);

-- SpellLists
-- Tempest-Forge Patroller 19166
DELETE FROM `creature_template_spells` WHERE `entry` IN (19166, 21543);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1916601, 2154301);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1916601, 'The Mechanar - Tempest-Forge Patroller - Normal', 0, 0),
(2154301, 'The Mechanar - Tempest-Forge Patroller - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1916601, 2154301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1916601, 1, 35011, 0, -1, 1, 0, 100, 0, 13000, 23000, 11000, 24000, 'Tempest-Forge Patroller - Knockdown - current'),
(1916601, 2, 35012, 0, -1, 1, 0, 100, 0, 6000, 15000, 6000, 15000, 'Tempest-Forge Patroller - Charged Arcane Missle - current'),
(2154301, 1, 35011, 0, -1, 1, 0, 100, 0, 13000, 23000, 11000, 24000, 'Tempest-Forge Patroller - Knockdown - current'),
(2154301, 2, 38941, 0, -1, 1, 0, 100, 0, 6000, 15000, 6000, 15000, 'Tempest-Forge Patroller - Charged Arcane Missle - current');

UPDATE `creature_template` SET `SpellList` = 1916601 WHERE `entry` = 19166;
UPDATE `creature_template` SET `SpellList` = 2154301 WHERE `entry` = 21543;


-- Sunseeker Netherbinder 20059
DELETE FROM `creature_template_spells` WHERE `entry` IN (20059, 21541);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2005901, 2154101);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2005901, 'The Mechanar - Sunseeker Netherbinder - Normal', 0, 0),
(2154101, 'The Mechanar - Sunseeker Netherbinder - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2005901, 2154101);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2005901, 1, 17201, 0, -1, 4, 0, 100, 0, 5000, 12000, 12000, 17000, 'Sunseeker Netherbinder - Dispel Magic - friendly cc'),
(2005901, 2, 35261, 0, -1, 4, 0, 100, 0, 11000, 23000, 15000, 25000, 'Sunseeker Netherbinder - Arcane Nova - current'),
(2005901, 3, 35243, 0, -1, 4, 0, 100, 0, 6000, 16000, 12000, 18000, 'Sunseeker Netherbinder - Starfire - current'),
(2154101, 1, 17201, 0, -1, 4, 0, 100, 0, 5000, 12000, 12000, 17000, 'Sunseeker Netherbinder - Dispel Magic - friendly cc'),
(2154101, 2, 38936, 0, -1, 4, 0, 100, 0, 11000, 23000, 15000, 25000, 'Sunseeker Netherbinder - Arcane Nova - current'),
(2154101, 3, 38935, 0, -1, 4, 0, 100, 0, 6000, 16000, 12000, 18000, 'Sunseeker Netherbinder - Starfire - current');

UPDATE `creature_template` SET `SpellList` = 2005901 WHERE `entry` = 20059;
UPDATE `creature_template` SET `SpellList` = 2154101 WHERE `entry` = 21541;

-- Mechanar updates
-- Sunseeker Netherbinder, Bloodwarder Physician, Bloodwarder Centurion, Tempest-Forge Patroller, Bloodwarder Slayer
-- All have Walkspeed 2.5 (/2.5 = 1) in sniffs
-- [25] UpdateType: CreateObject2
-- [25] Object Guid: Full: 0x2045D445401396C000088E000015832D Creature/0 R4469/S2190 Map: 554 Entry: 20059 Low: 1409837
-- [25] WalkSpeed: 2.5
UPDATE creature_template SET SpeedWalk= '1' WHERE Entry IN (20059, 21541, 20990, 21523, 19510, 21522, 19166, 21543, 19167, 21524);

-- SpellList
-- Tempest-Forge Patroller 19166
DELETE FROM `creature_template_spells` WHERE `entry` IN (19166, 21543);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1916601, 2154301);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1916601, 'The Mechanar - Tempest-Forge Patroller - Normal', 0, 90),
(2154301, 'The Mechanar - Tempest-Forge Patroller - Heroic', 0, 90);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1916601, 2154301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1916601, 1, 35011, 0, -1, 1, 0, 100, 0, 13000, 23000, 11000, 24000, 'Tempest-Forge Patroller - Knockdown - current'),
(1916601, 1, 35012, 0, -1, 1, 0, 100, 0, 6000, 15000, 6000, 15000, 'Tempest-Forge Patroller - Charged Arcane Missle - current'),
(2154301, 1, 35011, 0, -1, 1, 0, 100, 0, 13000, 23000, 11000, 24000, 'Tempest-Forge Patroller - Knockdown - current'),
(2154301, 1, 38941, 0, -1, 1, 0, 100, 0, 6000, 15000, 6000, 15000, 'Tempest-Forge Patroller - Charged Arcane Missle - current');

UPDATE `creature_template` SET `SpellList` = 1916601 WHERE `entry` = 19166;
UPDATE `creature_template` SET `SpellList` = 2154301 WHERE `entry` = 21543;

-- Terestian Illhoof AI rework
DELETE FROM `creature_template_spells` WHERE `entry` IN (1726701);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1726701);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1726701, 'Karazhan - Fiendish Imp', 0, 90);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1726701);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- Fiendish Imp
(1726701, 1, 30050, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Fiendish Imp - Fireball - current');

UPDATE `creature_template` SET `SpellList` = 1726701 WHERE `entry` = 17267;

-- UPDATE broadcast_text SET ChatTypeID = 2 WHERE Id = 1191;


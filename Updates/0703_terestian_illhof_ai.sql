-- Terestian Illhoof AI rework
DELETE FROM `creature_template_spells` WHERE `entry` IN (1568801, 1722901, 1726701);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1568801, 1722901, 1726701);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1568801, 'Karazhan - Terestian Illhoof', 0, 0),
(1722901, 'Karazhan - Kil''rek', 0, 0),
(1726701, 'Karazhan - Fiendish Imp', 0, 90);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1568801, 1722901, 1726701);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- Terestian Illhoof
(1568801, 1, 30115, 0, -1, 101, 0, 100, 0, 30000, 35000, 40000, 50000, 'Terestian Illhoof - Sacrifice - random not tank'),
(1568801, 2, 30055, 0, -1, 1, 0, 100, 0, 5000, 7000, 6000, 16000, 'Terestian Illhoof - Shadow Bolt - current'),
--  Kil''rek
(1722901, 1, 30053, 0, -1, 121, 0, 100, 0, 4000, 7000, 9000, 12000, 'Kil''rek - Amplify Flames - random aura not present'),
-- Fiendish Imp
(1726701, 1, 30050, 2, -1, 1, 0, 100, 0, 2000, 2000, 0, 0, 'Fiendish Imp - Fireball - current');

UPDATE `creature_template` SET `SpellList` = 1568801 WHERE `entry` = 15688;
UPDATE `creature_template` SET `SpellList` = 1722901 WHERE `entry` = 17229;
UPDATE `creature_template` SET `SpellList` = 1726701 WHERE `entry` = 17267;

UPDATE broadcast_text SET ChatTypeID = 2 WHERE Id = 13582;

UPDATE broadcast_text SET ChatTypeID = 1 WHERE Id IN (15145, 15146, 15137, 15141, 15147, 15148, 15150, 15151, 13582);
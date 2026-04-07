-- Karazhan - Midnight AI
DELETE FROM `creature_template_spells` WHERE `entry` IN (1555001, 1615101, 1615201);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1555001, 1615101, 1615102, 1615201);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1555001, 'Karazhan - Attumen the Huntsman - Phase 2', 0, 0),
(1615101, 'Karazhan - Midnight - Phase 1', 0, 0),
(1615102, 'Karazhan - Midnight - Phase 2', 0, 0),
(1615201, 'Karazhan - Attumen the Huntsman - Phase 3 - Mounted', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1555001, 1615101, 1615102, 1615201);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- Attumen the Huntsman
(1555001, 1, 29833, 0, -1, 2, 0, 100, 0, 30000, 30000, 30000, 30000, 'Attumen the Huntsman - Intangible Presence - self'),
(1555001, 2, 29850, 0, -1, 1, 0, 100, 0, 6000, 9000, 22000, 30000, 'Attumen the Huntsman - Upercut - current'),
(1555001, 3, 29832, 0, -1, 1, 0, 100, 0, 10000, 16000, 22000, 30000, 'Attumen the Huntsman - Shadow Cleave - current'),
-- Midnight
(1615101, 1, 29714, 0, 541, 0, 0, 100, 0, 0, 0, 0, 0, 'Midnight - Summon Attumen - under 95%'),
(1615101, 2, 29711, 0, -1, 1, 0, 100, 0, 6000, 9000, 25000, 35000, 'Midnight - Knockdown - current'),
(1615102, 1, 29770, 0, 1201, 0, 0, 100, 0, 0, 0, 0, 0, 'Midnight - Cast Mount - under 25%'),
(1615102, 2, 29711, 0, -1, 1, 0, 100, 0, 6000, 9000, 25000, 35000, 'Midnight - Knockdown - current'),
-- Attumen the Huntsman Mounted (Phase 3)
(1615201, 1, 29833, 0, -1, 2, 0, 100, 0, 30000, 30000, 30000, 30000, 'Attumen the Huntsman - Intangible Presence - self'),
(1615201, 2, 29847, 0, -1, 101, 0, 100, 0, 20000, 20000, 12000, 20000, 'Attumen the Huntsman - Charge - random not tank'),
(1615201, 3, 29711, 0, -1, 1, 0, 100, 0, 6000, 9000, 22000, 30000, 'Attumen the Huntsman - Knockdown - current'),
(1615201, 4, 29832, 0, -1, 1, 0, 100, 0, 10000, 16000, 22000, 30000, 'Attumen the Huntsman - Shadow Cleave - current');


UPDATE `creature_template` SET `SpellList` = 1555001 WHERE `entry` = 15550;
UPDATE `creature_template` SET `SpellList` = 1615101 WHERE `entry` = 16151;
UPDATE `creature_template` SET `SpellList` = 1615201 WHERE `entry` = 16152;

UPDATE broadcast_text SET ChatTypeID = 2 WHERE Id = 13439;

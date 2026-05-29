-- -----------
-- Serpentshrine Cavern
-- SpellLists
-- -----------

-- Coilfang Beast-Tamer
DELETE FROM `creature_template_spells` WHERE `entry` = 21221;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2122101;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2122101, 'Serpentshrine Cavern - Coilfang Beast-Tamer', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2122101;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2122101, 1, 38484, 0, -1, 0, 0, 100, 0, 6000, 10000, 18000, 22000, 'Coilfang Beast-Tamer - Bestial Wrath - none'),
(2122101, 2, 38474, 0, -1, 1, 0, 100, 0, 6000, 14000, 6000, 21000, 'Coilfang Beast-Tamer - Cleave - current');

UPDATE `creature_template` SET `SpellList` = 2122101 WHERE `entry` = 21221;


-- Serpentshrine Sporebat
-- ServerToClient: SMSG_SPELL_START (0x630029) Length: 130 ConnIdx: 1 Time: 05/20/2026 21:38:48.857 Number: 902684
-- (Cast) CasterGUID: Full: 0x206470448014BF800021B700020E0C43 Creature/0 R6428/S8631 Map: 548 Entry: 21246 Low: 34475075
-- (Cast) CasterUnit: Full: 0x206470448014BF800021B700020E0C43 Creature/0 R6428/S8631 Map: 548 Entry: 21246 Low: 34475075
-- (Cast) CastID: Full: 0xBC64704480258F430021B7000A0E0DC8 Cast/3 R6428/S8631 Map: 548 Entry: 38461 Low: 168693192
-- (Cast) SpellID: 38461 (38461)
DELETE FROM `creature_template_spells` WHERE `entry` = 21246;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2124601;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2124601, 'Serpentshrine Cavern - Serpentshrine Sporebat', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2124601;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2124601, 1, 38461, 0, -1, 100, 0, 100, 0, 4000, 9000, 11000, 14000, 'Serpentshrine Sporebat - Charge - random');


UPDATE `creature_template` SET `SpellList` = 2124601 WHERE `entry` = 21246;


-- Coilfang Hate-Screamer
DELETE FROM `creature_template_spells` WHERE `entry` = 21339;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2133901;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2133901, 'Serpentshrine Cavern - Coilfang Hate-Screamer', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2133901;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- TARGET_ENUM_UNITS_ENEMY_IN_CONE_24
(2133901, 1, 38491, 0, -1, 0, 0, 100, 0, 6000, 16000, 11000, 25000, 'Coilfang Hate-Screamer - Silence - none'),
(2133901, 2, 38496, 0, -1, 100, 0, 100, 0, 3000, 12000, 3000, 12000, 'Coilfang Hate-Screamer - Sonic Scream - random');

UPDATE `creature_template` SET `SpellList` = 2133901 WHERE `entry` = 21339;

-- Underbog Colossus
DELETE FROM `creature_template_spells` WHERE `entry` = 21251;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2125101, 2125102, 2125103);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2125101, 'Serpentshrine Cavern - Underbog Colossus - Set 1', 0, 0),
(2125102, 'Serpentshrine Cavern - Underbog Colossus - Set 2', 0, 0),
(2125103, 'Serpentshrine Cavern - Underbog Colossus - Set 3', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2125101, 2125102, 2125103);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- Set 1 (Phase 1-5)
(2125101, 1, 39032, 0, -1, 100, 0, 100, 0, 10000, 22000, 11000, 25000, 'Underbog Colossus - Initial Infection - random'),
(2125101, 2, 38976, 0, -1, 2, 0, 100, 0, 15000, 24000, 20000, 30000, 'Underbog Colossus - Spore Quake - self'),
-- Set 2 (Phase 6-10)
(2125102, 1, 39044, 0, -1, 100, 0, 100, 0, 16000, 30000, 25000, 35000, 'Underbog Colossus - Serpentshrine Parasite - random'),
(2125102, 2, 38971, 0, -1, 101, 0, 100, 0, 13000, 23000, 21000, 30000, 'Underbog Colossus - Acid Geyser - random not tank'),
-- Set 3 (Phase 6-10)
(2125103, 1, 39031, 0, -1, 2, 0, 100, 0, 12000, 21000, 12000, 21000, 'Underbog Colossus - Frenzy - self'),
(2125103, 2, 39015, 0, -1, 1, 0, 100, 0, 4000, 16000, 4000, 16000, 'Underbog Colossus -Antrophic Blow - current');

-- Vashj'ir Honor Guard
DELETE FROM `creature_template_spells` WHERE `entry` = 21218;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2121801;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2121801, 'Serpentshrine Cavern - Vashj''ir Honor Guard', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2121801;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- Cant reproduce Execute being cast on tank ever
-- (2121801, 1, 38959, 0, -1, 1, 0, 100, 0, 5000, 15000, 5000, 15000, 'Vashj''ir Honor Guard - Execute - current'),
-- Condition self - under 50%
(2121801, 2, 38945, 0, 281, 1, 0, 100, 0, 6000, 12000, 22000, 36000, 'Vashj''ir Honor Guard - Frightening Shout - current'),
(2121801, 3, 38576, 0, -1, 0, 0, 100, 0, 12000, 22000, 16000, 25000, 'Vashj''ir Honor Guard - Knockback - none'),
(2121801, 4, 38572, 0, -1, 1, 0, 100, 0, 5000, 16000, 9000, 18000, 'Vashj''ir Honor Guard - Mortal Cleave - current');

UPDATE `creature_template` SET `SpellList` = 2121801 WHERE `entry` = 21218;


-- Coilfang Priestess
DELETE FROM `creature_template_spells` WHERE `entry` = 21220;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2122001;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2122001, 'Serpentshrine Cavern - Coilfang Priestess', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2122001;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2122001, 1, 38580, 0, -1, 206, 0, 100, 100, 6000, 14000, 6000, 14000, 'Coilfang Priestess - Greater Heal - Missing 25% including self'),
(2122001, 2, 38582, 0, -1, 1, 0, 100, 1, 2000, 12000, 2000, 12000, 'Coilfang Priestess - Holy Smite - random'),
(2122001, 3, 38585, 0, -1, 100, 0, 100, 10, 5000, 15000, 6000, 18000, 'Coilfang Priestess - Holy Fire - random player');

UPDATE `creature_template` SET `SpellList` = 2122001 WHERE `entry` = 21220;


-- Greyheart Technician
DELETE FROM `creature_template_spells` WHERE `entry` = 21263;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2126301;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2126301, 'Serpentshrine Cavern - Greyheart Technician', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2126301;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2126301, 1, 38995, 0, -1, 1, 0, 100, 100, 6000, 12000, 6000, 12000, 'Greyheart Technician - Hamstring - current');

UPDATE `creature_template` SET `SpellList` = 2126301 WHERE `entry` = 21263;


-- Coilfang Shatterer
DELETE FROM `creature_template_spells` WHERE `entry` = 21301;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2130101;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2130101, 'Serpentshrine Cavern - Coilfang Shatterer', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2130101;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2130101, 1, 38591, 0, -1, 1, 0, 100, 100, 7000, 15000, 17000, 25000, 'Coilfang Shatterer - Shatter Armor - current');

UPDATE `creature_template` SET `SpellList` = 2130101 WHERE `entry` = 21301;

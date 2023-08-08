-- Shattered Halls creature_event_ai into creature_spell_list
-- Shattered Hand Legionnaire - 16700
DELETE FROM creature_spell_list WHERE Id IN (1670001, 2058901);
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1670001, 1, 15615, 0, 102, 0, 100, 0, 6000, 20000, 11000, 25000, "Shattered Hand Legionnaire (Normal) - Pummel - on random Casting"),
-- Heroic
(2058901, 1, 15615, 0, 102, 0, 100, 0, 6000, 20000, 11000, 25000, "Shattered Hand Legionnaire (Heroic) - Pummel - on random Casting");


DELETE FROM creature_spell_list_entry WHERE Id IN (1670001, 2058901);
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1670001, "Shattered Halls - Shattered Hand Legionnaire - Normal", 0, 0),
(2058901, "Shattered Halls - Shattered Hand Legionnaire - Heroic", 0, 0);

UPDATE `creature_template` SET SpellList=1670001 WHERE entry = 16700;
UPDATE `creature_template` SET SpellList=2058901 WHERE entry = 20589;

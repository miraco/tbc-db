-- ==========================
-- Hellfire Ramparts - Normal - Stats Reseach based on TBC Anni PTR
-- Stats gathered with addon API and MindControle
-- Also compared with Bestiary values
-- If NPCs were Imune i used to let them hit me for atleast 500 times to get some good min/max/avg values
-- All tests were done on a 31342 Armor Tank - 75% for all npc under level 70
-- ==========================


-- Bonechewer Hungerer - 17259
-- Level 60-61 UnitClass 1
-- Stats for Level 60
-- MinDMG 342.74  MaxDMG 470.95 AP 252  Armor 3791 
-- Strength 136 Agi 77 Stam 256 Int 30 SP 75
-- Stats for Level 61
-- MinDMG 382,19 MaxDMG 529,09 AP 258 Armor 4091
-- Strength 139 Agi 82 Stam 261 Int 30 SP 78
-- Bestiary Values 
-- 60-61 DMG 343 - 529
UPDATE creature_template SET DamageMultiplier = 4.8, DamageVariance = 0.4, MinMeleeDmg = 342.74, MaxMeleeDmg =  470.95 WHERE entry = 17259;


-- Bonechewer Ravener - 17264
-- Level 60-61 UnitClass 1
-- Stats for Level 60
-- MinDMG 342.74 MaxDMG 470.95  AP 252 Armor 3791
-- Strength 136 Agi 77 Stam 256 Int 30 SP 75
-- Stats for Level 61
-- MinDMG 298,6 MaxDMG 445,2 AP 258 Armor 4091
-- Strength 139 Agi 82 Stam 261 Int 30 SP 78
-- Bestiary Values
-- 60-61 Damage 343 - 529
UPDATE creature_template SET DamageMultiplier = 4.8, DamageVariance = 0.4, MinMeleeDmg = 342.74, MaxMeleeDmg =  470.95 WHERE entry = 17264;

-- Bonechewer Destroyer - 17271
-- Level 61 UnitClass 1
-- Stats for Level 61
-- MinDMG 414,03 MaxDMG 573,19 AP 258 Armor 4091
-- Strength 139 Agi 82 Stam 261 Int 30 SP 78
-- Bestiary
-- 60-61 Damage 619-955
-- Info: Bestiary suggest that those npcs also can be level 60 - in all tests i never had 1 lvl 60 spawned (this would also align with wowhead). TODO 
UPDATE creature_template SET MinLevel 61, MaxLevel 61 DamageMultiplier = 5.2, DamageVariance = 0.4, MinMeleeDmg = 414,03, MaxMeleeDmg =  573,19 WHERE entry = 17264;

-- Bonechewer Beastmaster 17455
-- Level 60 - UnitClass 1
-- Imune to MindControle
-- Damage Range was 88 - 138 on 31342 (75% armor) resulting in raw values 356 - 552 when having Battle Shout up.
-- ToDo Test Ingame with buff / without Buff
-- Bestiary Value
-- Level 60 343 - 471
UPDATE creature_template SET DamageMultiplier = 4.8, DamageVariance = 0.4, MinMeleeDmg = 343, MaxMeleeDmg = 471 WHERE entry = 17455;

-- Bonechewer Ripper 17281
-- Level 61 - UnitClass 1
-- Imune to MindControle - going with bestiary values
-- Bestiary Value
-- Level 61 382 - 529 4091 Armor
UPDATE creature_template SET DamageMultiplier = 4.8, DamageVariance = 0.4, MinMeleeDmg = 382, MaxMeleeDmg = 529 WHERE entry = 17281;

-- Shattered Hand Warhound 17280
-- Level 59 UnitClass
-- Beast Lore Values
-- Min DMG 91 Max DMG 124 Armor 3489
-- Bestiary Values the same
UPDATE creature_template SET DamageMultiplier = 1.5, DamageVariance = 0.4, MinMeleeDmg = 91, MaxMeleeDmg = 124 WHERE entry = 17280;

-- Bleeding Hollow Darkcaster 17269
-- Level 61 UnitClass 8
-- Stats for Level 61 
-- MinDMG 295,84 MaxDMG 424,07 AP 115 Armor 2073
-- Strength 125 Agi 35 Stam 87 Int 252 SP 206
-- Info: Bestiary suggest that those npcs also can be level 60 - in all tests i never had 1 lvl 60 spawned (this would also align with wowhead). TODO 
-- 60-61 DMG 466 - 706
UPDATE creature_template SET MinLevel 61, MaxLevel 61 DamageMultiplier = 4.5, DamageVariance = 0.4, MinMeleeDmg = 414,03, MaxMeleeDmg =  573,19 WHERE entry = 17269;

-- Bleeding Hollow Archer 17270
-- Level 60 UnitClass 2
-- Stats for Level 60
-- MinDMG 344,81 MaxDMG 476,45 AP 238 Armor 3075
-- Strength 129 Agi 85 Stam 234 Int 101 SP 96
-- Stats for Level 61
-- MinDMG 363.27 MaxDMG 503.12 AP 244 Armor 3316
-- Strength 132 Agi 88 Stam 239 Int 106 SP 99
-- Bestiary Values
-- 60-61 DMG 343 - 503
UPDATE creature_template SET DamageMultiplier = 4.9 DamageVariance = 0.4, MinMeleeDmg = 344.81, MaxMeleeDmg = 476.45 WHERE entry = 17270;

-- Bleeding Hollow Scryer 17478
-- Level 61 UnitClass 8
-- Stats for Level 61
-- MinDMG 295,84 MaxDMG 424,07 AP 115 Armor 2073
-- Strength 125 Agi 35 Stam 87 Int 252 SP 206
-- Bestiary 
-- 60 - 61 Damage 318 - 463
-- Info: Bestiary suggest that those npcs also can be level 60 - in all tests i never had 1 lvl 60 spawned (this would also align with wowhead). TODO 
UPDATE creature_template SET MinLevel 61, MaxLevel 61 DamageMultiplier = 4.5, DamageVariance = 0.4, MinMeleeDmg = 295.84, MaxMeleeDmg = 424.07 WHERE entry = 17478;

-- Fiendsh Hound 17540
-- Level 60 UnitClass 2
-- MinDmg 143.81 MaxDMG 198.72 AP 238 Armor 3075 2.8 speed
-- Strength 129 Agi 85 Sta 234 Int 101 Spi 96
UPDATE creature_template SET DamageMultiplier = 2 DamageVariance = 0.4, MinMeleeDmg = 143.81, MaxMeleeDmg = 198.72 WHERE entry = 17540;

-- Hellfire Sentry 17517
-- Level 57-58 UnitClass 1
-- Stats for Level 58
-- MinDMG 381.34 MaxDMG 514.44 AP 242 Armor 3435 1.5 speed
-- Strength 131 Agi 74 Stam 245 Int 30 Spi 72
-- Info: Bestiary suggest that those npcs also can be level 57 - in all tests i only had 58 spawned (this would also align with wowhead). TODO 
UPDATE creature_template SET DamageMultiplier = 2 DamageVariance = 0.4, MinMeleeDmg = 143.81, MaxMeleeDmg = 198.72 WHERE entry = 17517;
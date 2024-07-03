-- Rework Stair of Destiny 
SET @SGGUID := 22010;
-- Delete old Data
-- Wave 1
DELETE FROM creature_linking WHERE master_guid IN (67974);
DELETE FROM creature_movement WHERE id IN (67974);
DELETE FROM creature WHERE guid IN (67978,67973,67974,67989);

-- Wave 2
DELETE FROM creature_linking WHERE master_guid IN (67976);
DELETE FROM creature_movement WHERE id IN (67976);
DELETE FROM creature WHERE guid IN (67990,67976,67985,68189);

-- Wave 3
DELETE FROM creature WHERE guid IN (67981,67980,67984,67987,67983);
DELETE FROM creature_linking WHERE master_guid IN (67981);
DELETE FROM creature_movement WHERE id IN (67981);

-- Wave 4
DELETE FROM creature WHERE guid IN (68311,67988,67982,67986,67979);
DELETE FROM creature_linking WHERE master_guid IN (68311);
DELETE FROM creature_movement WHERE id IN (68311);

-- Wave 5
DELETE FROM creature WHERE guid IN (60033,60034,60035,60036,60037);
DELETE FROM creature_linking WHERE master_guid IN (60033);
DELETE FROM creature_movement WHERE id IN (60033);

-- Wave 6
DELETE FROM creature WHERE guid IN (60038,60039,60040,60041,60042);
DELETE FROM creature_linking WHERE master_guid IN (60038);
DELETE FROM creature_movement WHERE id IN (60038);

-- Pit Commander
DELETE FROM creature WHERE guid = 68001;
DELETE FROM creature_movement_template WHERE entry=18945;
DELETE FROM creature_linking WHERE master_guid = 68001;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1894501,1894502,1894503);
DELETE FROM creature WHERE guid = 60043;

-- General Changes
-- Correct WalkSpeed and RunSpeed for all NPCs
-- Fel Soldier
-- [7] WalkSpeed: 2.5
-- [7] RunSpeed: 8
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.142' WHERE entry = '18944';

-- WAVE 1: 
-- Wave 1 can always spawn, no matter if Pit Lord is alive or not. 
-- Both groups will always respawn together after 1 minute

-- 4 FEL SOLDIER - TELEPORT IN FROM GATEWAY SHAADRAZ
-- reuse guids with sniffed data
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(67978, 18944, 530, 1, -294.44287, 1520.5396, 45.99916, 5.1836, 7200, 7200, 0, 0),
(67973, 18944, 530, 1, -301.17892, 1522.4855, 42.481632, 5.16617, 7200, 7200, 0, 0),
(67974, 18944, 530, 1, -297.08804, 1526.0883, 43.771873, 5.28834, 7200, 7200, 0, 0),
(67989, 18944, 530, 1, -299.89774, 1528.1632, 47.09577, 5.42797, 7200, 7200, 0, 0);

DELETE FROM spawn_group WHERE Id = @SGGUID+1;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGGUID+1, 'Hellfire Peninsula - Stair of Destiny - Fel Soldier Group 1', 0, 0, 0, 0);

DELETE FROM spawn_group_spawn WHERE Id = @SGGUID+1;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGGUID+1, 67978, 0), 
(@SGGUID+1, 67973, 1), 
(@SGGUID+1, 67974, 2), 
(@SGGUID+1, 67989, 3);

DELETE FROM spawn_group_formation WHERE Id = @SGGUID+1;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@SGGUID+1, 2, 8, 0, @SGGUID+1, 2, 'Hellfire Peninsula - Stair of Destiny - Fel Soldier Group 1');

DELETE FROM waypoint_path_name WHERE PathID = @SGGUID+1;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(@SGGUID+1,'Hellfire Peninsula - Stair of Destiny - Fel Soldier Group 1');

DELETE FROM waypoint_path WHERE PathID = @SGGUID+1;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@SGGUID+1, 1, -294.44287, 1520.5396, 45.99916, 100, 0, 0),
(@SGGUID+1, 2, -246.5006, 1450.8186, 14.844091, 100, 0, 0),
(@SGGUID+1, 3, -253.37158, 1419.7522, 13.032458, 100, 0, 0),
(@SGGUID+1, 4, -257.9998, 1378.481, 10.675065, 100, 0, 0),
(@SGGUID+1, 5, -255.76607, 1346.958, 12.28711, 100, 0, 0),
(@SGGUID+1, 6, -250.39062, 1304.294, 18.83225, 100, 0, 0),
(@SGGUID+1, 7, -245.2244, 1271.7593, 24.46247, 100, 0, 0),
(@SGGUID+1, 8, -246.183, 1230.5302, 31.794357, 100, 0, 0),
(@SGGUID+1, 9, -252.1468, 1191.9254, 42.48982, 100, 0, 0),
(@SGGUID+1, 10, -252.72054, 1171.8469, 41.60463, 100, 1000, 1894401), -- spread 25 yards
(@SGGUID+1, 11, -256.06403, 1163.2186, 41.608257, 100, 0, 0),
(@SGGUID+1, 12, -256.54318, 1146.6205, 41.601185, 100, 0, 0); -- remove formation

-- Wave 1: 4 FEL SOLDIER - TELEPORT IN FROM GATEWAY MURKETH
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(67990, 18944, 530, 1, -167.56749, 1508.2885, 27.816711, 3.625302, 7200, 7200, 0, 0), -- leader
(67976, 18944, 530, 1, -167.91743, 1512.9679, 28.155855, 4.20624, 7200, 7200, 0, 0), 
(67985, 18944, 530, 1, -168.36984, 1516.0608, 28.39862, 4.31096, 7200, 7200, 0, 0), 
(68189, 18944, 530, 1, -166.73416, 1519.3583, 28.880074, 4.4331, 7200, 7200, 0, 0); 

DELETE FROM spawn_group WHERE Id = @SGGUID+2;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGGUID+2, 'Hellfire Peninsula - Stair of Destiny - Fel Soldier Group 2', 0, 0, 0, 0);

DELETE FROM spawn_group_spawn WHERE Id = @SGGUID+2;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGGUID+2, 67990, 0), 
(@SGGUID+2, 67976, 1), 
(@SGGUID+2, 67985, 2), 
(@SGGUID+2, 68189, 3);

DELETE FROM spawn_group_formation WHERE Id = @SGGUID+2;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@SGGUID+2, 2, 8, 0, @SGGUID+2, 2, 'Hellfire Peninsula - Stair of Destiny - Fel Soldier Group 2');

DELETE FROM waypoint_path_name WHERE PathID = @SGGUID+2;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(@SGGUID+2,'Hellfire Peninsula - Stair of Destiny - Fel Soldier Group 2');

DELETE FROM waypoint_path WHERE PathID = @SGGUID+2;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@SGGUID+2, 1, -167.56749, 1508.2885, 27.816711, 100, 0, 0),
(@SGGUID+2, 2, -247.67833, 1440.0979, 14.367103, 100, 0, 0),
(@SGGUID+2, 3, -255.26189, 1405.5591, 11.932349, 100, 0, 0),
(@SGGUID+2, 4, -255.15039, 1371.0968, 10.737339, 100, 0, 0),
(@SGGUID+2, 5, -252.5664, 1330.8047, 14.380671, 100, 0, 0),
(@SGGUID+2, 6, -245.42877, 1293.7552, 20.517942, 100, 0, 0),
(@SGGUID+2, 7, -240.50195, 1265.1797, 25.723845, 100, 0, 0),
(@SGGUID+2, 8, -241.49805, 1235.209, 30.841692, 100, 0, 0),
(@SGGUID+2, 9, -243.76286, 1197.5039, 42.260147, 100, 0, 0), -- change spread to 25 yards
(@SGGUID+2, 10, -238.57845, 1156.4229, 41.61512, 100, 0, 0), 
(@SGGUID+2, 11, -238.68306, 1139.3579, 41.66668, 100, 0, 0); -- remove formation


-- 
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (1894401,1882902);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1894401, 0, 0, 51, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 'Fel Soldier - Change FormationSpread to 15'),
(1894402, 0, 0, 51, 151, @SGGUID+2, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 'Fel Soldier - Remove Formation');

-- (@PATH,1,-201.47656,1614.8564,35.49019,0,0,0,0,100,0),
-- (@PATH,2,-208.29488,1587.9141,30.646357,0,0,0,0,100,0),
-- (@PATH,3,-220.47684,1546.0042,25.656887,0,0,0,0,100,0),
-- (@PATH,4,-225.59392,1519.0728,22.725712,0,0,0,0,100,0),
-- (@PATH,5,-234.19032,1480.3562,17.773579,0,0,0,0,100,0),
-- (@PATH,6,-239.85352,1451.9229,14.5395155,0,0,0,0,100,0),
-- (@PATH,7,-249.98042,1420.2828,13.140589,0,0,0,0,100,0),
-- (@PATH,8,-252.45107,1387.4977,11.153876,0,0,0,0,100,0),
-- (@PATH,9,-252.40474,1349.8247,11.980293,0,0,0,0,100,0),
-- (@PATH,10,-244.50543,1304.5555,18.821367,0,0,0,0,100,0),
-- (@PATH,11,-238.2282,1259.4918,26.721443,0,0,0,0,100,0),
-- (@PATH,12,-241.89069,1222.9257,33.311687,0,0,0,0,100,0),
-- (@PATH,13,-244.91005,1202.6198,40.96713,0,0,0,0,100,0),
-- (@PATH,14,-246.69238,1175.2222,41.62671,0,0,0,0,100,0),
-- (@PATH,15,-246.69238,1175.2222,41.62671,0,0,0,0,100,0),
-- (@PATH,16,-246.69238,1175.2222,41.62671,1.264083385467529296,0,0,0,100,0);
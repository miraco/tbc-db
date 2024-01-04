/* DBScriptData
DBName: Tempest Keep - The Mechanar (Mecha)
DBScriptName: instance_mechanar
DB%Complete: 80
DBComment:
EndDBScriptData */

SET @CGUID := 5540000; -- creatures
SET @OGUID := 5540000; -- gameobjects
SET @PGUID := 49100; -- pools
SET @SGGUID := 5540000; -- spawn_groups

-- =========
-- CREATURES
-- =========

INSERT INTO `creature_movement` (`id`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(@CGUID+1, 1, 117.62223,78.36094,14.92448, 100,1000, 0),
(@CGUID+1, 2, 149.63039,81.24523,6.4690247,100,0,0),
(@CGUID+1, 3, 169.93733,81.2677,0.36944586,100,0,0),
(@CGUID+1, 4, 188.18597,64.12248,-0.005838667,100,0,0),
(@CGUID+1, 5, 186.61266,47.3467,-0.006220245,100,0,0),
(@CGUID+1, 6, 164.64165,49.954487,-0.001837478,100,1000,0),
(@CGUID+2, 1, 76.8514,59.621902,14.924665, 100, 1000, 0), -- waittime 1-2 
(@CGUID+2, 2, 38.19203,59.687855,0.1630622, 100, 0, 0),
(@CGUID+2, 3, 30.011766,55.230145,0.1630622, 100, 0, 0),
(@CGUID+2, 4, 32.04149,39.386734,0.014305516, 100, 1000, 0), -- waittime 1-2 
(@CGUID+3, 1, 28.923302,-18.143108,-0.0005735572, 100, 0, 0),
(@CGUID+3, 2, 26.356697,-5.9867935,-0.000380761,3.33357, 10000, 0), -- 8 - 10 waittime
(@CGUID+3, 3, 29.69342,-15.448353,-0.00058285974, 100, 0, 0),
(@CGUID+3, 4, 35.844803,-23.9074,-0.0004889075, 100, 0, 0),
(@CGUID+3, 5, 43.611073,-26.751925,0.006033899,3.0368728, 10000, 0), -- 9 - 19 waittime
(@CGUID+3, 6, 35.844803,-23.9074,-0.0004889075, 100, 0, 0),
(@CGUID+4, 1, 27.243652,18.831352,-0.0004997472, 100, 0, 0),
(@CGUID+4, 2, 24.297773,7.9234104,-0.00028621498,2.96705961, 10000, 0), -- 8 - 12 waittime
(@CGUID+4, 3, 28.086344,21.93921,-0.00050851365, 100, 0, 0),
(@CGUID+4, 4, 41.327057,29.448656,0.0061041107,3.263765, 10000, 0), -- 10 - 16 waittime
(@CGUID+4, 5, 32.220608,26.515696,0.0071369237, 100, 0, 0),
(@CGUID+6, 1, 73.91813,-56.71242,14.924665, 100, 1000, 0), -- waittime 1-2 
(@CGUID+6, 2, 38.843502,-56.28604,0.22432718, 100, 0, 0),
(@CGUID+6, 3, 30.624844,-54.907387,0.26585943, 100, 0, 0),
(@CGUID+6, 4, 31.930918,-34.87634,0.010954779, 100, 1000, 0), -- waittime 1-2 
(@CGUID+21, 1, 197.953, 12.5222, -2.19211, 0, 0, 0),
(@CGUID+21, 2, 195.769, -10.0593, -2.19211, 0, 0, 0),
(@CGUID+21, 3, 200.292, -39.2775, -2.19211, 0, 0, 0),
(@CGUID+21, 4, 221.534, -38.9328, -2.19211, 0, 0, 0),
(@CGUID+21, 5, 222.264, 15.791, -2.19211, 0, 0, 0),
(@CGUID+23, 1, 105.542, -76.0303, 14.9262, 5.19794, 0, 0),
(@CGUID+23, 2, 105.907, -80.6267, 14.9272, 4.93326, 0, 0),
(@CGUID+23, 3, 105.469, -75.8755, 14.9272, 1.94167, 0, 0),
(@CGUID+23, 4, 102.455, -73.0012, 14.9272, 2.2684, 0, 0),
(@CGUID+23, 5, 95.037, -71.3831, 14.9272, 2.94934, 0, 0),
(@CGUID+23, 6, 91.0628, -72.7787, 14.9258, 3.53603, 0, 0),
(@CGUID+23, 7, 96.7333, -71.0234, 14.9258, 0.300194, 0, 0),
(@CGUID+31, 1, 203.51, -78.7325, 0.00357, 6.26294, 0, 0),
(@CGUID+31, 2, 167.854, -77.1117, 1.04226, 3.06872, 0, 0),
(@CGUID+31, 3, 118.427, -73.8248, 14.9263, 3.11663, 0, 0),
(@CGUID+31, 4, 171.948, -77.0885, 0.004957, 6.25587, 0, 0),
(@CGUID+32,1,132.1031,37.008965,0.003121846,100,0,0),
(@CGUID+32,2,142.23601,40.296707,0.005726555,100,0,0),
(@CGUID+32,3,144.87463,45.93079,0.008017367,100,0,0),
(@CGUID+32,4,158.54794,47.99082,0.0038790724,100,0,0),
(@CGUID+32,5,161.00502,53.83562,0.003132181,100,0,0),
(@CGUID+47, 1, 174.11919,37.801308,1.010456, 100, 1000, 0),
(@CGUID+47, 2, 179.0216,40.52939,-0.006131659, 100, 0, 0),
(@CGUID+47, 3, 185.691,41.82604,-0.006107603, 100, 0, 0),
(@CGUID+47, 4, 193.55858,41.26056,-0.0060337405, 100, 0, 0),
(@CGUID+47, 5, 197.70654,37.415173,-0.005917786, 100, 1000, 0),
(@CGUID+55, 1, 226.707, -109.536, -0.00693, 5.82783, 1, 5),
(@CGUID+55, 2, 207.09, -95.4179, -0.000968, 2.55508, 0, 0),
(@CGUID+55, 3, 204.143, -88.2587, 0.000499, 1.96132, 0, 0),
(@CGUID+55, 4, 206.056, -76.7196, 0.00145, 1.33614, 0, 0),
(@CGUID+55, 5, 213.491, -69.7697, 0.00145, 0.724312, 0, 0),
(@CGUID+55, 6, 220.044, -69.2631, 0.00145, 0.077143, 0, 0),
(@CGUID+55, 7, 212.02, -69.8712, 0.00145, 3.12763, 0, 0),
(@CGUID+55, 8, 205.587, -76.0482, 0.001631, 3.90675, 0, 0),
(@CGUID+55, 9, 202.412, -87.2174, 0.001631, 4.39605, 0, 0),
(@CGUID+55, 10, 203.796, -92.6097, 0.001631, 4.9364, 0, 0),
(@CGUID+59, 1,203.69647,53.04169,-0.004259702, 100, 0, 0),
(@CGUID+59, 2, 233.31285,52.318443,0.021424541, 100, 0, 0),
(@CGUID+68, 1, 110.57969,69.03175,14.918284, 100, 1000, 0), -- waittime 0 - 2 seconds
(@CGUID+68, 2, 102.23087,58.490253,14.934289, 100, 0, 0),
(@CGUID+68, 3, 101.23074,46.33547,14.9244, 100, 0, 0),
(@CGUID+68, 4, 112.06979,40.35622,14.924257, 100, 1000, 0), -- waittime 0 - 2 seconds
(@CGUID+70, 1, 224.938, -55.7028, 0.000941, 6.27629, 0, 0),
(@CGUID+70, 2, 229.92, -57.626, 0.006562, 5.95114, 0, 0),
(@CGUID+70, 3, 224.518, -55.8315, 0.001421, 2.86452, 0, 0),
(@CGUID+70, 4, 217.022, -59.4978, 0.001421, 3.59652, 0, 0),
(@CGUID+70, 5, 214.245, -63.6568, 0.001421, 4.15493, 0, 0),
(@CGUID+70, 6, 213.93, -67.4165, 0.001421, 4.7322, 0, 0),
(@CGUID+70, 7, 214.231, -61.3339, 0.001421, 1.5215, 0, 0),
(@CGUID+70, 8, 220.344, -55.3608, 0.001421, 0.773796, 0, 0),
(@CGUID+70, 9, 225.222, -55.4634, 0.001421, 6.26216, 0, 0),
(@CGUID+71, 1, 99.8818, -54.005, 14.9254, 4.73219, 0, 0),
(@CGUID+71, 2, 103.471, -61.7508, 14.9254, 5.31339, 0, 0),
(@CGUID+71, 3, 103.372, -72.7453, 14.9261, 4.63559, 0, 0),
(@CGUID+71, 4, 100.888, -76.3641, 14.9263, 4.11095, 0, 0),
(@CGUID+71, 5, 104.719, -70.5196, 14.9263, 1.03847, 0, 0),
(@CGUID+71, 6, 100.448, -48.7264, 14.9249, 1.87256, 0, 0),
(@CGUID+71, 7, 101.486, -38.4185, 14.9249, 1.47044, 0, 0),
(@CGUID+71, 8, 107.034, -19.5325, 14.9249, 1.28508, 0, 0),
(@CGUID+71, 9, 100.549, -33.547, 14.9249, 4.27902, 0, 0),
(@CGUID+71, 10, 99.186, -44.5496, 14.9249, 4.54998, 0, 0);

-- INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES

INSERT INTO `creature_addon` (`guid`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES
(@CGUID+33, 0, 0, 1, 28, 0, NULL), -- Mechanar Driller
(@CGUID+34, 0, 0, 1, 28, 0, NULL), -- Mechanar Driller
(@CGUID+35, 0, 0, 1, 28, 0, NULL), -- Mechanar Driller
(@CGUID+36, 0, 0, 1, 28, 0, NULL), -- Mechanar Driller
(@CGUID+37, 0, 0, 1, 28, 0, NULL), -- Mechanar Driller
(@CGUID+38, 0, 0, 1, 28, 0, NULL), -- Mechanar Driller
(@CGUID+39, 0, 0, 1, 28, 0, NULL), -- Mechanar Wrecker
(@CGUID+40, 0, 0, 1, 28, 0, NULL), -- Mechanar Wrecker
(@CGUID+41, 0, 0, 1, 28, 0, NULL), -- Mechanar Wrecker
(@CGUID+42, 0, 0, 1, 28, 0, NULL), -- Mechanar Wrecker
(@CGUID+45, 0, 0, 1, 28, 0, NULL), -- Mechanar Tinkerer
(@CGUID+46, 0, 0, 1, 28, 0, NULL), -- Mechanar Tinkerer
(@CGUID+48, 0, 0, 1, 28, 0, NULL), -- Mechanar Tinkerer
(@CGUID+49, 0, 0, 1, 28, 0, NULL), -- Mechanar Tinkerer
(@CGUID+50, 0, 0, 1, 28, 0, NULL), -- Mechanar Tinkerer
(@CGUID+51, 0, 0, 1, 28, 0, NULL), -- Mechanar Tinkerer
(@CGUID+56, 0, 0, 1, 28, 0, NULL), -- Mechanar Tinkerer
(@CGUID+57, 0, 0, 1, 28, 0, NULL); -- Mechanar Tinkerer

-- REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES

INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(@CGUID+81, @CGUID+13, 1155), -- Bloodwarder Physician -> Bloodwarder Slayer
(@CGUID+80, @CGUID+12, 1155), -- Bloodwarder Physician -> Bloodwarder Slayer
(@CGUID+56, @CGUID+23, 1155), -- Mechanar Tinkerer -> Mechanar Crusher
(@CGUID+57, @CGUID+23, 1155), -- Mechanar Tinkerer -> Mechanar Crusher
(@CGUID+37, @CGUID+71, 1155), -- Mechanar Driller -> Sunseeker Engineer
(@CGUID+38, @CGUID+71, 1155), -- Mechanar Driller -> Sunseeker Engineer
(@CGUID+79, @CGUID+11, 1155), -- Bloodwarder Physician -> Bloodwarder Slayer
(@CGUID+65, @CGUID+26, 1155), -- Sunseeker Netherbinder -> Bloodwarder Centurion
(@CGUID+78, @CGUID+26, 1155), -- Bloodwarder Physician -> Bloodwarder Centurion
(@CGUID+33, @CGUID+55, 1155), -- Mechanar Driller -> Mechanar Tinkerer
(@CGUID+34, @CGUID+55, 1155), -- Mechanar Driller -> Mechanar Tinkerer
(@CGUID+54, @CGUID+55, 1155), -- Mechanar Tinkerer -> Mechanar Tinkerer
(@CGUID+45, @CGUID+32, 1155), -- Mechanar Tinkerer -> Mechanar Driller
(@CGUID+35, @CGUID+70, 1155), -- Mechanar Driller -> Sunseeker Engineer
(@CGUID+36, @CGUID+70, 1155), -- Mechanar Driller -> Sunseeker Engineer
(@CGUID+41, @CGUID+53, 1155), -- Mechanar Wrecker -> Mechanar Tinkerer
(@CGUID+42, @CGUID+53, 1155), -- Mechanar Wrecker -> Mechanar Tinkerer
(@CGUID+52, @CGUID+53, 1155), -- Mechanar Tinkerer -> Mechanar Tinkerer
(@CGUID+43, @CGUID+69, 1155), -- Mechanar Tinkerer -> Sunseeker Engineer
(@CGUID+44, @CGUID+69, 1155), -- Mechanar Tinkerer -> Sunseeker Engineer
(@CGUID+66, @CGUID+69, 1155), -- Sunseeker Engineer -> Sunseeker Engineer
(@CGUID+19, @CGUID+18, 1155), -- Sunseeker Astromage -> Sunseeker Astromage
(@CGUID+29, @CGUID+18, 1155), -- Bloodwarder Centurion -> Sunseeker Astromage
(@CGUID+30, @CGUID+18, 1155), -- Bloodwarder Centurion -> Sunseeker Astromage
(@CGUID+17, @CGUID+16, 1155), -- Sunseeker Astromage -> Sunseeker Astromage
(@CGUID+27, @CGUID+16, 1155), -- Bloodwarder Centurion -> Sunseeker Astromage
(@CGUID+28, @CGUID+16, 1155); -- Bloodwarder Centurion -> Sunseeker Astromage

REPLACE INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(20481, 554, 19221, 4113, 0); -- Raging Flames -> Nethermancer Sepethrea

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID+1, 19166, 554, 3, 117.62223, 78.36094, 14.92448, 3.23146, 7200, 7200, 0, 4), -- Tempest-Forge Patroller
(@CGUID+2, 19166, 554, 3, 76.8514, 59.621902, 14.924665, 3.1380, 7200, 7200, 0, 4), -- Tempest-Forge Patroller
(@CGUID+3, 19166, 554, 3, 44.49996, -25.5979, 0.090351336, 3.453181, 7200, 7200, 0, 2), -- Tempest-Forge Patroller
(@CGUID+4, 19166, 554, 3, 40.954517, 28.962717, 0.08852234, 0.777655, 7200, 7200, 0, 2), -- Tempest-Forge Patroller
(@CGUID+5, 19166, 554, 3, 30.7088, 3.51896, -0.000455872, 3.1141, 7200, 7200, 0, 0), -- Tempest-Forge Patroller
(@CGUID+6, 19166, 554, 3, 73.91813, -56.71242, 14.924665, 3.18021, 7200, 7200, 0, 4), -- Tempest-Forge Patroller
(@CGUID+7, 19167, 554, 3, 119.3447, 85.911827, 15.016303, 3.4557, 7200, 7200, 0, 0), -- Bloodwarder Slayer
(@CGUID+8, 19167, 554, 3, 77.8173, 64.1236, 15.0079, 3.26376, 7200, 7200, 0, 0), -- Bloodwarder Slayer
(@CGUID+9, 19167, 554, 3, 37.3979, 64.6460, 0.24639, 4.13643, 7200, 7200, 0, 0), -- Bloodwarder Slayer
(@CGUID+10, 19167, 554, 3, 30.724, -48.3542, 0.24584, 1.4311, 7200, 7200, 0, 0), -- Bloodwarder Slayer
(@CGUID+11, 19167, 554, 3, 119.726, -66.1184, 14.9247, 2.96427, 7200, 7200, 0, 0), -- Bloodwarder Slayer
(@CGUID+12, 19167, 554, 3, 76.8159, -51.7629, 14.9247, 3.01657, 7200, 7200, 0, 0), -- Bloodwarder Slayer
(@CGUID+13, 19167, 554, 3, 36.3608, -51.3871, 0.162347, 3.06699, 7200, 7200, 0, 0), -- Bloodwarder Slayer
(@CGUID+14, 19168, 554, 3, 226.5947, 45.0895, 0.076829, 3.17649, 7200, 7200, 0, 0), -- Sunseeker Astromage
(@CGUID+15, 19168, 554, 3, 226.5711, 60.279705, 0.0791843, 3.08923, 7200, 7200, 0, 0), -- Sunseeker Astromage
(@CGUID+16, 19168, 554, 3, 272.683, -24.5176, 26.3284, 0.0714562, 10800, 10800, 0, 0), -- Sunseeker Astromage
(@CGUID+17, 19168, 554, 3, 272.424, -20.9008, 26.3284, 0.0714562, 10800, 10800, 0, 0), -- Sunseeker Astromage
(@CGUID+18, 19168, 554, 3, 308.545, 15.4713, 25.3862, 3.14629, 10800, 10800, 0, 0), -- Sunseeker Astromage
(@CGUID+19, 19168, 554, 3, 308.593, 5.20942, 25.3862, 3.14629, 10800, 10800, 0, 0), -- Sunseeker Astromage
(@CGUID+20, 19218, 554, 3, 85.5275, 20.2005, 15.0044, 0.66322, 7200, 7200, 0, 0), -- Gatewatcher Gyro-Kill
(@CGUID+21, 19219, 554, 3, 210.416, 15.6408, -2.19211, 3.23112, 86400, 86400, 0, 2), -- Mechano-Lord Capacitus
(@CGUID+22, 19221, 554, 3, 325.558, 12.5866, 27.8366, 3.05075, 86400, 86400, 0, 0), -- Nethermancer Sepethrea
(@CGUID+23, 19231, 554, 3, 100.64, -72.6406, 14.9259, 6.20403, 7200, 7200, 0, 2), -- Mechanar Crusher
(@CGUID+24, 19510, 554, 3, 165.6997, 85.55811, 1.7688, 3.2114, 7200, 7200, 0, 0), -- Bloodwarder Centurion
(@CGUID+25, 19510, 554, 3, 30.6968, 49.5820, 0.2443, 3.70009, 7200, 7200, 0, 0), -- Bloodwarder Centurion
(@CGUID+26, 19510, 554, 3, 166.135, -73.2655, 1.55645, 3.15276, 7200, 7200, 0, 0), -- Bloodwarder Centurion
(@CGUID+27, 19510, 554, 3, 274.023, -17.8571, 26.3284, 6.26825, 10800, 10800, 0, 0), -- Bloodwarder Centurion
(@CGUID+28, 19510, 554, 3, 273.889, -26.8161, 26.3284, 6.25254, 10800, 10800, 0, 0), -- Bloodwarder Centurion
(@CGUID+29, 19510, 554, 3, 308.485, 20.3946, 25.3862, 3.12981, 10800, 10800, 0, 0), -- Bloodwarder Centurion
(@CGUID+30, 19510, 554, 3, 308.485, 11.1399, 25.3862, 3.11175, 10800, 10800, 0, 0), -- Bloodwarder Centurion
(@CGUID+31, 19710, 554, 3, 176.955, -77.0281, 0.005777, 1.00923, 7200, 7200, 0, 2), -- Gatewatcher Iron-Hand
(@CGUID+32, 19712, 554, 3, 147.889, 45.0173, -0.00156292, 0.426625, 7200, 7200, 0, 4), -- Mechanar Driller
(@CGUID+33, 19712, 554, 3, 220.283, -95.5726, 0.0000594996, 0.352802, 7200, 7200, 0, 0), -- Mechanar Driller
(@CGUID+34, 19712, 554, 3, 216.394, -80.0561, 0.0000594996, 5.4736, 7200, 7200, 0, 0), -- Mechanar Driller
(@CGUID+35, 19712, 554, 3, 228.547, -53.2302, 0.00192854, 0.154885, 7200, 7200, 0, 0), -- Mechanar Driller
(@CGUID+36, 19712, 554, 3, 225.146, -61.0923, 0.0015216, 5.13588, 7200, 7200, 0, 0), -- Mechanar Driller
(@CGUID+37, 19712, 554, 3, 109.813, -55.6875, 14.9233, 1.12643, 7200, 7200, 0, 0), -- Mechanar Driller
(@CGUID+38, 19712, 554, 3, 108.077, -42.1086, 14.9233, 5.46576, 7200, 7200, 0, 0), -- Mechanar Driller
(@CGUID+39, 19713, 554, 3, 109.459, 58.57525, 15.0079, 5.28834, 7200, 7200, 0, 0), -- Mechanar Wrecker
(@CGUID+40, 19713, 554, 3, 112.692, 45.97577, 15.0079, 1.0122, 7200, 7200, 0, 0), -- Mechanar Wrecker
(@CGUID+41, 19713, 554, 3, 166.968, -17.1549, -0.00102673, 5.45003, 7200, 7200, 0, 0), -- Mechanar Wrecker
(@CGUID+42, 19713, 554, 3, 174.259, -18.3418, -0.00102673, 3.7575, 7200, 7200, 0, 0), -- Mechanar Wrecker
(@CGUID+43, 19716, 554, 3, 141.167, -45.2077, -0.00164767, 4.43249, 7200, 7200, 0, 0), -- Mechanar Tinkerer
(@CGUID+44, 19716, 554, 3, 135.119, -44.8897, -0.00164767, 4.44427, 7200, 7200, 0, 0), -- Mechanar Tinkerer
(@CGUID+45, 19716, 554, 3, 140.17654, 50.36528, 0.081192, 0.907571, 7200, 7200, 0, 0), -- Mechanar Tinkerer
(@CGUID+46, 19716, 554, 3, 152.632965, 53.3561248, 0.079404, 2.687807, 7200, 7200, 0, 0), -- Mechanar Tinkerer
(@CGUID+47, 19716, 554, 3, 174.11919, 37.801308, 1.010456,3.069, 7200, 7200, 0, 4), -- Mechanar Tinkerer
(@CGUID+48, 19716, 554, 3, 192.83818, 35.6950187, 0.0776353, 4.85201, 7200, 7200, 0, 0), -- Mechanar Tinkerer
(@CGUID+49, 19716, 554, 3, 185.8190, 35.82398, 0.0775393, 4.764749, 7200, 7200, 0, 0), -- Mechanar Tinkerer
(@CGUID+50, 19716, 554, 3, 134.556167, 45.114238, 0.08333, 1.32645, 7200, 7200, 0, 0), -- Mechanar Tinkerer
(@CGUID+51, 19716, 554, 3, 180.1647, 34.5334, 0.07693833, 4.45058, 7200, 7200, 0, 0), -- Mechanar Tinkerer
(@CGUID+52, 19716, 554, 3, 169.242, -12.2941, -0.00102673, 4.806, 7200, 7200, 3, 1), -- Mechanar Tinkerer
(@CGUID+53, 19716, 554, 3, 173.388, -13.5083, -0.00102673, 3.74572, 7200, 7200, 3, 1), -- Mechanar Tinkerer
(@CGUID+54, 19716, 554, 3, 209.166, -90.5678, 0.0000594996, 1.5309, 7200, 7200, 3, 1), -- Mechanar Tinkerer
(@CGUID+55, 19716, 554, 3, 213.436, -100.189, 0.0000594996, 2.37913, 7200, 7200, 0, 2), -- Mechanar Tinkerer
(@CGUID+56, 19716, 554, 3, 99.502, -78.7173, 14.9259, 3.83213, 7200, 7200, 0, 0), -- Mechanar Tinkerer
(@CGUID+57, 19716, 554, 3, 92.8965, -79.4786, 14.9259, 5.52074, 7200, 7200, 0, 0), -- Mechanar Tinkerer
(@CGUID+58, 19716, 554, 3, 106.545, 52.6026, 14.9234, 0.0881336, 7200, 7200, 3, 1), -- Mechanar Tinkerer
(@CGUID+59, 19735, 554, 3,203.69647,53.04169,-0.004259702, 3.1171770, 7200, 7200, 0, 2), -- Tempest-Forge Destroyer
(@CGUID+60, 19735, 554, 3, 290.6187, 29.12057, 25.4695, 1.692969, 7200, 7200, 0, 0), -- Tempest-Forge Destroyer
(@CGUID+61, 19735, 554, 3, 297.3579, -14.26091, 25.38358, 1.81211, 7200, 7200, 4, 1), -- Tempest-Forge Destroyer
(@CGUID+62, 20059, 554, 3, 169.3725, 92.116249, 0.659512, 3.351, 7200, 7200, 0, 0), -- Sunseeker Netherbinder
(@CGUID+63, 20059, 554, 3, 31.831068, 47.368565, 0.17648034, 1.053, 7200, 7200, 0, 0), -- Sunseeker Netherbinder
(@CGUID+64, 20059, 554, 3, 31.82565, -48.63669, 0.24551535, 3.51334, 7200, 7200, 0, 0), -- Sunseeker Netherbinder
(@CGUID+65, 20059, 554, 3, 169.469, -66.9563, 0.512734, 3.15276, 7200, 7200, 0, 0), -- Sunseeker Netherbinder
(@CGUID+66, 20988, 554, 3, 133.053, -39.9267, -0.00164767, 6.15486, 7200, 7200, 3, 1), -- Sunseeker Engineer
(@CGUID+67, 20988, 554, 3, 131.178, 40.8598, 0.007842, 1.00548, 7200, 7200, 3, 1), -- Sunseeker Engineer
(@CGUID+68, 20988, 554, 3, 110.57969, 69.03175, 14.918284, 2.63749, 7200, 7200, 0, 4), -- Sunseeker Engineer
(@CGUID+69, 20988, 554, 3, 138.596, -40.4336, -0.00164767, 3.13108, 7200, 7200, 3, 1), -- Sunseeker Engineer
(@CGUID+70, 20988, 554, 3, 221.847, -55.5895, 0.00192854, 6.04145, 7200, 7200, 0, 2), -- Sunseeker Engineer
(@CGUID+71, 20988, 554, 3, 100.143, -43.7053, 14.9233, 4.90812, 7200, 7200, 0, 2), -- Sunseeker Engineer
(@CGUID+72, 20990, 554, 3, 165.422, 77.96908, 1.84253, 3.29867, 7200, 7200, 0, 0), -- Bloodwarder Physician
(@CGUID+73, 20990, 554, 3, 119.439, 69.1739, 15.0079, 3.29867, 7200, 7200, 0, 0), -- Bloodwarder Physician
(@CGUID+74, 20990, 554, 3, 77.582, 55.403, 15.0079, 3.19395, 7200, 7200, 0, 0), -- Bloodwarder Physician
(@CGUID+75, 20990, 554, 3, 37.4106, 54.8214, 0.24639, 2.39110, 7200, 7200, 0, 0), -- Bloodwarder Physician
(@CGUID+76, 20990, 554, 3, 33.7580, 49.8961, 0.24240, 5.72467, 7200, 7200, 0, 0), -- Bloodwarder Physician
(@CGUID+77, 20990, 554, 3, 30.8605, -46.8066, 0.23633, 0.925, 7200, 7200, 0, 0), -- Bloodwarder Physician
(@CGUID+78, 20990, 554, 3, 169.136, -88.8967, 0.652591, 3.08443, 7200, 7200, 0, 0), -- Bloodwarder Physician
(@CGUID+79, 20990, 554, 3, 119.629, -82.6008, 14.9287, 3.13313, 7200, 7200, 0, 0), -- Bloodwarder Physician
(@CGUID+80, 20990, 554, 3, 76.7499, -60.4829, 14.9247, 2.96898, 7200, 7200, 0, 0), -- Bloodwarder Physician
(@CGUID+81, 20990, 554, 3, 36.4878, -61.3542, 0.163072, 2.95925, 7200, 7200, 0, 0); -- Bloodwarder Physician

-- ===========
-- GAMEOBJECTS
-- ===========

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OGUID+1, 183788, 554, 3, 0.543812, -1.39348, 0.21172, 3.14729, 0, 0, 0, 0, 25, 25), -- Doodad_FactoryElevator01
(@OGUID+2, 184225, 554, 3, 73.9475, 149.684, 27.7701, 3.14159, 0, 0, 0, 0, 0, 0), -- Instance_Portal_Difficulty_0
(@OGUID+3, 184226, 554, 3, 73.9475, 149.684, 27.7701, 3.14159, 0, 0, 0, 0, 0, 0), -- Instance_Portal_Difficulty_1
(@OGUID+4, 184227, 554, 3, -38.0125, 0.10273, 0.504373, 3.14159, 0, 0, 0, 0, 0, 0), -- Instance_Portal_Difficulty_0
(@OGUID+5, 184228, 554, 3, -38.0125, 0.10273, 0.504373, 3.14159, 0, 0, 0, 0, 0, 0), -- Instance_Portal_Difficulty_1
(@OGUID+6, 184322, 554, 3, 242.874, 52.3148, 1.59633, 3.14159, 0, 0, -1, 0, 43200, 43200), -- Mo'arg 2 Door
(@OGUID+7, 184449, 554, 3, 267.928, 52.3148, 27.0425, 3.14159, 0, 0, -1, 0, 7200, 7200), -- Nethermancer Encounter Door
(@OGUID+8, 184465, 554, 1, 225.442, 83.4075, 0.002621, 4.74591, 0, 0, 0, 0, 10800, 10800), -- Cache of the Legion
(@OGUID+9, 184632, 554, 3, 236.46, 52.3636, 1.65354, 3.14159, 0, 0, -1, 0, 43200, 43200), -- Mo'arg 1 Door
(@OGUID+10, 184849, 554, 2, 225.442, 83.4075, 0.002621, 4.74591, 0, 0, 0, 0, 86400, 86400), -- Cache of the Legion
-- RE-USE 11 - 13
(@OGUID+14, 185015, 554, 3, 144.904, -44.3406, 1.01041, 0.543127, 0, 0, 0, 0, 120, 120), -- Overcharged Manacell
(@OGUID+15, 185015, 554, 3, 146.76, -36.2917, 1.01041, 5.99065, 0, 0, 0, 0, 120, 120), -- Overcharged Manacell
(@OGUID+16, 185015, 554, 3, 158.931, -26.9887, 1.00972, 4.98325, 0, 0, 0, 0, 120, 120), -- Overcharged Manacell
(@OGUID+17, 185015, 554, 3, 151.858, -29.8824, 1.01041, 5.41365, 0, 0, 0, 0, 120, 120), -- Overcharged Manacell
(@OGUID+18, 0, 554, 3, 221.32, -90.15, 0.00, 3.73, 0, 0, 0, 0, 86400, 86400), -- Bound Adamantite Chest - Solid Adamantite Chest - spawn_group_entry
(@OGUID+19, 0, 554, 3, 131.80, -44.97, -0.00, 0.81, 0, 0, 0, 0, 86400, 86400), -- Bound Adamantite Chest - Solid Adamantite Chest - spawn_group_entry
(@OGUID+20, 0, 554, 3, 129.97, 45.00, 0.00, 5.51, 0, 0, 0, 0, 86400, 86400), -- Bound Adamantite Chest - Solid Adamantite Chest - spawn_group_entry
(@OGUID+21, 0, 554, 3, 243.344, 14.1168, -0.0019269, 0.50436, 0, 0, 0, 0, 86400, 86400), -- Bound Adamantite Chest - Solid Adamantite Chest - spawn_group_entry
(@OGUID+22, 0, 554, 3, 299.06, -46.0161, 25.3949, 6.1043, 0, 0, 0, 0, 86400, 86400), -- Bound Adamantite Chest - Solid Adamantite Chest - spawn_group_entry
(@OGUID+23, 0, 554, 3, 143.472, 179.921, 25.5636, 1.36442, 0, 0, 0, 0, 86400, 86400); -- Bound Adamantite Chest - Solid Adamantite Chest - spawn_group_entry

INSERT INTO `gameobject_addon` (`guid`, `animprogress`, `state`) VALUES
(@OGUID+1, 0, -1), -- Doodad_FactoryElevator01
(@OGUID+2, 0, 0), -- Instance_Portal_Difficulty_0
(@OGUID+3, 0, 0), -- Instance_Portal_Difficulty_1
(@OGUID+4, 0, 0), -- Instance_Portal_Difficulty_0
(@OGUID+5, 0, 0), -- Instance_Portal_Difficulty_1
(@OGUID+6, 0, -1), -- Mo'arg 2 Door
(@OGUID+9, 0, -1); -- Mo'arg 1 Door

-- ======
-- EVENTS
-- ======

-- INSERT INTO `game_event_creature` (`guid`, `event`) VALUES

INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES
(@CGUID+22, 0, 22804, 0, 0, 0, 2); -- Nethermancer Sepethrea (Feast of Winter Veil - Main Event)

-- INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES

-- ============
-- SPAWN GROUPS
-- ============

-- ======
-- SPAWN GROUPS
-- ======

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
(@SGGUID+1, 'The Mechanar - Bound / Solid Adamantite Chest', 1, 1, 0, 0, 0),
(@SGGUID+2, 'The Mechanar - Group 001', 0, 3, 0, 0, 0),
(@SGGUID+3, 'The Mechanar - Group 002', 0, 3, 0, 1, 0),
-- left side entrance to first boss
(@SGGUID+4, 'The Mechanar - Group 003', 0, 2, 0, 1, 0),
(@SGGUID+5, 'The Mechanar - Group 004', 0, 2, 0, 1, 0),
(@SGGUID+6, 'The Mechanar - Group 005', 0, 4, 0, 1, 0),
(@SGGUID+7, 'The Mechanar - Group 006', 0, 2, 0, 1, 0),
(@SGGUID+8, 'The Mechanar - Group 007', 0, 3, 0, 1, 0),
(@SGGUID+9, 'The Mechanar - Group 008 | Mechanar Trinkerer (4)', 0, 4, 0, 1, 0),
(@SGGUID+10, 'The Mechanar - Group 009 | Mechanar Driller - Sunseeker Engineer - Mechanar Trinkerer (3)', 0, 5, 0, 1, 0),
(@SGGUID+11, 'The Mechanar - Group 010 | Sunseeker Astromage (2)', 0, 2, 0, 1, 0);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGGUID+1, 184940, 0, 0, 0), -- Bound Adamantite Chest 
(@SGGUID+1, 184937, 0, 0, 0); -- Solid Adamantite Chest

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(@SGGUID+1, @OGUID+18, -1, 0),
(@SGGUID+1, @OGUID+10, -1, 0),
(@SGGUID+1, @OGUID+20, -1, 0),
(@SGGUID+1, @OGUID+21, -1, 0),
(@SGGUID+1, @OGUID+22, -1, 0),
(@SGGUID+1, @OGUID+23, -1, 0), 
(@SGGUID+2, @CGUID+63, 0, 0),
(@SGGUID+2, @CGUID+25, 1, 0),
(@SGGUID+2, @CGUID+76, 2, 0),
(@SGGUID+3, @CGUID+64, 0, 0),
(@SGGUID+3, @CGUID+10, 1, 0),
(@SGGUID+3, @CGUID+77, 2, 0),
-- left side entrance to first boss
(@SGGUID+4, @CGUID+75, 0, 0),
(@SGGUID+4, @CGUID+9, 1, 0),
(@SGGUID+5, @CGUID+74, 0, 0),
(@SGGUID+5, @CGUID+8, 1, 0),
(@SGGUID+6, @CGUID+68, 0, 0),
(@SGGUID+6, @CGUID+39, 1, 0),
(@SGGUID+6, @CGUID+40, 2, 0),
(@SGGUID+6, @CGUID+58, 3, 0),
(@SGGUID+7, @CGUID+7, 0, 0),
(@SGGUID+7, @CGUID+73, 1, 0),
(@SGGUID+8, @CGUID+62, 0, 0),
(@SGGUID+8, @CGUID+24, 1, 0),
(@SGGUID+8, @CGUID+72, 2, 0),
(@SGGUID+9, @CGUID+47, 0, 0),
(@SGGUID+9, @CGUID+48, 1, 0),
(@SGGUID+9, @CGUID+49, 2, 0),
(@SGGUID+9, @CGUID+51, 3, 0),
(@SGGUID+10, @CGUID+32, 0, 0),
(@SGGUID+10, @CGUID+67, 1, 0),
(@SGGUID+10, @CGUID+45, 2, 0),
(@SGGUID+10, @CGUID+46, 3, 0),
(@SGGUID+10, @CGUID+50, 4, 0),
(@SGGUID+11, @CGUID+14, 0, 0),
(@SGGUID+11, @CGUID+15, 1, 0);

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@SGGUID+2, 2, 2.5, 0, @SGGUID+2, 2, 'The Mechanar - Group 001'),
(@SGGUID+3, 2, 2.5, 0, @SGGUID+3, 2, 'The Mechanar - Group 002');

INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(@SGGUID+2, 'The Mechanar - Group 001'),
(@SGGUID+3, 'The Mechanar - Group 002');

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@SGGUID+2,0,31.831068, 47.368565, 0.17648034, 100,100,6),
(@SGGUID+2,1,22.140232,20.44575,-0.00017946586,3.176499,100,2005901),
(@SGGUID+3,0,31.82565, -48.63669, 0.24551535, 100,100,6),
(@SGGUID+3,1,23.20878,-18.283443,-0.00011080224,3.08923,100,2005901);

-- =========
-- DBSCRIPTS
-- =========

DELETE FROM dbscripts_on_creature_movement WHERE id IN (2005901);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(2005901, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'spawn_group - change movement');

-- INSERT INTO `dbscripts_on_creature_death` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES



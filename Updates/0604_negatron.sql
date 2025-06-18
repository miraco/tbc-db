-- Quest: You, Robot (10248) Related
SET @CGUID := 5306933;


-- Delete old spawns Doctor Vomisa. Ph. T.- Scrap Reaver X6000
DELETE from creature WHERE id IN (19832, 19849);
DELETE FROM creature WHERE guid BETWEEN @CGUID+1 AND @CGUID+2;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
-- Doctor Vomisa. Ph. T.
(@CGUID+1, 19832, 530, 1, 3087.210205078125, 3402.85595703125, 105.3003387451171875, 5.323254108428955078, 300, 300, 0, 2),
-- Scrap Reaver X6000
(@CGUID+2, 19849, 530, 1, 3094.99560546875, 3399.925048828125, 105.3676528930664062, 2.548180580139160156, 120, 120, 0, 0);

-- SpawnGroup for DynGuid
DELETE FROM spawn_group WHERE Id = 28076;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
(28076, 'Netherstorm - Group 067 - Doctor Vomisa. Ph. T. | Scrap Reaver X6000', 0, 0, 0, 0, 0);

DELETE FROM spawn_group_spawn WHERE Id = 28076;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(28076, @CGUID+1, 0, 0), -- Doctor Vomisa. Ph. T.
(28076, @CGUID+2, 1, 0); -- Scrap Reaver X6000

-- Delete old Random/Relay Scripts
DELETE FROM `dbscripts_on_relay` WHERE `id` BETWEEN 10041 AND 10044;
DELETE FROM dbscript_random_templates WHERE id=10030;

-- Doctor Vomisa. Ph. T. Delete old Waypoints
DELETE FROM `creature_movement_template` WHERE `entry`=19832;
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `WaitTime`, `ScriptId`) VALUES
-- Home Position - chose random path at this point
(19832, 0, 1, 3087.219,3402.8213,105.29998, 5.323254108428955078, 1000, 1983201),
-- Random Path 1
(19832, 1, 1, 3087.219,3402.8213,105.29998, 100, 1000, 1983202), -- 1 second delay after removing emotestate
(19832, 1, 2, 3093.5725,3401.1257,105.29995, 100, 1000, 1983203),
(19832, 1, 3, 3093.5725,3401.1257,105.29995, 100, 1000, 1983202),  -- 1 second delay after removing emotestate
(19832, 1, 4, 3087.219,3402.8213,105.29998, 100, 2000, 1983204), -- 1 second delay before turning
-- Random Path 2
(19832, 2, 1, 3087.219,3402.8213,105.29998, 100, 1000, 1983202), -- 1 second delay after removing emotestate
(19832, 2, 2, 3091.977,3404.0515,105.32416, 100, 1000, 1983203),
(19832, 2, 3, 3091.977,3404.0515,105.32416, 100, 1000, 1983202),  -- 1 second delay after removing emotestate
(19832, 2, 4, 3087.219,3402.8213,105.29998, 100, 2000, 1983204), -- 1 second delay before turning
-- Random Path 3
(19832, 3, 1, 3087.219,3402.8213,105.29998, 100, 1000, 1983202), -- 1 second delay after removing emotestate
(19832, 3, 2, 3089.2432,3405.208,105.321724, 100, 1000, 1983203),
(19832, 3, 3, 3089.2432,3405.208,105.321724, 100, 1000, 1983202),  -- 1 second delay after removing emotestate
(19832, 3, 4, 3087.219,3402.8213,105.29998, 100, 2000, 1983204), -- 1 second delay before turning
-- Random Path 4
(19832, 4, 1, 3087.219,3402.8213,105.29998, 100, 1000, 1983202), -- 1 second delay after removing emotestate
(19832, 4, 2, 3084.7163,3405.1582,105.31229, 100, 1000, 1983203),
(19832, 4, 3, 3084.7163,3405.1582,105.31229, 100, 1000, 1983202),  -- 1 second delay after removing emotestate
(19832, 4, 4, 3087.219,3402.8213,105.29998, 100, 2000, 1983204), -- 1 second delay before turning
-- Path after Player used Item scrap reaver X6000 Controller
(19832, 5, 1, 3087.219,3402.8213,105.29998, 5.323254108428955078, 1000, 1983205);


-- Delete old WaypointScripts
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 1983201 AND 1983205;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1983201, 0, 0, 35, 5, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doctor Vomisa. Ph. T. - SendAiEventA to self'),
(1983201, 1000, 0, 1, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doctor Vomisa. Ph. T. - Emote StateUseStandingNoSheath'),
-- Remove emotestate before moving
(1983202, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doctor Vomisa. Ph. T. - Remove EmoteState'),
-- Random Point reached, choose home path after
(1983203, 0, 0, 35, 6, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doctor Vomisa. Ph. T. - SendAiEventB to self'),
(1983203, 1000, 0, 1, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doctor Vomisa. Ph. T. - Emote StateUseStandingNoSheath'),
-- Start Path 1
(1983204, 1000, 1000, 20, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doctor Vomisa. Ph. T. - Start Path 0'),
-- Event after Player uses Item Scrap Reaver X6000 Controller
(1983205, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doctor Vomisa. Ph. T. - Move Idle'),
(1983205, 3000, 1, 1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doctor Vomisa. Ph. T. - Emote OneShot Point'),
(1983205, 3000, 2, 0, 0, 0, 0, 0, 0, 0, 17456, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doctor Vomisa. Ph. T. - Say Text'),
(1983205, 34000, 20, 2, 2, 0, 0, 0, 0, 0, 17456, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doctor Vomisa. Ph. T. - Move Path 2');

-- Event after Player uses Item Scrap Reaver X6000 Controller
-- Event used in spell 34630
DELETE FROM `dbscripts_on_event` WHERE `id` IN(12821);
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(12821, 0, 0, 31, 19851, 2000, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Quest: You, Robot - Terminate Script if Negatron already spawned'),
(12821, 1, 1, 10, 19851, 300000, 0, 0, 0, 8, 1, 0, 0, 0, 3148.741455078125, 3233.8779296875, 97.68669891357421875, 1.906365156173706054, 'Netherstorm - Quest: You, Robot - Summon Negatron'),
(12821, 1, 2, 1, 0, 0, 0, 19832, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Quest: You, Robot - Doctor Vomisa, Ph.T. - Stop Emotestate'),
(12821, 1, 3, 20, 2, 5, 0, 19832, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Quest: You, Robot - Doctor Vomisa, Ph.T. - Start Path 5');


-- Negatron delete old Waypoints
DELETE FROM `creature_movement_template` WHERE `entry`=19851;
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `WaitTime`, `ScriptId`) VALUES
-- Home Position - chose random path at this point
(19851, 0, 1, 3128.09,3294.4512,107.93718, 100, 0, 0),
(19851, 0, 2, 3121.0325,3314.7815,110.79444, 100, 0, 0),
(19851, 0, 3, 3113.2158,3336.4111,107.60556, 100, 0, 0),
(19851, 0, 4, 3104.8281,3361.3098,104.57417, 100, 0, 0),
(19851, 0, 5, 3097.5208,3381.5989,105.77591, 100, 26000, 1985101), -- rp
(19851, 0, 6, 3097.5208,3381.5989,105.77591, 100, 26000, 1985102),
(19851, 0, 7, 3053.5566,3421.556,110.866714, 100, 0, 0),
(19851, 0, 8, 3051.7932,3455.1265,118.55023, 100, 0, 0),
(19851, 0, 9, 3034.655,3492.1448,134.63116, 100, 0, 0),
(19851, 0, 10, 3024.468,3515.7493,143.6136, 100, 0, 0),
(19851, 0, 11, 3028.9001,3538.7004,144.24968, 100, 0, 0),
(19851, 0, 12, 3036.7417,3573.2764,143.18607, 100, 0, 0),
(19851, 0, 13, 3049.1687,3585.138,143.32951, 100, 100, 1985103), -- tp
(19851, 0, 14, 3044.2,3622.36,143.269, 100, 0, 0);

-- Negatron Delete old WaypointScripts
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 1985101 AND 1985105;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1985101, 4000, 0, 36, 0, 0, 0, 0, 19832, 10, 1, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Negatron - Face Doctor Vomisa, Ph.T.'),
(1985101, 4000, 1, 0, 0, 0, 0, 0, 0, 0, 17455, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Negatron - Say Text'),
(1985101, 10000, 0, 46, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Negatron - Remove UNIT_FLAG_IMMUNE_TO_PLAYER'),
(1985101, 10000, 1, 26, 0, 0, 0, 19849, 40, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Negatron - Attack Scrap Reaver'),
--
(1985102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17468, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Negatron - Say Text'),
(1985102, 0, 1, 46, 768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Negatron - Add unitFlags'),
--
(1985103, 0, 0, 15, 34427, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Negatron - Cast Ethereal Teleport'),
(1985103, 0, 1, 3, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 3044.2, 3622.36, 143.269, 0.7621227, 'Netherstorm - Negatron - Teleport to next point');

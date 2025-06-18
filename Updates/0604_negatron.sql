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

-- Delete old Waypoints
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
(19832, 4, 4, 3087.219,3402.8213,105.29998, 100, 2000, 1983204); -- 1 second delay before turning

-- Delete old WaypointScripts
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 1983201 AND 1983204;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1983201, 0, 0, 35, 5, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doctor Vomisa. Ph. T. - SendAiEventA to self'),
(1983201, 1000, 0, 1, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doctor Vomisa. Ph. T. - Emote StateUseStandingNoSheath'),
-- Remove emotestate before moving
(1983202, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doctor Vomisa. Ph. T. - Remove EmoteState'),
-- Random Point reached, choose home path after
(1983203, 0, 0, 35, 6, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doctor Vomisa. Ph. T. - SendAiEventB to self'),
(1983203, 1000, 0, 1, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doctor Vomisa. Ph. T. - Emote StateUseStandingNoSheath'),
-- Start Path 1
(1983204, 1000, 1000, 20, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doctor Vomisa. Ph. T. - Start Path 0');

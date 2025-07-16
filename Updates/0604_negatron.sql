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
DELETE FROM spawn_group WHERE Id IN (28076, 28077);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
(28076, 'Netherstorm - Group 067 - Doctor Vomisa. Ph. T. | Scrap Reaver X6000', 0, 0, 0, 0, 0),
(28077, 'Netherstorm - Rocket Fire', 1, 0, 0, 0, 28014);

DELETE FROM spawn_group_spawn WHERE Id IN (28076, 28077);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(28076, @CGUID+1, 0, 0), -- Doctor Vomisa. Ph. T.
(28076, @CGUID+2, 1, 0), -- Scrap Reaver X6000

(28077, 183789, -1, 0), -- Rocket Fire
(28077, 183790, -1, 0), -- Rocket Fire
(28077, 183791, -1, 0), -- Rocket Fire
(28077, 183792, -1, 0), -- Rocket Fire
(28077, 183793, -1, 0), -- Rocket Fire
(28077, 183794, -1, 0); -- Rocket Fire

DELETE FROM string_id WHERE Id = 28014;
INSERT INTO `string_id` (Id, Name) VALUES 
(28014, 'NETHERSTORM_ROCKET_FIRE');


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
(1983205, 0, 0, 35, 8, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doctor Vomisa. Ph. T. - SendAiEventC to self'),
(1983205, 3000, 1, 1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doctor Vomisa. Ph. T. - Emote OneShot Point'),
(1983205, 3000, 2, 0, 0, 0, 0, 0, 0, 0, 17456, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doctor Vomisa. Ph. T. - Say Text'),
(1983205, 34000, 3, 22, 2, 2, 0, 0, 0, 0, 17456, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doctor Vomisa. Ph. T. - Move Path 2');

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
(19851, 0, 6, 3097.5208,3381.5989,105.77591, 100, 100, 1985102),
(19851, 0, 7, 3053.5566,3421.556,110.866714, 100, 0, 0),
(19851, 0, 8, 3051.7932,3455.1265,118.55023, 100, 0, 0),
(19851, 0, 9, 3034.655,3492.1448,134.63116, 100, 0, 0),
(19851, 0, 10, 3024.468,3515.7493,143.6136, 100, 0, 0),
(19851, 0, 11, 3028.9001,3538.7004,144.24968, 100, 0, 0),
(19851, 0, 12, 3036.7417,3573.2764,143.18607, 100, 0, 0),
(19851, 0, 13, 3049.1687,3585.138,143.32951, 100, 100, 1985103), -- tp
(19851, 0, 14, 3044.2,3622.36,143.269, 100, 100, 1985104),
(19851, 0, 15, 3037.824,3659.001,143.40381, 100, 7000, 1985105), -- if he doesnt get attacked he will use Emote OneShotAttack 4 times before despawning
(19851, 0, 16, 3037.824,3659.001,143.40381, 100, 7000, 1985106), -- First Emote
(19851, 0, 17, 3037.824,3659.001,143.40381, 100, 7000, 1985106), -- 2nd Emote
(19851, 0, 18, 3037.824,3659.001,143.40381, 100, 7000, 1985106), -- 3rd emote
(19851, 0, 19, 3037.824,3659.001,143.40381, 100, 3000, 1985106), -- 4rd
(19851, 0, 20, 3037.824,3659.001,143.40381, 100, 7000, 1985107); -- Still not killed -> say text and despawn

-- Negatron Delete old WaypointScripts
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 1985101 AND 1985107;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- RP when neare Doctor Vomisa
(1985101, 4000, 0, 36, 0, 0, 0, 0, 19832, 10, 1, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Negatron - Face Doctor Vomisa, Ph.T.'),
(1985101, 4000, 1, 0, 0, 0, 0, 0, 0, 0, 17455, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Negatron - Say Text'),
(1985101, 10000, 0, 48, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Negatron - Remove UNIT_FLAG_IMMUNE_TO_PLAYER'),

(1985101, 10000, 1, 31, 19849, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Negatron - Terminate Script if Scrap Reaver is dead'),
(1985101, 10001, 2, 26, 0, 0, 0, 19849, 40, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Negatron - Attack Scrap Reaver'),
-- Text when leaving Doctor Vomisa
(1985102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17468, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Negatron - Say Text'),
(1985102, 0, 1, 48, 768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Negatron - Add unitFlags'),
-- Teleport at area 52 entrance
(1985103, 0, 0, 15, 34427, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Negatron - Cast Ethereal Teleport'),
(1985103, 0, 1, 3, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 3044.2, 3622.36, 143.269, 0.7621227, 'Netherstorm - Negatron - Teleport to next point'),
-- First RP in Town - now handled via StringID usage
(1985104, 0, 0, 25, 1, 0, 0, 28013, 50, 2567, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Negatron - SetRun Mode for StringID'),
(1985104, 0, 1, 35, 8, 0, 0, 28013, 50, 2561, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Negatron - SendAiEvent C to StringID'),
-- Reached Rocket
(1985105, 0, 0, 1, 54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Negatron - Emote OneShotSpecialAttack1H'), 
(1985105, 0, 0, 48, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Negatron - Remove UnitFlags'),
(1985105, 0, 0, 9, 0, 18000000, 0, 28014, 50, 2561, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Negatron - Respawn Rocket Fire GOB'),
-- Not attacked
(1985106, 0, 0, 1, 54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Negatron - Emote OneShotSpecialAttack1H'),
-- Despawn
(1985107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17466, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Negatron - Say Text'),
(1985107, 5000, 0, 32, 0, 0, 0, 19570, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Rocket-Chief Fuselage - Resume Waypoints'),
(1985107, 5000, 1, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Negatron - Despawn Self');

-- Engineering Crewmember delete old Waypoints
DELETE FROM `creature_movement_template` WHERE `entry`=19737;
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `WaitTime`, `ScriptId`) VALUES
-- Engineering Crewmember (GUID 5306923) Path 1 triggered when Negatron comes into town
(19737, 1, 1, 33009.577,3644.3416,143.75604, 100, 1000, 1),
-- Engineering Crewmember (GUID 5306924) Path 2
(19737, 2, 1, 3071.3098,3668.194,142.35086, 100, 0, 0),
(19737, 2, 2, 3089.5693,3678.5586,142.37958, 100, 0, 0),
(19737, 2, 3, 3108.9783,3684.0244,142.97102, 100, 0, 0),
(19737, 2, 4, 3121.0576,3690.8025,143.01672, 100, 1000, 1),
-- Engineering Crewmember (GUID 5306925) Path 3
(19737, 3, 1, 3031.1257,3688.058,143.08223, 100, 0, 0),
(19737, 3, 2, 3011.8333,3689.197,143.63701, 100, 1000, 1),
-- Engineering Crewmember (GUID 5306926) Path 4
(19737, 4, 1, 3051.1008,3670.1528,142.91414, 100, 0, 0),
(19737, 4, 2, 3049.3396,3669.0244,143.17247, 100, 0, 0),
(19737, 4, 3, 3049.9778,3664.273,142.88187, 100, 0, 0),
(19737, 4, 4, 3033.9111,3656.17,143.63556, 100, 0, 0),
(19737, 4, 5, 3032.0325,3657.2434,144.01093, 100, 0, 0),
(19737, 4, 6, 3048.718,3661.3025,142.8751, 100, 1000, 1);
-- Path 4
(@PATH,1,3054.3916,3668.754,142.43884,0,0,0,0,100,0),
(@PATH,2,3071.934,3660.8694,142.91068,0,0,0,0,100,0),
(@PATH,3,3084.3215,3655.3108,142.82364,0,0,0,0,100,0),
(@PATH,4,3090.7234,3645.0745,143.13007,0,0,0,0,100,0),
(@PATH,5,3090.0159,3629.1611,142.97,0,0,0,0,100,0),
(@PATH,6,3081.2068,3620.2065,143.57686,0,0,0,0,100,0);

-- Rocket-Chief Fuselage delete old Waypoints
DELETE FROM `creature_movement_template` WHERE `entry`=19570;
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `WaitTime`, `ScriptId`) VALUES
-- Rocket-Chief Fuselage Path 1 triggered when Negatron comes into town
(19570, 1, 1, 3062.3855,3661.3877,142.96373, 100, 1000, 0),
(19570, 1, 2, 3062.3855,3661.3877,142.96373,3.246312379837036132, 1000, 1957001),
(19570, 1, 3, 3062.3855,3661.3877,142.96373, 100, 3000, 1957002), -- for waittime
(19570, 1, 4, 3041.7978, 3658.8542, 143.4062, 0.2618, 3000, 1957003); -- Home Position

-- Rocket-Chief Fuselage Script
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (1957001, 1957002);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- RP when neare Doctor Vomisa
(1957001, 0, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Rocket-Chief Fuselage - Pause Waypoints'),
(1957001, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Rocket-Chief Fuselage - Pause Waypoints'),
(1957001, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 17474, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Rocket-Chief Fuselage - Say Text'),
-- Say text when Negatron despawned
(1957002, 3000, 0, 40, 0, 0, 0, 28014, 50, 2567, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Rocket-Chief Fuselage - Despawn Rocket Fire GOB'),
(1957003, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Rocket-Chief Fuselage - Move Idle'),
(1957003, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 17479, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Rocket-Chief Fuselage - Say Text');

DELETE FROM gameobject WHERE (guid BETWEEN 200042 AND 200047) AND id=183987;
DELETE FROM gameobject WHERE guid BETWEEN 183789 AND 183794;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(183789, 183987, 530, 1, 3047.64453125, 3668.25439453125, 158.136962890625, 0.017452461645007133, 0, 0, 0.008726119995117187, 0.999961912631988525, -18000000, -18000000),
(183790, 183987, 530, 1, 3031.67626953125, 3671.52734375, 180.8680419921875, 0.698131442070007324, 0, 0, 0.342020034790039062, 0.939692676067352294, -18000000, -18000000),
(183791, 183987, 530, 1, 3030.144287109375, 3656.79638671875, 159.4942626953125, 0.15707901120185852, 0, 0, 0.078458786010742187, 0.996917366981506347, -18000000, -18000000),
(183792, 183987, 530, 1, 3042.363037109375, 3667.038330078125, 180.6220855712890625, 4.747295856475830078, 0, 0, -0.69465827941894531, 0.719339847564697265, -18000000, -18000000),
(183793, 183987, 530, 1, 3038.23046875, 3670.39501953125, 197.7891387939453125, 6.073746204376220703, 0, 0, -0.10452842712402343, 0.994521915912628173, -18000000, -18000000),
(183794, 183987, 530, 1, 3029.779052734375, 3677.49267578125, 158.6498565673828125, 1.343901276588439941, 0, 0, 0.622513771057128906, 0.78260880708694458, -18000000, -18000000);

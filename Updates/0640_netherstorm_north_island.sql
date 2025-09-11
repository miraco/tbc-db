-- ----------------
-- Netherstorm 
-- North Island  
-- ---------------

-- Spawns
-- Also reguid them into tbc range
SET @CGUID := 5306933; -- creatures - last used guid from netherstorm south island rework
SET @SGGUID := 28010; -- spawn_groups
SET @STRINGID := 28010; -- used for StringID's
 

DELETE FROM creature WHERE guid IN (74129, 67673, 67656, 67655, 67661, 67659, 67660, 67662, 67665, 67663, 67664, 67666, 67667, 67668, 67670, 67669, 67671, 67673, 67672, 67657, 67658, 72203, 74122, 72062, 72063, 72064, 72065, 72069, 72074,
72075, 72073, 72072, 72353, 71953, 71966, 71967, 71961, 71955, 73468, 72211, 72210, 72204, 72060, 72059, 72058, 74123, 72061, 72071);

DELETE FROM creature WHERE guid BETWEEN @CGUID+1 AND @CGUID+22;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
-- Phase-Hunter
(@CGUID+1, 18879, 530, 1, 4079.78, 3665.91, 126.014, 2.08321, 120, 180, 0, 2), -- Phase Hunter guid before 67656 
(@CGUID+2, 18879, 530, 1, 4133.16, 3740.39, 126.148, 2.96784, 120, 180, 0, 2), -- Phase Hunter missing before
(@CGUID+3, 18879, 530, 1, 4129.7, 3789.52, 133.338, 2.58652, 120, 180, 0, 2), -- Phase Hunter guid before 67655 
(@CGUID+4, 18879, 530, 1, 4198.21, 3857.55, 144.949, 2.67688, 120, 180, 0, 2), -- Phase Hunter missing before
(@CGUID+5, 18879, 530, 1, 4205.58, 3909.77, 143.769, 2.48093, 120, 180, 0, 2), -- Phase Hunter guid before 67661 
(@CGUID+6, 18879, 530, 1, 4232.96, 3931.17, 139.278, 3.35875, 120, 180, 0, 2), -- Phase Hunter guid before 67659 
(@CGUID+7, 18879, 530, 1, 4232.77, 3984.98, 123.111, 3.18199, 120, 180, 0, 2), -- Phase Hunter guid before 67660 
(@CGUID+8, 18879, 530, 1, 4237.93, 4030.94, 130.434, 2.81348, 120, 180, 0, 2), -- Phase Hunter missing before
(@CGUID+9, 18879, 530, 1, 4266.51, 4105.86, 114.481, 3.56591, 120, 180, 0, 2), -- Phase Hunter guid before 67662 
(@CGUID+10, 18879, 530, 1, 4265.66, 4148.36, 127.463, 3.11289, 120, 180, 0, 2), -- Phase Hunter guid before 67665 
(@CGUID+11, 18879, 530, 1, 4204.2, 4234.37, 130.732, 4.31137, 120, 180, 0, 2), -- Phase Hunter guid before 67663 
(@CGUID+12, 18879, 530, 1, 4159.13, 4233.8, 143.078, 4.60567, 120, 180, 0, 2), -- Phase Hunter missing before
(@CGUID+13, 18879, 530, 1, 4114.78, 4243.31, 152.009, 4.75369, 120, 180, 0, 2), -- Phase Hunter guid before 67664 
(@CGUID+14, 18879, 530, 1, 4039.16, 4246.29, 138.87, 5.65237, 120, 180, 0, 2), -- Phase Hunter guid before 67666 
(@CGUID+15, 18879, 530, 1, 3979.11, 4295.81, 139.783, 4.19757, 120, 180, 0, 2), -- Phase Hunter guid before 67667 
(@CGUID+16, 18879, 530, 1, 3911.47, 4265.9, 144.033, 4.82196, 120, 180, 0, 2), -- Phase Hunter guid before 67668 
(@CGUID+17, 18879, 530, 1, 3896.11, 4245.85, 146.306, 4.46222, 120, 180, 0, 2), -- Phase Hunter guid before 67670 
(@CGUID+18, 18879, 530, 1, 3831.59, 4265.75, 125.02, 5.04494, 120, 180, 0, 2), -- Phase Hunter guid before 67669 
(@CGUID+19, 18879, 530, 1, 3760.35, 4200.84, 126.156, 5.98677, 120, 180, 0, 2), -- Phase Hunter guid before 67671
(@CGUID+20, 18879, 530, 1, 3742.38, 4156.48, 119.705, 6.10516, 120, 180, 0, 2), -- Phase Hunter guid before 67673 
(@CGUID+21, 18879, 530, 1, 3775.55, 4091.97, 136.844, 0.530023, 120, 180, 0, 2), -- Phase Hunter guid before 67672 
(@CGUID+22, 18879, 530, 1, 3699.91, 3970.87, 118.277, 6.18652, 120, 180, 0, 2), -- Phase Hunter guid before 67657 
-- Trelleum Mine NPCs
(@CGUID+24, 21089, 530, 1, 3803.53, 4002.03, 121.477, 3.59538, 300, 420, 0, 0), -- Sunfury Blood Knight guid before 74122 
(@CGUID+25, 21089, 530, 1, 3802.58, 4023.16, 121.945, 2.72271, 300, 420, 0, 0), -- Sunfury Blood Knight guid before 74123 

(@CGUID+26, 20285, 530, 1, 3853.89, 4012.15, 127.951, 0.702518, 360, 420, 0, 0), -- Gan'arg Warp-Tinker guid before 72061
(@CGUID+27, 20285, 530, 1, 3873.28, 4006.68, 122.858, 3.82268, 360, 420, 0, 0), -- Gan'arg Warp-Tinker guid before 72062
(@CGUID+28, 20285, 530, 1, 3903.22, 3985.75, 121.26, 4.34587, 360, 420, 0, 0), -- Gan'arg Warp-Tinker guid before 72063
(@CGUID+29, 20285, 530, 1, 3903.22, 3985.75, 121.26, 4.34587, 360, 420, 0, 0), -- Gan'arg Warp-Tinker guid before 
(@CGUID+30, 20285, 530, 1, 3885.48, 4044.31, 120.626, 5.24306, 360, 420, 0, 0), -- Gan'arg Warp-Tinker guid before 72064
(@CGUID+31, 20285, 530, 1, 3912.11, 4053.39, 123.255, 1.53589, 360, 420, 0, 0), -- Gan'arg Warp-Tinker guid before 72065
(@CGUID+32, 20285, 530, 1, 3924.84, 4039.01, 115.434, 1.41372, 360, 420, 0, 0), -- Gan'arg Warp-Tinker guid before 72069
(@CGUID+33, 20285, 530, 1, 3925.11, 3986.37, 122.178, 3.78295, 360, 420, 0, 0), -- Gan'arg Warp-Tinker missing before
(@CGUID+34, 20285, 530, 1, 3950.16, 4023.48, 114.597, 0.575959, 360, 420, 0, 0), -- Gan'arg Warp-Tinker guid before 72074
(@CGUID+35, 20285, 530, 1, 3970.66, 4009.48, 116.843, 5.16175, 360, 420, 0, 0), -- Gan'arg Warp-Tinker missing before
(@CGUID+36, 20285, 530, 1, 4022.47, 3986.99, 123.997, 5.55316, 360, 420, 0, 0), -- Gan'arg Warp-Tinker guid before 72075
(@CGUID+37, 20285, 530, 1, 4035.12, 3975.31, 125.048, 2.68852, 360, 420, 0, 0), -- Gan'arg Warp-Tinker missing before
(@CGUID+38, 20285, 530, 1, 4054.37, 3974.44, 122.948, 1.15967, 360, 420, 0, 0), -- Gan'arg Warp-Tinker missing before
(@CGUID+39, 20285, 530, 1, 4088.37, 3979.92, 117.28, 4.79966, 360, 420, 0, 0), -- Gan'arg Warp-Tinker guid before 72073
(@CGUID+40, 20285, 530, 1, 4027.31, 3955.87, 124.082, 5.49946, 360, 420, 0, 0), -- Gan'arg Warp-Tinker missing before
(@CGUID+41, 20285, 530, 1, 4001.96, 3941.5, 124.642, 1.81514, 360, 420, 0, 0), -- Gan'arg Warp-Tinker missing before
(@CGUID+42, 20285, 530, 1, 3985.9, 3922.47, 124.577, 4.7137, 360, 420, 0, 0), -- Gan'arg Warp-Tinker guid before 72072
(@CGUID+43, 20285, 530, 1, 3957.1, 3924.79, 123.606, 1.22173, 360, 420, 0, 0), -- Gan'arg Warp-Tinker guid before 72071
(@CGUID+44, 20393, 530, 1, 3884.9983, 4013.0713, 122.363174, 0.17453, 360, 420, 0, 0), -- Foreman Sundown old guid 72353
(@CGUID+45, 20248, 530, 1, 3933.92, 4068.37, 123.317, 3.66519, 360, 420, 0, 0), -- Sunfury Nethermancer old guid 71953
(@CGUID+46, 20248, 530, 1, 4102.04, 3982.77, 117.137, 2.49582, 360, 420, 0, 0), -- Sunfury Nethermancer old guid 71966
(@CGUID+47, 20248, 530, 1, 4103.99, 3998.05, 117.511, 3.45575, 360, 420, 0, 0), -- Sunfury Nethermancer old guid 71967
(@CGUID+48, 20248, 530, 1, 4004.86, 3900.05, 122.699, 2.40855, 360, 420, 0, 0), -- Sunfury Nethermancer old guid 71961
(@CGUID+49, 20248, 530, 1, 3932.7, 3935.33, 122.765, 6.19592, 360, 420, 0, 0), -- Sunfury Nethermancer old guid 71955
(@CGUID+50, 20803, 530, 1, 4124.07, 3988.34, 118.623, 3.29867, 300, 420, 0, 0), -- Overmaster Grindgarr old guid 73468
(@CGUID+51, 20326, 530, 1, 3840.71, 4012.24, 129.269, 5.83183, 360, 420, 0, 0), -- Mo'arg Warp-Master old guid 72211
(@CGUID+52, 20326, 530, 1, 3940.73, 4046.72, 116.406, 4.04487, 360, 420, 0, 0), -- Mo'arg Warp-Master old guid 72210
(@CGUID+53, 20326, 530, 1, 3935.67, 3949.44, 123.835, 5.1906, 360, 420, 0, 0), -- Mo'arg Warp-Master old guid 72204

(@CGUID+54, 20285, 530, 1, 3821.72, 3906.72, 109.735, 4.16128, 360, 420, 0, 0), -- Gan'arg Warp-Tinker guid before 72060
(@CGUID+55, 20285, 530, 1, 3820.76, 3887.49, 109.646, 0.122173, 360, 420, 0, 0), -- Gan'arg Warp-Tinker guid before 72059
(@CGUID+56, 20285, 530, 1, 3841.27, 3877.35, 108.073, 2.95198, 360, 420, 0, 0); -- Gan'arg Warp-Tinker guid before 72058

DELETE FROM creature_spawn_data WHERE guid BETWEEN @CGUID+1 AND @CGUID+22;
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES
(@CGUID+1, 1887901), -- Phase Hunter
(@CGUID+2, 1887901), -- Phase Hunter
(@CGUID+3, 1887901), -- Phase Hunter
(@CGUID+4, 1887901), -- Phase Hunter
(@CGUID+5, 1887901), -- Phase Hunter
(@CGUID+6, 1887901), -- Phase Hunter
(@CGUID+7, 1887901), -- Phase Hunter
(@CGUID+8, 1887901), -- Phase Hunter
(@CGUID+9, 1887901), -- Phase Hunter
(@CGUID+10, 1887901), -- Phase Hunter
(@CGUID+11, 1887901), -- Phase Hunter
(@CGUID+12, 1887901), -- Phase Hunter
(@CGUID+13, 1887901), -- Phase Hunter
(@CGUID+14, 1887901), -- Phase Hunter
(@CGUID+15, 1887901), -- Phase Hunter
(@CGUID+16, 1887901), -- Phase Hunter
(@CGUID+17, 1887901), -- Phase Hunter
(@CGUID+18, 1887901), -- Phase Hunter
(@CGUID+19, 1887901), -- Phase Hunter
(@CGUID+20, 1887901), -- Phase Hunter
(@CGUID+21, 1887901), -- Phase Hunter
(@CGUID+22, 1887901); -- Phase Hunter

DELETE FROM creature_movement WHERE Id IN (72204, 72210, 72211);
DELETE FROM creature_movement WHERE Id BETWEEN @CGUID+1 AND @CGUID+22;
INSERT INTO `creature_movement` (`id`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(@CGUID+1, 1, 4079.78, 3665.91, 126.014, 100, 0, 0),
(@CGUID+1, 2, 4068.5588, 3712.4312, 109.4997, 100, 1000, 1887902), 
(@CGUID+2, 1, 4133.16, 3740.39, 126.148, 100, 0, 0),
(@CGUID+2, 2, 4068.4058, 3720.1616, 110.56709, 100, 1000, 1887902), 
(@CGUID+3, 1, 4129.7, 3789.52, 133.338, 100, 0, 0),
(@CGUID+3, 2, 4097.9097, 3836.0098, 125.84245, 100, 1000, 1887902),
(@CGUID+4, 1, 4198.21, 3857.55, 144.949, 100, 0, 0),
(@CGUID+4, 2, 4150.12, 3866.5195, 114.38668, 100, 1000, 1887902), 
(@CGUID+5, 1, 4205.58, 3909.77, 143.769, 100, 0, 0),
(@CGUID+5, 2, 4175.6094, 3947.8513, 112.24057, 100, 1000, 1887902), 
(@CGUID+6, 1, 4232.96, 3931.17, 139.278, 100, 0, 0),
(@CGUID+6, 2, 4148.6523, 3946.2375, 132.22375, 100, 1000, 1887902), 
(@CGUID+7, 1, 4232.77, 3984.98, 123.111, 100, 0, 0),
(@CGUID+7, 2, 4159.628, 3960.999, 121.06753, 100, 1000, 1887902), 
(@CGUID+8, 1, 4237.93, 4030.94, 130.434, 100, 0, 0),
(@CGUID+8, 2, 4182.9287, 4044.587, 118.404175, 100, 1000, 1887902), 
(@CGUID+9, 1, 4266.51, 4105.86, 114.481, 100, 0, 0),
(@CGUID+9, 2, 4225.5396, 4092.5557, 95.44631, 100, 1000, 1887902), 
(@CGUID+10, 1, 4265.66, 4148.36, 127.463, 100, 0, 0),
(@CGUID+10, 2, 4217.3896, 4139.4946, 112.35986, 100, 1000, 1887902), 
(@CGUID+11, 1, 4204.2, 4234.37, 130.732, 100, 0, 0),
(@CGUID+11, 2, 4199.4688, 4209.194, 107.168304, 100, 1000, 1887902), 
(@CGUID+12, 1, 4159.13, 4233.8, 143.078, 100, 0, 0),
(@CGUID+12, 2, 4146.359, 4153.7466, 133.10391, 100, 1000, 1887902), 
(@CGUID+13, 1, 4114.78, 4243.31, 152.009, 100, 0, 0),
(@CGUID+13, 2, 4139.361, 4202.864, 129.1658, 100, 1000, 1887902),
(@CGUID+14, 1, 4039.16, 4246.29, 138.87, 100, 0, 0),
(@CGUID+14, 2, 4069.0293, 4226.6074, 121.22, 100, 1000, 1887902), 
(@CGUID+15, 1, 3979.11, 4295.81, 139.783, 100, 0, 0),
(@CGUID+15, 2, 3972.0537, 4236.041, 133.0736, 100, 1000, 1887902), 
(@CGUID+16, 1, 3911.47, 4265.9, 144.033, 100, 0, 0),
(@CGUID+16, 2, 3916.2183, 4217.1416, 131.69717, 100, 1000, 1887902), 
(@CGUID+17, 1, 3896.11, 4245.85, 146.306, 100, 0, 0),
(@CGUID+17, 2, 3861.9087, 4167.658, 128.10658, 100, 1000, 1887902), 
(@CGUID+18, 1, 3831.59, 4265.75, 125.02, 100, 0, 0),
(@CGUID+18, 2, 3866.667, 4233.333, 114.87971, 100, 1000, 1887902), 
(@CGUID+19, 1, 3760.35, 4200.84, 126.156, 100, 0, 0),
(@CGUID+19, 2, 3796.956, 4202.969, 106.8112, 100, 1000, 1887902), 
(@CGUID+20, 1, 3742.38, 4156.48, 119.705, 100, 0, 0),
(@CGUID+20, 2, 3777.999, 4137.089, 99.13465, 100, 1000, 1887902),
(@CGUID+21, 1, 3775.55, 4091.97, 136.844, 100, 0, 0),
(@CGUID+21, 2, 3816.3667, 4134.648, 119.75554, 100, 1000, 1887902), 
(@CGUID+22, 1, 3699.91, 3970.87, 118.277, 100, 0, 0),
(@CGUID+22, 2, 3745.8037, 3995.3726, 102.548096, 100, 1000, 1887902);

DELETE FROM creature_addon WHERE guid IN (71955, 72064, 72064, 72065, 72072, 72073, 72211);


DELETE FROM spawn_group WHERE Id BETWEEN @SGGUID+67 AND @SGGUID+70;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
-- Trelleum Mine NPCs
(@SGGUID+66, 'Netherstorm - Group 066 - Gan\'arg Warp-Tinker', 0, 0, 0, 0, 0),
(@SGGUID+67, 'Netherstorm - Group 067 - Mo\'arg Warp-Master', 0, 0, 0, 0, 0),
(@SGGUID+68, 'Netherstorm - Group 068 - Overmaster Grindgarr', 0, 0, 0, 0, 0),
(@SGGUID+69, 'Netherstorm - Group 069 - Sunfury Nethermancer', 0, 0, 0, 0, 0),
(@SGGUID+70, 'Netherstorm - Group 070 - Sunfury Blood Knight', 0, 0, 0, 0, 0);

DELETE FROM spawn_group_spawn WHERE Guid BETWEEN @CGUID+1 AND @CGUID+22;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(@SGGUID+1, @CGUID+1, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+2, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+3, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+4, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+5, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+6, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+7, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+8, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+9, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+10, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+11, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+12, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+13, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+14, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+15, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+16, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+17, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+18, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+19, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+20, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+21, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+22, -1, 0), -- Phase Hunter
-- Gan\'arg Warp-Tinker
(@SGGUID+66, @CGUID+26, -1, 0),
(@SGGUID+66, @CGUID+27, -1, 0),
(@SGGUID+66, @CGUID+28, -1, 0),
(@SGGUID+66, @CGUID+29, -1, 0),
(@SGGUID+66, @CGUID+30, -1, 0),
(@SGGUID+66, @CGUID+31, -1, 0),
(@SGGUID+66, @CGUID+32, -1, 0),
(@SGGUID+66, @CGUID+33, -1, 0),
(@SGGUID+66, @CGUID+34, -1, 0),
(@SGGUID+66, @CGUID+35, -1, 0),
(@SGGUID+66, @CGUID+36, -1, 0),
(@SGGUID+66, @CGUID+37, -1, 0),
(@SGGUID+66, @CGUID+38, -1, 0),
(@SGGUID+66, @CGUID+39, -1, 0),
(@SGGUID+66, @CGUID+40, -1, 0),
(@SGGUID+66, @CGUID+41, -1, 0),
(@SGGUID+66, @CGUID+42, -1, 0),
(@SGGUID+66, @CGUID+43, -1, 0),
(@SGGUID+66, @CGUID+54, -1, 0),
(@SGGUID+66, @CGUID+55, -1, 0),
(@SGGUID+66, @CGUID+56, -1, 0),
-- Mo\'arg Warp-Master
(@SGGUID+67, @CGUID+51, -1, 0),
(@SGGUID+67, @CGUID+52, -1, 0),
(@SGGUID+67, @CGUID+53, -1, 0),
-- Overmaster Grindgarr
(@SGGUID+68, @CGUID+50, -1, 0),
-- Sunfury Nethermancer
(@SGGUID+69, @CGUID+45, -1, 0),
(@SGGUID+69, @CGUID+46, -1, 0),
(@SGGUID+69, @CGUID+47, -1, 0),
(@SGGUID+69, @CGUID+48, -1, 0),
(@SGGUID+69, @CGUID+49, -1, 0),
-- Sunfury Blood Knight
(@SGGUID+70, @CGUID+24, -1, 0),
(@SGGUID+70, @CGUID+25, -1, 0);
DELETE FROM creature WHERE guid IN(66945,99285,99286);
DELETE FROM creature_movement WHERE id IN(66945,99285,99286);

INSERT INTO creature(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
('66945', '18680', '530', '1', '628.2307', '7571.289', '17.749186', '4.35157012939453100000', '43200', '86400', '0', '4'),
('99285', '18680', '530', '1', '142.53972', '5461.729', '17.48858', '1.20404005050659180000', '43200', '86400', '0', '4'),
('99286', '18680', '530', '1', '256.29492', '8906.09', '20.674517', '0.34088999032974243000', '43200', '86400', '0', '4');

SET @SGGUID := 24000; -- Zangarmarsh
DELETE FROM spawn_group WHERE Id = @SGGUID+2;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGGUID+2, 'Zangarmarsh - Marticar', 0, 1, 0, 0);

DELETE FROM spawn_group_spawn WHERE Id = @SGGUID+2;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGGUID+2, 66945, -1),
(@SGGUID+2, 99285, -1),
(@SGGUID+2, 99286, -1);

SET @MOVID = 66945;
-- GUID: Full: 0x204CB04240123E000000480000223A6E Creature/0 R4908/S72 Map: 530 (Outland) Entry: 18680 (Marticar) Low: 2243182 PathType: None
INSERT INTO creature_movement (Id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId, Comment) VALUES
(@MOVID + 0, '1', '628.2307', '7571.289', '17.749186', '100', '0', '0', NULL),
(@MOVID + 0, '2', '657.05664', '7560.771', '17.395557', '100', '0', '0', NULL),
(@MOVID + 0, '3', '696.57043', '7555.7134', '17.758718', '100', '0', '0', NULL),
(@MOVID + 0, '4', '724.4364', '7543.783', '18.01786', '100', '0', '0', NULL),
(@MOVID + 0, '5', '745.1904', '7540.5225', '19.515402', '100', '0', '0', NULL),
(@MOVID + 0, '6', '772.45215', '7535.51', '19.206823', '100', '0', '0', NULL),
(@MOVID + 0, '7', '793.6759', '7525.8516', '18.780941', '100', '0', '0', NULL),
(@MOVID + 0, '8', '819.9007', '7504.014', '17.957952', '100', '0', '0', NULL),
(@MOVID + 0, '9', '822.4167', '7471.608', '17.736109', '100', '0', '0', NULL),
(@MOVID + 0, '10', '808.79895', '7447.308', '17.694948', '100', '0', '0', NULL),
(@MOVID + 0, '11', '824.3302', '7405.5635', '18.074173', '100', '0', '0', NULL),
(@MOVID + 0, '12', '821.9486', '7371.1084', '18.274355', '100', '0', '0', NULL),
(@MOVID + 0, '13', '806.0661', '7341.5513', '17.798372', '100', '0', '0', NULL),
(@MOVID + 0, '14', '776.5325', '7327.608', '18.12447', '100', '0', '0', NULL),
(@MOVID + 0, '15', '753.3121', '7308.512', '17.769505', '100', '0', '0', NULL),
(@MOVID + 0, '16', '765.42816', '7270.7085', '17.499096', '100', '0', '0', NULL),
(@MOVID + 0, '17', '788.8834', '7237.022', '18.640453', '100', '0', '0', NULL),
(@MOVID + 0, '18', '808.0176', '7203.82', '17.499092', '100', '0', '0', NULL),
(@MOVID + 0, '19', '815.6731', '7169.5923', '17.498629', '100', '0', '0', NULL),
(@MOVID + 0, '20', '810.13995', '7136.083', '17.623981', '100', '0', '0', NULL),
(@MOVID + 0, '21', '852.2531', '7110.896', '17.499014', '100', '0', '0', NULL),
(@MOVID + 0, '22', '876.86456', '7096.3423', '17.713892', '100', '0', '0', NULL),
(@MOVID + 0, '23', '917.86743', '7089.173', '20.72021', '100', '0', '0', NULL),
(@MOVID + 0, '24', '932.53613', '7066.452', '18.888792', '100', '0', '0', NULL),
(@MOVID + 0, '25', '926.9039', '7033.107', '19.44012', '100', '0', '0', NULL),
(@MOVID + 0, '26', '919.0267', '6999.271', '21.016657', '100', '0', '0', NULL),
(@MOVID + 0, '27', '906.3265', '6965.615', '20.863838', '100', '0', '0', NULL),
(@MOVID + 0, '28', '885.1426', '6945.8193', '19.987137', '100', '0', '0', NULL),
(@MOVID + 0, '29', '860.05383', '6918.3306', '19.372744', '100', '0', '0', NULL),
(@MOVID + 0, '30', '851.4122', '6881.7197', '19.256386', '100', '0', '0', NULL),
(@MOVID + 0, '31', '845.80774', '6845.0737', '18.689386', '100', '0', '0', NULL),
(@MOVID + 0, '32', '828.6848', '6820.541', '19.831764', '100', '0', '0', NULL),
(@MOVID + 0, '33', '825.347', '6779.8115', '18.116417', '100', '0', '0', NULL),
(@MOVID + 0, '34', '816.1103', '6752.5146', '17.780533', '100', '0', '0', NULL),
(@MOVID + 0, '35', '799.9326', '6723.7686', '18.255842', '100', '0', '0', NULL),
(@MOVID + 0, '36', '794.7397', '6685.721', '18.749773', '100', '0', '0', NULL);

SET @MOVID = 99285;
-- GUID: Full: 0x204CB04240123E000000730000155408 Creature/0 R4908/S115 Map: 530 (Outland) Entry: 18680 (Marticar) Low: 1397768 PathType: None
INSERT INTO creature_movement (Id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId, Comment) VALUES
(@MOVID + 0, '1', '142.53972', '5461.729', '17.48858', '100', '0', '0', NULL),
(@MOVID + 0, '2', '138.0906', '5509.2754', '17.499079', '100', '0', '0', NULL),
(@MOVID + 0, '3', '145.02083', '5543.5024', '17.499094', '100', '0', '0', NULL),
(@MOVID + 0, '4', '157.2582', '5574.1313', '17.499096', '100', '0', '0', NULL),
(@MOVID + 0, '5', '192.84859', '5599.34', '17.49908', '100', '0', '0', NULL),
(@MOVID + 0, '6', '213.59717', '5625.9634', '17.499088', '100', '0', '0', NULL),
(@MOVID + 0, '7', '222.1448', '5640.9004', '17.499083', '100', '0', '0', NULL),
(@MOVID + 0, '8', '252.21408', '5650.009', '17.499083', '100', '0', '0', NULL),
(@MOVID + 0, '9', '296.24295', '5655.014', '17.499086', '100', '0', '0', NULL),
(@MOVID + 0, '10', '342.21713', '5663.654', '17.499084', '100', '0', '0', NULL),
(@MOVID + 0, '11', '357.80008', '5694.3735', '17.89081', '100', '0', '0', NULL),
(@MOVID + 0, '12', '367.08078', '5724.6865', '18.673983', '100', '0', '0', NULL),
(@MOVID + 0, '13', '366.67416', '5761.019', '17.418974', '100', '0', '0', NULL),
(@MOVID + 0, '14', '402.6261', '5765.718', '17.499092', '100', '0', '0', NULL),
(@MOVID + 0, '15', '450.2639', '5755.4946', '17.460524', '100', '0', '0', NULL),
(@MOVID + 0, '16', '464.1964', '5776.9917', '17.413353', '100', '0', '0', NULL),
(@MOVID + 0, '17', '485.41565', '5806.5073', '17.811705', '100', '0', '0', NULL),
(@MOVID + 0, '18', '498.82065', '5837.5547', '21.571924', '100', '0', '0', NULL),
(@MOVID + 0, '19', '499.39578', '5874.8057', '18.881563', '100', '0', '0', NULL),
(@MOVID + 0, '20', '517.21375', '5885.896', '17.747896', '100', '0', '0', NULL),
(@MOVID + 0, '21', '548.34814', '5899.5835', '17.499104', '100', '0', '0', NULL),
(@MOVID + 0, '22', '580.5139', '5931.471', '17.774996', '100', '0', '0', NULL),
(@MOVID + 0, '23', '595.8325', '5967.612', '17.506468', '100', '0', '0', NULL),
(@MOVID + 0, '24', '636.66394', '5960.3784', '17.499094', '100', '0', '0', NULL),
(@MOVID + 0, '25', '672.4711', '5946.895', '17.509998', '100', '0', '0', NULL),
(@MOVID + 0, '26', '703.4393', '5935.125', '17.663664', '100', '0', '0', NULL),
(@MOVID + 0, '27', '731.24243', '5900.5103', '17.807093', '100', '0', '0', NULL),
(@MOVID + 0, '28', '737.3167', '5863.514', '17.562067', '100', '0', '0', NULL),
(@MOVID + 0, '29', '741.3309', '5823.413', '17.570892', '100', '0', '0', NULL),
(@MOVID + 0, '30', '731.3707', '5803.182', '18.498156', '100', '0', '0', NULL),
(@MOVID + 0, '31', '718.014', '5773.573', '18.730696', '100', '0', '0', NULL),
(@MOVID + 0, '32', '707.25555', '5737.1045', '17.505342', '100', '0', '0', NULL);

SET @MOVID = 99286;
-- GUID: Full: 0x204CB04240123E0000007300001BAEA3 Creature/0 R4908/S115 Map: 530 (Outland) Entry: 18680 (Marticar) Low: 1814179 PathType: ExactPath
INSERT INTO creature_movement (Id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId, Comment) VALUES
(@MOVID + 0, '1', '256.29492', '8906.09', '20.674517', '100', '0', '0', NULL),
(@MOVID + 0, '2', '255.06023', '8906.061', '20.993486', '100', '0', '0', NULL),
(@MOVID + 0, '3', '255.06055', '8906.061', '20.799517', '100', '0', '0', NULL),
(@MOVID + 0, '4', '254.4707', '8906.867', '21.549517', '100', '0', '0', NULL),
(@MOVID + 0, '5', '253.88086', '8907.675', '22.299517', '100', '0', '0', NULL),
(@MOVID + 0, '6', '253.29102', '8908.482', '22.924517', '100', '0', '0', NULL),
(@MOVID + 0, '7', '252.11133', '8910.096', '23.549517', '100', '0', '0', NULL),
(@MOVID + 0, '8', '251.52148', '8910.903', '24.049517', '100', '0', '0', NULL),
(@MOVID + 0, '9', '250.93164', '8911.711', '24.424517', '100', '0', '0', NULL),
(@MOVID + 0, '10', '250.3418', '8912.518', '24.674517', '100', '0', '0', NULL),
(@MOVID + 0, '11', '244.44336', '8920.589', '24.424517', '100', '0', '0', NULL),
(@MOVID + 0, '12', '243.26367', '8922.203', '24.174517', '100', '0', '0', NULL),
(@MOVID + 0, '13', '241.49414', '8924.625', '23.924517', '100', '0', '0', NULL),
(@MOVID + 0, '14', '238.54492', '8928.66', '24.174517', '100', '0', '0', NULL),
(@MOVID + 0, '15', '237.36523', '8930.274', '23.799517', '100', '0', '0', NULL),
(@MOVID + 0, '16', '236.18555', '8931.889', '23.549517', '100', '0', '0', NULL),
(@MOVID + 0, '17', '235.00586', '8933.503', '23.160559', '100', '0', '0', NULL),
(@MOVID + 0, '18', '234.70172', '8933.886', '23.043982', '100', '0', '0', NULL),
(@MOVID + 0, '19', '200.25652', '8962.1455', '17.35802', '100', '0', '0', NULL),
(@MOVID + 0, '20', '167.96983', '8983.57', '18.89164', '100', '0', '0', NULL),
(@MOVID + 0, '21', '141.07747', '8987.57', '20.390978', '100', '0', '0', NULL),
(@MOVID + 0, '22', '141.28711', '8987.539', '20.390978', '100', '0', '0', NULL),
(@MOVID + 0, '23', '141.07747', '8987.57', '20.390978', '100', '0', '0', NULL),
(@MOVID + 0, '24', '137.25977', '8984.338', '20.140978', '100', '0', '0', NULL),
(@MOVID + 0, '25', '131.15039', '8979.166', '19.866007', '100', '0', '0', NULL),
(@MOVID + 0, '26', '127.33203', '8975.934', '19.616007', '100', '0', '0', NULL),
(@MOVID + 0, '27', '123.51367', '8972.701', '19.366007', '100', '0', '0', NULL),
(@MOVID + 0, '28', '119.69531', '8969.469', '19.116007', '100', '0', '0', NULL),
(@MOVID + 0, '29', '117.4043', '8967.529', '18.866007', '100', '0', '0', NULL),
(@MOVID + 0, '30', '115.11328', '8965.59', '18.545805', '100', '0', '0', NULL),
(@MOVID + 0, '31', '114.99848', '8965.466', '18.645414', '100', '0', '0', NULL),
(@MOVID + 0, '32', '93.19303', '8930.979', '20.0932', '100', '0', '0', NULL),
(@MOVID + 0, '33', '56.667645', '8913.88', '22.213175', '100', '0', '0', NULL),
(@MOVID + 0, '34', '93.19303', '8930.979', '20.0932', '100', '0', '0', NULL),
(@MOVID + 0, '35', '114.99848', '8965.466', '18.645414', '100', '0', '0', NULL),
(@MOVID + 0, '36', '141.07747', '8987.57', '20.390978', '100', '0', '0', NULL),
(@MOVID + 0, '37', '167.96983', '8983.57', '18.89164', '100', '0', '0', NULL),
(@MOVID + 0, '38', '200.25652', '8962.1455', '17.35802', '100', '0', '0', NULL),
(@MOVID + 0, '39', '234.70172', '8933.886', '23.043982', '100', '0', '0', NULL),
(@MOVID + 0, '40', '255.06023', '8906.061', '20.993486', '100', '0', '0', NULL),
(@MOVID + 0, '41', '297.29428', '8906.911', '21.34273', '100', '0', '0', NULL),
(@MOVID + 0, '42', '335.0724', '8909.502', '22.946487', '100', '0', '0', NULL),
(@MOVID + 0, '43', '371.76694', '8909.513', '28.890162', '100', '0', '0', NULL),
(@MOVID + 0, '44', '388.70422', '8870.097', '22.842089', '100', '0', '0', NULL),
(@MOVID + 0, '45', '390.12653', '8830.593', '19.701984', '100', '0', '0', NULL),
(@MOVID + 0, '46', '401.3063', '8801.054', '21.218796', '100', '0', '0', NULL),
(@MOVID + 0, '47', '443.71463', '8777.425', '18.609808', '100', '0', '0', NULL),
(@MOVID + 0, '48', '433.99817', '8737.998', '18.946423', '100', '0', '0', NULL),
(@MOVID + 0, '49', '465.3203', '8721.37', '21.586363', '100', '0', '0', NULL),
(@MOVID + 0, '50', '503.02344', '8716.62', '18.725868', '100', '0', '0', NULL),
(@MOVID + 0, '51', '542.6731', '8730.344', '19.594501', '100', '0', '0', NULL),
(@MOVID + 0, '52', '578.72626', '8710.94', '19.17722', '100', '0', '0', NULL),
(@MOVID + 0, '53', '610.0458', '8709.801', '22.361034', '100', '0', '0', NULL),
(@MOVID + 0, '54', '633.2147', '8682.519', '22.955011', '100', '0', '0', NULL),
(@MOVID + 0, '55', '656.0547', '8663.463', '18.633675', '100', '0', '0', NULL),
(@MOVID + 0, '56', '685.2031', '8663.2', '23.238676', '100', '0', '0', NULL),
(@MOVID + 0, '57', '720.62286', '8630.393', '17.92152', '100', '0', '0', NULL),
(@MOVID + 0, '58', '727.9318', '8588.041', '17.499096', '100', '0', '0', NULL),
(@MOVID + 0, '59', '746.24274', '8581.663', '17.499096', '100', '0', '0', NULL),
(@MOVID + 0, '60', '784.0049', '8578.621', '17.392723', '100', '0', '0', NULL),
(@MOVID + 0, '61', '817.8743', '8576.908', '17.499016', '100', '0', '0', NULL),
(@MOVID + 0, '62', '849.0709', '8570.88', '17.498287', '100', '0', '0', NULL),
(@MOVID + 0, '63', '878.195', '8568.392', '17.498884', '100', '0', '0', NULL),
(@MOVID + 0, '64', '911.20685', '8555.883', '17.499092', '100', '0', '0', NULL);


-- Remove old pooling
DELETE FROM pool_creature_template WHERE id = 18680;
DELETE FROM pool_template WHERE entry = 1192;
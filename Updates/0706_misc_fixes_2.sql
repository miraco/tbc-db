-- Creature (Entry: 5509) has VendorTemplateId = 317 that has same item in both npc_vendor and npc_vendor_template.
-- https://www.wowhead.com/wotlk/npc=5509/kathrum-axehand
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 5509; -- 4 items in wotlk
-- Add missing Slots to this _template
UPDATE `npc_vendor_template` SET `Slot` = 1 WHERE `entry` = 317 AND `item` = 2522;
UPDATE `npc_vendor_template` SET `Slot` = 2 WHERE `entry` = 317 AND `item` = 2530;
UPDATE `npc_vendor_template` SET `Slot` = 3 WHERE `entry` = 317 AND `item` = 2523;
UPDATE `npc_vendor_template` SET `Slot` = 4 WHERE `entry` = 317 AND `item` = 2531;


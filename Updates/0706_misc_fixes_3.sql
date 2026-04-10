-- Creature (Entry: 6928) has VendorTemplateId = 1202 that has same item in both npc_vendor and npc_vendor_template.
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 6928; -- 15 items in wotlk


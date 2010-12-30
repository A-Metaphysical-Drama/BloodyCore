-- 10200_world_spell_bonus_data.sql
-- Patch 3.3.3: Frostbolt's Spell Power scaling has been increased by approximately 5%.
DELETE FROM `spell_bonus_data` WHERE `entry` IN ('116');
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
('116','0.857','0','0','0','Mage - Frostbolt');


-- 10220_world_spell_linked_spell.sql
-- Vanish
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = -1784;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(-1784, -11327, 0, 'Vanish - Rank 1'),
(-1784, -11329, 0, 'Vanish - Rank 2'),
(-1784, -26888, 0, 'Vanish - Rank 3');


-- 10223_world_spell_script_names.sql
-- Summon Gargoyle: Runic Power Feed was removed in 3.2
DELETE FROM `spell_script_names` WHERE `spell_id` = 50524;


-- 10224_world_spell_script_names.sql
-- Raise Dead - Ghoul Avoidance
DELETE FROM `spell_script_names` WHERE `spell_id` = 46584;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(46584, 'spell_dk_raise_dead');


-- 10231_world_spell_bonus_data.sql
-- Deadly Poison
DELETE FROM `spell_bonus_data` WHERE `entry` IN ('2818');
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
('2818','0','0','0','0.03','Rogue - Deadly Poison Rank 1($AP*0.12 / number of ticks)');


-- 10231_world_spell_script_names.sql
-- Deadly Poison
DELETE FROM `spell_script_names` WHERE `spell_id` IN ('-2818');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
('-2818','spell_rog_deadly_poison');


-- 10252_world_spell_bonus_data.sql
-- Blood Boil
DELETE FROM `spell_bonus_data` WHERE `entry` IN ('48721', '49941');
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
('48721','0','-1','0.06','-1','Death Knight - Blood Boil');


-- 10253_world_spell_bonus_data.sql
-- Howling Blast
DELETE FROM `spell_bonus_data` WHERE `entry` IN ('49184');
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
('49184','-1','-1','0.2','-1','Death Knight - Howling Blast');


-- 10258_world_spell_bonus_data.sql
-- Riptide, Earth Shield and Healing Stream Totem Triggered Heal
DELETE FROM `spell_bonus_data` WHERE `entry` IN ('974', '52042', '61295');
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(61295, 0.402, 0.188, -1, -1, 'Shaman - Riptide'),
(974, 0.538, -1, -1, -1, 'Shaman - Earth Shield'),
(52042, 0.08272, -1, -1, -1, 'Shaman - Healing Stream Totem Triggered Heal');


-- 10263_world_spell_bonus_data.sql
-- Revenge
DELETE FROM `spell_bonus_data` WHERE `entry` IN ('6572');
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(6572, -1, -1, 0.31, -1, 'Warrior - Revenge');


-- 10283_world_spell_bonus_data.sql
-- Lightning Shield
DELETE FROM `spell_bonus_data` WHERE `entry` IN ('26364');
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(26364, 0.267, -1, -1, -1, 'Shaman - Lightning Shield Proc');


-- 10557_world_spell_script_names.sql
-- Fire Bomb (66313) Spell Script
DELETE FROM `spell_script_names` WHERE `spell_id` = 66313;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('66313', 'spell_gen_fire_bomb');


-- 10791_world_command.sql
-- Security update of some GM Commands
-- Security 0
UPDATE `command` SET `security` = '2' WHERE `name` LIKE 'account lock';

-- Security 1
UPDATE `command` SET `security` = '3' WHERE `name` LIKE 'debug%';
UPDATE `command` SET `security` = '3' WHERE `name` LIKE 'modify arena';
UPDATE `command` SET `security` = '3' WHERE `name` LIKE 'modify bit';
UPDATE `command` SET `security` = '3' WHERE `name` LIKE 'modify faction';
UPDATE `command` SET `security` = '3' WHERE `name` LIKE 'modify honor';
UPDATE `command` SET `security` = '2' WHERE `name` LIKE 'modify money';
UPDATE `command` SET `security` = '3' WHERE `name` LIKE 'modify spell';
UPDATE `command` SET `security` = '3' WHERE `name` LIKE 'modify tp';
UPDATE `command` SET `security` = '3' WHERE `name` LIKE 'npc add formation';
UPDATE `command` SET `security` = '2' WHERE `name` LIKE 'saveall';
UPDATE `command` SET `security` = '3' WHERE `name` LIKE 'taxicheat';
UPDATE `command` SET `security` = '3' WHERE `name` LIKE 'ticket%';

-- Security 2
UPDATE `command` SET `security` = '1' WHERE `name` LIKE 'demorph';
UPDATE `command` SET `security` = '1' WHERE `name` LIKE 'playall';
UPDATE `command` SET `security` = '3' WHERE `name` LIKE 'wp%';

-- Security 3
UPDATE `command` SET `security` = '2' WHERE `name` LIKE 'additem';
UPDATE `command` SET `security` = '2' WHERE `name` LIKE 'ban%';
UPDATE `command` SET `security` = '2' WHERE `name` LIKE 'cooldown';
UPDATE `command` SET `security` = '2' WHERE `name` LIKE 'cast%';
UPDATE `command` SET `security` = '2' WHERE `name` LIKE 'damage';
UPDATE `command` SET `security` = '2' WHERE `name` LIKE 'die';
UPDATE `command` SET `security` = '1' WHERE `name` LIKE 'gm fly';
UPDATE `command` SET `security` = '2' WHERE `name` LIKE 'guild%';
UPDATE `command` SET `security` = '2' WHERE `name` LIKE 'learn';
UPDATE `command` SET `security` = '2' WHERE `name` LIKE 'list%';
UPDATE `command` SET `security` = '2' WHERE `name` LIKE 'lookup%';
UPDATE `command` SET `security` = '2' WHERE `name` LIKE 'quest%';
UPDATE `command` SET `security` = '2' WHERE `name` LIKE 'reset';
UPDATE `command` SET `security` = '4' WHERE `name` LIKE 'reset all%';
UPDATE `command` SET `security` = '2' WHERE `name` LIKE 'reset stats';
UPDATE `command` SET `security` = '2' WHERE `name` LIKE 'respawn';
UPDATE `command` SET `security` = '2' WHERE `name` LIKE 'revive';
UPDATE `command` SET `security` = '2' WHERE `name` LIKE 'send%';
UPDATE `command` SET `security` = '2' WHERE `name` LIKE 'server';
UPDATE `command` SET `security` = '2' WHERE `name` LIKE 'server shutdown%';
UPDATE `command` SET `security` = '2' WHERE `name` LIKE 'unaura';
UPDATE `command` SET `security` = '2' WHERE `name` LIKE 'unban%';
UPDATE `command` SET `security` = '2' WHERE `name` LIKE 'unlearn';

-- Security 4
UPDATE `command` SET `security` = '3' WHERE `name` LIKE 'achievement%';


-- 10792_world_spell_script_names.sql
-- Rapid Burst (63382) Spell Script
DELETE FROM `spell_script_names` WHERE `spell_id` = 63382;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('63382', 'spell_gen_rapid_burst');


-- 10869_world_spell_bonus_data.sql
-- Pounce AP bonus
DELETE FROM `spell_bonus_data` WHERE `entry` = 9007;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
('9007','0','0','0','0.03','Druid - Pounce ($AP*0.18 / number of ticks)');
-- Rake AP bonus
DELETE FROM `spell_bonus_data` WHERE `entry` = 1822;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
('1822','0','0','0.01','0.06','Druid - Rake ($AP*0.18 / number of ticks)');
-- 10870_world_spell_bonus_data.sql
-- Starfall SP Bonus
DELETE FROM `spell_bonus_data` WHERE `comments` LIKE "Druid - Starfall%";
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
('50294','0.13','0','0','0','Druid - Starfall AOE rank 1'),
('53188','0.13','0','0','0','Druid - Starfall AOE rank 2'),
('53189','0.13','0','0','0','Druid - Starfall AOE rank 3'),
('53190','0.13','0','0','0','Druid - Starfall AOE rank 4'),
('50288','0.3','0','0','0','Druid - Starfall rank 1'),
('53191','0.3','0','0','0','Druid - Starfall rank 2'),
('53194','0.3','0','0','0','Druid - Starfall rank 3'),
('53195','0.3','0','0','0','Druid - Starfall rank 4');
-- 10879_world_spelldifficulty_dbc.sql
-- Cleanup
DELETE FROM `spelldifficulty_dbc` WHERE `id` > 3194;

-- Razorscale
INSERT INTO `spelldifficulty_dbc` (`id`, `spellid0`, `spellid1`, `spellid2`, `spellid3`) VALUES 
('3195','64758','64759','0','0'),
('3196','63809','64696','0','0'),
('3197','46763','64062','0','0'),
('3198','63807','63808','0','0');

-- XT-002
INSERT INTO `spelldifficulty_dbc` (`id`, `spellid0`, `spellid1`, `spellid2`, `spellid3`) VALUES 
('3199','63018','65121','0','0'),
('3200','63024','64234','0','0'),
('3201','65737','64193','0','0'),
('3202','64203','64235','0','0'),
('3203','64227','64236','0','0');

-- Assembly of Iron
INSERT INTO `spelldifficulty_dbc` (`id`, `spellid0`, `spellid1`, `spellid2`, `spellid3`) VALUES 
('3204','61890','63498','0','0'),
('3205','61903','63493','0','0'),
('3206','44008','63494','0','0'),
('3207','64637','61888','0','0'),
('3208','62274','63489','0','0'),
('3209','62269','63490','0','0'),
('3210','62054','63491','0','0'),
('3211','61879','63479','0','0'),
('3212','61869','63481','0','0'),
('3213','61915','63483','0','0'),
('3214','61887','63486','0','0');

-- Kologarn
INSERT INTO `spelldifficulty_dbc` (`id`, `spellid0`, `spellid1`, `spellid2`, `spellid3`) VALUES 
('3215','63629','63979','0','0'),
('3216','63356','64003','0','0'),
('3217','63573','64006','0','0'),
('3218','63716','64005','0','0'),
('3219','62030','63980','0','0'),
('3220','63783','63982','0','0'),
('3221','64290','64292','0','0'),
('3222','62056','63985','0','0'),
('3223','63766','63983','0','0'),
('3224','63347','63977','0','0');

-- Auriaya
INSERT INTO `spelldifficulty_dbc` (`id`, `spellid0`, `spellid1`, `spellid2`, `spellid3`) VALUES 
('3225','64389','64678','0','0'),
('3226','64422','64688','0','0'),
('3227','64496','64674','0','0'),
('3228','64478','64669','0','0'),
('3229','64458','64676','0','0'),
('3230','64666','64374','0','0'),
('3231','64375','64667','0','0');

-- Hodir
INSERT INTO `spelldifficulty_dbc` (`id`, `spellid0`, `spellid1`, `spellid2`, `spellid3`) VALUES 
('3232','62478','63512','0','0'),
('3233','65123','65133','0','0');

-- Thorim
INSERT INTO `spelldifficulty_dbc` (`id`, `spellid0`, `spellid1`, `spellid2`, `spellid3`) VALUES 
('3234','62131','64390','0','0');

-- Freya
INSERT INTO `spelldifficulty_dbc` (`id`, `spellid0`, `spellid1`, `spellid2`, `spellid3`) VALUES 
('3235','62528','62892','0','0'),
('3236','62623','62872','0','0'),
('3237','62437','62859','0','0'),
('3238','62283','62930','0','0'),
('3239','62451','62865','0','0'),
('3240','62950','62955','0','0'),
('3241','62952','62956','0','0'),
('3242','62953','62957','0','0'),
('3243','62954','62958','0','0'),
('3244','62598','62937','0','0'),
('3245','62589','63571','0','0'),
('3246','62648','62939','0','0'),
('3247','62649','62938','0','0'),
('3248','62664','64191','0','0'),
('3249','64587','64650','0','0'),
('3250','62584','64185','0','0'),
('3251','62337','62933','0','0'),
('3252','62325','62932','0','0'),
('3253','62310','62928','0','0'),
('3254','64060','64071','0','0'),
('3255','62438','62861','0','0'),
('3256','62217','62922','0','0'),
('3257','62240','62920','0','0');

-- Mimiron
INSERT INTO `spelldifficulty_dbc` (`id`, `spellid0`, `spellid1`, `spellid2`, `spellid3`) VALUES 
('3258','63666','65026','0','0'),
('3259','62997','64529','0','0'),
('3260','66351','63009','0','0'),
('3261','63677','64533','0','0'),
('3262','64348','64536','0','0'),
('3263','63689','64535','0','0');


-- 10941_world_spell_proc_event.sql
-- Misery proc
DELETE FROM `spell_proc_event` WHERE `entry` IN (33191, 33192, 33193);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
('33191','0','6', 0x808000, 0x400, 0x40,'0','0','0','0','0'),
('33192','0','6', 0x808000, 0x400, 0x40,'0','0','0','0','0'),
('33193','0','6', 0x808000, 0x400, 0x40,'0','0','0','0','0');
-- 11000_world_spell_script_names.sql
-- Biting Cold Spell Scripts
DELETE FROM `spell_script_names` WHERE `spell_id` IN (62038, 62039);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
('62038', 'spell_gen_biting_cold'),
('62039', 'spell_gen_biting_cold_dot');


-- 11007_world_spell_dbc.sql
-- Warrior T8 Protection 4P Bonus
INSERT INTO `spell_dbc` (`Id`, `Dispel`, `Mechanic`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `Stances`, `StancesNot`, `Targets`, `CastingTimeIndex`, `AuraInterruptFlags`, `ProcFlags`, `ProcChance`, `ProcCharges`, `MaxLevel`, `BaseLevel`, `SpellLevel`, `DurationIndex`, `RangeIndex`, `StackAmount`, `EquippedItemClass`, `EquippedItemSubClassMask`, `EquippedItemInventoryTypeMask`, `Effect1`, `Effect2`, `Effect3`, `EffectDieSides1`, `EffectDieSides2`, `EffectDieSides3`, `EffectRealPointsPerLevel1`, `EffectRealPointsPerLevel2`, `EffectRealPointsPerLevel3`, `EffectBasePoints1`, `EffectBasePoints2`, `EffectBasePoints3`, `EffectMechanic1`, `EffectMechanic2`, `EffectMechanic3`, `EffectImplicitTargetA1`, `EffectImplicitTargetA2`, `EffectImplicitTargetA3`, `EffectImplicitTargetB1`, `EffectImplicitTargetB2`, `EffectImplicitTargetB3`, `EffectRadiusIndex1`, `EffectRadiusIndex2`, `EffectRadiusIndex3`, `EffectApplyAuraName1`, `EffectApplyAuraName2`, `EffectApplyAuraName3`, `EffectAmplitude1`, `EffectAmplitude2`, `EffectAmplitude3`, `EffectMultipleValue1`, `EffectMultipleValue2`, `EffectMultipleValue3`, `EffectMiscValue1`, `EffectMiscValue2`, `EffectMiscValue3`, `EffectMiscValueB1`, `EffectMiscValueB2`, `EffectMiscValueB3`, `EffectTriggerSpell1`, `EffectTriggerSpell2`, `EffectTriggerSpell3`, `EffectSpellClassMaskA1`, `EffectSpellClassMaskA2`, `EffectSpellClassMaskA3`, `EffectSpellClassMaskB1`, `EffectSpellClassMaskB2`, `EffectSpellClassMaskB3`, `EffectSpellClassMaskC1`, `EffectSpellClassMaskC2`, `EffectSpellClassMaskC3`, `MaxTargetLevel`, `SpellFamilyName`, `SpellFamilyFlags1`, `SpellFamilyFlags2`, `SpellFamilyFlags3`, `MaxAffectedTargets`, `DmgClass`, `PreventionType`, `DmgMultiplier1`, `DmgMultiplier2`, `DmgMultiplier3`, `AreaGroupId`, `SchoolMask`, `Comment`) VALUES
('64934', '1', '0', '384', '0', '0', '0', '0', '131080', '0', '0', '0', '1', '0', '0', '101', '0', '0', '80', '80', '1', '1', '0', '-1', '0', '0', '6', '0', '0', '1', '0', '1', '0', '0', '0', '-21', '0', '-11', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '87', '0', '0', '0', '0', '0', '0', '0', '0', '126', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16777829', '0', '0', '0', '15', '0', '0', '0', '0', '0', '0', '1', '1', '1', '0', '32', 'Item - Warrior T8 Protection 4P Bonus');


-- 11008_world_spell_proc_event.sql
-- Remove Elemental Focus proc from Healing Wave or Lesser Healing Wave
UPDATE `spell_proc_event` SET `SpellFamilyMask0` = 0x90100003 WHERE `entry` = '16164';

-- 11009_spell_linked_spell.sql
-- Apply also dispell/immunity to snare effects on Spirit Walk
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '58875';
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUE ('58875', '58876', '2', 'Spirit Walk - Immunity');


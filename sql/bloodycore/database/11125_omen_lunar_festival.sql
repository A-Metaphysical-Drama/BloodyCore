UPDATE `creature_template` SET `ScriptName` = 'npc_omen' WHERE `entry` = 15467;
DELETE FROM `creature` WHERE `id`=15467;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(NULL, 15467, 1, 1, 1, 0, 0, 7544.55, -2803.19, 448.74, 4.0, 300, 0, 0, 5578000, 0, 0, 0, 0, 0, 0);

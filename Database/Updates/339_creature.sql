-- "Cookie" McWeaksauce
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 61976;
DELETE FROM creature_movement WHERE id = 61976;
UPDATE creature_template SET MovementType = 2 WHERE entry = 17246;
DELETE FROM creature_movement_template WHERE entry = 17246;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(17246,1,-4708.59,-12400.3,11.8799,45000,0,0.957318,0,0),
(17246,2,-4708.59,-12400.3,11.8799,6000,1724601,0.957318,0,0),
(17246,3,-4704.573,-12405.38,12.4597,0,0,5.20039,0,0),
(17246,4,-4704.573,-12405.38,12.4597,48000,1724602,5.20039,0,0),
(17246,5,-4708.59,-12400.3,11.8799,30000,0,0.957318,0,0),
(17246,6,-4708.59,-12400.3,11.8799,30000,1724603,0.957318,0,0),
(17246,7,-4706.2,-12401.6,12.0858, 0, 0,5.97209, 0, 0),
(17246,8,-4702.63,-12401.1,11.7653, 0, 0,0.499427, 0, 0),
(17246,9,-4699.89,-12398.4,11.6181, 0, 0,1.2377, 0, 0),
(17246,10,-4700.77,-12395,11.6193, 5000, 1724604,3.40099, 0, 0),
(17246,11,-4703.86,-12392.2,11.6306, 0, 0,2.64652, 0, 0),
(17246,12,-4707.55,-12390.8,11.7246, 0, 0,3.2662, 0, 0),
(17246,13,-4710.58,-12394,11.8418, 30000, 1724603,4.95166, 0, 0),
(17246,14,-4713.32,-12394.2,11.7392, 0, 0,3.93064, 0, 0),
(17246,15,-4714.78,-12398.2,11.8794, 0, 0,4.47649, 0, 0),
(17246,16,-4715.03,-12401.5,11.9805, 0, 0,5.0891, 0, 0),
(17246,17,-4713.15,-12405.1,12.0613, 0, 0,0.594256, 0, 0),
(17246,18,-4710.72,-12400.9,11.8921, 30000, 1724603,2.41481, 0, 0),
(17246,19,-4708.59,-12400.3,11.8799,240000,0,0.957318,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1724601 AND 1724604; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1724601,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(1724601,1,21,1,0,17240,61965,7 | 0x10,0,0,0,0,0,0,0,0,'Buddy - active'),
(1724601,2,36,0,0,17240,61965,0x10,0,0,0,0,0,0,0,0,''),
(1724601,3,0,0,0,17240,61965,0x10,2000000683,0,0,0,0,0,0,0,''),
(1724601,6,1,6,0,17240,61965,0x10,0,0,0,0,0,0,0,0,''),
(1724602,1,0,0,0,0,0,0,2000000684,0,0,0,0,0,0,0,''),
(1724602,5,0,0,0,0,0,0,2000000685,0,0,0,0,0,0,0,''),
(1724602,11,0,0,0,0,0,0,2000000686,0,0,0,0,0,0,0,''),
(1724602,17,0,0,0,17240,61965,0x10,2000000687,0,0,0,0,0,0,0,''),
(1724602,20,1,6,0,17240,61965,0x10,0,0,0,0,0,0,0,0,''),
(1724602,26,0,0,0,0,0,0,2000000688,0,0,0,0,0,0,0,''),
(1724602,29,15,30221,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1724602,33,0,0,0,0,0,0,2000000689,0,0,0,0,0,0,0,''),
(1724602,37,0,0,0,17240,61965,0x10,2000000690,0,0,0,0,0,0,0,''),
(1724602,40,36,4.38078,0,17240,61965,0x10,0,0,0,0,0,0,0,0,''),
(1724602,41,21,0,0,17240,61965,7 | 0x10,0,0,0,0,0,0,0,0,'Buddy - unactive'),
(1724602,42,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(1724603,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1724603,28,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1724604,2,1,16,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- texts
DELETE FROM db_script_string WHERE entry BETWEEN 2000000683 AND 2000000690;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000683,'Hey, Cookie! What\'s for dinner tonight? And don\'t say chicken!',0,0,0,22,NULL),
(2000000684,'Yarr, Admiral. Let me think about it... Arrr... It be comin\' into focus.',0,0,0,1,NULL),
(2000000685,'It looks like it be succulent pork ribs basted with its own delectable juices and a side o\' Captain Sander\'s Secret Sauce - fer dippin\'.',0,0,0,1,NULL),
(2000000686,'And fer dessert we be havin\' cheesecake, flown in fresh from Stormwind on the wings o\' angels...',0,0,0,1,NULL),
(2000000687,'Wow! Really?',0,0,0,5,NULL),
(2000000688,'No. Not really...',0,0,0,274,NULL),
(2000000689,'It be chicken...',0,0,0,1,NULL),
(2000000690,'I hate you so much, Cookie.',0,0,0,1,NULL);

-- High Overlord Saurfang & Garrosh Hellscream
UPDATE creature SET position_x = 2834.037, position_y = 6186.433, position_z = 84.67728, orientation = 4.118977, MovementType = 2, spawndist = 0 WHERE guid = 125535;
DELETE FROM creature_movement WHERE id = 125535;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 25256;
DELETE FROM creature_movement_template WHERE entry = 25256;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(25256, 1, 2834.037,6186.433,84.67728, 90000, 0,4.118977, 0, 0),
(25256, 2, 2834.037,6186.433,84.67728, 230000, 2525601,0.212853, 0, 0),
(25256, 3, 2834.037,6186.433,84.67728, 360000, 0,4.118977, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2525601; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2525601,0,31,25237,100,0,0,0,0,0,0,0,0,0,0,0,'search for buddy'),
(2525601,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2525601,1,21,1,0,25237,125447,7 | 0x10,0,0,0,0,0,0,0,0,'Buddy - active'),
(2525601,2,0,0,0,0,0,0,2000000951,0,0,0,0,0,0,0,''),
(2525601,9,3,0,0,0,0,0,0,0,0,0,2834.62,6182.34,84.6811,5.47508,''),
(2525601,14,0,0,0,0,0,0,2000000952,0,0,0,0,0,0,0,''),
(2525601,18,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2525601,20,0,0,0,0,0,0,2000000953,0,0,0,0,0,0,0,''),
(2525601,26,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(2525601,28,3,0,0,0,0,0,0,0,0,0,2836.05,6185.53,84.6811,0.570267,''),
(2525601,32,3,0,0,0,0,0,0,0,0,0,0,0,0,0.570267,''),
(2525601,34,0,0,0,0,0,0,2000000954,0,0,0,0,0,0,0,''),
(2525601,41,0,0,0,0,0,0,2000000955,0,0,0,0,0,0,0,''),
(2525601,46,0,0,0,25237,125447,7 | 0x10,2000000956,0,0,0,0,0,0,0,''),
(2525601,46,3,0,0,0,0,0,0,0,0,0,2834.037,6186.433,84.67728,4.118977,''),
(2525601,49,3,0,0,0,0,0,0,0,0,0,0,0,0,4.118977,''),
(2525601,49,3,0,0,25237,125447,7 | 0x10,0,0,0,0,2834.98,6184.44,84.6818,3.83788,''),
(2525601,53,28,8,0,25237,125447,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2525601,55,0,0,0,25237,125447,7 | 0x10,2000000957,0,0,0,0,0,0,0,''),
(2525601,61,1,0,0,25237,125447,7 | 0x10,0,0,0,0,0,0,0,0,'Buddy - Static emote removed'),
(2525601,64,0,0,0,0,0,0,2000000958,0,0,0,0,0,0,0,''),
(2525601,71,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Static emote removed'),
(2525601,72,3,0,0,25237,125447,7 | 0x10,0,0,0,0,0,0,0,1.74904,''),
(2525601,73,28,0,0,25237,125447,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(2525601,76,0,0,0,25237,125447,7 | 0x10,2000000959,0,0,0,0,0,0,0,''),
(2525601,78,1,5,0,25237,125447,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2525601,80,3,0,700,25237,125447,7 | 0x10,0,0,0,0,2836.3,6181.97,84.6827,4.75913,''),
(2525601,81,15,45404,0,25237,125447,0 | 0x10,0,0,0,0,0,0,0,0,'Buddy - cast: Crush Under Foot'),
(2525601,84,0,0,0,25237,125447,7 | 0x10,2000000960,0,0,0,0,0,0,0,''),
(2525601,88,3,0,700,25237,125447,7 | 0x10,0,0,0,0,2831.93,6188.13,84.6827,1.75577,''),
(2525601,91,15,45404,0,25237,125447,0 | 0x10,0,0,0,0,0,0,0,0,'Buddy - cast: Crush Under Foot'),
(2525601,93,0,0,0,25237,125447,7 | 0x10,2000000961,0,0,0,0,0,0,0,''),
(2525601,95,3,0,0,25237,125447,7 | 0x10,0,0,0,0,2833.9,6184.82,84.6825,5.79762,''),
(2525601,97,0,0,0,0,0,0,2000000962,0,0,0,0,0,0,0,''),
(2525601,97,3,0,0,25237,125447,7 | 0x10,0,0,0,0,2835.78,6185.58,84.6825,0.444966,''),
(2525601,98,3,0,0,25237,125447,7 | 0x10,0,0,0,0,2838.32,6187.36,84.6827,3.82227,''),
(2525601,100,3,0,0,25237,125447,7 | 0x10,0,0,0,0,0,0,0,3.41093,''),
(2525601,100,3,0,0,0,0,0,0,0,0,0,0,0,0,0.212853,''),
(2525601,101,0,0,0,0,0,0,2000000963,0,0,0,0,0,0,0,''),
(2525601,105,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Static emote removed'),
(2525601,106,0,0,0,0,0,0,2000000964,0,0,0,0,0,0,0,''),
(2525601,110,0,0,0,25237,125447,7 | 0x10,2000000965,0,0,0,0,0,0,0,''),
(2525601,114,0,0,0,0,0,0,2000000966,0,0,0,0,0,0,0,''),
(2525601,121,0,0,0,0,0,0,2000000967,0,0,0,0,0,0,0,''),
(2525601,127,0,0,0,0,0,0,2000000968,0,0,0,0,0,0,0,''),
(2525601,134,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Static emote removed'),
(2525601,136,0,0,0,0,0,0,2000000969,0,0,0,0,0,0,0,''),
(2525601,142,0,0,0,0,0,0,2000000970,0,0,0,0,0,0,0,''),
(2525601,145,0,0,0,0,0,0,2000000971,0,0,0,0,0,0,0,''),
(2525601,151,0,0,0,0,0,0,2000000972,0,0,0,0,0,0,0,''),
(2525601,159,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Static emote removed'),
(2525601,161,0,0,0,0,0,0,2000000973,0,0,0,0,0,0,0,''),
(2525601,164,0,0,0,0,0,0,2000000974,0,0,0,0,0,0,0,''),
(2525601,171,0,0,0,0,0,0,2000000975,0,0,0,0,0,0,0,''),
(2525601,172,1,378,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2525601,181,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Static emote removed'),
(2525601,183,0,0,0,25237,125447,7 | 0x10,2000000976,0,0,0,0,0,0,0,''),
(2525601,190,0,0,0,0,0,0,2000000977,0,0,0,0,0,0,0,''),
(2525601,192,0,0,0,0,0,0,2000000978,0,0,0,0,0,0,0,''),
(2525601,198,0,0,0,0,0,0,2000000970,0,0,0,0,0,0,0,''),
(2525601,201,0,0,0,0,0,0,2000000979,0,0,0,0,0,0,0,''),
(2525601,204,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2525601,212,3,0,0,0,0,0,0,0,0,0,0,0,0,4.118977,''),
(2525601,215,0,0,0,25237,125447,7 | 0x10,2000000980,0,0,0,0,0,0,0,''),
(2525601,217,3,0,0,0,0,0,0,0,0,0,0,0,0,0.212853,''),
(2525601,220,0,0,0,0,0,0,2000000981,0,0,0,0,0,0,0,''),
(2525601,223,0,0,0,0,0,0,2000000982,0,0,0,0,0,0,0,''),
(2525601,225,3,0,0,0,0,0,0,0,0,0,0,0,0,4.118977,''),
(2525601,226,3,0,0,25237,125447,7 | 0x10,0,0,0,0,0,0,0,3.82227,''),
(2525601,229,21,0,0,25237,125447,7 | 0x10,0,0,0,0,0,0,0,0,'Buddy - unactive'),
(2525601,230,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
-- texts
DELETE FROM db_script_string WHERE entry BETWEEN 2000000951 AND 2000000982;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000951, 'We are surrounded... Our enemies press in from all sides, young Hellscream.', 0, 0, 0, 1, NULL),
(2000000952, 'The Scourge descends like locust from the north.', 0, 0, 0, 1, NULL),
(2000000953, 'The Alliance holds the only secure shipping lane in this region, and even that is at risk of being lost to those dreaded mists.', 0, 0, 0, 25, NULL),
(2000000954, 'Our only viable port for resupply is held by the Forsaken on the other side of this blasted continent!', 0, 0, 0, 1, NULL),
(2000000955, 'Anything our zeppelins cannot haul must be brought in by ship and travel the length of Northrend to reach us.', 0, 0, 0, 1, NULL),
(2000000956, '%s grunts.', 0, 2, 0, 0, NULL),
(2000000957, 'Shipping lanes... supplies... You bore me to death! We need nothing more than the warrior spirit of the Horde, Saurfang! Now that we are firmly entrenched in this frozen wasteland, nothing shall stop us!', 0, 0, 0, 378, NULL),
(2000000958, 'Siege engines, ammunition, heavy armor... How do you propose to shatter the walls of Icecrown without those?', 0, 0, 0, 378, NULL),
(2000000959, 'Propose? I will show you what I propose!', 0, 0, 0, 6, NULL),
(2000000960, 'There... Now we now have a shipping lane.', 0, 0, 0, 1, NULL),
(2000000961, 'And just for good measure...', 0, 0, 0, 5, NULL),
(2000000962, 'So the prodigal son has spoken!', 0, 0, 0, 5, NULL),
(2000000963, 'Your father\'s blood runs strong in you, Hellscream. Impatient as always... Impatient and reckless.', 0, 0, 0, 378, NULL),
(2000000964, 'You rush headlong into all-out war without a thought of the consequences.', 0, 0, 0, 25, NULL),
(2000000965, 'Do not speak to me of consequences, old one.', 0, 0, 0, 25, NULL),
(2000000966, 'I drank of the same blood your father did, Garrosh. Mannoroth\'s cursed venom pumped through my veins as well.', 0, 0, 0, 378, NULL),
(2000000967, 'I drove my weapons into the bodies and minds of my enemies.', 0, 0, 0, 0, NULL),
(2000000968, 'And while Grom died a glorious death - freeing us all from the blood curse - he could not wipe away the terrible memory of our past.', 0, 0, 0, 0, NULL),
(2000000969, 'His act could not erase the horrors we committed.', 0, 0, 0, 274, NULL),
(2000000970, '%s pauses.', 0, 2, 0, 0, NULL),
(2000000971, 'The winter after the curse was lifted, hundreds of veteran orcs like me were lost to despair.', 0, 0, 0, 378, NULL),
(2000000972, 'Our minds were finally free, yes... Free to relive all of the unthinkable acts that we had performed under the Legions\' influence.', 0, 0, 0, 0, NULL),
(2000000973, '%s nods.', 0, 2, 0, 0, NULL),
(2000000974, 'I think it was the sounds of the draenei children that unnerved most of them... You never forget...', 0, 0, 0, 1, NULL),
(2000000975, 'Have you ever been to Jaggedswine Farm? When the swine are of age for the slaughter... It\'s that sound. The sound of the swine being killed... It resonates the loudest. Those are hard times for us older veterans.', 0, 0, 0, 6, NULL),
(2000000976, 'But surely you cannot think that those children were born into innocence? They would have grown up and taken arms against us!', 0, 0, 0, 5, NULL),
(2000000977, '%s shakes his head.', 0, 2, 0, 274, NULL),
(2000000978, 'I am not speaking solely of the children of our enemies...', 0, 0, 0, 1, NULL),
(2000000979, 'I won\'t let you take us down that dark path again, young Hellscream. I\'ll kill you myself before that day comes...', 0, 0, 0, 274, NULL),
(2000000980, 'How have you managed to survive for so long, Saurfang? Not fallen victim to your own memories?', 0, 0, 0, 6, NULL),
(2000000981, 'I don\'t eat pork...', 0, 0, 0, 274, NULL),
(2000000982, '%s spits.', 0, 2, 0, 0, NULL);
-- correct target for spell
DELETE FROM spell_script_target WHERE entry = 45404;
INSERT INTO spell_script_target VALUES
(45404, 0, 187432, 0);
-- Alliance Flag - object should despawn after use  
UPDATE gameobject_template SET data5 = 1 WHERE entry = 187432;  
-- respawntime corrected  
UPDATE gameobject SET spawntimesecs = 120 WHERE id = 187432;

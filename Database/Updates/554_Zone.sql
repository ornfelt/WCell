-- Death's Door - Blade's Edge Mountains 

-- Summoned Wrath Hound
-- Remove spawn
DELETE FROM creature WHERE guid = 76416;
DELETE FROM creature_addon WHERE guid = 76416;
DELETE FROM creature_movement WHERE id = 76416;
DELETE FROM game_event_creature WHERE guid = 76416;
DELETE FROM game_event_creature_data WHERE guid = 76416;
DELETE FROM creature_battleground WHERE guid = 76416;
DELETE FROM creature_linking WHERE guid = 76416 OR master_guid = 76416;

-- Make Evergrove Ancients attack Baelmon
UPDATE creature_template SET FactionAlliance = 495, FactionHorde = 495 WHERE entry = 22478;

-- Set all Floaty Flavor Eyes to random movement, probably still needs sniff data for actual waypoints
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid IN (84894, 84893, 84896, 84897, 84898, 84895, 84889, 84892, 84886, 84890, 84891, 84885, 84883, 84882, 84879, 84880, 84878, 84877, 84876, 84874, 84872, 84873, 84865, 84867, 84871);

-- Baelmon the Hound-Master
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 70668;
DELETE FROM creature_movement WHERE id = 70668;
UPDATE creature_template SET MovementType = 2 WHERE entry = 19747;
DELETE FROM creature_movement_template WHERE entry = 19747;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(19747,1,2251.221,5415.110,144.5944, 0, 0,100, 0, 0),
(19747,2,2253.267,5422.193,144.3444, 0, 0,100, 0, 0),
(19747,3,2243.098,5420.322,144.3444,6000,1974701,100, 0, 0),
(19747,4,2250.168,5418.636,144.3444, 0, 0,100, 0, 0),
(19747,5,2263.631,5399.851,145.9176, 0, 0,100, 0, 0),
(19747,6,2273.678,5402.083,146.9626,21000,1974702,100, 0, 0),
(19747,7,2270.231,5394.729,145.4702,49000,1974703,100, 0, 0),
(19747,8,2264.036,5400.769,146.0911, 0, 0,100, 0, 0),
(19747,9,2234.945,5428.808,144.3444, 0, 0,100, 0, 0),
(19747,10,2223.490,5426.155,144.3497,8000,1974704,100, 0, 0),
(19747,11,2270.231,5394.729,145.4702,300000,1974705,100, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1974701 AND 1974705;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1974701,2,0,0,0,0,0,0,2000001007,0,0,0,0,0,0,0,'Baelmon the Hound-Master - Yell 0 on reach wp 3'),
(1974702,1,3,0,0,0,0,0,0,0,0,0,0,0,0,4.485496,'Baelmon the Hound-Master - set orientation on reach wp 6'),
(1974702,5,3,0,0,0,0,0,0,0,0,0,0,0,0,2.513274,'Baelmon the Hound-Master - set orientation on reach wp 6'),
(1974702,6,0,0,0,0,0,0,2000001008,0,0,0,0,0,0,0,'Baelmon the Hound-Master - Yell 1 on reach wp 6'),
(1974702,6,10,21837,0,0,0,8,0,0,0,0,2282.145,5380.948,148.3864,3.060301,'Baelmon the Hound-Master - temp summon Summoned Wrath Hound on reach wp 6'),
(1974703,1,3,0,0,0,0,0,0,0,0,0,0,0,0,5.480334,'Baelmon the Hound-Master - set orientation on reach wp 7'),
(1974703,2,15,39218,0,0,0,8,0,0,0,0,0,0,0,0,'Baelmon the Hound-Master - cast Baelmon Channeling on reach wp 7'),
(1974704,2,0,0,0,0,0,0,2000001009,0,0,0,0,0,0,0,'Baelmon the Hound-Master - Yell 2 on reach wp 10'),
(1974705,1,3,0,0,0,0,0,0,0,0,0,0,0,0,5.480334,'Baelmon the Hound-Master - set orientation on reach wp 11'),
(1974705,2,15,39218,0,0,0,8,0,0,0,0,0,0,0,0,'Baelmon the Hound-Master - cast Baelmon Channeling on reach wp 11');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001007 AND 2000001009;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001007,'Make ready the chambers, another ally will soon join our ranks!',0,1,0,0,'Baelmon the Hound-Master - Yell 0 on reach wp 3'),
(2000001008,'Our ally has arrived! Clear the way to the materialization chamber!',0,1,0,0,'Baelmon the Hound-Master - Yell 1 on reach wp 6'),
(2000001009,'Now, proceed to the translocator. Forge Camp Wrath awaits your arrival!',0,1,0,0,'Baelmon the Hound-Master - Yell 2 on reach wp 10');
-- spell must have target
DELETE FROM spell_script_target WHERE entry = 39218;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(39218,1,20736,0);

-- Summoned Wrath Hound
UPDATE creature_template SET MovementType = 2 WHERE entry = 21837;
DELETE FROM creature_movement_template WHERE entry = 21837;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(21837,1,2268.924,5393.452,145.4471,5000,2183701,100, 0, 0),
(21837,2,2255.472,5407.068,145.0279, 0, 0,100, 0, 0),
(21837,3,2243.098,5420.322,144.3444, 0, 0,100, 0, 0),
(21837,4,2226.786,5438.047,144.3497, 0, 0,100, 0, 0),
(21837,5,2211.937,5460.007,150.8571, 0, 0,100, 0, 0),
(21837,6,2195.829,5463.447,153.6814, 0, 0,100, 0, 0),
(21837,7,2188.094,5477.495,155.0914,4000,2183702,100, 0, 0),
(21837,8,2195.297,5464.697,153.6814, 0, 0,100, 0, 0),
(21837,9,2208.225,5464.172,153.5997, 0, 0,100, 0, 0),
(21837,10,2219.882,5446.347,144.3497, 0, 0,100, 0, 0),
(21837,11,2210.560,5435.390,144.6450, 0, 0,100, 0, 0),
(21837,12,2170.015,5423.634,144.2937, 0, 0,100, 0, 0),
(21837,13,2142.269,5430.440,144.8000, 0, 0,100, 0, 0),
(21837,14,2100.592,5447.438,145.3132, 0, 0,100, 0, 0),
(21837,15,2046.968,5449.164,145.0331, 0, 0,100, 0, 0),
(21837,16,2031.698,5416.583,144.7770, 0, 0,100, 0, 0),
(21837,17,2009.996,5392.866,145.6075, 0, 0,100, 0, 0),
(21837,18,1951.617,5362.657,148.1501, 0, 0,100, 0, 0),
(21837,19,1958.205,5340.299,153.2451, 0, 0,100, 0, 0),
(21837,20,1950.292,5312.918,154.0889, 0, 0,100, 0, 0),
(21837,21,1960.221,5301.518,154.0889, 0, 0,100, 0, 0),
(21837,22,1980.815,5314.191,156.4767,4000,2183703,100, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2183701 AND 2183703;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2183701,4,15,37312,0,0,0,8,0,0,0,0,0,0,0,0,'Summoned Wrath Hound - cast Portal Exit Effect on reach wp 1'),
(2183702,0,14,22578,0,0,0,0,0,0,0,0,0,0,0,0,'Summoned Wrath Hound - remove Glowy (Black) aura on reach wp 7'),
(2183703,0,18,4500,0,0,0,0,0,0,0,0,0,0,0,0,'Summoned Wrath Hound - despawn on reach wp 22');
-- Add Missing Spawn and Fix Data
UPDATE creature_template SET SpeedWalk = 1.71429, SpeedRun = 2.8, MovementType = 2 WHERE entry IN (18733);
UPDATE creature SET SpawnTimeSecs = 7200, SpawnDist = 0, MovementType = 2 WHERE id IN (18733);
DELETE FROM creature WHERE guid BETWEEN 77803 AND 77814;
DELETE FROM creature_addon WHERE guid BETWEEN 77803 AND 77814;
DELETE FROM creature_movement WHERE id BETWEEN 77803 AND 77814;
DELETE FROM game_event_creature WHERE guid BETWEEN 77803 AND 77814;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 77803 AND 77814;
DELETE FROM creature_battleground WHERE guid BETWEEN 77803 AND 77814;
DELETE FROM creature_linking WHERE guid BETWEEN 77803 AND 77814
 OR master_guid BETWEEN 77803 AND 77814;
INSERT INTO creature (guid, id, map, spawnMask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(77815,18733,530,1,1,0,0,-598.351,4322.25,50.9513,3.89864,7200,0,0,104790,0,0,2);
-- West Fel Reaver
DELETE FROM creature_movement WHERE id = 77815;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(77815,1,-686.359,4312.46,52.6534,0,0,3.38421),
(77815,2,-778.602,4248.58,46.1188,0,0,3.83188),
(77815,3,-685.214,4311.09,52.2752,0,0,0.565413),
(77815,4,-581.245,4325.53,49.2171,0,0,0.172713),
(77815,5,-454.785,4358.8,46.1894,0,0,0.189992),
(77815,6,-403.051,4367.19,53.6999,0,0,0.175855),
(77815,7,-366.103,4405.31,53.3282,0,0,0.801032),
(77815,8,-369.156,4447.53,53.9756,0,0,1.64298),
(77815,9,-428.894,4459.52,50.9897,0,0,2.9436),
(77815,10,-433.514,4487.02,44.1374,0,0,1.73723),
(77815,11,-444.625,4539.68,41.4924,0,0,1.68539),
(77815,12,-430.927,4579.89,41.0126,0,0,1.3406),
(77815,13,-397.138,4613.02,34.0906,0,0,0.888997),
(77815,14,-264.469,4668.99,18.039,0,0,0.391054),
(77815,15,-216.796,4714.75,9.8384,0,0,0.764904),
(77815,16,-198.261,4734.33,14.012,0,0,1.08613),
(77815,17,-136.459,4774.48,29.6594,0,0,0.614893),
(77815,18,-58.3598,4704.74,30.2358,0,0,5.70427),
(77815,19,15.8831,4633.72,51.0541,0,0,5.05632),
(77815,20,1.4846,4594.51,53.2689,0,0,4.25992),
(77815,21,-88.79,4560.33,44.4686,0,0,3.6049),
(77815,22,-105.686,4495.67,54.8806,0,0,4.36988),
(77815,23,-139.679,4418.79,55.9538,0,0,4.20259),
(77815,24,-159.576,4382.73,60.5331,0,0,4.35889),
(77815,25,-158.111,4344.09,72.7177,0,0,4.87411),
(77815,26,-147.577,4242.36,90.7845,0,0,4.47434),
(77815,27,-150.157,4176.29,84.3544,0,0,4.61178),
(77815,28,-216.166,4116.23,96.9674,0,0,4.11306),
(77815,29,-269.075,4060.36,99.622,0,0,3.84445),
(77815,30,-288.49,3977.88,92.0854,0,0,4.54267),
(77815,31,-257.441,3922.57,86.458,0,0,5.2189),
(77815,32,-205.207,3912.71,90.5668,0,0,6.14488),
(77815,33,-107.451,3954.52,99.3647,0,0,0.631388),
(77815,34,-93.4868,4060.03,97.7728,0,0,1.3728),
(77815,35,-30.0365,4091.21,82.2312,0,0,0.78297),
(77815,36,4.20531,4143.12,79.5627,0,0,0.859153),
(77815,37,98.2554,4148.29,64.3032,0,0,0.054905),
(77815,38,115.025,4072.07,66.026,0,0,5.15214),
(77815,39,124.082,3979.07,74.4234,0,0,4.92202),
(77815,40,100.48,3958.16,75.6218,0,0,3.86644),
(77815,41,58.9399,3944.12,80.8111,0,0,3.46746),
(77815,42,22.3173,3943.96,86.1278,0,0,3.43997),
(77815,43,-8.34014,3901.34,85.5328,0,0,4.13269),
(77815,44,-50.8521,3875.42,86.0472,0,0,3.8146),
(77815,45,-122.732,3797.76,76.0859,0,0,4.63142),
(77815,46,-123.19,3766.21,70.5193,0,0,4.36438),
(77815,47,-141.752,3727.89,62.4313,0,0,4.20495),
(77815,48,-134.129,3698.69,58.8963,0,0,4.97464),
(77815,49,-118.194,3676.71,60.585,0,0,5.47651),
(77815,50,-83.1946,3651.51,65.3926,0,0,5.55269),
(77815,51,-51.0111,3608.2,73.1827,0,0,5.18748),
(77815,52,-29.6456,3568.55,72.0673,0,0,5.19219),
(77815,53,-3.57395,3504.84,60.2503,0,0,5.2024),
(77815,54,8.04896,3483.05,63.0885,0,0,5.2024),
(77815,55,2.4786,3451.15,64.8388,0,0,4.46099),
(77815,56,-26.4477,3419.99,67.8635,0,0,4.11856),
(77815,57,-78.4557,3363.01,46.6263,0,0,4.04237),
(77815,58,-94.6575,3319.2,29.6215,0,0,4.37145),
(77815,59,-101.358,3265.41,14.5171,0,0,4.57801),
(77815,60,-73.5909,3217.82,7.85612,0,0,5.24167),
(77815,61,-57.7331,3201.4,4.40273,0,0,5.41682),
(77815,62,-41.75,3166.65,-1.53517,0,0,5.1435),
(77815,63,9.86293,3143.33,-1.22239,0,0,5.83779),
(77815,64,53.6816,3140.95,10.1731,0,0,0.078468),
(77815,65,106.192,3131.1,18.338,0,0,6.09776),
(77815,66,148.818,3114.99,20.5745,0,0,5.92183),
(77815,67,195.424,3131.7,29.6597,0,0,0.352572),
(77815,68,228.928,3112.04,27.3919,0,0,5.77653),
(77815,69,272.669,3065.08,20.9886,0,0,5.50086),
(77815,70,314.583,3063.49,24.7215,0,0,6.24541),
(77815,71,404.197,3050.16,15.3419,0,0,6.15902),
(77815,72,439.428,3045.76,15.9556,0,0,6.15902),
(77815,73,502.675,3034.89,18.2313,0,0,6.23599),
(77815,74,439.428,3045.76,15.9556,0,0,6.15902),
(77815,75,404.197,3050.16,15.3419,0,0,6.15902),
(77815,76,314.583,3063.49,24.7215,0,0,6.24541),
(77815,77,272.669,3065.08,20.9886,0,0,5.50086),
(77815,78,228.928,3112.04,27.3919,0,0,5.77653),
(77815,79,195.424,3131.7,29.6597,0,0,0.352572),
(77815,80,148.818,3114.99,20.5745,0,0,5.92183),
(77815,81,106.192,3131.1,18.338,0,0,6.09776),
(77815,82,53.6816,3140.95,10.1731,0,0,0.078468),
(77815,83,9.86293,3143.33,-1.22239,0,0,5.83779),
(77815,84,-41.75,3166.65,-1.53517,0,0,5.1435),
(77815,85,-57.7331,3201.4,4.40273,0,0,5.41682),
(77815,86,-73.5909,3217.82,7.85612,0,0,5.24167),
(77815,87,-101.358,3265.41,14.5171,0,0,4.57801),
(77815,88,-94.6575,3319.2,29.6215,0,0,4.37145),
(77815,89,-78.4557,3363.01,46.6263,0,0,4.04237),
(77815,90,-26.4477,3419.99,67.8635,0,0,4.11856),
(77815,91,2.4786,3451.15,64.8388,0,0,4.46099),
(77815,92,8.04896,3483.05,63.0885,0,0,5.2024),
(77815,93,-3.57395,3504.84,60.2503,0,0,5.2024),
(77815,94,-29.6456,3568.55,72.0673,0,0,5.19219),
(77815,95,-51.0111,3608.2,73.1827,0,0,5.18748),
(77815,96,-83.1946,3651.51,65.3926,0,0,5.55269),
(77815,97,-118.194,3676.71,60.585,0,0,5.47651),
(77815,98,-134.129,3698.69,58.8963,0,0,4.97464),
(77815,99,-141.752,3727.89,62.4313,0,0,4.20495),
(77815,100,-123.19,3766.21,70.5193,0,0,4.36438),
(77815,101,-122.732,3797.76,76.0859,0,0,4.63142),
(77815,102,-50.8521,3875.42,86.0472,0,0,3.8146),
(77815,103,-8.34014,3901.34,85.5328,0,0,4.13269),
(77815,104,22.3173,3943.96,86.1278,0,0,3.43997),
(77815,105,58.9399,3944.12,80.8111,0,0,3.46746),
(77815,106,100.48,3958.16,75.6218,0,0,3.86644),
(77815,107,124.082,3979.07,74.4234,0,0,4.92202),
(77815,108,115.025,4072.07,66.026,0,0,5.15214),
(77815,109,98.2554,4148.29,64.3032,0,0,0.054905),
(77815,110,4.20531,4143.12,79.5627,0,0,0.859153),
(77815,111,-30.0365,4091.21,82.2312,0,0,0.78297),
(77815,112,-93.4868,4060.03,97.7728,0,0,1.3728),
(77815,113,-107.451,3954.52,99.3647,0,0,0.631388),
(77815,114,-205.207,3912.71,90.5668,0,0,6.14488),
(77815,115,-257.441,3922.57,86.458,0,0,5.2189),
(77815,116,-288.49,3977.88,92.0854,0,0,4.54267),
(77815,117,-269.075,4060.36,99.622,0,0,3.84445),
(77815,118,-216.166,4116.23,96.9674,0,0,4.11306),
(77815,119,-150.157,4176.29,84.3544,0,0,4.61178),
(77815,120,-147.577,4242.36,90.7845,0,0,4.47434),
(77815,121,-158.111,4344.09,72.7177,0,0,4.87411),
(77815,122,-159.576,4382.73,60.5331,0,0,4.35889),
(77815,123,-139.679,4418.79,55.9538,0,0,4.20259),
(77815,124,-105.686,4495.67,54.8806,0,0,4.36988),
(77815,125,-88.79,4560.33,44.4686,0,0,3.6049),
(77815,126,1.4846,4594.51,53.2689,0,0,4.25992),
(77815,127,15.8831,4633.72,51.0541,0,0,5.05632),
(77815,128,-58.3598,4704.74,30.2358,0,0,5.70427),
(77815,129,-136.459,4774.48,29.6594,0,0,0.614893),
(77815,130,-198.261,4734.33,14.012,0,0,1.08613),
(77815,131,-216.796,4714.75,9.8384,0,0,0.764904),
(77815,132,-264.469,4668.99,18.039,0,0,0.391054),
(77815,133,-397.138,4613.02,34.0906,0,0,0.888997),
(77815,134,-430.927,4579.89,41.0126,0,0,1.3406),
(77815,135,-444.625,4539.68,41.4924,0,0,1.68539),
(77815,136,-433.514,4487.02,44.1374,0,0,1.73723),
(77815,137,-428.894,4459.52,50.9897,0,0,2.9436),
(77815,138,-369.156,4447.53,53.9756,0,0,1.64298),
(77815,139,-366.103,4405.31,53.3282,0,0,0.801032),
(77815,140,-403.051,4367.19,53.6999,0,0,0.175855),
(77815,141,-454.785,4358.8,46.1894,0,0,0.189992),
(77815,142,-581.245,4325.53,49.2171,0,0,0.172713),
(77815,143,-685.214,4311.09,52.2752,0,0,0.565413);

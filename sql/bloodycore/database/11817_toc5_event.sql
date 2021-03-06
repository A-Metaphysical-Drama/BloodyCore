-- Black Knight gryphon
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`= 35491;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(35491,46598,0,0,0,0,0,0,0);

-- Script texts
DELETE FROM `script_texts` WHERE `entry` <= -1999926 and `entry` >= -1999970;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(0,-1999926, 'Coming out of the gate Grand Champions other faction.  ' ,0,0,0,1, 'SAY_START' ),
(0,-1999927, 'Good work! You can get your award from Crusader\'s Coliseum chest!.  ' ,0,1,0,1, 'Win' ),
(0,-1999928, 'You spoiled my grand entrance. Rat.' ,16256,1,0,5, 'SAY_AGGRO' ),
(0,-1999929, 'Did you honestly think an agent if the Kich King would be bested on the field of your pathetic little tournament?' ,16257,1,0,5, 'SAY_AGGRO_1' ),
(0,-1999930, 'I have come to finish my task ' ,16258,1,0,5, 'SAY_AGGRO_2' ),
(0,-1999931, 'This farce ends here!' ,16259,1,0,5, 'SAY_AGGRO_3' ),
(0,-1999932, '[Zombie]Brains.... .... ....' ,0,1,0,5, 'SAY_SLAY' ),
(0,-1999933, 'My roting flash was just getting in the way!' ,16262,1,0,5, 'SAY_DEATH_1' ),
(0,-1999934, 'I have no need for bones to best you!' ,16263,1,0,5, 'SAY_DEATH_2' ),
(0,-1999935, 'No! I must not fail...again...' ,16264,1,0,5, 'SAY_DEATH_3' ),
(0,-1999936, 'What\'s that. up near the rafters ?' ,0,1,0,5, 'detected' ),
(0,-1999937, 'Please change your weapon! Next battle will be start now!' ,0,3,0,5, 'nx' ),
(0,-1999939, 'Excellent work!' ,0,1,0,1, 'work' ),
(0,-1999940, 'Coming out of the gate Crusader\'s Coliseum Champion.' ,0,0,0,1, 'SAY_START3' ),
(0,-1999941, 'Excellent work! You are win Argent champion!' ,0,3,0,0, 'win' ),
(0,-1999942, 'The Sunreavers are proud to present their representatives in this trial by combat.' ,0,0,0,1, 'an1' ),
(0,-1999943, 'Welcome, champions. Today, before the eyes of your leeders and peers, you will prove youselves worthy combatants.' ,0,0,0,1, 'an2' ),
(0,-1999944, 'Fight well, Horde! Lok\'tar Ogar!' ,0,1,0,5, 'Thrall' ),
(0,-1999945, 'Finally, a fight worth watching.' ,0,1,0,5, 'Garrosh' ),
(0,-1999946, 'I did not come here to watch animals tear at each other senselessly, Tirion' ,0,1,0,5, 'King' ),
(0,-1999947, 'You will first be facing three of the Grand Champions of the Tournament! These fierce contenders have beaten out all others to reach the pinnacle of skill in the joust.' ,0,1,0,5, 'Hightlord' ),
(0,-1999948, 'Will tought! You next challenge comes from the Crusade\'s own ranks. You will be tested against their consederable prowess.' ,0,1,0,5, 'Hightlord2' ),
(0,-1999949, 'You may begin!' ,0,0,0,5, 'text' ),
(0,-1999951, 'Take this time to consider your past deeds.' ,16248,1,0,5, 'palsum' ),
(0,-1999952, 'What is the meaning of this?' ,0,1,0,5, 'dk_hightlord' ),
(0,-1999953, 'No...I\'m still too young' ,0,1,0,5, 'die' ),
(0,-1999954, 'Excellent work! You are win Argent champion!' ,0,3,0,0, 'win' ),
(0,-1999969, 'Pathetic.' ,16260, 1, 0, 0, NULL),
(0,-1999955, 'Well then, let us begin.' ,16247, 1, 0, 0, 'start'),
(0,-1999960, 'Take your rest.' ,16250, 1, 0, 0, NULL),
(0,-1999959, 'Be at ease.' ,16251, 1, 0, 0, NULL),
(0,-1999957, 'You... You need more practice.' ,16137, 1, 0, 0, NULL),
(0,-1999958, 'Nay! Nay! And I say yet again nay! Not good enough!' ,16138, 1, 0, 0, NULL),
(0,-1999961, 'Prepare yourselves!' ,16135, 1, 0, 0, NULL),
(0,-1999962, 'I yield! I submit. Excellent work. May I run away now?' ,16139, 1, 0, 0, NULL),
(0,-1999963, 'Hammer of the Righteous!' ,16136, 1, 0, 0, NULL),
(0,-1999964, 'Are you up to the challenge? I will not hold back.' ,16134, 1, 0, 0, NULL),
(0,-1999965, 'Thank you, good herald. Your words are too kind.' ,16245, 1, 0, 0, NULL),
(0,-1999966, 'May the Light give me strength to provide a worthy challenge.' ,16246, 1, 0, 0, NULL),
(0,-1999967, 'Excellent work!' ,16252, 1, 0, 0, NULL),
(0,-1999968, 'Even the darkest memory fades when confronted.' ,16249, 1, 0, 0, NULL),
(0,-1999970, 'A waste of flesh.' ,16261, 1, 0, 0, NULL);

-- Unused gate
DELETE FROM `gameobject` WHERE `guid`=150077;
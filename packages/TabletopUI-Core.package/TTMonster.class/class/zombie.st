templates
zombie

	^ self fromSpec: (Dictionary new
		at: #name put: 'Zombie';
		at: #size put: 'Medium';
		at: #type put: 'Undead';
		at: #alignment put: 'Neutral Evil';
		at: #armor_class put: 8;
		at: #hit_points put: 22;
		at: #speed put: 20;
		at: #strength put: 13;
		at: #dexterity put: 6;
		at: #constitution put: 16;
		at: #intelligence put: 3;
		at: #wisdom put: 6;
		at: #charisma put: 5;
		at: #saving_throws put: 'WIS +0';
		at: #damage_immunities put:  'Poison';
		at: #condition_immunities put:  'Poisoned';
		at: #senses put: 'Darkvision 60 ft., Passive Perception 8';
		at: #languages put: 'Understands all languages it knew in life but can''t speak ';
		at: #challenge_rating put: '1/4';
		at: #proficiency_value put: 2;
		at: #special_abilities put: {
			Dictionary new
				at: #name put: 'Undead Fortitude';
				at: #desc
					put: 'If damage reduces the zombie to 0 hit points, it must make a Constitution saving throw with a DC of 5 + the damage taken, unless the damage is radiant or from a critical hit. On a success, the zombie drops to 1 hit point instead.';
				yourself};
		at: #actions put: {
			Dictionary new
				at: #name put: 'Slam';
				at: #desc
					put: 'Melee Weapon Attack: +3 to hit, reach 5 ft., one target. Hit: 4 (1d6 + 1) bludgeoning damage.';
				yourself};
		yourself)
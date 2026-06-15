templates
beholder

	self flag: #todo. "all (keine Basic Rules vorhanden)"
	^ self fromSpec: (Dictionary new
		at: #name put: 'Beholder';
		at: #size put: 'Medium';
		at: #type put: 'Undead';
		at: #alignment put: 'Lawful Evil';
		at: #armor_class put: 13;
		at: #hit_points put: 13;
		at: #speed put: 30;
		at: #strength put: 10;
		at: #dexterity put: 14;
		at: #constitution put: 15;
		at: #intelligence put: 6;
		at: #wisdom put: 8;
		at: #charisma put: 5;
		at: #damage_vulnerabilities put:  'Bludgeoning';
		at: #damage_immunities put:  'Poison';
		at: #condition_immunities put:  'Exhaustion, Poisoned';
		at: #senses put: 'Darkvision 60 ft., Passive Perception 9';
		at: #languages put: 'Understands all languages it knew in life but can''t speak ';
		at: #challenge_rating put: '1/4';
		at: #proficiency_value put: 2;
		at: #actions put: {
			Dictionary new
				at: #name put: 'Shortsword';
				at: #desc
					put: 'Melee Weapon Attack: +4 to hit, reach 5 ft., one target. Hit: 5 (1d6 + 2) piercing damage.';
				yourself.
			Dictionary new
				at: #name put: 'Shortbow';
				at: #desc
					put: 'Ranged Weapon Attack: +4 to hit, range 80/320 ft., one target. Hit: 5 (1d6 + 2) piercing damage.';
				yourself};
		yourself)
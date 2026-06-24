templates
bugbear

	^ self fromSpec: (Dictionary new
		at: #name put: 'Bugbear';
		at: #size put: 'Medium';
		at: #type put: 'Humanoid (Goblinoid)';
		at: #alignment put: 'Chaotic Evil';
		at: #armor_class put: 16;
		at: #hit_points put: 27;
		at: #speed put: 30;
		at: #strength put: 15;
		at: #dexterity put: 14;
		at: #constitution put: 13;
		at: #intelligence put: 8;
		at: #wisdom put: 11;
		at: #charisma put: 9;
		at: #skills put: 'Stealth +6, Survival +2';
		at: #senses put: 'Darkvision 60 ft., Passive Perception 10';
		at: #languages put: 'Common, Goblin';
		at: #challenge_rating put: '1';
		at: #proficiency_value put: 2;
		at: #special_abilities put: {
			Dictionary new
				at: #name put: 'Brute';
				at: #desc
					put: 'A melee weapon deals one extra die of its damage when the bugbear hits with it (included in the attack).';
				yourself.
			Dictionary new
				at: #name put: 'Surprise Attack';
				at: #desc
					put: 'If the bugbear surprises a creature and hits it with an attack during the first round of combat, the target takes an extra 7 (2d6) damage from the attack.';
				yourself};
		at: #actions put: {
			Dictionary new
				at: #name put: 'Morningstar';
				at: #desc
					put: 'Melee Weapon Attack: +4 to hit, reach 5 ft., one target. Hit: 11 (2d8 + 2) piercing damage.';
				yourself.
			Dictionary new
				at: #name put: 'Javelin';
				at: #desc
					put: 'Melee or Ranged Weapon Attack: +4 to hit, reach 5 ft. or range 30/120 ft., one target. Hit: 9 (2d6 + 2) piercing damage in melee or 5 (1d6 + 2) piercing damage at range.';
				yourself};
		yourself)
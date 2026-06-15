templates
worg

	^ self fromSpec: (Dictionary new
		at: #name put: 'Worg';
		at: #size put: 'Large';
		at: #type put: 'Monstrosity';
		at: #alignment put: 'Neutral Evil';
		at: #armor_class put: 13;
		at: #hit_points put: 26;
		at: #speed put: 50;
		at: #strength put: 16;
		at: #dexterity put: 13;
		at: #constitution put: 13;
		at: #intelligence put: 7;
		at: #wisdom put: 11;
		at: #charisma put: 8;
		at: #skills put: 'Perception+4';
		at: #senses put: 'Darkvision 60 ft., Passive Perception 14';
		at: #languages put: 'Goblin, Worg';
		at: #challenge_rating put: '1/2';
		at: #proficiency_value put: 2;
		at: #special_abilities put: {
			Dictionary new
				at: #name put: 'Keen Hearing and Smell';
				at: #desc
					put: 'The worg has advantage on Wisdom (Perception) checks that rely on hearing or smell.';
				yourself};
		at: #actions put: {
			Dictionary new
				at: #name put: 'Bite';
				at: #desc
					put: 'Melee Weapon Attack: +5 to hit, reach 5 ft., one target. Hit: 10 (2d6 + 3) piercing damage. If the target is a creature, it must succeed on a DC 13 Strength saving throw or be knocked prone.';
				yourself};
		yourself)
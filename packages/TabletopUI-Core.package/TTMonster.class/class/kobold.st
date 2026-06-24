templates
kobold

	^ self fromSpec: (Dictionary new
		at: #name put: 'Kobold';
		at: #size put: 'Small';
		at: #type put: 'Humanoid (Kobold)';
		at: #alignment put: 'Lawful Evil';
		at: #armor_class put: 12;
		at: #hit_points put: 5;
		at: #speed put: 30;
		at: #strength put: 7;
		at: #dexterity put: 15;
		at: #constitution put: 9;
		at: #intelligence put: 8;
		at: #wisdom put: 7;
		at: #charisma put: 8;
		at: #senses put: 'Darkvision 60 ft., Passive Perception 8';
		at: #languages put: 'Common, Draconic';
		at: #challenge_rating put: '1/8';
		at: #proficiency_value put: 2;
		at: #special_abilities put: {
			Dictionary new
				at: #name put: 'Sunlight Sensitivity';
				at: #desc
					put: 'While in sunlight, the kobold has disadvantage on attack rolls, as well as on Wisdom (Perception) checks that rely on sight.';
				yourself.
			Dictionary new
				at: #name put: 'Pack Tactics';
				at: #desc
					put: 'The kobold has advantage on an attack roll against a creature if at least one of the kobold''s allies is within 5 feet of the creature and the ally isn''t incapacitated.';
				yourself};
		at: #actions put: {
			Dictionary new
				at: #name put: 'Dagger';
				at: #desc
					put: 'Melee Weapon Attack: +4 to hit, reach 5 ft., one target. Hit: 4  (1d4 + 2) piercing damage.';
				yourself.
			Dictionary new
				at: #name put: 'Sling';
				at: #desc
					put: 'Ranged Weapon Attack: +4 to hit, range 30/120 ft., one target. Hit: 4 (1d4 + 2) bludgeoning damage.';
				yourself};
		yourself)
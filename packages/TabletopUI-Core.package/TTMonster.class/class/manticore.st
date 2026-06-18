templates
manticore

	^ self fromSpec: (Dictionary new
		at: #name put: 'Manticore';
		at: #size put: 'Large';
		at: #type put: 'Monstrosity';
		at: #alignment put: 'Lawful Evil';
		at: #armor_class put: 14;
		at: #hit_points put: 68;
		at: #speed put: 30;
		at: #additional_speeds put:{
			Dictionary new
				at: #name put: 'Fly';
				at: #value put: 50
				yourself};
		at: #strength put: 17;
		at: #dexterity put: 16;
		at: #constitution put: 17;
		at: #intelligence put: 7;
		at: #wisdom put: 12;
		at: #charisma put: 8;
		at: #senses put: 'Darkvision 60 ft., Passive Perception 11';
		at: #languages put: 'Common';
		at: #challenge_rating put: '3';
		at: #proficiency_value put: 2;
		at: #special_abilities put: {
			Dictionary new
				at: #name put: 'Tail Spike Regrowth';
				at: #desc
					put: 'The manticore has twenty-four tail spikes. Used spikes regrow when the manticore finishes a long rest.';
				yourself};
		at: #actions put: {
			Dictionary new
				at: #name put: 'Multiattack';
				at: #desc
					put: 'The manticore makes three attacks: one with its bite and two with its claws or three with its tail spikes.';
				yourself.
			Dictionary new
				at: #name put: 'Bite';
				at: #desc
					put: 'Melee Weapon Attack: +5 to hit, reach 5 ft., one target. Hit: 7 (1d8 + 3) piercing damage.';
				yourself.
			Dictionary new
				at: #name put: 'Claw';
				at: #desc
					put: 'Melee Weapon Attack: +5 to hit, reach 5 ft., one target. Hit: 6 (1d6 + 3) slashing damage.';
				yourself.
			Dictionary new
				at: #name put: 'Tail Spike';
				at: #desc
					put: 'Ranged Weapon Attack: +5 to hit, range 100/200 ft., one target. Hit: 7 (1d8 + 3) piercing damage.';
				yourself};
		yourself)
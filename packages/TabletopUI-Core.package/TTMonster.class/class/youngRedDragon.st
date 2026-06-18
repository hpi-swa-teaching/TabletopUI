templates
youngRedDragon

	^ self fromSpec: (Dictionary new
		at: #name put: 'Young Red Dragon';
		at: #size put: 'Large';
		at: #type put: 'Dragon';
		at: #alignment put: 'Chaotic Evil';
		at: #armor_class put: 18;
		at: #hit_points put: 178;
		at: #speed put: 40;
		at: #additional_speeds put:{
			Dictionary new
				at: #name put: 'Climb';
				at: #value put: 40
				yourself.
			Dictionary new
				at: #name put: 'Fly';
				at: #value put: 80
				yourself};
		at: #strength put: 23;
		at: #dexterity put: 10;
		at: #constitution put: 21;
		at: #intelligence put: 14;
		at: #wisdom put: 11;
		at: #charisma put: 19;
		at: #saving_throws put: 'DEX +4, CON +9, WIS +4, CHA +8';
		at: #skills put: 'Perception +8, Stealth +4';
		at: #damage_immunities put:  'Fire';
		at: #senses put: 'Blindsight 30 ft., Darkvision 120 ft., Passive Perception 18';
		at: #languages put: 'Common, Draconic';
		at: #challenge_rating put: '10';
		at: #proficiency_value put: 4;
		at: #actions put: {
			Dictionary new
				at: #name put: 'Multiattack';
				at: #desc
					put: 'The dragon makes three attacks: one with its bite and two with its claws.';
				yourself.
			Dictionary new
				at: #name put: 'Bite';
				at: #desc
					put: 'Melee Weapon Attack: +10 to hit, reach 10 ft., one target. Hit: 17 (2d10 + 6) piercing damage plus 3 (1d6) fire damage.';
				yourself.
			Dictionary new
				at: #name put: 'Claw';
				at: #desc
					put: 'Melee Weapon Attack: +10 to hit, reach 5 ft., one target. Hit: 13 (2d6 + 6) slashing damage.';
				yourself.
			Dictionary new
				at: #name put: 'Fire Breath (Recharge 5–6)';
				at: #desc
					put: 'The dragon exhales fire in a 30-foot cone. Each creature in that area must make a DC 17 Dexterity saving throw, taking 56 (16d6) fire damage on a failed save, or half as much damage on a successful one.';
				yourself};
		yourself)
templates
mindFlayer

	^ self fromSpec: (Dictionary new
		at: #name put: 'Mind Flayer';
		at: #size put: 'Medium';
		at: #type put: 'Aberration';
		at: #alignment put: 'Lawful Evil';
		at: #armor_class put: 15;
		at: #hit_points put: 71;
		at: #speed put: 30;
		at: #strength put: 11;
		at: #dexterity put: 12;
		at: #constitution put: 12;
		at: #intelligence put: 19;
		at: #wisdom put: 17;
		at: #charisma put: 17;
		at: #saving_throws put: 'Int +7, Wis +6, Cha +6';
		at: #skills put: 'Arcana +7, Deception +6, Insight +6, Perception +6, Persuasion +6, Stealth +4';
		at: #senses put: 'Darkvision 120 ft., Passive Perception 16';
		at: #languages put: 'Deep Speech, Undercommon, telepathy 120 ft.';
		at: #challenge_rating put: '7';
		at: #proficiency_value put: 3;
		at: #special_abilities put: {
			Dictionary new
				at: #name put: 'Magic Resistance';
				at: #desc
					put: 'The mind flayer has advantage on saving throws against spells and other magical effects.';
				yourself.
			Dictionary new
				at: #name put: 'Innate Spellcasting (Psionics)';
				at: #desc
					put: 'The mind flayer''s innate spellcasting ability is Intelligence (spell save DC 15). It can innately cast the following spells, requiring no components:
At will: detect thoughts, levitate
1/day each: dominate monster, plane shift (self only)';
				yourself};
		at: #actions put: {
			Dictionary new
				at: #name put: 'Tentacles';
				at: #desc
					put: 'Melee Weapon Attack: +7 to hit, reach 5 ft., one creature. Hit: 15 (2d10 + 4) psychic damage. If the target is Medium or smaller, it is grappled (escape DC 15) and must succeed on a DC 15 Intelligence saving throw or be stunned until this grapple ends.';
				yourself.
			Dictionary new
				at: #name put: 'Extract Brain';
				at: #desc
					put: 'Melee Weapon Attack: +7 to hit, reach 5 ft., one incapacitated humanoid grappled by the mind flayer. Hit: The target takes 55 (10d10) piercing damage. If this damage reduces the target to 0 hit points, the mind flayer kills the target by extracting and devouring its brain.';
				yourself.
			Dictionary new
				at: #name put: 'Mind Blast (Recharge 5-6)';
				at: #desc
					put: 'The mind flayer magically emits psychic energy in a 60-foot cone. Each creature in that area must succeed on a DC 15 Intelligence saving throw or take 22 (4d8 + 4) psychic damage and be stunned for 1 minute. A creature can repeat the saving throw at the end of each of its turns, ending the effect on itself on a success.';
				yourself};
		yourself)
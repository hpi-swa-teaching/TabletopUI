templates
owlbear

	^ self fromSpec: (Dictionary new
		at: #name put: 'Owlbear';
		at: #size put: 'Large';
		at: #type put: 'Monstrosity';
		at: #alignment put: 'Unaligned';
		at: #armor_class put: 13;
		at: #hit_points put: 59;
		at: #speed put: 40;
		at: #strength put: 20;
		at: #dexterity put: 12;
		at: #constitution put: 17;
		at: #intelligence put: 3;
		at: #wisdom put: 12;
		at: #charisma put: 7;
		at: #skills put: 'Perception+3';
		at: #senses put: 'Darkvision 60 ft., Passive Perception 13';
		at: #languages put: '--';
		at: #challenge_rating put: '3';
		at: #proficiency_value put: 2;
		at: #special_abilities put: {
			Dictionary new
				at: #name put: 'Keen Hearing and Smell';
				at: #desc
					put: 'The owlbear has advantage on Wisdom (Perception) checks that rely on hearing or smell.';
				yourself};
		at: #actions put: {
			Dictionary new
				at: #name put: 'Multiattack';
				at: #desc
					put: 'The owlbear makes two attacks: one with its beak and one with its claws.';
				yourself.
				Dictionary new
				at: #name put: 'Beak';
				at: #desc
					put: 'Melee Weapon Attack: +7 to hit, reach 5 ft., one creature. Hit: 10 (1d10 + 5) piercing damage.';
				yourself.
				Dictionary new
				at: #name put: 'Claws';
				at: #desc
					put: 'Melee Weapon Attack: +7 to hit, reach 5 ft., one target. Hit: 14 (2d8 + 5) slashing damage.';
				yourself};
		yourself)
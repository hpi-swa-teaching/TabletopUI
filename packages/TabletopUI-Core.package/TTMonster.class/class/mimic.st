templates
mimic

	^ self fromSpec: (Dictionary new
		at: #name put: 'Mimic';
		at: #size put: 'Medium';
		at: #type put: 'Monstrosity (Shapechanger)';
		at: #alignment put: 'Neutral';
		at: #armor_class put: 12;
		at: #hit_points put: 58;
		at: #speed put: 15;
		at: #strength put: 17;
		at: #dexterity put: 12;
		at: #constitution put: 15;
		at: #intelligence put: 5;
		at: #wisdom put: 13;
		at: #charisma put: 8;
		at: #skills put: 'Stealth +5';
		at: #damage_immunities put:  ' Acid';
		at: #condition_immunities put:  'Prone';
		at: #senses put: 'Darkvision 60 ft., Passive Perception 11';
		at: #languages put: '--';
		at: #challenge_rating put: '2';
		at: #proficiency_value put: 2;
		at: #special_abilities put: {
			Dictionary new
				at: #name put: 'Shapechanger';
				at: #desc
					put: 'The mimic can use its action to polymorph into an object or back into its true, amorphous form. Its statistics are the same in each form. Any equipment it is wearing or carrying isn''t transformed. It reverts to its true form if it dies.';
				yourself.
			Dictionary new
				at: #name put: 'Adhesive (Object Form Only)';
				at: #desc
					put: 'The mimic adheres to anything that touches it. A Huge or smaller creature adhered to the mimic is also grappled by it (escape DC 13). Ability checks made to escape this grapple have disadvantage.';
				yourself.
			Dictionary new
				at: #name put: 'False Appearance (Object Form Only)';
				at: #desc
					put: 'While the mimic remains motionless, it is indistinguishable from an ordinary object.';
				yourself.
			Dictionary new
				at: #name put: 'Grappler';
				at: #desc
					put: 'The mimic has advantage on attack rolls against any creature grappled by it.';
				yourself};
		at: #actions put: {
			Dictionary new
				at: #name put: 'Pseudopod';
				at: #desc
					put: 'Melee Weapon Attack: +5 to hit, reach 5 ft., one target. Hit: 7 (1d8 + 3) bludgeoning damage. If the mimic is in object form, the target is subjected to its Adhesive trait.';
				yourself.
			Dictionary new
				at: #name put: 'Bite';
				at: #desc
					put: 'Melee Weapon Attack: +5 to hit, reach 5 ft., one target. Hit: 7 (1d8 + 3) piercing damage plus 4 (1d8) acid damage.';
				yourself};
		yourself)
templates
doppelganger

	^ self fromSpec: (Dictionary new
		at: #name put: 'Doppelganger';
		at: #size put: 'Medium';
		at: #type put: 'Monstrosity (Shapechanger)';
		at: #alignment put: 'Neutral';
		at: #armor_class put: 14;
		at: #hit_points put: 52;
		at: #speed put: 30;
		at: #strength put: 11;
		at: #dexterity put: 18;
		at: #constitution put: 14;
		at: #intelligence put: 11;
		at: #wisdom put: 12;
		at: #charisma put: 14;
		at: #skills put: 'Deception +6, Insight +3';
		at: #condition_immunities put:  'Charmed';
		at: #senses put: 'Darkvision 60 ft., Passive Perception 11';
		at: #languages put: 'Common';
		at: #challenge_rating put: '3';
		at: #proficiency_value put: 2;
		at: #special_abilities put: {
			Dictionary new
				at: #name put: 'Shapechanger';
				at: #desc
					put: 'The doppelganger can use its action to polymorph into a Small or Medium humanoid it has seen, or back into its true form. Its statistics, other than its size, are the same in each form. Any equipment it is wearing or carrying isn''t transformed. It reverts to its true form if it dies.';
				yourself.
			Dictionary new
				at: #name put: 'Ambusher';
				at: #desc
					put: 'The doppelganger has advantage on attack rolls against any creature it has surprised.';
				yourself.
			Dictionary new
				at: #name put: 'Surprise Attack';
				at: #desc
					put: 'If the doppelganger surprises a creature and hits it with an attack during the first round of combat, the target takes an extra 10 (3d6) damage from the attack.';
				yourself};
		at: #actions put: {
			Dictionary new
				at: #name put: 'Multiattack';
				at: #desc
					put: 'The doppelganger makes two melee attacks.';
				yourself.
			Dictionary new
				at: #name put: 'Slam';
				at: #desc
					put: 'Melee Weapon Attack: +6 to hit, reach 5 ft., one target. Hit: 7 (1d6 + 4) bludgeoning damage.';
				yourself.
			Dictionary new
				at: #name put: 'Read Thoughts';
				at: #desc
					put: 'The doppelganger magically reads the surface thoughts of one creature within 60 feet of it. The effect can penetrate barriers, but 3 feet of wood or dirt, 2 feet of stone, 2 inches of metal, or a thin sheet of lead blocks it. While the target is in range, the doppelganger can continue reading its thoughts, as long as the doppelganger''s concentration isn''t broken (as if concentrating on a spell). While reading the target''s mind, the doppelganger has advantage on Wisdom (Insight) and Charisma (Deception, Intimidation, and Persuasion) checks against the target.';
				yourself};
		yourself)
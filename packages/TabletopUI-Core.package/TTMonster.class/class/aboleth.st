templates
aboleth

	self flag: #todo. "swim speed" "description for legendary actions"
	^ self fromSpec: (Dictionary new
		at: #name put: 'Aboleth';
		at: #size put: 'Large';
		at: #type put: 'Aberration';
		at: #alignment put: 'Lawful Evil';
		at: #armor_class put: 17;
		at: #hit_points put: 135;
		at: #speed put: 10; "Swim 40 ft."
		at: #strength put: 21;
		at: #dexterity put: 9;
		at: #constitution put: 15;
		at: #intelligence put: 18;
		at: #wisdom put: 15;
		at: #charisma put: 18;
		at: #saving_throws put: 'CON +6, INT +8, WIS +6';
		at: #skills put:  'History +12, Perception +10';
		at: #senses put: 'Darkvision 120 ft., Passive Perception 20';
		at: #languages put: 'Deep Speech, Telepathy 120 ft.';
		at: #challenge_rating put: '10';
		at: #proficiency_value put: 4;
		at: #special_abilities put: {
			Dictionary new
				at: #name put: 'Amphibious';
				at: #desc
					put: 'The aboleth can breathe air and water.';
				yourself.
			Dictionary new
				at: #name put: 'Mucous Cloud';
				at: #desc
					put: 'While underwater, the aboleth is surrounded by transformative mucus. A creature that touches the aboleth or that hits it with a melee attack while within 5 feet of it must make a DC 14 Constitution saving throw. On a failure, the creature is diseased for 1d4 hours. The diseased creature can breathe only underwater.';
				yourself.
			Dictionary new
				at: #name put: 'Probing Telepathy';
				at: #desc
					put: 'If a creature communicates telepathically with the aboleth, the aboleth learns the creature’s greatest desires if the aboleth can see the creature.';
				yourself};
		at: #actions put: {
			Dictionary new
				at: #name put: 'Multiattack';
				at: #desc
					put: 'The aboleth makes three tentacle attacks.';
				yourself.
			Dictionary new
				at: #name put: 'Tentacle';
				at: #desc
					put: 'Melee Weapon Attack: +9 to hit, reach 10 ft., one target. Hit: 12 (2d6 + 5) bludgeoning damage. If the target is a creature, it must succeed on a DC 14 Constitution saving throw or become diseased. The disease has no effect for 1 minute and can be removed by any magic that cures disease. After 1 minute, the diseased creature’s skin becomes translucent and slimy, the creature can’t regain hit points unless it is underwater, and the disease can be removed only by heal or another disease-curing spell of 6th level or higher. When the creature is outside a body of water, it takes 6 (1d12) acid damage every 10 minutes unless moisture is applied to the skin before 10 minutes have passed.';
				yourself.
			Dictionary new
				at: #name put: 'Tail';
				at: #desc
					put: 'Melee Weapon Attack: +9 to hit, reach 10 ft. one target. Hit: 15 (3d6 + 5) bludgeoning damage.';
				yourself.
			Dictionary new
				at: #name put: 'Enslave (3/Day)';
				at: #desc
					put: 'The aboleth targets one creature it can see within 30 feet of it. The target must succeed on a DC 14 Wisdom saving throw or be magically charmed by the aboleth until the aboleth dies or until it is on a different plane of existence from the target. The charmed target is under the aboleth’s control and can’t take reactions, and the aboleth and the target can communicate telepathically with each other over any distance.

Whenever the charmed target takes damage, the target can repeat the saving throw. On a success, the effect ends. No more than once every 24 hours, the target can also repeat the saving throw when it is at least 1 mile away from the aboleth.';
				yourself};
		at: #legendary_actions put: { "The aboleth can take 3 legendary actions, choosing from the options below. Only one legendary action option can be used at a time and only at the end of another creature’s turn. The aboleth regains spent legendary actions at the start of its turn."
			Dictionary new
				at: #name put: 'Detect';
				at: #desc
					put: 'The aboleth makes a Wisdom (Perception) check.';
				yourself.
			Dictionary new
				at: #name put: 'Tail Swipe';
				at: #desc
					put: 'The aboleth makes one tail attack.';
				yourself.
			Dictionary new
				at: #name put: 'Psychic Drain (Costs 2 Actions)';
				at: #desc
					put: 'One creature charmed by the aboleth takes 10 (3d6) psychic damage, and the aboleth regains hit points equal to the damage the creature takes.';
				yourself.};
		yourself)
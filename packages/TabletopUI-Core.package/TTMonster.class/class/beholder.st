templates
beholder

	self flag: #todo. "proficiency_value" "https://www.aidedd.org/dnd/monstres.php?vo=beholder"
	^ self fromSpec: (Dictionary new
		at: #name put: 'Beholder';
		at: #size put: 'Large';
		at: #type put: 'Aberration';
		at: #alignment put: 'Lawful Evil';
		at: #armor_class put: 18;
		at: #hit_points put: 180;
		at: #speed put: 0;
		at: #additional_speeds put: {
			Dictionary new
				at: #name put: 'Fly (hover)';
				at: #value put: 20};
		at: #strength put: 10;
		at: #dexterity put: 14;
		at: #constitution put: 18;
		at: #intelligence put: 17;
		at: #wisdom put: 15;
		at: #charisma put: 17;
		at: #saving_throws put: 'Int +8, Wis +7, Cha +8';
		at: #skills put: 'Perception +12';
		at: #condition_immunities put:  'Prone';
		at: #senses put: 'Darkvision 120 ft., Passive Perception 22';
		at: #languages put: 'Deep Speech, Undercommon';
		at: #challenge_rating put: '13';
		"at: #proficiency_value put: ???;"
		at: #special_abilities put: {
			Dictionary new
				at: #name put: 'Antimagic Cone';
				at: #desc
					put: 'The beholder''s central eye creates an area of antimagic, as in the antimagic field spell, in a 150-foot cone. At the start of each of its turns, the beholder decides which way the cone faces and whether the cone is active. The area works against the beholder''s own eye rays.';
				yourself};
		at: #actions put: {
			Dictionary new
				at: #name put: 'Bite';
				at: #desc
					put: 'Melee Weapon Attack: +5 to hit, reach 5 ft., one target. Hit: 14 (4d6) piercing damage.';
				yourself.
			Dictionary new
				at: #name put: 'Eye Rays';
				at: #desc
					put: 'The beholder shoots three of the following magical eye rays at random (reroll duplicates), choosing one to three targets it can see within 120 feet of it:';
				yourself.
			Dictionary new
				at: #name put: '1- Charm Ray';
				at: #desc
					put: 'The targeted creature must succeed on a DC 16 Wisdom saving throw or be charmed by the beholder for 1 hour, or until the beholder harms the creature.';
				yourself.
			Dictionary new
				at: #name put: '2- Paralyzing Ray';
				at: #desc
					put: 'The targeted creature must succeed on a DC 16 Constitution saving throw or be paralyzed for 1 minute. The target can repeat the saving throw at the end of each of its turns, ending the effect on itself on a success.';
				yourself.
			Dictionary new
				at: #name put: '3- Fear Ray';
				at: #desc
					put: 'The targeted creature must succeed on a DC 16 Wisdom saving throw or be frightened for 1 minute. The target can repeat the saving throw at the end of each of its turns, ending the effect on itself on a success.';
				yourself.
			Dictionary new
				at: #name put: '4- Slowing Ray';
				at: #desc
					put: 'The targeted creature must succeed on a DC 16 Dexterity saving throw. On a failed save, the target''s speed is halved for 1 minute. In addition, the creature can''t take reactions, and it can take either an action or a bonus action on its turn, not bofh. The creature can repeat the saving throw at the end of each of its turns, ending the effect on itself on a success.';
				yourself.
			Dictionary new
				at: #name put: '5- Enervation Ray';
				at: #desc
					put: 'The targeted creature must make a DC 16 Constitution saving throw, taking 36 (8d8) necrotic damage on a failed save, or half as much damage on a successful one.';
				yourself.
			Dictionary new
				at: #name put: '6- Telekinetic Ray';
				at: #desc
					put: 'If the target is a creature, it must succeed on a DC 16 Strength saving throw or the beholder moves it up to 30 feet in any direction. It is restrained by the ray''s telekinetic grip until the start of the beholder''s next turn or until the beholder is incapacitated. If the target is an object weighing 300 pounds or less that isn''t being worn or carried, it is moved up to 30 feet in any direction. The beholder can also exert fine control on objects with this ray, such as manipulating a simple tool or opening a door or a container.';
				yourself.
			Dictionary new
				at: #name put: '7- Sleep Ray';
				at: #desc
					put: 'The targeted creature must succeed on a DC 16 Wisdom saving throw or fall asleep and remain unconscious for 1 minute. The target awakens if it takes damage or another creature takes an action to wake it. This ray has no effect on constructs and undead.';
				yourself.
			Dictionary new
				at: #name put: '8- Petrification Ray';
				at: #desc
					put: 'The targeted creature must make a DC 16 Dexterity saving throw. On a failed save, the creature begins to turn to stone and is restrained. It must repeat the saving throw at the end of its next turn. On a success, the effect ends. On a failure, the creature is petrified until freed by the greater restoration spell or other magic.';
				yourself.
			Dictionary new
				at: #name put: '9- Disintegration Ray';
				at: #desc
					put: 'If the target is a creature, it must succeed on a DC 16 Dexterity saving throw or take 45 (10d8) force damage. If this damage reduces the creature to 0 hit points, its body becomes a pile of fine gray dust. If the target is a Large or smaller non magical object or creation of magical force, it is disintegrated without a saving throw. If the target is a Huge or larger object or creation of magical force, this ray disintegrates a 10-foot cube of it.';
				yourself.
			Dictionary new
				at: #name put: '10- Death Ray';
				at: #desc
					put: 'The targeted creature must succeed on a DC 16 Dexterity saving throw or take 55 (10d10) necrotic damage. The target dies if the ray reduces it to 0 hit points.';
				yourself};
		at: #legendary_actions put: {
			Dictionary new "description for legendary actions, therefore no name"
				at: #name put: '';
				at: #desc
					put: 'The beholder can take 3 legendary actions, using the Eye Ray option below. It can take only one legendary action at a time and only at the end of another creature''s turn. The beholder regains spent legendary actions at the start of its turn.';
				yourself.
			Dictionary new
				at: #name put: 'Eye Ray';
				at: #desc
					put: 'The beholder uses one random eye ray.';
				yourself};
		yourself)
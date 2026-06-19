templates
adultBronzeDragon

	^ self fromSpec: (Dictionary new
		at: #name put: 'Adult Bronze Dragon';
		at: #size put: 'Huge';
		at: #type put: 'Dragon';
		at: #alignment put: 'Lawful Good';
		at: #armor_class put: 19;
		at: #hit_points put: 212;
		at: #speed put: 40;
		at: #additional_speeds put:{
			Dictionary new
				at: #name put: 'Fly';
				at: #value put: 80;
				yourself.
			Dictionary new
				at: #name put: 'Swim';
				at: #value put: 40;
				yourself};
		at: #strength put: 25;
		at: #dexterity put: 10;
		at: #constitution put: 23;
		at: #intelligence put: 16;
		at: #wisdom put: 15;
		at: #charisma put: 19;
		at: #saving_throws put: ' DEX +5, CON +11, WIS +7, CHA +9';
		at: #skills put: 'Insight +7, Perception +12, Stealth +5';
		at: #damage_immunities put:  'Lightning';
		at: #senses put: 'Blindsight 60 ft., Darkvision 120 ft., Passive Perception 22';
		at: #languages put: ' Common, Draconic';
		at: #challenge_rating put: '15';
		at: #proficiency_value put: 5;
		at: #special_abilities put: {
			Dictionary new
				at: #name put: 'Amphibious';
				at: #desc
					put: 'The dragon can breathe air and water.';
				yourself.
			Dictionary new
				at: #name put: 'Legendary Resistance (3/Day)';
				at: #desc
					put: 'If the dragon fails a saving throw, it can choose to succeed instead.';
				yourself};
		at: #actions put: {
			Dictionary new
				at: #name put: 'Multiattack';
				at: #desc
					put: 'The dragon can use its Frightful Presence. It then makes three attacks: one with its bite and two with its claws.';
				yourself.
			Dictionary new
				at: #name put: 'Bite';
				at: #desc
					put: 'Melee Weapon Attack: +12 to hit, reach 10 ft., one target. Hit: 18 (2d10 + 7) piercing damage.';
				yourself.
			Dictionary new
				at: #name put: 'Claw';
				at: #desc
					put: 'Melee Weapon Attack: +12 to hit, reach 5 ft., one target. Hit: 14 (2d6 + 7) slashing damage.';
				yourself.
			Dictionary new
				at: #name put: 'Tail';
				at: #desc
					put: 'Melee Weapon Attack: +12 to hit, reach 15 ft., one target. Hit: 16 (2d8 + 7) bludgeoning damage.';
				yourself.
			Dictionary new
				at: #name put: 'Frightful Presence';
				at: #desc
					put: 'Each creature of the dragon''s choice that is within 120 feet of the dragon and aware of it must succeed on a DC 17 Wisdom saving throw or become frightened for 1 minute. A creature can repeat the saving throw at the end of each of its turns, ending the effect on itself on a success. If a creature''s saving throw is successful or the effect ends for it, the creature is immune to the dragon''s Frightful Presence for the next 24 hours.';
				yourself.
			Dictionary new
				at: #name put: 'Breath Weapons (Recharge 5-6)';
				at: #desc
					put: 'The dragon uses one of the following breath weapons.';
				yourself.
			Dictionary new
				at: #name put: 'Lightning Breath';
				at: #desc
					put: 'The dragon exhales lightning in a 90- foot line that is 5 feet wide. Each creature in that line must make a DC 19 Dexterity saving throw, taking 66 (12d10) lightning damage on a failed save, or half as much damage on a successful one.';
				yourself.
			Dictionary new
				at: #name put: 'Repulsion Breath';
				at: #desc
					put: 'The dragon exhales repulsion energy in a 30-foot cone. Each creature in that area must succeed on a DC 19 Strength saving throw. On a failed save, the creature is pushed 60 feet away from the dragon.';
				yourself.
			Dictionary new
				at: #name put: 'Change Shape';
				at: #desc
					put: 'The dragon magically polymorphs into a humanoid or beast that has a challenge rating no higher than its own, or back into its true form. It reverts to its true form if it dies. Any equipment it is wearing or carrying is absorbed or borne by the new form (the dragon''s choice).

In a new form, the dragon retains its alignment, hit points, Hit Dice, ability to speak, proficiencies, Legendary Resistance, lair actions, and Intelligence, Wisdom, and Charisma scores, as well as this action. Its statistics and capabilities are otherwise replaced by those of the new form, except any class features or legendary actions of that form.';
				yourself.};
		at: #legendary_actions put: {
			Dictionary new "description for legendary actions, therefore no name"
				at: #name put: '';
				at: #desc
					put: 'The dragon can take 3 legendary actions, choosing from the options below. Only one legendary action option can be used at a time and only at the end of another creature''s turn. The dragon regains spent legendary actions at the start of its turn.';
				yourself.
			Dictionary new
				at: #name put: 'Detect';
				at: #desc
					put: 'The dragon makes a Wisdom (Perception) check.';
				yourself.
			Dictionary new
				at: #name put: 'Tail Attack';
				at: #desc
					put: 'The dragon makes a tail attack.';
				yourself.
			Dictionary new
				at: #name put: 'Wing Attack (Costs 2 Actions)';
				at: #desc
					put: 'The dragon beats its wings. Each creature within 10 feet of the dragon must succeed on a DC 20 Dexterity saving throw or take 14 (2d6 + 7) bludgeoning damage and be knocked prone. The dragon can then fly up to half its flying speed.';
				yourself};
		yourself)
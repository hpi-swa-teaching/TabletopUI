templates
tarrasque

	^ self fromSpec: (Dictionary new
		at: #name put: 'Tarrasque';
		at: #size put: 'Gargantuan';
		at: #type put: 'Monstrosity (Titan)';
		at: #alignment put: 'Unaligned';
		at: #armor_class put: 25;
		at: #hit_points put: 676;
		at: #speed put: 40;
		at: #strength put: 30;
		at: #dexterity put: 11;
		at: #constitution put: 30;
		at: #intelligence put: 3;
		at: #wisdom put: 11;
		at: #charisma put: 11;
		at: #saving_throws put:  ' INT +5, WIS +9, CHA +9';
		at: #damage_immunities put:  'Fire, Poison; Bludgeoning, Piercing, and Slashing from Nonmagical Attacks';
		at: #condition_immunities put:  'Charmed, Frightened, Paralyzed, Poisoned';
		at: #senses put: 'Blindsight 120 ft., Passive Perception 10';
		at: #languages put: '--';
		at: #challenge_rating put: '30';
		at: #proficiency_value put: 9;
		at: #special_abilities put: {
			Dictionary new
				at: #name put: 'Legendary Resistance (3/Day)';
				at: #desc
					put: 'If the tarrasque fails a saving throw, it can choose to succeed instead.';
				yourself.
			Dictionary new
				at: #name put: 'Magic Resistance';
				at: #desc
					put: 'The tarrasque has advantage on saving throws against spells and other magical effects.';
				yourself.
			Dictionary new
				at: #name put: 'Reflective Carapace';
				at: #desc
					put: 'Any time the tarrasque is targeted by a magic missile spell, a line spell, or a spell that requires a ranged attack roll, roll a d6. On a 1 to 5, the tarrasque is unaffected. On a 6, the tarrasque is unaffected, and the effect is reflected back at the caster as though it originated from the tarrasque, turning the caster into the target.';
				yourself.
			Dictionary new
				at: #name put: 'Siege Monster';
				at: #desc
					put: 'The tarrasque deals double damage to objects and structures.';
				yourself};
		at: #actions put: {
			Dictionary new
				at: #name put: 'Multiattack';
				at: #desc
					put: 'The tarrasque can use its Frightful Presence. It then makes five attacks: one with its bite, two with its claws, one with its horns, and one with its tail. It can use its Swallow instead of its bite.';
				yourself.
			Dictionary new
				at: #name put: 'Bite';
				at: #desc
					put: 'Melee Weapon Attack: +19 to hit, reach 10 ft., one target. Hit: 36 (4d12 + 10) piercing damage. If the target is a creature, it is grappled (escape DC 20). Until this grapple ends, the target is restrained, and the tarrasque can’t bite another target.';
				yourself.
			Dictionary new
				at: #name put: 'Claw';
				at: #desc
					put: 'Melee Weapon Attack: +19 to hit, reach 15ft., one target. Hit: 28 (4d8 + 10) slashing damage.';
				yourself.
			Dictionary new
				at: #name put: 'Horns';
				at: #desc
					put: 'Melee Weapon Attack: +19 to hit, reach 10ft., one target. Hit: 32 (4d10 + 10) piercing damage.';
				yourself.
			Dictionary new
				at: #name put: 'Tail';
				at: #desc
					put: 'Melee Weapon Attack: +19 to hit, reach 20ft., one target. Hit: 24 (4d6 + 10) bludgeoning damage. If the target is a creature, it must succeed on a DC 20 Strength saving throw or be knocked prone.';
				yourself.
			Dictionary new
				at: #name put: 'Frightful Presence';
				at: #desc
					put: 'Each creature of the tarrasque’s choice within 120 feet of it and aware of it must succeed on a DC 17 Wisdom saving throw or become frightened for 1 minute. A creature can repeat the saving throw at the end of each of its turns, with disadvantage if the tarrasque is within line of sight, ending the effect on itself on a success. If a creature’s saving throw is successful or the effect ends for it, the creature is immune to the tarrasque’s Frightful Presence for the next 24 hours.';
				yourself.
			Dictionary new
				at: #name put: 'Swallow';
				at: #desc
					put: 'The tarrasque makes one bite attack against a Large or smaller creature it is grappling. If the attack hits, the target takes the bite’s damage, the target is swallowed, and the grapple ends. While swallowed, the creature is blinded and restrained, it has total cover against attacks and other effects outside the tarrasque, and it takes 56 (16d6) acid damage at the start of each of the tarrasque’s turns.

If the tarrasque takes 60 damage or more on a single turn from a creature inside it, the tarrasque must succeed on a DC 20 Constitution saving throw at the end of that turn or regurgitate all swallowed creatures, which fall prone in a space within 10 feet of the tarrasque. If the tarrasque dies, a swallowed creature is no longer restrained by it and can escape from the corpse by using 30 feet of movement, exiting prone.';
				yourself};
		at: #legendary_actions put: {
			Dictionary new "description for legendary actions, therefore no name"
				at: #name put: '';
				at: #desc
					put: 'The tarrasque can take 3 legendary actions, choosing from the options below. Only one legendary action option can be used at a time and only at the end of another creature’s turn. The tarrasque regains spent legendary actions at the start of its turn.';
				yourself.
			Dictionary new
				at: #name put: 'Attack';
				at: #desc
					put: 'The tarrasque makes one claw attack or tail attack.';
				yourself.
			Dictionary new
				at: #name put: 'Move';
				at: #desc
					put: 'The tarrasque moves up to half its speed.';
				yourself.
			Dictionary new
				at: #name put: 'Chomp (Costs 2 Actions)';
				at: #desc
					put: 'The tarrasque makes one bite attack or uses its Swallow.';
				yourself};
		yourself)
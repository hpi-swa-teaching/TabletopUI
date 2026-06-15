templates
banshee

	^ self fromSpec: (Dictionary new
		at: #name put: 'Banshee';
		at: #size put: 'Medium';
		at: #type put: 'Undead';
		at: #alignment put: 'Chaotic Evil';
		at: #armor_class put: 12;
		at: #hit_points put: 58;
		at: #speed put: 0; "fly 40 ft. (hover)"
		at: #strength put: 1;
		at: #dexterity put: 14;
		at: #constitution put: 10;
		at: #intelligence put: 12;
		at: #wisdom put: 11;
		at: #charisma put: 17;
		at: #saving_throws put: 'WIS +2, CHA +5';
		at: #damage_resistances put:  'Acid, Fire, Lightning, Thunder; Bludgeoning, Piercing, and Slashing from Nonmagical Attacks';
		at: #damage_immunities put:  'Cold, Necrotic, Poison';
		at: #condition_immunities put:  'Charmed, Exhaustion, Frightened, Grappled, Paralyzed, Petrified, Poisoned, Prone, Restrained';
		at: #senses put: 'Darkvision 60 ft., Passive Perception 10';
		at: #languages put: 'Common, Elvish';
		at: #challenge_rating put: '4';
		at: #proficiency_value put: 2;
		at: #special_abilities put: {
			Dictionary new
				at: #name put: 'Detect Life';
				at: #desc
					put: 'The banshee can magically sense the presence of creatures up to 5 miles away that aren’t undead or constructs. She knows the general direction they’re in but not their exact locations.';
				yourself.
			Dictionary new
				at: #name put: 'Incorporeal Movement';
				at: #desc
					put: 'The banshee can move through other creatures and objects as if they were difficult terrain. She takes 5 (1d10) force damage if she ends her turn inside an object.';
				yourself};
		at: #actions put: {
			Dictionary new
				at: #name put: 'Corrupting Touch';
				at: #desc
					put: 'Melee Spell Attack: +4 to hit, reach 5 ft., one target. Hit: 12 (3d6 + 2) necrotic damage.';
				yourself.
			Dictionary new
				at: #name put: 'Horrifying Visage';
				at: #desc
					put: 'Each non-undead creature within 60 feet of the banshee that can see her must succeed on a DC 13 Wisdom saving throw or be frightened for 1 minute. A frightened target can repeat the saving throw at the end of each of its turns, with disadvantage if the banshee is within line of sight, ending the effect on itself on a success. If a target’s saving throw is successful or the effect ends for it, the target is immune to the banshee’s Horrifying Visage for the next 24 hours.';
				yourself.
			Dictionary new
				at: #name put: 'Wail (1/Day)';
				at: #desc
					put: 'The banshee releases a mournful wail, provided that she isn’t in sunlight. This wail has no effect on constructs and undead. All other creatures within 30 feet of her that can hear her must make a DC 13 Constitution saving throw. On a failure, a creature drops to 0 hit points. On a success, a creature takes 10 (3d6) psychic damage.';
				yourself};
		yourself)
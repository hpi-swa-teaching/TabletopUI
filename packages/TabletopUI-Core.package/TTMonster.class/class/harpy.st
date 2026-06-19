templates
harpy

	^ self fromSpec: (Dictionary new
		at: #name put: 'Harpy';
		at: #size put: 'Medium';
		at: #type put: 'Monstrosity';
		at: #alignment put: 'Chaotic Evil';
		at: #armor_class put: 11;
		at: #hit_points put: 38;
		at: #speed put: 20;
		at: #additional_speeds put:{
			Dictionary new
				at: #name put: 'Fly';
				at: #value put: 40;
				yourself};
		at: #strength put: 12;
		at: #dexterity put: 13;
		at: #constitution put: 12;
		at: #intelligence put: 7;
		at: #wisdom put: 10;
		at: #charisma put: 13;
		at: #senses put: 'Passive Perception 10';
		at: #languages put: 'Common';
		at: #challenge_rating put: '1';
		at: #proficiency_value put: 2;
		at: #actions put: {
			Dictionary new
				at: #name put: 'Multiattack';
				at: #desc
					put: 'The harpy makes two attacks: one with its claws and one with its club.';
				yourself.
			Dictionary new
				at: #name put: 'Claws';
				at: #desc
					put: 'Melee Weapon Attack: +3 to hit, reach 5 ft., one target. Hit: 6 (2d4 + 1) slashing damage.';
				yourself.
			Dictionary new
				at: #name put: 'Club';
				at: #desc
					put: 'Melee Weapon Attack: +3 to hit, reach 5 ft., one target. Hit: 3 (1d4 + 1) bludgeoning damage.';
				yourself.
			Dictionary new
				at: #name put: 'Luring Song';
				at: #desc
					put: 'The harpy sings a magical melody. Every humanoid and giant within 300 feet of the harpy that can hear the song must succeed on a DC 11 Wisdom saving throw or be charmed until the song ends. The harpy must take a bonus action on its subsequent turns to continue singing. It can stop singing at any time. The song ends if the harpy is incapacitated.

While charmed by the harpy, a target is incapacitated and ignores the songs of other harpies. If the charmed target is more than 5 feet away from the harpy, the target must move on its turn toward the harpy by the most direct route, trying to get within 5 feet. It doesn''t avoid opportunity attacks, but before moving into damaging terrain, such as lava or a pit, and whenever it takes damage from a source other than the harpy, the target can repeat the saving throw. A charmed target can also repeat the saving throw at the end of each of its turns. If the saving throw is successful, the effect ends on it.

A target that successfully saves is immune to this harpy''s song for the next 24 hours.';
				yourself};
		yourself)
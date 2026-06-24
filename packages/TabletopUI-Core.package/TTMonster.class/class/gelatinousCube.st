templates
gelatinousCube

	^ self fromSpec: (Dictionary new
		at: #name put: 'Gelatinous Cube';
		at: #size put: 'Large';
		at: #type put: 'Ooze';
		at: #alignment put: 'Unaligned';
		at: #armor_class put: 6;
		at: #hit_points put: 84;
		at: #speed put: 15;
		at: #strength put: 14;
		at: #dexterity put: 3;
		at: #constitution put: 20;
		at: #intelligence put: 1;
		at: #wisdom put: 6;
		at: #charisma put: 1;
		at: #condition_immunities put: 'Blinded, Charmed, Deafened, Exhaustion, Frightened, Prone';
		at: #senses put: 'Blindsight 60 ft. (blind beyond this radius), Passive Perception 8';
		at: #languages put: '--';
		at: #challenge_rating put: '2';
		at: #proficiency_value put: 2;
		at: #special_abilities put: {
			Dictionary new
				at: #name put: 'Ooze Cube';
				at: #desc
					put: 'The cube takes up its entire space. Other creatures can enter the space, but a creature that does so is subjected to the cube''s Engulf and has disadvantage on the saving throw.

Creatures inside the cube can be seen but have total cover.

A creature within 5 feet of the cube can take an action to pull a creature or object out of the cube. Doing so requires a successful DC 12 Strength check, and the creature making the attempt takes 10 (3d6) acid damage.

The cube can hold only one Large creature or up to four Medium or smaller creatures inside it at a time.';
				yourself.
			Dictionary new
				at: #name put: 'Transparent';
				at: #desc
					put: 'Even when the cube is in plain sight, it takes a successful DC 15 Wisdom (Perception) check to spot a cube that has neither moved nor attacked. A creature that tries to enter the cube''s space while unaware of the cube is surprised by the cube.';
				yourself};
		at: #actions put: {
			Dictionary new
				at: #name put: 'Pseudopod';
				at: #desc
					put: 'Melee Weapon Attack: +4 to hit, reach 5 ft., one creature. Hit: 10 (3d6) acid damage.';
				yourself.
			Dictionary new
				at: #name put: 'Engulf';
				at: #desc
					put: 'The cube moves up to its speed. While doing so, it can enter Large or smaller creatures'' spaces. Whenever the cube enters a creature''s space, the creature must make a DC 12 Dexterity saving throw.

On a successful save, the creature can choose to be pushed 5 feet back or to the side of the cube. A creature that chooses not to be pushed suffers the consequences of a failed saving throw.

On a failed save, the cube enters the creature''s space, and the creature takes 10 (3d6) acid damage and is engulfed. The engulfed creature can''t breathe, is restrained, and takes 21 (6d6) acid damage at the start of each of the cube''s turns. When the cube moves, the engulfed creature moves with it.

An engulfed creature can try to escape by taking an action to make a DC 12 Strength check. On a success, the creature escapes and enters a space of its choice within 5 feet of the cube.';
				yourself};
		yourself)
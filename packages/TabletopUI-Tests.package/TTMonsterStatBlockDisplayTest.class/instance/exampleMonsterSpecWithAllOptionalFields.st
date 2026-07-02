helpers
exampleMonsterSpecWithAllOptionalFields

	^ Dictionary new
		at: #name put: 'Young Red Dragon';
		at: #size put: 'Large';
		at: #type put: 'Dragon';
		at: #alignment put: 'Chaotic Evil';
		at: #armor_class put: 18;
		at: #hit_points put: 178;
		at: #speed put: 40;
		at: #additional_speeds put:{
			Dictionary new
				at: #name put: 'Climb';
				at: #value put: 40;
				yourself.
			Dictionary new
				at: #name put: 'Fly';
				at: #value put: 80;
				yourself};
		at: #strength put: 23;
		at: #dexterity put: 10;
		at: #constitution put: 21;
		at: #intelligence put: 14;
		at: #wisdom put: 11;
		at: #charisma put: 19;
		at: #saving_throws put: 'DEX +4, CON +9, WIS +4, CHA +8';
		at: #skills put: 'Perception +8, Stealth +4';
		at: #damage_immunities put:  'Fire';
		at: #senses put: 'Blindsight 30 ft., Darkvision 120 ft., Passive Perception 18';
		at: #languages put: 'Common, Draconic';
		at: #challenge_rating put: '10';
		at: #proficiency_value put: 4;
		at: #actions put: {
			Dictionary new
				at: #name put: 'Multiattack';
				at: #desc
					put: 'The dragon makes three attacks: one with its bite and two with its claws.';
				yourself.
			Dictionary new
				at: #name put: 'Bite';
				at: #desc
					put: 'Melee Weapon Attack: +10 to hit, reach 10 ft., one target. Hit: 17 (2d10 + 6) piercing damage plus 3 (1d6) fire damage.';
				yourself.
			Dictionary new
				at: #name put: 'Claw';
				at: #desc
					put: 'Melee Weapon Attack: +10 to hit, reach 5 ft., one target. Hit: 13 (2d6 + 6) slashing damage.';
				yourself.
			Dictionary new
				at: #name put: 'Fire Breath (Recharge 5–6)';
				at: #desc
					put: 'The dragon exhales fire in a 30-foot cone. Each creature in that area must make a DC 17 Dexterity saving throw, taking 56 (16d6) fire damage on a failed save, or half as much damage on a successful one.';
				yourself};
		at: #special_abilities put: {
			Dictionary new
				at: #name put: 'Legendary Resistance (3/Day)';
				at: #desc
					put: 'If the lich fails a saving throw, it can choose to succeed instead.';
				yourself.
			Dictionary new
				at: #name put: 'Rejuvenation';
				at: #desc
					put: 'If it has a phylactery, a destroyed lich gains a new body in 1d10 days, regaining all its hit points and becoming active again. The new body appears within 5 feet of the phylactery.';
				yourself.
			Dictionary new
				at: #name put: 'Spellcasting';
				at: #desc
					put: 'The lich is an 18th-level spellcaster. Its spellcasting ability is Intelligence (spell save DC 20, +12 to hit with spell attacks). The lich has the following wizard spells prepared:

Cantrips (at will): mage hand, prestidigitation, ray of frost

1st level (4 slots): detect magic, magic missile, shield, thunderwave

2nd level (3 slots): acid arrow, detect thoughts, invisibility, mirror image

3rd level (3 slots): animate dead, counterspell, dispel magic, fireball

4th level (3 slots): blight, dimension door

5th level (3 slots): cloudkill, scrying

6th level (1 slot): disintegrate, globe of invulnerability

7th level (1 slot): finger of death, plane shift

8th level (1 slot): dominate monster, power word stun

9th level (1 slot): power word kill';
				yourself.
			Dictionary new
				at: #name put: 'Turn Resistance';
				at: #desc
					put: 'The lich has advantage on saving throws against any effect that turns undead.';
				yourself};
		at: #actions put: {
			Dictionary new
				at: #name put: 'Paralyzing Touch';
				at: #desc
					put: 'Melee Spell Attack: +12 to hit, reach 5 ft., one creature. Hit: 10 (3d6) cold damage. The target must succeed on a DC 18 Constitution saving throw or be paralyzed for 1 minute. The target can repeat the saving throw at the end of each of its turns, ending the effect on itself on a success.';
				yourself};
		at: #legendary_actions put: {
			Dictionary new "description for legendary actions, therefore no name"
				at: #name put: '';
				at: #desc
					put: 'The lich can take 3 legendary actions, choosing from the options below. Only one legendary action option can be used at a time and only at the end of another creature’s turn. The lich regains spent legendary actions at the start of its turn.';
				yourself.
			Dictionary new
				at: #name put: 'Cantrip';
				at: #desc
					put: 'The lich casts a cantrip.';
				yourself.
			Dictionary new
				at: #name put: 'Paralyzing Touch (Costs 2 Actions)';
				at: #desc
					put: 'The lich uses its Paralyzing Touch.';
				yourself.
			Dictionary new
				at: #name put: 'Frightening Gaze (Costs 2 Actions)';
				at: #desc
					put: 'The lich fixes its gaze on one creature it can see within 10 feet of it. The target must succeed on a DC 18 Wisdom saving throw against this magic or become frightened for 1 minute. The frightened target can repeat the saving throw at the end of each of its turns, ending the effect on itself on a success. If a target’s saving throw is successful or the effect ends for it, the target is immune to the lich’s gaze for the next 24 hours.';
				yourself.
			Dictionary new
				at: #name put: 'Disrupt Life (Costs 3 Actions)';
				at: #desc
					put: 'Each non-undead creature within 20 feet of the lich must make a DC 18 Constitution saving throw against this magic, taking 21 (6d6) necrotic damage on a failed save, or half as much damage on a successful one.';
				yourself};
		yourself
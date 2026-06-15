templates
vampireSpawn

	^ self fromSpec: (Dictionary new
		at: #name put: 'Vampire Spawn';
		at: #size put: 'Medium';
		at: #type put: 'Undead';
		at: #alignment put: 'Neutral Evil';
		at: #armor_class put: 15;
		at: #hit_points put: 82;
		at: #speed put: 30;
		at: #strength put: 16;
		at: #dexterity put: 16;
		at: #constitution put: 16;
		at: #intelligence put: 11;
		at: #wisdom put: 10;
		at: #charisma put: 12;
		at: #saving_throws put:  'DEX +6, WIS +3';
		at: #skills put:  'Perception +3, Stealth +6';
		at: #damage_resistances put:  'Necrotic; Bludgeoning, Piercing, and Slashing from Nonmagical Attacks';
		at: #senses put: 'Darkvision 60 ft., Passive Perception 13';
		at: #languages put: 'the languages it knew in life';
		at: #challenge_rating put: '5';
		at: #proficiency_value put: 3;
		at: #special_abilities put: {
			Dictionary new
				at: #name put: 'Regeneration';
				at: #desc
					put: 'The vampire regains 10 hit points at the start of its turn if it has at least 1 hit point and isn''t in sunlight or running water. If the vampire takes radiant damage or damage from holy water, this trait doesn''t function at the start of the vampire''s next turn.';
				yourself.
			Dictionary new
				at: #name put: 'Spider Climb';
				at: #desc
					put: 'The vampire can climb difficult surfaces, including upside down on ceilings, without needing to make an ability check.';
				yourself.
			Dictionary new
				at: #name put: 'Vampire Weaknesses';
				at: #desc
					put: 'The vampire has the following flaws:

Forbiddance. The vampire can''t enter a residence without an invitation from one of the occupants.

Harmed by Running Water. The vampire takes 20 acid damage when it ends its turn in running water.

Stake to the Heart. The vampire is destroyed if a piercing weapon made of wood is driven into its heart while it is incapacitated in its resting place.

Sunlight Hypersensitivity. The vampire takes 20 radiant damage when it starts its turn in sunlight. While in sunlight, it has disadvantage on attack rolls and ability checks.';
				yourself};
		at: #actions put: {
			Dictionary new
				at: #name put: 'Multiattack';
				at: #desc
					put: 'The vampire makes two attacks, only one of which can be a bite attack.';
				yourself.
			Dictionary new
				at: #name put: 'Claws';
				at: #desc
					put: 'Melee Weapon Attack: +6 to hit, reach 5 ft., one creature. Hit: 8 (2d4 + 3) slashing damage. Instead of dealing damage, the vampire can grapple the target (escape DC 13).';
				yourself.
			Dictionary new
				at: #name put: 'Bite';
				at: #desc
					put: 'Melee Weapon Attack: +6 to hit, reach 5 ft., one willing creature, or a creature that is grappled by the vampire, incapacitated, or restrained. Hit: 6 (1d6 + 3) piercing damage plus 7 (2d6) necrotic damage. The target''s hit point maximum is reduced by an amount equal to the necrotic damage taken, and the vampire regains hit points equal to that amount. The reduction lasts until the target finishes a long rest. The target dies if this effect reduces its hit point maximum to 0.';
				yourself};
		yourself)
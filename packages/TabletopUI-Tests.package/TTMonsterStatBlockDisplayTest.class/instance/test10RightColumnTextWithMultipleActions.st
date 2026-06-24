testing
test10RightColumnTextWithMultipleActions

	self display monster: TTMonster youngRedDragon.
	self assert: self display rightColumnText asString equals: (self linesTerminated: #(
		'Actions'
		'Multiattack. The dragon makes three attacks: one with its bite and two with its claws.'
		''
		'Bite. Melee Weapon Attack: +10 to hit, reach 10 ft., one target. Hit: 17 (2d10 + 6) piercing damage plus 3 (1d6) fire damage.'
		''
		'Claw. Melee Weapon Attack: +10 to hit, reach 5 ft., one target. Hit: 13 (2d6 + 6) slashing damage.'
		''
		'Fire Breath (Recharge 5–6). The dragon exhales fire in a 30-foot cone. Each creature in that area must make a DC 17 Dexterity saving throw, taking 56 (16d6) fire damage on a failed save, or half as much damage on a successful one.'
		''))
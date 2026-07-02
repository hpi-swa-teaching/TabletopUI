testing
test07RightColumnText

	self assert: self defaultDisplay rightColumnText asString equals: (self linesTerminated: #(
		'Traits'
		'Nimble Escape. The goblin can take the Disengage or Hide action as a bonus action on each of its turns.'
		''
		'Actions'
		'Scimitar. Melee Weapon Attack: +4 to hit, reach 5 ft., one target. Hit: 5 (1d6 + 2) slashing damage.'
		''
		'Shortbow. Ranged Weapon Attack: +4 to hit, range 80/320 ft., one target. Hit: 5 (1d6 + 2) piercing damage.'
		''))
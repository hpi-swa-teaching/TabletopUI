dice roll modifiers
sleightOfHand

	^ self dexterityModifier + (self proficiencyBonus * self skillsLookup at: #sleightOfHand) asString
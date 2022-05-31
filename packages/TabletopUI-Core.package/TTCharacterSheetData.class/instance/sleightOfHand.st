dice roll modifiers
sleightOfHand

	^ self dexterityModifier + (self proficiencyValue * self skillsLookup at: #sleightOfHand) asString
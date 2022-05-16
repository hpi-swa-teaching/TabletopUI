dice roll modifiers
sleightOfHand

	^ self dexterityModifier + (self proficiencyValue * self proficiencyLookup at: #sleightOfHand)
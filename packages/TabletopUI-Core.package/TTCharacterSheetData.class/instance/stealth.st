dice roll modifiers
stealth

	^ self dexterityModifier + (self proficiencyValue * self proficiencyLookup at: #stealth)
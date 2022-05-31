dice roll modifiers
stealth

	^ self dexterityModifier + (self proficiencyValue * self skillsLookup at: #stealth) asString
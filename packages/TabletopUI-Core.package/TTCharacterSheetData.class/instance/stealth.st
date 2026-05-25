dice roll modifiers
stealth

	^ self dexterityModifier + (self proficiencyBonus * self skillsLookup at: #stealth) asString
dice roll modifiers
acrobatics

	^ self dexterityModifier + (self proficiencyBonus * self skillsLookup at: #acrobatics) asString
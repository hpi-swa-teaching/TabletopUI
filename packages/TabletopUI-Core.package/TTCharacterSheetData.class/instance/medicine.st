dice roll modifiers
medicine

	^ self wisdomModifier + (self proficiencyBonus * self skillsLookup at: #medicine) asString
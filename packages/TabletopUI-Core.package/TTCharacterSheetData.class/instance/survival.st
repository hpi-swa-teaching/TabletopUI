dice roll modifiers
survival

	^ self wisdomModifier + (self proficiencyBonus * self skillsLookup at: #survival) asString
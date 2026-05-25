dice roll modifiers
perception

	^ self wisdomModifier + (self proficiencyBonus * self skillsLookup at: #perception) asString
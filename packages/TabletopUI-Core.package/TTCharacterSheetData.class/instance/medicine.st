dice roll modifiers
medicine

	^ self wisdomModifier + (self proficiencyValue * self skillsLookup at: #medicine) asString
dice roll modifiers
survival

	^ self wisdomModifier + (self proficiencyValue * self skillsLookup at: #survival) asString
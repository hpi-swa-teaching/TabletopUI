dice roll modifiers
perception

	^ self wisdomModifier + (self proficiencyValue * self skillsLookup at: #perception) asString
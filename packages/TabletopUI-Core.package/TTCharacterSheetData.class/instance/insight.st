dice roll modifiers
insight

	^ self wisdomModifier + (self proficiencyValue * self skillsLookup at: #insight) asString
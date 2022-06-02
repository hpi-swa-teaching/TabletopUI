dice roll modifiers
performance

	^ self charismaModifier + (self proficiencyValue * self skillsLookup at: #performance) asString
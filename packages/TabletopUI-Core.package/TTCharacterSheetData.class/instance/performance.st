dice roll modifiers
performance

	^ self charismaModifier + (self proficiencyValue * self proficiencyLookup at: #performance)
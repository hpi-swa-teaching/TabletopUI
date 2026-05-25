dice roll modifiers
performance

	^ self charismaModifier + (self proficiencyBonus * self skillsLookup at: #performance) asString
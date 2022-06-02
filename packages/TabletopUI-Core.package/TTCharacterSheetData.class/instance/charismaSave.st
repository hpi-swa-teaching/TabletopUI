dice roll modifiers
charismaSave

	^ self charismaModifier + (self proficiencyValue * self throwsLookup at: #charismaSave) asString
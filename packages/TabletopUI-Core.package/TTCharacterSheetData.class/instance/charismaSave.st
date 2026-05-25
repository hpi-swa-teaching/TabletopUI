dice roll modifiers
charismaSave

	^ self charismaModifier + (self proficiencyBonus * self throwsLookup at: #charismaSave) asString
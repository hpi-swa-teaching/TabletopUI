dice roll modifiers
persuasion

	^ self charismaModifier + (self proficiencyBonus * self skillsLookup at: #persuasion) asString
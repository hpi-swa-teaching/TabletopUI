dice roll modifiers
persuasion

	^ self charismaModifier + (self proficiencyValue * self skillsLookup at: #persuasion) asString
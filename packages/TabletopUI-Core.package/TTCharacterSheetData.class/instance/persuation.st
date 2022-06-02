dice roll modifiers
persuation

	^ self charismaModifier + (self proficiencyValue * self skillsLookup at: #persuation) asString
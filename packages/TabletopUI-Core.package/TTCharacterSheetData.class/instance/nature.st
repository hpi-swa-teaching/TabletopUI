dice roll modifiers
nature

	^ self intelligenceModifier + (self proficiencyValue * self proficiencyLookup at: #nature)
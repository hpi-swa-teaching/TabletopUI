dice roll modifiers
nature

	^ self intelligenceModifier + (self proficiencyValue * self skillsLookup at: #nature) asString
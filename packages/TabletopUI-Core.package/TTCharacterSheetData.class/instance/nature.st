dice roll modifiers
nature

	^ self intelligenceModifier + (self proficiencyBonus * self skillsLookup at: #nature) asString
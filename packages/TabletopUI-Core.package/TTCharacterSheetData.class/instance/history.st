dice roll modifiers
history

	^ self intelligenceModifier + (self proficiencyBonus * self skillsLookup at: #history) asString
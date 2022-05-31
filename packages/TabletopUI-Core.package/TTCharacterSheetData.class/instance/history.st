dice roll modifiers
history

	^ self intelligenceModifier + (self proficiencyValue * self skillsLookup at: #history) asString
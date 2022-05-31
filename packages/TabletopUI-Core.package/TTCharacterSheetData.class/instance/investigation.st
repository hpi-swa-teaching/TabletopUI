dice roll modifiers
investigation

	^ self intelligenceModifier + (self proficiencyValue * self skillsLookup at: #investigation) asString
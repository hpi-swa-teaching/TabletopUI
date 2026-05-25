dice roll modifiers
investigation

	^ self intelligenceModifier + (self proficiencyBonus * self skillsLookup at: #investigation) asString
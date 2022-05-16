dice roll modifiers
investigation

	^ self intelligenceModifier + (self proficiencyValue * self proficiencyLookup at: #investigation)
dice roll modifiers
intelligenceSave

	^ self intelligenceModifier + (self proficiencyValue * self proficiencyLookup at: #intelligenceSave)
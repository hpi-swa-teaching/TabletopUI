dice roll modifiers
intelligenceSave

	^ self intelligenceModifier + (self proficiencyValue * self throwsLookup at: #intelligenceSave) asString
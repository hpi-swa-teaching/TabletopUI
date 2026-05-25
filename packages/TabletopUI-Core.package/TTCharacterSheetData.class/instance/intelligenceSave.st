dice roll modifiers
intelligenceSave

	^ self intelligenceModifier + (self proficiencyBonus * self throwsLookup at: #intelligenceSave) asString
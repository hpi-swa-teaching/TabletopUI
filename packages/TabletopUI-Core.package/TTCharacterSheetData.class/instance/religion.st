dice roll modifiers
religion

	^ self intelligenceModifier + (self proficiencyBonus * self skillsLookup at: #religion) asString
dice roll modifiers
religion

	^ self intelligenceModifier + (self proficiencyValue * self skillsLookup at: #religion) asString
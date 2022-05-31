dice roll modifiers
athletics

	^ self strengthModifier + (self proficiencyValue * self skillsLookup at: #athletics) asString
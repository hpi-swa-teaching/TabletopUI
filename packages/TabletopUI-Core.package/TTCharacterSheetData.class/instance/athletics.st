dice roll modifiers
athletics

	^ self strengthModifier + (self proficiencyBonus * self skillsLookup at: #athletics) asString
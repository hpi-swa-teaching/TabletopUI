dice roll modifiers
athletics

	^ self strengthModifier + (self proficiencyValue * self proficiencyLookup at: #athletics)
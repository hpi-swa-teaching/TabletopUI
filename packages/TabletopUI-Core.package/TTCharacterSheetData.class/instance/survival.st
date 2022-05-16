dice roll modifiers
survival

	^ self wisdomModifier + (self proficiencyValue * self proficiencyLookup at: #survival)
dice roll modifiers
insight

	^ self wisdomModifier + (self proficiencyValue * self proficiencyLookup at: #insight)
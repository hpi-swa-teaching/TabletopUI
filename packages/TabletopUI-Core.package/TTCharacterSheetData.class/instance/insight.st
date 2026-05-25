dice roll modifiers
insight

	^ self wisdomModifier + (self proficiencyBonus * self skillsLookup at: #insight) asString
dice roll modifiers
arcana

	^ self intelligenceModifier + (self proficiencyBonus * self skillsLookup at: #arcana) asString
dice roll modifiers
arcana

	^ self intelligenceModifier + (self proficiencyValue * self skillsLookup at: #arcana) asString
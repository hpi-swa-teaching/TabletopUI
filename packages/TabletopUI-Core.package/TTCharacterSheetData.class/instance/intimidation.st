dice roll modifiers
intimidation

	^ self charismaModifier + (self proficiencyBonus * self skillsLookup at: #intimidation) asString
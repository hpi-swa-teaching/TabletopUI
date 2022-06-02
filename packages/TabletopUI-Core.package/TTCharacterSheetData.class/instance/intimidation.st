dice roll modifiers
intimidation

	^ self charismaModifier + (self proficiencyValue * self skillsLookup at: #intimidation) asString
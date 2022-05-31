dice roll modifiers
deception

	^ self charismaModifier + (self proficiencyValue * self skillsLookup at: #deception) asString